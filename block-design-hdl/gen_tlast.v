// This is written because the AXI4-Stream Subset Converter can only
// count to 256 transfers, but we need more.  And for small blocks,
// TLAST is given by the CPU.

module gen_tlast
  #(parameter BLOCK_SIZE = 512,
    parameter DATA_WIDTH = 8)
   (output [DATA_WIDTH-1:0] m_axis_tdata,
    output m_axis_tlast,
    output m_axis_tvalid,
    input m_axis_tready,

    input [DATA_WIDTH-1:0] s_axis_tdata,
    input s_axis_tlast,
    input s_axis_tvalid,
    output s_axis_tready,

    input aclk,
    input aresetn);

   initial
     if (!(((BLOCK_SIZE & (BLOCK_SIZE - 1)) == 0) && BLOCK_SIZE > 1))
       $error("Unsupported block size");

   assign m_axis_tdata = s_axis_tdata;
   assign m_axis_tvalid = s_axis_tvalid;
   assign s_axis_tready = m_axis_tready & aresetn;

   reg [$clog2(BLOCK_SIZE)-1:0] count;
   wire [$clog2(BLOCK_SIZE):0]  count_inc = count + 1;

   always @(negedge aresetn or posedge aclk)
     if (~aresetn)
       count <= 0;
     else if (m_axis_tready & m_axis_tvalid)
       count <= count_inc;

   assign m_axis_tlast = s_axis_tlast | count_inc[$clog2(BLOCK_SIZE)];
endmodule // gen_tlast
