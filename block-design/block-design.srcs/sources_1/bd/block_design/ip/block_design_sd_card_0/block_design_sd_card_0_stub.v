// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat Jun  6 05:11:43 2020
// Host        : ff48e243dfe3 running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_card_0/block_design_sd_card_0_stub.v
// Design      : block_design_sd_card_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_sd_card,Vivado 2019.2" *)
module block_design_sd_card_0(sd_clk, sd_cmd, sd_dat, sd_dat3_pullup, 
  out_tdata, out_tlast, out_tvalid, out_tready, fifo_out_resetn, fifo_out_almostfull, 
  fifo_out_tready_masked, fifo_out_tvalid_masked, fifo_out_tready_in, fifo_out_tvalid_in, 
  in_tdata, in_tlast, in_tvalid, in_tready, fifo_in_resetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, interrupt, clk, resetn)
/* synthesis syn_black_box black_box_pad_pin="sd_clk,sd_cmd,sd_dat[3:0],sd_dat3_pullup,out_tdata[7:0],out_tlast,out_tvalid,out_tready,fifo_out_resetn,fifo_out_almostfull,fifo_out_tready_masked,fifo_out_tvalid_masked,fifo_out_tready_in,fifo_out_tvalid_in,in_tdata[7:0],in_tlast,in_tvalid,in_tready,fifo_in_resetn,s_axi_awaddr[6:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,interrupt,clk,resetn" */;
  input sd_clk;
  inout sd_cmd;
  inout [3:0]sd_dat;
  output sd_dat3_pullup;
  output [7:0]out_tdata;
  output out_tlast;
  output out_tvalid;
  input out_tready;
  output fifo_out_resetn;
  input fifo_out_almostfull;
  output fifo_out_tready_masked;
  output fifo_out_tvalid_masked;
  input fifo_out_tready_in;
  input fifo_out_tvalid_in;
  input [7:0]in_tdata;
  input in_tlast;
  input in_tvalid;
  output in_tready;
  output fifo_in_resetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output interrupt;
  input clk;
  input resetn;
endmodule
