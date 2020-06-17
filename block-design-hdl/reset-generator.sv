module reset_generator
  #(parameter integer C_OUTPUT_COUNT = 2,
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 3)
   (output wire [C_OUTPUT_COUNT-1 : 0] out_aresetn,

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
    input wire aresetn);

   wire [7:0]  reg_written[1<<C_S_AXI_ADDR_WIDTH];
   reg [7:0]   reg_to_read[1<<C_S_AXI_ADDR_WIDTH];

   block_design_axi4_lite_intf
     #(.DATA_WIDTH(C_S_AXI_DATA_WIDTH),
       .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH))
   control_intf(.reg_written(reg_written),
                .reg_written_cleared(),
                .reg_to_read(reg_to_read),
                .wdata_saved(),
                .waddr_saved(),
                .raddr_saved(),
                .wstrb_saved(),
                .wr_tran(),
                .rd_tran(),
                .onwrite(),
                .onread(),

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
                .resetn(aresetn));

   generate
      for (genvar i = 0; i < C_OUTPUT_COUNT; i++)
        assign out_aresetn[i] = reg_written[C_S_AXI_DATA_WIDTH/8*i][0];
   endgenerate

   always @(*) begin
      foreach (reg_to_read[i])
        reg_to_read[i] = 'b0;
      foreach (out_aresetn[i])
        reg_to_read[C_S_AXI_DATA_WIDTH/8*i][0] = out_aresetn[i];
   end
endmodule // reset_generator
