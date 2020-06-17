// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:12:17 2020
// Host        : 267b3cf447fb running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_const_gen_0/block_design_const_gen_0_stub.v
// Design      : block_design_const_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_stream_constant_generator_wrapper,Vivado 2019.2" *)
module block_design_const_gen_0(data_out_tvalid, data_out_tdata, 
  data_out_tready, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wvalid, 
  s_axi_wstrb, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, aclk, 
  resetn)
/* synthesis syn_black_box black_box_pad_pin="data_out_tvalid,data_out_tdata[7:0],data_out_tready,s_axi_awaddr[4:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wstrb[3:0],s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[4:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,aclk,resetn" */;
  output data_out_tvalid;
  output [7:0]data_out_tdata;
  input data_out_tready;
  input [4:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [4:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input aclk;
  input resetn;
endmodule
