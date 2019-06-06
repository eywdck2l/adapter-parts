`timescale 1ns / 1ps

module line_crc
  #(parameter width,
    parameter bit [width - 1:0] polynomial)
   (output reg [width-1:0] crc,
    input line,
    input hold,
    input clk,
    input resetn);
   always @(posedge clk)
     if (~resetn)
       crc <= 0;
     else if (~hold)
       crc <= (crc << 1) ^ (polynomial * (line ^ crc[width-1]));
endmodule // line_crc

module cmd_if
  #(// The number of SD clocks to wait for a write strobe after the 2 z
    // clocks after receiving a command.
    parameter write_delay_max = 4)
   (// for reading
    // high for 1 clock when reading has finished
    output reg read_done,

    // read_crc_err, cmd_index, and cmd_arg do not change until the next
    // command has been received
    output reg read_crc_err,
    output reg [5:0] cmd_index,
    output reg [31:0] cmd_arg,

    // for writing
    // high for 1 clock when writing has finished
    output reg write_done,
    // high for 1 clock when ncr clocks have elapsed on the sd bus and
    // it's too late to write a response
    output reg write_timeout,
    // the index of the byte to be read from write_byte, starting from 0
    output [$clog2(resp_len_max) - 1:0] write_byte_index,
    // the next byte to write
    input [7:0] write_byte,

    // resp_len_bytes, write_delay, and write_no_crc should not change
    // until writing has completed
    // length of response in bytes
    input [$clog2(resp_len_max + 1) - 1:0] resp_len_bytes,
    // write_delay is the number of clocks to wait before writing the
    // response after the 2 z clocks.  It only needs to be accurate when
    // the SD clock is 100kHz to 400kHz.
    input [write_delay_width - 1:0] write_delay,
    input write_no_crc,
    input write_start,
    input do_not_write,

    (* clock_buffer_type = "BUFIO" *)
    input sd_clk_i,
    input sd_cmd_i,
    output reg sd_cmd_o,
    output reg sd_cmd_t,
    input clk,
    input resetn);

   localparam write_delay_width = 4;
   localparam z_after_command = 2;
   localparam resp_len_max = 17;
   localparam counter_width = 8;

   localparam crc_width = 7;
   localparam crc_polynomial = 7'h9;

   // Read the sd_clk and sd_cmd lines

   reg [3:0] sd_clk_div_d;
   reg [2:0] sd_cmd_d;
   reg       resetn_reg;

   wire      new_sd_clk = sd_clk_div_d[3] != sd_clk_div_d[2];

   wire      start_reading = new_sd_clk && sd_cmd_d[2] == 1'b0;

   always @(posedge clk)
     if (~resetn)
       resetn_reg <= 1'b0;
     else
       resetn_reg <= 1'b1;

   // Read on the rising edge

   always @(posedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg)
       // Reset it to 1 because 1 does not start a command reading.
       sd_cmd_d[0] <= 1'b1;
     else
       sd_cmd_d[0] <= sd_cmd_i;

   always @(negedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg)
       sd_clk_div_d[0] <= 1'b0;
     else
       sd_clk_div_d[0] <= ~sd_clk_div_d[0];

   always @(posedge clk)
     if (~resetn) begin
        sd_clk_div_d[3:1] <= 3'b0;
        sd_cmd_d[2:1] <= 2'b0;
     end
     else begin
      sd_clk_div_d[3:1] <= sd_clk_div_d[2:0];
      sd_cmd_d[2:1] <= sd_cmd_d[1:0];
   end

   // the number of sd bus clocks spent in the current state
   reg [counter_width - 1:0] counter;
   wire [counter_width - 1:0] counter_next = counter + 1;

   // idle
   localparam state_idle = 0;
   // reading
   localparam state_reading = 1;
   // the 2 SD bus clocks after a command has been received
   localparam state_tri = 2;
   // the delay before writing
   localparam state_write_delay = 3;
   // writing
   localparam state_writing = 4;
   // writing crc
   localparam state_writing_crc = 5;

   reg [5:0]                  state, state_next;

   // latch whether to write

   reg                        write_stb_received_r;
   wire                       write_stb_received = write_stb_received_r |
                              write_start;

   always @(posedge clk)
     if (!resetn || !(state[state_tri] ||
                      state[state_write_delay]))
       write_stb_received_r <= 1'b0;
     else
       write_stb_received_r <= write_stb_received;

   wire [counter_width - 1:0] write_bit_len = resp_len_bytes * 8;

   reg [46:0]                 buf_read;
   wire [47:0]                buf_read_next = {buf_read, sd_cmd_d[2]};
   reg [7:0]                  buf_write, buf_write_next;
   wire [6:0]                 crc_result;
   wire                       read_crc_err_next;

   // update the outputs related to reading commands
   reg                        update_read;
   reg                        set_write_timeout, set_write_done;
   // the bit being written is the last
   reg                        writing_last_bit;

   always @(*) begin
      state_next = state;
      update_read = 1'b0;
      set_write_timeout = 1'b0;
      set_write_done = 1'b0;
      writing_last_bit = 1'b0;

      (* parallel_case *)
        case (1'b1)
          state[state_idle]:
            if (start_reading)
              state_next = 1 << state_reading;
          state[state_reading]:
            // One bit has been read in state_idle, so reading is done
            // at 47 clocks.
            if (new_sd_clk && &(counter_next | ~47)) begin
               if (read_crc_err_next) begin
                  state_next = 1 << state_idle;
                  update_read = 1'b1;
               end
               else if (buf_read_next[46] == 1'b0)
                 // ignore responses
                 state_next = 1 << state_idle;
               else begin
                  state_next = 1 << state_tri;
                  update_read = 1'b1;
               end
            end
          state[state_tri]:
            if (do_not_write)
              state_next = 1 << state_idle;
            else if (new_sd_clk)
              state_next = 1 << state_write_delay;
          state[state_write_delay]:
            if (write_stb_received) begin
               if (new_sd_clk && (counter_next >= write_delay ||
                                  counter_next >= write_delay_max))
                 state_next = 1 << state_writing;
            end
            else begin
               if (new_sd_clk && &(counter_next | ~write_delay_max)) begin
                  state_next = 1 << state_idle;
                  set_write_timeout = 1'b1;
               end
               else if (do_not_write)
                 state_next = 1 << state_idle;
            end // else: !if(write_stb_received)
          state[state_writing]:
            if (&(counter_next | ~(resp_len_bytes << 3))) begin
               if (write_no_crc)
                 writing_last_bit = 1'b1;
               else if (new_sd_clk)
                 state_next = 1 << state_writing_crc;
            end // if (&(counter_next | ~(resp_len_bytes << 3)))
          state[state_writing_crc]:
            if (&(counter_next | ~8))
              writing_last_bit = 1'b1;
          default:
            state_next = 1 << state_idle;
        endcase // case (1'b1)

      if (new_sd_clk && writing_last_bit) begin
         state_next = 1 << state_idle;
         set_write_done = 1'b1;
      end
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       state <= state_idle;
     else
       state <= state_next;

   reg is_writing;

   always @(posedge clk)
     if (~resetn)
       is_writing <= 1'b0;
     else
       is_writing <= state_next[state_write_delay] |
                     state_next[state_writing] |
                     state_next[state_writing_crc];

   // counter

   always @(posedge clk)
     if (!resetn || state != state_next)
       // clear the counter when the state changes
       counter <= 0;
     else if (new_sd_clk)
       counter <= counter_next;

   always @(posedge clk)
     if (~resetn)
       buf_read <= 0;
     else if (new_sd_clk)
       buf_read <= buf_read_next;

   always @(*)
     if (state[state_writing] && state_next[state_writing_crc])
       buf_write_next = {crc_result, 1'b1};
     else if (!(state[state_writing] || state[state_writing_crc]) ||
              counter_next[2:0] == 0)
       // we are going to transistion into state_writing or we are at a
       // byte boundary
       buf_write_next = write_byte;
     else
       buf_write_next = {buf_write[6:0], 1'bx};

   always @(posedge clk)
     if (~resetn)
       buf_write <= 0;
     else if (new_sd_clk)
       buf_write <= buf_write_next;

   // output

   always @(posedge clk)
     if (~resetn) begin
        read_done <= 1'b0;
        write_done <= 1'b0;
        write_timeout <= 1'b0;
     end
     else begin
        read_done <= update_read;
        write_done <= set_write_done;
        write_timeout <= set_write_timeout;
     end // else: !if(~resetn)

   // an erronous end bit is regarded as a crc error here
   assign read_crc_err_next = !(crc_result == 0 && buf_read_next[0] == 1'b1);

   always @(posedge clk)
     if (~resetn) begin
        read_crc_err <= 1'b0;
        cmd_index <= 0;
        cmd_arg <= 0;
     end
     else if (update_read) begin
        read_crc_err <= read_crc_err_next;
        cmd_index <= buf_read_next[45:40];
        cmd_arg <= buf_read_next[39:8];
     end

   assign write_byte_index = state[state_writing] ? (counter >> 3) + 1 : 0;

   // cmd line output

   reg sd_cmd_o_1;

   always @(negedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg) begin
        sd_cmd_t <= 1'b1;
        sd_cmd_o <= 1'b1;
     end
     else begin
        sd_cmd_t <= ~is_writing;
        sd_cmd_o <= sd_cmd_o_1;
     end

   always @(posedge clk)
     if (~resetn)
       sd_cmd_o_1 <= 1'b1;
     else if (new_sd_clk)
       // ensure the last bit written is 1
       sd_cmd_o_1 <= buf_write_next[7] ||
                     !(state_next[state_writing] ||
                       state_next[state_writing_crc]) ||
                     writing_last_bit;

   // crc

   line_crc #(.width(crc_width),
              .polynomial(crc_polynomial)) line_crc
     (.crc(crc_result),
      .line(state_next[state_writing] ? buf_write_next[7] : sd_cmd_d[2]),
      .hold(!new_sd_clk),
      .clk(clk),
      .resetn(!(!resetn ||
                !(state_next[state_reading] ||
                  state_next[state_writing]))));
endmodule // cmd_if