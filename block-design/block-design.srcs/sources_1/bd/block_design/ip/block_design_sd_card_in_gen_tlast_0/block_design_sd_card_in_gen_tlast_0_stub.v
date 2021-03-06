// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:21:46 2020
// Host        : e8bdd687b03d running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_card_in_gen_tlast_0/block_design_sd_card_in_gen_tlast_0_stub.v
// Design      : block_design_sd_card_in_gen_tlast_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gen_tlast,Vivado 2019.2" *)
module block_design_sd_card_in_gen_tlast_0(m_axis_tdata, m_axis_tlast, m_axis_tvalid, 
  m_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tvalid, s_axis_tready, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="m_axis_tdata[7:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,s_axis_tdata[7:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,aclk,aresetn" */;
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  input [7:0]s_axis_tdata;
  input s_axis_tlast;
  input s_axis_tvalid;
  output s_axis_tready;
  input aclk;
  input aresetn;
endmodule
