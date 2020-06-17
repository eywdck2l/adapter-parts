module block_mode_fifo
  #(parameter DATA_WIDTH = 8,
    parameter BLOCK_SIZE = 512,
    parameter DEPTH = 1024)
   (output reg [DATA_WIDTH-1:0] out_tdata,
    output reg out_tlast,
    output reg out_tvalid,
    input out_tready,
    output reg almost_empty, // Less than 1 block is available

    input [DATA_WIDTH-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output reg in_tready,
    output reg almost_full, // Less than 1 block is vacant

    // Rewind the output to start of the block.  It's for when the next
    // stage in the data path has had an error, and the block needs to
    // be transferred again.
    input rewind_block_output = 1'b0,

    // Discard the last partial block of input.  When a complete block
    // has been read, it is not discarded.
    input discard_block_input = 1'b0,

    // When small_block_mode is 1, the input consists only of 1 block.
    // Output is available when the first tlast is taken from input.
    // Otherwise, output is available when at least 1 whole block is
    // read.
    input small_block_mode = 1'b0,

    input clk,
    input resetn);

   initial begin
      if (!(BLOCK_SIZE != 0 && (BLOCK_SIZE & (BLOCK_SIZE - 1)) == 0))
        $error("Block size must be power of 2");
      if (!(DEPTH != 0 && (DEPTH & (DEPTH - 1)) == 0))
        $error("Depth must be power of 2");
      if (DEPTH < BLOCK_SIZE)
        $error("Depth must be at least 1 block");
   end

   // Input and output addresses.  Them being equal means empty.  Equal
   // except for the msb means full.
   reg [$clog2(DEPTH):0] addr_in, addr_out;

   // The block currently being read.
   reg [$clog2(DEPTH):$clog2(BLOCK_SIZE)] output_block;

   reg [DATA_WIDTH-1:0]                   mem[DEPTH];

   // Read input

   wire                                   take_input;
   reg                                    got_tlast;
   // Remember the address when we got tlast.  It is only used for small
   // blocks, when only one block is expected.  Only one address needs
   // to be saved.
   reg [$clog2(DEPTH)-1:0]                addr_tlast;
   // The word to be read will be at the start and end of a block
   reg                                    input_block_start, input_block_end;

   assign take_input = in_tvalid && in_tready;

   always @(posedge clk)
     if (take_input)
       mem[addr_in%DEPTH] <= in_tdata;

   always @(posedge clk)
     if (~resetn) begin
        addr_in <= 0;
        got_tlast <= 1'b0;
        addr_tlast <= 0;
        input_block_start <= 1'b1;
        input_block_end <= 1'b0;
     end
     else if (discard_block_input) begin
        addr_in[$clog2(BLOCK_SIZE)-1:0] <= 0;
        input_block_start <= 1'b1;
        input_block_end <= 1'b0;
     end
     else if (take_input) begin
        addr_in <= addr_in + 1;
        if (!got_tlast && in_tlast) begin
           got_tlast <= 1'b1;
           addr_tlast <= addr_in;
        end
        input_block_start <= (addr_in + 1) % BLOCK_SIZE == 0;
        input_block_end <= (addr_in + 2) % BLOCK_SIZE == 0;
     end

   reg almost_full_next, full_next;

   always_comb begin : find_almost_full
      reg [$clog2(DEPTH):$clog2(BLOCK_SIZE)] input_block_1;

      full_next = input_block_1 == output_block;

      input_block_1 = (addr_in ^ DEPTH) / BLOCK_SIZE;
      if (take_input && input_block_end)
        input_block_1++;
      full_next = input_block_1 == output_block;
      almost_full_next = full_next;
      // Check for another block's space only when the next input isn't
      // at the start of a block
      if (!(take_input ? input_block_end : input_block_start))
        almost_full_next = almost_full_next ||
                           {input_block_1 + 'b1} == output_block;
   end

   // discard_block_input doesn't need to be acted upon because it
   // doesn't change which block is being written.

   always @(posedge clk)
     if (~resetn) begin
        in_tready <= 1'b0;
        almost_full <= 1'b1;
     end
     else if (small_block_mode && got_tlast) begin
        in_tready <= 1'b0;
        almost_full <= 1'b1;
     end
     else begin
        in_tready <= !full_next;
        almost_full <= almost_full_next;
     end

   // Write to output

   wire change_output;
   // output_block_start and output_block_second_to_end mean the word
   // currently at the output is the start and second to end of a block
   // respectively
   reg  output_block_start, output_block_second_to_end;
   reg  output_wont_overrun;

   always @(posedge clk)
     if (~resetn)
       output_wont_overrun <= 1'b0;
     else if (rewind_block_output)
       // Disable output to make things simpler.
       output_wont_overrun <= 1'b0;
     else if (small_block_mode) begin
        if (out_tlast || (change_output && addr_out % DEPTH == addr_tlast))
          output_wont_overrun <= 1'b0;
        else
          output_wont_overrun <= got_tlast;
     end
     else
       // When the current word is second to last in the block, the next
       // will be the last, and output_wont_overrun at that time should
       // be high only when the next block has been completely written.
       output_wont_overrun <= !(addr_out / BLOCK_SIZE == addr_in / BLOCK_SIZE ||
                                (change_output && output_block_second_to_end &&
                                 (addr_out / BLOCK_SIZE + 1) %
                                 (2 * DEPTH / BLOCK_SIZE) ==
                                 addr_in / BLOCK_SIZE));

   assign change_output = output_wont_overrun && (!out_tvalid || out_tready);

   // Save the rewind point when at least 1 word has been read from the
   // new block.

   always @(posedge clk)
     if (~resetn)
       output_block <= '0;
     else if (out_tready && out_tvalid && output_block_start)
       output_block <= addr_out / BLOCK_SIZE;

   always @(posedge clk)
     if (~resetn) begin
        addr_out <= 0;
        output_block_start <= 1'b0;
        output_block_second_to_end <= 1'b0;
     end
     else if (rewind_block_output) begin
        addr_out <= BLOCK_SIZE * output_block;
        output_block_start <= 1'b0;
        output_block_second_to_end <= 1'b0;
     end
     else if (change_output) begin
        addr_out <= addr_out + 1;
        output_block_start <= addr_out % BLOCK_SIZE == 0;
        output_block_second_to_end <= (addr_out + 2) % BLOCK_SIZE == 0;
     end

   reg almost_empty_next;

   always_comb begin : find_almost_empty
      reg [$clog2(DEPTH):$clog2(BLOCK_SIZE)] output_block, input_block;

      output_block = addr_out / BLOCK_SIZE;
      input_block = addr_in / BLOCK_SIZE;
      // The next block is not checked if the word at the output is the
      // start of a block.
      almost_empty_next = output_block == input_block ||
                          (!(output_block_start && !change_output) &&
                           {output_block + 'b1} == input_block);
   end // block: find_almost_empty

   always @(posedge clk)
     if (~resetn)
       almost_empty <= 1'b1;
     else
       almost_empty = almost_empty_next;

   always @(posedge clk)
     if (~resetn)
       out_tvalid <= 1'b0;
     else if (rewind_block_output)
       out_tvalid <= 1'b0;
     else if (change_output)
       out_tvalid <= 1'b1;
     else if (out_tready)
       out_tvalid <= 1'b0;

   always @(posedge clk)
     if (~resetn) begin
        out_tdata <= '0;
        out_tlast <= 1'b0;
     end
     else if (change_output) begin
        out_tdata <= mem[addr_out%DEPTH];
        if (small_block_mode)
          out_tlast <= addr_out % DEPTH == addr_tlast;
        else
          out_tlast <= output_block_second_to_end;
     end
endmodule // block_mode_fifo
