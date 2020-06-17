// Wrapper, because IP Integrator doesn't support a SystemVerilog module
// in a block design

module axi_stream_constant_generator_wrapper
  #(
    parameter integer C_DATA_OUT_DATA_WIDTH = 8,
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5,
    parameter integer C_COUNT_WIDTH = 41
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

   axi_stream_constant_generator
     #(.C_DATA_OUT_DATA_WIDTH(C_DATA_OUT_DATA_WIDTH),
       .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
       .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
       .C_COUNT_WIDTH(C_COUNT_WIDTH))
   axi_stream_constant_generator
     (.data_out_tvalid(data_out_tvalid),
      .data_out_tdata(data_out_tdata),
      .data_out_tready(data_out_tready),
      .s_axi_awaddr(s_axi_awaddr),
      .s_axi_awvalid(s_axi_awvalid),
      .s_axi_awready(s_axi_awready),
      .s_axi_wdata(s_axi_wdata),
      .s_axi_wvalid(s_axi_wvalid),
      .s_axi_wstrb(s_axi_wstrb),
      .s_axi_wready(s_axi_wready),
      .s_axi_bresp(s_axi_bresp),
      .s_axi_bvalid(s_axi_bvalid),
      .s_axi_bready(s_axi_bready),
      .s_axi_araddr(s_axi_araddr),
      .s_axi_arvalid(s_axi_arvalid),
      .s_axi_arready(s_axi_arready),
      .s_axi_rdata(s_axi_rdata),
      .s_axi_rresp(s_axi_rresp),
      .s_axi_rvalid(s_axi_rvalid),
      .s_axi_rready(s_axi_rready),
      .aclk(aclk),
      .resetn(resetn));
endmodule // axi_stream_constant_generator_wrapper
