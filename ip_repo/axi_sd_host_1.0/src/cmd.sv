module line_crc
  #(parameter width = 1,
    parameter bit [width - 1:0] polynomial = 1'b1)
   (output reg [width-1:0] crc,
    output reg good,
    input line,
    input hold,
    input clk,
    input resetn);

   wire [width-1:0] crc_next;
   assign crc_next = (crc << 1) ^ (polynomial * (line ^ crc[width - 1]));

   always @(posedge clk)
     if (~resetn) begin
        crc <= 0;
        good <= 1'b0;
     end
     else if (~hold) begin
        crc <= crc_next;
        good <= crc_next == 0;
     end
endmodule // line_crc

module cmd_writer
  (// The response is stored as up to 4 32-bit words.  In the case of
   // 6-byte responses (R1, R3, R6, and R7), the first byte is at
   // address 0, the next 4 at 1, and the CRC byte at 2.  The single
   // bytes are left padded.  For R2, each address holds 4 bytes of the
   // response, not including the CRC.
   output reg [31:0] resp_out,
   input [1:0] resp_out_addr,
   input resp_out_change,

   // Command without the start bit and CRC
   input [37:0] cmd_in,
   // Whether R2 is expected
   input exp_r2_in,

   // Whether the cmd line should be set high when idle.  Otherwise it
   // defaults to z.
   input cmd_idle_high,

   // Response error conditions
   output reg err_index,
   output reg err_crc,
   output reg err_end_bit,
   output reg err_timeout,

   // Send a command
   input send_cmd_req,
   // High for 1 clock when the command has been processed, which
   // includes either receiving a response or a timeout.
   output reg resp_done,
   // Whether the unit is busy.  When it is busy, the request to send a
   // command is ignored.
   output isbusy,

   // Connections to the card
   inout sd_cmd,
   input [1:0] sd_clk,

   input clk,
   input resetn);

   // States

   enum  {
          state_idle,
          state_load_cmd,
          state_send_cmd,
          state_send_cmd_crc,
          state_send_cmd_stop_bit,
          state_wait_resp,
          state_read_resp,
          state_collect,
          state_read_resp_r2_start,
          state_read_resp_r2
          } state, state_next;

   always @(posedge clk)
     if (~resetn)
       state <= state_idle;
     else
       state <= state_next;

   // Connect the line
   wire  line_in, new_sd_clk;
   reg   line_out_d, line_out_en;
   sd_io_raw io_raw(.in_d(line_in),
                    .out_d(line_out_d),
                    .out_en(line_out_en),
                    .new_clk(new_sd_clk),
                    .line(sd_cmd),
                    .clk_bus(sd_clk),
                    .clk_sys(clk),
                    .resetn(resetn));

   // Signals controlling data paths
   reg   buffer_reset, set_resp_timeout;

   // Keep track of the number of clocks spent in the current state
   reg [6:0] counter;
   wire [7:0] counter_inc = counter + 1;
   always @(posedge clk)
     if (!resetn || state != state_next)
       counter <= 0;
     else if (new_sd_clk)
       counter <= counter_inc;

   // Save extra information about the command
   reg        exp_r2;
   always @(posedge clk)
     if (~resetn)
       exp_r2 <= 1'b0;
     else if (state == state_load_cmd)
       exp_r2 <= exp_r2_in;

   // The buffer
   reg [39:0] buffer;
   always @(posedge clk)
     if (~resetn | buffer_reset)
       buffer <= 0;
     else if (state == state_load_cmd)
       buffer <= {2'b01, cmd_in};
     else if (new_sd_clk)
       buffer <= {buffer[38:0], line_in};

   // CRC

   wire [6:0] crc;
   reg        crc_in;

   line_crc
     #(.width(7),
       .polynomial(7'h9))
   crc_gen(.crc(crc),
           .good(),
           .line(crc_in),
           .hold(!new_sd_clk),
           .clk(clk),
           .resetn(!(!resetn ||
                     !(state == state_send_cmd ||
                       state == state_send_cmd_crc ||
                       state == state_read_resp ||
                       state == state_read_resp_r2))));

   always_comb
     case (state)
       state_send_cmd:
         crc_in = buffer[39];
       state_send_cmd_crc:
         crc_in = crc[6];
       state_read_resp, state_read_resp_r2_start, state_read_resp_r2:
           crc_in = line_in;
       default:
         crc_in = 1'bx;
     endcase // case (state)

   // Response read by the CPU

   reg [31:0] resp_saved[4];
   always @(posedge clk)
     if (~resetn)
       resp_out <= 0;
     else if (resp_out_change)
       resp_out <= resp_saved[resp_out_addr];

   // For 17-byte responses, every full 32-bit word is saved excluding
   // the last byte, which is the first 15 bytes of the CID or CSD but
   // with the byte 3f at the start.  For 6-byte responses, the first
   // byte and the next 4 bytes are saved to separate words.
   always @(posedge clk)
     if ((state == state_read_resp && counter[4:0] == 5'd7) ||
         (state == state_read_resp_r2 && counter[4:0] == 5'd24))
       resp_saved[counter[6:5]] <= buffer[31:0];

   // Save the command index condition
   reg        err_index_next;
   always @(posedge clk)
     if (!resetn || state == state_read_resp_r2)
       err_index_next <= 1'b0;
     else if (state == state_read_resp && counter == 7)
       err_index_next <= buffer[6:0] != {1'b0, cmd_in[37:32]};

   reg        set_resp_timeout_d;
   always @(posedge clk)
     if (~resetn)
       set_resp_timeout_d <= 1'b0;
     else
       set_resp_timeout_d <= set_resp_timeout;

   always @(posedge clk)
     if (~resetn) begin
        err_index <= 1'b0;
        err_crc <= 1'b0;
        err_end_bit <= 1'b0;
        err_timeout <= 1'b0;
        resp_done <= 1'b0;
     end
     else if (state == state_collect) begin
        if (set_resp_timeout_d) begin
           err_index <= 1'b0;
           err_crc <= 1'b0;
           err_end_bit <= 1'b0;
           err_timeout <= 1'b1;
        end
        else begin
           err_index <= err_index_next;
           // At this time the last response bit will be read.  Thus crc
           // should be 9 instead of 0.
           err_crc <= crc != 7'h9;
           err_end_bit <= buffer[0] != 1'b1;
           err_timeout <= 1'b0;
        end // else: !if(set_resp_timeout_d)
        resp_done <= 1'b1;
     end // if (state == state_collect)
     else
       resp_done <= 1'b0;

   assign isbusy = state != state_idle;

   // Line output

   always_comb
     case (state)
       state_idle: begin
          line_out_en <= cmd_idle_high;
          line_out_d <= 1'b1;
       end
       state_send_cmd: begin
          line_out_en <= 1'b1;
          line_out_d <= buffer[39];
       end
       state_send_cmd_crc: begin
          line_out_en <= 1'b1;
          line_out_d <= crc[6];
       end
       state_send_cmd_stop_bit: begin
          line_out_en <= 1'b1;
          line_out_d <= 1'b1;
       end
       default: begin
          line_out_d <= 1'b1;
          line_out_en <= 1'b0;
       end
     endcase // case (state)

   // State transistion

   function ctr_reaches (input [7:0] n);
      ctr_reaches = new_sd_clk && (counter_inc & n) == n;
   endfunction // ctr_reaches

   always_comb begin
      state_next = state;
      set_resp_timeout = 1'bx;
      buffer_reset = 1'b1;

      case (state)
        state_idle: begin
           if (send_cmd_req)
             state_next = state_load_cmd;
        end
        state_load_cmd: begin
           buffer_reset = 1'b0;
           if (new_sd_clk)
             state_next = state_send_cmd;
        end
        state_send_cmd: begin
           buffer_reset = 1'b0;
           if (ctr_reaches(40))
             state_next = state_send_cmd_crc;
        end
        state_send_cmd_crc: begin
           if (ctr_reaches(7))
             state_next = state_send_cmd_stop_bit;
        end
        state_send_cmd_stop_bit: begin
           if (new_sd_clk)
             state_next = state_wait_resp;
        end
        state_wait_resp: begin
           if (new_sd_clk && line_in == 1'b0)
             state_next = exp_r2 ? state_read_resp_r2_start : state_read_resp;
           // The specs specifies a max Ncr of 64. We're using 128 so
           // that we don't have to consider delays in the data path.
           else if (ctr_reaches(128)) begin
              state_next = state_collect;
              set_resp_timeout = 1'b1;
           end
        end
        state_read_resp_r2_start: begin
           // A separate state for keeping the CRC module reset.
           // Because the first byte is not included in the CRC.
           buffer_reset = 1'b0;
           // Change when 7 bits are read because there is a delay
           // releasing the reset for CRC.
           if (ctr_reaches(7))
             state_next = state_read_resp_r2;
        end
        state_read_resp_r2: begin
           buffer_reset = 1'b0;
           if (ctr_reaches(128)) begin
              state_next = state_collect;
              set_resp_timeout = 1'b0;
           end
        end
        state_read_resp: begin
           buffer_reset = 1'b0;
           if (ctr_reaches(47)) begin
              state_next = state_collect;
              set_resp_timeout = 1'b0;
           end
        end
        state_collect: begin
           state_next = state_idle;
        end
        default:
          state_next = state_idle;
      endcase // case (state)
   end // always_comb

endmodule // cmd_writer

module sd_io_raw
  (// For reading and writing data
   output reg in_d,
   input out_d,
   input out_en,

   // Indicating a new clock, high for 1 system clock every cycle of the
   // bus clock
   output new_clk,

   // The IO pin
   inout line,
   // clk_bus[1] is the bus clock during the next system clock.
   // clk_bus[0] is the actual clock output.
   input [1:0] clk_bus,

   input clk_sys,
   input resetn);

   // Output

   reg   out_en_r, out_d_r;
   always @(posedge clk_sys)
     if (~resetn) begin
        out_en_r <= 1'b0;
        out_d_r <= 1'b1;
     end
     else if (clk_bus == 2'b01) begin
        // Change the output on the falling edge of the bus clock.
        // Ensure the last bit written is 1.
        out_en_r <= out_en | ~out_d_r;
        out_d_r <= out_d | ~out_en;
     end

   // Input

   wire line_i;
   reg [1:0] line_i_d;
   reg       clk_bus_d, read_line;

   always @(posedge clk_sys)
     if (~resetn) begin
        line_i_d <= '1;
        clk_bus_d <= 1'b0;
        read_line <= 1'b0;
     end
     else begin
        line_i_d <= {line_i_d[0], line_i};
        clk_bus_d <= clk_bus[0];
        // Set high, if during the next system clock, line_i_d[1] will
        // be the level on the line at the falling edge of the bus
        // clock.
        read_line = {clk_bus_d, clk_bus[0]} == 2'b10;
     end // else: !if(~resetn)

   always @(posedge clk_sys)
     if (~resetn)
       in_d <= 1'b1;
     else if (read_line)
       // Read the input on the falling edge of the bus clock
       in_d <= line_i_d[1];

   // Indicate a new bus clock cycle.  It does not matter when it
   // happens as long as it ticks once every bus clock cycle.  read_line
   // is assigned for the sake of convenience.
   assign new_clk = read_line;

   // Connect to the pad
   IOBUF iobuf(.O(line_i),
               .IO(line),
               .I(out_d_r),
               .T(~out_en_r));
endmodule // sd_io_raw
