package dat_error_codes;
   localparam width = 4;
   // Success
   localparam bit [3:0] success = 0;
   // No data is available after the start of a block
   localparam bit [3:0] write_no_data = 1;
   // tlast is asserted before a block boundary is expected
   localparam bit [3:0] write_early_boundary = 2;
   // tlast is not asserted when a block boundary is expected
   localparam bit [3:0] write_late_boundary = 3;
   // The card has not sent a response after a block
   localparam bit [3:0] write_resp_timeout = 4;
   // The response is not 010
   localparam bit [3:0] write_bad_resp = 5;
   // tready is low after the start of a block
   localparam bit [3:0] read_data_not_accepted = 7;
   // Bad crc
   localparam bit [3:0] read_bad_crc = 8;
endpackage : dat_error_codes

module dat_rw
  #(// Word size in bits
    parameter word_size = 8,
    // The minimum clocks to delay from receiving the a CRC status token
    // to writing the next block.  The spec says a minimum of 2.  A
    // larger number is used just in case.
    parameter nwr_min = 64)
   (// Data read.  out_almostfull a new block should not be read.  The
    // rest is AXI4-Stream master.  End of block is indicated by tlast.
    // It is assumed that when a block is started, the whole block can
    // be read without out_tready going low.  Otherwise an error is
    // indicated.
    input out_almostfull,
    output reg out_tvalid,
    output reg [word_size-1:0] out_tdata,
    output reg out_tlast,
    input out_tready,

    // Data to write.  AXI4-Stream slave.  It is assumed in_tvalid will
    // stay high for a whole block, otherwise an error will be
    // indicated.
    output in_tready,
    input [word_size-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,

    // Number of blocks successfully transferred
    output reg [31:0] block_count_success,
    output reg block_count_success_overflow,

    // The signals for block size, block count, and mode must remain
    // constant when resetn is released.

    // Block size.  The block size is 4096 bits when small_block is 0
    // and (1 << block_size_exp) octets when it is 1.
    input [2:0] block_size_exp,
    input small_block,

    // Block count.  block_count_used being 0 means unlimited.
    // Otherwise it is block_count_in.  It is registered when reset is
    // released.  When small_block is set, these are ignored and only 1
    // block is transferred.
    input [31:0] block_count_in,
    input block_count_used,

    // Whether to read or write
    input read_mode,

    // The host stops the clock if it can't handle more incomming data.
    // stop_clock tells when to stop the clock.
    output reg stop_clock,

    // When the card has lifted the busy signal.  Only set when a
    // transfer is not in progress.
    output reg busy_cleared,
    output busy_cleared_new,

    // Whether it is done running
    output reg done,
    output reg done_new,
    output reg block_done,
    output reg [dat_error_codes::width-1:0] error_code,

    // Discard block
    output reg fifo_in_rewind_block,
    output reg fifo_out_discard_block,

    // SD interface
    inout [3:0] sd_dat,
    input [1:0] sd_clk,

    input clk,
    input resetn,
    input resetn_sys);

   // States

   enum   {
           state_initial,
           state_done,
           state_write_pending_device,
           state_write_pending_host,
           state_write_start_bit,
           state_write_data,
           state_write_crc,
           state_write_end_bit,
           state_write_resp_pending,
           state_write_resp,
           state_read_pending,
           state_read_data,
           state_read_crc,
           state_read_check
           } state, state_next;

   always @(posedge clk)
     if (~resetn)
       state <= state_initial;
     else
       state <= state_next;

   // SD bus connections
   wire [3:0] line_in;
   wire       new_sd_clk;
   reg [3:0]  line_out_d, line_out_en;
   generate
      for (genvar i = 0; i < 4; i = i + 1) begin : io_raw
         wire new_clk_i;
         if (i == 0)
           assign new_sd_clk = new_clk_i;
         sd_io_raw io_raw(.in_d(line_in[i]),
                          .out_d(line_out_d[i]),
                          .out_en(line_out_en[i]),
                          .new_clk(new_clk_i),
                          .line(sd_dat[i]),
                          .clk_bus(sd_clk),
                          .clk_sys(clk),
                          .resetn(resetn_sys));
      end : io_raw
   endgenerate

   // Keep track of the number of clocks spent in the current state

   reg        counter_reset;

   reg [9:0]  counter;
   wire [10:0] counter_inc = counter + 1;
   always @(posedge clk)
     if (~resetn | counter_reset)
       counter <= 0;
     else if (new_sd_clk)
       counter <= counter_inc;

   reg nwr_past;
   always @(posedge clk)
     if (~resetn | counter_reset)
       nwr_past <= 1'b0;
     else if (ctr_reaches(nwr_min))
       nwr_past <= 1'b1;

   wire        word_done = counter % (word_size / 4) == word_size / 4 - 1;

   function automatic ctr_reaches (input [10:0] n);
      ctr_reaches = new_sd_clk && (n[1:0] == 2'b00 ?
                                   (counter_inc & n) == n :
                                   (counter & (n - 1)) == n - 1);
   endfunction : ctr_reaches

   // Count the number of blocks successfully transferred

   reg         good_block_transferred;

   wire [32:0] block_count_success_inc = block_count_success + 1;
   reg         no_more_blocks;

   always @(posedge clk)
     if (~resetn) begin
        block_count_success <= 0;
        block_count_success_overflow <= 1'b0;
        no_more_blocks <= 1'b0;
     end
     else if (good_block_transferred) begin
        block_count_success <= block_count_success_inc;
        if (block_count_success_inc[32])
          block_count_success_overflow <= 1'b1;
        no_more_blocks <= small_block ||
                          (block_count_used &&
                           block_count_success_inc[31:0] >= block_count_in);
     end

   always @(posedge clk)
     if (~resetn)
       block_done <= 1'b0;
     else
       block_done <= good_block_transferred;

   // When the block's data is done, not including checksum
   wire        block_data_done = small_block ? counter_inc[block_size_exp+1] :
               counter_inc[10];

   // The buffer

   reg                in_tlast_saved;
   reg [word_size-1:0] buffer;
   reg [2:0]           buffer_line_0;
   reg                 buffer_load;
   wire [word_size-1:0] buffer_next = (buffer << 4) | line_in;

   always @(posedge clk)
     if (!resetn ||
         !(state == state_write_pending_host ||
           state == state_write_start_bit ||
           state == state_write_data ||
           state == state_write_resp ||
           state == state_read_data)) begin
        buffer <= '0;
        buffer_line_0 <= '0;
        in_tlast_saved <= 1'b0;
     end
     else if (new_sd_clk) begin
        if (buffer_load) begin
           buffer <= in_tdata;
           foreach (buffer_line_0[i])
             buffer_line_0[i] <= 4 * i < word_size ? in_tdata[4*i] : 1'b0;
           in_tlast_saved <= in_tlast;
        end
        else begin
           buffer <= buffer_next;
           buffer_line_0 <= (buffer_line_0 << 1) | line_in[0];
        end
     end // if (new_sd_clk)

   // CRC

   wire [15:0]         crc[4];
   reg                 read_check_fail;
   wire [3:0]          crc_good_line;
   reg [3:0]           crc_in;

   always @(posedge clk)
     if (~resetn)
       read_check_fail <= 1'bx;
     else if (new_sd_clk)
       read_check_fail <= ~(&crc_good_line) || ~(&line_in);

   always_comb
     case (state)
       state_write_data:
         crc_in = buffer[word_size-1-:4];
       state_write_crc:
         foreach (crc_in[i])
           crc_in[i] = crc[i][15];
       state_read_data, state_read_crc:
         crc_in = line_in;
       default:
         crc_in = 'x;
     endcase // case (state)

   generate
      for (genvar i = 0; i < 4; i = i + 1) begin : get_crc
         line_crc
                      #(.width(16),
                        .polynomial(16'h1021))
         crc_gen(.crc(crc[i]),
                 .good(crc_good_line[i]),
                 .line(crc_in[i]),
                 .hold(!new_sd_clk),
                 .clk(clk),
                 .resetn(!(!resetn ||
                           !(state == state_write_data ||
                             state == state_write_crc ||
                             state == state_read_data ||
                             state == state_read_crc))));
      end : get_crc
   endgenerate

   reg done_new_next;
   reg set_out_tvalid;
   reg [dat_error_codes::width-1:0] error_code_next;

   // State transistion

   always_comb begin
      state_next = state;
      counter_reset = 1'b0;
      buffer_load = 1'b0;
      done_new_next = 1'b0;
      error_code_next = 'x;
      set_out_tvalid = 1'b0;
      good_block_transferred = 1'b0;

      case (state)
        state_done:
          ;

        state_initial:
          if (read_mode)
            state_next = state_read_pending;
          else
            state_next = state_write_pending_device;

        //  Wait till both the host can provide data and the device can
        //  receive data.
        state_write_pending_device: begin
           counter_reset = 1'b1;
           if (no_more_blocks) begin
              done_new_next = 1'b1;
              error_code_next = dat_error_codes::success;
           end
           else if (new_sd_clk && line_in[0] == 1'b1)
             state_next = state_write_pending_host;
        end
        state_write_pending_host:
          if (new_sd_clk && in_tvalid && nwr_past)
            state_next = state_write_start_bit;

        // Write
        state_write_start_bit: begin
           buffer_load = 1'b1;
           counter_reset = 1'b1;
           if (new_sd_clk)
             state_next = state_write_data;
        end
        state_write_data: begin
           buffer_load = word_done & ~block_data_done;
           if (in_tready & ~in_tvalid) begin
              // Ensure there is data available when we want it.
              done_new_next = 1'b1;
              error_code_next = dat_error_codes::write_no_data;
           end
           else if (new_sd_clk) begin
              if (block_data_done) begin
                 counter_reset = 1'b1;
                 // Ensure the tlast signal is set at end of block.
                 if (~in_tlast_saved) begin
                    done_new_next = 1'b1;
                    error_code_next = dat_error_codes::write_early_boundary;
                 end
                 else
                   state_next = state_write_crc;
              end
              else if (word_done & in_tlast_saved) begin
                 // Check tlast was not asserted
                 done_new_next = 1'b1;
                 error_code_next = dat_error_codes::write_late_boundary;
              end
           end // if (new_sd_clk)
        end // case: state_write_data
        state_write_crc:
          if (ctr_reaches(16))
            state_next = state_write_end_bit;
        state_write_end_bit: begin
           counter_reset = 1'b1;
           if (new_sd_clk)
             state_next = state_write_resp_pending;
        end

        // Wait for the CRC status response.  The spec requires its
        // start bit to occur exactly 2 clock cycles after the block's
        // end bit.  We arbitrarily choose 8 for its timeout to account
        // for any possible delay in the data path.
        state_write_resp_pending:
          if (new_sd_clk && line_in[0] == 1'b0) begin
             state_next = state_write_resp;
             counter_reset = 1'b1;
          end
          else if (ctr_reaches(8)) begin
             done_new_next = 1'b1;
             error_code_next = dat_error_codes::write_resp_timeout;
          end

        // Read the write response.  The SD simplified specification
        // does not provide its format.  It is found in the MMC spec.
        state_write_resp:
          if (ctr_reaches(4)) begin
             if (buffer_line_0[2:0] == 3'b010) begin
                state_next = state_write_pending_device;
                good_block_transferred = 1'b1;
             end
             else begin
                done_new_next = 1'b1;
                error_code_next = dat_error_codes::write_bad_resp;
             end
          end

        // Wait for incoming data
        state_read_pending: begin
           counter_reset = 1'b1;
           if (no_more_blocks) begin
              done_new_next = 1'b1;
              error_code_next = dat_error_codes::success;
           end
           else if (new_sd_clk && line_in[0] == 1'b0)
             state_next = state_read_data;
        end

        // Read
        state_read_data:
          if (new_sd_clk) begin
             // For the last word, TVALID is not set until we know the
             // CRC is correct.
             set_out_tvalid = word_done & ~block_data_done;
             // Make sure the previous word is accepted before the current
             // word
             if (word_done & out_tvalid) begin
                done_new_next = 1'b1;
                error_code_next = dat_error_codes::read_data_not_accepted;
             end
             else if (block_data_done) begin
                state_next = state_read_crc;
                counter_reset = 1'b1;
             end
          end // if (new_sd_clk)
        state_read_crc:
          if (new_sd_clk && ctr_reaches(17))
            state_next = state_read_check;
        state_read_check:
          // Check for errors
          if (read_check_fail) begin
             done_new_next = 1'b1;
             error_code_next = dat_error_codes::read_bad_crc;
          end
          else begin
             set_out_tvalid = 1'b1;
             if (out_tvalid) begin
                done_new_next = 1'b1;
                error_code_next = dat_error_codes::read_data_not_accepted;
             end
             else begin
                state_next = state_read_pending;
                good_block_transferred = 1'b1;
             end
          end // else: !if(crc_fail || {line_in != '1})
      endcase // case (state)

      if (done_new_next)
        state_next = state_done;
   end // always_comb

   // DAT line output

   reg [3:0] line_out_d_next, line_out_en_next;
   always_comb begin
      line_out_en_next = '1;
      case (state)
        state_write_pending_host:
          line_out_d_next = '1;
        state_write_start_bit:
          line_out_d_next = '0;
        state_write_data:
          line_out_d_next = buffer[word_size-4+:4];
        state_write_crc:
          foreach (line_out_d_next[i])
            line_out_d_next[i] = crc[i][15];
        state_write_end_bit:
          line_out_d_next = '1;
        default: begin
           line_out_d_next = 'x;
           line_out_en_next = '0;
        end
      endcase // case (state)
   end // always_comb

   always @(posedge clk)
     if (~resetn) begin
        line_out_d <= '1;
        line_out_en <= '0;
     end
     else begin
        line_out_d <= line_out_d_next;
        line_out_en <= line_out_en_next;
     end

   // Data out

   always @(posedge clk)
     if (~resetn) begin
        out_tdata <= '0;
        out_tlast <= 1'b0;
     end
     else if (state == state_read_data && new_sd_clk && word_done) begin
        out_tdata <= buffer_next;
        out_tlast <= block_data_done;
     end

   always @(posedge clk)
     if (~resetn)
       out_tvalid <= 1'b0;
     else if (set_out_tvalid)
       out_tvalid <= 1'b1;
     else if (out_tready)
       out_tvalid <= 1'b0;

   // Discard the block with transfer errors.

   always @(posedge clk)
     if (~resetn) begin
        fifo_in_rewind_block <= 1'b0;
        fifo_out_discard_block <= 1'b0;
     end
     else begin
        fifo_in_rewind_block <= !read_mode && state == state_done;
        fifo_out_discard_block <= read_mode && state == state_done;
     end

   // Other output

   assign in_tready = new_sd_clk & buffer_load;
   always @(posedge clk)
     if (~resetn) begin
        stop_clock <= 1'b0;
        done <= 1'b0;
        done_new <= 1'b0;
        error_code <= dat_error_codes::success;
     end
     else begin
        stop_clock <= state == state_read_pending && out_almostfull;
        done_new <= done_new_next;
        if (done_new_next) begin
           error_code <= error_code_next;
           done <= 1'b1;
        end
     end // else: !if(~resetn)

   // Busy

   reg busy_cleared_next;

   always_comb begin
      busy_cleared_next = busy_cleared;
      if (!(state == state_initial || state == state_done ||
            state == state_write_pending_device))
        busy_cleared_next = 1'b0;
      else if (new_sd_clk)
        busy_cleared_next = line_in[0] == 1'b1;
   end

   always @(posedge clk)
     if (~resetn_sys)
       busy_cleared <= 1'b0;
     else
       busy_cleared <= busy_cleared_next;

   assign busy_cleared_new = busy_cleared_next && !busy_cleared;

endmodule // dat_rw
