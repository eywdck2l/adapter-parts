// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:12:17 2020
// Host        : 267b3cf447fb running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_const_gen_0/block_design_const_gen_0_sim_netlist.v
// Design      : block_design_const_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_const_gen_0,axi_stream_constant_generator_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_stream_constant_generator_wrapper,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module block_design_const_gen_0
   (data_out_tvalid,
    data_out_tdata,
    data_out_tready,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    aclk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TVALID" *) output data_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TDATA" *) output [7:0]data_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [4:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [4:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF data_out:s_axi, ASSOCIATED_RESET resetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;

  wire \<const0> ;
  wire aclk;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire resetn;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  block_design_const_gen_0_axi_stream_constant_generator_wrapper inst
       (.aclk(aclk),
        .bvalid_reg(s_axi_bvalid),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tvalid(data_out_tvalid),
        .resetn(resetn),
        .rvalid_reg(s_axi_rvalid),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_stream_constant_generator" *) 
module block_design_const_gen_0_axi_stream_constant_generator
   (bvalid_reg,
    s_axi_awready,
    s_axi_wready,
    data_out_tdata,
    s_axi_arready,
    data_out_tvalid,
    s_axi_rdata,
    rvalid_reg,
    resetn,
    aclk,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wvalid,
    data_out_tready,
    s_axi_arvalid,
    s_axi_rready);
  output bvalid_reg;
  output s_axi_awready;
  output s_axi_wready;
  output [7:0]data_out_tdata;
  output s_axi_arready;
  output data_out_tvalid;
  output [31:0]s_axi_rdata;
  output rvalid_reg;
  input resetn;
  input aclk;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [2:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_araddr;
  input s_axi_wvalid;
  input data_out_tready;
  input s_axi_arvalid;
  input s_axi_rready;

  wire aclk;
  wire bvalid_reg;
  wire \control_intf/_n_0 ;
  wire control_intf_n_10;
  wire control_intf_n_100;
  wire control_intf_n_11;
  wire control_intf_n_12;
  wire control_intf_n_13;
  wire control_intf_n_14;
  wire control_intf_n_15;
  wire control_intf_n_16;
  wire control_intf_n_17;
  wire control_intf_n_18;
  wire control_intf_n_19;
  wire control_intf_n_20;
  wire control_intf_n_21;
  wire control_intf_n_22;
  wire control_intf_n_23;
  wire control_intf_n_24;
  wire control_intf_n_25;
  wire control_intf_n_26;
  wire control_intf_n_27;
  wire control_intf_n_28;
  wire control_intf_n_29;
  wire control_intf_n_30;
  wire control_intf_n_31;
  wire control_intf_n_32;
  wire control_intf_n_33;
  wire control_intf_n_34;
  wire control_intf_n_35;
  wire control_intf_n_36;
  wire control_intf_n_37;
  wire control_intf_n_38;
  wire control_intf_n_39;
  wire control_intf_n_40;
  wire control_intf_n_41;
  wire control_intf_n_42;
  wire control_intf_n_43;
  wire control_intf_n_44;
  wire control_intf_n_45;
  wire control_intf_n_46;
  wire control_intf_n_47;
  wire control_intf_n_48;
  wire control_intf_n_49;
  wire control_intf_n_50;
  wire control_intf_n_51;
  wire control_intf_n_6;
  wire control_intf_n_61;
  wire control_intf_n_62;
  wire control_intf_n_63;
  wire control_intf_n_64;
  wire control_intf_n_65;
  wire control_intf_n_66;
  wire control_intf_n_67;
  wire control_intf_n_68;
  wire control_intf_n_69;
  wire control_intf_n_7;
  wire control_intf_n_70;
  wire control_intf_n_71;
  wire control_intf_n_72;
  wire control_intf_n_73;
  wire control_intf_n_74;
  wire control_intf_n_75;
  wire control_intf_n_76;
  wire control_intf_n_77;
  wire control_intf_n_78;
  wire control_intf_n_79;
  wire control_intf_n_8;
  wire control_intf_n_80;
  wire control_intf_n_81;
  wire control_intf_n_82;
  wire control_intf_n_83;
  wire control_intf_n_84;
  wire control_intf_n_85;
  wire control_intf_n_86;
  wire control_intf_n_87;
  wire control_intf_n_88;
  wire control_intf_n_89;
  wire control_intf_n_9;
  wire control_intf_n_90;
  wire control_intf_n_91;
  wire control_intf_n_92;
  wire control_intf_n_93;
  wire control_intf_n_94;
  wire control_intf_n_95;
  wire control_intf_n_96;
  wire control_intf_n_97;
  wire control_intf_n_98;
  wire control_intf_n_99;
  wire count_resetn;
  wire \count_transferred_reg_n_0_[0] ;
  wire \count_transferred_reg_n_0_[1] ;
  wire \count_transferred_reg_n_0_[2] ;
  wire \count_transferred_reg_n_0_[32] ;
  wire \count_transferred_reg_n_0_[33] ;
  wire \count_transferred_reg_n_0_[34] ;
  wire \count_transferred_reg_n_0_[35] ;
  wire \count_transferred_reg_n_0_[36] ;
  wire \count_transferred_reg_n_0_[37] ;
  wire \count_transferred_reg_n_0_[38] ;
  wire \count_transferred_reg_n_0_[39] ;
  wire \count_transferred_reg_n_0_[3] ;
  wire \count_transferred_reg_n_0_[40] ;
  wire \count_transferred_reg_n_0_[4] ;
  wire \count_transferred_reg_n_0_[5] ;
  wire \count_transferred_reg_n_0_[6] ;
  wire \count_transferred_reg_n_0_[7] ;
  wire [7:0]data17;
  wire [7:0]data18;
  wire [7:0]data19;
  wire [7:0]data20;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire more;
  wire more0_carry__0_n_0;
  wire more0_carry__0_n_1;
  wire more0_carry__0_n_2;
  wire more0_carry__0_n_3;
  wire more0_carry__1_n_0;
  wire more0_carry__1_n_1;
  wire more0_carry__1_n_2;
  wire more0_carry__1_n_3;
  wire more0_carry__2_n_0;
  wire more0_carry__2_n_1;
  wire more0_carry__2_n_2;
  wire more0_carry__2_n_3;
  wire more0_carry__3_n_0;
  wire more0_carry__3_n_1;
  wire more0_carry__3_n_2;
  wire more0_carry__3_n_3;
  wire more0_carry__4_n_3;
  wire more0_carry_n_0;
  wire more0_carry_n_1;
  wire more0_carry_n_2;
  wire more0_carry_n_3;
  wire \onread_reg[16] ;
  wire p_1_in;
  wire reg_to_read0;
  wire resetn;
  wire rvalid_reg;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire transfer_started;
  wire [3:0]NLW_more0_carry_O_UNCONNECTED;
  wire [3:0]NLW_more0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_more0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_more0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_more0_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_more0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_more0_carry__4_O_UNCONNECTED;

  block_design_const_gen_0_block_design_axi4_lite_intf control_intf
       (.D({\count_transferred_reg_n_0_[40] ,\count_transferred_reg_n_0_[39] ,\count_transferred_reg_n_0_[38] ,\count_transferred_reg_n_0_[37] ,\count_transferred_reg_n_0_[36] ,\count_transferred_reg_n_0_[35] ,\count_transferred_reg_n_0_[34] ,\count_transferred_reg_n_0_[33] ,\count_transferred_reg_n_0_[32] }),
        .DI(control_intf_n_8),
        .E(\onread_reg[16] ),
        .O({control_intf_n_9,control_intf_n_10,control_intf_n_11,control_intf_n_12}),
        .Q({reg_to_read0,data20}),
        .S({\count_transferred_reg_n_0_[3] ,\count_transferred_reg_n_0_[2] ,\count_transferred_reg_n_0_[1] }),
        .SR(p_1_in),
        .aclk(aclk),
        .arready_reg_0(s_axi_arready),
        .awready_reg_0(s_axi_awready),
        .bvalid_reg_0(bvalid_reg),
        .count_resetn(count_resetn),
        .\count_transferred_reg[11] ({control_intf_n_17,control_intf_n_18,control_intf_n_19,control_intf_n_20}),
        .\count_transferred_reg[15] ({control_intf_n_21,control_intf_n_22,control_intf_n_23,control_intf_n_24}),
        .\count_transferred_reg[19] ({control_intf_n_25,control_intf_n_26,control_intf_n_27,control_intf_n_28}),
        .\count_transferred_reg[23] ({control_intf_n_29,control_intf_n_30,control_intf_n_31,control_intf_n_32}),
        .\count_transferred_reg[27] ({control_intf_n_33,control_intf_n_34,control_intf_n_35,control_intf_n_36}),
        .\count_transferred_reg[31] ({control_intf_n_37,control_intf_n_38,control_intf_n_39,control_intf_n_40}),
        .\count_transferred_reg[35] ({control_intf_n_41,control_intf_n_42,control_intf_n_43,control_intf_n_44}),
        .\count_transferred_reg[39] ({control_intf_n_45,control_intf_n_46,control_intf_n_47,control_intf_n_48}),
        .\count_transferred_reg[3] (\count_transferred_reg_n_0_[0] ),
        .\count_transferred_reg[40] (control_intf_n_49),
        .\count_transferred_reg[7] ({control_intf_n_13,control_intf_n_14,control_intf_n_15,control_intf_n_16}),
        .\count_transferred_reg[7]_0 ({\count_transferred_reg_n_0_[7] ,\count_transferred_reg_n_0_[6] ,\count_transferred_reg_n_0_[5] ,\count_transferred_reg_n_0_[4] }),
        .data17(data17),
        .data18(data18),
        .data19(data19),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tvalid(data_out_tvalid),
        .more(more),
        .\raddr_saved_demux_reg[16]_0 (\control_intf/_n_0 ),
        .resetn(resetn),
        .resetn_0(control_intf_n_6),
        .rvalid_reg_0(rvalid_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .transfer_started(transfer_started),
        .\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 ({control_intf_n_61,control_intf_n_62,control_intf_n_63,control_intf_n_64}),
        .\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 ({control_intf_n_65,control_intf_n_66,control_intf_n_67,control_intf_n_68}),
        .\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 ({control_intf_n_69,control_intf_n_70,control_intf_n_71,control_intf_n_72}),
        .\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 ({control_intf_n_73,control_intf_n_74,control_intf_n_75,control_intf_n_76}),
        .\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 ({control_intf_n_77,control_intf_n_78,control_intf_n_79,control_intf_n_80}),
        .\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 ({control_intf_n_81,control_intf_n_82,control_intf_n_83,control_intf_n_84}),
        .\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 ({control_intf_n_85,control_intf_n_86,control_intf_n_87,control_intf_n_88}),
        .\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 ({control_intf_n_89,control_intf_n_90,control_intf_n_91,control_intf_n_92}),
        .\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 ({control_intf_n_93,control_intf_n_94,control_intf_n_95,control_intf_n_96}),
        .\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 ({control_intf_n_97,control_intf_n_98,control_intf_n_99,control_intf_n_100}),
        .\write_reg[3].write_reg[1].reg_written_reg[13][0]_0 (control_intf_n_50),
        .\write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0 (control_intf_n_7),
        .\write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1 (control_intf_n_51));
  LUT3 #(
    .INIT(8'h04)) 
    \control_intf/ 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[1]),
        .O(\control_intf/_n_0 ));
  FDRE count_resetn_reg
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_7),
        .Q(count_resetn),
        .R(p_1_in));
  FDRE \count_transferred_read_reg[32] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[32] ),
        .Q(data20[0]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[33] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[33] ),
        .Q(data20[1]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[34] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[34] ),
        .Q(data20[2]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[35] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[35] ),
        .Q(data20[3]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[36] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[36] ),
        .Q(data20[4]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[37] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[37] ),
        .Q(data20[5]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[38] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[38] ),
        .Q(data20[6]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[39] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[39] ),
        .Q(data20[7]),
        .R(control_intf_n_6));
  FDRE \count_transferred_read_reg[40] 
       (.C(aclk),
        .CE(\onread_reg[16] ),
        .D(\count_transferred_reg_n_0_[40] ),
        .Q(reg_to_read0),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_12),
        .Q(\count_transferred_reg_n_0_[0] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_18),
        .Q(data17[2]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_17),
        .Q(data17[3]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_24),
        .Q(data17[4]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_23),
        .Q(data17[5]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_22),
        .Q(data17[6]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_21),
        .Q(data17[7]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_28),
        .Q(data18[0]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_27),
        .Q(data18[1]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_26),
        .Q(data18[2]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_25),
        .Q(data18[3]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_11),
        .Q(\count_transferred_reg_n_0_[1] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_32),
        .Q(data18[4]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_31),
        .Q(data18[5]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_30),
        .Q(data18[6]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_29),
        .Q(data18[7]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_36),
        .Q(data19[0]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_35),
        .Q(data19[1]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_34),
        .Q(data19[2]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_33),
        .Q(data19[3]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_40),
        .Q(data19[4]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_39),
        .Q(data19[5]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_10),
        .Q(\count_transferred_reg_n_0_[2] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_38),
        .Q(data19[6]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_37),
        .Q(data19[7]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_44),
        .Q(\count_transferred_reg_n_0_[32] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_43),
        .Q(\count_transferred_reg_n_0_[33] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_42),
        .Q(\count_transferred_reg_n_0_[34] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_41),
        .Q(\count_transferred_reg_n_0_[35] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_48),
        .Q(\count_transferred_reg_n_0_[36] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_47),
        .Q(\count_transferred_reg_n_0_[37] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_46),
        .Q(\count_transferred_reg_n_0_[38] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_45),
        .Q(\count_transferred_reg_n_0_[39] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_9),
        .Q(\count_transferred_reg_n_0_[3] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_49),
        .Q(\count_transferred_reg_n_0_[40] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_16),
        .Q(\count_transferred_reg_n_0_[4] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_15),
        .Q(\count_transferred_reg_n_0_[5] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_14),
        .Q(\count_transferred_reg_n_0_[6] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_13),
        .Q(\count_transferred_reg_n_0_[7] ),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_20),
        .Q(data17[0]),
        .R(control_intf_n_6));
  FDRE \count_transferred_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_19),
        .Q(data17[1]),
        .R(control_intf_n_6));
  CARRY4 more0_carry
       (.CI(1'b0),
        .CO({more0_carry_n_0,more0_carry_n_1,more0_carry_n_2,more0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({control_intf_n_65,control_intf_n_66,control_intf_n_67,control_intf_n_68}),
        .O(NLW_more0_carry_O_UNCONNECTED[3:0]),
        .S({control_intf_n_61,control_intf_n_62,control_intf_n_63,control_intf_n_64}));
  CARRY4 more0_carry__0
       (.CI(more0_carry_n_0),
        .CO({more0_carry__0_n_0,more0_carry__0_n_1,more0_carry__0_n_2,more0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({control_intf_n_73,control_intf_n_74,control_intf_n_75,control_intf_n_76}),
        .O(NLW_more0_carry__0_O_UNCONNECTED[3:0]),
        .S({control_intf_n_69,control_intf_n_70,control_intf_n_71,control_intf_n_72}));
  CARRY4 more0_carry__1
       (.CI(more0_carry__0_n_0),
        .CO({more0_carry__1_n_0,more0_carry__1_n_1,more0_carry__1_n_2,more0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({control_intf_n_81,control_intf_n_82,control_intf_n_83,control_intf_n_84}),
        .O(NLW_more0_carry__1_O_UNCONNECTED[3:0]),
        .S({control_intf_n_77,control_intf_n_78,control_intf_n_79,control_intf_n_80}));
  CARRY4 more0_carry__2
       (.CI(more0_carry__1_n_0),
        .CO({more0_carry__2_n_0,more0_carry__2_n_1,more0_carry__2_n_2,more0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({control_intf_n_89,control_intf_n_90,control_intf_n_91,control_intf_n_92}),
        .O(NLW_more0_carry__2_O_UNCONNECTED[3:0]),
        .S({control_intf_n_85,control_intf_n_86,control_intf_n_87,control_intf_n_88}));
  CARRY4 more0_carry__3
       (.CI(more0_carry__2_n_0),
        .CO({more0_carry__3_n_0,more0_carry__3_n_1,more0_carry__3_n_2,more0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({control_intf_n_97,control_intf_n_98,control_intf_n_99,control_intf_n_100}),
        .O(NLW_more0_carry__3_O_UNCONNECTED[3:0]),
        .S({control_intf_n_93,control_intf_n_94,control_intf_n_95,control_intf_n_96}));
  CARRY4 more0_carry__4
       (.CI(more0_carry__3_n_0),
        .CO({NLW_more0_carry__4_CO_UNCONNECTED[3:1],more0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,control_intf_n_8}),
        .O(NLW_more0_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,control_intf_n_50}));
  FDRE more_reg
       (.C(aclk),
        .CE(1'b1),
        .D(more0_carry__4_n_3),
        .Q(more),
        .R(p_1_in));
  FDRE transfer_started_reg
       (.C(aclk),
        .CE(1'b1),
        .D(control_intf_n_51),
        .Q(transfer_started),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_stream_constant_generator_wrapper" *) 
module block_design_const_gen_0_axi_stream_constant_generator_wrapper
   (bvalid_reg,
    s_axi_awready,
    s_axi_wready,
    data_out_tdata,
    s_axi_arready,
    data_out_tvalid,
    s_axi_rdata,
    rvalid_reg,
    resetn,
    aclk,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wvalid,
    data_out_tready,
    s_axi_arvalid,
    s_axi_rready);
  output bvalid_reg;
  output s_axi_awready;
  output s_axi_wready;
  output [7:0]data_out_tdata;
  output s_axi_arready;
  output data_out_tvalid;
  output [31:0]s_axi_rdata;
  output rvalid_reg;
  input resetn;
  input aclk;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [2:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_araddr;
  input s_axi_wvalid;
  input data_out_tready;
  input s_axi_arvalid;
  input s_axi_rready;

  wire aclk;
  wire bvalid_reg;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire resetn;
  wire rvalid_reg;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  block_design_const_gen_0_axi_stream_constant_generator axi_stream_constant_generator
       (.aclk(aclk),
        .bvalid_reg(bvalid_reg),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tvalid(data_out_tvalid),
        .resetn(resetn),
        .rvalid_reg(rvalid_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "block_design_axi4_lite_intf" *) 
module block_design_const_gen_0_block_design_axi4_lite_intf
   (SR,
    awready_reg_0,
    s_axi_wready,
    arready_reg_0,
    E,
    rvalid_reg_0,
    resetn_0,
    \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0 ,
    DI,
    O,
    \count_transferred_reg[7] ,
    \count_transferred_reg[11] ,
    \count_transferred_reg[15] ,
    \count_transferred_reg[19] ,
    \count_transferred_reg[23] ,
    \count_transferred_reg[27] ,
    \count_transferred_reg[31] ,
    \count_transferred_reg[35] ,
    \count_transferred_reg[39] ,
    \count_transferred_reg[40] ,
    \write_reg[3].write_reg[1].reg_written_reg[13][0]_0 ,
    \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1 ,
    bvalid_reg_0,
    data_out_tdata,
    \write_reg[2].write_reg[0].reg_written_reg[8][6]_0 ,
    \write_reg[2].write_reg[0].reg_written_reg[8][6]_1 ,
    \write_reg[2].write_reg[1].reg_written_reg[9][6]_0 ,
    \write_reg[2].write_reg[1].reg_written_reg[9][6]_1 ,
    \write_reg[2].write_reg[2].reg_written_reg[10][6]_0 ,
    \write_reg[2].write_reg[2].reg_written_reg[10][6]_1 ,
    \write_reg[2].write_reg[3].reg_written_reg[11][6]_0 ,
    \write_reg[2].write_reg[3].reg_written_reg[11][6]_1 ,
    \write_reg[3].write_reg[0].reg_written_reg[12][6]_0 ,
    \write_reg[3].write_reg[0].reg_written_reg[12][6]_1 ,
    data_out_tvalid,
    s_axi_rdata,
    aclk,
    \raddr_saved_demux_reg[16]_0 ,
    resetn,
    transfer_started,
    count_resetn,
    data_out_tready,
    more,
    \count_transferred_reg[3] ,
    S,
    \count_transferred_reg[7]_0 ,
    data17,
    data18,
    data19,
    D,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wvalid,
    Q);
  output [0:0]SR;
  output awready_reg_0;
  output s_axi_wready;
  output arready_reg_0;
  output [0:0]E;
  output rvalid_reg_0;
  output [0:0]resetn_0;
  output \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0 ;
  output [0:0]DI;
  output [3:0]O;
  output [3:0]\count_transferred_reg[7] ;
  output [3:0]\count_transferred_reg[11] ;
  output [3:0]\count_transferred_reg[15] ;
  output [3:0]\count_transferred_reg[19] ;
  output [3:0]\count_transferred_reg[23] ;
  output [3:0]\count_transferred_reg[27] ;
  output [3:0]\count_transferred_reg[31] ;
  output [3:0]\count_transferred_reg[35] ;
  output [3:0]\count_transferred_reg[39] ;
  output [0:0]\count_transferred_reg[40] ;
  output [0:0]\write_reg[3].write_reg[1].reg_written_reg[13][0]_0 ;
  output \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1 ;
  output bvalid_reg_0;
  output [7:0]data_out_tdata;
  output [3:0]\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 ;
  output [3:0]\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 ;
  output [3:0]\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 ;
  output [3:0]\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 ;
  output [3:0]\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 ;
  output [3:0]\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 ;
  output [3:0]\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 ;
  output [3:0]\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 ;
  output [3:0]\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 ;
  output [3:0]\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 ;
  output data_out_tvalid;
  output [31:0]s_axi_rdata;
  input aclk;
  input \raddr_saved_demux_reg[16]_0 ;
  input resetn;
  input transfer_started;
  input count_resetn;
  input data_out_tready;
  input more;
  input \count_transferred_reg[3] ;
  input [2:0]S;
  input [3:0]\count_transferred_reg[7]_0 ;
  input [7:0]data17;
  input [7:0]data18;
  input [7:0]data19;
  input [8:0]D;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [2:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_araddr;
  input s_axi_wvalid;
  input [8:0]Q;

  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [8:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire aclk;
  wire arready_i_1_n_0;
  wire arready_reg_0;
  wire awready_reg_0;
  wire bvalid_i_1_n_0;
  wire bvalid_reg_0;
  wire count_resetn;
  wire [40:0]count_target;
  wire \count_transferred[0]_i_2_n_0 ;
  wire [40:0]count_transferred_next;
  wire \count_transferred_reg[0]_i_1_n_0 ;
  wire \count_transferred_reg[0]_i_1_n_1 ;
  wire \count_transferred_reg[0]_i_1_n_2 ;
  wire \count_transferred_reg[0]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[11] ;
  wire \count_transferred_reg[12]_i_1_n_0 ;
  wire \count_transferred_reg[12]_i_1_n_1 ;
  wire \count_transferred_reg[12]_i_1_n_2 ;
  wire \count_transferred_reg[12]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[15] ;
  wire \count_transferred_reg[16]_i_1_n_0 ;
  wire \count_transferred_reg[16]_i_1_n_1 ;
  wire \count_transferred_reg[16]_i_1_n_2 ;
  wire \count_transferred_reg[16]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[19] ;
  wire \count_transferred_reg[20]_i_1_n_0 ;
  wire \count_transferred_reg[20]_i_1_n_1 ;
  wire \count_transferred_reg[20]_i_1_n_2 ;
  wire \count_transferred_reg[20]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[23] ;
  wire \count_transferred_reg[24]_i_1_n_0 ;
  wire \count_transferred_reg[24]_i_1_n_1 ;
  wire \count_transferred_reg[24]_i_1_n_2 ;
  wire \count_transferred_reg[24]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[27] ;
  wire \count_transferred_reg[28]_i_1_n_0 ;
  wire \count_transferred_reg[28]_i_1_n_1 ;
  wire \count_transferred_reg[28]_i_1_n_2 ;
  wire \count_transferred_reg[28]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[31] ;
  wire \count_transferred_reg[32]_i_1_n_0 ;
  wire \count_transferred_reg[32]_i_1_n_1 ;
  wire \count_transferred_reg[32]_i_1_n_2 ;
  wire \count_transferred_reg[32]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[35] ;
  wire \count_transferred_reg[36]_i_1_n_0 ;
  wire \count_transferred_reg[36]_i_1_n_1 ;
  wire \count_transferred_reg[36]_i_1_n_2 ;
  wire \count_transferred_reg[36]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[39] ;
  wire \count_transferred_reg[3] ;
  wire [0:0]\count_transferred_reg[40] ;
  wire \count_transferred_reg[4]_i_1_n_0 ;
  wire \count_transferred_reg[4]_i_1_n_1 ;
  wire \count_transferred_reg[4]_i_1_n_2 ;
  wire \count_transferred_reg[4]_i_1_n_3 ;
  wire [3:0]\count_transferred_reg[7] ;
  wire [3:0]\count_transferred_reg[7]_0 ;
  wire \count_transferred_reg[8]_i_1_n_0 ;
  wire \count_transferred_reg[8]_i_1_n_1 ;
  wire \count_transferred_reg[8]_i_1_n_2 ;
  wire \count_transferred_reg[8]_i_1_n_3 ;
  wire [7:0]data17;
  wire [7:0]data18;
  wire [7:0]data19;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire more;
  wire more0_carry__0_i_10_n_0;
  wire more0_carry__0_i_10_n_1;
  wire more0_carry__0_i_10_n_2;
  wire more0_carry__0_i_10_n_3;
  wire more0_carry__0_i_9_n_0;
  wire more0_carry__0_i_9_n_1;
  wire more0_carry__0_i_9_n_2;
  wire more0_carry__0_i_9_n_3;
  wire more0_carry__1_i_10_n_0;
  wire more0_carry__1_i_10_n_1;
  wire more0_carry__1_i_10_n_2;
  wire more0_carry__1_i_10_n_3;
  wire more0_carry__1_i_9_n_0;
  wire more0_carry__1_i_9_n_1;
  wire more0_carry__1_i_9_n_2;
  wire more0_carry__1_i_9_n_3;
  wire more0_carry__2_i_10_n_0;
  wire more0_carry__2_i_10_n_1;
  wire more0_carry__2_i_10_n_2;
  wire more0_carry__2_i_10_n_3;
  wire more0_carry__2_i_9_n_0;
  wire more0_carry__2_i_9_n_1;
  wire more0_carry__2_i_9_n_2;
  wire more0_carry__2_i_9_n_3;
  wire more0_carry__3_i_10_n_0;
  wire more0_carry__3_i_10_n_1;
  wire more0_carry__3_i_10_n_2;
  wire more0_carry__3_i_10_n_3;
  wire more0_carry__3_i_9_n_0;
  wire more0_carry__3_i_9_n_1;
  wire more0_carry__3_i_9_n_2;
  wire more0_carry__3_i_9_n_3;
  wire more0_carry_i_10_n_0;
  wire more0_carry_i_10_n_1;
  wire more0_carry_i_10_n_2;
  wire more0_carry_i_10_n_3;
  wire more0_carry_i_11_n_0;
  wire more0_carry_i_9_n_0;
  wire more0_carry_i_9_n_1;
  wire more0_carry_i_9_n_2;
  wire more0_carry_i_9_n_3;
  wire \onwrite[0]_0 ;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire p_37_in;
  wire p_63_out;
  wire raddr_saved0;
  wire \raddr_saved_demux_reg[16]_0 ;
  wire \raddr_saved_demux_reg[16]_1 ;
  wire read_got_addr;
  wire read_got_addr_next1_out;
  wire \reg_written_cleared[24]_2 ;
  wire resetn;
  wire [0:0]resetn_0;
  wire rvalid_i_1_n_0;
  wire rvalid_reg_0;
  wire [2:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [4:2]sel0;
  wire transfer_started;
  wire waddr_saved0;
  wire \waddr_saved[2]_i_1_n_0 ;
  wire \waddr_saved[3]_i_1_n_0 ;
  wire \waddr_saved[4]_i_1_n_0 ;
  wire \waddr_saved_reg_n_0_[2] ;
  wire \waddr_saved_reg_n_0_[3] ;
  wire \waddr_saved_reg_n_0_[4] ;
  wire wdata_saved0;
  wire \wdata_saved_reg_n_0_[0] ;
  wire \wdata_saved_reg_n_0_[16] ;
  wire \wdata_saved_reg_n_0_[17] ;
  wire \wdata_saved_reg_n_0_[18] ;
  wire \wdata_saved_reg_n_0_[19] ;
  wire \wdata_saved_reg_n_0_[1] ;
  wire \wdata_saved_reg_n_0_[20] ;
  wire \wdata_saved_reg_n_0_[21] ;
  wire \wdata_saved_reg_n_0_[22] ;
  wire \wdata_saved_reg_n_0_[23] ;
  wire \wdata_saved_reg_n_0_[24] ;
  wire \wdata_saved_reg_n_0_[25] ;
  wire \wdata_saved_reg_n_0_[26] ;
  wire \wdata_saved_reg_n_0_[27] ;
  wire \wdata_saved_reg_n_0_[28] ;
  wire \wdata_saved_reg_n_0_[29] ;
  wire \wdata_saved_reg_n_0_[2] ;
  wire \wdata_saved_reg_n_0_[30] ;
  wire \wdata_saved_reg_n_0_[31] ;
  wire \wdata_saved_reg_n_0_[3] ;
  wire \wdata_saved_reg_n_0_[4] ;
  wire \wdata_saved_reg_n_0_[5] ;
  wire \wdata_saved_reg_n_0_[6] ;
  wire \wdata_saved_reg_n_0_[7] ;
  wire wr_tran;
  wire wr_tran_next;
  wire wready_i_1_n_0;
  wire write_got_addr;
  wire write_got_addr_next4_out;
  wire write_got_data;
  wire write_got_data_next3_out;
  wire \write_reg[0].write_reg[0].onwrite_ij ;
  wire \write_reg[2].write_reg[0].onwrite_ij ;
  wire [3:0]\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 ;
  wire [3:0]\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 ;
  wire \write_reg[2].write_reg[1].onwrite_ij ;
  wire [3:0]\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 ;
  wire [3:0]\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 ;
  wire \write_reg[2].write_reg[2].onwrite_ij ;
  wire [3:0]\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 ;
  wire [3:0]\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 ;
  wire \write_reg[2].write_reg[3].onwrite_ij ;
  wire [3:0]\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 ;
  wire [3:0]\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 ;
  wire \write_reg[3].write_reg[0].onwrite_ij ;
  wire [3:0]\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 ;
  wire [3:0]\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 ;
  wire \write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0 ;
  wire [0:0]\write_reg[3].write_reg[1].reg_written_reg[13][0]_0 ;
  wire \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0 ;
  wire \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0 ;
  wire \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0 ;
  wire \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1 ;
  wire \wstrb_saved_reg_n_0_[0] ;
  wire \wstrb_saved_reg_n_0_[1] ;
  wire \wstrb_saved_reg_n_0_[2] ;
  wire \wstrb_saved_reg_n_0_[3] ;
  wire [3:0]\NLW_count_transferred_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_transferred_reg[40]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_more0_carry__4_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_more0_carry__4_i_3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF15FFFF)) 
    arready_i_1
       (.I0(read_got_addr),
        .I1(s_axi_arvalid),
        .I2(arready_reg_0),
        .I3(s_axi_rready),
        .I4(rvalid_reg_0),
        .O(arready_i_1_n_0));
  FDRE arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arready_i_1_n_0),
        .Q(arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hEE0EEE0EEE0EFFFF)) 
    awready_i_1
       (.I0(write_got_data),
        .I1(wdata_saved0),
        .I2(bvalid_reg_0),
        .I3(s_axi_bready),
        .I4(waddr_saved0),
        .I5(write_got_addr),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    awready_i_2
       (.I0(awready_reg_0),
        .I1(s_axi_awvalid),
        .O(waddr_saved0));
  FDRE awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBB0BBB0BBB00000)) 
    bvalid_i_1
       (.I0(s_axi_bready),
        .I1(bvalid_reg_0),
        .I2(wdata_saved0),
        .I3(write_got_data),
        .I4(write_got_addr),
        .I5(waddr_saved0),
        .O(bvalid_i_1_n_0));
  FDRE bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(bvalid_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    count_resetn_i_1
       (.I0(\reg_written_cleared[24]_2 ),
        .I1(transfer_started),
        .I2(wr_tran),
        .O(\write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \count_transferred[0]_i_2 
       (.I0(data_out_tready),
        .I1(transfer_started),
        .I2(more),
        .I3(\onwrite[0]_0 ),
        .I4(\count_transferred_reg[3] ),
        .O(\count_transferred[0]_i_2_n_0 ));
  CARRY4 \count_transferred_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_transferred_reg[0]_i_1_n_0 ,\count_transferred_reg[0]_i_1_n_1 ,\count_transferred_reg[0]_i_1_n_2 ,\count_transferred_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_transferred_reg[3] }),
        .O(O),
        .S({S,\count_transferred[0]_i_2_n_0 }));
  CARRY4 \count_transferred_reg[12]_i_1 
       (.CI(\count_transferred_reg[8]_i_1_n_0 ),
        .CO({\count_transferred_reg[12]_i_1_n_0 ,\count_transferred_reg[12]_i_1_n_1 ,\count_transferred_reg[12]_i_1_n_2 ,\count_transferred_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[15] ),
        .S(data17[7:4]));
  CARRY4 \count_transferred_reg[16]_i_1 
       (.CI(\count_transferred_reg[12]_i_1_n_0 ),
        .CO({\count_transferred_reg[16]_i_1_n_0 ,\count_transferred_reg[16]_i_1_n_1 ,\count_transferred_reg[16]_i_1_n_2 ,\count_transferred_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[19] ),
        .S(data18[3:0]));
  CARRY4 \count_transferred_reg[20]_i_1 
       (.CI(\count_transferred_reg[16]_i_1_n_0 ),
        .CO({\count_transferred_reg[20]_i_1_n_0 ,\count_transferred_reg[20]_i_1_n_1 ,\count_transferred_reg[20]_i_1_n_2 ,\count_transferred_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[23] ),
        .S(data18[7:4]));
  CARRY4 \count_transferred_reg[24]_i_1 
       (.CI(\count_transferred_reg[20]_i_1_n_0 ),
        .CO({\count_transferred_reg[24]_i_1_n_0 ,\count_transferred_reg[24]_i_1_n_1 ,\count_transferred_reg[24]_i_1_n_2 ,\count_transferred_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[27] ),
        .S(data19[3:0]));
  CARRY4 \count_transferred_reg[28]_i_1 
       (.CI(\count_transferred_reg[24]_i_1_n_0 ),
        .CO({\count_transferred_reg[28]_i_1_n_0 ,\count_transferred_reg[28]_i_1_n_1 ,\count_transferred_reg[28]_i_1_n_2 ,\count_transferred_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[31] ),
        .S(data19[7:4]));
  CARRY4 \count_transferred_reg[32]_i_1 
       (.CI(\count_transferred_reg[28]_i_1_n_0 ),
        .CO({\count_transferred_reg[32]_i_1_n_0 ,\count_transferred_reg[32]_i_1_n_1 ,\count_transferred_reg[32]_i_1_n_2 ,\count_transferred_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[35] ),
        .S(D[3:0]));
  CARRY4 \count_transferred_reg[36]_i_1 
       (.CI(\count_transferred_reg[32]_i_1_n_0 ),
        .CO({\count_transferred_reg[36]_i_1_n_0 ,\count_transferred_reg[36]_i_1_n_1 ,\count_transferred_reg[36]_i_1_n_2 ,\count_transferred_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[39] ),
        .S(D[7:4]));
  CARRY4 \count_transferred_reg[40]_i_1 
       (.CI(\count_transferred_reg[36]_i_1_n_0 ),
        .CO(\NLW_count_transferred_reg[40]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_transferred_reg[40]_i_1_O_UNCONNECTED [3:1],\count_transferred_reg[40] }),
        .S({1'b0,1'b0,1'b0,D[8]}));
  CARRY4 \count_transferred_reg[4]_i_1 
       (.CI(\count_transferred_reg[0]_i_1_n_0 ),
        .CO({\count_transferred_reg[4]_i_1_n_0 ,\count_transferred_reg[4]_i_1_n_1 ,\count_transferred_reg[4]_i_1_n_2 ,\count_transferred_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[7] ),
        .S(\count_transferred_reg[7]_0 ));
  CARRY4 \count_transferred_reg[8]_i_1 
       (.CI(\count_transferred_reg[4]_i_1_n_0 ),
        .CO({\count_transferred_reg[8]_i_1_n_0 ,\count_transferred_reg[8]_i_1_n_1 ,\count_transferred_reg[8]_i_1_n_2 ,\count_transferred_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_transferred_reg[11] ),
        .S(data17[3:0]));
  LUT3 #(
    .INIT(8'h08)) 
    data_out_tvalid_INST_0
       (.I0(transfer_started),
        .I1(more),
        .I2(\onwrite[0]_0 ),
        .O(data_out_tvalid));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__0_i_1
       (.I0(count_target[14]),
        .I1(count_transferred_next[14]),
        .I2(count_transferred_next[15]),
        .I3(count_target[15]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 [3]));
  CARRY4 more0_carry__0_i_10
       (.CI(more0_carry_i_9_n_0),
        .CO({more0_carry__0_i_10_n_0,more0_carry__0_i_10_n_1,more0_carry__0_i_10_n_2,more0_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[11:8]),
        .S(data17[3:0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__0_i_2
       (.I0(count_target[12]),
        .I1(count_transferred_next[12]),
        .I2(count_transferred_next[13]),
        .I3(count_target[13]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__0_i_3
       (.I0(count_target[10]),
        .I1(count_transferred_next[10]),
        .I2(count_transferred_next[11]),
        .I3(count_target[11]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__0_i_4
       (.I0(count_target[8]),
        .I1(count_transferred_next[8]),
        .I2(count_transferred_next[9]),
        .I3(count_target[9]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__0_i_5
       (.I0(count_target[14]),
        .I1(count_transferred_next[14]),
        .I2(count_target[15]),
        .I3(count_transferred_next[15]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__0_i_6
       (.I0(count_target[12]),
        .I1(count_transferred_next[12]),
        .I2(count_target[13]),
        .I3(count_transferred_next[13]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__0_i_7
       (.I0(count_target[10]),
        .I1(count_transferred_next[10]),
        .I2(count_target[11]),
        .I3(count_transferred_next[11]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__0_i_8
       (.I0(count_target[8]),
        .I1(count_transferred_next[8]),
        .I2(count_target[9]),
        .I3(count_transferred_next[9]),
        .O(\write_reg[2].write_reg[1].reg_written_reg[9][6]_0 [0]));
  CARRY4 more0_carry__0_i_9
       (.CI(more0_carry__0_i_10_n_0),
        .CO({more0_carry__0_i_9_n_0,more0_carry__0_i_9_n_1,more0_carry__0_i_9_n_2,more0_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[15:12]),
        .S(data17[7:4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__1_i_1
       (.I0(count_target[22]),
        .I1(count_transferred_next[22]),
        .I2(count_transferred_next[23]),
        .I3(count_target[23]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 [3]));
  CARRY4 more0_carry__1_i_10
       (.CI(more0_carry__0_i_9_n_0),
        .CO({more0_carry__1_i_10_n_0,more0_carry__1_i_10_n_1,more0_carry__1_i_10_n_2,more0_carry__1_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[19:16]),
        .S(data18[3:0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__1_i_2
       (.I0(count_target[20]),
        .I1(count_transferred_next[20]),
        .I2(count_transferred_next[21]),
        .I3(count_target[21]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__1_i_3
       (.I0(count_target[18]),
        .I1(count_transferred_next[18]),
        .I2(count_transferred_next[19]),
        .I3(count_target[19]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__1_i_4
       (.I0(count_target[16]),
        .I1(count_transferred_next[16]),
        .I2(count_transferred_next[17]),
        .I3(count_target[17]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__1_i_5
       (.I0(count_target[22]),
        .I1(count_transferred_next[22]),
        .I2(count_target[23]),
        .I3(count_transferred_next[23]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__1_i_6
       (.I0(count_target[20]),
        .I1(count_transferred_next[20]),
        .I2(count_target[21]),
        .I3(count_transferred_next[21]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__1_i_7
       (.I0(count_target[18]),
        .I1(count_transferred_next[18]),
        .I2(count_target[19]),
        .I3(count_transferred_next[19]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__1_i_8
       (.I0(count_target[16]),
        .I1(count_transferred_next[16]),
        .I2(count_target[17]),
        .I3(count_transferred_next[17]),
        .O(\write_reg[2].write_reg[2].reg_written_reg[10][6]_0 [0]));
  CARRY4 more0_carry__1_i_9
       (.CI(more0_carry__1_i_10_n_0),
        .CO({more0_carry__1_i_9_n_0,more0_carry__1_i_9_n_1,more0_carry__1_i_9_n_2,more0_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[23:20]),
        .S(data18[7:4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__2_i_1
       (.I0(count_target[30]),
        .I1(count_transferred_next[30]),
        .I2(count_transferred_next[31]),
        .I3(count_target[31]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 [3]));
  CARRY4 more0_carry__2_i_10
       (.CI(more0_carry__1_i_9_n_0),
        .CO({more0_carry__2_i_10_n_0,more0_carry__2_i_10_n_1,more0_carry__2_i_10_n_2,more0_carry__2_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[27:24]),
        .S(data19[3:0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__2_i_2
       (.I0(count_target[28]),
        .I1(count_transferred_next[28]),
        .I2(count_transferred_next[29]),
        .I3(count_target[29]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__2_i_3
       (.I0(count_target[26]),
        .I1(count_transferred_next[26]),
        .I2(count_transferred_next[27]),
        .I3(count_target[27]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__2_i_4
       (.I0(count_target[24]),
        .I1(count_transferred_next[24]),
        .I2(count_transferred_next[25]),
        .I3(count_target[25]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__2_i_5
       (.I0(count_target[30]),
        .I1(count_transferred_next[30]),
        .I2(count_target[31]),
        .I3(count_transferred_next[31]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__2_i_6
       (.I0(count_target[28]),
        .I1(count_transferred_next[28]),
        .I2(count_target[29]),
        .I3(count_transferred_next[29]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__2_i_7
       (.I0(count_target[26]),
        .I1(count_transferred_next[26]),
        .I2(count_target[27]),
        .I3(count_transferred_next[27]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__2_i_8
       (.I0(count_target[24]),
        .I1(count_transferred_next[24]),
        .I2(count_target[25]),
        .I3(count_transferred_next[25]),
        .O(\write_reg[2].write_reg[3].reg_written_reg[11][6]_0 [0]));
  CARRY4 more0_carry__2_i_9
       (.CI(more0_carry__2_i_10_n_0),
        .CO({more0_carry__2_i_9_n_0,more0_carry__2_i_9_n_1,more0_carry__2_i_9_n_2,more0_carry__2_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[31:28]),
        .S(data19[7:4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__3_i_1
       (.I0(count_target[38]),
        .I1(count_transferred_next[38]),
        .I2(count_transferred_next[39]),
        .I3(count_target[39]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 [3]));
  CARRY4 more0_carry__3_i_10
       (.CI(more0_carry__2_i_9_n_0),
        .CO({more0_carry__3_i_10_n_0,more0_carry__3_i_10_n_1,more0_carry__3_i_10_n_2,more0_carry__3_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[35:32]),
        .S(D[3:0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__3_i_2
       (.I0(count_target[36]),
        .I1(count_transferred_next[36]),
        .I2(count_transferred_next[37]),
        .I3(count_target[37]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__3_i_3
       (.I0(count_target[34]),
        .I1(count_transferred_next[34]),
        .I2(count_transferred_next[35]),
        .I3(count_target[35]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry__3_i_4
       (.I0(count_target[32]),
        .I1(count_transferred_next[32]),
        .I2(count_transferred_next[33]),
        .I3(count_target[33]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__3_i_5
       (.I0(count_target[38]),
        .I1(count_transferred_next[38]),
        .I2(count_target[39]),
        .I3(count_transferred_next[39]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__3_i_6
       (.I0(count_target[36]),
        .I1(count_transferred_next[36]),
        .I2(count_target[37]),
        .I3(count_transferred_next[37]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__3_i_7
       (.I0(count_target[34]),
        .I1(count_transferred_next[34]),
        .I2(count_target[35]),
        .I3(count_transferred_next[35]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry__3_i_8
       (.I0(count_target[32]),
        .I1(count_transferred_next[32]),
        .I2(count_target[33]),
        .I3(count_transferred_next[33]),
        .O(\write_reg[3].write_reg[0].reg_written_reg[12][6]_0 [0]));
  CARRY4 more0_carry__3_i_9
       (.CI(more0_carry__3_i_10_n_0),
        .CO({more0_carry__3_i_9_n_0,more0_carry__3_i_9_n_1,more0_carry__3_i_9_n_2,more0_carry__3_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[39:36]),
        .S(D[7:4]));
  LUT2 #(
    .INIT(4'h2)) 
    more0_carry__4_i_1
       (.I0(count_target[40]),
        .I1(count_transferred_next[40]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    more0_carry__4_i_2
       (.I0(count_transferred_next[40]),
        .I1(count_target[40]),
        .O(\write_reg[3].write_reg[1].reg_written_reg[13][0]_0 ));
  CARRY4 more0_carry__4_i_3
       (.CI(more0_carry__3_i_9_n_0),
        .CO(NLW_more0_carry__4_i_3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_more0_carry__4_i_3_O_UNCONNECTED[3:1],count_transferred_next[40]}),
        .S({1'b0,1'b0,1'b0,D[8]}));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry_i_1
       (.I0(count_target[6]),
        .I1(count_transferred_next[6]),
        .I2(count_transferred_next[7]),
        .I3(count_target[7]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 [3]));
  CARRY4 more0_carry_i_10
       (.CI(1'b0),
        .CO({more0_carry_i_10_n_0,more0_carry_i_10_n_1,more0_carry_i_10_n_2,more0_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_transferred_reg[3] }),
        .O(count_transferred_next[3:0]),
        .S({S,more0_carry_i_11_n_0}));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    more0_carry_i_11
       (.I0(\count_transferred_reg[3] ),
        .I1(data_out_tready),
        .I2(transfer_started),
        .I3(more),
        .I4(\onwrite[0]_0 ),
        .O(more0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry_i_2
       (.I0(count_target[4]),
        .I1(count_transferred_next[4]),
        .I2(count_transferred_next[5]),
        .I3(count_target[5]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry_i_3
       (.I0(count_target[2]),
        .I1(count_transferred_next[2]),
        .I2(count_transferred_next[3]),
        .I3(count_target[3]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    more0_carry_i_4
       (.I0(count_target[0]),
        .I1(count_transferred_next[0]),
        .I2(count_transferred_next[1]),
        .I3(count_target[1]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry_i_5
       (.I0(count_target[6]),
        .I1(count_transferred_next[6]),
        .I2(count_target[7]),
        .I3(count_transferred_next[7]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry_i_6
       (.I0(count_target[4]),
        .I1(count_transferred_next[4]),
        .I2(count_target[5]),
        .I3(count_transferred_next[5]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry_i_7
       (.I0(count_target[2]),
        .I1(count_transferred_next[2]),
        .I2(count_target[3]),
        .I3(count_transferred_next[3]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    more0_carry_i_8
       (.I0(count_target[0]),
        .I1(count_transferred_next[0]),
        .I2(count_target[1]),
        .I3(count_transferred_next[1]),
        .O(\write_reg[2].write_reg[0].reg_written_reg[8][6]_0 [0]));
  CARRY4 more0_carry_i_9
       (.CI(more0_carry_i_10_n_0),
        .CO({more0_carry_i_9_n_0,more0_carry_i_9_n_1,more0_carry_i_9_n_2,more0_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_transferred_next[7:4]),
        .S(\count_transferred_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hDDDDD00000000000)) 
    \onread[16]_i_1 
       (.I0(rvalid_reg_0),
        .I1(s_axi_rready),
        .I2(arready_reg_0),
        .I3(s_axi_arvalid),
        .I4(read_got_addr),
        .I5(\raddr_saved_demux_reg[16]_1 ),
        .O(p_63_out));
  FDRE \onread_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_63_out),
        .Q(E),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \raddr_saved_demux[16]_i_1 
       (.I0(s_axi_arvalid),
        .I1(arready_reg_0),
        .O(raddr_saved0));
  FDRE \raddr_saved_demux_reg[16] 
       (.C(aclk),
        .CE(raddr_saved0),
        .D(\raddr_saved_demux_reg[16]_0 ),
        .Q(\raddr_saved_demux_reg[16]_1 ),
        .R(SR));
  FDRE \raddr_saved_reg[2] 
       (.C(aclk),
        .CE(raddr_saved0),
        .D(s_axi_araddr[0]),
        .Q(sel0[2]),
        .R(SR));
  FDRE \raddr_saved_reg[3] 
       (.C(aclk),
        .CE(raddr_saved0),
        .D(s_axi_araddr[1]),
        .Q(sel0[3]),
        .R(SR));
  FDRE \raddr_saved_reg[4] 
       (.C(aclk),
        .CE(raddr_saved0),
        .D(s_axi_araddr[2]),
        .Q(sel0[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h22222000)) 
    read_got_addr_i_1
       (.I0(rvalid_reg_0),
        .I1(s_axi_rready),
        .I2(arready_reg_0),
        .I3(s_axi_arvalid),
        .I4(read_got_addr),
        .O(read_got_addr_next1_out));
  FDRE read_got_addr_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_got_addr_next1_out),
        .Q(read_got_addr),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFC0FFEA)) 
    rvalid_i_1
       (.I0(rvalid_reg_0),
        .I1(arready_reg_0),
        .I2(s_axi_arvalid),
        .I3(read_got_addr),
        .I4(s_axi_rready),
        .O(rvalid_i_1_n_0));
  FDRE rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rvalid_i_1_n_0),
        .Q(rvalid_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(count_target[32]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[0]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(count_target[0]),
        .I1(sel0[3]),
        .I2(\count_transferred_reg[3] ),
        .I3(sel0[4]),
        .I4(data_out_tdata[0]),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[2]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[10]),
        .O(s_axi_rdata[10]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[3]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[11]),
        .O(s_axi_rdata[11]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[4]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[12]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[13]),
        .O(s_axi_rdata[13]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[6]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[14]),
        .O(s_axi_rdata[14]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[7]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[15]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[0]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[16]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[1]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[17]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[2]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[18]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[3]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[19]),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(count_target[33]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[1]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(count_target[1]),
        .I1(sel0[3]),
        .I2(S[0]),
        .I3(sel0[4]),
        .I4(data_out_tdata[1]),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[4]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[20]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[21]),
        .O(s_axi_rdata[21]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[6]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[22]),
        .O(s_axi_rdata[22]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(sel0[2]),
        .I1(data18[7]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[23]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[0]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[24]),
        .O(s_axi_rdata[24]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[1]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[25]),
        .O(s_axi_rdata[25]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[2]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[26]),
        .O(s_axi_rdata[26]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[3]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[27]),
        .O(s_axi_rdata[27]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[4]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[28]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[29]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(count_target[34]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[2]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[2]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[2]_INST_0_i_1 
       (.I0(count_target[2]),
        .I1(sel0[3]),
        .I2(S[1]),
        .I3(sel0[4]),
        .I4(data_out_tdata[2]),
        .O(\s_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[6]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[30]),
        .O(s_axi_rdata[30]));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(sel0[2]),
        .I1(data19[7]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[31]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(count_target[35]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[3]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[3]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[3]_INST_0_i_1 
       (.I0(count_target[3]),
        .I1(sel0[3]),
        .I2(S[2]),
        .I3(sel0[4]),
        .I4(data_out_tdata[3]),
        .O(\s_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(count_target[36]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[4]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[4]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[4]_INST_0_i_1 
       (.I0(count_target[4]),
        .I1(sel0[3]),
        .I2(\count_transferred_reg[7]_0 [0]),
        .I3(sel0[4]),
        .I4(data_out_tdata[4]),
        .O(\s_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(count_target[37]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[5]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[5]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[5]_INST_0_i_1 
       (.I0(count_target[5]),
        .I1(sel0[3]),
        .I2(\count_transferred_reg[7]_0 [1]),
        .I3(sel0[4]),
        .I4(data_out_tdata[5]),
        .O(\s_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(count_target[38]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[6]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[6]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[6]_INST_0_i_1 
       (.I0(count_target[6]),
        .I1(sel0[3]),
        .I2(\count_transferred_reg[7]_0 [2]),
        .I3(sel0[4]),
        .I4(data_out_tdata[6]),
        .O(\s_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(count_target[39]),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(Q[7]),
        .I4(sel0[2]),
        .I5(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[7]_INST_0_i_1 
       (.I0(count_target[7]),
        .I1(sel0[3]),
        .I2(\count_transferred_reg[7]_0 [3]),
        .I3(sel0[4]),
        .I4(data_out_tdata[7]),
        .O(\s_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(\s_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_INST_0_i_1 
       (.I0(count_target[40]),
        .I1(Q[8]),
        .I2(sel0[2]),
        .I3(count_target[8]),
        .I4(sel0[3]),
        .I5(data17[0]),
        .O(\s_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h05400040)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(sel0[2]),
        .I1(data17[1]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(count_target[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    transfer_started_i_1
       (.I0(\reg_written_cleared[24]_2 ),
        .I1(transfer_started),
        .I2(wr_tran),
        .O(\write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \waddr_saved[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(\waddr_saved_reg_n_0_[2] ),
        .O(\waddr_saved[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \waddr_saved[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(\waddr_saved_reg_n_0_[3] ),
        .O(\waddr_saved[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \waddr_saved[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(\waddr_saved_reg_n_0_[4] ),
        .O(\waddr_saved[4]_i_1_n_0 ));
  FDRE \waddr_saved_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\waddr_saved[2]_i_1_n_0 ),
        .Q(\waddr_saved_reg_n_0_[2] ),
        .R(SR));
  FDRE \waddr_saved_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\waddr_saved[3]_i_1_n_0 ),
        .Q(\waddr_saved_reg_n_0_[3] ),
        .R(SR));
  FDRE \waddr_saved_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\waddr_saved[4]_i_1_n_0 ),
        .Q(\waddr_saved_reg_n_0_[4] ),
        .R(SR));
  FDRE \wdata_saved_reg[0] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[0]),
        .Q(\wdata_saved_reg_n_0_[0] ),
        .R(SR));
  FDRE \wdata_saved_reg[10] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[10]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \wdata_saved_reg[11] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[11]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \wdata_saved_reg[12] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[12]),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE \wdata_saved_reg[13] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[13]),
        .Q(p_1_in[5]),
        .R(SR));
  FDRE \wdata_saved_reg[14] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[14]),
        .Q(p_1_in[6]),
        .R(SR));
  FDRE \wdata_saved_reg[15] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[15]),
        .Q(p_1_in[7]),
        .R(SR));
  FDRE \wdata_saved_reg[16] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[16]),
        .Q(\wdata_saved_reg_n_0_[16] ),
        .R(SR));
  FDRE \wdata_saved_reg[17] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[17]),
        .Q(\wdata_saved_reg_n_0_[17] ),
        .R(SR));
  FDRE \wdata_saved_reg[18] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[18]),
        .Q(\wdata_saved_reg_n_0_[18] ),
        .R(SR));
  FDRE \wdata_saved_reg[19] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[19]),
        .Q(\wdata_saved_reg_n_0_[19] ),
        .R(SR));
  FDRE \wdata_saved_reg[1] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[1]),
        .Q(\wdata_saved_reg_n_0_[1] ),
        .R(SR));
  FDRE \wdata_saved_reg[20] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[20]),
        .Q(\wdata_saved_reg_n_0_[20] ),
        .R(SR));
  FDRE \wdata_saved_reg[21] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[21]),
        .Q(\wdata_saved_reg_n_0_[21] ),
        .R(SR));
  FDRE \wdata_saved_reg[22] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[22]),
        .Q(\wdata_saved_reg_n_0_[22] ),
        .R(SR));
  FDRE \wdata_saved_reg[23] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[23]),
        .Q(\wdata_saved_reg_n_0_[23] ),
        .R(SR));
  FDRE \wdata_saved_reg[24] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[24]),
        .Q(\wdata_saved_reg_n_0_[24] ),
        .R(SR));
  FDRE \wdata_saved_reg[25] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[25]),
        .Q(\wdata_saved_reg_n_0_[25] ),
        .R(SR));
  FDRE \wdata_saved_reg[26] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[26]),
        .Q(\wdata_saved_reg_n_0_[26] ),
        .R(SR));
  FDRE \wdata_saved_reg[27] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[27]),
        .Q(\wdata_saved_reg_n_0_[27] ),
        .R(SR));
  FDRE \wdata_saved_reg[28] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[28]),
        .Q(\wdata_saved_reg_n_0_[28] ),
        .R(SR));
  FDRE \wdata_saved_reg[29] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[29]),
        .Q(\wdata_saved_reg_n_0_[29] ),
        .R(SR));
  FDRE \wdata_saved_reg[2] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[2]),
        .Q(\wdata_saved_reg_n_0_[2] ),
        .R(SR));
  FDRE \wdata_saved_reg[30] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[30]),
        .Q(\wdata_saved_reg_n_0_[30] ),
        .R(SR));
  FDRE \wdata_saved_reg[31] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[31]),
        .Q(\wdata_saved_reg_n_0_[31] ),
        .R(SR));
  FDRE \wdata_saved_reg[3] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[3]),
        .Q(\wdata_saved_reg_n_0_[3] ),
        .R(SR));
  FDRE \wdata_saved_reg[4] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[4]),
        .Q(\wdata_saved_reg_n_0_[4] ),
        .R(SR));
  FDRE \wdata_saved_reg[5] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[5]),
        .Q(\wdata_saved_reg_n_0_[5] ),
        .R(SR));
  FDRE \wdata_saved_reg[6] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[6]),
        .Q(\wdata_saved_reg_n_0_[6] ),
        .R(SR));
  FDRE \wdata_saved_reg[7] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[7]),
        .Q(\wdata_saved_reg_n_0_[7] ),
        .R(SR));
  FDRE \wdata_saved_reg[8] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[8]),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE \wdata_saved_reg[9] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wdata[9]),
        .Q(p_1_in[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEEE0EEE00000EEE0)) 
    wr_tran_i_1
       (.I0(waddr_saved0),
        .I1(write_got_addr),
        .I2(write_got_data),
        .I3(wdata_saved0),
        .I4(bvalid_reg_0),
        .I5(s_axi_bready),
        .O(wr_tran_next));
  FDRE wr_tran_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_tran_next),
        .Q(wr_tran),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF1FFF1FFF1F1111)) 
    wready_i_1
       (.I0(wdata_saved0),
        .I1(write_got_data),
        .I2(bvalid_reg_0),
        .I3(s_axi_bready),
        .I4(write_got_addr),
        .I5(waddr_saved0),
        .O(wready_i_1_n_0));
  FDRE wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0E000E000E00EEEE)) 
    write_got_addr_i_1
       (.I0(write_got_addr),
        .I1(waddr_saved0),
        .I2(s_axi_bready),
        .I3(bvalid_reg_0),
        .I4(wdata_saved0),
        .I5(write_got_data),
        .O(write_got_addr_next4_out));
  FDRE write_got_addr_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_got_addr_next4_out),
        .Q(write_got_addr),
        .R(SR));
  LUT6 #(
    .INIT(64'h1F111F111F110000)) 
    write_got_data_i_1
       (.I0(waddr_saved0),
        .I1(write_got_addr),
        .I2(s_axi_bready),
        .I3(bvalid_reg_0),
        .I4(write_got_data),
        .I5(wdata_saved0),
        .O(write_got_data_next3_out));
  FDRE write_got_data_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_got_data_next3_out),
        .Q(write_got_data),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].onwrite_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[0].write_reg[0].onwrite_ij ),
        .Q(\onwrite[0]_0 ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \write_reg[0].write_reg[0].reg_written[0][7]_i_1 
       (.I0(resetn),
        .O(SR));
  LUT5 #(
    .INIT(32'h01000000)) 
    \write_reg[0].write_reg[0].reg_written[0][7]_i_2 
       (.I0(\waddr_saved_reg_n_0_[3] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[4] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[0] ),
        .O(\write_reg[0].write_reg[0].onwrite_ij ));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][0] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[0] ),
        .Q(data_out_tdata[0]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][1] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[1] ),
        .Q(data_out_tdata[1]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][2] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[2] ),
        .Q(data_out_tdata[2]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][3] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[3] ),
        .Q(data_out_tdata[3]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][4] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[4] ),
        .Q(data_out_tdata[4]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][5] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[5] ),
        .Q(data_out_tdata[5]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][6] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[6] ),
        .Q(data_out_tdata[6]),
        .R(SR));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][7] 
       (.C(aclk),
        .CE(\write_reg[0].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[7] ),
        .Q(data_out_tdata[7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h7)) 
    \write_reg[2].write_reg[0].reg_written[8][7]_i_1 
       (.I0(resetn),
        .I1(count_resetn),
        .O(resetn_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \write_reg[2].write_reg[0].reg_written[8][7]_i_2 
       (.I0(\waddr_saved_reg_n_0_[3] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[4] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[0] ),
        .O(\write_reg[2].write_reg[0].onwrite_ij ));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][0] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[0] ),
        .Q(count_target[0]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][1] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[1] ),
        .Q(count_target[1]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][2] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[2] ),
        .Q(count_target[2]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][3] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[3] ),
        .Q(count_target[3]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][4] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[4] ),
        .Q(count_target[4]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][5] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[5] ),
        .Q(count_target[5]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][6] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[6] ),
        .Q(count_target[6]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[0].reg_written_reg[8][7] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[7] ),
        .Q(count_target[7]),
        .R(resetn_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \write_reg[2].write_reg[1].reg_written[9][7]_i_1 
       (.I0(\waddr_saved_reg_n_0_[3] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[4] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[1] ),
        .O(\write_reg[2].write_reg[1].onwrite_ij ));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][0] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[0]),
        .Q(count_target[8]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][1] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[1]),
        .Q(count_target[9]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][2] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[2]),
        .Q(count_target[10]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][3] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[3]),
        .Q(count_target[11]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][4] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[4]),
        .Q(count_target[12]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][5] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[5]),
        .Q(count_target[13]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][6] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[6]),
        .Q(count_target[14]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[1].reg_written_reg[9][7] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[1].onwrite_ij ),
        .D(p_1_in[7]),
        .Q(count_target[15]),
        .R(resetn_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \write_reg[2].write_reg[2].reg_written[10][7]_i_1 
       (.I0(\waddr_saved_reg_n_0_[3] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[4] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[2] ),
        .O(\write_reg[2].write_reg[2].onwrite_ij ));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][0] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[16] ),
        .Q(count_target[16]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][1] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[17] ),
        .Q(count_target[17]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][2] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[18] ),
        .Q(count_target[18]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][3] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[19] ),
        .Q(count_target[19]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][4] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[20] ),
        .Q(count_target[20]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][5] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[21] ),
        .Q(count_target[21]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][6] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[22] ),
        .Q(count_target[22]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[2].reg_written_reg[10][7] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[2].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[23] ),
        .Q(count_target[23]),
        .R(resetn_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \write_reg[2].write_reg[3].reg_written[11][7]_i_1 
       (.I0(\waddr_saved_reg_n_0_[3] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[4] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[3] ),
        .O(\write_reg[2].write_reg[3].onwrite_ij ));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][0] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[24] ),
        .Q(count_target[24]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][1] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[25] ),
        .Q(count_target[25]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][2] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[26] ),
        .Q(count_target[26]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][3] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[27] ),
        .Q(count_target[27]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][4] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[28] ),
        .Q(count_target[28]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][5] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[29] ),
        .Q(count_target[29]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][6] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[30] ),
        .Q(count_target[30]),
        .R(resetn_0));
  FDRE \write_reg[2].write_reg[3].reg_written_reg[11][7] 
       (.C(aclk),
        .CE(\write_reg[2].write_reg[3].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[31] ),
        .Q(count_target[31]),
        .R(resetn_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \write_reg[3].write_reg[0].reg_written[12][7]_i_1 
       (.I0(\waddr_saved_reg_n_0_[4] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(\waddr_saved_reg_n_0_[3] ),
        .I3(wr_tran),
        .I4(\wstrb_saved_reg_n_0_[0] ),
        .O(\write_reg[3].write_reg[0].onwrite_ij ));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][0] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[0] ),
        .Q(count_target[32]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][1] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[1] ),
        .Q(count_target[33]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][2] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[2] ),
        .Q(count_target[34]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][3] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[3] ),
        .Q(count_target[35]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][4] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[4] ),
        .Q(count_target[36]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][5] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[5] ),
        .Q(count_target[37]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][6] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[6] ),
        .Q(count_target[38]),
        .R(resetn_0));
  FDRE \write_reg[3].write_reg[0].reg_written_reg[12][7] 
       (.C(aclk),
        .CE(\write_reg[3].write_reg[0].onwrite_ij ),
        .D(\wdata_saved_reg_n_0_[7] ),
        .Q(count_target[39]),
        .R(resetn_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \write_reg[3].write_reg[1].reg_written[13][0]_i_1 
       (.I0(p_1_in[0]),
        .I1(p_37_in),
        .I2(\wstrb_saved_reg_n_0_[1] ),
        .I3(count_target[40]),
        .O(\write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \write_reg[3].write_reg[1].reg_written[13][0]_i_2 
       (.I0(wr_tran),
        .I1(\waddr_saved_reg_n_0_[3] ),
        .I2(\waddr_saved_reg_n_0_[2] ),
        .I3(\waddr_saved_reg_n_0_[4] ),
        .O(p_37_in));
  FDRE \write_reg[3].write_reg[1].reg_written_reg[13][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0 ),
        .Q(count_target[40]),
        .R(resetn_0));
  LUT2 #(
    .INIT(4'h2)) 
    \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1 
       (.I0(\wdata_saved_reg_n_0_[0] ),
        .I1(\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0 ),
        .O(\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2 
       (.I0(resetn),
        .I1(\wstrb_saved_reg_n_0_[0] ),
        .I2(wr_tran),
        .I3(\waddr_saved_reg_n_0_[3] ),
        .I4(\waddr_saved_reg_n_0_[4] ),
        .I5(\waddr_saved_reg_n_0_[2] ),
        .O(\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0 ));
  FDRE \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0 ),
        .Q(\reg_written_cleared[24]_2 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \wstrb_saved[3]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .O(wdata_saved0));
  FDRE \wstrb_saved_reg[0] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wstrb[0]),
        .Q(\wstrb_saved_reg_n_0_[0] ),
        .R(SR));
  FDRE \wstrb_saved_reg[1] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wstrb[1]),
        .Q(\wstrb_saved_reg_n_0_[1] ),
        .R(SR));
  FDRE \wstrb_saved_reg[2] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wstrb[2]),
        .Q(\wstrb_saved_reg_n_0_[2] ),
        .R(SR));
  FDRE \wstrb_saved_reg[3] 
       (.C(aclk),
        .CE(wdata_saved0),
        .D(s_axi_wstrb[3]),
        .Q(\wstrb_saved_reg_n_0_[3] ),
        .R(SR));
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
