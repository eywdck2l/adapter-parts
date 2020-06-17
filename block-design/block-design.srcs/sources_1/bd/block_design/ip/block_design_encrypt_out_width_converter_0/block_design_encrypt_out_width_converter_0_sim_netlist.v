// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:16:46 2020
// Host        : e8bdd687b03d running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_encrypt_out_width_converter_0/block_design_encrypt_out_width_converter_0_sim_netlist.v
// Design      : block_design_encrypt_out_width_converter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_encrypt_out_width_converter_0,axis_dwidth_converter_v1_1_19_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dwidth_converter_v1_1_19_axis_dwidth_converter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module block_design_encrypt_out_width_converter_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_M_AXIS_TDATA_WIDTH = "8" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_TDATA_WIDTH = "128" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
  (* P_D1_REG_CONFIG = "0" *) 
  (* P_D1_TUSER_WIDTH = "16" *) 
  (* P_D2_TDATA_WIDTH = "128" *) 
  (* P_D2_TUSER_WIDTH = "16" *) 
  (* P_D3_REG_CONFIG = "0" *) 
  (* P_D3_TUSER_WIDTH = "1" *) 
  (* P_M_RATIO = "16" *) 
  (* P_SS_TKEEP_REQUIRED = "0" *) 
  (* P_S_RATIO = "1" *) 
  block_design_encrypt_out_width_converter_0_axis_dwidth_converter_v1_1_19_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b1),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "spartan7" *) (* C_M_AXIS_TDATA_WIDTH = "8" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_TDATA_WIDTH = "128" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_19_axis_dwidth_converter" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
(* P_D1_REG_CONFIG = "0" *) (* P_D1_TUSER_WIDTH = "16" *) (* P_D2_TDATA_WIDTH = "128" *) 
(* P_D2_TUSER_WIDTH = "16" *) (* P_D3_REG_CONFIG = "0" *) (* P_D3_TUSER_WIDTH = "1" *) 
(* P_M_RATIO = "16" *) (* P_SS_TKEEP_REQUIRED = "0" *) (* P_S_RATIO = "1" *) 
module block_design_encrypt_out_width_converter_0_axis_dwidth_converter_v1_1_19_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire areset_r_i_1_n_0;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(areset_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_i_1_n_0),
        .Q(areset_r),
        .R(1'b0));
  block_design_encrypt_out_width_converter_0_axis_dwidth_converter_v1_1_19_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0]_0 (s_axis_tready),
        .\state_reg[1]_0 (m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_19_axisc_downsizer" *) 
module block_design_encrypt_out_width_converter_0_axis_dwidth_converter_v1_1_19_axisc_downsizer
   (\state_reg[1]_0 ,
    \state_reg[0]_0 ,
    m_axis_tdata,
    aclk,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    s_axis_tdata);
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output [7:0]m_axis_tdata;
  input aclk;
  input m_axis_tready;
  input aclken;
  input areset_r;
  input s_axis_tvalid;
  input [127:0]s_axis_tdata;

  wire aclk;
  wire aclken;
  wire areset_r;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_6_n_0 ;
  wire m_axis_tready;
  wire [7:0]p_0_in;
  wire [127:0]p_0_in1_in;
  wire [3:0]p_0_in__0;
  wire r0_data;
  wire \r0_data_reg_n_0_[120] ;
  wire \r0_data_reg_n_0_[121] ;
  wire \r0_data_reg_n_0_[122] ;
  wire \r0_data_reg_n_0_[123] ;
  wire \r0_data_reg_n_0_[124] ;
  wire \r0_data_reg_n_0_[125] ;
  wire \r0_data_reg_n_0_[126] ;
  wire \r0_data_reg_n_0_[127] ;
  wire r0_out_sel_next_r;
  wire [3:0]r0_out_sel_next_r_reg;
  wire r0_out_sel_r0;
  wire r0_out_sel_r1;
  wire \r0_out_sel_r[3]_i_1_n_0 ;
  wire \r0_out_sel_r[3]_i_2_n_0 ;
  wire \r0_out_sel_r_reg_n_0_[0] ;
  wire \r0_out_sel_r_reg_n_0_[1] ;
  wire \r0_out_sel_r_reg_n_0_[2] ;
  wire \r0_out_sel_r_reg_n_0_[3] ;
  wire r1_data;
  wire \r1_data[0]_i_4_n_0 ;
  wire \r1_data[0]_i_5_n_0 ;
  wire \r1_data[0]_i_6_n_0 ;
  wire \r1_data[0]_i_7_n_0 ;
  wire \r1_data[1]_i_4_n_0 ;
  wire \r1_data[1]_i_5_n_0 ;
  wire \r1_data[1]_i_6_n_0 ;
  wire \r1_data[1]_i_7_n_0 ;
  wire \r1_data[2]_i_4_n_0 ;
  wire \r1_data[2]_i_5_n_0 ;
  wire \r1_data[2]_i_6_n_0 ;
  wire \r1_data[2]_i_7_n_0 ;
  wire \r1_data[3]_i_4_n_0 ;
  wire \r1_data[3]_i_5_n_0 ;
  wire \r1_data[3]_i_6_n_0 ;
  wire \r1_data[3]_i_7_n_0 ;
  wire \r1_data[4]_i_4_n_0 ;
  wire \r1_data[4]_i_5_n_0 ;
  wire \r1_data[4]_i_6_n_0 ;
  wire \r1_data[4]_i_7_n_0 ;
  wire \r1_data[5]_i_4_n_0 ;
  wire \r1_data[5]_i_5_n_0 ;
  wire \r1_data[5]_i_6_n_0 ;
  wire \r1_data[5]_i_7_n_0 ;
  wire \r1_data[6]_i_4_n_0 ;
  wire \r1_data[6]_i_5_n_0 ;
  wire \r1_data[6]_i_6_n_0 ;
  wire \r1_data[6]_i_7_n_0 ;
  wire \r1_data[7]_i_5_n_0 ;
  wire \r1_data[7]_i_6_n_0 ;
  wire \r1_data[7]_i_7_n_0 ;
  wire \r1_data[7]_i_8_n_0 ;
  wire \r1_data_reg[0]_i_2_n_0 ;
  wire \r1_data_reg[0]_i_3_n_0 ;
  wire \r1_data_reg[1]_i_2_n_0 ;
  wire \r1_data_reg[1]_i_3_n_0 ;
  wire \r1_data_reg[2]_i_2_n_0 ;
  wire \r1_data_reg[2]_i_3_n_0 ;
  wire \r1_data_reg[3]_i_2_n_0 ;
  wire \r1_data_reg[3]_i_3_n_0 ;
  wire \r1_data_reg[4]_i_2_n_0 ;
  wire \r1_data_reg[4]_i_3_n_0 ;
  wire \r1_data_reg[5]_i_2_n_0 ;
  wire \r1_data_reg[5]_i_3_n_0 ;
  wire \r1_data_reg[6]_i_2_n_0 ;
  wire \r1_data_reg[6]_i_3_n_0 ;
  wire \r1_data_reg[7]_i_3_n_0 ;
  wire \r1_data_reg[7]_i_4_n_0 ;
  wire [127:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [0:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;

  MUXF8 \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata[0]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[0]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[0]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[0]_INST_0_i_1 
       (.I0(\m_axis_tdata[0]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[0]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[0]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[0]_INST_0_i_2 
       (.I0(\m_axis_tdata[0]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[0]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[0]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0_i_3 
       (.I0(p_0_in1_in[96]),
        .I1(p_0_in1_in[32]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[64]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[0]),
        .O(\m_axis_tdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0_i_4 
       (.I0(p_0_in1_in[112]),
        .I1(p_0_in1_in[48]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[80]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[16]),
        .O(\m_axis_tdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0_i_5 
       (.I0(p_0_in1_in[104]),
        .I1(p_0_in1_in[40]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[72]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[8]),
        .O(\m_axis_tdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0_i_6 
       (.I0(p_0_in1_in[120]),
        .I1(p_0_in1_in[56]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[88]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[24]),
        .O(\m_axis_tdata[0]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata[1]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[1]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[1]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[1]_INST_0_i_1 
       (.I0(\m_axis_tdata[1]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[1]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[1]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[1]_INST_0_i_2 
       (.I0(\m_axis_tdata[1]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[1]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[1]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0_i_3 
       (.I0(p_0_in1_in[97]),
        .I1(p_0_in1_in[33]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[65]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[1]),
        .O(\m_axis_tdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0_i_4 
       (.I0(p_0_in1_in[113]),
        .I1(p_0_in1_in[49]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[81]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[17]),
        .O(\m_axis_tdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0_i_5 
       (.I0(p_0_in1_in[105]),
        .I1(p_0_in1_in[41]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[73]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[9]),
        .O(\m_axis_tdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0_i_6 
       (.I0(p_0_in1_in[121]),
        .I1(p_0_in1_in[57]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[89]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[25]),
        .O(\m_axis_tdata[1]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata[2]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[2]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[2]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[2]_INST_0_i_1 
       (.I0(\m_axis_tdata[2]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[2]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[2]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[2]_INST_0_i_2 
       (.I0(\m_axis_tdata[2]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[2]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[2]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0_i_3 
       (.I0(p_0_in1_in[98]),
        .I1(p_0_in1_in[34]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[66]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[2]),
        .O(\m_axis_tdata[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0_i_4 
       (.I0(p_0_in1_in[114]),
        .I1(p_0_in1_in[50]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[82]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[18]),
        .O(\m_axis_tdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0_i_5 
       (.I0(p_0_in1_in[106]),
        .I1(p_0_in1_in[42]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[74]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[10]),
        .O(\m_axis_tdata[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0_i_6 
       (.I0(p_0_in1_in[122]),
        .I1(p_0_in1_in[58]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[90]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[26]),
        .O(\m_axis_tdata[2]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata[3]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[3]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[3]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[3]_INST_0_i_1 
       (.I0(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[3]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[3]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[3]_INST_0_i_2 
       (.I0(\m_axis_tdata[3]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[3]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[3]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0_i_3 
       (.I0(p_0_in1_in[99]),
        .I1(p_0_in1_in[35]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[67]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[3]),
        .O(\m_axis_tdata[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0_i_4 
       (.I0(p_0_in1_in[115]),
        .I1(p_0_in1_in[51]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[83]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[19]),
        .O(\m_axis_tdata[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0_i_5 
       (.I0(p_0_in1_in[107]),
        .I1(p_0_in1_in[43]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[75]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[11]),
        .O(\m_axis_tdata[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0_i_6 
       (.I0(p_0_in1_in[123]),
        .I1(p_0_in1_in[59]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[91]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[27]),
        .O(\m_axis_tdata[3]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[4]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[4]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[4]_INST_0_i_1 
       (.I0(\m_axis_tdata[4]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[4]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[4]_INST_0_i_2 
       (.I0(\m_axis_tdata[4]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[4]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[4]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0_i_3 
       (.I0(p_0_in1_in[100]),
        .I1(p_0_in1_in[36]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[68]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[4]),
        .O(\m_axis_tdata[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0_i_4 
       (.I0(p_0_in1_in[116]),
        .I1(p_0_in1_in[52]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[84]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[20]),
        .O(\m_axis_tdata[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0_i_5 
       (.I0(p_0_in1_in[108]),
        .I1(p_0_in1_in[44]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[76]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[12]),
        .O(\m_axis_tdata[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0_i_6 
       (.I0(p_0_in1_in[124]),
        .I1(p_0_in1_in[60]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[92]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[28]),
        .O(\m_axis_tdata[4]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata[5]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[5]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[5]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[5]_INST_0_i_1 
       (.I0(\m_axis_tdata[5]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[5]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[5]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[5]_INST_0_i_2 
       (.I0(\m_axis_tdata[5]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[5]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[5]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0_i_3 
       (.I0(p_0_in1_in[101]),
        .I1(p_0_in1_in[37]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[69]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[5]),
        .O(\m_axis_tdata[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0_i_4 
       (.I0(p_0_in1_in[117]),
        .I1(p_0_in1_in[53]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[85]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[21]),
        .O(\m_axis_tdata[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0_i_5 
       (.I0(p_0_in1_in[109]),
        .I1(p_0_in1_in[45]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[77]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[13]),
        .O(\m_axis_tdata[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0_i_6 
       (.I0(p_0_in1_in[125]),
        .I1(p_0_in1_in[61]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[93]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[29]),
        .O(\m_axis_tdata[5]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata[6]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[6]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[6]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[6]_INST_0_i_1 
       (.I0(\m_axis_tdata[6]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[6]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[6]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[6]_INST_0_i_2 
       (.I0(\m_axis_tdata[6]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[6]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[6]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0_i_3 
       (.I0(p_0_in1_in[102]),
        .I1(p_0_in1_in[38]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[70]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[6]),
        .O(\m_axis_tdata[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0_i_4 
       (.I0(p_0_in1_in[118]),
        .I1(p_0_in1_in[54]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[86]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[22]),
        .O(\m_axis_tdata[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0_i_5 
       (.I0(p_0_in1_in[110]),
        .I1(p_0_in1_in[46]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[78]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[14]),
        .O(\m_axis_tdata[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0_i_6 
       (.I0(p_0_in1_in[126]),
        .I1(p_0_in1_in[62]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[94]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[30]),
        .O(\m_axis_tdata[6]_INST_0_i_6_n_0 ));
  MUXF8 \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata[7]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .O(m_axis_tdata[7]),
        .S(\r0_out_sel_r_reg_n_0_[0] ));
  MUXF7 \m_axis_tdata[7]_INST_0_i_1 
       (.I0(\m_axis_tdata[7]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[7]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[7]_INST_0_i_1_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  MUXF7 \m_axis_tdata[7]_INST_0_i_2 
       (.I0(\m_axis_tdata[7]_INST_0_i_5_n_0 ),
        .I1(\m_axis_tdata[7]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .S(\r0_out_sel_r_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_3 
       (.I0(p_0_in1_in[103]),
        .I1(p_0_in1_in[39]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[71]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[7]),
        .O(\m_axis_tdata[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_4 
       (.I0(p_0_in1_in[119]),
        .I1(p_0_in1_in[55]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[87]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[23]),
        .O(\m_axis_tdata[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_5 
       (.I0(p_0_in1_in[111]),
        .I1(p_0_in1_in[47]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[79]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[15]),
        .O(\m_axis_tdata[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_6 
       (.I0(p_0_in1_in[127]),
        .I1(p_0_in1_in[63]),
        .I2(\r0_out_sel_r_reg_n_0_[2] ),
        .I3(p_0_in1_in[95]),
        .I4(\r0_out_sel_r_reg_n_0_[3] ),
        .I5(p_0_in1_in[31]),
        .O(\m_axis_tdata[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \r0_data[127]_i_1 
       (.I0(aclken),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .O(r0_data));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[0]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \r0_data_reg[100] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[100]),
        .Q(p_0_in1_in[100]),
        .R(1'b0));
  FDRE \r0_data_reg[101] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[101]),
        .Q(p_0_in1_in[101]),
        .R(1'b0));
  FDRE \r0_data_reg[102] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[102]),
        .Q(p_0_in1_in[102]),
        .R(1'b0));
  FDRE \r0_data_reg[103] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[103]),
        .Q(p_0_in1_in[103]),
        .R(1'b0));
  FDRE \r0_data_reg[104] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[104]),
        .Q(p_0_in1_in[104]),
        .R(1'b0));
  FDRE \r0_data_reg[105] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[105]),
        .Q(p_0_in1_in[105]),
        .R(1'b0));
  FDRE \r0_data_reg[106] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[106]),
        .Q(p_0_in1_in[106]),
        .R(1'b0));
  FDRE \r0_data_reg[107] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[107]),
        .Q(p_0_in1_in[107]),
        .R(1'b0));
  FDRE \r0_data_reg[108] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[108]),
        .Q(p_0_in1_in[108]),
        .R(1'b0));
  FDRE \r0_data_reg[109] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[109]),
        .Q(p_0_in1_in[109]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[10]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \r0_data_reg[110] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[110]),
        .Q(p_0_in1_in[110]),
        .R(1'b0));
  FDRE \r0_data_reg[111] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[111]),
        .Q(p_0_in1_in[111]),
        .R(1'b0));
  FDRE \r0_data_reg[112] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[112]),
        .Q(p_0_in1_in[112]),
        .R(1'b0));
  FDRE \r0_data_reg[113] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[113]),
        .Q(p_0_in1_in[113]),
        .R(1'b0));
  FDRE \r0_data_reg[114] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[114]),
        .Q(p_0_in1_in[114]),
        .R(1'b0));
  FDRE \r0_data_reg[115] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[115]),
        .Q(p_0_in1_in[115]),
        .R(1'b0));
  FDRE \r0_data_reg[116] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[116]),
        .Q(p_0_in1_in[116]),
        .R(1'b0));
  FDRE \r0_data_reg[117] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[117]),
        .Q(p_0_in1_in[117]),
        .R(1'b0));
  FDRE \r0_data_reg[118] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[118]),
        .Q(p_0_in1_in[118]),
        .R(1'b0));
  FDRE \r0_data_reg[119] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[119]),
        .Q(p_0_in1_in[119]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[11]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \r0_data_reg[120] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[120]),
        .Q(\r0_data_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \r0_data_reg[121] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[121]),
        .Q(\r0_data_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \r0_data_reg[122] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[122]),
        .Q(\r0_data_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \r0_data_reg[123] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[123]),
        .Q(\r0_data_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \r0_data_reg[124] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[124]),
        .Q(\r0_data_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \r0_data_reg[125] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[125]),
        .Q(\r0_data_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \r0_data_reg[126] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[126]),
        .Q(\r0_data_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \r0_data_reg[127] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[127]),
        .Q(\r0_data_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[12]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[13]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[14]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[15]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[16]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[17]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[18]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[19]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[1]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[20]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[21]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[22]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[23]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[24]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[25]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[26]),
        .Q(p_0_in1_in[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[27]),
        .Q(p_0_in1_in[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[28]),
        .Q(p_0_in1_in[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[29]),
        .Q(p_0_in1_in[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[2]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[30]),
        .Q(p_0_in1_in[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[31]),
        .Q(p_0_in1_in[31]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[32]),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[33]),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[34]),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[35]),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[36]),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[37]),
        .Q(p_0_in1_in[37]),
        .R(1'b0));
  FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[38]),
        .Q(p_0_in1_in[38]),
        .R(1'b0));
  FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[39]),
        .Q(p_0_in1_in[39]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[3]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[40]),
        .Q(p_0_in1_in[40]),
        .R(1'b0));
  FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[41]),
        .Q(p_0_in1_in[41]),
        .R(1'b0));
  FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[42]),
        .Q(p_0_in1_in[42]),
        .R(1'b0));
  FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[43]),
        .Q(p_0_in1_in[43]),
        .R(1'b0));
  FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[44]),
        .Q(p_0_in1_in[44]),
        .R(1'b0));
  FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[45]),
        .Q(p_0_in1_in[45]),
        .R(1'b0));
  FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[46]),
        .Q(p_0_in1_in[46]),
        .R(1'b0));
  FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[47]),
        .Q(p_0_in1_in[47]),
        .R(1'b0));
  FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[48]),
        .Q(p_0_in1_in[48]),
        .R(1'b0));
  FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[49]),
        .Q(p_0_in1_in[49]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[4]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[50]),
        .Q(p_0_in1_in[50]),
        .R(1'b0));
  FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[51]),
        .Q(p_0_in1_in[51]),
        .R(1'b0));
  FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[52]),
        .Q(p_0_in1_in[52]),
        .R(1'b0));
  FDRE \r0_data_reg[53] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[53]),
        .Q(p_0_in1_in[53]),
        .R(1'b0));
  FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[54]),
        .Q(p_0_in1_in[54]),
        .R(1'b0));
  FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[55]),
        .Q(p_0_in1_in[55]),
        .R(1'b0));
  FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[56]),
        .Q(p_0_in1_in[56]),
        .R(1'b0));
  FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[57]),
        .Q(p_0_in1_in[57]),
        .R(1'b0));
  FDRE \r0_data_reg[58] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[58]),
        .Q(p_0_in1_in[58]),
        .R(1'b0));
  FDRE \r0_data_reg[59] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[59]),
        .Q(p_0_in1_in[59]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[5]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \r0_data_reg[60] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[60]),
        .Q(p_0_in1_in[60]),
        .R(1'b0));
  FDRE \r0_data_reg[61] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[61]),
        .Q(p_0_in1_in[61]),
        .R(1'b0));
  FDRE \r0_data_reg[62] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[62]),
        .Q(p_0_in1_in[62]),
        .R(1'b0));
  FDRE \r0_data_reg[63] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[63]),
        .Q(p_0_in1_in[63]),
        .R(1'b0));
  FDRE \r0_data_reg[64] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[64]),
        .Q(p_0_in1_in[64]),
        .R(1'b0));
  FDRE \r0_data_reg[65] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[65]),
        .Q(p_0_in1_in[65]),
        .R(1'b0));
  FDRE \r0_data_reg[66] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[66]),
        .Q(p_0_in1_in[66]),
        .R(1'b0));
  FDRE \r0_data_reg[67] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[67]),
        .Q(p_0_in1_in[67]),
        .R(1'b0));
  FDRE \r0_data_reg[68] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[68]),
        .Q(p_0_in1_in[68]),
        .R(1'b0));
  FDRE \r0_data_reg[69] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[69]),
        .Q(p_0_in1_in[69]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[6]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \r0_data_reg[70] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[70]),
        .Q(p_0_in1_in[70]),
        .R(1'b0));
  FDRE \r0_data_reg[71] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[71]),
        .Q(p_0_in1_in[71]),
        .R(1'b0));
  FDRE \r0_data_reg[72] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[72]),
        .Q(p_0_in1_in[72]),
        .R(1'b0));
  FDRE \r0_data_reg[73] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[73]),
        .Q(p_0_in1_in[73]),
        .R(1'b0));
  FDRE \r0_data_reg[74] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[74]),
        .Q(p_0_in1_in[74]),
        .R(1'b0));
  FDRE \r0_data_reg[75] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[75]),
        .Q(p_0_in1_in[75]),
        .R(1'b0));
  FDRE \r0_data_reg[76] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[76]),
        .Q(p_0_in1_in[76]),
        .R(1'b0));
  FDRE \r0_data_reg[77] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[77]),
        .Q(p_0_in1_in[77]),
        .R(1'b0));
  FDRE \r0_data_reg[78] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[78]),
        .Q(p_0_in1_in[78]),
        .R(1'b0));
  FDRE \r0_data_reg[79] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[79]),
        .Q(p_0_in1_in[79]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[7]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \r0_data_reg[80] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[80]),
        .Q(p_0_in1_in[80]),
        .R(1'b0));
  FDRE \r0_data_reg[81] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[81]),
        .Q(p_0_in1_in[81]),
        .R(1'b0));
  FDRE \r0_data_reg[82] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[82]),
        .Q(p_0_in1_in[82]),
        .R(1'b0));
  FDRE \r0_data_reg[83] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[83]),
        .Q(p_0_in1_in[83]),
        .R(1'b0));
  FDRE \r0_data_reg[84] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[84]),
        .Q(p_0_in1_in[84]),
        .R(1'b0));
  FDRE \r0_data_reg[85] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[85]),
        .Q(p_0_in1_in[85]),
        .R(1'b0));
  FDRE \r0_data_reg[86] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[86]),
        .Q(p_0_in1_in[86]),
        .R(1'b0));
  FDRE \r0_data_reg[87] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[87]),
        .Q(p_0_in1_in[87]),
        .R(1'b0));
  FDRE \r0_data_reg[88] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[88]),
        .Q(p_0_in1_in[88]),
        .R(1'b0));
  FDRE \r0_data_reg[89] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[89]),
        .Q(p_0_in1_in[89]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[8]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \r0_data_reg[90] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[90]),
        .Q(p_0_in1_in[90]),
        .R(1'b0));
  FDRE \r0_data_reg[91] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[91]),
        .Q(p_0_in1_in[91]),
        .R(1'b0));
  FDRE \r0_data_reg[92] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[92]),
        .Q(p_0_in1_in[92]),
        .R(1'b0));
  FDRE \r0_data_reg[93] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[93]),
        .Q(p_0_in1_in[93]),
        .R(1'b0));
  FDRE \r0_data_reg[94] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[94]),
        .Q(p_0_in1_in[94]),
        .R(1'b0));
  FDRE \r0_data_reg[95] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[95]),
        .Q(p_0_in1_in[95]),
        .R(1'b0));
  FDRE \r0_data_reg[96] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[96]),
        .Q(p_0_in1_in[96]),
        .R(1'b0));
  FDRE \r0_data_reg[97] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[97]),
        .Q(p_0_in1_in[97]),
        .R(1'b0));
  FDRE \r0_data_reg[98] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[98]),
        .Q(p_0_in1_in[98]),
        .R(1'b0));
  FDRE \r0_data_reg[99] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[99]),
        .Q(p_0_in1_in[99]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_data),
        .D(s_axis_tdata[9]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r0_out_sel_next_r[0]_i_1 
       (.I0(r0_out_sel_next_r_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r0_out_sel_next_r[1]_i_1 
       (.I0(r0_out_sel_next_r_reg[0]),
        .I1(r0_out_sel_next_r_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r0_out_sel_next_r[2]_i_1 
       (.I0(r0_out_sel_next_r_reg[0]),
        .I1(r0_out_sel_next_r_reg[1]),
        .I2(r0_out_sel_next_r_reg[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \r0_out_sel_next_r[3]_i_1 
       (.I0(aclken),
        .I1(r0_out_sel_next_r_reg[3]),
        .I2(r0_out_sel_next_r_reg[1]),
        .I3(r0_out_sel_next_r_reg[0]),
        .I4(r0_out_sel_next_r_reg[2]),
        .I5(m_axis_tready),
        .O(r0_out_sel_next_r));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r0_out_sel_next_r[3]_i_2 
       (.I0(r0_out_sel_next_r_reg[1]),
        .I1(r0_out_sel_next_r_reg[0]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(r0_out_sel_next_r_reg[3]),
        .O(p_0_in__0[3]));
  FDSE #(
    .INIT(1'b1)) 
    \r0_out_sel_next_r_reg[0] 
       (.C(aclk),
        .CE(r0_out_sel_next_r),
        .D(p_0_in__0[0]),
        .Q(r0_out_sel_next_r_reg[0]),
        .S(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_next_r_reg[1] 
       (.C(aclk),
        .CE(r0_out_sel_next_r),
        .D(p_0_in__0[1]),
        .Q(r0_out_sel_next_r_reg[1]),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_next_r_reg[2] 
       (.C(aclk),
        .CE(r0_out_sel_next_r),
        .D(p_0_in__0[2]),
        .Q(r0_out_sel_next_r_reg[2]),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_next_r_reg[3] 
       (.C(aclk),
        .CE(r0_out_sel_next_r),
        .D(p_0_in__0[3]),
        .Q(r0_out_sel_next_r_reg[3]),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEAAAAAAAA)) 
    \r0_out_sel_r[3]_i_1 
       (.I0(areset_r),
        .I1(r0_out_sel_r1),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg[0]_0 ),
        .I5(aclken),
        .O(\r0_out_sel_r[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r0_out_sel_r[3]_i_2 
       (.I0(m_axis_tready),
        .I1(aclken),
        .O(\r0_out_sel_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r0_out_sel_r[3]_i_3 
       (.I0(\r0_out_sel_r_reg_n_0_[2] ),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\r0_out_sel_r_reg_n_0_[1] ),
        .I3(\r0_out_sel_r_reg_n_0_[3] ),
        .I4(m_axis_tready),
        .O(r0_out_sel_r1));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(\r0_out_sel_r[3]_i_2_n_0 ),
        .D(r0_out_sel_next_r_reg[0]),
        .Q(\r0_out_sel_r_reg_n_0_[0] ),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[1] 
       (.C(aclk),
        .CE(\r0_out_sel_r[3]_i_2_n_0 ),
        .D(r0_out_sel_next_r_reg[1]),
        .Q(\r0_out_sel_r_reg_n_0_[1] ),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[2] 
       (.C(aclk),
        .CE(\r0_out_sel_r[3]_i_2_n_0 ),
        .D(r0_out_sel_next_r_reg[2]),
        .Q(\r0_out_sel_r_reg_n_0_[2] ),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[3] 
       (.C(aclk),
        .CE(\r0_out_sel_r[3]_i_2_n_0 ),
        .D(r0_out_sel_next_r_reg[3]),
        .Q(\r0_out_sel_r_reg_n_0_[3] ),
        .R(\r0_out_sel_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_4 
       (.I0(p_0_in1_in[96]),
        .I1(p_0_in1_in[32]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[64]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[0]),
        .O(\r1_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_5 
       (.I0(p_0_in1_in[112]),
        .I1(p_0_in1_in[48]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[80]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[16]),
        .O(\r1_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_6 
       (.I0(p_0_in1_in[104]),
        .I1(p_0_in1_in[40]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[72]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[8]),
        .O(\r1_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_7 
       (.I0(\r0_data_reg_n_0_[120] ),
        .I1(p_0_in1_in[56]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[88]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[24]),
        .O(\r1_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_4 
       (.I0(p_0_in1_in[97]),
        .I1(p_0_in1_in[33]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[65]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[1]),
        .O(\r1_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_5 
       (.I0(p_0_in1_in[113]),
        .I1(p_0_in1_in[49]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[81]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[17]),
        .O(\r1_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_6 
       (.I0(p_0_in1_in[105]),
        .I1(p_0_in1_in[41]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[73]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[9]),
        .O(\r1_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_7 
       (.I0(\r0_data_reg_n_0_[121] ),
        .I1(p_0_in1_in[57]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[89]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[25]),
        .O(\r1_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_4 
       (.I0(p_0_in1_in[98]),
        .I1(p_0_in1_in[34]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[66]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[2]),
        .O(\r1_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_5 
       (.I0(p_0_in1_in[114]),
        .I1(p_0_in1_in[50]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[82]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[18]),
        .O(\r1_data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_6 
       (.I0(p_0_in1_in[106]),
        .I1(p_0_in1_in[42]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[74]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[10]),
        .O(\r1_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_7 
       (.I0(\r0_data_reg_n_0_[122] ),
        .I1(p_0_in1_in[58]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[90]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[26]),
        .O(\r1_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_4 
       (.I0(p_0_in1_in[99]),
        .I1(p_0_in1_in[35]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[67]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[3]),
        .O(\r1_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_5 
       (.I0(p_0_in1_in[115]),
        .I1(p_0_in1_in[51]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[83]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[19]),
        .O(\r1_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_6 
       (.I0(p_0_in1_in[107]),
        .I1(p_0_in1_in[43]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[75]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[11]),
        .O(\r1_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_7 
       (.I0(\r0_data_reg_n_0_[123] ),
        .I1(p_0_in1_in[59]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[91]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[27]),
        .O(\r1_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_4 
       (.I0(p_0_in1_in[100]),
        .I1(p_0_in1_in[36]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[68]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[4]),
        .O(\r1_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_5 
       (.I0(p_0_in1_in[116]),
        .I1(p_0_in1_in[52]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[84]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[20]),
        .O(\r1_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_6 
       (.I0(p_0_in1_in[108]),
        .I1(p_0_in1_in[44]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[76]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[12]),
        .O(\r1_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_7 
       (.I0(\r0_data_reg_n_0_[124] ),
        .I1(p_0_in1_in[60]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[92]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[28]),
        .O(\r1_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_4 
       (.I0(p_0_in1_in[101]),
        .I1(p_0_in1_in[37]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[69]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[5]),
        .O(\r1_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_5 
       (.I0(p_0_in1_in[117]),
        .I1(p_0_in1_in[53]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[85]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[21]),
        .O(\r1_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_6 
       (.I0(p_0_in1_in[109]),
        .I1(p_0_in1_in[45]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[77]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[13]),
        .O(\r1_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_7 
       (.I0(\r0_data_reg_n_0_[125] ),
        .I1(p_0_in1_in[61]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[93]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[29]),
        .O(\r1_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_4 
       (.I0(p_0_in1_in[102]),
        .I1(p_0_in1_in[38]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[70]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[6]),
        .O(\r1_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_5 
       (.I0(p_0_in1_in[118]),
        .I1(p_0_in1_in[54]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[86]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[22]),
        .O(\r1_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_6 
       (.I0(p_0_in1_in[110]),
        .I1(p_0_in1_in[46]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[78]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[14]),
        .O(\r1_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_7 
       (.I0(\r0_data_reg_n_0_[126] ),
        .I1(p_0_in1_in[62]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[94]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[30]),
        .O(\r1_data[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \r1_data[7]_i_1 
       (.I0(aclken),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .O(r1_data));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_5 
       (.I0(p_0_in1_in[103]),
        .I1(p_0_in1_in[39]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[71]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[7]),
        .O(\r1_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_6 
       (.I0(p_0_in1_in[119]),
        .I1(p_0_in1_in[55]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[87]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[23]),
        .O(\r1_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_7 
       (.I0(p_0_in1_in[111]),
        .I1(p_0_in1_in[47]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[79]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[15]),
        .O(\r1_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_8 
       (.I0(\r0_data_reg_n_0_[127] ),
        .I1(p_0_in1_in[63]),
        .I2(r0_out_sel_next_r_reg[2]),
        .I3(p_0_in1_in[95]),
        .I4(r0_out_sel_next_r_reg[3]),
        .I5(p_0_in1_in[31]),
        .O(\r1_data[7]_i_8_n_0 ));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[0]),
        .Q(p_0_in1_in[120]),
        .R(1'b0));
  MUXF8 \r1_data_reg[0]_i_1 
       (.I0(\r1_data_reg[0]_i_2_n_0 ),
        .I1(\r1_data_reg[0]_i_3_n_0 ),
        .O(p_0_in[0]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[0]_i_2 
       (.I0(\r1_data[0]_i_4_n_0 ),
        .I1(\r1_data[0]_i_5_n_0 ),
        .O(\r1_data_reg[0]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[0]_i_3 
       (.I0(\r1_data[0]_i_6_n_0 ),
        .I1(\r1_data[0]_i_7_n_0 ),
        .O(\r1_data_reg[0]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[1]),
        .Q(p_0_in1_in[121]),
        .R(1'b0));
  MUXF8 \r1_data_reg[1]_i_1 
       (.I0(\r1_data_reg[1]_i_2_n_0 ),
        .I1(\r1_data_reg[1]_i_3_n_0 ),
        .O(p_0_in[1]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[1]_i_2 
       (.I0(\r1_data[1]_i_4_n_0 ),
        .I1(\r1_data[1]_i_5_n_0 ),
        .O(\r1_data_reg[1]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[1]_i_3 
       (.I0(\r1_data[1]_i_6_n_0 ),
        .I1(\r1_data[1]_i_7_n_0 ),
        .O(\r1_data_reg[1]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[2]),
        .Q(p_0_in1_in[122]),
        .R(1'b0));
  MUXF8 \r1_data_reg[2]_i_1 
       (.I0(\r1_data_reg[2]_i_2_n_0 ),
        .I1(\r1_data_reg[2]_i_3_n_0 ),
        .O(p_0_in[2]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[2]_i_2 
       (.I0(\r1_data[2]_i_4_n_0 ),
        .I1(\r1_data[2]_i_5_n_0 ),
        .O(\r1_data_reg[2]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[2]_i_3 
       (.I0(\r1_data[2]_i_6_n_0 ),
        .I1(\r1_data[2]_i_7_n_0 ),
        .O(\r1_data_reg[2]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[3]),
        .Q(p_0_in1_in[123]),
        .R(1'b0));
  MUXF8 \r1_data_reg[3]_i_1 
       (.I0(\r1_data_reg[3]_i_2_n_0 ),
        .I1(\r1_data_reg[3]_i_3_n_0 ),
        .O(p_0_in[3]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[3]_i_2 
       (.I0(\r1_data[3]_i_4_n_0 ),
        .I1(\r1_data[3]_i_5_n_0 ),
        .O(\r1_data_reg[3]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[3]_i_3 
       (.I0(\r1_data[3]_i_6_n_0 ),
        .I1(\r1_data[3]_i_7_n_0 ),
        .O(\r1_data_reg[3]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[4]),
        .Q(p_0_in1_in[124]),
        .R(1'b0));
  MUXF8 \r1_data_reg[4]_i_1 
       (.I0(\r1_data_reg[4]_i_2_n_0 ),
        .I1(\r1_data_reg[4]_i_3_n_0 ),
        .O(p_0_in[4]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[4]_i_2 
       (.I0(\r1_data[4]_i_4_n_0 ),
        .I1(\r1_data[4]_i_5_n_0 ),
        .O(\r1_data_reg[4]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[4]_i_3 
       (.I0(\r1_data[4]_i_6_n_0 ),
        .I1(\r1_data[4]_i_7_n_0 ),
        .O(\r1_data_reg[4]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[5]),
        .Q(p_0_in1_in[125]),
        .R(1'b0));
  MUXF8 \r1_data_reg[5]_i_1 
       (.I0(\r1_data_reg[5]_i_2_n_0 ),
        .I1(\r1_data_reg[5]_i_3_n_0 ),
        .O(p_0_in[5]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[5]_i_2 
       (.I0(\r1_data[5]_i_4_n_0 ),
        .I1(\r1_data[5]_i_5_n_0 ),
        .O(\r1_data_reg[5]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[5]_i_3 
       (.I0(\r1_data[5]_i_6_n_0 ),
        .I1(\r1_data[5]_i_7_n_0 ),
        .O(\r1_data_reg[5]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[6]),
        .Q(p_0_in1_in[126]),
        .R(1'b0));
  MUXF8 \r1_data_reg[6]_i_1 
       (.I0(\r1_data_reg[6]_i_2_n_0 ),
        .I1(\r1_data_reg[6]_i_3_n_0 ),
        .O(p_0_in[6]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[6]_i_2 
       (.I0(\r1_data[6]_i_4_n_0 ),
        .I1(\r1_data[6]_i_5_n_0 ),
        .O(\r1_data_reg[6]_i_2_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[6]_i_3 
       (.I0(\r1_data[6]_i_6_n_0 ),
        .I1(\r1_data[6]_i_7_n_0 ),
        .O(\r1_data_reg[6]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(r1_data),
        .D(p_0_in[7]),
        .Q(p_0_in1_in[127]),
        .R(1'b0));
  MUXF8 \r1_data_reg[7]_i_2 
       (.I0(\r1_data_reg[7]_i_3_n_0 ),
        .I1(\r1_data_reg[7]_i_4_n_0 ),
        .O(p_0_in[7]),
        .S(r0_out_sel_next_r_reg[0]));
  MUXF7 \r1_data_reg[7]_i_3 
       (.I0(\r1_data[7]_i_5_n_0 ),
        .I1(\r1_data[7]_i_6_n_0 ),
        .O(\r1_data_reg[7]_i_3_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  MUXF7 \r1_data_reg[7]_i_4 
       (.I0(\r1_data[7]_i_7_n_0 ),
        .I1(\r1_data[7]_i_8_n_0 ),
        .O(\r1_data_reg[7]_i_4_n_0 ),
        .S(r0_out_sel_next_r_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \state[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(aclken),
        .I2(state),
        .I3(areset_r),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF550FCF)) 
    \state[0]_i_2 
       (.I0(s_axis_tvalid),
        .I1(r0_out_sel_r0),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg[0]_0 ),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \state[0]_i_3 
       (.I0(m_axis_tready),
        .I1(r0_out_sel_next_r_reg[2]),
        .I2(r0_out_sel_next_r_reg[0]),
        .I3(r0_out_sel_next_r_reg[1]),
        .I4(r0_out_sel_next_r_reg[3]),
        .O(r0_out_sel_r0));
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(areset_r),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BFFFFFF0A000000)) 
    \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg[0]_0 ),
        .I4(aclken),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(areset_r),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000CFFFF00800000)) 
    \state[2]_i_2 
       (.I0(s_axis_tvalid),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(m_axis_tready),
        .I4(aclken),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
