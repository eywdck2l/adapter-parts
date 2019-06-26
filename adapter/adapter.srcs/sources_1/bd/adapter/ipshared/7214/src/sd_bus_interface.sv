`timescale 1ns / 1ps

module sd_bus_interface
  #(parameter cmd_resp_delay_max = 4,
    parameter cmd_resp_delay_width = 4,
    parameter cmd_resp_len_max = 17,
    parameter dat_word_size = 32,
    parameter dat_block_size_max = 4096 / dat_word_size)
   (output got_new_cmd,
    output cmd_crc_err,
    output [5:0] cmd_index,
    output [31:0] cmd_arg,
    output cmd_resp_done,
    output cmd_resp_timeout,
    output [$clog2(cmd_resp_len_max) - 1:0] cmd_resp_pos,
    input [7:0] cmd_resp_byte,
    input [$clog2(cmd_resp_len_max + 1) - 1:0] cmd_resp_len,
    input [cmd_resp_delay_width - 1:0] cmd_resp_delay,
    input resp_no_crc,
    input resp_start,
    input resp_none,

    output dat_got_word,
    output dat_got_block,
    output dat_crc_err,
    output [dat_word_size - 1:0] dat_read_data,
    input dat_start_read_block,
    input [dat_word_size - 1:0] dat_write_data,
    input [$clog2(dat_block_size_max * dat_word_size + 1) - 1:0] dat_block_size,
    output dat_wrote_new_word,
    output dat_wrote_all,
    input dat_width_4,
    input dat_start_write_block,
    input dat_write_mode,
    input dat_read_mode,
    input dat_en,
    input busy_in,

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
   reg       resetn_reg;

   wire      new_sd_clk = sd_clk_div_d[3] != sd_clk_div_d[2];
   wire      sd_cmd_i_sys = sd_cmd_d[2];
   wire [3:0] sd_dat_i_sys = sd_dat_d[2];

   always @(posedge clk)
     if (~resetn)
       resetn_reg <= 1'b0;
     else
       resetn_reg <= 1'b1;

   // Read on the rising edge

   always @(posedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg) begin
        // Reset them to 1 because 1 does not start a command reading.
        sd_cmd_d[0] <= 1'b1;
        sd_dat_d[0] <= '1;
     end
     else begin
        sd_cmd_d[0] <= sd_cmd_i;
        sd_dat_d[0] <= sd_dat_i;
     end

   always @(negedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg)
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

   always @(negedge sd_clk_i, negedge resetn_reg)
     if (~resetn_reg) begin
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

   cmd_interface #(.resp_delay_max(cmd_resp_delay_max),
                   .resp_delay_width(cmd_resp_delay_width),
                   .resp_len_max(cmd_resp_len_max))
   cmd_unit(.resp_done(cmd_resp_done),
            .resp_timeout(cmd_resp_timeout),
            .resp_pos(cmd_resp_pos),
            .resp_byte(cmd_resp_byte),
            .resp_len(cmd_resp_len),
            .resp_delay(cmd_resp_delay),
            .*);

   dat_interface #(.word_size(dat_word_size),
                   .block_size_max(dat_block_size_max))
   dat_unit(.got_word(dat_got_word),
            .got_block(dat_got_block),
            .read_crc_err(dat_crc_err),
            .read_data(dat_read_data),
            .start_read_block(dat_start_read_block),
            .write_data(dat_write_data),
            .wrote_new_word(dat_wrote_new_word),
            .wrote_all(dat_wrote_all),
            .block_size(dat_block_size),
            .start_write_block(dat_start_write_block),
            .write_mode(dat_write_mode),
            .read_mode(dat_read_mode),
            .en(dat_en),
            .*);
endmodule // sd_bus_interface

module line_crc
  #(parameter width = 1,
    parameter bit [width - 1:0] polynomial = 1'b1)
   (output reg [width-1:0] crc,
    input line,
    input hold,
    input clk,
    input resetn);
   always @(posedge clk)
     if (~resetn)
       crc <= 0;
     else if (~hold)
       crc <= (crc << 1) ^ (polynomial * (line ^ crc[width - 1]));
endmodule // line_crc

module cmd_interface
  #(// The number of SD clocks to wait for a write strobe after the 2 z
    // clocks after receiving a command.
    parameter resp_delay_max = 4,
    parameter resp_delay_width = 4,
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
    // resp_delay is the number of clocks to wait before writing the
    // response after the 2 z clocks.  It only needs to be accurate when
    // the SD clock is 100kHz to 400kHz.
    input [resp_delay_width - 1:0] resp_delay,
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
            if (new_sd_clk && &(counter_next | ~47)) begin
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
               if (new_sd_clk && (counter_next >= resp_delay ||
                                  counter_next >= resp_delay_max))
                 state_next = 1 << state_writing;
            end
            else begin
               if (new_sd_clk && &(counter_next | ~resp_delay_max)) begin
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
      .line(state_next[state_writing] ? buf_write_next[7] : sd_cmd_i_sys),
      .hold(!new_sd_clk),
      .clk(clk),
      .resetn(!(!resetn ||
                !(state_next[state_reading] ||
                  state_next[state_writing]))));
endmodule // cmd_interface

module dat_interface
  #(// The word size in bits.  It is a power of 2.
    parameter word_size = 64,
    // The maximum number of words in a single block
    parameter block_size_max = 4096 / word_size,
   // The minimum interval between writing 2 blocks, including the end
   // bit of the last block.  The spec says NAC is at least 2 clocks.
   // However, we saw about 64 clocks in some SD cards no matter how
   // slow the clock is.  So we guessed maybe some card readers couldn't
   // handle NAC being 2.
    parameter write_delay_min = 64)
   (// high for 1 clock when a new word is read
    output reg got_word,
    // high for 1 clock when a new block is read regardless of whether
    // there is a crc error
    output reg got_block,
    // whether there is a crc error
    output reg read_crc_err,
    // data read
    output reg [word_size-1:0] read_data,
    // high when the read fifo has space for another block
    input start_read_block,

    // data to write
    input [word_size-1:0] write_data,
    output reg wrote_new_word,
    // all data is written
    output wrote_all,

    // the block size in bits
    input [$clog2(block_size_max * word_size + 1) - 1:0] block_size,
    // Whether all 4 dat lines are used
    input dat_width_4,

    input start_write_block,
    input write_mode,
    input read_mode,
    input en,
    input busy_in,

    input new_sd_clk,
    input [3:0] sd_dat_i_sys,
    output reg [3:0] sd_dat_o_sys,
    output reg [3:0] sd_dat_t_sys,

    input resetn,
    input clk);

   localparam counter_width = 12;
   localparam crc_width = 16;
   localparam bit [15:0] crc_polynomial = 16'h1021;
   localparam write_buf_size = word_size < 64 ? 64 : word_size;

   // the number of sd bus clocks that have past in the current state
   reg [counter_width - 1:0] counter;
   wire [counter_width:0]    counter_inc = counter + 1;

   enum                      {
                              state_idle,
                              state_writing_delay,
                              state_writing_no_data,
                              state_writing_start_bit,
                              state_writing_data,
                              state_writing_crc,
                              state_reading_awaiting_data,
                              state_reading_data,
                              state_reading_crc,
                              state_reading_z,
                              state_reading_resp,
                              state_reading_busy,
                              state_reading_busy_end,
                              state_reading_got_error
                              } state, state_next;

   // The block's data not including the CRC is finished

   reg                       block_data_finished;

   always @(*)
     if (dat_width_4)
       block_data_finished = counter_inc >= (block_size >> 2);
     else
       block_data_finished = counter_inc >= block_size;

   // Find when the word is finished

   reg word_finished;

   always @(*)
     if (dat_width_4)
       word_finished = counter[$clog2(word_size) - 2] !=
                       counter_inc[$clog2(word_size) - 2];
     else
       word_finished = counter[$clog2(word_size)] !=
                       counter_inc[$clog2(word_size)];

   // counter

   always @(posedge clk)
     if (!resetn || state != state_next)
       // clear the counter when the state changes
       counter <= 0;
     else if (new_sd_clk)
       counter <= counter_inc;

   wire crc_finished = &(counter_inc | ~16);

   // next state

   always @(*) begin
      state_next = state;
      case (state)
        state_idle:
          if (read_mode)
            state_next = start_read_block ? state_reading_awaiting_data :
                         state_reading_busy;
          else if (write_mode)
            state_next = state_writing_delay;
        state_writing_delay:
          if (new_sd_clk && &(counter_inc | ~write_delay_min))
            state_next = start_write_block ? state_writing_start_bit :
                         state_writing_no_data;
        state_writing_no_data:
          if (new_sd_clk && start_write_block)
            state_next = state_writing_start_bit;
        state_writing_start_bit:
          if (new_sd_clk)
            state_next = state_writing_data;
        state_writing_data:
          if (new_sd_clk && block_data_finished)
            state_next = state_writing_crc;
        state_writing_crc:
          if (new_sd_clk && crc_finished)
            state_next = state_writing_delay;
        state_reading_awaiting_data:
          if (new_sd_clk && sd_dat_i_sys[0] == 1'b0)
            state_next = state_reading_data;
        state_reading_data:
          if (new_sd_clk && block_data_finished)
            state_next = state_reading_crc;
        state_reading_crc:
          if (new_sd_clk && crc_finished)
            state_next = state_reading_z;
        state_reading_z:
          if (new_sd_clk && &(counter_inc | ~2))
            state_next = state_reading_resp;
        state_reading_resp:
          if (new_sd_clk && &(counter_inc | ~5)) begin
             if (read_crc_err)
               state_next = state_reading_got_error;
             else
               state_next = state_reading_busy;
          end
        state_reading_busy:
          if (new_sd_clk && start_read_block)
            state_next = state_reading_busy_end;
        state_reading_busy_end:
          if (new_sd_clk)
            state_next = state_reading_awaiting_data;
        state_reading_got_error:
          if (!read_mode)
            state_next = state_idle;
        default:
          state_next = state_idle;
      endcase // case (state)

      if (~en)
        state_next = state_idle;
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       state <= state_idle;
     else
       state <= state_next;

   // When 1 dat line is used, buf_write holds the data to be written on
   // dat[0].  When 4 dat lines are used, each quarter of buf_write
   // holds the data to be written on each line.  The highest quarter is
   // for dat[0], the next is for dat[1], and so on.

   reg [write_buf_size - 1:0] buf_write, buf_write_next;
   reg [3:0] line_next_bit;

   always @(*) begin: assign_line_next_bit
      integer i;
      for (i = 0; i < 4; i = i + 1)
        line_next_bit[i] = buf_write_next[(write_buf_size >> 2) * (4 - i) - 1];
   end

   // CRC

   wire [15:0] crc_result[0:3];

   genvar      i;

   generate
      for (i = 0; i < 4; i = i + 1) begin: line_crc
         line_crc #(.width(crc_width),
                    .polynomial(crc_polynomial))
         line_crc(.crc(crc_result[i]),
                  .line(state_next == state_writing_data ? line_next_bit[i] :
                        sd_dat_i_sys[i]),
                  .hold(!new_sd_clk),
                  .clk(clk),
                  .resetn(!(!resetn ||
                            (i != 0 && !dat_width_4) ||
                            !(state_next == state_writing_data ||
                              state_next == state_reading_data ||
                              state_next == state_reading_crc ||
                              state_next == state_reading_z))));
      end // block: line_crc
   endgenerate

   // Read data

   reg [word_size - 1:0] buf_read, buf_read_next;

   always @(*) begin
      buf_read_next = {buf_read[word_size - 2:0], sd_dat_i_sys[0]};
      if (dat_width_4) begin: read_line
         integer i;
         for (i = 1; i < 4; i = i + 1)
           buf_read_next[(word_size >> 2) * i] = sd_dat_i_sys[i];
      end
   end

   // Reorder the bits read

   reg [word_size - 1:0] read_data_next;

   always @(*)
     if (dat_width_4) begin: reorder_bits_read
        integer i, j;
        for (i = 0; i < (word_size >> 2); i = i + 1)
          for (j = 0; j < 4; j = j + 1)
            read_data_next[4 * i + j] = buf_read_next[(word_size >> 2) * j + i];
     end
     else
       read_data_next = buf_read_next;

   // Save the data read

   always @(posedge clk)
     if (~resetn)
       buf_read <= 0;
     else if (new_sd_clk)
       buf_read <= buf_read_next;

   wire         got_word_c;

   assign got_word_c = new_sd_clk && state == state_reading_data && word_finished;

   always @(posedge clk)
     if (~resetn)
        read_data <= 0;
     else if (got_word_c)
        read_data <= read_data_next;

   always @(posedge clk)
     if (~resetn)
       got_word <= 1'b0;
     else
       got_word <= got_word_c;

   // Finish reading a block

   reg read_block_end;
   reg read_crc_err_next;

   always @(*) begin
      read_crc_err_next = 1'b0;
      // The CRC will be 0 for the unused lines because the units will
      // be reset.
      foreach (crc_result[i])
        read_crc_err_next = read_crc_err_next || crc_result[i] != 0;
   end

   always @(posedge clk)
     if (~resetn)
       read_block_end <= 1'b0;
     else
       read_block_end <= state == state_reading_crc &&
                          state_next == state_reading_z;

   always @(posedge clk)
     if (~resetn)
       read_crc_err <= 1'b0;
     else if (read_block_end)
       read_crc_err <= read_crc_err_next;

   // Send the got new block signal.  The spec says "The card will treat
   // a data block as successfully received and ready for programming
   // only if the CRC data of the block was validated and the CRC status
   // tokens sent back to the host."  Thus we send the signal when the
   // CRC status token is sent.  It also means en will be high when the
   // token is being written even if we have a CRC error.

   always @(posedge clk)
     if (~resetn)
       got_block <= 1'b0;
     else
       got_block <= state == state_reading_resp &&
                    state_next != state_reading_resp;

   // data to write

   reg wrote_new_word_next;

   always @(*) begin
      buf_write_next = 'x;
      wrote_new_word_next = 1'b0;

      // Load CRC
      if (state == state_writing_data &&
          state_next == state_writing_crc) begin: read_crc
         integer i;
         for (i = 0; i < 4; i = i + 1)
           buf_write_next[(write_buf_size >> 2) * (4 - i) - 1 -: crc_width] =
                  crc_result[i];
      end

      // Load data to write
      else if ((state == state_writing_start_bit &&
                state_next == state_writing_data) ||
               (state == state_writing_data && word_finished)) begin
         wrote_new_word_next = 1'b1;
         // reorder the bits
         if (dat_width_4) begin: reorder_dat_bits
            integer i, j;
            for (i = 0; i < word_size / 4; i = i + 1)
              for (j = 0; j < 4; j = j + 1)
                buf_write_next[(write_buf_size / 4) * (j + 1) - i - 1] =
                       write_data[word_size - 1 - 4 * i - j];
         end
         else
           buf_write_next[write_buf_size - 1 -: word_size] = write_data;
      end // if ((state == state_writing_start_bit &&...

      // Load read status token
      else if (state == state_reading_z &&
               state_next == state_reading_resp) begin: resp_token
         integer i;
         buf_write_next[write_buf_size - 1 -: 5] = read_crc_err ?
                                                   5'b01011 :
                                                   5'b00101;
         for (i = 1; i < 4; i = i + 1)
           buf_write_next[(write_buf_size / 4) * (4 - i) - 1 -: 5] = '1;
      end

      // Shift
      else
        buf_write_next = {buf_write, 1'bx};
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        buf_write <= 0;
        wrote_new_word <= 1'b0;
     end
     else if (new_sd_clk) begin
        buf_write <= buf_write_next;
        wrote_new_word <= wrote_new_word_next;
     end
     else
       wrote_new_word <= 1'b0;

   // Tell the system when we're done writing

   assign wrote_all = state == state_writing_no_data;

   // dat line output

   reg [3:0]             sd_dat_o_sys_next, sd_dat_t_sys_next;

   always @(*) begin
      sd_dat_o_sys_next = '1;
      // If any bit in sd_dat_o_sys is 0, a 1 will be written the next
      // SD bus clock.
      sd_dat_t_sys_next = {4{&sd_dat_o_sys}};

      case (state_next)
        state_writing_delay, state_writing_no_data: begin
           sd_dat_t_sys_next = 0;
           sd_dat_o_sys_next = '1;
        end
        state_writing_start_bit: begin
           sd_dat_t_sys_next = 0;
           sd_dat_o_sys_next[0] = 1'b0;
           sd_dat_o_sys_next[3:1] = dat_width_4 ? '0 : '1;
        end
        state_writing_data, state_writing_crc, state_reading_resp: begin
           sd_dat_t_sys_next = 0;
           sd_dat_o_sys_next[0] = line_next_bit[0];
           if (dat_width_4)
             sd_dat_o_sys_next[3:1] = line_next_bit[3:1];
           else
             sd_dat_o_sys_next[3:1] = '1;
        end
        state_reading_busy, state_reading_got_error: begin
           sd_dat_t_sys_next = 0;
           sd_dat_o_sys_next = 4'b1110;
        end
        state_idle:
          if (busy_in) begin
             sd_dat_t_sys_next = 0;
             sd_dat_o_sys_next[0] = 1'b0;
             sd_dat_o_sys_next[3:1] = '1;
          end
      endcase // case (state_next)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        sd_dat_o_sys <= '1;
        sd_dat_t_sys <= '1;
     end
     else if (new_sd_clk) begin
        sd_dat_o_sys <= sd_dat_o_sys_next;
        sd_dat_t_sys <= sd_dat_t_sys_next;
     end
endmodule // dat_interface
