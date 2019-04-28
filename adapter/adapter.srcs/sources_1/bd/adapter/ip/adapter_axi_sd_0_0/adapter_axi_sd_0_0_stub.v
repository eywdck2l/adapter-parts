// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Apr 28 13:53:45 2019
// Host        : db17480ec9ff running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/user/adapter/adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/adapter_axi_sd_0_0_stub.v
// Design      : adapter_axi_sd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_sd_v1_0_S_AXI,Vivado 2018.3" *)
module adapter_axi_sd_0_0(sd_clk, sd_cmd, sd_dat, sd_dat3_pullup, 
  interrupt, S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, 
  S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, 
  S_AXI_RVALID, S_AXI_RREADY, S_AXI_ACLK, S_AXI_ARESETN)
/* synthesis syn_black_box black_box_pad_pin="sd_clk,sd_cmd,sd_dat[3:0],sd_dat3_pullup,interrupt,S_AXI_AWADDR[4:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[4:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,S_AXI_ACLK,S_AXI_ARESETN" */;
  input sd_clk;
  inout sd_cmd;
  inout [3:0]sd_dat;
  output sd_dat3_pullup;
  output interrupt;
  input [4:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [4:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
endmodule
