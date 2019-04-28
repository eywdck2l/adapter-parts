module line_crc
  #(parameter width = 1,
    parameter polynomial = 1'h1)
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

module sd_cmd_if
  #(parameter delay_counter_width = 6,
    parameter ncr_limit = 63)
   (output reg read_ready,
    output read_crc_err,
    output [47:0] data_read,
    // more data to write will is needed, only valid when
    // write_data_ack is 1
    output more_data_towrite,
    // data to write is being read
    output reg write_data_ack,
    output ncr_timeout,
    // this turns to 0 when there is a new cmd
    output cmd_read_low_n,
    input write_strb, write_no_crc_sig,
    // number of bits to write, not including crc
    input [7:0] write_bits,
    input [delay_counter_width-1:0] write_delay,
    input [31:0] data_towrite,
    // write on the rising edge of sd_clk, used in high speed mode
    input write_on_rising_edge = 1'b0,
    input sd_clk,
    inout sd_cmd,
    input clk,
    input resetn);

   localparam crc_width = 7;
   localparam crc_polynomial = 7'h9;

   reg [1:0] sd_clk_d;
   reg       sd_cmd_d;
   wire      sd_cmd_i;
   wire      sd_clk_rising = sd_clk_d == 2'b01;
   wire      sd_clk_falling = sd_clk_d == 2'b10;
   wire      edge_read = sd_clk_rising;
   wire      edge_write = write_on_rising_edge ?
             sd_clk_rising :
             sd_clk_falling;

   assign cmd_read_low_n = sd_cmd_d | ~edge_read;

   always @(posedge clk)
     if (~resetn)
       begin
          sd_clk_d <= '1;
          sd_cmd_d <= 1'b1;
       end
     else
       begin
          sd_clk_d <= {sd_clk_d[0], sd_clk};
          sd_cmd_d <= sd_cmd_i;
       end

   wire [6:0] crc;
   reg        crc_resetn, crc_write_mode;

   localparam state_idle = 4'b0001;
   localparam state_reading = 4'b0010;
   localparam state_before_writing = 4'b0100;
   localparam state_writing = 4'b1000;

   reg [delay_counter_width-1:0] since_read_done;
   wire [delay_counter_width:0]  since_read_done_succ = since_read_done + 1;
   reg [47:0]                    data_buf, data_buf_next;
   reg [3:0]                     state, state_next;
   reg [7:0]                     bits_left, bits_left_next;

   reg                           out_en, read_ready_next, clr_since_read_done,
                                 write_pending, write_pending_next,
                                 write_crc, write_crc_next, force_out_high,
                                 to_next_state, read_data_towrite;

   // crc error status has to be saved into a register because when
   // read_ready is asserted the crc unit will be reset
   reg                           crc_error_last;
   always @(posedge clk)
     if (~resetn)
       crc_error_last = 1'b1;
     else
       crc_error_last = crc != 0 || sd_cmd_d != 1'b1;

   assign read_crc_err = crc_error_last;
   assign data_read = data_buf;
   assign more_data_towrite = |(bits_left_next >> 5);
   assign ncr_timeout = since_read_done >= ncr_limit;

   IOBUF io_buf_cmd(.IO(sd_cmd),
                    .T(~out_en),
                    .I(data_buf[47] | force_out_high),
                    .O(sd_cmd_i));

   line_crc #(
              .width(crc_width),
              .polynomial(crc_polynomial)
              )
   line_crc(.crc(crc),
            .line(crc_write_mode ? data_buf_next[47] : sd_cmd_d),
            .hold(~(crc_write_mode ? edge_write : edge_read)),
            .clk(clk),
            .resetn(~(~resetn | ~crc_resetn)));

   always @(*)
     begin
        bits_left_next = bits_left;
        data_buf_next = data_buf;
        clr_since_read_done = 1'b1;
        write_pending_next = 1'b0;
        write_crc_next = 1'b0;
        read_data_towrite = 1'b0;
        read_ready_next = 1'b0;
        out_en = 1'b0;
        force_out_high = 1'b0;
        crc_write_mode = 1'b0;
        crc_resetn = 1'b1;
        state_next = state;

        (* full_case *)
          case (state)
            state_idle:
              begin
                 to_next_state = 1'b1;
                 crc_resetn = 1'b0;
                 clr_since_read_done = 1'b0;
                 bits_left_next = 0;
                 data_buf_next = 0;
                 // if a 0 bit is read, start reading
                 if (~cmd_read_low_n)
                   begin
                      // the current bit being read is 0, thus it does
                      // not matter whether crc_resetn was released here
                      state_next = state_reading;
                      data_buf_next = {46'bx, sd_cmd_d};
                      bits_left_next = 47;
                   end
                 else if (write_strb | write_pending)
                   begin
                      bits_left_next = write_bits;
                      write_crc_next = !write_no_crc_sig;
                      // wait for write_delay sd clocks before starting
                      // to write
                      if (since_read_done >= write_delay)
                        begin
                           state_next = state_before_writing;
                           read_data_towrite = 1'b1;
                        end
                      else
                        write_pending_next = 1'b1;
                   end // if (write_strb | write_pending)
              end // case: state_idle
            state_reading:
              begin
                 to_next_state = edge_read;
                 bits_left_next = bits_left - 1;
                 data_buf_next = {data_buf[46:0], sd_cmd_d};
                 if (bits_left_next == 0)
                   begin
                      state_next = state_idle;
                      read_ready_next = 1'b1;
                   end
              end // case: state_reading
            state_before_writing:
              begin
                 to_next_state = edge_write;
                 crc_write_mode = 1'b1;
                 write_crc_next = write_crc;
                 state_next = state_writing;
              end
            state_writing:
              begin
                 to_next_state = edge_write;
                 crc_write_mode = 1'b1;
                 write_crc_next = write_crc;
                 out_en = 1'b1;

                 bits_left_next = bits_left - 1;
                 data_buf_next = {data_buf[46:16], 17'bx};

                 if (bits_left_next == 0)
                   begin
                      // load crc if needed
                      if (write_crc)
                        begin
                           write_crc_next = 1'b0;
                           bits_left_next = 8;
                           data_buf_next = {crc, 1'b1, 40'bx};
                        end
                      else
                        begin
                           state_next = state_idle;
                           // force the last bit written to 1
                           force_out_high = 1'b1;
                        end // else: !if(write_crc)
                   end // if (bits_left_next == 0)
                 else if (bits_left_next[4:0] == 0)
                   read_data_towrite = 1'b1;
              end // case: state_writing
          endcase // case (state)

        if (read_data_towrite)
          data_buf_next = {data_towrite, 16'bx};
     end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       begin
          read_ready <= 1'b0;
          since_read_done <= 0;
          write_pending <= 1'b0;
          write_crc <= 1'b0;
          state <= state_idle;
          bits_left <= 0;
          data_buf <= 0;
          write_data_ack <= 1'b0;
       end
     else
       begin
          if (clr_since_read_done)
            since_read_done <= 0;
          else if (edge_write)
            since_read_done <= since_read_done_succ[delay_counter_width] ?
                               '1 :
                               since_read_done_succ;

          if (to_next_state)
            begin
               read_ready <= read_ready_next;
               write_pending <= write_pending_next;
               write_crc <= write_crc_next;
               state <= state_next;
               bits_left <= bits_left_next;
               data_buf <= data_buf_next;
               write_data_ack <= read_data_towrite;
            end
          else
            // keep write_data_ack high for only 1 clock
            write_data_ack <= 1'b0;
       end // else: !if(~resetn)
endmodule // sd_cmd_if
