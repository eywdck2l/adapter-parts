// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:26:18 2020
// Host        : e8bdd687b03d running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_encrypt_0/block_design_encrypt_0_stub.v
// Design      : block_design_encrypt_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_xts_aes,Vivado 2019.2" *)
module block_design_encrypt_0(awvalid, awready, awaddr, wvalid, wready, wdata, 
  wstrb, bvalid, bready, bresp, arvalid, arready, araddr, rvalid, rready, rdata, rresp, out_tdata, 
  out_tvalid, in_tdata, in_tvalid, in_tready, fifo_out_almostfull, fifo_out_resetn, clk, resetn)
/* synthesis syn_black_box black_box_pad_pin="awvalid,awready,awaddr[9:0],wvalid,wready,wdata[31:0],wstrb[3:0],bvalid,bready,bresp[1:0],arvalid,arready,araddr[9:0],rvalid,rready,rdata[31:0],rresp[1:0],out_tdata[127:0],out_tvalid,in_tdata[127:0],in_tvalid,in_tready,fifo_out_almostfull,fifo_out_resetn,clk,resetn" */;
  input awvalid;
  output awready;
  input [9:0]awaddr;
  input wvalid;
  output wready;
  input [31:0]wdata;
  input [3:0]wstrb;
  output bvalid;
  input bready;
  output [1:0]bresp;
  input arvalid;
  output arready;
  input [9:0]araddr;
  output rvalid;
  input rready;
  output [31:0]rdata;
  output [1:0]rresp;
  output [127:0]out_tdata;
  output out_tvalid;
  input [127:0]in_tdata;
  input in_tvalid;
  output in_tready;
  input fifo_out_almostfull;
  output fifo_out_resetn;
  input clk;
  input resetn;
endmodule
