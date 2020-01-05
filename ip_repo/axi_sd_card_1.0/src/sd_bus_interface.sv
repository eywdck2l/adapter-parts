`timescale 1ns / 1ps

package dat_opcode;
   typedef enum logic [1:0] {
                             small_block,
                             single_block,
                             multi_block_no_count,
                             multi_block_count
                             } block_type_t;
endpackage : dat_opcode

package dat_error_codes;
   // Error codes to be read by the CPU.  The case of being interrupted
   // by CMD12 is not included.  The CPU knows it by reading the saved
   // command.

   localparam width = 3;
   // Block count reached, including the block being successfully
   // transmitted for single block commands.
   localparam bit [2:0] block_count_reached = 0;
   // Bad crc
   localparam bit [2:0] read_bad_crc = 1;
   // No data is available after the start of a block
   localparam bit [2:0] write_no_data = 2;
   // tlast is asserted before a block boundary is expected
   localparam bit [2:0] write_early_boundary = 3;
   // tlast is not asserted when a block boundary is expected
   localparam bit [2:0] write_late_boundary = 4;
   // tready is low after the start of a block
   localparam bit [2:0] read_data_not_accepted = 5;
endpackage : dat_error_codes

module sd_bus_interface
  #(parameter dat_word_size = 8,
    parameter cmd_resp_len_max = 17)
   (// CMD
    output got_new_cmd,
    output cmd_crc_err,
    output [5:0] cmd_index,
    output [31:0] cmd_arg,
    output cmd_resp_done,
    output cmd_resp_timeout,
    output [$clog2(cmd_resp_len_max) - 1:0] cmd_resp_pos,
    input [7:0] cmd_resp_byte,
    input [$clog2(cmd_resp_len_max + 1) - 1:0] cmd_resp_len,
    input resp_no_crc,
    input resp_start,
    input resp_none,

    // DAT
    input fifo_out_almostfull,
    output [dat_word_size-1:0] out_tdata,
    output out_tlast,
    output out_tvalid,
    input out_tready,
    input [dat_word_size-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,
    input [2:0] dat_block_size_exp,
    input dat_opcode::block_type_t dat_block_type,
    input [31:0] dat_block_limit,
    output [31:0] dat_block_count_done,
    input dat_read_mode,
    input busy_in,
    input dat_width_4,
    output cc_error_out,
    output [dat_error_codes::width-1:0] dat_error_code,
    output dat_done,
    output dat_done_new,
    input dat_resetn,

    (* clock_buffer_type = "BUFIO" *)
    input sd_clk_i,
    input sd_cmd_i,
    output reg sd_cmd_o, sd_cmd_t,
    input [3:0] sd_dat_i,
    output reg [3:0] sd_dat_o, sd_dat_t,

    input clk,
    input resetn);

   // Read the sd_clk and sd_cmd lines

   reg [3:0] sd_clk_div_d;
   reg [2:0] sd_cmd_d;
   reg [3:0] sd_dat_d[2:0];

   wire      new_sd_clk = sd_clk_div_d[3] != sd_clk_div_d[2];
   wire      sd_cmd_i_sys = sd_cmd_d[2];
   wire [3:0] sd_dat_i_sys = sd_dat_d[2];

   // Read on the rising edge

   always @(posedge sd_clk_i, negedge resetn)
     if (~resetn) begin
        // Reset them to 1 because 1 does not start a command reading.
        sd_cmd_d[0] <= 1'b1;
        sd_dat_d[0] <= '1;
     end
     else begin
        sd_cmd_d[0] <= sd_cmd_i;
        sd_dat_d[0] <= sd_dat_i;
     end

   always @(negedge sd_clk_i, negedge resetn)
     if (~resetn)
       sd_clk_div_d[0] <= 1'b0;
     else
       sd_clk_div_d[0] <= ~sd_clk_div_d[0];

   always @(posedge clk)
     if (~resetn) begin
        sd_clk_div_d[3:1] <= 3'b0;
        sd_cmd_d[2:1] <= '1;
        {>>{sd_dat_d[2:1]}} <= 8'hff;
     end
     else begin
        sd_clk_div_d[3:1] <= sd_clk_div_d[2:0];
        sd_cmd_d[2:1] <= sd_cmd_d[1:0];
        sd_dat_d[2:1] <= sd_dat_d[1:0];
     end

   wire sd_cmd_o_sys, sd_cmd_t_sys;
   wire [3:0] sd_dat_o_sys, sd_dat_t_sys;

   always @(negedge sd_clk_i, negedge resetn)
     if (~resetn) begin
        sd_cmd_t <= 1'b1;
        sd_cmd_o <= 1'b1;
        sd_dat_t <= '1;
        sd_dat_o <= '1;
     end
     else begin
        sd_cmd_t <= sd_cmd_t_sys;
        sd_cmd_o <= sd_cmd_o_sys;
        sd_dat_t <= sd_dat_t_sys;
        sd_dat_o <= sd_dat_o_sys;
     end

   cmd_interface #(.resp_len_max(cmd_resp_len_max))
   cmd_unit(.resp_done(cmd_resp_done),
            .resp_timeout(cmd_resp_timeout),
            .resp_pos(cmd_resp_pos),
            .resp_byte(cmd_resp_byte),
            .resp_len(cmd_resp_len),
            .*);

   dat_interface #(.word_size(dat_word_size))
   dat_unit(.block_size_exp_in(dat_block_size_exp),
            .block_type_in(dat_block_type),
            .block_limit(dat_block_limit),
            .block_count_done(dat_block_count_done),
            .read_mode(dat_read_mode),
            .width_4(dat_width_4),
            .error_code(dat_error_code),
            .done(dat_done),
            .done_new(dat_done_new),
            .resetn_sys(resetn),
            .resetn(dat_resetn),
            .*);
endmodule // sd_bus_interface

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

module cmd_interface
  #(// The number of SD clocks to wait for a write strobe after the 2 z
    // clocks after receiving a command.
    parameter resp_delay_max = 32,
    // resp_delay is the number of clocks to wait before writing the
    // response after the 2 z clocks.  It only needs to be accurate when
    // the SD clock is 100kHz to 400kHz.  For CMD2 and ACMD41 it has to
    // be 5 clocks NID minus the 2 Z clocks.
    parameter resp_delay_min = 5 - 2,
    parameter resp_len_max = 17)
   (// for reading
    // high for 1 clock when reading has finished
    output reg got_new_cmd,

    // cmd_crc_err, cmd_index, and cmd_arg do not change until the next
    // command has been received
    output reg cmd_crc_err,
    output reg [5:0] cmd_index,
    output reg [31:0] cmd_arg,

    // for writing
    // high for 1 clock when writing has finished
    output reg resp_done,
    // high for 1 clock when ncr clocks have elapsed on the sd bus and
    // it's too late to write a response
    output reg resp_timeout,
    // the index of the byte to be read from resp_byte, starting
    // from 0
    output [$clog2(resp_len_max) - 1:0] resp_pos,
    // the next byte to write
    input [7:0] resp_byte,

    // resp_len, resp_delay, and resp_no_crc should not change
    // until writing has completed
    // length of response in bytes
    input [$clog2(resp_len_max + 1) - 1:0] resp_len,
    input resp_no_crc,
    input resp_start,
    input resp_none,

    input new_sd_clk,
    input sd_cmd_i_sys,
    output reg sd_cmd_o_sys,
    output sd_cmd_t_sys,

    input clk,
    input resetn);

   localparam counter_width = 8;
   localparam z_after_command = 2;

   localparam crc_width = 7;
   localparam bit [7:0] crc_polynomial = 7'h9;

   wire      start_reading = new_sd_clk && sd_cmd_i_sys == 1'b0;

   // the number of sd bus clocks spent in the current state
   reg [counter_width - 1:0] counter;
   wire [counter_width:0] counter_next = counter + 1;

   function automatic ctr_reaches(input [counter_width:0] n);
      ctr_reaches = new_sd_clk && (n[1:0] == 2'b00 ?
                                   (counter_next & n) == n :
                                   (counter & (n - 1)) == n - 1);
   endfunction : ctr_reaches

   // idle
   localparam state_idle = 0;
   // reading
   localparam state_reading = 1;
   // the 2 SD bus clocks after a command has been received
   localparam state_tri = 2;
   // the delay before writing
   localparam state_resp_delay = 3;
   // writing
   localparam state_writing = 4;
   // writing crc
   localparam state_writing_crc = 5;

   reg [5:0]                  state, state_next;

   // latch whether to write

   reg                        write_stb_received_r;
   wire                       write_stb_received = write_stb_received_r |
                              resp_start;

   always @(posedge clk)
     if (!resetn || !(state[state_tri] ||
                      state[state_resp_delay]))
       write_stb_received_r <= 1'b0;
     else
       write_stb_received_r <= write_stb_received;

   wire [counter_width - 1:0] write_bit_len = resp_len * 8;

   reg [46:0]                 buf_read;
   wire [47:0]                buf_read_next = {buf_read, sd_cmd_i_sys};
   reg [7:0]                  buf_write, buf_write_next;
   wire [6:0]                 crc_result;
   wire                       cmd_crc_err_next;

   // update the outputs related to reading commands
   reg                        update_read;
   reg                        set_resp_timeout, set_resp_done;
   // the bit being written is the last
   reg                        writing_last_bit;

   always @(*) begin
      state_next = state;
      update_read = 1'b0;
      set_resp_timeout = 1'b0;
      set_resp_done = 1'b0;
      writing_last_bit = 1'b0;

      (* parallel_case *)
        case (1'b1)
          state[state_idle]:
            if (start_reading)
              state_next = 1 << state_reading;
          state[state_reading]:
            // One bit has been read in state_idle, so reading is done
            // at 47 clocks.
            if (new_sd_clk && ctr_reaches(47)) begin
               if (cmd_crc_err_next) begin
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
            if (resp_none)
              state_next = 1 << state_idle;
            else if (new_sd_clk)
              state_next = 1 << state_resp_delay;
          state[state_resp_delay]:
            if (write_stb_received) begin
               if (new_sd_clk && counter >= (resp_delay_min - 1))
                 state_next = 1 << state_writing;
            end
            else begin
               if (ctr_reaches(resp_delay_max + 1)) begin
                  state_next = 1 << state_idle;
                  set_resp_timeout = 1'b1;
               end
               else if (resp_none)
                 state_next = 1 << state_idle;
            end // else: !if(write_stb_received)
          state[state_writing]:
            if (&(counter_next | ~(resp_len << 3))) begin
               if (resp_no_crc)
                 writing_last_bit = 1'b1;
               else if (new_sd_clk)
                 state_next = 1 << state_writing_crc;
            end // if (&(counter_next | ~(resp_len << 3)))
          state[state_writing_crc]:
            if (&(counter_next | ~8))
              writing_last_bit = 1'b1;
          default:
            state_next = 1 << state_idle;
        endcase // case (1'b1)

      if (new_sd_clk && writing_last_bit) begin
         state_next = 1 << state_idle;
         set_resp_done = 1'b1;
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
       is_writing <= state_next[state_resp_delay] |
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
       buf_write_next = resp_byte;
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
        got_new_cmd <= 1'b0;
        resp_done <= 1'b0;
        resp_timeout <= 1'b0;
     end
     else begin
        got_new_cmd <= update_read;
        resp_done <= set_resp_done;
        resp_timeout <= set_resp_timeout;
     end // else: !if(~resetn)

   // an erronous end bit is regarded as a crc error here
   assign cmd_crc_err_next = !(crc_result == 0 && buf_read_next[0] == 1'b1);

   always @(posedge clk)
     if (~resetn) begin
        cmd_crc_err <= 1'b0;
        cmd_index <= 0;
        cmd_arg <= 0;
     end
     else if (update_read) begin
        cmd_crc_err <= cmd_crc_err_next;
        cmd_index <= buf_read_next[45:40];
        cmd_arg <= buf_read_next[39:8];
     end

   assign resp_pos = state[state_writing] ? (counter >> 3) + 1 : 0;

   // cmd line output

   always @(posedge clk)
     if (~resetn)
       sd_cmd_o_sys <= 1'b1;
     else if (new_sd_clk)
       // ensure the last bit written is 1
       sd_cmd_o_sys <= buf_write_next[7] ||
                       !(state_next[state_writing] ||
                         state_next[state_writing_crc]) ||
                       writing_last_bit;

   assign sd_cmd_t_sys = ~is_writing;

   // crc

   line_crc #(.width(crc_width),
              .polynomial(crc_polynomial)) line_crc
     (.crc(crc_result),
      .good(),
      .line(state_next[state_writing] ? buf_write_next[7] : sd_cmd_i_sys),
      .hold(!new_sd_clk),
      .clk(clk),
      .resetn(!(!resetn ||
                !(state_next[state_reading] ||
                  state_next[state_writing]))));
endmodule // cmd_interface

module dat_interface
  #(// The word size in bits
    parameter word_size = 8,
    // The minimum interval between writing 2 blocks, including the end
    // bit of the last block.  The spec says NAC is at least 2 clocks.
    // However, we saw about 64 clocks in some SD cards no matter how
    // slow the clock is.  So we guessed maybe some card readers couldn't
    // handle NAC being 2.
    parameter write_delay_min = 64)
   (// Data out
    input fifo_out_almostfull,
    output reg [word_size-1:0] out_tdata,
    output reg out_tlast,
    output reg out_tvalid,
    input out_tready,

    // Data in
    input [word_size-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,

    // Log base 2 the block size in bytes, only used for small blocks
    input [2:0] block_size_exp_in,
    input dat_opcode::block_type_t block_type_in,
    input [31:0] block_limit,

    output reg [31:0] block_count_done,

    input read_mode,
    input busy_in,

    input width_4,

    // Error bits to set in CSR
    output reg cc_error_out,

    output reg [dat_error_codes::width-1:0] error_code,
    output reg done,
    output reg done_new,

    input new_sd_clk,
    input [3:0] sd_dat_i_sys,
    output reg [3:0] sd_dat_o_sys,
    output reg [3:0] sd_dat_t_sys,

    input resetn,
    input resetn_sys,
    input clk);

   import dat_opcode::*;

   localparam counter_width = 12;
   localparam crc_width = 16;
   localparam bit [15:0] crc_polynomial = 16'h1021;

   // States

   enum                  {
                          state_idle,
                          state_write_delay,
                          state_write_start_bit,
                          state_write_data,
                          state_write_crc,
                          state_write_end_bit,
                          state_write_done,
                          state_read_awaiting_data,
                          state_read_data,
                          state_read_crc,
                          state_read_end_bit,
                          state_read_resp,
                          state_read_busy,
                          state_read_busy_end,
                          state_read_done,
                          state_read_done_busy
                          } state, state_next;

   // the number of sd bus clocks that have past in the current state
   reg [counter_width - 1:0] counter;
   wire [counter_width:0]    counter_inc = counter + 1;
   reg                       counter_reset;
   reg                       write_delay_reached;

   function automatic ctr_reaches(input [counter_width:0] n);
      ctr_reaches = new_sd_clk && (n[1:0] == 2'b00 ?
                                   (counter_inc & n) == n :
                                   (counter & (n - 1)) == n - 1);
   endfunction : ctr_reaches

   always @(posedge clk)
     if (~resetn | counter_reset)
       counter <= 0;
     else if (new_sd_clk)
       counter <= counter_inc;
   always @(posedge clk)
     if (~resetn | counter_reset)
       write_delay_reached <= 1'b0;
     else if (ctr_reaches(write_delay_min))
       write_delay_reached <= 1'b1;

   // The block's data has been transfered, not including CRC

   block_type_t block_type;
   reg [2:0]                 block_size_exp;
   always @(posedge clk)
     if (~resetn) begin
        block_size_exp <= 0;
        block_type <= small_block;
     end
     else if (state == state_idle) begin
        block_size_exp <= block_size_exp_in;
        block_type <= block_type_in;
     end

   reg                       block_data_done;
   always @(*)
     if (block_type == small_block) begin
        if (width_4)
          block_data_done = counter_inc[block_size_exp+1];
        else
          block_data_done = counter_inc[block_size_exp+3];
     end
     else begin
        if (width_4)
          block_data_done = counter_inc[10];
        else
          block_data_done = counter_inc[12];
     end // else: !if(block_type == small_block)

   // Find when we just exited from the reset state.

   reg resetn_d;
   wire module_start;

   always @(posedge clk)
     if (~resetn_sys)
       resetn_d <= 1'b0;
     else
       resetn_d <= resetn;

   assign module_start = ~resetn_d & resetn;

   // Keep the block count.  The block count should persist when the
   // rest of this module is reset.

   reg no_more_blocks;

   always @(posedge clk)
     if (~resetn_sys | module_start)
       block_count_done <= 0;
     else if ((state == state_write_data || state == state_read_data) &&
              new_sd_clk && block_data_done)
       block_count_done <= block_count_done + 1;

   always @(posedge clk)
     if (~resetn)
       no_more_blocks <= 1'b0;
     else
       (* full_case *)
       case (block_type)
         small_block, single_block:
           no_more_blocks <= 1'b1;
         multi_block_no_count:
           no_more_blocks <= 1'b0;
         multi_block_count:
           no_more_blocks <= block_count_done >= block_limit;
       endcase // case (block_type)

   // Find when the word is done

   reg                       word_done;

   always @(*)
     if (width_4)
       word_done = counter % (word_size / 4) == word_size / 4 - 1;
     else
       word_done = counter % word_size == word_size - 1;

   reg                       read_crc_err;

   // Buffer

   reg                       buffer_load;

   reg [word_size-1:0]       buffer, buffer_next;

   assign in_tready = new_sd_clk & buffer_load;

   always @(*)
     if (buffer_load)
       buffer_next = in_tdata;
     else begin
        if (width_4)
          buffer_next = {buffer[0+:word_size-4], sd_dat_i_sys};
        else
          buffer_next = {buffer[0+:word_size-1], sd_dat_i_sys[0]};
     end

   always @(posedge clk)
     if (~resetn)
       buffer <= '0;
     else if (new_sd_clk)
       buffer <= buffer_next;

   reg                       in_tlast_saved;

   always @(posedge clk)
     if (~resetn)
       in_tlast_saved <= '0;
     else if (new_sd_clk & buffer_load)
       in_tlast_saved <= in_tlast;

   reg [3:0]                 line_next_bit;

   always @(*)
     if (width_4)
       line_next_bit = buffer[word_size-4+:4];
     else begin
        line_next_bit[3:1] = 'x;
        line_next_bit[0] = buffer[word_size-1];
     end

   // CRC

   wire [15:0]                             crc_result[0:3];
   wire [3:0]                              crc_good_line;
   reg [3:0]                               crc_in;

   genvar                                  i;

   generate
      for (i = 0; i < 4; i = i + 1) begin: line_crc
         line_crc #(.width(crc_width),
                    .polynomial(crc_polynomial))
         line_crc(.crc(crc_result[i]),
                  .good(crc_good_line[i]),
                  .line(crc_in[i]),
                  .hold(!new_sd_clk),
                  .clk(clk),
                  .resetn(!(!resetn ||
                            (i != 0 && !width_4) ||
                            !(state == state_write_data ||
                              state == state_write_crc ||
                              state == state_read_data ||
                              state == state_read_crc ||
                              state == state_read_end_bit))));
      end: line_crc
   endgenerate

   always_comb
     case (state)
       state_write_data:
         crc_in = line_next_bit;
       state_write_crc:
         foreach (crc_in[i])
           crc_in[i] = crc_result[i][15];
       state_read_data, state_read_crc:
         crc_in = sd_dat_i_sys;
       default:
         crc_in = 'x;
     endcase // case (state)

   // Figure out CRC error

   wire crc_error_next = !(width_4 ? &crc_good_line : crc_good_line[0]) ||
                         sd_dat_i_sys != '1;

   always @(posedge clk)
     if (~resetn)
       read_crc_err <= 1'b0;
     else if (state == state_read_end_bit && new_sd_clk)
       read_crc_err <= crc_error_next;

   // Errors

   reg  set_cc_error;

   reg [dat_error_codes::width-1:0] error_code_next;
   reg                              done_next;

   always @(posedge clk)
     if (~resetn_sys) begin
        cc_error_out <= 1'b0;
        done_new <= 1'b0;
     end
     else begin
        cc_error_out <= set_cc_error;
        done_new <= done_next;
     end

   always @(posedge clk)
     if (~resetn_sys)
       error_code <= '0;
     else if (done_next)
       error_code <= error_code_next;

   always @(posedge clk)
     if (~resetn)
       done <= 1'b0;
     else if (done_next)
       done <= 1'b1;

   // Save the data read

   reg set_out_tvalid;

   always @(posedge clk)
     if (~resetn_sys) begin
        out_tdata <= '0;
        out_tlast <= 1'b0;
     end
     else if (state == state_read_data && new_sd_clk && word_done) begin
        out_tdata <= buffer_next;
        out_tlast <= block_data_done;
     end

   always @(posedge clk)
     if (~resetn_sys)
       out_tvalid <= 1'b0;
     else if (set_out_tvalid)
       out_tvalid <= 1'b1;
     else if (out_tready)
       out_tvalid <= 1'b0;

   // Next state

   task automatic set_error(input [dat_error_codes::width-1:0] code);
      error_code_next = code;
      done_next = 1'b1;
      set_cc_error = 1'b1;
   endtask : set_error

   always @(*) begin
      state_next = state;
      counter_reset = 1'b0;
      buffer_load = 1'b0;
      set_out_tvalid = 1'b0;
      set_cc_error = 1'b0;
      done_next = 1'b0;
      error_code_next = 'x;

      case (state)
        state_idle: begin
           counter_reset = 1'b1;
           if (read_mode)
             state_next = state_read_awaiting_data;
           else
             state_next = state_write_delay;
        end

        state_write_delay:
          if (new_sd_clk && in_tvalid && write_delay_reached)
            state_next = state_write_start_bit;
        state_write_start_bit: begin
           buffer_load = 1'b1;
           counter_reset = 1'b1;
           if (new_sd_clk)
             state_next = state_write_data;
        end
        state_write_data: begin
           buffer_load = word_done & ~block_data_done;
           if (in_tready & ~in_tvalid) begin
              state_next = state_write_done;
              set_error(dat_error_codes::write_no_data);
           end
           else if (new_sd_clk) begin
              if (block_data_done) begin
                 counter_reset = 1'b1;
                 // Ensure the tlast signal is set at end of block.
                 if (~in_tlast_saved) begin
                    state_next = state_write_done;
                    set_error(dat_error_codes::write_early_boundary);
                 end
                 else
                   state_next = state_write_crc;
              end
              else if (word_done & in_tlast_saved) begin
                 // Check tlast was not asserted
                 state_next = state_write_done;
                 set_error(dat_error_codes::write_late_boundary);
              end
           end // if (new_sd_clk)
        end // case: state_write_data
        state_write_crc:
          if (ctr_reaches(16))
            state_next = state_write_end_bit;
        state_write_end_bit: begin
           counter_reset = 1'b1;
           if (new_sd_clk) begin
              if (no_more_blocks) begin
                 state_next = state_write_done;
                 error_code_next = dat_error_codes::block_count_reached;
                 done_next = 1'b1;
              end
              else
                state_next = state_write_delay;
           end
        end // case: state_write_end_bit
        state_write_done:
          ;

        state_read_awaiting_data:
          if (new_sd_clk && sd_dat_i_sys[0] == 1'b0) begin
             state_next = state_read_data;
             counter_reset = 1'b1;
          end
        state_read_data:
          if (new_sd_clk) begin
             // For the last word, TVALID is not set until we know the
             // CRC is correct and the CRC response token is sent to the
             // host.
             set_out_tvalid = word_done & ~block_data_done;
             // Make sure the previous word is accepted before the current
             // word
             if (word_done & out_tvalid) begin
                state_next = state_read_done;
                set_error(dat_error_codes::read_data_not_accepted);
             end
             else if (block_data_done) begin
                state_next = state_read_crc;
                counter_reset = 1'b1;
             end
          end // if (new_sd_clk)
        state_read_crc:
          if (ctr_reaches(16))
            state_next = state_read_end_bit;
        state_read_end_bit: begin
           counter_reset = 1'b1;
           if (new_sd_clk) begin
              if (sd_dat_i_sys != '1) begin
                 // Treat bad end bit as bad CRC
                 state_next = state_read_done_busy;
                 error_code_next = dat_error_codes::read_bad_crc;
                 done_next = 1'b1;
              end
              else
                state_next = state_read_resp;
           end
        end // case: state_read_end_bit
        state_read_resp:
          if (ctr_reaches(5)) begin
             // The spec says, "The card will treat a data block as
             // successfully received and ready for programming only if the
             // CRC data of the block was validated and the CRC status tokens
             // sent back to the host."  Thus the TVALID signal at the end of
             // block is delayed until here.
             if (read_crc_err) begin
                state_next = state_read_done_busy;
                error_code_next = dat_error_codes::read_bad_crc;
                done_next = 1'b1;
             end
             else begin
                set_out_tvalid = 1'b1;
                if (out_tvalid) begin
                   state_next = state_read_done_busy;
                   set_error(dat_error_codes::read_data_not_accepted);
                end
                else if (no_more_blocks) begin
                   state_next = state_read_done_busy;
                   error_code_next = dat_error_codes::block_count_reached;
                   done_next = 1'b1;
                end
                else
                  state_next = state_read_busy;
             end // else: !if(read_crc_err)
          end // if (ctr_reaches(5))
        state_read_busy: begin
           counter_reset = 1'b1;
           if (new_sd_clk && !fifo_out_almostfull)
             state_next = state_read_busy_end;
        end
        // Some clock cycles are spent in this state to ensure the busy
        // status written previously is not taken as a start bit.
        state_read_busy_end:
          if (ctr_reaches(3))
            state_next = state_read_awaiting_data;
        state_read_done, state_read_done_busy:
          ;

        default:
          state_next = state_idle;
      endcase // case (state)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       state <= state_idle;
     else
       state <= state_next;

   // DAT line output

   wire [0:4] resp_token_good = 5'b00101,
              resp_token_bad = 5'b01011;

   reg [3:0]             sd_dat_o_sys_next, sd_dat_t_sys_next;

   always @(*) begin : line_output

      sd_dat_o_sys_next = '1;
      // If any bit in sd_dat_o_sys is 0, a 1 will be written the next
      // SD bus clock to prevent the bus from floating.
      sd_dat_t_sys_next = {4{&sd_dat_o_sys}};

      case (state)
        state_write_delay: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next = '1;
        end
        state_write_start_bit: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next = '0;
        end
        state_write_data: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next = line_next_bit;
        end
        state_write_crc: begin
           sd_dat_t_sys_next = '0;
           foreach (sd_dat_o_sys_next[i])
             sd_dat_o_sys_next[i] = crc_result[i][15];
        end
        state_write_end_bit: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next = '1;
        end
        state_read_resp: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next[3:1] = '1;
           sd_dat_o_sys_next[0] = read_crc_err ? resp_token_bad[counter] :
                                  resp_token_good[counter];
        end
        state_read_busy, state_read_done_busy: begin
           sd_dat_t_sys_next = '0;
           sd_dat_o_sys_next = 4'b1110;
        end
        state_idle:
          if (busy_in) begin
             sd_dat_t_sys_next = '0;
             sd_dat_o_sys_next = 4'b1110;
          end
        default:
          ;
      endcase // case (state)

      if (~width_4)
        sd_dat_o_sys_next[3:1] = '1;
   end // block: line_output

   always @(posedge clk)
     if (~resetn_sys) begin
        sd_dat_o_sys <= '1;
        sd_dat_t_sys <= '1;
     end
     else if (new_sd_clk) begin
        sd_dat_o_sys <= sd_dat_o_sys_next;
        sd_dat_t_sys <= sd_dat_t_sys_next;
     end
endmodule // dat_interface