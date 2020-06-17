module axi_stream_constant_generator
  #(
    parameter integer C_DATA_OUT_DATA_WIDTH = 8,
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5,
    parameter integer C_COUNT_WIDTH = 32
    )
   (
    // Data out
    output wire data_out_tvalid,
    output wire [C_DATA_OUT_DATA_WIDTH-1 : 0] data_out_tdata,
    input wire data_out_tready,

    // Ports of Axi Slave Bus Interface S_AXI
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input wire s_axi_awvalid,
    output wire s_axi_awready,
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input wire s_axi_wvalid,
    input wire [C_S_AXI_DATA_WIDTH/8-1 : 0] s_axi_wstrb,
    output wire s_axi_wready,
    output wire [1 : 0] s_axi_bresp,
    output wire s_axi_bvalid,
    input wire s_axi_bready,
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input wire s_axi_arvalid,
    output wire s_axi_arready,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output wire [1 : 0] s_axi_rresp,
    output wire s_axi_rvalid,
    input wire s_axi_rready,

    input wire aclk,
    input wire resetn
    );

   // Constant generator
   //
   // To start transfer, write the value to REG_VALUE, then write to
   // REG_COUNT_IN, and then write 1 to REG_START.  Any other order is
   // not guaranteed to work.
   //
   // To read the number of transfers completed, read the low word of
   // REG_COUNT_DONE first.  Other words read as their values when the
   // low word is read.

   localparam REG_VALUE = 0;
   localparam REG_COUNT_IN = 8;
   localparam REG_COUNT_DONE = 16;
   localparam REG_START = 24;

   initial
     if (C_S_AXI_ADDR_WIDTH < 5)
       $error("AXI address width too small");

   // AXI interface

   wire        wr_tran;
   wire        onwrite[1<<C_S_AXI_ADDR_WIDTH];
   wire        onread[1<<C_S_AXI_ADDR_WIDTH];
   wire [7:0]  reg_written[1<<C_S_AXI_ADDR_WIDTH];
   wire [7:0]  reg_written_cleared[1<<C_S_AXI_ADDR_WIDTH];
   reg [7:0]   reg_to_read[1<<C_S_AXI_ADDR_WIDTH];
   reg         reg_resetn[1<<C_S_AXI_ADDR_WIDTH];

   block_design_axi4_lite_intf
     #(.DATA_WIDTH(C_S_AXI_DATA_WIDTH),
       .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH))
   control_intf(.reg_written,
                .reg_written_cleared,
                .reg_to_read,
                .wdata_saved(),
                .waddr_saved(),
                .raddr_saved(),
                .wstrb_saved(),
                .wr_tran,
                .rd_tran(),
                .onwrite,
                .onread,
                .reg_resetn,

                .awaddr(s_axi_awaddr),
                .awvalid(s_axi_awvalid),
                .awready(s_axi_awready),
                .wdata(s_axi_wdata),
                .wvalid(s_axi_wvalid),
                .wstrb(s_axi_wstrb),
                .wready(s_axi_wready),
                .bresp(s_axi_bresp),
                .bvalid(s_axi_bvalid),
                .bready(s_axi_bready),
                .araddr(s_axi_araddr),
                .arvalid(s_axi_arvalid),
                .arready(s_axi_arready),
                .rdata(s_axi_rdata),
                .rresp(s_axi_rresp),
                .rvalid(s_axi_rvalid),
                .rready(s_axi_rready),
                .clk(aclk),
                .resetn(resetn));

   // Clear  count in  on the  first register write.   So that  when the
   // system bus is narrower than  the count, writing to the lowest word
   // of the count is sufficient for counts that fit in 1 word.

   reg         transfer_started;
   reg         count_resetn;

   always @(posedge aclk)
     if (~resetn) begin
        transfer_started <= 1'b0;
        count_resetn <= 1'b0;
     end
     else begin
        count_resetn <= 1'b1;
        if (reg_written_cleared[REG_START][0])
          transfer_started <= 1'b1;
        else if (wr_tran && transfer_started) begin
           transfer_started <= 1'b0;
           count_resetn <= 1'b0;
        end
     end // else: !if(~resetn)

   always_comb begin
      reg_resetn = '{default: 1'b1};
      for (int i = 0; i < C_COUNT_WIDTH; i++)
        reg_resetn[REG_COUNT_IN+i/8] = count_resetn;
   end

   // Target count

   wire [C_COUNT_WIDTH-1:0] count_target;

   generate
      for (genvar i = 0; i < C_COUNT_WIDTH; i++)
        assign count_target[i] = reg_written[REG_COUNT_IN+i/8][i%8];
   endgenerate

   // Output

   reg [C_COUNT_WIDTH-1:0]  count_transferred;
   reg                      more;
   wire                     transfer;
   wire [C_COUNT_WIDTH-1:0] count_transferred_next;

   assign count_transferred_next = count_transferred + transfer;
   assign transfer = data_out_tvalid & data_out_tready;

   always @(posedge aclk)
     if (~resetn | ~count_resetn)
       count_transferred <= 0;
     else
       count_transferred <= count_transferred_next;

   always @(posedge aclk)
     if (~resetn)
       more <= 1'b0;
     else
       more <= count_transferred_next < count_target;

   assign data_out_tdata = reg_written[REG_VALUE];
   assign data_out_tvalid = ~onwrite[REG_VALUE] & transfer_started & more;

   // Register reads

   // Save the count to prevent race conditions

   reg [C_COUNT_WIDTH-1:0]  count_transferred_read;

   always @(posedge aclk)
     if (~resetn | ~count_resetn)
       count_transferred_read <= 0;
     else if (onread[REG_COUNT_DONE])
       count_transferred_read <= count_transferred;

   always_comb begin
      reg_to_read = '{default: '0};

      reg_to_read[REG_VALUE] = reg_written[REG_VALUE];

      for (int i = 0; i < C_COUNT_WIDTH; i++) begin
         reg_to_read[REG_COUNT_IN+i/8][i%8] = count_target[i];
         reg_to_read[REG_COUNT_DONE+i/8][i%8] = i < C_S_AXI_DATA_WIDTH ?
                                                count_transferred[i] :
                                                count_transferred_read[i];
      end
   end // always_comb
endmodule // axi_stream_constant_generator
