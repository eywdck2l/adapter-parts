// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jun 26 11:48:39 2019
// Host        : bca19e163b5f running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/adapter/adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/adapter_axi_sd_0_0_sim_netlist.v
// Design      : adapter_axi_sd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adapter_axi_sd_0_0,axi_sd_v1_0_S_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_sd_v1_0_S_AXI,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module adapter_axi_sd_0_0
   (sd_clk,
    sd_cmd,
    sd_dat,
    sd_dat3_pullup,
    interrupt,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN);
  (* CLOCK_BUFFER_TYPE = "BUFIO" *) (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CLK" *) input sd_clk;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CMD" *) inout sd_cmd;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd DAT" *) inout [3:0]sd_dat;
  output sd_dat3_pullup;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [6:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [6:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire interrupt;
  wire sd_clk;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sd_cmd;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [3:0]sd_dat;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire sd_dat3_pullup;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[6:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[6:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .interrupt(interrupt),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .sd_dat(sd_dat),
        .sd_dat3_pullup(sd_dat3_pullup));
endmodule

(* ORIG_REF_NAME = "axi_sd_v1_0_S_AXI" *) 
module adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI
   (S_AXI_AWREADY,
    axi_rvalid_reg_0,
    S_AXI_ARREADY,
    sd_dat3_pullup,
    S_AXI_WREADY,
    S_AXI_RDATA,
    interrupt,
    S_AXI_BVALID,
    sd_cmd,
    sd_dat,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    sd_clk,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output axi_rvalid_reg_0;
  output S_AXI_ARREADY;
  output sd_dat3_pullup;
  output S_AXI_WREADY;
  output [31:0]S_AXI_RDATA;
  output interrupt;
  output S_AXI_BVALID;
  inout sd_cmd;
  inout [3:0]sd_dat;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input sd_clk;
  input S_AXI_ARVALID;
  input [4:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [4:0]S_AXI_ARADDR;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [6:2]axi_araddr;
  wire axi_arready0;
  wire [6:2]axi_awaddr;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[31]_i_10_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[31]_i_9_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire [31:0]block_limit;
  wire [31:0]card_status_out;
  wire cmd_missed;
  wire cmd_missed1;
  wire cmd_saved_missed;
  wire cmd_saved_unread;
  wire cmd_unread;
  wire controller_n_100;
  wire controller_n_101;
  wire controller_n_102;
  wire controller_n_103;
  wire controller_n_104;
  wire controller_n_105;
  wire controller_n_106;
  wire controller_n_107;
  wire controller_n_108;
  wire controller_n_109;
  wire controller_n_110;
  wire controller_n_111;
  wire controller_n_112;
  wire controller_n_113;
  wire controller_n_114;
  wire controller_n_115;
  wire controller_n_116;
  wire controller_n_117;
  wire controller_n_118;
  wire controller_n_119;
  wire controller_n_124;
  wire controller_n_312;
  wire controller_n_313;
  wire controller_n_314;
  wire controller_n_315;
  wire controller_n_316;
  wire controller_n_317;
  wire controller_n_318;
  wire controller_n_66;
  wire controller_n_76;
  wire controller_n_77;
  wire controller_n_78;
  wire controller_n_79;
  wire controller_n_81;
  wire controller_n_83;
  wire controller_n_84;
  wire controller_n_85;
  wire controller_n_86;
  wire controller_n_87;
  wire controller_n_88;
  wire controller_n_89;
  wire controller_n_90;
  wire controller_n_91;
  wire controller_n_92;
  wire controller_n_93;
  wire controller_n_94;
  wire controller_n_95;
  wire controller_n_96;
  wire controller_n_97;
  wire controller_n_98;
  wire controller_n_99;
  wire [31:0]dat_blocks_read;
  wire \dat_controller/fifo/ram_empty ;
  wire \dat_controller/fifo_empty ;
  wire \dat_controller/write_ok15_in ;
  wire dat_crc_err;
  wire dat_width_4;
  wire dat_width_4_i_1_n_0;
  wire data_write_en;
  wire device_reset_r;
  wire empty_i_1_n_0;
  wire [31:0]erase_end;
  wire [31:0]erase_start;
  wire inactive_i_1_n_0;
  wire interrupt;
  wire is_inactive;
  wire [31:0]last_cmd_arg;
  wire last_cmd_is_acmd;
  wire no_more_write_data;
  wire [31:0]p_0_in;
  wire p_0_in9_out;
  wire p_1_in;
  wire [22:0]pre_erase_count;
  wire [2:0]ram_dev_addr;
  wire [31:0]ram_dev_data;
  wire [31:0]ram_dev_data0;
  wire read_crc_err_i_1_n_0;
  wire [31:0]\reg_clear_always[12]_13 ;
  wire [31:0]\reg_clear_always[13]_14 ;
  wire [28:18]\reg_clear_reset[10]_9 ;
  wire [31:0]\reg_clear_reset[11]_10 ;
  wire [31:24]\reg_clear_reset[8]_12 ;
  wire [31:0]\reg_clear_reset[9]_11 ;
  wire [31:0]reg_data_out;
  wire [31:0]reg_data_out0;
  wire reg_data_out15_out;
  wire [31:0]\reg_saved_reg[17] ;
  wire [31:0]\reg_saved_reg[18] ;
  wire [31:0]\reg_saved_reg[19] ;
  wire [31:0]\reg_saved_reg[20] ;
  wire [31:0]\reg_saved_reg[21] ;
  wire [31:0]\reg_saved_reg[22] ;
  wire [22:0]\reg_saved_reg[23] ;
  wire [31:0]\reg_saved_reg[24] ;
  wire [31:0]saved_cmd_arg;
  wire \sd_bus_interface/dat_unit/read_block_end ;
  wire \sd_bus_interface/sd_clk_div_d_reg ;
  wire sd_clk;
  wire \sd_clk_div_d[0]_i_1_n_0 ;
  wire sd_cmd;
  wire sd_cmd_i;
  wire sd_cmd_o;
  wire sd_cmd_t;
  wire [3:0]sd_dat;
  wire sd_dat3_pullup;
  wire sd_dat3_pullup_off;
  wire [3:0]sd_dat_i;
  wire [3:0]sd_dat_o;
  wire [3:3]sd_dat_t;
  wire \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ;
  wire \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ;
  wire \set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0 ;
  wire \set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0 ;
  wire \set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0] ;
  wire \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ;
  wire \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ;
  wire \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ;
  wire \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ;
  wire status_read;
  wire [1:0]NLW_ram_reg_r1_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_7_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_7_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(cmd_missed1));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_araddr[2]),
        .R(cmd_missed1));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_araddr[3]),
        .R(cmd_missed1));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_araddr[4]),
        .R(cmd_missed1));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_araddr[5]),
        .R(cmd_missed1));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[4]),
        .Q(axi_araddr[6]),
        .R(cmd_missed1));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(cmd_missed1));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready_i_2_n_0),
        .D(S_AXI_AWADDR[0]),
        .Q(axi_awaddr[2]),
        .R(cmd_missed1));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready_i_2_n_0),
        .D(S_AXI_AWADDR[1]),
        .Q(axi_awaddr[3]),
        .R(cmd_missed1));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready_i_2_n_0),
        .D(S_AXI_AWADDR[2]),
        .Q(axi_awaddr[4]),
        .R(cmd_missed1));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready_i_2_n_0),
        .D(S_AXI_AWADDR[3]),
        .Q(axi_awaddr[5]),
        .R(cmd_missed1));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready_i_2_n_0),
        .D(S_AXI_AWADDR[4]),
        .Q(axi_awaddr[6]),
        .R(cmd_missed1));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(cmd_missed1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(cmd_missed1));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(reg_data_out15_out),
        .I2(controller_n_83),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[0]),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[0]_i_2 
       (.I0(\reg_clear_reset[9]_11 [0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\reg_saved_reg[23] [0]),
        .I1(\reg_saved_reg[22] [0]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [0]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(reg_data_out15_out),
        .I2(controller_n_105),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[10]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[10]_i_2 
       (.I0(\reg_clear_reset[9]_11 [10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\reg_saved_reg[23] [10]),
        .I1(\reg_saved_reg[22] [10]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [10]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[11]_i_1 
       (.I0(p_0_in[11]),
        .I1(reg_data_out15_out),
        .I2(controller_n_104),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[11]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[11]_i_2 
       (.I0(\reg_clear_reset[9]_11 [11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\reg_saved_reg[23] [11]),
        .I1(\reg_saved_reg[22] [11]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [11]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(reg_data_out15_out),
        .I2(controller_n_103),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[12]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[12]_i_2 
       (.I0(\reg_clear_reset[9]_11 [12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\reg_saved_reg[23] [12]),
        .I1(\reg_saved_reg[22] [12]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [12]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[13]_i_1 
       (.I0(p_0_in[13]),
        .I1(reg_data_out15_out),
        .I2(controller_n_102),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[13]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[13]_i_2 
       (.I0(\reg_clear_reset[9]_11 [13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\reg_saved_reg[23] [13]),
        .I1(\reg_saved_reg[22] [13]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [13]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(reg_data_out15_out),
        .I2(controller_n_101),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[14]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[14]_i_2 
       (.I0(\reg_clear_reset[9]_11 [14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\reg_saved_reg[23] [14]),
        .I1(\reg_saved_reg[22] [14]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [14]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[15]_i_1 
       (.I0(p_0_in[15]),
        .I1(reg_data_out15_out),
        .I2(controller_n_100),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[15]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[15]_i_2 
       (.I0(\reg_clear_reset[9]_11 [15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\reg_saved_reg[23] [15]),
        .I1(\reg_saved_reg[22] [15]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [15]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\reg_saved_reg[19] [15]),
        .I1(\reg_saved_reg[18] [15]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[17] [15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[16]_i_1 
       (.I0(p_0_in[16]),
        .I1(reg_data_out15_out),
        .I2(controller_n_99),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[16]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[16]_i_2 
       (.I0(\reg_clear_reset[9]_11 [16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [16]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\reg_saved_reg[23] [16]),
        .I1(\reg_saved_reg[22] [16]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [16]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[17]_i_1 
       (.I0(p_0_in[17]),
        .I1(reg_data_out15_out),
        .I2(controller_n_98),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[17]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[17]_i_2 
       (.I0(\reg_clear_reset[9]_11 [17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\reg_saved_reg[23] [17]),
        .I1(\reg_saved_reg[22] [17]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [17]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[18]_i_1 
       (.I0(p_0_in[18]),
        .I1(reg_data_out15_out),
        .I2(controller_n_97),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[18]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \axi_rdata[18]_i_2 
       (.I0(\reg_clear_reset[9]_11 [18]),
        .I1(\reg_clear_reset[11]_10 [18]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_clear_reset[10]_9 [18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\reg_saved_reg[23] [18]),
        .I1(\reg_saved_reg[22] [18]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [18]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\reg_saved_reg[19] [18]),
        .I1(\reg_saved_reg[18] [18]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[17] [18]),
        .I4(axi_araddr[2]),
        .I5(cmd_saved_unread),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[19]_i_1 
       (.I0(p_0_in[19]),
        .I1(reg_data_out15_out),
        .I2(controller_n_96),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[19]),
        .O(reg_data_out[19]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[19]_i_2 
       (.I0(\reg_clear_reset[9]_11 [19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\reg_saved_reg[23] [19]),
        .I1(\reg_saved_reg[22] [19]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [19]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\reg_saved_reg[19] [19]),
        .I1(\reg_saved_reg[18] [19]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[17] [19]),
        .I4(axi_araddr[2]),
        .I5(cmd_saved_missed),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(reg_data_out15_out),
        .I2(controller_n_114),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[1]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[1]_i_2 
       (.I0(\reg_clear_reset[9]_11 [1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\reg_saved_reg[23] [1]),
        .I1(\reg_saved_reg[22] [1]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [1]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[20]_i_1 
       (.I0(p_0_in[20]),
        .I1(reg_data_out15_out),
        .I2(controller_n_95),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \axi_rdata[20]_i_2 
       (.I0(\reg_clear_reset[9]_11 [20]),
        .I1(\reg_clear_reset[11]_10 [20]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_clear_reset[10]_9 [20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\reg_saved_reg[23] [20]),
        .I1(\reg_saved_reg[22] [20]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [20]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\reg_saved_reg[19] [20]),
        .I1(\reg_saved_reg[18] [20]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[17] [20]),
        .I4(axi_araddr[2]),
        .I5(cmd_unread),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[21]_i_1 
       (.I0(p_0_in[21]),
        .I1(reg_data_out15_out),
        .I2(controller_n_94),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[21]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[21]_i_2 
       (.I0(\reg_clear_reset[9]_11 [21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\reg_saved_reg[23] [21]),
        .I1(\reg_saved_reg[22] [21]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [21]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\reg_saved_reg[19] [21]),
        .I1(\reg_saved_reg[18] [21]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[17] [21]),
        .I4(axi_araddr[2]),
        .I5(cmd_missed),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[22]_i_1 
       (.I0(p_0_in[22]),
        .I1(reg_data_out15_out),
        .I2(controller_n_93),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \axi_rdata[22]_i_2 
       (.I0(\reg_clear_reset[9]_11 [22]),
        .I1(\reg_clear_reset[11]_10 [22]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_clear_reset[10]_9 [22]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\reg_saved_reg[23] [22]),
        .I1(\reg_saved_reg[22] [22]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [22]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[23]_i_1 
       (.I0(p_0_in[23]),
        .I1(reg_data_out15_out),
        .I2(controller_n_92),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \axi_rdata[23]_i_2 
       (.I0(\reg_clear_reset[9]_11 [23]),
        .I1(\reg_clear_reset[11]_10 [23]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_clear_reset[10]_9 [23]),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_4 
       (.I0(\reg_saved_reg[22] [23]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [23]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\reg_saved_reg[19] [23]),
        .I1(\reg_saved_reg[18] [23]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[17] [23]),
        .I4(axi_araddr[2]),
        .I5(device_reset_r),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[24]_i_1 
       (.I0(p_0_in[24]),
        .I1(reg_data_out15_out),
        .I2(controller_n_91),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[24]_i_2 
       (.I0(\reg_clear_reset[9]_11 [24]),
        .I1(\reg_clear_reset[8]_12 [24]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [24]),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_4 
       (.I0(\reg_saved_reg[22] [24]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [24]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[25]_i_1 
       (.I0(p_0_in[25]),
        .I1(reg_data_out15_out),
        .I2(controller_n_90),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[25]_i_2 
       (.I0(\reg_clear_reset[9]_11 [25]),
        .I1(\reg_clear_reset[8]_12 [25]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [25]),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_4 
       (.I0(\reg_saved_reg[22] [25]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [25]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[26]_i_1 
       (.I0(p_0_in[26]),
        .I1(reg_data_out15_out),
        .I2(controller_n_89),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[26]_i_2 
       (.I0(\reg_clear_reset[9]_11 [26]),
        .I1(\reg_clear_reset[8]_12 [26]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [26]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_4 
       (.I0(\reg_saved_reg[22] [26]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [26]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[27]_i_1 
       (.I0(p_0_in[27]),
        .I1(reg_data_out15_out),
        .I2(controller_n_88),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_2 
       (.I0(\reg_clear_reset[9]_11 [27]),
        .I1(\reg_clear_reset[8]_12 [27]),
        .I2(\reg_clear_reset[11]_10 [27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\reg_clear_reset[10]_9 [27]),
        .O(p_0_in[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_4 
       (.I0(\reg_saved_reg[22] [27]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [27]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[28]_i_1 
       (.I0(p_0_in[28]),
        .I1(reg_data_out15_out),
        .I2(controller_n_87),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_2 
       (.I0(\reg_clear_reset[9]_11 [28]),
        .I1(\reg_clear_reset[8]_12 [28]),
        .I2(\reg_clear_reset[11]_10 [28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\reg_clear_reset[10]_9 [28]),
        .O(p_0_in[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_4 
       (.I0(\reg_saved_reg[22] [28]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [28]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[29]_i_1 
       (.I0(p_0_in[29]),
        .I1(reg_data_out15_out),
        .I2(controller_n_86),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[29]_i_2 
       (.I0(\reg_clear_reset[9]_11 [29]),
        .I1(\reg_clear_reset[8]_12 [29]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [29]),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_4 
       (.I0(\reg_saved_reg[22] [29]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [29]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\reg_saved_reg[19] [29]),
        .I1(\reg_saved_reg[18] [29]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[17] [29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(reg_data_out15_out),
        .I2(controller_n_113),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[2]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[2]_i_2 
       (.I0(\reg_clear_reset[9]_11 [2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\reg_saved_reg[23] [2]),
        .I1(\reg_saved_reg[22] [2]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [2]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[30]_i_1 
       (.I0(p_0_in[30]),
        .I1(reg_data_out15_out),
        .I2(controller_n_85),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[30]_i_2 
       (.I0(\reg_clear_reset[9]_11 [30]),
        .I1(\reg_clear_reset[8]_12 [30]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [30]),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_4 
       (.I0(\reg_saved_reg[22] [30]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [30]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\reg_saved_reg[19] [30]),
        .I1(\reg_saved_reg[18] [30]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[17] [30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50100000FFFFFFFF)) 
    \axi_rdata[31]_i_1 
       (.I0(reg_data_out15_out),
        .I1(axi_araddr[6]),
        .I2(axi_araddr[5]),
        .I3(\axi_rdata[31]_i_5_n_0 ),
        .I4(controller_n_81),
        .I5(S_AXI_ARESETN),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_10 
       (.I0(\reg_saved_reg[19] [31]),
        .I1(\reg_saved_reg[18] [31]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[17] [31]),
        .O(\axi_rdata[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[31]_i_3 
       (.I0(p_0_in[31]),
        .I1(reg_data_out15_out),
        .I2(controller_n_84),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[31]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h00001500)) 
    \axi_rdata[31]_i_4 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .O(reg_data_out15_out));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[31]_i_5 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[31]_i_6 
       (.I0(\reg_clear_reset[9]_11 [31]),
        .I1(\reg_clear_reset[8]_12 [31]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\reg_clear_reset[11]_10 [31]),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_8 
       (.I0(\reg_saved_reg[22] [31]),
        .I1(axi_araddr[3]),
        .I2(\reg_saved_reg[21] [31]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[20] [31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[31]_i_9 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[4]),
        .O(\axi_rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(reg_data_out15_out),
        .I2(controller_n_112),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[3]),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[3]_i_2 
       (.I0(\reg_clear_reset[9]_11 [3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\reg_saved_reg[23] [3]),
        .I1(\reg_saved_reg[22] [3]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [3]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(reg_data_out15_out),
        .I2(controller_n_111),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[4]),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[4]_i_2 
       (.I0(\reg_clear_reset[9]_11 [4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\reg_saved_reg[23] [4]),
        .I1(\reg_saved_reg[22] [4]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [4]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(reg_data_out15_out),
        .I2(controller_n_110),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[5]),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[5]_i_2 
       (.I0(\reg_clear_reset[9]_11 [5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\reg_saved_reg[23] [5]),
        .I1(\reg_saved_reg[22] [5]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [5]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(reg_data_out15_out),
        .I2(controller_n_109),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[6]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[6]_i_2 
       (.I0(\reg_clear_reset[9]_11 [6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\reg_saved_reg[23] [6]),
        .I1(\reg_saved_reg[22] [6]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [6]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[7]_i_1 
       (.I0(p_0_in[7]),
        .I1(reg_data_out15_out),
        .I2(controller_n_108),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[7]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[7]_i_2 
       (.I0(\reg_clear_reset[9]_11 [7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\reg_saved_reg[23] [7]),
        .I1(\reg_saved_reg[22] [7]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [7]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\reg_saved_reg[19] [7]),
        .I1(\reg_saved_reg[18] [7]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(\reg_saved_reg[17] [7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(reg_data_out15_out),
        .I2(controller_n_107),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[8]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[8]_i_2 
       (.I0(\reg_clear_reset[9]_11 [8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\reg_saved_reg[23] [8]),
        .I1(\reg_saved_reg[22] [8]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [8]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \axi_rdata[9]_i_1 
       (.I0(p_0_in[9]),
        .I1(reg_data_out15_out),
        .I2(controller_n_106),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[5]),
        .I5(reg_data_out0[9]),
        .O(reg_data_out[9]));
  LUT4 #(
    .INIT(16'hC808)) 
    \axi_rdata[9]_i_2 
       (.I0(\reg_clear_reset[9]_11 [9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\reg_clear_reset[11]_10 [9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\reg_saved_reg[23] [9]),
        .I1(\reg_saved_reg[22] [9]),
        .I2(axi_araddr[3]),
        .I3(\reg_saved_reg[21] [9]),
        .I4(axi_araddr[2]),
        .I5(\reg_saved_reg[20] [9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(controller_n_81),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(cmd_missed1));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(cmd_missed1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    buf_cmd
       (.I(sd_cmd_o),
        .IO(sd_cmd),
        .O(sd_cmd_i),
        .T(sd_cmd_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    buf_dat3_pullup
       (.I(1'b1),
        .O(sd_dat3_pullup),
        .T(sd_dat3_pullup_off));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[0].buf_dat 
       (.I(sd_dat_o[0]),
        .IO(sd_dat[0]),
        .O(sd_dat_i[0]),
        .T(sd_dat_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[1].buf_dat 
       (.I(sd_dat_o[1]),
        .IO(sd_dat[1]),
        .O(sd_dat_i[1]),
        .T(sd_dat_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[2].buf_dat 
       (.I(sd_dat_o[2]),
        .IO(sd_dat[2]),
        .O(sd_dat_i[2]),
        .T(sd_dat_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[3].buf_dat 
       (.I(sd_dat_o[3]),
        .IO(sd_dat[3]),
        .O(sd_dat_i[3]),
        .T(sd_dat_t));
  FDRE cmd_missed_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(controller_n_118),
        .Q(cmd_missed),
        .R(1'b0));
  FDRE cmd_saved_missed_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(controller_n_117),
        .Q(cmd_saved_missed),
        .R(1'b0));
  FDRE cmd_saved_unread_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(controller_n_115),
        .Q(cmd_saved_unread),
        .R(cmd_missed1));
  FDRE cmd_unread_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(controller_n_116),
        .Q(cmd_unread),
        .R(cmd_missed1));
  adapter_axi_sd_0_0_device controller
       (.CO(\dat_controller/fifo/ram_empty ),
        .D(\sd_bus_interface/sd_clk_div_d_reg ),
        .E(controller_n_81),
        .\FSM_onehot_state_reg[0]_0 (controller_n_77),
        .\FSM_onehot_state_reg[4]_0 (controller_n_76),
        .\FSM_onehot_sys_state_reg[0] (\set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0] ),
        .Q(last_cmd_arg),
        .SR(controller_n_79),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\axi_rdata[28]_i_3 ({\reg_saved_reg[19] [28:24],\reg_saved_reg[19] [22],\reg_saved_reg[19] [17:16],\reg_saved_reg[19] [14:8],\reg_saved_reg[19] [6:0]}),
        .\axi_rdata[28]_i_3_0 ({\reg_saved_reg[18] [28:24],\reg_saved_reg[18] [22],\reg_saved_reg[18] [17:16],\reg_saved_reg[18] [14:8],\reg_saved_reg[18] [6:0]}),
        .\axi_rdata[28]_i_3_1 ({\reg_saved_reg[17] [28:24],\reg_saved_reg[17] [22],\reg_saved_reg[17] [17:16],\reg_saved_reg[17] [14:13],\reg_saved_reg[17] [11:8],\reg_saved_reg[17] [6:0]}),
        .\axi_rdata_reg[0] (S_AXI_ARREADY),
        .\axi_rdata_reg[0]_0 (axi_rvalid_reg_0),
        .\axi_rdata_reg[0]_1 (\axi_rdata[0]_i_4_n_0 ),
        .\axi_rdata_reg[0]_2 (\axi_rdata[31]_i_9_n_0 ),
        .\axi_rdata_reg[10] (\axi_rdata[10]_i_4_n_0 ),
        .\axi_rdata_reg[11] (\axi_rdata[11]_i_4_n_0 ),
        .\axi_rdata_reg[12] (\axi_rdata[12]_i_4_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata[13]_i_4_n_0 ),
        .\axi_rdata_reg[14] (\axi_rdata[14]_i_4_n_0 ),
        .\axi_rdata_reg[15] (\axi_rdata[15]_i_4_n_0 ),
        .\axi_rdata_reg[15]_0 (\axi_rdata[15]_i_5_n_0 ),
        .\axi_rdata_reg[16] (\axi_rdata[16]_i_4_n_0 ),
        .\axi_rdata_reg[17] (\axi_rdata[17]_i_4_n_0 ),
        .\axi_rdata_reg[18] (\axi_rdata[18]_i_4_n_0 ),
        .\axi_rdata_reg[18]_0 (\axi_rdata[18]_i_5_n_0 ),
        .\axi_rdata_reg[19] (\axi_rdata[19]_i_4_n_0 ),
        .\axi_rdata_reg[19]_0 (\axi_rdata[19]_i_5_n_0 ),
        .\axi_rdata_reg[1] (\axi_rdata[1]_i_4_n_0 ),
        .\axi_rdata_reg[20] (\axi_rdata[20]_i_4_n_0 ),
        .\axi_rdata_reg[20]_0 (\axi_rdata[20]_i_5_n_0 ),
        .\axi_rdata_reg[21] (\axi_rdata[21]_i_4_n_0 ),
        .\axi_rdata_reg[21]_0 (\axi_rdata[21]_i_5_n_0 ),
        .\axi_rdata_reg[22] (\axi_rdata[22]_i_4_n_0 ),
        .\axi_rdata_reg[23] (\axi_rdata[23]_i_4_n_0 ),
        .\axi_rdata_reg[23]_0 (\axi_rdata[23]_i_5_n_0 ),
        .\axi_rdata_reg[24] (\axi_rdata[24]_i_4_n_0 ),
        .\axi_rdata_reg[25] (\axi_rdata[25]_i_4_n_0 ),
        .\axi_rdata_reg[26] (\axi_rdata[26]_i_4_n_0 ),
        .\axi_rdata_reg[27] (\axi_rdata[27]_i_4_n_0 ),
        .\axi_rdata_reg[28] (\axi_rdata[28]_i_4_n_0 ),
        .\axi_rdata_reg[29] (\axi_rdata[29]_i_4_n_0 ),
        .\axi_rdata_reg[29]_0 (\axi_rdata[29]_i_5_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_4_n_0 ),
        .\axi_rdata_reg[30] (\axi_rdata[30]_i_4_n_0 ),
        .\axi_rdata_reg[30]_0 (\axi_rdata[30]_i_5_n_0 ),
        .\axi_rdata_reg[31] (\reg_saved_reg[24] ),
        .\axi_rdata_reg[31]_0 (\axi_rdata[31]_i_8_n_0 ),
        .\axi_rdata_reg[31]_1 (\axi_rdata[31]_i_10_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata[3]_i_4_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_4_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata[5]_i_4_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata[6]_i_4_n_0 ),
        .\axi_rdata_reg[7] (\axi_rdata[7]_i_4_n_0 ),
        .\axi_rdata_reg[7]_0 (\axi_rdata[7]_i_5_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata[8]_i_4_n_0 ),
        .\axi_rdata_reg[9] (\axi_rdata[9]_i_4_n_0 ),
        .\block_count_reg[31] (block_limit),
        .\card_status_reg[31] ({card_status_out[31:13],card_status_out[11:9],controller_n_66,card_status_out[7:0]}),
        .\card_status_reg[31]_0 ({\reg_clear_always[12]_13 [31:13],\reg_clear_always[12]_13 [7:0]}),
        .\card_status_reg[31]_1 ({\reg_clear_always[13]_14 [31:13],\reg_clear_always[13]_14 [7:0]}),
        .\cmd_arg_reg[19] (controller_n_313),
        .\cmd_index_reg[1] (controller_n_78),
        .\cmd_index_reg[5] (controller_n_312),
        .\cmd_index_reg[5]_0 (controller_n_314),
        .cmd_missed(cmd_missed),
        .cmd_missed1(cmd_missed1),
        .cmd_missed_reg(controller_n_118),
        .cmd_saved_missed(cmd_saved_missed),
        .cmd_saved_missed_reg(controller_n_117),
        .cmd_saved_unread(cmd_saved_unread),
        .cmd_unread(cmd_unread),
        .\crc_reg[10] (controller_n_315),
        .\crc_reg[10]_0 (controller_n_318),
        .\crc_reg[2] (controller_n_316),
        .\crc_reg[2]_0 (controller_n_317),
        .dat_blocks_read(dat_blocks_read),
        .dat_crc_err(dat_crc_err),
        .dat_width_4(dat_width_4),
        .dat_width_4_reg(dat_width_4_i_1_n_0),
        .data_write_en(data_write_en),
        .device_reset_r(device_reset_r),
        .device_reset_r_reg(controller_n_119),
        .empty_reg(empty_i_1_n_0),
        .\erase_end_reg[31] (erase_end),
        .\erase_start_reg[31] (erase_start),
        .fifo_empty(\dat_controller/fifo_empty ),
        .got_acmd41_non_query_reg(controller_n_124),
        .got_new_cmd_out_reg_0(controller_n_116),
        .inactive_reg(inactive_i_1_n_0),
        .interrupt(interrupt),
        .interrupt_0({\reg_clear_reset[10]_9 [28:27],\reg_clear_reset[10]_9 [23:22],\reg_clear_reset[10]_9 [20],\reg_clear_reset[10]_9 [18]}),
        .is_inactive(is_inactive),
        .last_cmd_is_acmd(last_cmd_is_acmd),
        .new_cmd_saved_reg(controller_n_115),
        .no_more_write_data(no_more_write_data),
        .\ocr_high_byte_reg[31]_0 (\reg_clear_reset[8]_12 ),
        .\pre_erase_count_reg[22] (pre_erase_count),
        .ram_dev_addr(ram_dev_addr),
        .ram_dev_data(ram_dev_data),
        .ram_reg(controller_n_83),
        .ram_reg_0(controller_n_84),
        .ram_reg_1(controller_n_85),
        .ram_reg_10(controller_n_94),
        .ram_reg_11(controller_n_95),
        .ram_reg_12(controller_n_96),
        .ram_reg_13(controller_n_97),
        .ram_reg_14(controller_n_98),
        .ram_reg_15(controller_n_99),
        .ram_reg_16(controller_n_100),
        .ram_reg_17(controller_n_101),
        .ram_reg_18(controller_n_102),
        .ram_reg_19(controller_n_103),
        .ram_reg_2(controller_n_86),
        .ram_reg_20(controller_n_104),
        .ram_reg_21(controller_n_105),
        .ram_reg_22(controller_n_106),
        .ram_reg_23(controller_n_107),
        .ram_reg_24(controller_n_108),
        .ram_reg_25(controller_n_109),
        .ram_reg_26(controller_n_110),
        .ram_reg_27(controller_n_111),
        .ram_reg_28(controller_n_112),
        .ram_reg_29(controller_n_113),
        .ram_reg_3(controller_n_87),
        .ram_reg_30(controller_n_114),
        .ram_reg_31(\reg_clear_reset[11]_10 ),
        .ram_reg_4(controller_n_88),
        .ram_reg_5(controller_n_89),
        .ram_reg_6(controller_n_90),
        .ram_reg_7(controller_n_91),
        .ram_reg_8(controller_n_92),
        .ram_reg_9(controller_n_93),
        .read_block_end(\sd_bus_interface/dat_unit/read_block_end ),
        .read_crc_err_reg(read_crc_err_i_1_n_0),
        .\reg_saved_reg[24][0] (axi_araddr),
        .\saved_cmd_arg_reg[31] (saved_cmd_arg),
        .sd_clk(sd_clk),
        .\sd_clk_div_d_reg[0] (\sd_clk_div_d[0]_i_1_n_0 ),
        .sd_cmd_i(sd_cmd_i),
        .sd_cmd_o(sd_cmd_o),
        .sd_cmd_t(sd_cmd_t),
        .sd_dat3_pullup_off(sd_dat3_pullup_off),
        .\sd_dat_d_reg[0][3] (sd_dat_i),
        .\sd_dat_o_reg[3] (sd_dat_o),
        .sd_dat_t(sd_dat_t),
        .\size_reg[31]_0 (\reg_clear_reset[9]_11 ),
        .status_read(status_read),
        .write_ok15_in(\dat_controller/write_ok15_in ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    dat_width_4_i_1
       (.I0(last_cmd_arg[1]),
        .I1(controller_n_312),
        .I2(last_cmd_is_acmd),
        .I3(controller_n_77),
        .I4(last_cmd_arg[0]),
        .I5(dat_width_4),
        .O(dat_width_4_i_1_n_0));
  FDRE data_write_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .Q(data_write_en),
        .R(cmd_missed1));
  FDRE device_reset_r_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(controller_n_119),
        .Q(device_reset_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFC8)) 
    empty_i_1
       (.I0(controller_n_76),
        .I1(\dat_controller/fifo/ram_empty ),
        .I2(\dat_controller/fifo_empty ),
        .I3(\dat_controller/write_ok15_in ),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    inactive_i_1
       (.I0(controller_n_124),
        .I1(controller_n_313),
        .I2(controller_n_78),
        .I3(controller_n_314),
        .I4(controller_n_77),
        .I5(is_inactive),
        .O(inactive_i_1_n_0));
  FDRE \ram_dev_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[0]),
        .Q(ram_dev_data[0]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[10]),
        .Q(ram_dev_data[10]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[11]),
        .Q(ram_dev_data[11]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[12]),
        .Q(ram_dev_data[12]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[13]),
        .Q(ram_dev_data[13]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[14]),
        .Q(ram_dev_data[14]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[15]),
        .Q(ram_dev_data[15]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[16]),
        .Q(ram_dev_data[16]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[17]),
        .Q(ram_dev_data[17]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[18]),
        .Q(ram_dev_data[18]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[19]),
        .Q(ram_dev_data[19]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[1]),
        .Q(ram_dev_data[1]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[20]),
        .Q(ram_dev_data[20]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[21]),
        .Q(ram_dev_data[21]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[22]),
        .Q(ram_dev_data[22]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[23]),
        .Q(ram_dev_data[23]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[24]),
        .Q(ram_dev_data[24]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[25]),
        .Q(ram_dev_data[25]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[26]),
        .Q(ram_dev_data[26]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[27]),
        .Q(ram_dev_data[27]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[28]),
        .Q(ram_dev_data[28]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[29]),
        .Q(ram_dev_data[29]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[2]),
        .Q(ram_dev_data[2]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[30]),
        .Q(ram_dev_data[30]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[31]),
        .Q(ram_dev_data[31]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[3]),
        .Q(ram_dev_data[3]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[4]),
        .Q(ram_dev_data[4]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[5]),
        .Q(ram_dev_data[5]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[6]),
        .Q(ram_dev_data[6]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[7]),
        .Q(ram_dev_data[7]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[8]),
        .Q(ram_dev_data[8]),
        .R(cmd_missed1));
  FDRE \ram_dev_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ram_dev_data0[9]),
        .Q(ram_dev_data[9]),
        .R(cmd_missed1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_r1_0_7_0_5
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[1:0]),
        .DIB(S_AXI_WDATA[3:2]),
        .DIC(S_AXI_WDATA[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[1:0]),
        .DOB(reg_data_out0[3:2]),
        .DOC(reg_data_out0[5:4]),
        .DOD(NLW_ram_reg_r1_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    ram_reg_r1_0_7_0_5_i_1
       (.I0(axi_awaddr[5]),
        .I1(axi_awaddr[6]),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_WREADY),
        .I5(S_AXI_AWREADY),
        .O(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_r1_0_7_12_17
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[13:12]),
        .DIB(S_AXI_WDATA[15:14]),
        .DIC(S_AXI_WDATA[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[13:12]),
        .DOB(reg_data_out0[15:14]),
        .DOC(reg_data_out0[17:16]),
        .DOD(NLW_ram_reg_r1_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_r1_0_7_18_23
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[19:18]),
        .DIB(S_AXI_WDATA[21:20]),
        .DIC(S_AXI_WDATA[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[19:18]),
        .DOB(reg_data_out0[21:20]),
        .DOC(reg_data_out0[23:22]),
        .DOD(NLW_ram_reg_r1_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M ram_reg_r1_0_7_24_29
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[25:24]),
        .DIB(S_AXI_WDATA[27:26]),
        .DIC(S_AXI_WDATA[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[25:24]),
        .DOB(reg_data_out0[27:26]),
        .DOC(reg_data_out0[29:28]),
        .DOD(NLW_ram_reg_r1_0_7_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M ram_reg_r1_0_7_30_31
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[31:30]),
        .DOB(NLW_ram_reg_r1_0_7_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_r1_0_7_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_r1_0_7_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_r1_0_7_6_11
       (.ADDRA({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRB({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRC({1'b0,1'b0,axi_araddr[4:2]}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[7:6]),
        .DIB(S_AXI_WDATA[9:8]),
        .DIC(S_AXI_WDATA[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(reg_data_out0[7:6]),
        .DOB(reg_data_out0[9:8]),
        .DOC(reg_data_out0[11:10]),
        .DOD(NLW_ram_reg_r1_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_r2_0_7_0_5
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[1:0]),
        .DIB(S_AXI_WDATA[3:2]),
        .DIC(S_AXI_WDATA[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[1:0]),
        .DOB(ram_dev_data0[3:2]),
        .DOC(ram_dev_data0[5:4]),
        .DOD(NLW_ram_reg_r2_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_r2_0_7_12_17
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[13:12]),
        .DIB(S_AXI_WDATA[15:14]),
        .DIC(S_AXI_WDATA[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[13:12]),
        .DOB(ram_dev_data0[15:14]),
        .DOC(ram_dev_data0[17:16]),
        .DOD(NLW_ram_reg_r2_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_r2_0_7_18_23
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[19:18]),
        .DIB(S_AXI_WDATA[21:20]),
        .DIC(S_AXI_WDATA[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[19:18]),
        .DOB(ram_dev_data0[21:20]),
        .DOC(ram_dev_data0[23:22]),
        .DOD(NLW_ram_reg_r2_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M ram_reg_r2_0_7_24_29
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[25:24]),
        .DIB(S_AXI_WDATA[27:26]),
        .DIC(S_AXI_WDATA[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[25:24]),
        .DOB(ram_dev_data0[27:26]),
        .DOC(ram_dev_data0[29:28]),
        .DOD(NLW_ram_reg_r2_0_7_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M ram_reg_r2_0_7_30_31
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[31:30]),
        .DOB(NLW_ram_reg_r2_0_7_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_r2_0_7_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_r2_0_7_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_r2_0_7_6_11
       (.ADDRA({1'b0,1'b0,ram_dev_addr}),
        .ADDRB({1'b0,1'b0,ram_dev_addr}),
        .ADDRC({1'b0,1'b0,ram_dev_addr}),
        .ADDRD({1'b0,1'b0,axi_awaddr[4:2]}),
        .DIA(S_AXI_WDATA[7:6]),
        .DIB(S_AXI_WDATA[9:8]),
        .DIC(S_AXI_WDATA[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ram_dev_data0[7:6]),
        .DOB(ram_dev_data0[9:8]),
        .DOC(ram_dev_data0[11:10]),
        .DOD(NLW_ram_reg_r2_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in9_out));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    read_crc_err_i_1
       (.I0(controller_n_317),
        .I1(controller_n_318),
        .I2(controller_n_315),
        .I3(controller_n_316),
        .I4(\sd_bus_interface/dat_unit/read_block_end ),
        .I5(dat_crc_err),
        .O(read_crc_err_i_1_n_0));
  FDRE \reg_saved_reg[17][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[0]),
        .Q(\reg_saved_reg[17] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[10]),
        .Q(\reg_saved_reg[17] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[11]),
        .Q(\reg_saved_reg[17] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[13]),
        .Q(\reg_saved_reg[17] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[14]),
        .Q(\reg_saved_reg[17] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[15]),
        .Q(\reg_saved_reg[17] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[16]),
        .Q(\reg_saved_reg[17] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[17]),
        .Q(\reg_saved_reg[17] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[18]),
        .Q(\reg_saved_reg[17] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[19]),
        .Q(\reg_saved_reg[17] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[1]),
        .Q(\reg_saved_reg[17] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[20]),
        .Q(\reg_saved_reg[17] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[21]),
        .Q(\reg_saved_reg[17] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[22]),
        .Q(\reg_saved_reg[17] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[23]),
        .Q(\reg_saved_reg[17] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[24]),
        .Q(\reg_saved_reg[17] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[25]),
        .Q(\reg_saved_reg[17] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[26]),
        .Q(\reg_saved_reg[17] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[27]),
        .Q(\reg_saved_reg[17] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[28]),
        .Q(\reg_saved_reg[17] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[29]),
        .Q(\reg_saved_reg[17] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[2]),
        .Q(\reg_saved_reg[17] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[30]),
        .Q(\reg_saved_reg[17] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[31]),
        .Q(\reg_saved_reg[17] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[3]),
        .Q(\reg_saved_reg[17] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[4]),
        .Q(\reg_saved_reg[17] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[5]),
        .Q(\reg_saved_reg[17] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[6]),
        .Q(\reg_saved_reg[17] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[7]),
        .Q(\reg_saved_reg[17] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(controller_n_66),
        .Q(\reg_saved_reg[17] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[17][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(card_status_out[9]),
        .Q(\reg_saved_reg[17] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[0]),
        .Q(\reg_saved_reg[18] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[10]),
        .Q(\reg_saved_reg[18] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[11]),
        .Q(\reg_saved_reg[18] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[12]),
        .Q(\reg_saved_reg[18] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[13]),
        .Q(\reg_saved_reg[18] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[14]),
        .Q(\reg_saved_reg[18] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[15]),
        .Q(\reg_saved_reg[18] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[16]),
        .Q(\reg_saved_reg[18] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[17]),
        .Q(\reg_saved_reg[18] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[18]),
        .Q(\reg_saved_reg[18] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[19]),
        .Q(\reg_saved_reg[18] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[1]),
        .Q(\reg_saved_reg[18] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[20]),
        .Q(\reg_saved_reg[18] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[21]),
        .Q(\reg_saved_reg[18] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[22]),
        .Q(\reg_saved_reg[18] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[23]),
        .Q(\reg_saved_reg[18] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[24]),
        .Q(\reg_saved_reg[18] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[25]),
        .Q(\reg_saved_reg[18] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[26]),
        .Q(\reg_saved_reg[18] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[27]),
        .Q(\reg_saved_reg[18] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[28]),
        .Q(\reg_saved_reg[18] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[29]),
        .Q(\reg_saved_reg[18] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[2]),
        .Q(\reg_saved_reg[18] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[30]),
        .Q(\reg_saved_reg[18] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[31]),
        .Q(\reg_saved_reg[18] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[3]),
        .Q(\reg_saved_reg[18] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[4]),
        .Q(\reg_saved_reg[18] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[5]),
        .Q(\reg_saved_reg[18] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[6]),
        .Q(\reg_saved_reg[18] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[7]),
        .Q(\reg_saved_reg[18] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[8]),
        .Q(\reg_saved_reg[18] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[18][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(saved_cmd_arg[9]),
        .Q(\reg_saved_reg[18] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[0]),
        .Q(\reg_saved_reg[19] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[10]),
        .Q(\reg_saved_reg[19] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[11]),
        .Q(\reg_saved_reg[19] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[12]),
        .Q(\reg_saved_reg[19] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[13]),
        .Q(\reg_saved_reg[19] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[14]),
        .Q(\reg_saved_reg[19] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[15]),
        .Q(\reg_saved_reg[19] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[16]),
        .Q(\reg_saved_reg[19] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[17]),
        .Q(\reg_saved_reg[19] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[18]),
        .Q(\reg_saved_reg[19] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[19]),
        .Q(\reg_saved_reg[19] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[1]),
        .Q(\reg_saved_reg[19] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[20]),
        .Q(\reg_saved_reg[19] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[21]),
        .Q(\reg_saved_reg[19] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[22]),
        .Q(\reg_saved_reg[19] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[23]),
        .Q(\reg_saved_reg[19] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[24]),
        .Q(\reg_saved_reg[19] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[25]),
        .Q(\reg_saved_reg[19] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[26]),
        .Q(\reg_saved_reg[19] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[27]),
        .Q(\reg_saved_reg[19] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[28]),
        .Q(\reg_saved_reg[19] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[29]),
        .Q(\reg_saved_reg[19] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[2]),
        .Q(\reg_saved_reg[19] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[30]),
        .Q(\reg_saved_reg[19] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[31]),
        .Q(\reg_saved_reg[19] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[3]),
        .Q(\reg_saved_reg[19] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[4]),
        .Q(\reg_saved_reg[19] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[5]),
        .Q(\reg_saved_reg[19] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[6]),
        .Q(\reg_saved_reg[19] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[7]),
        .Q(\reg_saved_reg[19] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[8]),
        .Q(\reg_saved_reg[19] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[19][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(last_cmd_arg[9]),
        .Q(\reg_saved_reg[19] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[0]),
        .Q(\reg_saved_reg[20] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[10]),
        .Q(\reg_saved_reg[20] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[11]),
        .Q(\reg_saved_reg[20] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[12]),
        .Q(\reg_saved_reg[20] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[13]),
        .Q(\reg_saved_reg[20] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[14]),
        .Q(\reg_saved_reg[20] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[15]),
        .Q(\reg_saved_reg[20] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[16]),
        .Q(\reg_saved_reg[20] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[17]),
        .Q(\reg_saved_reg[20] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[18]),
        .Q(\reg_saved_reg[20] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[19]),
        .Q(\reg_saved_reg[20] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[1]),
        .Q(\reg_saved_reg[20] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[20]),
        .Q(\reg_saved_reg[20] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[21]),
        .Q(\reg_saved_reg[20] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[22]),
        .Q(\reg_saved_reg[20] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[23]),
        .Q(\reg_saved_reg[20] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[24]),
        .Q(\reg_saved_reg[20] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[25]),
        .Q(\reg_saved_reg[20] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[26]),
        .Q(\reg_saved_reg[20] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[27]),
        .Q(\reg_saved_reg[20] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[28]),
        .Q(\reg_saved_reg[20] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[29]),
        .Q(\reg_saved_reg[20] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[2]),
        .Q(\reg_saved_reg[20] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[30]),
        .Q(\reg_saved_reg[20] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[31]),
        .Q(\reg_saved_reg[20] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[3]),
        .Q(\reg_saved_reg[20] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[4]),
        .Q(\reg_saved_reg[20] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[5]),
        .Q(\reg_saved_reg[20] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[6]),
        .Q(\reg_saved_reg[20] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[7]),
        .Q(\reg_saved_reg[20] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[8]),
        .Q(\reg_saved_reg[20] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[20][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_start[9]),
        .Q(\reg_saved_reg[20] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[0]),
        .Q(\reg_saved_reg[21] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[10]),
        .Q(\reg_saved_reg[21] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[11]),
        .Q(\reg_saved_reg[21] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[12]),
        .Q(\reg_saved_reg[21] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[13]),
        .Q(\reg_saved_reg[21] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[14]),
        .Q(\reg_saved_reg[21] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[15]),
        .Q(\reg_saved_reg[21] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[16]),
        .Q(\reg_saved_reg[21] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[17]),
        .Q(\reg_saved_reg[21] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[18]),
        .Q(\reg_saved_reg[21] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[19]),
        .Q(\reg_saved_reg[21] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[1]),
        .Q(\reg_saved_reg[21] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[20]),
        .Q(\reg_saved_reg[21] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[21]),
        .Q(\reg_saved_reg[21] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[22]),
        .Q(\reg_saved_reg[21] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[23]),
        .Q(\reg_saved_reg[21] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[24]),
        .Q(\reg_saved_reg[21] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[25]),
        .Q(\reg_saved_reg[21] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[26]),
        .Q(\reg_saved_reg[21] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[27]),
        .Q(\reg_saved_reg[21] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[28]),
        .Q(\reg_saved_reg[21] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[29]),
        .Q(\reg_saved_reg[21] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[2]),
        .Q(\reg_saved_reg[21] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[30]),
        .Q(\reg_saved_reg[21] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[31]),
        .Q(\reg_saved_reg[21] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[3]),
        .Q(\reg_saved_reg[21] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[4]),
        .Q(\reg_saved_reg[21] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[5]),
        .Q(\reg_saved_reg[21] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[6]),
        .Q(\reg_saved_reg[21] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[7]),
        .Q(\reg_saved_reg[21] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[8]),
        .Q(\reg_saved_reg[21] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[21][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(erase_end[9]),
        .Q(\reg_saved_reg[21] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[0]),
        .Q(\reg_saved_reg[22] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[10]),
        .Q(\reg_saved_reg[22] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[11]),
        .Q(\reg_saved_reg[22] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[12]),
        .Q(\reg_saved_reg[22] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[13]),
        .Q(\reg_saved_reg[22] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[14]),
        .Q(\reg_saved_reg[22] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[15]),
        .Q(\reg_saved_reg[22] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[16]),
        .Q(\reg_saved_reg[22] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[17]),
        .Q(\reg_saved_reg[22] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[18]),
        .Q(\reg_saved_reg[22] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[19]),
        .Q(\reg_saved_reg[22] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[1]),
        .Q(\reg_saved_reg[22] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[20]),
        .Q(\reg_saved_reg[22] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[21]),
        .Q(\reg_saved_reg[22] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[22]),
        .Q(\reg_saved_reg[22] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[23]),
        .Q(\reg_saved_reg[22] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[24]),
        .Q(\reg_saved_reg[22] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[25]),
        .Q(\reg_saved_reg[22] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[26]),
        .Q(\reg_saved_reg[22] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[27]),
        .Q(\reg_saved_reg[22] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[28]),
        .Q(\reg_saved_reg[22] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[29]),
        .Q(\reg_saved_reg[22] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[2]),
        .Q(\reg_saved_reg[22] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[30]),
        .Q(\reg_saved_reg[22] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[31]),
        .Q(\reg_saved_reg[22] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[3]),
        .Q(\reg_saved_reg[22] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[4]),
        .Q(\reg_saved_reg[22] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[5]),
        .Q(\reg_saved_reg[22] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[6]),
        .Q(\reg_saved_reg[22] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[7]),
        .Q(\reg_saved_reg[22] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[8]),
        .Q(\reg_saved_reg[22] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[22][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(block_limit[9]),
        .Q(\reg_saved_reg[22] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[0]),
        .Q(\reg_saved_reg[23] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[10]),
        .Q(\reg_saved_reg[23] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[11]),
        .Q(\reg_saved_reg[23] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[12]),
        .Q(\reg_saved_reg[23] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[13]),
        .Q(\reg_saved_reg[23] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[14]),
        .Q(\reg_saved_reg[23] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[15]),
        .Q(\reg_saved_reg[23] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[16]),
        .Q(\reg_saved_reg[23] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[17]),
        .Q(\reg_saved_reg[23] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[18]),
        .Q(\reg_saved_reg[23] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[19]),
        .Q(\reg_saved_reg[23] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[1]),
        .Q(\reg_saved_reg[23] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[20]),
        .Q(\reg_saved_reg[23] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[21]),
        .Q(\reg_saved_reg[23] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[22]),
        .Q(\reg_saved_reg[23] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[2]),
        .Q(\reg_saved_reg[23] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[3]),
        .Q(\reg_saved_reg[23] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[4]),
        .Q(\reg_saved_reg[23] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[5]),
        .Q(\reg_saved_reg[23] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[6]),
        .Q(\reg_saved_reg[23] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[7]),
        .Q(\reg_saved_reg[23] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[8]),
        .Q(\reg_saved_reg[23] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[23][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(pre_erase_count[9]),
        .Q(\reg_saved_reg[23] [9]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][0] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[0]),
        .Q(\reg_saved_reg[24] [0]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][10] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[10]),
        .Q(\reg_saved_reg[24] [10]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][11] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[11]),
        .Q(\reg_saved_reg[24] [11]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][12] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[12]),
        .Q(\reg_saved_reg[24] [12]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][13] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[13]),
        .Q(\reg_saved_reg[24] [13]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][14] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[14]),
        .Q(\reg_saved_reg[24] [14]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][15] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[15]),
        .Q(\reg_saved_reg[24] [15]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][16] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[16]),
        .Q(\reg_saved_reg[24] [16]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][17] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[17]),
        .Q(\reg_saved_reg[24] [17]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][18] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[18]),
        .Q(\reg_saved_reg[24] [18]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][19] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[19]),
        .Q(\reg_saved_reg[24] [19]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][1] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[1]),
        .Q(\reg_saved_reg[24] [1]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][20] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[20]),
        .Q(\reg_saved_reg[24] [20]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][21] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[21]),
        .Q(\reg_saved_reg[24] [21]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][22] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[22]),
        .Q(\reg_saved_reg[24] [22]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][23] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[23]),
        .Q(\reg_saved_reg[24] [23]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][24] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[24]),
        .Q(\reg_saved_reg[24] [24]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][25] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[25]),
        .Q(\reg_saved_reg[24] [25]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][26] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[26]),
        .Q(\reg_saved_reg[24] [26]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][27] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[27]),
        .Q(\reg_saved_reg[24] [27]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][28] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[28]),
        .Q(\reg_saved_reg[24] [28]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][29] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[29]),
        .Q(\reg_saved_reg[24] [29]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][2] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[2]),
        .Q(\reg_saved_reg[24] [2]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][30] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[30]),
        .Q(\reg_saved_reg[24] [30]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][31] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[31]),
        .Q(\reg_saved_reg[24] [31]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][3] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[3]),
        .Q(\reg_saved_reg[24] [3]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][4] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[4]),
        .Q(\reg_saved_reg[24] [4]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][5] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[5]),
        .Q(\reg_saved_reg[24] [5]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][6] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[6]),
        .Q(\reg_saved_reg[24] [6]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][7] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[7]),
        .Q(\reg_saved_reg[24] [7]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][8] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[8]),
        .Q(\reg_saved_reg[24] [8]),
        .R(cmd_missed1));
  FDRE \reg_saved_reg[24][9] 
       (.C(S_AXI_ACLK),
        .CE(status_read),
        .D(dat_blocks_read[9]),
        .Q(\reg_saved_reg[24] [9]),
        .R(cmd_missed1));
  LUT1 #(
    .INIT(2'h1)) 
    \sd_clk_div_d[0]_i_1 
       (.I0(\sd_bus_interface/sd_clk_div_d_reg ),
        .O(\sd_clk_div_d[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \set_reg_clear_always[12].reg_clear_always[12][31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(axi_awaddr[2]),
        .I2(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .O(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[0]),
        .Q(\reg_clear_always[12]_13 [0]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[13]),
        .Q(\reg_clear_always[12]_13 [13]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[14]),
        .Q(\reg_clear_always[12]_13 [14]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[15]),
        .Q(\reg_clear_always[12]_13 [15]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[16]),
        .Q(\reg_clear_always[12]_13 [16]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[17]),
        .Q(\reg_clear_always[12]_13 [17]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_clear_always[12]_13 [18]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[19]),
        .Q(\reg_clear_always[12]_13 [19]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[1]),
        .Q(\reg_clear_always[12]_13 [1]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_clear_always[12]_13 [20]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[21]),
        .Q(\reg_clear_always[12]_13 [21]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_clear_always[12]_13 [22]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_clear_always[12]_13 [23]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_clear_always[12]_13 [24]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_clear_always[12]_13 [25]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_clear_always[12]_13 [26]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_always[12]_13 [27]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_always[12]_13 [28]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_clear_always[12]_13 [29]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[2]),
        .Q(\reg_clear_always[12]_13 [2]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_clear_always[12]_13 [30]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_clear_always[12]_13 [31]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[3]),
        .Q(\reg_clear_always[12]_13 [3]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[4]),
        .Q(\reg_clear_always[12]_13 [4]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[5]),
        .Q(\reg_clear_always[12]_13 [5]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[6]),
        .Q(\reg_clear_always[12]_13 [6]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[12].reg_clear_always_reg[12][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[7]),
        .Q(\reg_clear_always[12]_13 [7]),
        .R(\set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \set_reg_clear_always[13].reg_clear_always[13][31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[3]),
        .I4(axi_awaddr[2]),
        .O(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[0]),
        .Q(\reg_clear_always[13]_14 [0]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[13]),
        .Q(\reg_clear_always[13]_14 [13]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[14]),
        .Q(\reg_clear_always[13]_14 [14]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[15]),
        .Q(\reg_clear_always[13]_14 [15]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[16]),
        .Q(\reg_clear_always[13]_14 [16]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[17]),
        .Q(\reg_clear_always[13]_14 [17]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_clear_always[13]_14 [18]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[19]),
        .Q(\reg_clear_always[13]_14 [19]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[1]),
        .Q(\reg_clear_always[13]_14 [1]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_clear_always[13]_14 [20]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[21]),
        .Q(\reg_clear_always[13]_14 [21]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_clear_always[13]_14 [22]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_clear_always[13]_14 [23]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_clear_always[13]_14 [24]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_clear_always[13]_14 [25]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_clear_always[13]_14 [26]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_always[13]_14 [27]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_always[13]_14 [28]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_clear_always[13]_14 [29]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[2]),
        .Q(\reg_clear_always[13]_14 [2]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_clear_always[13]_14 [30]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_clear_always[13]_14 [31]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[3]),
        .Q(\reg_clear_always[13]_14 [3]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[4]),
        .Q(\reg_clear_always[13]_14 [4]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[5]),
        .Q(\reg_clear_always[13]_14 [5]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[6]),
        .Q(\reg_clear_always[13]_14 [6]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  FDRE \set_reg_clear_always[13].reg_clear_always_reg[13][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WDATA[7]),
        .Q(\reg_clear_always[13]_14 [7]),
        .R(\set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \set_reg_clear_always[14].reg_clear_always[14][0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I4(axi_awaddr[4]),
        .I5(S_AXI_ARESETN),
        .O(\set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \set_reg_clear_always[14].reg_clear_always[14][1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I4(axi_awaddr[4]),
        .I5(S_AXI_ARESETN),
        .O(\set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0 ));
  FDRE \set_reg_clear_always[14].reg_clear_always_reg[14][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0 ),
        .Q(\set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0] ),
        .R(1'b0));
  FDRE \set_reg_clear_always[14].reg_clear_always_reg[14][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0 ),
        .Q(no_more_write_data),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1 
       (.I0(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2 
       (.I0(axi_awaddr[6]),
        .I1(axi_awaddr[5]),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(S_AXI_AWVALID),
        .O(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][18] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_clear_reset[10]_9 [18]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][20] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_clear_reset[10]_9 [20]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][22] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_clear_reset[10]_9 [22]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][23] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_clear_reset[10]_9 [23]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][27] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_reset[10]_9 [27]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[10].reg_clear_reset_reg[10][28] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_reset[10]_9 [28]),
        .R(cmd_missed1));
  LUT4 #(
    .INIT(16'h0800)) 
    \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[3]),
        .O(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\reg_clear_reset[11]_10 [0]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][10] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\reg_clear_reset[11]_10 [10]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][11] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\reg_clear_reset[11]_10 [11]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][12] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\reg_clear_reset[11]_10 [12]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][13] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\reg_clear_reset[11]_10 [13]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][14] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\reg_clear_reset[11]_10 [14]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][15] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\reg_clear_reset[11]_10 [15]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][16] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\reg_clear_reset[11]_10 [16]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][17] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\reg_clear_reset[11]_10 [17]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][18] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_clear_reset[11]_10 [18]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][19] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\reg_clear_reset[11]_10 [19]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\reg_clear_reset[11]_10 [1]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][20] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_clear_reset[11]_10 [20]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][21] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\reg_clear_reset[11]_10 [21]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][22] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_clear_reset[11]_10 [22]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][23] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_clear_reset[11]_10 [23]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][24] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_clear_reset[11]_10 [24]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][25] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_clear_reset[11]_10 [25]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][26] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_clear_reset[11]_10 [26]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][27] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_reset[11]_10 [27]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][28] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_reset[11]_10 [28]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][29] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_clear_reset[11]_10 [29]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][2] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\reg_clear_reset[11]_10 [2]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][30] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_clear_reset[11]_10 [30]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][31] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_clear_reset[11]_10 [31]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][3] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\reg_clear_reset[11]_10 [3]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][4] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\reg_clear_reset[11]_10 [4]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][5] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\reg_clear_reset[11]_10 [5]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][6] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\reg_clear_reset[11]_10 [6]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][7] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\reg_clear_reset[11]_10 [7]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][8] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\reg_clear_reset[11]_10 [8]),
        .R(cmd_missed1));
  FDRE \set_reg_clear_reset[11].reg_clear_reset_reg[11][9] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\reg_clear_reset[11]_10 [9]),
        .R(cmd_missed1));
  LUT4 #(
    .INIT(16'h0004)) 
    \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I2(axi_awaddr[4]),
        .I3(axi_awaddr[2]),
        .O(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][24] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_clear_reset[8]_12 [24]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][25] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_clear_reset[8]_12 [25]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][26] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_clear_reset[8]_12 [26]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][27] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_reset[8]_12 [27]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][28] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_reset[8]_12 [28]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][29] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_clear_reset[8]_12 [29]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][30] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_clear_reset[8]_12 [30]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[8].reg_clear_reset_reg[8][31] 
       (.C(S_AXI_ACLK),
        .CE(\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_clear_reset[8]_12 [31]),
        .R(controller_n_79));
  LUT4 #(
    .INIT(16'h0020)) 
    \set_reg_clear_reset[9].reg_clear_reset[9][31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0 ),
        .I3(axi_awaddr[4]),
        .O(p_1_in));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[0]),
        .Q(\reg_clear_reset[9]_11 [0]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[10]),
        .Q(\reg_clear_reset[9]_11 [10]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[11]),
        .Q(\reg_clear_reset[9]_11 [11]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[12]),
        .Q(\reg_clear_reset[9]_11 [12]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[13]),
        .Q(\reg_clear_reset[9]_11 [13]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[14]),
        .Q(\reg_clear_reset[9]_11 [14]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[15]),
        .Q(\reg_clear_reset[9]_11 [15]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[16]),
        .Q(\reg_clear_reset[9]_11 [16]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[17]),
        .Q(\reg_clear_reset[9]_11 [17]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_clear_reset[9]_11 [18]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[19]),
        .Q(\reg_clear_reset[9]_11 [19]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[1]),
        .Q(\reg_clear_reset[9]_11 [1]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_clear_reset[9]_11 [20]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[21]),
        .Q(\reg_clear_reset[9]_11 [21]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_clear_reset[9]_11 [22]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_clear_reset[9]_11 [23]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_clear_reset[9]_11 [24]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_clear_reset[9]_11 [25]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_clear_reset[9]_11 [26]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_clear_reset[9]_11 [27]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_clear_reset[9]_11 [28]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_clear_reset[9]_11 [29]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[2]),
        .Q(\reg_clear_reset[9]_11 [2]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_clear_reset[9]_11 [30]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_clear_reset[9]_11 [31]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[3]),
        .Q(\reg_clear_reset[9]_11 [3]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[4]),
        .Q(\reg_clear_reset[9]_11 [4]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[5]),
        .Q(\reg_clear_reset[9]_11 [5]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[6]),
        .Q(\reg_clear_reset[9]_11 [6]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[7]),
        .Q(\reg_clear_reset[9]_11 [7]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[8]),
        .Q(\reg_clear_reset[9]_11 [8]),
        .R(controller_n_79));
  FDRE \set_reg_clear_reset[9].reg_clear_reset_reg[9][9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in),
        .D(S_AXI_WDATA[9]),
        .Q(\reg_clear_reset[9]_11 [9]),
        .R(controller_n_79));
endmodule

(* ORIG_REF_NAME = "card_status_keeper" *) 
module adapter_axi_sd_0_0_card_status_keeper
   (\card_status_reg[31]_0 ,
    \card_status_reg[10]_0 ,
    \card_status_reg[10]_1 ,
    \card_status_reg[9]_0 ,
    \card_status_reg[11]_0 ,
    valid_c1_out,
    \cmd_index_reg[4] ,
    acmd_defined_c,
    \card_status_reg[9]_1 ,
    \card_status_reg[9]_2 ,
    D,
    \card_status_reg[9]_3 ,
    \card_status_reg[9]_4 ,
    \FSM_onehot_state_reg[2] ,
    \card_status_reg[9]_5 ,
    \FSM_onehot_state_reg[6] ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[0] ,
    \card_status_reg[11]_1 ,
    \card_status_reg[9]_6 ,
    \card_status_reg[11]_2 ,
    cmd_illegal_stb_reg,
    \card_status_resp_reg[10]_0 ,
    \card_status_resp_reg[28]_0 ,
    \card_status_resp_reg[29]_0 ,
    \card_status_resp_reg[14]_0 ,
    \card_status_resp_reg[15]_0 ,
    \card_status_reg[31]_1 ,
    \card_status_reg[23]_0 ,
    S_AXI_ACLK,
    \card_status_reg[11]_3 ,
    \card_status_reg[9]_7 ,
    Q,
    \card_status_resp_reg[8]_0 ,
    no_more_write_data,
    \FSM_onehot_state_reg[1] ,
    \card_status_reg[10]_2 ,
    \card_status_reg[10]_3 ,
    p_3_out,
    \card_status_reg[31]_2 ,
    update_2,
    \card_status_reg[31]_3 ,
    \card_status_reg[31]_4 ,
    sent_r1,
    erase_seq_error,
    erase_reset,
    ignored_c,
    valid_reg,
    valid_reg_0,
    valid_i_3_0,
    valid_reg_i_5_0,
    valid_i_6_0,
    acmd_defined_reg,
    CO,
    \card_status[11]_i_4 ,
    valid_i_3_1,
    \FSM_onehot_state_reg[6]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[6]_1 ,
    \card_status_resp_reg[28]_1 ,
    invalid_dat_width,
    out_of_range,
    cmd_illegal_stb,
    cmd_crc_err_stb,
    cmd_ignored_stb,
    \resp_byte[5]_i_4 ,
    \resp_byte[5]_i_4_0 ,
    \resp_byte[5]_i_4_1 ,
    \resp_byte[7]_i_2 ,
    \resp_byte[7]_i_2_0 );
  output [30:0]\card_status_reg[31]_0 ;
  output \card_status_reg[10]_0 ;
  output \card_status_reg[10]_1 ;
  output \card_status_reg[9]_0 ;
  output \card_status_reg[11]_0 ;
  output valid_c1_out;
  output \cmd_index_reg[4] ;
  output acmd_defined_c;
  output \card_status_reg[9]_1 ;
  output \card_status_reg[9]_2 ;
  output [2:0]D;
  output \card_status_reg[9]_3 ;
  output \card_status_reg[9]_4 ;
  output \FSM_onehot_state_reg[2] ;
  output \card_status_reg[9]_5 ;
  output \FSM_onehot_state_reg[6] ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[0] ;
  output \card_status_reg[11]_1 ;
  output \card_status_reg[9]_6 ;
  output \card_status_reg[11]_2 ;
  output cmd_illegal_stb_reg;
  output \card_status_resp_reg[10]_0 ;
  output [21:0]\card_status_resp_reg[28]_0 ;
  output \card_status_resp_reg[29]_0 ;
  output \card_status_resp_reg[14]_0 ;
  output \card_status_resp_reg[15]_0 ;
  input \card_status_reg[31]_1 ;
  input [9:0]\card_status_reg[23]_0 ;
  input S_AXI_ACLK;
  input \card_status_reg[11]_3 ;
  input \card_status_reg[9]_7 ;
  input [6:0]Q;
  input \card_status_resp_reg[8]_0 ;
  input no_more_write_data;
  input \FSM_onehot_state_reg[1] ;
  input \card_status_reg[10]_2 ;
  input \card_status_reg[10]_3 ;
  input [0:0]p_3_out;
  input [16:0]\card_status_reg[31]_2 ;
  input update_2;
  input \card_status_reg[31]_3 ;
  input [16:0]\card_status_reg[31]_4 ;
  input sent_r1;
  input erase_seq_error;
  input erase_reset;
  input ignored_c;
  input valid_reg;
  input valid_reg_0;
  input valid_i_3_0;
  input valid_reg_i_5_0;
  input valid_i_6_0;
  input acmd_defined_reg;
  input [0:0]CO;
  input \card_status[11]_i_4 ;
  input valid_i_3_1;
  input \FSM_onehot_state_reg[6]_0 ;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[6]_1 ;
  input [2:0]\card_status_resp_reg[28]_1 ;
  input invalid_dat_width;
  input out_of_range;
  input cmd_illegal_stb;
  input cmd_crc_err_stb;
  input cmd_ignored_stb;
  input \resp_byte[5]_i_4 ;
  input \resp_byte[5]_i_4_0 ;
  input [1:0]\resp_byte[5]_i_4_1 ;
  input [1:0]\resp_byte[7]_i_2 ;
  input [0:0]\resp_byte[7]_i_2_0 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[6] ;
  wire \FSM_onehot_state_reg[6]_0 ;
  wire \FSM_onehot_state_reg[6]_1 ;
  wire \FSM_onehot_sys_state[2]_i_14_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_15_n_0 ;
  wire [6:0]Q;
  wire S_AXI_ACLK;
  wire acmd_defined_c;
  wire acmd_defined_reg;
  wire \card_status[10]_i_1_n_0 ;
  wire \card_status[11]_i_4 ;
  wire [31:6]card_status_next2_out;
  wire \card_status_reg[10]_0 ;
  wire \card_status_reg[10]_1 ;
  wire \card_status_reg[10]_2 ;
  wire \card_status_reg[10]_3 ;
  wire \card_status_reg[11]_0 ;
  wire \card_status_reg[11]_1 ;
  wire \card_status_reg[11]_2 ;
  wire \card_status_reg[11]_3 ;
  wire [9:0]\card_status_reg[23]_0 ;
  wire [30:0]\card_status_reg[31]_0 ;
  wire \card_status_reg[31]_1 ;
  wire [16:0]\card_status_reg[31]_2 ;
  wire \card_status_reg[31]_3 ;
  wire [16:0]\card_status_reg[31]_4 ;
  wire \card_status_reg[9]_0 ;
  wire \card_status_reg[9]_1 ;
  wire \card_status_reg[9]_2 ;
  wire \card_status_reg[9]_3 ;
  wire \card_status_reg[9]_4 ;
  wire \card_status_reg[9]_5 ;
  wire \card_status_reg[9]_6 ;
  wire \card_status_reg[9]_7 ;
  wire [31:13]card_status_resp;
  wire [31:31]card_status_resp_next;
  wire \card_status_resp_reg[10]_0 ;
  wire \card_status_resp_reg[14]_0 ;
  wire \card_status_resp_reg[15]_0 ;
  wire [21:0]\card_status_resp_reg[28]_0 ;
  wire [2:0]\card_status_resp_reg[28]_1 ;
  wire \card_status_resp_reg[29]_0 ;
  wire \card_status_resp_reg[8]_0 ;
  wire cmd_crc_err_stb;
  wire cmd_ignored_stb;
  wire cmd_illegal_stb;
  wire cmd_illegal_stb_reg;
  wire \cmd_index_reg[4] ;
  wire erase_reset;
  wire erase_seq_error;
  wire ignored_c;
  wire invalid_dat_width;
  wire no_more_write_data;
  wire out_of_range;
  wire [0:0]p_3_out;
  wire \resp_byte[5]_i_4 ;
  wire \resp_byte[5]_i_4_0 ;
  wire [1:0]\resp_byte[5]_i_4_1 ;
  wire [1:0]\resp_byte[7]_i_2 ;
  wire [0:0]\resp_byte[7]_i_2_0 ;
  wire sent_r1;
  wire update_2;
  wire valid_c1_out;
  wire valid_i_10_n_0;
  wire valid_i_11_n_0;
  wire valid_i_12_n_0;
  wire valid_i_14_n_0;
  wire valid_i_3_0;
  wire valid_i_3_1;
  wire valid_i_6_0;
  wire valid_i_6_n_0;
  wire valid_i_7_n_0;
  wire valid_reg;
  wire valid_reg_0;
  wire valid_reg_i_5_0;
  wire valid_reg_i_5_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8A2A)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(Q[0]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [9]),
        .O(\FSM_onehot_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE00)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[1]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg[1]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(Q[0]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [10]),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(\card_status_reg[31]_0 [11]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_0 [9]),
        .I3(Q[0]),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[3]_i_12 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_0 [11]),
        .O(\card_status_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFB700)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\card_status_reg[9]_5 ));
  LUT5 #(
    .INIT(32'hF800F8F8)) 
    \FSM_onehot_state[4]_i_1__0 
       (.I0(\card_status_reg[10]_1 ),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_2_n_0 ),
        .I4(\card_status_reg[9]_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFFFEEEEEEEEEEEE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg[6] ),
        .I1(\FSM_onehot_state_reg[3] ),
        .I2(no_more_write_data),
        .I3(\FSM_onehot_state_reg[1] ),
        .I4(\card_status_reg[10]_1 ),
        .I5(Q[4]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2000AAAA)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[6]_1 ),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(Q[0]),
        .O(\card_status_reg[9]_3 ));
  LUT6 #(
    .INIT(64'h00000000BA000000)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[6]),
        .I1(\FSM_onehot_state_reg[6]_0 ),
        .I2(Q[5]),
        .I3(\card_status_reg[31]_0 [9]),
        .I4(\card_status_reg[31]_0 [11]),
        .I5(\card_status_reg[31]_0 [10]),
        .O(\FSM_onehot_state_reg[6] ));
  LUT6 #(
    .INIT(64'hCCFFFFFF80808080)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg[6]_0 ),
        .I1(\card_status_reg[10]_1 ),
        .I2(Q[5]),
        .I3(\FSM_onehot_state[6]_i_4_n_0 ),
        .I4(\card_status_reg[9]_4 ),
        .I5(Q[6]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\card_status_reg[31]_0 [10]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [9]),
        .O(\card_status_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h00D5D5D5D5D5D5D5)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\FSM_onehot_state[6]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(no_more_write_data),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(\card_status_reg[31]_0 [10]),
        .I5(Q[3]),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2080AAAA)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(\FSM_onehot_state_reg[6]_1 ),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [10]),
        .I4(Q[0]),
        .O(\card_status_reg[9]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(Q[4]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [10]),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_sys_state[2]_i_12 
       (.I0(\card_status_reg[31]_0 [11]),
        .I1(\card_status_reg[31]_0 [10]),
        .O(\card_status_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_onehot_sys_state[2]_i_13 
       (.I0(\card_status_reg[31]_0 [10]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [9]),
        .I3(Q[4]),
        .I4(no_more_write_data),
        .I5(\FSM_onehot_state_reg[1] ),
        .O(\card_status_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFFFFFFFFFF)) 
    \FSM_onehot_sys_state[2]_i_14 
       (.I0(no_more_write_data),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(\card_status_reg[31]_0 [9]),
        .I5(Q[4]),
        .O(\FSM_onehot_sys_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000E0000000A000)) 
    \FSM_onehot_sys_state[2]_i_15 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\card_status_reg[31]_0 [9]),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(\card_status_reg[31]_0 [10]),
        .I5(\FSM_onehot_state_reg[6]_0 ),
        .O(\FSM_onehot_sys_state[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sys_state[2]_i_6 
       (.I0(Q[3]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_0 [11]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFDFDFDFCFCFCFC)) 
    \FSM_onehot_sys_state[2]_i_9 
       (.I0(\FSM_onehot_sys_state[2]_i_14_n_0 ),
        .I1(\FSM_onehot_sys_state[2]_i_15_n_0 ),
        .I2(Q[2]),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(\card_status_reg[31]_0 [10]),
        .I5(Q[3]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    acmd_defined_i_1
       (.I0(\card_status_reg[31]_0 [5]),
        .I1(acmd_defined_reg),
        .O(acmd_defined_c));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \card_status[10]_i_1 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[10]_2 ),
        .I2(\card_status_reg[10]_3 ),
        .I3(p_3_out),
        .I4(\card_status_reg[31]_0 [10]),
        .O(\card_status[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \card_status[11]_i_11 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [10]),
        .O(\card_status_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h0A3000000A30FFFF)) 
    \card_status[11]_i_6 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(CO),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [10]),
        .I4(\card_status[11]_i_4 ),
        .I5(\card_status_reg[31]_0 [5]),
        .O(\card_status_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h000000000000FEEE)) 
    \card_status[13]_i_1 
       (.I0(\card_status_reg[31]_0 [12]),
        .I1(\card_status_reg[31]_2 [1]),
        .I2(erase_reset),
        .I3(update_2),
        .I4(\card_status_reg[31]_4 [1]),
        .I5(sent_r1),
        .O(card_status_next2_out[13]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[14]_i_1 
       (.I0(\card_status_reg[31]_0 [13]),
        .I1(\card_status_reg[31]_2 [2]),
        .I2(\card_status_reg[31]_4 [2]),
        .I3(sent_r1),
        .O(card_status_next2_out[14]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[15]_i_1 
       (.I0(\card_status_reg[31]_0 [14]),
        .I1(\card_status_reg[31]_2 [3]),
        .I2(\card_status_reg[31]_4 [3]),
        .I3(sent_r1),
        .O(card_status_next2_out[15]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[16]_i_1 
       (.I0(\card_status_reg[31]_0 [15]),
        .I1(\card_status_reg[31]_2 [4]),
        .I2(\card_status_reg[31]_4 [4]),
        .I3(sent_r1),
        .O(card_status_next2_out[16]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[17]_i_1 
       (.I0(\card_status_reg[31]_0 [16]),
        .I1(\card_status_reg[31]_2 [5]),
        .I2(\card_status_reg[31]_4 [5]),
        .I3(sent_r1),
        .O(card_status_next2_out[17]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[18]_i_1 
       (.I0(\card_status_reg[31]_0 [17]),
        .I1(\card_status_reg[31]_2 [6]),
        .I2(\card_status_reg[31]_4 [6]),
        .I3(sent_r1),
        .O(card_status_next2_out[18]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[20]_i_1 
       (.I0(\card_status_reg[31]_0 [19]),
        .I1(\card_status_reg[31]_2 [7]),
        .I2(\card_status_reg[31]_4 [7]),
        .I3(sent_r1),
        .O(card_status_next2_out[20]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[21]_i_1 
       (.I0(\card_status_reg[31]_0 [20]),
        .I1(\card_status_reg[31]_2 [8]),
        .I2(\card_status_reg[31]_4 [8]),
        .I3(sent_r1),
        .O(card_status_next2_out[21]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[24]_i_1 
       (.I0(\card_status_reg[31]_0 [23]),
        .I1(\card_status_reg[31]_2 [9]),
        .I2(\card_status_reg[31]_4 [9]),
        .I3(sent_r1),
        .O(card_status_next2_out[24]));
  LUT3 #(
    .INIT(8'h0E)) 
    \card_status[25]_i_1 
       (.I0(\card_status_reg[31]_0 [24]),
        .I1(\card_status_reg[31]_2 [10]),
        .I2(\card_status_reg[31]_4 [10]),
        .O(card_status_next2_out[25]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[26]_i_1 
       (.I0(\card_status_reg[31]_0 [25]),
        .I1(\card_status_reg[31]_2 [11]),
        .I2(\card_status_reg[31]_4 [11]),
        .I3(sent_r1),
        .O(card_status_next2_out[26]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[27]_i_1 
       (.I0(\card_status_reg[31]_0 [26]),
        .I1(\card_status_reg[31]_2 [12]),
        .I2(\card_status_reg[31]_4 [12]),
        .I3(sent_r1),
        .O(card_status_next2_out[27]));
  LUT6 #(
    .INIT(64'h000000000000FEEE)) 
    \card_status[28]_i_1 
       (.I0(\card_status_reg[31]_0 [27]),
        .I1(\card_status_reg[31]_2 [13]),
        .I2(erase_seq_error),
        .I3(update_2),
        .I4(\card_status_reg[31]_4 [13]),
        .I5(sent_r1),
        .O(card_status_next2_out[28]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[29]_i_1 
       (.I0(\card_status_reg[31]_0 [28]),
        .I1(\card_status_reg[31]_2 [14]),
        .I2(\card_status_reg[31]_4 [14]),
        .I3(sent_r1),
        .O(card_status_next2_out[29]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[30]_i_1 
       (.I0(\card_status_reg[31]_0 [29]),
        .I1(\card_status_reg[31]_2 [15]),
        .I2(\card_status_reg[31]_4 [15]),
        .I3(sent_r1),
        .O(card_status_next2_out[30]));
  LUT6 #(
    .INIT(64'h000000000000EEFE)) 
    \card_status[31]_i_1 
       (.I0(\card_status_reg[31]_0 [30]),
        .I1(\card_status_reg[31]_2 [16]),
        .I2(update_2),
        .I3(\card_status_reg[31]_3 ),
        .I4(\card_status_reg[31]_4 [16]),
        .I5(sent_r1),
        .O(card_status_next2_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \card_status[5]_i_3 
       (.I0(cmd_illegal_stb),
        .I1(cmd_crc_err_stb),
        .I2(\card_status_reg[31]_0 [5]),
        .I3(cmd_ignored_stb),
        .O(cmd_illegal_stb_reg));
  LUT3 #(
    .INIT(8'h0E)) 
    \card_status[6]_i_1 
       (.I0(\card_status_reg[31]_0 [6]),
        .I1(\card_status_reg[31]_2 [0]),
        .I2(\card_status_reg[31]_4 [0]),
        .O(card_status_next2_out[6]));
  FDRE \card_status_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [0]),
        .Q(\card_status_reg[31]_0 [0]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status[10]_i_1_n_0 ),
        .Q(\card_status_reg[31]_0 [10]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[11]_3 ),
        .Q(\card_status_reg[31]_0 [11]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[13]),
        .Q(\card_status_reg[31]_0 [12]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[14]),
        .Q(\card_status_reg[31]_0 [13]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[15]),
        .Q(\card_status_reg[31]_0 [14]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[16]),
        .Q(\card_status_reg[31]_0 [15]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[17]),
        .Q(\card_status_reg[31]_0 [16]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[18]),
        .Q(\card_status_reg[31]_0 [17]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [7]),
        .Q(\card_status_reg[31]_0 [18]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [1]),
        .Q(\card_status_reg[31]_0 [1]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[20]),
        .Q(\card_status_reg[31]_0 [19]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[21]),
        .Q(\card_status_reg[31]_0 [20]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [8]),
        .Q(\card_status_reg[31]_0 [21]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [9]),
        .Q(\card_status_reg[31]_0 [22]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[24]),
        .Q(\card_status_reg[31]_0 [23]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[25]),
        .Q(\card_status_reg[31]_0 [24]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[26]),
        .Q(\card_status_reg[31]_0 [25]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[27]),
        .Q(\card_status_reg[31]_0 [26]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[28]),
        .Q(\card_status_reg[31]_0 [27]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[29]),
        .Q(\card_status_reg[31]_0 [28]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [2]),
        .Q(\card_status_reg[31]_0 [2]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[30]),
        .Q(\card_status_reg[31]_0 [29]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[31]),
        .Q(\card_status_reg[31]_0 [30]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [3]),
        .Q(\card_status_reg[31]_0 [3]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [4]),
        .Q(\card_status_reg[31]_0 [4]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [5]),
        .Q(\card_status_reg[31]_0 [5]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(card_status_next2_out[6]),
        .Q(\card_status_reg[31]_0 [6]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [6]),
        .Q(\card_status_reg[31]_0 [7]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\card_status_reg[9]_7 ),
        .Q(\card_status_reg[31]_0 [9]),
        .R(\card_status_reg[31]_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \card_status_resp[31]_i_2 
       (.I0(\card_status_reg[31]_0 [30]),
        .I1(invalid_dat_width),
        .I2(out_of_range),
        .O(card_status_resp_next));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F3F3F3F)) 
    \card_status_resp[8]_i_1 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(Q[1]),
        .I4(\card_status_resp_reg[8]_0 ),
        .O(\card_status_reg[31]_0 [8]));
  FDRE \card_status_resp_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [0]),
        .Q(\card_status_resp_reg[28]_0 [0]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [10]),
        .Q(\card_status_resp_reg[28]_0 [10]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [11]),
        .Q(\card_status_resp_reg[28]_0 [11]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_1 [1]),
        .Q(card_status_resp[13]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [13]),
        .Q(card_status_resp[14]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [14]),
        .Q(card_status_resp[15]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [15]),
        .Q(\card_status_resp_reg[28]_0 [12]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [16]),
        .Q(\card_status_resp_reg[28]_0 [13]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [17]),
        .Q(card_status_resp[18]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [18]),
        .Q(\card_status_resp_reg[28]_0 [14]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [1]),
        .Q(\card_status_resp_reg[28]_0 [1]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [19]),
        .Q(\card_status_resp_reg[28]_0 [15]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [20]),
        .Q(card_status_resp[21]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [21]),
        .Q(\card_status_resp_reg[28]_0 [16]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [22]),
        .Q(\card_status_resp_reg[28]_0 [17]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [23]),
        .Q(\card_status_resp_reg[28]_0 [18]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [24]),
        .Q(\card_status_resp_reg[28]_0 [19]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [25]),
        .Q(card_status_resp[26]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [26]),
        .Q(\card_status_resp_reg[28]_0 [20]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_1 [2]),
        .Q(\card_status_resp_reg[28]_0 [21]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [28]),
        .Q(card_status_resp[29]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [2]),
        .Q(\card_status_resp_reg[28]_0 [2]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [29]),
        .Q(card_status_resp[30]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(card_status_resp_next),
        .Q(card_status_resp[31]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [3]),
        .Q(\card_status_resp_reg[28]_0 [3]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [4]),
        .Q(\card_status_resp_reg[28]_0 [4]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_1 [0]),
        .Q(\card_status_resp_reg[28]_0 [5]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [6]),
        .Q(\card_status_resp_reg[28]_0 [6]),
        .R(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [7]),
        .Q(\card_status_resp_reg[28]_0 [7]),
        .R(\card_status_reg[31]_1 ));
  FDSE \card_status_resp_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [8]),
        .Q(\card_status_resp_reg[28]_0 [8]),
        .S(\card_status_reg[31]_1 ));
  FDRE \card_status_resp_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(update_2),
        .D(\card_status_reg[31]_0 [9]),
        .Q(\card_status_resp_reg[28]_0 [9]),
        .R(\card_status_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAAAEAAAAA)) 
    \dev_last_block[9]_i_5 
       (.I0(\card_status_reg[10]_0 ),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(\card_status_reg[31]_0 [9]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\card_status_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h15)) 
    ignored_i_3
       (.I0(\card_status_reg[31]_0 [11]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [10]),
        .O(\card_status_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \resp_byte[2]_i_9 
       (.I0(\card_status_resp_reg[28]_0 [10]),
        .I1(card_status_resp[18]),
        .I2(\resp_byte[5]_i_4 ),
        .I3(card_status_resp[26]),
        .I4(\resp_byte[5]_i_4_0 ),
        .I5(\resp_byte[5]_i_4_1 [0]),
        .O(\card_status_resp_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \resp_byte[5]_i_9 
       (.I0(card_status_resp[29]),
        .I1(\resp_byte[5]_i_4_1 [1]),
        .I2(card_status_resp[13]),
        .I3(\resp_byte[5]_i_4_0 ),
        .I4(card_status_resp[21]),
        .I5(\resp_byte[5]_i_4 ),
        .O(\card_status_resp_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hF350FFFFF35FFFFF)) 
    \resp_byte[6]_i_4 
       (.I0(card_status_resp[14]),
        .I1(\card_status_resp_reg[28]_0 [16]),
        .I2(\resp_byte[7]_i_2 [1]),
        .I3(\resp_byte[7]_i_2 [0]),
        .I4(\resp_byte[7]_i_2_0 ),
        .I5(card_status_resp[30]),
        .O(\card_status_resp_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hF350FFFFF35FFFFF)) 
    \resp_byte[7]_i_4 
       (.I0(card_status_resp[15]),
        .I1(\card_status_resp_reg[28]_0 [17]),
        .I2(\resp_byte[7]_i_2 [1]),
        .I3(\resp_byte[7]_i_2 [0]),
        .I4(\resp_byte[7]_i_2_0 ),
        .I5(card_status_resp[31]),
        .O(\card_status_resp_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sd_dat_o_sys[0]_i_2 
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_0 [11]),
        .O(\card_status_reg[9]_6 ));
  LUT5 #(
    .INIT(32'hFFFFFF87)) 
    valid_i_10
       (.I0(valid_i_6_0),
        .I1(\card_status_reg[31]_0 [5]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [9]),
        .I4(\card_status_reg[31]_0 [10]),
        .O(valid_i_10_n_0));
  LUT6 #(
    .INIT(64'hEF07070706060606)) 
    valid_i_11
       (.I0(\card_status_reg[31]_0 [10]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(\card_status_reg[31]_0 [5]),
        .I4(valid_reg_i_5_0),
        .I5(valid_i_6_0),
        .O(valid_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1101F000)) 
    valid_i_12
       (.I0(valid_i_6_0),
        .I1(CO),
        .I2(\card_status_reg[31]_0 [10]),
        .I3(\card_status_reg[31]_0 [9]),
        .I4(\card_status_reg[31]_0 [11]),
        .O(valid_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    valid_i_14
       (.I0(\card_status_reg[31]_0 [10]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_0 [11]),
        .I3(valid_i_6_0),
        .O(valid_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    valid_i_2
       (.I0(\cmd_index_reg[4] ),
        .I1(ignored_c),
        .O(valid_c1_out));
  LUT6 #(
    .INIT(64'h2272000022722272)) 
    valid_i_3
       (.I0(valid_reg),
        .I1(valid_reg_i_5_n_0),
        .I2(valid_i_6_n_0),
        .I3(valid_i_7_n_0),
        .I4(acmd_defined_c),
        .I5(valid_reg_0),
        .O(\cmd_index_reg[4] ));
  LUT6 #(
    .INIT(64'h88B8BBBBFFFFFFFF)) 
    valid_i_6
       (.I0(valid_i_12_n_0),
        .I1(valid_i_3_0),
        .I2(\card_status_reg[9]_2 ),
        .I3(valid_i_6_0),
        .I4(valid_i_14_n_0),
        .I5(valid_i_3_1),
        .O(valid_i_6_n_0));
  LUT6 #(
    .INIT(64'h0303030103000303)) 
    valid_i_7
       (.I0(\card_status_reg[31]_0 [9]),
        .I1(valid_i_3_0),
        .I2(valid_i_3_1),
        .I3(\card_status_reg[31]_0 [11]),
        .I4(\card_status_reg[31]_0 [10]),
        .I5(valid_i_6_0),
        .O(valid_i_7_n_0));
  MUXF7 valid_reg_i_5
       (.I0(valid_i_10_n_0),
        .I1(valid_i_11_n_0),
        .O(valid_reg_i_5_n_0),
        .S(valid_i_3_0));
endmodule

(* ORIG_REF_NAME = "cmd_info_keeper" *) 
module adapter_axi_sd_0_0_cmd_info_keeper
   (block_limit_used,
    got_cmd8_1,
    erase_seq_error,
    erase_reset,
    \erase_step_reg[1]_0 ,
    \erase_step_reg[0]_0 ,
    \reg_saved_reg[19][0] ,
    \reg_saved_reg[19][1] ,
    \reg_saved_reg[19][2] ,
    \reg_saved_reg[19][3] ,
    \reg_saved_reg[19][4] ,
    \reg_saved_reg[19][5] ,
    \reg_saved_reg[19][6] ,
    \reg_saved_reg[19][24] ,
    \reg_saved_reg[19][25] ,
    \reg_saved_reg[19][26] ,
    new_cmd_saved_reg_0,
    cmd_saved_missed_reg,
    erase_seq_error_reg_0,
    S,
    \block_count_reg[31]_0 ,
    \block_count_reg[15]_0 ,
    \block_count_reg[23]_0 ,
    \block_count_reg[31]_1 ,
    erase_seq_error_reg_1,
    \saved_cmd_arg_reg[31]_0 ,
    \erase_start_reg[31]_0 ,
    \erase_end_reg[31]_0 ,
    \pre_erase_count_reg[22]_0 ,
    got_cmd8_reg_0,
    save_current_cmd,
    saved_cmd_is_acmd_reg_0,
    S_AXI_ACLK,
    SR,
    E,
    \save_block_count_vars[1].block_count_vars_reg[1][22]_0 ,
    erase_seq_error_reg_2,
    \erase_step_reg[1]_1 ,
    \erase_step_reg[0]_1 ,
    got_cmd8_1_reg_0,
    \axi_rdata[26]_i_3 ,
    \axi_rdata[26]_i_3_0 ,
    \axi_rdata[0]_i_3 ,
    \axi_rdata[26]_i_3_1 ,
    cmd_saved_missed_reg_0,
    cmd_saved_unread,
    cmd_saved_missed,
    S_AXI_ARESETN,
    erase_reset_reg_0,
    erase_reset_reg_1,
    update_2,
    out_of_range,
    invalid_dat_width,
    state_next4_carry,
    state_next4_carry_0,
    state_next4_carry_1,
    state_next4_carry__0,
    state_next4_carry__0_0,
    state_next4_carry__1,
    state_next4_carry__1_0,
    state_next4_carry__2,
    state_next4_carry__2_0,
    \card_status_resp_reg[28] ,
    Q,
    \save_erase_vars[1].erase_vars_reg[1][31]_0 ,
    \save_erase_vars[0].erase_vars_reg[0][31]_0 ,
    \save_erase_vars[1].erase_vars_reg[1][31]_1 );
  output block_limit_used;
  output got_cmd8_1;
  output erase_seq_error;
  output erase_reset;
  output \erase_step_reg[1]_0 ;
  output \erase_step_reg[0]_0 ;
  output \reg_saved_reg[19][0] ;
  output \reg_saved_reg[19][1] ;
  output \reg_saved_reg[19][2] ;
  output \reg_saved_reg[19][3] ;
  output \reg_saved_reg[19][4] ;
  output \reg_saved_reg[19][5] ;
  output \reg_saved_reg[19][6] ;
  output \reg_saved_reg[19][24] ;
  output \reg_saved_reg[19][25] ;
  output \reg_saved_reg[19][26] ;
  output new_cmd_saved_reg_0;
  output cmd_saved_missed_reg;
  output erase_seq_error_reg_0;
  output [3:0]S;
  output [31:0]\block_count_reg[31]_0 ;
  output [3:0]\block_count_reg[15]_0 ;
  output [3:0]\block_count_reg[23]_0 ;
  output [3:0]\block_count_reg[31]_1 ;
  output [1:0]erase_seq_error_reg_1;
  output [31:0]\saved_cmd_arg_reg[31]_0 ;
  output [31:0]\erase_start_reg[31]_0 ;
  output [31:0]\erase_end_reg[31]_0 ;
  output [22:0]\pre_erase_count_reg[22]_0 ;
  input got_cmd8_reg_0;
  input save_current_cmd;
  input saved_cmd_is_acmd_reg_0;
  input S_AXI_ACLK;
  input [0:0]SR;
  input [0:0]E;
  input [0:0]\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ;
  input erase_seq_error_reg_2;
  input \erase_step_reg[1]_1 ;
  input \erase_step_reg[0]_1 ;
  input got_cmd8_1_reg_0;
  input [9:0]\axi_rdata[26]_i_3 ;
  input [9:0]\axi_rdata[26]_i_3_0 ;
  input [1:0]\axi_rdata[0]_i_3 ;
  input [9:0]\axi_rdata[26]_i_3_1 ;
  input cmd_saved_missed_reg_0;
  input cmd_saved_unread;
  input cmd_saved_missed;
  input S_AXI_ARESETN;
  input erase_reset_reg_0;
  input erase_reset_reg_1;
  input update_2;
  input out_of_range;
  input invalid_dat_width;
  input [2:0]state_next4_carry;
  input state_next4_carry_0;
  input [3:0]state_next4_carry_1;
  input [3:0]state_next4_carry__0;
  input [3:0]state_next4_carry__0_0;
  input [3:0]state_next4_carry__1;
  input [3:0]state_next4_carry__1_0;
  input [3:0]state_next4_carry__2;
  input [3:0]state_next4_carry__2_0;
  input [1:0]\card_status_resp_reg[28] ;
  input [5:0]Q;
  input [31:0]\save_erase_vars[1].erase_vars_reg[1][31]_0 ;
  input [0:0]\save_erase_vars[0].erase_vars_reg[0][31]_0 ;
  input [0:0]\save_erase_vars[1].erase_vars_reg[1][31]_1 ;

  wire [0:0]E;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [1:0]\axi_rdata[0]_i_3 ;
  wire [9:0]\axi_rdata[26]_i_3 ;
  wire [9:0]\axi_rdata[26]_i_3_0 ;
  wire [9:0]\axi_rdata[26]_i_3_1 ;
  wire [3:0]\block_count_reg[15]_0 ;
  wire [3:0]\block_count_reg[23]_0 ;
  wire [31:0]\block_count_reg[31]_0 ;
  wire [3:0]\block_count_reg[31]_1 ;
  wire [31:0]\block_count_vars[0]_8 ;
  wire block_limit_used;
  wire [1:0]\card_status_resp_reg[28] ;
  wire cmd_saved_missed;
  wire cmd_saved_missed_reg;
  wire cmd_saved_missed_reg_0;
  wire cmd_saved_unread;
  wire [31:0]\erase_end_reg[31]_0 ;
  wire erase_reset;
  wire erase_reset_i_1_n_0;
  wire erase_reset_reg_0;
  wire erase_reset_reg_1;
  wire erase_seq_error;
  wire erase_seq_error_reg_0;
  wire [1:0]erase_seq_error_reg_1;
  wire erase_seq_error_reg_2;
  wire [31:0]\erase_start_reg[31]_0 ;
  wire \erase_step_reg[0]_0 ;
  wire \erase_step_reg[0]_1 ;
  wire \erase_step_reg[1]_0 ;
  wire \erase_step_reg[1]_1 ;
  wire [31:0]\erase_vars[0]_6 ;
  wire [31:0]\erase_vars[1]_7 ;
  wire got_cmd8;
  wire got_cmd8_1;
  wire got_cmd8_1_reg_0;
  wire got_cmd8_reg_0;
  wire invalid_dat_width;
  wire new_cmd_saved;
  wire new_cmd_saved_reg_0;
  wire out_of_range;
  wire [22:0]\pre_erase_count_reg[22]_0 ;
  wire pre_erase_count_used;
  wire \reg_saved_reg[19][0] ;
  wire \reg_saved_reg[19][1] ;
  wire \reg_saved_reg[19][24] ;
  wire \reg_saved_reg[19][25] ;
  wire \reg_saved_reg[19][26] ;
  wire \reg_saved_reg[19][2] ;
  wire \reg_saved_reg[19][3] ;
  wire \reg_saved_reg[19][4] ;
  wire \reg_saved_reg[19][5] ;
  wire \reg_saved_reg[19][6] ;
  wire \save_block_count_vars[0].block_count_vars_used_reg[0]__0 ;
  wire [0:0]\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][0] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][10] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][11] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][12] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][13] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][14] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][15] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][16] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][17] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][18] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][19] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][1] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][20] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][21] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][22] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][2] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][3] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][4] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][5] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][6] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][7] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][8] ;
  wire \save_block_count_vars[1].block_count_vars_reg_n_0_[1][9] ;
  wire \save_block_count_vars[1].block_count_vars_used_reg[1]__0 ;
  wire save_current_cmd;
  wire [0:0]\save_erase_vars[0].erase_vars_reg[0][31]_0 ;
  wire [31:0]\save_erase_vars[1].erase_vars_reg[1][31]_0 ;
  wire [0:0]\save_erase_vars[1].erase_vars_reg[1][31]_1 ;
  wire [31:0]\saved_cmd_arg_reg[31]_0 ;
  wire [5:0]saved_cmd_index;
  wire saved_cmd_is_acmd;
  wire saved_cmd_is_acmd_reg_0;
  wire [2:0]state_next4_carry;
  wire state_next4_carry_0;
  wire [3:0]state_next4_carry_1;
  wire [3:0]state_next4_carry__0;
  wire [3:0]state_next4_carry__0_0;
  wire [3:0]state_next4_carry__1;
  wire [3:0]state_next4_carry__1_0;
  wire [3:0]state_next4_carry__2;
  wire [3:0]state_next4_carry__2_0;
  wire update_2;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\axi_rdata[26]_i_3 [0]),
        .I1(\axi_rdata[26]_i_3_0 [0]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [0]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[0]),
        .O(\reg_saved_reg[19][0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\axi_rdata[26]_i_3 [1]),
        .I1(\axi_rdata[26]_i_3_0 [1]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [1]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[1]),
        .O(\reg_saved_reg[19][1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\axi_rdata[26]_i_3 [7]),
        .I1(\axi_rdata[26]_i_3_0 [7]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [7]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(got_cmd8),
        .O(\reg_saved_reg[19][24] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\axi_rdata[26]_i_3 [8]),
        .I1(\axi_rdata[26]_i_3_0 [8]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [8]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(block_limit_used),
        .O(\reg_saved_reg[19][25] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\axi_rdata[26]_i_3 [9]),
        .I1(\axi_rdata[26]_i_3_0 [9]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [9]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(pre_erase_count_used),
        .O(\reg_saved_reg[19][26] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\axi_rdata[26]_i_3 [2]),
        .I1(\axi_rdata[26]_i_3_0 [2]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [2]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[2]),
        .O(\reg_saved_reg[19][2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\axi_rdata[26]_i_3 [3]),
        .I1(\axi_rdata[26]_i_3_0 [3]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [3]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[3]),
        .O(\reg_saved_reg[19][3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\axi_rdata[26]_i_3 [4]),
        .I1(\axi_rdata[26]_i_3_0 [4]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [4]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[4]),
        .O(\reg_saved_reg[19][4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\axi_rdata[26]_i_3 [5]),
        .I1(\axi_rdata[26]_i_3_0 [5]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [5]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_index[5]),
        .O(\reg_saved_reg[19][5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata[26]_i_3 [6]),
        .I1(\axi_rdata[26]_i_3_0 [6]),
        .I2(\axi_rdata[0]_i_3 [1]),
        .I3(\axi_rdata[26]_i_3_1 [6]),
        .I4(\axi_rdata[0]_i_3 [0]),
        .I5(saved_cmd_is_acmd),
        .O(\reg_saved_reg[19][6] ));
  FDRE \block_count_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [0]),
        .Q(\block_count_reg[31]_0 [0]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [10]),
        .Q(\block_count_reg[31]_0 [10]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [11]),
        .Q(\block_count_reg[31]_0 [11]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [12]),
        .Q(\block_count_reg[31]_0 [12]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [13]),
        .Q(\block_count_reg[31]_0 [13]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [14]),
        .Q(\block_count_reg[31]_0 [14]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [15]),
        .Q(\block_count_reg[31]_0 [15]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [16]),
        .Q(\block_count_reg[31]_0 [16]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [17]),
        .Q(\block_count_reg[31]_0 [17]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [18]),
        .Q(\block_count_reg[31]_0 [18]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [19]),
        .Q(\block_count_reg[31]_0 [19]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [1]),
        .Q(\block_count_reg[31]_0 [1]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [20]),
        .Q(\block_count_reg[31]_0 [20]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [21]),
        .Q(\block_count_reg[31]_0 [21]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [22]),
        .Q(\block_count_reg[31]_0 [22]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [23]),
        .Q(\block_count_reg[31]_0 [23]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [24]),
        .Q(\block_count_reg[31]_0 [24]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [25]),
        .Q(\block_count_reg[31]_0 [25]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [26]),
        .Q(\block_count_reg[31]_0 [26]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [27]),
        .Q(\block_count_reg[31]_0 [27]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [28]),
        .Q(\block_count_reg[31]_0 [28]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [29]),
        .Q(\block_count_reg[31]_0 [29]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [2]),
        .Q(\block_count_reg[31]_0 [2]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [30]),
        .Q(\block_count_reg[31]_0 [30]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [31]),
        .Q(\block_count_reg[31]_0 [31]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [3]),
        .Q(\block_count_reg[31]_0 [3]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [4]),
        .Q(\block_count_reg[31]_0 [4]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [5]),
        .Q(\block_count_reg[31]_0 [5]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [6]),
        .Q(\block_count_reg[31]_0 [6]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [7]),
        .Q(\block_count_reg[31]_0 [7]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [8]),
        .Q(\block_count_reg[31]_0 [8]),
        .R(got_cmd8_reg_0));
  FDRE \block_count_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\block_count_vars[0]_8 [9]),
        .Q(\block_count_reg[31]_0 [9]),
        .R(got_cmd8_reg_0));
  FDRE block_count_used_reg
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[0].block_count_vars_used_reg[0]__0 ),
        .Q(block_limit_used),
        .R(got_cmd8_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \card_status[11]_i_2 
       (.I0(update_2),
        .I1(erase_seq_error),
        .I2(erase_reset),
        .I3(out_of_range),
        .I4(invalid_dat_width),
        .O(erase_seq_error_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \card_status_resp[13]_i_1 
       (.I0(erase_reset),
        .I1(\card_status_resp_reg[28] [0]),
        .O(erase_seq_error_reg_1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \card_status_resp[28]_i_1 
       (.I0(erase_seq_error),
        .I1(\card_status_resp_reg[28] [1]),
        .O(erase_seq_error_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000EA00)) 
    cmd_saved_missed_i_1
       (.I0(cmd_saved_missed),
        .I1(new_cmd_saved),
        .I2(cmd_saved_unread),
        .I3(S_AXI_ARESETN),
        .I4(cmd_saved_missed_reg_0),
        .O(cmd_saved_missed_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    cmd_saved_unread_i_1
       (.I0(new_cmd_saved),
        .I1(cmd_saved_missed_reg_0),
        .I2(cmd_saved_unread),
        .O(new_cmd_saved_reg_0));
  FDRE \erase_end_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [0]),
        .Q(\erase_end_reg[31]_0 [0]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [10]),
        .Q(\erase_end_reg[31]_0 [10]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [11]),
        .Q(\erase_end_reg[31]_0 [11]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [12]),
        .Q(\erase_end_reg[31]_0 [12]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [13]),
        .Q(\erase_end_reg[31]_0 [13]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [14]),
        .Q(\erase_end_reg[31]_0 [14]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [15]),
        .Q(\erase_end_reg[31]_0 [15]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [16]),
        .Q(\erase_end_reg[31]_0 [16]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [17]),
        .Q(\erase_end_reg[31]_0 [17]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [18]),
        .Q(\erase_end_reg[31]_0 [18]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [19]),
        .Q(\erase_end_reg[31]_0 [19]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [1]),
        .Q(\erase_end_reg[31]_0 [1]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [20]),
        .Q(\erase_end_reg[31]_0 [20]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [21]),
        .Q(\erase_end_reg[31]_0 [21]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [22]),
        .Q(\erase_end_reg[31]_0 [22]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [23]),
        .Q(\erase_end_reg[31]_0 [23]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [24]),
        .Q(\erase_end_reg[31]_0 [24]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [25]),
        .Q(\erase_end_reg[31]_0 [25]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [26]),
        .Q(\erase_end_reg[31]_0 [26]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [27]),
        .Q(\erase_end_reg[31]_0 [27]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [28]),
        .Q(\erase_end_reg[31]_0 [28]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [29]),
        .Q(\erase_end_reg[31]_0 [29]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [2]),
        .Q(\erase_end_reg[31]_0 [2]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [30]),
        .Q(\erase_end_reg[31]_0 [30]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [31]),
        .Q(\erase_end_reg[31]_0 [31]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [3]),
        .Q(\erase_end_reg[31]_0 [3]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [4]),
        .Q(\erase_end_reg[31]_0 [4]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [5]),
        .Q(\erase_end_reg[31]_0 [5]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [6]),
        .Q(\erase_end_reg[31]_0 [6]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [7]),
        .Q(\erase_end_reg[31]_0 [7]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [8]),
        .Q(\erase_end_reg[31]_0 [8]),
        .R(got_cmd8_reg_0));
  FDRE \erase_end_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[1]_7 [9]),
        .Q(\erase_end_reg[31]_0 [9]),
        .R(got_cmd8_reg_0));
  LUT6 #(
    .INIT(64'h0000000054FF5400)) 
    erase_reset_i_1
       (.I0(erase_reset_reg_0),
        .I1(\erase_step_reg[0]_0 ),
        .I2(\erase_step_reg[1]_0 ),
        .I3(erase_reset_reg_1),
        .I4(erase_reset),
        .I5(got_cmd8_reg_0),
        .O(erase_reset_i_1_n_0));
  FDRE erase_reset_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(erase_reset_i_1_n_0),
        .Q(erase_reset),
        .R(1'b0));
  FDRE erase_seq_error_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(erase_seq_error_reg_2),
        .Q(erase_seq_error),
        .R(1'b0));
  FDRE \erase_start_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [0]),
        .Q(\erase_start_reg[31]_0 [0]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [10]),
        .Q(\erase_start_reg[31]_0 [10]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [11]),
        .Q(\erase_start_reg[31]_0 [11]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [12]),
        .Q(\erase_start_reg[31]_0 [12]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [13]),
        .Q(\erase_start_reg[31]_0 [13]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [14]),
        .Q(\erase_start_reg[31]_0 [14]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [15]),
        .Q(\erase_start_reg[31]_0 [15]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [16]),
        .Q(\erase_start_reg[31]_0 [16]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [17]),
        .Q(\erase_start_reg[31]_0 [17]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [18]),
        .Q(\erase_start_reg[31]_0 [18]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [19]),
        .Q(\erase_start_reg[31]_0 [19]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [1]),
        .Q(\erase_start_reg[31]_0 [1]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [20]),
        .Q(\erase_start_reg[31]_0 [20]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [21]),
        .Q(\erase_start_reg[31]_0 [21]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [22]),
        .Q(\erase_start_reg[31]_0 [22]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [23]),
        .Q(\erase_start_reg[31]_0 [23]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [24]),
        .Q(\erase_start_reg[31]_0 [24]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [25]),
        .Q(\erase_start_reg[31]_0 [25]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [26]),
        .Q(\erase_start_reg[31]_0 [26]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [27]),
        .Q(\erase_start_reg[31]_0 [27]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [28]),
        .Q(\erase_start_reg[31]_0 [28]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [29]),
        .Q(\erase_start_reg[31]_0 [29]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [2]),
        .Q(\erase_start_reg[31]_0 [2]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [30]),
        .Q(\erase_start_reg[31]_0 [30]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [31]),
        .Q(\erase_start_reg[31]_0 [31]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [3]),
        .Q(\erase_start_reg[31]_0 [3]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [4]),
        .Q(\erase_start_reg[31]_0 [4]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [5]),
        .Q(\erase_start_reg[31]_0 [5]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [6]),
        .Q(\erase_start_reg[31]_0 [6]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [7]),
        .Q(\erase_start_reg[31]_0 [7]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [8]),
        .Q(\erase_start_reg[31]_0 [8]),
        .R(got_cmd8_reg_0));
  FDRE \erase_start_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\erase_vars[0]_6 [9]),
        .Q(\erase_start_reg[31]_0 [9]),
        .R(got_cmd8_reg_0));
  FDRE \erase_step_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\erase_step_reg[0]_1 ),
        .Q(\erase_step_reg[0]_0 ),
        .R(1'b0));
  FDRE \erase_step_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\erase_step_reg[1]_1 ),
        .Q(\erase_step_reg[1]_0 ),
        .R(1'b0));
  FDRE got_cmd8_1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(got_cmd8_1_reg_0),
        .Q(got_cmd8_1),
        .R(got_cmd8_reg_0));
  FDRE got_cmd8_reg
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(got_cmd8_1),
        .Q(got_cmd8),
        .R(got_cmd8_reg_0));
  FDRE new_cmd_saved_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(save_current_cmd),
        .Q(new_cmd_saved),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][0] ),
        .Q(\pre_erase_count_reg[22]_0 [0]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][10] ),
        .Q(\pre_erase_count_reg[22]_0 [10]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][11] ),
        .Q(\pre_erase_count_reg[22]_0 [11]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][12] ),
        .Q(\pre_erase_count_reg[22]_0 [12]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][13] ),
        .Q(\pre_erase_count_reg[22]_0 [13]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][14] ),
        .Q(\pre_erase_count_reg[22]_0 [14]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][15] ),
        .Q(\pre_erase_count_reg[22]_0 [15]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][16] ),
        .Q(\pre_erase_count_reg[22]_0 [16]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][17] ),
        .Q(\pre_erase_count_reg[22]_0 [17]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][18] ),
        .Q(\pre_erase_count_reg[22]_0 [18]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][19] ),
        .Q(\pre_erase_count_reg[22]_0 [19]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][1] ),
        .Q(\pre_erase_count_reg[22]_0 [1]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][20] ),
        .Q(\pre_erase_count_reg[22]_0 [20]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][21] ),
        .Q(\pre_erase_count_reg[22]_0 [21]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][22] ),
        .Q(\pre_erase_count_reg[22]_0 [22]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][2] ),
        .Q(\pre_erase_count_reg[22]_0 [2]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][3] ),
        .Q(\pre_erase_count_reg[22]_0 [3]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][4] ),
        .Q(\pre_erase_count_reg[22]_0 [4]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][5] ),
        .Q(\pre_erase_count_reg[22]_0 [5]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][6] ),
        .Q(\pre_erase_count_reg[22]_0 [6]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][7] ),
        .Q(\pre_erase_count_reg[22]_0 [7]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][8] ),
        .Q(\pre_erase_count_reg[22]_0 [8]),
        .R(got_cmd8_reg_0));
  FDRE \pre_erase_count_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][9] ),
        .Q(\pre_erase_count_reg[22]_0 [9]),
        .R(got_cmd8_reg_0));
  FDRE pre_erase_count_used_reg
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_block_count_vars[1].block_count_vars_used_reg[1]__0 ),
        .Q(pre_erase_count_used),
        .R(got_cmd8_reg_0));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .Q(\block_count_vars[0]_8 [0]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .Q(\block_count_vars[0]_8 [10]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .Q(\block_count_vars[0]_8 [11]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .Q(\block_count_vars[0]_8 [12]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .Q(\block_count_vars[0]_8 [13]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .Q(\block_count_vars[0]_8 [14]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .Q(\block_count_vars[0]_8 [15]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .Q(\block_count_vars[0]_8 [16]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .Q(\block_count_vars[0]_8 [17]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .Q(\block_count_vars[0]_8 [18]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .Q(\block_count_vars[0]_8 [19]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .Q(\block_count_vars[0]_8 [1]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .Q(\block_count_vars[0]_8 [20]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .Q(\block_count_vars[0]_8 [21]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .Q(\block_count_vars[0]_8 [22]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [23]),
        .Q(\block_count_vars[0]_8 [23]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [24]),
        .Q(\block_count_vars[0]_8 [24]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [25]),
        .Q(\block_count_vars[0]_8 [25]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [26]),
        .Q(\block_count_vars[0]_8 [26]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [27]),
        .Q(\block_count_vars[0]_8 [27]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [28]),
        .Q(\block_count_vars[0]_8 [28]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [29]),
        .Q(\block_count_vars[0]_8 [29]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .Q(\block_count_vars[0]_8 [2]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [30]),
        .Q(\block_count_vars[0]_8 [30]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [31]),
        .Q(\block_count_vars[0]_8 [31]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .Q(\block_count_vars[0]_8 [3]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .Q(\block_count_vars[0]_8 [4]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .Q(\block_count_vars[0]_8 [5]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .Q(\block_count_vars[0]_8 [6]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .Q(\block_count_vars[0]_8 [7]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .Q(\block_count_vars[0]_8 [8]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .Q(\block_count_vars[0]_8 [9]),
        .R(SR));
  FDRE \save_block_count_vars[0].block_count_vars_used_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(E),
        .Q(\save_block_count_vars[0].block_count_vars_used_reg[0]__0 ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][0] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][10] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][11] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][12] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][13] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][14] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][15] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][16] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][16] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][17] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][17] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][18] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][18] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][19] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][19] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][1] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][20] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][20] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][21] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][21] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][22] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][22] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][2] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][3] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][4] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][5] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][6] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][7] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][8] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .Q(\save_block_count_vars[1].block_count_vars_reg_n_0_[1][9] ),
        .R(SR));
  FDRE \save_block_count_vars[1].block_count_vars_used_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .D(\save_block_count_vars[1].block_count_vars_reg[1][22]_0 ),
        .Q(\save_block_count_vars[1].block_count_vars_used_reg[1]__0 ),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .Q(\erase_vars[0]_6 [0]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .Q(\erase_vars[0]_6 [10]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .Q(\erase_vars[0]_6 [11]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .Q(\erase_vars[0]_6 [12]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .Q(\erase_vars[0]_6 [13]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .Q(\erase_vars[0]_6 [14]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .Q(\erase_vars[0]_6 [15]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .Q(\erase_vars[0]_6 [16]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .Q(\erase_vars[0]_6 [17]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .Q(\erase_vars[0]_6 [18]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .Q(\erase_vars[0]_6 [19]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .Q(\erase_vars[0]_6 [1]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .Q(\erase_vars[0]_6 [20]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .Q(\erase_vars[0]_6 [21]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .Q(\erase_vars[0]_6 [22]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [23]),
        .Q(\erase_vars[0]_6 [23]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [24]),
        .Q(\erase_vars[0]_6 [24]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [25]),
        .Q(\erase_vars[0]_6 [25]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [26]),
        .Q(\erase_vars[0]_6 [26]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [27]),
        .Q(\erase_vars[0]_6 [27]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [28]),
        .Q(\erase_vars[0]_6 [28]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [29]),
        .Q(\erase_vars[0]_6 [29]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .Q(\erase_vars[0]_6 [2]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [30]),
        .Q(\erase_vars[0]_6 [30]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [31]),
        .Q(\erase_vars[0]_6 [31]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .Q(\erase_vars[0]_6 [3]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .Q(\erase_vars[0]_6 [4]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .Q(\erase_vars[0]_6 [5]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .Q(\erase_vars[0]_6 [6]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .Q(\erase_vars[0]_6 [7]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .Q(\erase_vars[0]_6 [8]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[0].erase_vars_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[0].erase_vars_reg[0][31]_0 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .Q(\erase_vars[0]_6 [9]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .Q(\erase_vars[1]_7 [0]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .Q(\erase_vars[1]_7 [10]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .Q(\erase_vars[1]_7 [11]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .Q(\erase_vars[1]_7 [12]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .Q(\erase_vars[1]_7 [13]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .Q(\erase_vars[1]_7 [14]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .Q(\erase_vars[1]_7 [15]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][16] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .Q(\erase_vars[1]_7 [16]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][17] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .Q(\erase_vars[1]_7 [17]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][18] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .Q(\erase_vars[1]_7 [18]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][19] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .Q(\erase_vars[1]_7 [19]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .Q(\erase_vars[1]_7 [1]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][20] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .Q(\erase_vars[1]_7 [20]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][21] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .Q(\erase_vars[1]_7 [21]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][22] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .Q(\erase_vars[1]_7 [22]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][23] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [23]),
        .Q(\erase_vars[1]_7 [23]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][24] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [24]),
        .Q(\erase_vars[1]_7 [24]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][25] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [25]),
        .Q(\erase_vars[1]_7 [25]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][26] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [26]),
        .Q(\erase_vars[1]_7 [26]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][27] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [27]),
        .Q(\erase_vars[1]_7 [27]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][28] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [28]),
        .Q(\erase_vars[1]_7 [28]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][29] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [29]),
        .Q(\erase_vars[1]_7 [29]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .Q(\erase_vars[1]_7 [2]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][30] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [30]),
        .Q(\erase_vars[1]_7 [30]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][31] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [31]),
        .Q(\erase_vars[1]_7 [31]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .Q(\erase_vars[1]_7 [3]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .Q(\erase_vars[1]_7 [4]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .Q(\erase_vars[1]_7 [5]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .Q(\erase_vars[1]_7 [6]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .Q(\erase_vars[1]_7 [7]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .Q(\erase_vars[1]_7 [8]),
        .R(got_cmd8_reg_0));
  FDRE \save_erase_vars[1].erase_vars_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .Q(\erase_vars[1]_7 [9]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .Q(\saved_cmd_arg_reg[31]_0 [0]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .Q(\saved_cmd_arg_reg[31]_0 [10]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .Q(\saved_cmd_arg_reg[31]_0 [11]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .Q(\saved_cmd_arg_reg[31]_0 [12]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .Q(\saved_cmd_arg_reg[31]_0 [13]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .Q(\saved_cmd_arg_reg[31]_0 [14]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .Q(\saved_cmd_arg_reg[31]_0 [15]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .Q(\saved_cmd_arg_reg[31]_0 [16]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .Q(\saved_cmd_arg_reg[31]_0 [17]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .Q(\saved_cmd_arg_reg[31]_0 [18]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .Q(\saved_cmd_arg_reg[31]_0 [19]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .Q(\saved_cmd_arg_reg[31]_0 [1]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .Q(\saved_cmd_arg_reg[31]_0 [20]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .Q(\saved_cmd_arg_reg[31]_0 [21]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .Q(\saved_cmd_arg_reg[31]_0 [22]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [23]),
        .Q(\saved_cmd_arg_reg[31]_0 [23]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [24]),
        .Q(\saved_cmd_arg_reg[31]_0 [24]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [25]),
        .Q(\saved_cmd_arg_reg[31]_0 [25]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [26]),
        .Q(\saved_cmd_arg_reg[31]_0 [26]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [27]),
        .Q(\saved_cmd_arg_reg[31]_0 [27]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [28]),
        .Q(\saved_cmd_arg_reg[31]_0 [28]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [29]),
        .Q(\saved_cmd_arg_reg[31]_0 [29]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .Q(\saved_cmd_arg_reg[31]_0 [2]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [30]),
        .Q(\saved_cmd_arg_reg[31]_0 [30]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [31]),
        .Q(\saved_cmd_arg_reg[31]_0 [31]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .Q(\saved_cmd_arg_reg[31]_0 [3]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .Q(\saved_cmd_arg_reg[31]_0 [4]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .Q(\saved_cmd_arg_reg[31]_0 [5]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .Q(\saved_cmd_arg_reg[31]_0 [6]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .Q(\saved_cmd_arg_reg[31]_0 [7]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .Q(\saved_cmd_arg_reg[31]_0 [8]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_arg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .Q(\saved_cmd_arg_reg[31]_0 [9]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[0]),
        .Q(saved_cmd_index[0]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[1]),
        .Q(saved_cmd_index[1]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[2]),
        .Q(saved_cmd_index[2]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[3]),
        .Q(saved_cmd_index[3]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[4]),
        .Q(saved_cmd_index[4]),
        .R(got_cmd8_reg_0));
  FDRE \saved_cmd_index_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(Q[5]),
        .Q(saved_cmd_index[5]),
        .R(got_cmd8_reg_0));
  FDRE saved_cmd_is_acmd_reg
       (.C(S_AXI_ACLK),
        .CE(save_current_cmd),
        .D(saved_cmd_is_acmd_reg_0),
        .Q(saved_cmd_is_acmd),
        .R(got_cmd8_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__0_i_5
       (.I0(\block_count_reg[31]_0 [15]),
        .I1(state_next4_carry__0_0[3]),
        .I2(\block_count_reg[31]_0 [14]),
        .I3(state_next4_carry__0_0[2]),
        .O(\block_count_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__0_i_6
       (.I0(\block_count_reg[31]_0 [13]),
        .I1(state_next4_carry__0_0[1]),
        .I2(\block_count_reg[31]_0 [12]),
        .I3(state_next4_carry__0_0[0]),
        .O(\block_count_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__0_i_7
       (.I0(\block_count_reg[31]_0 [11]),
        .I1(state_next4_carry__0[3]),
        .I2(\block_count_reg[31]_0 [10]),
        .I3(state_next4_carry__0[2]),
        .O(\block_count_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__0_i_8
       (.I0(\block_count_reg[31]_0 [9]),
        .I1(state_next4_carry__0[1]),
        .I2(\block_count_reg[31]_0 [8]),
        .I3(state_next4_carry__0[0]),
        .O(\block_count_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__1_i_5
       (.I0(\block_count_reg[31]_0 [23]),
        .I1(state_next4_carry__1_0[3]),
        .I2(\block_count_reg[31]_0 [22]),
        .I3(state_next4_carry__1_0[2]),
        .O(\block_count_reg[23]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__1_i_6
       (.I0(\block_count_reg[31]_0 [21]),
        .I1(state_next4_carry__1_0[1]),
        .I2(\block_count_reg[31]_0 [20]),
        .I3(state_next4_carry__1_0[0]),
        .O(\block_count_reg[23]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__1_i_7
       (.I0(\block_count_reg[31]_0 [19]),
        .I1(state_next4_carry__1[3]),
        .I2(\block_count_reg[31]_0 [18]),
        .I3(state_next4_carry__1[2]),
        .O(\block_count_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__1_i_8
       (.I0(\block_count_reg[31]_0 [17]),
        .I1(state_next4_carry__1[1]),
        .I2(\block_count_reg[31]_0 [16]),
        .I3(state_next4_carry__1[0]),
        .O(\block_count_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__2_i_5
       (.I0(\block_count_reg[31]_0 [31]),
        .I1(state_next4_carry__2_0[3]),
        .I2(\block_count_reg[31]_0 [30]),
        .I3(state_next4_carry__2_0[2]),
        .O(\block_count_reg[31]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__2_i_6
       (.I0(\block_count_reg[31]_0 [29]),
        .I1(state_next4_carry__2_0[1]),
        .I2(\block_count_reg[31]_0 [28]),
        .I3(state_next4_carry__2_0[0]),
        .O(\block_count_reg[31]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__2_i_7
       (.I0(\block_count_reg[31]_0 [27]),
        .I1(state_next4_carry__2[3]),
        .I2(\block_count_reg[31]_0 [26]),
        .I3(state_next4_carry__2[2]),
        .O(\block_count_reg[31]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry__2_i_8
       (.I0(\block_count_reg[31]_0 [25]),
        .I1(state_next4_carry__2[1]),
        .I2(\block_count_reg[31]_0 [24]),
        .I3(state_next4_carry__2[0]),
        .O(\block_count_reg[31]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry_i_5
       (.I0(\block_count_reg[31]_0 [7]),
        .I1(state_next4_carry_1[3]),
        .I2(\block_count_reg[31]_0 [6]),
        .I3(state_next4_carry_1[2]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry_i_6
       (.I0(\block_count_reg[31]_0 [5]),
        .I1(state_next4_carry_1[1]),
        .I2(\block_count_reg[31]_0 [4]),
        .I3(state_next4_carry_1[0]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry_i_7
       (.I0(\block_count_reg[31]_0 [3]),
        .I1(state_next4_carry[2]),
        .I2(\block_count_reg[31]_0 [2]),
        .I3(state_next4_carry[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    state_next4_carry_i_8
       (.I0(\block_count_reg[31]_0 [1]),
        .I1(state_next4_carry[0]),
        .I2(\block_count_reg[31]_0 [0]),
        .I3(state_next4_carry_0),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "cmd_interface" *) 
module adapter_axi_sd_0_0_cmd_interface
   (sd_cmd_o_sys,
    sd_cmd_t_sys,
    Q,
    \counter_reg[4]_0 ,
    \cmd_index_reg[5]_0 ,
    \cmd_arg_reg[31]_0 ,
    cmd_crc_err_reg_0,
    \FSM_onehot_state_reg[0] ,
    got_new_cmd_reg_0,
    \cmd_index_reg[1]_0 ,
    \cmd_index_reg[2]_0 ,
    \cmd_index_reg[1]_1 ,
    \counter_reg[4]_1 ,
    \cmd_index_reg[0]_0 ,
    \cmd_index_reg[0]_1 ,
    \cmd_index_reg[3]_0 ,
    resp_no_crc_next,
    \cmd_index_reg[3]_1 ,
    \cmd_index_reg[5]_1 ,
    \FSM_onehot_state_reg[3] ,
    \cmd_index_reg[3]_2 ,
    \reg_saved_reg[19][8] ,
    \reg_saved_reg[19][9] ,
    \reg_saved_reg[19][10] ,
    \reg_saved_reg[19][11] ,
    \reg_saved_reg[19][12] ,
    \reg_saved_reg[19][13] ,
    got_acmd41_non_query_reg,
    got_acmd41_non_query_reg_0,
    \card_status_reg[11] ,
    p_3_out,
    \card_status_reg[9] ,
    \erase_step_reg[0] ,
    \erase_step_reg[0]_0 ,
    \cmd_index_reg[5]_2 ,
    \cmd_index_reg[0]_2 ,
    erase_seq_error_reg,
    out_of_range_reg,
    \cmd_arg_reg[0]_0 ,
    \cmd_index_reg[5]_3 ,
    \resp_cur_reg[2] ,
    \state_reg[4]_0 ,
    SR,
    save_current_cmd,
    \cmd_index_reg[0]_3 ,
    acmd_defined_reg,
    \FSM_onehot_state_reg[0]_0 ,
    \cmd_index_reg[5]_4 ,
    \cmd_index_reg[3]_3 ,
    \set_reg_clear_always[12].reg_clear_always_reg[12][5] ,
    update_2,
    \FSM_onehot_state_reg[4] ,
    got_cmd00,
    \cmd_index_reg[0]_4 ,
    \cmd_arg_reg[19]_0 ,
    \card_status_reg[5] ,
    ignored_c,
    \cmd_index_reg[4]_0 ,
    multi_block_mode_next,
    acmd_defined_reg_0,
    \cmd_index_reg[5]_5 ,
    \cmd_index_reg[5]_6 ,
    \cmd_index_reg[1]_2 ,
    S,
    \cmd_arg_reg[30]_0 ,
    \cmd_index_reg[3]_4 ,
    \cmd_index_reg[1]_3 ,
    \cmd_index_reg[0]_5 ,
    \cmd_index_reg[5]_7 ,
    \cmd_index_reg[1]_4 ,
    acmd_defined_reg_1,
    \size_reg[7] ,
    DI,
    \size_reg[15] ,
    \cmd_arg_reg[15]_0 ,
    \size_reg[23] ,
    \cmd_arg_reg[23]_0 ,
    \size_reg[31] ,
    \cmd_arg_reg[31]_1 ,
    cmd_crc_err_stb0,
    ram_dev_addr,
    is_writing_reg_inv_0,
    S_AXI_ACLK,
    E,
    send_no_resp,
    \resp_byte_reg[0] ,
    \FSM_onehot_state_reg[4]_0 ,
    ram_dev_data,
    \axi_rdata[13]_i_3 ,
    \axi_rdata[13]_i_3_0 ,
    \axi_rdata[13]_i_3_1 ,
    \axi_rdata[13]_i_3_2 ,
    got_acmd41_non_query_reg_1,
    \saved_cmd_index_reg[5] ,
    \card_status_reg[11]_0 ,
    \erase_step_reg[0]_1 ,
    \erase_step_reg[0]_2 ,
    got_cmd8_1,
    erase_seq_error,
    CO,
    out_of_range,
    invalid_dat_width_reg,
    invalid_dat_width,
    \buf_read_reg[0]_0 ,
    sd_cmd_o_sys_reg_0,
    send_resp,
    resp_no_crc,
    \state[5]_i_6 ,
    \resp_byte[4]_i_4_0 ,
    \resp_byte_reg[7] ,
    \resp_byte_reg[6] ,
    \resp_byte_reg[3] ,
    \resp_byte[7]_i_8_0 ,
    \resp_byte_reg[1] ,
    \resp_byte[5]_i_3_0 ,
    \resp_byte[4]_i_3_0 ,
    \resp_byte[2]_i_3_0 ,
    \resp_byte_reg[0]_i_2_0 ,
    \resp_byte_reg[6]_i_6_0 ,
    initialization_done,
    \resp_byte_reg[2] ,
    \resp_byte_reg[5] ,
    resp_no_crc_reg,
    \card_status_reg[9]_0 ,
    \card_status_reg[9]_1 ,
    \card_status_reg[5]_0 ,
    \card_status_reg[5]_1 ,
    \card_status_reg[5]_2 ,
    last_cmd_valid,
    \card_status[11]_i_4_0 ,
    illegal_reg,
    ignored_reg,
    ignored_reg_0,
    out_of_range0_carry,
    out_of_range0_carry_0,
    out_of_range0_carry_1,
    out_of_range0_carry_2,
    out_of_range0_carry_3,
    out_of_range0_carry_4,
    out_of_range0_carry_5,
    out_of_range0_carry_6,
    out_of_range0_carry__0,
    out_of_range0_carry__0_0,
    out_of_range0_carry__0_1,
    out_of_range0_carry__0_2,
    out_of_range0_carry__0_3,
    out_of_range0_carry__0_4,
    out_of_range0_carry__0_5,
    out_of_range0_carry__0_6,
    out_of_range0_carry__1,
    out_of_range0_carry__1_0,
    out_of_range0_carry__1_1,
    out_of_range0_carry__1_2,
    out_of_range0_carry__1_3,
    out_of_range0_carry__1_4,
    out_of_range0_carry__1_5,
    out_of_range0_carry__1_6,
    out_of_range0_carry__2,
    out_of_range0_carry__2_0,
    out_of_range0_carry__2_1,
    out_of_range0_carry__2_2,
    out_of_range0_carry__2_3,
    out_of_range0_carry__2_4,
    out_of_range0_carry__2_5,
    out_of_range0_carry__2_6);
  output sd_cmd_o_sys;
  output sd_cmd_t_sys;
  output [0:0]Q;
  output [1:0]\counter_reg[4]_0 ;
  output [5:0]\cmd_index_reg[5]_0 ;
  output [31:0]\cmd_arg_reg[31]_0 ;
  output cmd_crc_err_reg_0;
  output \FSM_onehot_state_reg[0] ;
  output got_new_cmd_reg_0;
  output \cmd_index_reg[1]_0 ;
  output [4:0]\cmd_index_reg[2]_0 ;
  output \cmd_index_reg[1]_1 ;
  output \counter_reg[4]_1 ;
  output [3:0]\cmd_index_reg[0]_0 ;
  output \cmd_index_reg[0]_1 ;
  output \cmd_index_reg[3]_0 ;
  output resp_no_crc_next;
  output \cmd_index_reg[3]_1 ;
  output \cmd_index_reg[5]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \cmd_index_reg[3]_2 ;
  output \reg_saved_reg[19][8] ;
  output \reg_saved_reg[19][9] ;
  output \reg_saved_reg[19][10] ;
  output \reg_saved_reg[19][11] ;
  output \reg_saved_reg[19][12] ;
  output \reg_saved_reg[19][13] ;
  output got_acmd41_non_query_reg;
  output got_acmd41_non_query_reg_0;
  output \card_status_reg[11] ;
  output [0:0]p_3_out;
  output \card_status_reg[9] ;
  output \erase_step_reg[0] ;
  output \erase_step_reg[0]_0 ;
  output \cmd_index_reg[5]_2 ;
  output \cmd_index_reg[0]_2 ;
  output erase_seq_error_reg;
  output out_of_range_reg;
  output \cmd_arg_reg[0]_0 ;
  output \cmd_index_reg[5]_3 ;
  output [7:0]\resp_cur_reg[2] ;
  output \state_reg[4]_0 ;
  output [0:0]SR;
  output save_current_cmd;
  output [0:0]\cmd_index_reg[0]_3 ;
  output [0:0]acmd_defined_reg;
  output [0:0]\FSM_onehot_state_reg[0]_0 ;
  output [0:0]\cmd_index_reg[5]_4 ;
  output [0:0]\cmd_index_reg[3]_3 ;
  output [0:0]\set_reg_clear_always[12].reg_clear_always_reg[12][5] ;
  output update_2;
  output [4:0]\FSM_onehot_state_reg[4] ;
  output got_cmd00;
  output \cmd_index_reg[0]_4 ;
  output \cmd_arg_reg[19]_0 ;
  output \card_status_reg[5] ;
  output ignored_c;
  output \cmd_index_reg[4]_0 ;
  output multi_block_mode_next;
  output acmd_defined_reg_0;
  output \cmd_index_reg[5]_5 ;
  output \cmd_index_reg[5]_6 ;
  output \cmd_index_reg[1]_2 ;
  output [1:0]S;
  output [0:0]\cmd_arg_reg[30]_0 ;
  output \cmd_index_reg[3]_4 ;
  output \cmd_index_reg[1]_3 ;
  output \cmd_index_reg[0]_5 ;
  output \cmd_index_reg[5]_7 ;
  output \cmd_index_reg[1]_4 ;
  output [0:0]acmd_defined_reg_1;
  output [3:0]\size_reg[7] ;
  output [3:0]DI;
  output [3:0]\size_reg[15] ;
  output [3:0]\cmd_arg_reg[15]_0 ;
  output [3:0]\size_reg[23] ;
  output [3:0]\cmd_arg_reg[23]_0 ;
  output [3:0]\size_reg[31] ;
  output [3:0]\cmd_arg_reg[31]_1 ;
  output cmd_crc_err_stb0;
  output [1:0]ram_dev_addr;
  input is_writing_reg_inv_0;
  input S_AXI_ACLK;
  input [0:0]E;
  input send_no_resp;
  input [2:0]\resp_byte_reg[0] ;
  input [4:0]\FSM_onehot_state_reg[4]_0 ;
  input [31:0]ram_dev_data;
  input [5:0]\axi_rdata[13]_i_3 ;
  input [5:0]\axi_rdata[13]_i_3_0 ;
  input [1:0]\axi_rdata[13]_i_3_1 ;
  input [4:0]\axi_rdata[13]_i_3_2 ;
  input got_acmd41_non_query_reg_1;
  input \saved_cmd_index_reg[5] ;
  input [3:0]\card_status_reg[11]_0 ;
  input \erase_step_reg[0]_1 ;
  input \erase_step_reg[0]_2 ;
  input got_cmd8_1;
  input erase_seq_error;
  input [0:0]CO;
  input out_of_range;
  input invalid_dat_width_reg;
  input invalid_dat_width;
  input [0:0]\buf_read_reg[0]_0 ;
  input [7:0]sd_cmd_o_sys_reg_0;
  input send_resp;
  input resp_no_crc;
  input [3:0]\state[5]_i_6 ;
  input [21:0]\resp_byte[4]_i_4_0 ;
  input \resp_byte_reg[7] ;
  input \resp_byte_reg[6] ;
  input \resp_byte_reg[3] ;
  input [15:0]\resp_byte[7]_i_8_0 ;
  input \resp_byte_reg[1] ;
  input \resp_byte[5]_i_3_0 ;
  input \resp_byte[4]_i_3_0 ;
  input \resp_byte[2]_i_3_0 ;
  input \resp_byte_reg[0]_i_2_0 ;
  input \resp_byte_reg[6]_i_6_0 ;
  input initialization_done;
  input \resp_byte_reg[2] ;
  input \resp_byte_reg[5] ;
  input resp_no_crc_reg;
  input \card_status_reg[9]_0 ;
  input \card_status_reg[9]_1 ;
  input \card_status_reg[5]_0 ;
  input [0:0]\card_status_reg[5]_1 ;
  input [0:0]\card_status_reg[5]_2 ;
  input last_cmd_valid;
  input \card_status[11]_i_4_0 ;
  input illegal_reg;
  input [0:0]ignored_reg;
  input ignored_reg_0;
  input out_of_range0_carry;
  input out_of_range0_carry_0;
  input out_of_range0_carry_1;
  input out_of_range0_carry_2;
  input out_of_range0_carry_3;
  input out_of_range0_carry_4;
  input out_of_range0_carry_5;
  input out_of_range0_carry_6;
  input out_of_range0_carry__0;
  input out_of_range0_carry__0_0;
  input out_of_range0_carry__0_1;
  input out_of_range0_carry__0_2;
  input out_of_range0_carry__0_3;
  input out_of_range0_carry__0_4;
  input out_of_range0_carry__0_5;
  input out_of_range0_carry__0_6;
  input out_of_range0_carry__1;
  input out_of_range0_carry__1_0;
  input out_of_range0_carry__1_1;
  input out_of_range0_carry__1_2;
  input out_of_range0_carry__1_3;
  input out_of_range0_carry__1_4;
  input out_of_range0_carry__1_5;
  input out_of_range0_carry__1_6;
  input out_of_range0_carry__2;
  input out_of_range0_carry__2_0;
  input out_of_range0_carry__2_1;
  input out_of_range0_carry__2_2;
  input out_of_range0_carry__2_3;
  input out_of_range0_carry__2_4;
  input out_of_range0_carry__2_5;
  input out_of_range0_carry__2_6;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [4:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]\FSM_onehot_state_reg[4]_0 ;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]acmd_defined_reg;
  wire acmd_defined_reg_0;
  wire [0:0]acmd_defined_reg_1;
  wire [5:0]\axi_rdata[13]_i_3 ;
  wire [5:0]\axi_rdata[13]_i_3_0 ;
  wire [1:0]\axi_rdata[13]_i_3_1 ;
  wire [4:0]\axi_rdata[13]_i_3_2 ;
  wire [0:0]\buf_read_reg[0]_0 ;
  wire \buf_read_reg_n_0_[0] ;
  wire \buf_read_reg_n_0_[10] ;
  wire \buf_read_reg_n_0_[11] ;
  wire \buf_read_reg_n_0_[12] ;
  wire \buf_read_reg_n_0_[13] ;
  wire \buf_read_reg_n_0_[14] ;
  wire \buf_read_reg_n_0_[15] ;
  wire \buf_read_reg_n_0_[16] ;
  wire \buf_read_reg_n_0_[17] ;
  wire \buf_read_reg_n_0_[18] ;
  wire \buf_read_reg_n_0_[19] ;
  wire \buf_read_reg_n_0_[1] ;
  wire \buf_read_reg_n_0_[20] ;
  wire \buf_read_reg_n_0_[21] ;
  wire \buf_read_reg_n_0_[22] ;
  wire \buf_read_reg_n_0_[23] ;
  wire \buf_read_reg_n_0_[24] ;
  wire \buf_read_reg_n_0_[25] ;
  wire \buf_read_reg_n_0_[26] ;
  wire \buf_read_reg_n_0_[27] ;
  wire \buf_read_reg_n_0_[28] ;
  wire \buf_read_reg_n_0_[29] ;
  wire \buf_read_reg_n_0_[2] ;
  wire \buf_read_reg_n_0_[30] ;
  wire \buf_read_reg_n_0_[31] ;
  wire \buf_read_reg_n_0_[32] ;
  wire \buf_read_reg_n_0_[33] ;
  wire \buf_read_reg_n_0_[34] ;
  wire \buf_read_reg_n_0_[35] ;
  wire \buf_read_reg_n_0_[36] ;
  wire \buf_read_reg_n_0_[37] ;
  wire \buf_read_reg_n_0_[38] ;
  wire \buf_read_reg_n_0_[3] ;
  wire \buf_read_reg_n_0_[4] ;
  wire \buf_read_reg_n_0_[5] ;
  wire \buf_read_reg_n_0_[6] ;
  wire \buf_read_reg_n_0_[7] ;
  wire \buf_read_reg_n_0_[8] ;
  wire \buf_read_reg_n_0_[9] ;
  wire [6:0]buf_write;
  wire \buf_write[0]_i_1__0_n_0 ;
  wire \card_status[10]_i_3_n_0 ;
  wire \card_status[10]_i_4_n_0 ;
  wire \card_status[10]_i_5_n_0 ;
  wire \card_status[11]_i_3_n_0 ;
  wire \card_status[11]_i_4_0 ;
  wire \card_status[11]_i_7_n_0 ;
  wire \card_status[11]_i_8_n_0 ;
  wire \card_status[11]_i_9_n_0 ;
  wire \card_status[5]_i_2_n_0 ;
  wire \card_status[9]_i_2_n_0 ;
  wire \card_status[9]_i_3_n_0 ;
  wire \card_status[9]_i_4_n_0 ;
  wire \card_status_reg[11] ;
  wire [3:0]\card_status_reg[11]_0 ;
  wire \card_status_reg[5] ;
  wire \card_status_reg[5]_0 ;
  wire [0:0]\card_status_reg[5]_1 ;
  wire [0:0]\card_status_reg[5]_2 ;
  wire \card_status_reg[9] ;
  wire \card_status_reg[9]_0 ;
  wire \card_status_reg[9]_1 ;
  wire \card_status_resp[31]_i_3_n_0 ;
  wire \card_status_resp[5]_i_2_n_0 ;
  wire \cmd_arg_reg[0]_0 ;
  wire [3:0]\cmd_arg_reg[15]_0 ;
  wire \cmd_arg_reg[19]_0 ;
  wire [3:0]\cmd_arg_reg[23]_0 ;
  wire [0:0]\cmd_arg_reg[30]_0 ;
  wire [31:0]\cmd_arg_reg[31]_0 ;
  wire [3:0]\cmd_arg_reg[31]_1 ;
  wire cmd_crc_err_next;
  wire cmd_crc_err_reg_0;
  wire cmd_crc_err_stb0;
  wire [3:0]\cmd_index_reg[0]_0 ;
  wire \cmd_index_reg[0]_1 ;
  wire \cmd_index_reg[0]_2 ;
  wire [0:0]\cmd_index_reg[0]_3 ;
  wire \cmd_index_reg[0]_4 ;
  wire \cmd_index_reg[0]_5 ;
  wire \cmd_index_reg[1]_0 ;
  wire \cmd_index_reg[1]_1 ;
  wire \cmd_index_reg[1]_2 ;
  wire \cmd_index_reg[1]_3 ;
  wire \cmd_index_reg[1]_4 ;
  wire [4:0]\cmd_index_reg[2]_0 ;
  wire \cmd_index_reg[3]_0 ;
  wire \cmd_index_reg[3]_1 ;
  wire \cmd_index_reg[3]_2 ;
  wire [0:0]\cmd_index_reg[3]_3 ;
  wire \cmd_index_reg[3]_4 ;
  wire \cmd_index_reg[4]_0 ;
  wire [5:0]\cmd_index_reg[5]_0 ;
  wire \cmd_index_reg[5]_1 ;
  wire \cmd_index_reg[5]_2 ;
  wire \cmd_index_reg[5]_3 ;
  wire [0:0]\cmd_index_reg[5]_4 ;
  wire \cmd_index_reg[5]_5 ;
  wire \cmd_index_reg[5]_6 ;
  wire \cmd_index_reg[5]_7 ;
  wire cmd_read_crc_err;
  wire cmd_received;
  wire counter0;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire [1:0]\counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire erase_seq_error;
  wire erase_seq_error_i_2_n_0;
  wire erase_seq_error_reg;
  wire \erase_step[1]_i_2_n_0 ;
  wire \erase_step[1]_i_3_n_0 ;
  wire \erase_step[1]_i_4_n_0 ;
  wire \erase_step_reg[0] ;
  wire \erase_step_reg[0]_0 ;
  wire \erase_step_reg[0]_1 ;
  wire \erase_step_reg[0]_2 ;
  wire got_acmd41_non_query_i_4_n_0;
  wire got_acmd41_non_query_i_5_n_0;
  wire got_acmd41_non_query_reg;
  wire got_acmd41_non_query_reg_0;
  wire got_acmd41_non_query_reg_1;
  wire got_cmd00;
  wire \got_cmd0[0]_i_2_n_0 ;
  wire got_cmd8_1;
  wire got_new_cmd_reg_0;
  wire ignored_c;
  wire ignored_i_2_n_0;
  wire ignored_i_4_n_0;
  wire ignored_i_5_n_0;
  wire [0:0]ignored_reg;
  wire ignored_reg_0;
  wire illegal_reg;
  wire inactive_i_5_n_0;
  wire initialization_done;
  wire invalid_dat_width;
  wire invalid_dat_width_reg;
  wire is_writing0;
  wire is_writing_reg_inv_0;
  wire last_cmd_valid;
  wire line_crc_n_0;
  wire line_crc_n_1;
  wire line_crc_n_10;
  wire line_crc_n_11;
  wire line_crc_n_14;
  wire line_crc_n_15;
  wire line_crc_n_16;
  wire line_crc_n_17;
  wire line_crc_n_18;
  wire line_crc_n_19;
  wire line_crc_n_2;
  wire line_crc_n_20;
  wire line_crc_n_21;
  wire line_crc_n_23;
  wire line_crc_n_24;
  wire line_crc_n_25;
  wire line_crc_n_26;
  wire line_crc_n_28;
  wire line_crc_n_29;
  wire line_crc_n_3;
  wire line_crc_n_30;
  wire line_crc_n_31;
  wire line_crc_n_32;
  wire line_crc_n_33;
  wire line_crc_n_34;
  wire line_crc_n_35;
  wire line_crc_n_36;
  wire line_crc_n_4;
  wire line_crc_n_5;
  wire line_crc_n_6;
  wire line_crc_n_7;
  wire line_crc_n_8;
  wire line_crc_n_9;
  wire multi_block_mode_next;
  wire out_of_range;
  wire out_of_range0_carry;
  wire out_of_range0_carry_0;
  wire out_of_range0_carry_1;
  wire out_of_range0_carry_2;
  wire out_of_range0_carry_3;
  wire out_of_range0_carry_4;
  wire out_of_range0_carry_5;
  wire out_of_range0_carry_6;
  wire out_of_range0_carry__0;
  wire out_of_range0_carry__0_0;
  wire out_of_range0_carry__0_1;
  wire out_of_range0_carry__0_2;
  wire out_of_range0_carry__0_3;
  wire out_of_range0_carry__0_4;
  wire out_of_range0_carry__0_5;
  wire out_of_range0_carry__0_6;
  wire out_of_range0_carry__1;
  wire out_of_range0_carry__1_0;
  wire out_of_range0_carry__1_1;
  wire out_of_range0_carry__1_2;
  wire out_of_range0_carry__1_3;
  wire out_of_range0_carry__1_4;
  wire out_of_range0_carry__1_5;
  wire out_of_range0_carry__1_6;
  wire out_of_range0_carry__2;
  wire out_of_range0_carry__2_0;
  wire out_of_range0_carry__2_1;
  wire out_of_range0_carry__2_2;
  wire out_of_range0_carry__2_3;
  wire out_of_range0_carry__2_4;
  wire out_of_range0_carry__2_5;
  wire out_of_range0_carry__2_6;
  wire out_of_range_i_2_n_0;
  wire out_of_range_i_3_n_0;
  wire out_of_range_reg;
  wire p_0_in;
  wire p_0_in5_in;
  wire [5:0]p_1_in;
  wire p_1_in2_in;
  wire p_1_in6_in;
  wire [0:0]p_3_out;
  wire p_5_in;
  wire [1:0]ram_dev_addr;
  wire [31:0]ram_dev_data;
  wire \rca[15]_i_3_n_0 ;
  wire \rca[15]_i_6_n_0 ;
  wire \reg_saved_reg[19][10] ;
  wire \reg_saved_reg[19][11] ;
  wire \reg_saved_reg[19][12] ;
  wire \reg_saved_reg[19][13] ;
  wire \reg_saved_reg[19][8] ;
  wire \reg_saved_reg[19][9] ;
  wire \resp_byte[0]_i_10_n_0 ;
  wire \resp_byte[0]_i_11_n_0 ;
  wire \resp_byte[0]_i_3_n_0 ;
  wire \resp_byte[0]_i_4_n_0 ;
  wire \resp_byte[0]_i_5_n_0 ;
  wire \resp_byte[0]_i_6_n_0 ;
  wire \resp_byte[0]_i_7_n_0 ;
  wire \resp_byte[0]_i_9_n_0 ;
  wire \resp_byte[1]_i_2_n_0 ;
  wire \resp_byte[1]_i_3_n_0 ;
  wire \resp_byte[1]_i_4_n_0 ;
  wire \resp_byte[1]_i_5_n_0 ;
  wire \resp_byte[1]_i_6_n_0 ;
  wire \resp_byte[1]_i_7_n_0 ;
  wire \resp_byte[1]_i_8_n_0 ;
  wire \resp_byte[1]_i_9_n_0 ;
  wire \resp_byte[2]_i_2_n_0 ;
  wire \resp_byte[2]_i_3_0 ;
  wire \resp_byte[2]_i_3_n_0 ;
  wire \resp_byte[2]_i_4_n_0 ;
  wire \resp_byte[2]_i_5_n_0 ;
  wire \resp_byte[2]_i_6_n_0 ;
  wire \resp_byte[2]_i_7_n_0 ;
  wire \resp_byte[2]_i_8_n_0 ;
  wire \resp_byte[3]_i_10_n_0 ;
  wire \resp_byte[3]_i_11_n_0 ;
  wire \resp_byte[3]_i_2_n_0 ;
  wire \resp_byte[3]_i_3_n_0 ;
  wire \resp_byte[3]_i_4_n_0 ;
  wire \resp_byte[3]_i_5_n_0 ;
  wire \resp_byte[3]_i_6_n_0 ;
  wire \resp_byte[3]_i_8_n_0 ;
  wire \resp_byte[3]_i_9_n_0 ;
  wire \resp_byte[4]_i_2_n_0 ;
  wire \resp_byte[4]_i_3_0 ;
  wire \resp_byte[4]_i_3_n_0 ;
  wire [21:0]\resp_byte[4]_i_4_0 ;
  wire \resp_byte[4]_i_4_n_0 ;
  wire \resp_byte[4]_i_5_n_0 ;
  wire \resp_byte[4]_i_6_n_0 ;
  wire \resp_byte[4]_i_7_n_0 ;
  wire \resp_byte[4]_i_8_n_0 ;
  wire \resp_byte[5]_i_2_n_0 ;
  wire \resp_byte[5]_i_3_0 ;
  wire \resp_byte[5]_i_3_n_0 ;
  wire \resp_byte[5]_i_4_n_0 ;
  wire \resp_byte[5]_i_5_n_0 ;
  wire \resp_byte[5]_i_6_n_0 ;
  wire \resp_byte[5]_i_7_n_0 ;
  wire \resp_byte[5]_i_8_n_0 ;
  wire \resp_byte[6]_i_10_n_0 ;
  wire \resp_byte[6]_i_2_n_0 ;
  wire \resp_byte[6]_i_3_n_0 ;
  wire \resp_byte[6]_i_5_n_0 ;
  wire \resp_byte[6]_i_7_n_0 ;
  wire \resp_byte[6]_i_8_n_0 ;
  wire \resp_byte[6]_i_9_n_0 ;
  wire \resp_byte[7]_i_10_n_0 ;
  wire \resp_byte[7]_i_11_n_0 ;
  wire \resp_byte[7]_i_12_n_0 ;
  wire \resp_byte[7]_i_2_n_0 ;
  wire \resp_byte[7]_i_3_n_0 ;
  wire \resp_byte[7]_i_5_n_0 ;
  wire \resp_byte[7]_i_6_n_0 ;
  wire \resp_byte[7]_i_7_n_0 ;
  wire [15:0]\resp_byte[7]_i_8_0 ;
  wire \resp_byte[7]_i_8_n_0 ;
  wire \resp_byte[7]_i_9_n_0 ;
  wire [2:0]\resp_byte_reg[0] ;
  wire \resp_byte_reg[0]_i_2_0 ;
  wire \resp_byte_reg[0]_i_2_n_0 ;
  wire \resp_byte_reg[1] ;
  wire \resp_byte_reg[2] ;
  wire \resp_byte_reg[3] ;
  wire \resp_byte_reg[5] ;
  wire \resp_byte_reg[6] ;
  wire \resp_byte_reg[6]_i_6_0 ;
  wire \resp_byte_reg[6]_i_6_n_0 ;
  wire \resp_byte_reg[7] ;
  wire \resp_cur[0]_i_2_n_0 ;
  wire \resp_cur[1]_i_2_n_0 ;
  wire \resp_cur[2]_i_3_n_0 ;
  wire \resp_cur[2]_i_5_n_0 ;
  wire \resp_cur[2]_i_6_n_0 ;
  wire [7:0]\resp_cur_reg[2] ;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire resp_no_crc_reg;
  wire [4:2]resp_pos1;
  wire \save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0 ;
  wire \save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0 ;
  wire \save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0 ;
  wire \save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0 ;
  wire save_current_cmd;
  wire \save_erase_vars[0].erase_vars[0][31]_i_2_n_0 ;
  wire \save_erase_vars[1].erase_vars[1][31]_i_2_n_0 ;
  wire \saved_cmd_index[5]_i_2_n_0 ;
  wire \saved_cmd_index[5]_i_3_n_0 ;
  wire \saved_cmd_index[5]_i_4_n_0 ;
  wire \saved_cmd_index[5]_i_5_n_0 ;
  wire \saved_cmd_index[5]_i_6_n_0 ;
  wire \saved_cmd_index[5]_i_7_n_0 ;
  wire \saved_cmd_index_reg[5] ;
  wire sd_cmd_o_sys;
  wire sd_cmd_o_sys0;
  wire [7:0]sd_cmd_o_sys_reg_0;
  wire sd_cmd_t_sys;
  wire send_no_resp;
  wire send_resp;
  wire [0:0]\set_reg_clear_always[12].reg_clear_always_reg[12][5] ;
  wire [3:0]\size_reg[15] ;
  wire [3:0]\size_reg[23] ;
  wire [3:0]\size_reg[31] ;
  wire [3:0]\size_reg[7] ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire [3:0]\state[5]_i_6 ;
  wire state_next38_in;
  wire state_next3_carry_n_0;
  wire state_next3_carry_n_1;
  wire state_next3_carry_n_2;
  wire state_next3_carry_n_3;
  wire \state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire update_2;
  wire update_read;
  wire write_stb_received_r;
  wire write_stb_received_r_i_1_n_0;
  wire [3:0]NLW_state_next3_carry_O_UNCONNECTED;
  wire [3:1]NLW_state_next3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state_next3_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(cmd_received),
        .I1(cmd_read_crc_err),
        .I2(\FSM_onehot_state_reg[4]_0 [0]),
        .I3(\FSM_onehot_state_reg[4]_0 [1]),
        .I4(last_cmd_valid),
        .I5(\FSM_onehot_state_reg[4]_0 [4]),
        .O(\FSM_onehot_state_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 [0]),
        .I1(cmd_received),
        .I2(cmd_read_crc_err),
        .I3(\FSM_onehot_state_reg[4]_0 [1]),
        .O(\FSM_onehot_state_reg[4] [1]));
  LUT6 #(
    .INIT(64'hF888F8F888888888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(last_cmd_valid),
        .I1(\FSM_onehot_state_reg[4]_0 [1]),
        .I2(\FSM_onehot_state_reg[4]_0 [0]),
        .I3(cmd_read_crc_err),
        .I4(cmd_received),
        .I5(\FSM_onehot_state_reg[4]_0 [2]),
        .O(\FSM_onehot_state_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFBAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 [2]),
        .I1(cmd_received),
        .I2(cmd_read_crc_err),
        .I3(\FSM_onehot_state_reg[4]_0 [0]),
        .I4(\FSM_onehot_state_reg[4]_0 [3]),
        .O(\FSM_onehot_state_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFFFA200)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 [4]),
        .I1(cmd_received),
        .I2(cmd_read_crc_err),
        .I3(\FSM_onehot_state_reg[4]_0 [0]),
        .I4(\FSM_onehot_state_reg[4]_0 [3]),
        .O(\FSM_onehot_state_reg[4] [4]));
  LUT6 #(
    .INIT(64'hFEFFBFAFFDDF7FFF)) 
    acmd_defined_i_2
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\cmd_index_reg[5]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\axi_rdata[13]_i_3 [2]),
        .I1(\axi_rdata[13]_i_3_0 [2]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\axi_rdata[13]_i_3_2 [2]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\reg_saved_reg[19][10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\axi_rdata[13]_i_3 [3]),
        .I1(\axi_rdata[13]_i_3_0 [3]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\axi_rdata[13]_i_3_2 [3]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\reg_saved_reg[19][11] ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_5 
       (.I0(\axi_rdata[13]_i_3 [4]),
        .I1(\axi_rdata[13]_i_3_0 [4]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\cmd_index_reg[5]_0 [4]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .O(\reg_saved_reg[19][12] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\axi_rdata[13]_i_3 [5]),
        .I1(\axi_rdata[13]_i_3_0 [5]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\axi_rdata[13]_i_3_2 [4]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\reg_saved_reg[19][13] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\axi_rdata[13]_i_3 [0]),
        .I1(\axi_rdata[13]_i_3_0 [0]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\axi_rdata[13]_i_3_2 [0]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(\reg_saved_reg[19][8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\axi_rdata[13]_i_3 [1]),
        .I1(\axi_rdata[13]_i_3_0 [1]),
        .I2(\axi_rdata[13]_i_3_1 [1]),
        .I3(\axi_rdata[13]_i_3_2 [1]),
        .I4(\axi_rdata[13]_i_3_1 [0]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\reg_saved_reg[19][9] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h55151115)) 
    \block_size[12]_i_1 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .O(\cmd_index_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \block_size[5]_i_1 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .O(\cmd_index_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h0020FFAA00000000)) 
    \block_size[6]_i_1 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\cmd_index_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h0400000005010000)) 
    \block_size[7]_i_1 
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(\cmd_index_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h1111151110101010)) 
    \block_size[9]_i_1 
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(\cmd_index_reg[2]_0 [3]));
  FDRE \buf_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg[0]_0 ),
        .Q(\buf_read_reg_n_0_[0] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[9] ),
        .Q(\buf_read_reg_n_0_[10] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[10] ),
        .Q(\buf_read_reg_n_0_[11] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[11] ),
        .Q(\buf_read_reg_n_0_[12] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[12] ),
        .Q(\buf_read_reg_n_0_[13] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[13] ),
        .Q(\buf_read_reg_n_0_[14] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[14] ),
        .Q(\buf_read_reg_n_0_[15] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[15] ),
        .Q(\buf_read_reg_n_0_[16] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[16] ),
        .Q(\buf_read_reg_n_0_[17] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[17] ),
        .Q(\buf_read_reg_n_0_[18] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[18] ),
        .Q(\buf_read_reg_n_0_[19] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[0] ),
        .Q(\buf_read_reg_n_0_[1] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[19] ),
        .Q(\buf_read_reg_n_0_[20] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[20] ),
        .Q(\buf_read_reg_n_0_[21] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[21] ),
        .Q(\buf_read_reg_n_0_[22] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[22] ),
        .Q(\buf_read_reg_n_0_[23] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[23] ),
        .Q(\buf_read_reg_n_0_[24] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[24] ),
        .Q(\buf_read_reg_n_0_[25] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[25] ),
        .Q(\buf_read_reg_n_0_[26] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[26] ),
        .Q(\buf_read_reg_n_0_[27] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[27] ),
        .Q(\buf_read_reg_n_0_[28] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[28] ),
        .Q(\buf_read_reg_n_0_[29] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[1] ),
        .Q(\buf_read_reg_n_0_[2] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[29] ),
        .Q(\buf_read_reg_n_0_[30] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[30] ),
        .Q(\buf_read_reg_n_0_[31] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[31] ),
        .Q(\buf_read_reg_n_0_[32] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[32] ),
        .Q(\buf_read_reg_n_0_[33] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[33] ),
        .Q(\buf_read_reg_n_0_[34] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[34] ),
        .Q(\buf_read_reg_n_0_[35] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[35] ),
        .Q(\buf_read_reg_n_0_[36] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[36] ),
        .Q(\buf_read_reg_n_0_[37] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[37] ),
        .Q(\buf_read_reg_n_0_[38] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[38] ),
        .Q(p_1_in[0]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[2] ),
        .Q(\buf_read_reg_n_0_[3] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[0]),
        .Q(p_1_in[1]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(p_0_in),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[3] ),
        .Q(\buf_read_reg_n_0_[4] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[4] ),
        .Q(\buf_read_reg_n_0_[5] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[5] ),
        .Q(\buf_read_reg_n_0_[6] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[6] ),
        .Q(\buf_read_reg_n_0_[7] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[7] ),
        .Q(\buf_read_reg_n_0_[8] ),
        .R(is_writing_reg_inv_0));
  FDRE \buf_read_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_read_reg_n_0_[8] ),
        .Q(\buf_read_reg_n_0_[9] ),
        .R(is_writing_reg_inv_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \buf_write[0]_i_1__0 
       (.I0(line_crc_n_0),
        .I1(line_crc_n_21),
        .I2(sd_cmd_o_sys_reg_0[0]),
        .O(\buf_write[0]_i_1__0_n_0 ));
  FDRE \buf_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\buf_write[0]_i_1__0_n_0 ),
        .Q(buf_write[0]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_20),
        .Q(buf_write[1]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_19),
        .Q(buf_write[2]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_18),
        .Q(buf_write[3]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_17),
        .Q(buf_write[4]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_16),
        .Q(buf_write[5]),
        .R(is_writing_reg_inv_0));
  FDRE \buf_write_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_15),
        .Q(buf_write[6]),
        .R(is_writing_reg_inv_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF900000)) 
    \card_status[10]_i_2 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\card_status[10]_i_3_n_0 ),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\card_status[10]_i_4_n_0 ),
        .O(\cmd_index_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h80888880)) 
    \card_status[10]_i_3 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\card_status_reg[11]_0 [3]),
        .I3(\card_status_reg[11]_0 [2]),
        .I4(ignored_reg),
        .O(\card_status[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF24242624)) 
    \card_status[10]_i_4 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_arg_reg[31]_0 [0]),
        .I5(\card_status[10]_i_5_n_0 ),
        .O(\card_status[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA4444AFAA4444)) 
    \card_status[10]_i_5 
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(\card_status_reg[11]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\card_status[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \card_status[11]_i_1 
       (.I0(\saved_cmd_index_reg[5] ),
        .I1(\card_status[11]_i_3_n_0 ),
        .I2(p_3_out),
        .I3(\card_status_reg[11]_0 [3]),
        .O(\card_status_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFEFEFFEFDFFFFF)) 
    \card_status[11]_i_10 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\cmd_index_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFAFEAAFEFAFEFAFE)) 
    \card_status[11]_i_3 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(ignored_reg),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\card_status[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7777747777447444)) 
    \card_status[11]_i_4 
       (.I0(\card_status_reg[9]_0 ),
        .I1(\saved_cmd_index_reg[5] ),
        .I2(\card_status_reg[9]_1 ),
        .I3(\card_status[11]_i_7_n_0 ),
        .I4(\card_status[11]_i_8_n_0 ),
        .I5(\card_status[11]_i_9_n_0 ),
        .O(p_3_out));
  LUT6 #(
    .INIT(64'h09002F440B4ABE45)) 
    \card_status[11]_i_7 
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [4]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(\card_status[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0705DFBE0340100D)) 
    \card_status[11]_i_8 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\cmd_index_reg[5]_0 [4]),
        .O(\card_status[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC000088B88888)) 
    \card_status[11]_i_9 
       (.I0(\card_status[11]_i_4_0 ),
        .I1(\card_status[11]_i_8_n_0 ),
        .I2(initialization_done),
        .I3(got_acmd41_non_query_i_4_n_0),
        .I4(\card_status_reg[11]_0 [0]),
        .I5(\cmd_index_reg[0]_4 ),
        .O(\card_status[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \card_status[5]_i_1 
       (.I0(\card_status[5]_i_2_n_0 ),
        .I1(update_2),
        .I2(\card_status_reg[5]_0 ),
        .I3(\card_status_reg[5]_1 ),
        .I4(\card_status_reg[5]_2 ),
        .O(\set_reg_clear_always[12].reg_clear_always_reg[12][5] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \card_status[5]_i_2 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\card_status[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h54FFFE00)) 
    \card_status[9]_i_1 
       (.I0(\saved_cmd_index_reg[5] ),
        .I1(\card_status[9]_i_2_n_0 ),
        .I2(\card_status[9]_i_3_n_0 ),
        .I3(p_3_out),
        .I4(\card_status_reg[11]_0 [1]),
        .O(\card_status_reg[9] ));
  LUT6 #(
    .INIT(64'hFF00FC3355555500)) 
    \card_status[9]_i_2 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\card_status_reg[11]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\card_status[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAEAAEA)) 
    \card_status[9]_i_3 
       (.I0(\card_status[9]_i_4_n_0 ),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\card_status[10]_i_3_n_0 ),
        .O(\card_status[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3E00000000003E00)) 
    \card_status[9]_i_4 
       (.I0(\cmd_arg_reg[31]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(\cmd_index_reg[5]_0 [4]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\card_status[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    \card_status_resp[31]_i_1 
       (.I0(\card_status_resp[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[4]_0 [0]),
        .I2(got_new_cmd_reg_0),
        .I3(\FSM_onehot_state_reg[4]_0 [1]),
        .I4(\FSM_onehot_state_reg[4]_0 [3]),
        .I5(\FSM_onehot_state_reg[4]_0 [2]),
        .O(update_2));
  LUT6 #(
    .INIT(64'h0000000000005DFF)) 
    \card_status_resp[31]_i_3 
       (.I0(\FSM_onehot_state_reg[4]_0 [4]),
        .I1(cmd_received),
        .I2(cmd_read_crc_err),
        .I3(\FSM_onehot_state_reg[4]_0 [0]),
        .I4(\FSM_onehot_state_reg[4]_0 [3]),
        .I5(resp_no_crc_reg),
        .O(\card_status_resp[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \card_status_resp[5]_i_1 
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\card_status_resp[5]_i_2_n_0 ),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(acmd_defined_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \card_status_resp[5]_i_2 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .O(\card_status_resp[5]_i_2_n_0 ));
  FDRE \cmd_arg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[7] ),
        .Q(\cmd_arg_reg[31]_0 [0]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[17] ),
        .Q(\cmd_arg_reg[31]_0 [10]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[18] ),
        .Q(\cmd_arg_reg[31]_0 [11]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[19] ),
        .Q(\cmd_arg_reg[31]_0 [12]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[20] ),
        .Q(\cmd_arg_reg[31]_0 [13]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[21] ),
        .Q(\cmd_arg_reg[31]_0 [14]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[22] ),
        .Q(\cmd_arg_reg[31]_0 [15]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[23] ),
        .Q(\cmd_arg_reg[31]_0 [16]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[24] ),
        .Q(\cmd_arg_reg[31]_0 [17]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[25] ),
        .Q(\cmd_arg_reg[31]_0 [18]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[26] ),
        .Q(\cmd_arg_reg[31]_0 [19]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[8] ),
        .Q(\cmd_arg_reg[31]_0 [1]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[27] ),
        .Q(\cmd_arg_reg[31]_0 [20]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[28] ),
        .Q(\cmd_arg_reg[31]_0 [21]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[29] ),
        .Q(\cmd_arg_reg[31]_0 [22]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[30] ),
        .Q(\cmd_arg_reg[31]_0 [23]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[31] ),
        .Q(\cmd_arg_reg[31]_0 [24]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[32] ),
        .Q(\cmd_arg_reg[31]_0 [25]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[33] ),
        .Q(\cmd_arg_reg[31]_0 [26]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[34] ),
        .Q(\cmd_arg_reg[31]_0 [27]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[35] ),
        .Q(\cmd_arg_reg[31]_0 [28]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[36] ),
        .Q(\cmd_arg_reg[31]_0 [29]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[9] ),
        .Q(\cmd_arg_reg[31]_0 [2]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[37] ),
        .Q(\cmd_arg_reg[31]_0 [30]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[38] ),
        .Q(\cmd_arg_reg[31]_0 [31]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[10] ),
        .Q(\cmd_arg_reg[31]_0 [3]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[11] ),
        .Q(\cmd_arg_reg[31]_0 [4]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[12] ),
        .Q(\cmd_arg_reg[31]_0 [5]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[13] ),
        .Q(\cmd_arg_reg[31]_0 [6]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[14] ),
        .Q(\cmd_arg_reg[31]_0 [7]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[15] ),
        .Q(\cmd_arg_reg[31]_0 [8]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_arg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[16] ),
        .Q(\cmd_arg_reg[31]_0 [9]),
        .R(is_writing_reg_inv_0));
  FDRE cmd_crc_err_reg
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(cmd_crc_err_next),
        .Q(cmd_read_crc_err),
        .R(is_writing_reg_inv_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_crc_err_stb_i_1
       (.I0(cmd_read_crc_err),
        .I1(cmd_received),
        .O(cmd_crc_err_stb0));
  FDRE \cmd_index_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[0]),
        .Q(\cmd_index_reg[5]_0 [0]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_index_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[1]),
        .Q(\cmd_index_reg[5]_0 [1]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_index_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[2]),
        .Q(\cmd_index_reg[5]_0 [2]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_index_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[3]),
        .Q(\cmd_index_reg[5]_0 [3]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_index_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[4]),
        .Q(\cmd_index_reg[5]_0 [4]),
        .R(is_writing_reg_inv_0));
  FDRE \cmd_index_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(update_read),
        .D(p_1_in[5]),
        .Q(\cmd_index_reg[5]_0 [5]),
        .R(is_writing_reg_inv_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(\counter_reg[4]_0 [1]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg[4]_0 [0]),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \counter[6]_i_1 
       (.I0(line_crc_n_10),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(resp_pos1[2]),
        .I4(resp_pos1[3]),
        .O(\counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \counter[7]_i_4 
       (.I0(p_1_in2_in),
        .I1(line_crc_n_1),
        .I2(Q),
        .I3(line_crc_n_14),
        .I4(\state[3]_i_1_n_0 ),
        .I5(p_0_in5_in),
        .O(\counter[7]_i_4_n_0 ));
  FDRE \counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(counter0));
  FDRE \counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(counter0));
  FDRE \counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_9),
        .Q(\counter_reg_n_0_[2] ),
        .R(counter0));
  FDRE \counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_8),
        .Q(\counter_reg[4]_0 [0]),
        .R(counter0));
  FDRE \counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg[4]_0 [1]),
        .R(counter0));
  FDRE \counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_7),
        .Q(resp_pos1[2]),
        .R(counter0));
  FDRE \counter_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\counter[6]_i_1_n_0 ),
        .Q(resp_pos1[3]),
        .R(counter0));
  FDRE \counter_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(line_crc_n_6),
        .Q(resp_pos1[4]),
        .R(counter0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    dat_width_4_i_2
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\cmd_index_reg[5]_3 ));
  LUT3 #(
    .INIT(8'hF4)) 
    erase_reset_i_2
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_5 ),
        .I2(erase_seq_error_i_2_n_0),
        .O(acmd_defined_reg_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    erase_reset_i_3
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\cmd_index_reg[5]_5 ));
  LUT6 #(
    .INIT(64'h0000000040FF4000)) 
    erase_seq_error_i_1
       (.I0(\erase_step[1]_i_2_n_0 ),
        .I1(\erase_step[1]_i_3_n_0 ),
        .I2(erase_seq_error_i_2_n_0),
        .I3(\FSM_onehot_state_reg[0] ),
        .I4(erase_seq_error),
        .I5(is_writing_reg_inv_0),
        .O(erase_seq_error_reg));
  LUT6 #(
    .INIT(64'h0010000000001010)) 
    erase_seq_error_i_2
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(erase_seq_error_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000008A8A8A9A)) 
    \erase_step[0]_i_1 
       (.I0(\erase_step_reg[0]_1 ),
        .I1(\erase_step[1]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[0] ),
        .I3(\erase_step[1]_i_3_n_0 ),
        .I4(\erase_step_reg[0]_2 ),
        .I5(is_writing_reg_inv_0),
        .O(\erase_step_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000CFCF0020)) 
    \erase_step[1]_i_1 
       (.I0(\erase_step_reg[0]_1 ),
        .I1(\erase_step[1]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[0] ),
        .I3(\erase_step[1]_i_3_n_0 ),
        .I4(\erase_step_reg[0]_2 ),
        .I5(is_writing_reg_inv_0),
        .O(\erase_step_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \erase_step[1]_i_2 
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\got_cmd0[0]_i_2_n_0 ),
        .I5(invalid_dat_width_reg),
        .O(\erase_step[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEABF)) 
    \erase_step[1]_i_3 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\erase_step_reg[0]_1 ),
        .I2(\erase_step_reg[0]_2 ),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\erase_step[1]_i_4_n_0 ),
        .O(\erase_step[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFEFFEF7E)) 
    \erase_step[1]_i_4 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\erase_step_reg[0]_2 ),
        .I3(\erase_step_reg[0]_1 ),
        .I4(\cmd_index_reg[5]_0 [0]),
        .O(\erase_step[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    got_acmd41_non_query_i_1
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(got_acmd41_non_query_reg_0),
        .I2(got_acmd41_non_query_reg_1),
        .O(got_acmd41_non_query_reg));
  LUT6 #(
    .INIT(64'h000000002222222A)) 
    got_acmd41_non_query_i_2
       (.I0(\card_status_resp[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[4]_0 [0]),
        .I2(got_new_cmd_reg_0),
        .I3(\FSM_onehot_state_reg[4]_0 [1]),
        .I4(\FSM_onehot_state_reg[4]_0 [3]),
        .I5(\FSM_onehot_state_reg[4]_0 [2]),
        .O(\FSM_onehot_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h02)) 
    got_acmd41_non_query_i_3
       (.I0(\cmd_index_reg[0]_0 [1]),
        .I1(got_acmd41_non_query_i_4_n_0),
        .I2(got_acmd41_non_query_reg_1),
        .O(got_acmd41_non_query_reg_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    got_acmd41_non_query_i_4
       (.I0(\cmd_arg_reg[19]_0 ),
        .I1(got_acmd41_non_query_i_5_n_0),
        .I2(\cmd_arg_reg[31]_0 [14]),
        .I3(\cmd_arg_reg[31]_0 [12]),
        .I4(\cmd_arg_reg[31]_0 [9]),
        .O(got_acmd41_non_query_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    got_acmd41_non_query_i_5
       (.I0(\cmd_arg_reg[31]_0 [11]),
        .I1(\cmd_arg_reg[31]_0 [10]),
        .I2(\cmd_arg_reg[31]_0 [13]),
        .I3(\cmd_arg_reg[31]_0 [8]),
        .O(got_acmd41_non_query_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \got_cmd0[0]_i_1 
       (.I0(\got_cmd0[0]_i_2_n_0 ),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(got_new_cmd_reg_0),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(got_cmd00));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \got_cmd0[0]_i_2 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [5]),
        .O(\got_cmd0[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    got_cmd8_1_i_1
       (.I0(\save_erase_vars[0].erase_vars[0][31]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg[0] ),
        .I2(\save_erase_vars[1].erase_vars[1][31]_i_2_n_0 ),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(got_cmd8_1),
        .O(\cmd_index_reg[5]_2 ));
  FDRE got_new_cmd_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(update_read),
        .Q(cmd_received),
        .R(is_writing_reg_inv_0));
  LUT6 #(
    .INIT(64'h50D05070FFF35070)) 
    ignored_i_1
       (.I0(ignored_i_2_n_0),
        .I1(\card_status_reg[11]_0 [0]),
        .I2(ignored_reg_0),
        .I3(ignored_i_4_n_0),
        .I4(ignored_i_5_n_0),
        .I5(ignored_reg),
        .O(ignored_c));
  LUT6 #(
    .INIT(64'h1010900101311101)) 
    ignored_i_2
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(ignored_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBFFFBFFFFFF)) 
    ignored_i_4
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(ignored_i_4_n_0));
  LUT6 #(
    .INIT(64'h1001101080000000)) 
    ignored_i_5
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(ignored_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    illegal_i_1
       (.I0(ignored_c),
        .I1(illegal_reg),
        .O(\card_status_reg[5] ));
  LUT4 #(
    .INIT(16'h0001)) 
    inactive_i_2
       (.I0(\cmd_arg_reg[31]_0 [19]),
        .I1(\cmd_arg_reg[31]_0 [21]),
        .I2(\cmd_arg_reg[31]_0 [23]),
        .I3(inactive_i_5_n_0),
        .O(\cmd_arg_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    inactive_i_3
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .O(\cmd_index_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h04)) 
    inactive_i_4
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .O(\cmd_index_reg[5]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    inactive_i_5
       (.I0(\cmd_arg_reg[31]_0 [20]),
        .I1(\cmd_arg_reg[31]_0 [17]),
        .I2(\cmd_arg_reg[31]_0 [18]),
        .I3(\cmd_arg_reg[31]_0 [22]),
        .I4(\cmd_arg_reg[31]_0 [16]),
        .I5(\cmd_arg_reg[31]_0 [15]),
        .O(inactive_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000B3338000)) 
    invalid_dat_width_i_1
       (.I0(\cmd_arg_reg[31]_0 [0]),
        .I1(\FSM_onehot_state_reg[0] ),
        .I2(invalid_dat_width_reg),
        .I3(\cmd_index_reg[5]_3 ),
        .I4(invalid_dat_width),
        .I5(is_writing_reg_inv_0),
        .O(\cmd_arg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    is_writing_inv_i_1
       (.I0(line_crc_n_14),
        .I1(line_crc_n_1),
        .I2(\state[3]_i_1_n_0 ),
        .O(is_writing0));
  FDSE is_writing_reg_inv
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(is_writing0),
        .Q(sd_cmd_t_sys),
        .S(is_writing_reg_inv_0));
  adapter_axi_sd_0_0_line_crc line_crc
       (.CO(state_next38_in),
        .D({line_crc_n_6,line_crc_n_7,line_crc_n_8,line_crc_n_9}),
        .DI({line_crc_n_28,line_crc_n_29,line_crc_n_30}),
        .E(E),
        .Q({p_1_in2_in,Q,p_0_in5_in,p_1_in6_in,p_5_in,\state_reg_n_0_[0] }),
        .S({line_crc_n_31,line_crc_n_32,line_crc_n_33,line_crc_n_34}),
        .SR(counter0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\cmd_arg_reg[0] (p_0_in),
        .cmd_crc_err_next(cmd_crc_err_next),
        .\counter_reg[0] (line_crc_n_4),
        .\counter_reg[0]_0 (is_writing_reg_inv_0),
        .\counter_reg[0]_1 (\counter[7]_i_4_n_0 ),
        .\counter_reg[1] (line_crc_n_10),
        .\counter_reg[5] (line_crc_n_36),
        .\counter_reg[6] (line_crc_n_35),
        .\counter_reg[7] ({resp_pos1,\counter_reg[4]_0 ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter_reg_n_0_[0] }),
        .\crc_reg[5]_0 ({line_crc_n_15,line_crc_n_16,line_crc_n_17,line_crc_n_18,line_crc_n_19,line_crc_n_20}),
        .resp_no_crc(resp_no_crc),
        .sd_cmd_o_sys0(sd_cmd_o_sys0),
        .sd_cmd_o_sys_reg(buf_write),
        .sd_cmd_o_sys_reg_0(sd_cmd_o_sys_reg_0[7:1]),
        .send_no_resp(send_no_resp),
        .send_resp(send_resp),
        .send_resp_o_reg(line_crc_n_2),
        .\state[5]_i_6_0 (\state[5]_i_6 ),
        .\state_reg[0] (\state[0]_i_3_n_0 ),
        .\state_reg[0]_0 (\state[0]_i_4_n_0 ),
        .\state_reg[1] (line_crc_n_11),
        .\state_reg[1]_0 (update_read),
        .\state_reg[1]_1 (\buf_read_reg[0]_0 ),
        .\state_reg[2] ({line_crc_n_23,line_crc_n_24,line_crc_n_25}),
        .\state_reg[3] (line_crc_n_1),
        .\state_reg[3]_0 (line_crc_n_26),
        .\state_reg[4] (line_crc_n_0),
        .\state_reg[4]_0 (line_crc_n_5),
        .\state_reg[4]_1 (line_crc_n_14),
        .\state_reg[5] (line_crc_n_21),
        .write_stb_received_r(write_stb_received_r),
        .write_stb_received_r_reg(line_crc_n_3));
  LUT6 #(
    .INIT(64'h4000040040040000)) 
    multi_block_mode_i_2
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(multi_block_mode_next));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ocr_high_byte[31]_i_1 
       (.I0(is_writing_reg_inv_0),
        .I1(cmd_read_crc_err),
        .I2(cmd_received),
        .O(cmd_crc_err_reg_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__0_i_1
       (.I0(\cmd_arg_reg[31]_0 [15]),
        .I1(out_of_range0_carry__0_5),
        .I2(\cmd_arg_reg[31]_0 [14]),
        .I3(out_of_range0_carry__0_6),
        .O(\cmd_arg_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__0_i_2
       (.I0(\cmd_arg_reg[31]_0 [13]),
        .I1(out_of_range0_carry__0_3),
        .I2(\cmd_arg_reg[31]_0 [12]),
        .I3(out_of_range0_carry__0_4),
        .O(\cmd_arg_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__0_i_3
       (.I0(\cmd_arg_reg[31]_0 [11]),
        .I1(out_of_range0_carry__0_1),
        .I2(\cmd_arg_reg[31]_0 [10]),
        .I3(out_of_range0_carry__0_2),
        .O(\cmd_arg_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__0_i_4
       (.I0(\cmd_arg_reg[31]_0 [9]),
        .I1(out_of_range0_carry__0),
        .I2(\cmd_arg_reg[31]_0 [8]),
        .I3(out_of_range0_carry__0_0),
        .O(\cmd_arg_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__0_i_5
       (.I0(out_of_range0_carry__0_5),
        .I1(\cmd_arg_reg[31]_0 [15]),
        .I2(out_of_range0_carry__0_6),
        .I3(\cmd_arg_reg[31]_0 [14]),
        .O(\size_reg[15] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__0_i_6
       (.I0(out_of_range0_carry__0_3),
        .I1(\cmd_arg_reg[31]_0 [13]),
        .I2(out_of_range0_carry__0_4),
        .I3(\cmd_arg_reg[31]_0 [12]),
        .O(\size_reg[15] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__0_i_7
       (.I0(out_of_range0_carry__0_1),
        .I1(\cmd_arg_reg[31]_0 [11]),
        .I2(out_of_range0_carry__0_2),
        .I3(\cmd_arg_reg[31]_0 [10]),
        .O(\size_reg[15] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__0_i_8
       (.I0(out_of_range0_carry__0),
        .I1(\cmd_arg_reg[31]_0 [9]),
        .I2(out_of_range0_carry__0_0),
        .I3(\cmd_arg_reg[31]_0 [8]),
        .O(\size_reg[15] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__1_i_1
       (.I0(\cmd_arg_reg[31]_0 [23]),
        .I1(out_of_range0_carry__1_5),
        .I2(\cmd_arg_reg[31]_0 [22]),
        .I3(out_of_range0_carry__1_6),
        .O(\cmd_arg_reg[23]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__1_i_2
       (.I0(\cmd_arg_reg[31]_0 [21]),
        .I1(out_of_range0_carry__1_3),
        .I2(\cmd_arg_reg[31]_0 [20]),
        .I3(out_of_range0_carry__1_4),
        .O(\cmd_arg_reg[23]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__1_i_3
       (.I0(\cmd_arg_reg[31]_0 [19]),
        .I1(out_of_range0_carry__1_1),
        .I2(\cmd_arg_reg[31]_0 [18]),
        .I3(out_of_range0_carry__1_2),
        .O(\cmd_arg_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__1_i_4
       (.I0(\cmd_arg_reg[31]_0 [17]),
        .I1(out_of_range0_carry__1),
        .I2(\cmd_arg_reg[31]_0 [16]),
        .I3(out_of_range0_carry__1_0),
        .O(\cmd_arg_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__1_i_5
       (.I0(out_of_range0_carry__1_5),
        .I1(\cmd_arg_reg[31]_0 [23]),
        .I2(out_of_range0_carry__1_6),
        .I3(\cmd_arg_reg[31]_0 [22]),
        .O(\size_reg[23] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__1_i_6
       (.I0(out_of_range0_carry__1_3),
        .I1(\cmd_arg_reg[31]_0 [21]),
        .I2(out_of_range0_carry__1_4),
        .I3(\cmd_arg_reg[31]_0 [20]),
        .O(\size_reg[23] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__1_i_7
       (.I0(out_of_range0_carry__1_1),
        .I1(\cmd_arg_reg[31]_0 [19]),
        .I2(out_of_range0_carry__1_2),
        .I3(\cmd_arg_reg[31]_0 [18]),
        .O(\size_reg[23] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__1_i_8
       (.I0(out_of_range0_carry__1),
        .I1(\cmd_arg_reg[31]_0 [17]),
        .I2(out_of_range0_carry__1_0),
        .I3(\cmd_arg_reg[31]_0 [16]),
        .O(\size_reg[23] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__2_i_1
       (.I0(\cmd_arg_reg[31]_0 [31]),
        .I1(out_of_range0_carry__2_5),
        .I2(\cmd_arg_reg[31]_0 [30]),
        .I3(out_of_range0_carry__2_6),
        .O(\cmd_arg_reg[31]_1 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__2_i_2
       (.I0(\cmd_arg_reg[31]_0 [29]),
        .I1(out_of_range0_carry__2_3),
        .I2(\cmd_arg_reg[31]_0 [28]),
        .I3(out_of_range0_carry__2_4),
        .O(\cmd_arg_reg[31]_1 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__2_i_3
       (.I0(\cmd_arg_reg[31]_0 [27]),
        .I1(out_of_range0_carry__2_1),
        .I2(\cmd_arg_reg[31]_0 [26]),
        .I3(out_of_range0_carry__2_2),
        .O(\cmd_arg_reg[31]_1 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry__2_i_4
       (.I0(\cmd_arg_reg[31]_0 [25]),
        .I1(out_of_range0_carry__2),
        .I2(\cmd_arg_reg[31]_0 [24]),
        .I3(out_of_range0_carry__2_0),
        .O(\cmd_arg_reg[31]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__2_i_5
       (.I0(out_of_range0_carry__2_5),
        .I1(\cmd_arg_reg[31]_0 [31]),
        .I2(out_of_range0_carry__2_6),
        .I3(\cmd_arg_reg[31]_0 [30]),
        .O(\size_reg[31] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__2_i_6
       (.I0(out_of_range0_carry__2_3),
        .I1(\cmd_arg_reg[31]_0 [29]),
        .I2(out_of_range0_carry__2_4),
        .I3(\cmd_arg_reg[31]_0 [28]),
        .O(\size_reg[31] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__2_i_7
       (.I0(out_of_range0_carry__2_1),
        .I1(\cmd_arg_reg[31]_0 [27]),
        .I2(out_of_range0_carry__2_2),
        .I3(\cmd_arg_reg[31]_0 [26]),
        .O(\size_reg[31] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry__2_i_8
       (.I0(out_of_range0_carry__2),
        .I1(\cmd_arg_reg[31]_0 [25]),
        .I2(out_of_range0_carry__2_0),
        .I3(\cmd_arg_reg[31]_0 [24]),
        .O(\size_reg[31] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry_i_1
       (.I0(\cmd_arg_reg[31]_0 [7]),
        .I1(out_of_range0_carry_5),
        .I2(\cmd_arg_reg[31]_0 [6]),
        .I3(out_of_range0_carry_6),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry_i_2
       (.I0(\cmd_arg_reg[31]_0 [5]),
        .I1(out_of_range0_carry_3),
        .I2(\cmd_arg_reg[31]_0 [4]),
        .I3(out_of_range0_carry_4),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry_i_3
       (.I0(\cmd_arg_reg[31]_0 [3]),
        .I1(out_of_range0_carry_1),
        .I2(\cmd_arg_reg[31]_0 [2]),
        .I3(out_of_range0_carry_2),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_of_range0_carry_i_4
       (.I0(\cmd_arg_reg[31]_0 [1]),
        .I1(out_of_range0_carry),
        .I2(\cmd_arg_reg[31]_0 [0]),
        .I3(out_of_range0_carry_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry_i_5
       (.I0(out_of_range0_carry_5),
        .I1(\cmd_arg_reg[31]_0 [7]),
        .I2(out_of_range0_carry_6),
        .I3(\cmd_arg_reg[31]_0 [6]),
        .O(\size_reg[7] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry_i_6
       (.I0(out_of_range0_carry_3),
        .I1(\cmd_arg_reg[31]_0 [5]),
        .I2(out_of_range0_carry_4),
        .I3(\cmd_arg_reg[31]_0 [4]),
        .O(\size_reg[7] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry_i_7
       (.I0(out_of_range0_carry_1),
        .I1(\cmd_arg_reg[31]_0 [3]),
        .I2(out_of_range0_carry_2),
        .I3(\cmd_arg_reg[31]_0 [2]),
        .O(\size_reg[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    out_of_range0_carry_i_8
       (.I0(out_of_range0_carry),
        .I1(\cmd_arg_reg[31]_0 [1]),
        .I2(out_of_range0_carry_0),
        .I3(\cmd_arg_reg[31]_0 [0]),
        .O(\size_reg[7] [0]));
  LUT5 #(
    .INIT(32'h00004F40)) 
    out_of_range_i_1
       (.I0(out_of_range_i_2_n_0),
        .I1(CO),
        .I2(\FSM_onehot_state_reg[0] ),
        .I3(out_of_range),
        .I4(is_writing_reg_inv_0),
        .O(out_of_range_reg));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFDFF)) 
    out_of_range_i_2
       (.I0(out_of_range_i_3_n_0),
        .I1(invalid_dat_width_reg),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(out_of_range_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_of_range_i_3
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .O(out_of_range_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ram_reg_r2_0_7_0_5_i_1
       (.I0(resp_pos1[3]),
        .I1(Q),
        .O(ram_dev_addr[1]));
  LUT2 #(
    .INIT(4'hB)) 
    ram_reg_r2_0_7_0_5_i_2
       (.I0(resp_pos1[2]),
        .I1(Q),
        .O(ram_dev_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rca[15]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\rca[15]_i_3_n_0 ),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0040040000000000)) 
    \rca[15]_i_3 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_1 ),
        .O(\rca[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFDFC)) 
    \rca[15]_i_6 
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .O(\rca[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match_carry__0_i_2
       (.I0(\cmd_arg_reg[31]_0 [30]),
        .I1(\resp_byte[7]_i_8_0 [14]),
        .I2(\cmd_arg_reg[31]_0 [28]),
        .I3(\resp_byte[7]_i_8_0 [12]),
        .I4(\resp_byte[7]_i_8_0 [13]),
        .I5(\cmd_arg_reg[31]_0 [29]),
        .O(\cmd_arg_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match_carry_i_3
       (.I0(\cmd_arg_reg[31]_0 [20]),
        .I1(\resp_byte[7]_i_8_0 [4]),
        .I2(\cmd_arg_reg[31]_0 [19]),
        .I3(\resp_byte[7]_i_8_0 [3]),
        .I4(\resp_byte[7]_i_8_0 [5]),
        .I5(\cmd_arg_reg[31]_0 [21]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match_carry_i_4
       (.I0(\cmd_arg_reg[31]_0 [18]),
        .I1(\resp_byte[7]_i_8_0 [2]),
        .I2(\cmd_arg_reg[31]_0 [17]),
        .I3(\resp_byte[7]_i_8_0 [1]),
        .I4(\resp_byte[7]_i_8_0 [0]),
        .I5(\cmd_arg_reg[31]_0 [16]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    \resp_byte[0]_i_1 
       (.I0(\resp_byte_reg[0]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [2]),
        .I2(\resp_byte[0]_i_3_n_0 ),
        .I3(\resp_byte[0]_i_4_n_0 ),
        .I4(\resp_byte_reg[0] [1]),
        .I5(\resp_byte[0]_i_5_n_0 ),
        .O(\resp_cur_reg[2] [0]));
  LUT6 #(
    .INIT(64'h0000FF000D000D00)) 
    \resp_byte[0]_i_10 
       (.I0(\resp_byte[7]_i_8_0 [0]),
        .I1(\resp_byte[3]_i_9_n_0 ),
        .I2(\resp_byte[0]_i_11_n_0 ),
        .I3(\resp_byte_reg[0] [0]),
        .I4(\resp_byte[4]_i_4_0 [0]),
        .I5(\resp_byte[7]_i_5_n_0 ),
        .O(\resp_byte[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[0]_i_11 
       (.I0(\resp_byte[4]_i_4_0 [8]),
        .I1(\resp_byte[7]_i_8_0 [8]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \resp_byte[0]_i_3 
       (.I0(ram_dev_data[8]),
        .I1(ram_dev_data[24]),
        .I2(\state_reg[4]_0 ),
        .I3(ram_dev_data[0]),
        .I4(\counter_reg[4]_1 ),
        .I5(ram_dev_data[16]),
        .O(\resp_byte[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \resp_byte[0]_i_4 
       (.I0(Q),
        .I1(resp_pos1[3]),
        .I2(resp_pos1[4]),
        .I3(resp_pos1[2]),
        .I4(\counter_reg[4]_0 [1]),
        .I5(\counter_reg[4]_0 [0]),
        .O(\resp_byte[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \resp_byte[0]_i_5 
       (.I0(\resp_byte[4]_i_4_0 [0]),
        .I1(\resp_byte[7]_i_5_n_0 ),
        .I2(\resp_byte[0]_i_9_n_0 ),
        .I3(\resp_byte[4]_i_4_0 [12]),
        .I4(\state_reg[4]_0 ),
        .I5(\counter_reg[4]_1 ),
        .O(\resp_byte[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0E55)) 
    \resp_byte[0]_i_6 
       (.I0(\resp_byte[7]_i_5_n_0 ),
        .I1(\resp_byte_reg[0]_i_2_0 ),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\state_reg[4]_0 ),
        .I4(\resp_byte_reg[0] [0]),
        .I5(\resp_byte[0]_i_10_n_0 ),
        .O(\resp_byte[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD0FAD07250505050)) 
    \resp_byte[0]_i_7 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(resp_pos1[2]),
        .I4(\cmd_arg_reg[31]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \resp_byte[0]_i_8 
       (.I0(\counter_reg[4]_0 [1]),
        .I1(\counter_reg[4]_0 [0]),
        .I2(Q),
        .O(\counter_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[0]_i_9 
       (.I0(\resp_byte[4]_i_4_0 [8]),
        .I1(\resp_byte[4]_i_4_0 [18]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \resp_byte[1]_i_1 
       (.I0(\resp_byte[1]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [1]),
        .I2(\resp_byte[1]_i_3_n_0 ),
        .I3(\resp_byte_reg[0] [2]),
        .I4(\resp_byte[1]_i_4_n_0 ),
        .I5(\resp_byte[1]_i_5_n_0 ),
        .O(\resp_cur_reg[2] [1]));
  LUT6 #(
    .INIT(64'hB8AA00AA00AA00AA)) 
    \resp_byte[1]_i_2 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(resp_pos1[2]),
        .I2(\cmd_arg_reg[31]_0 [1]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA202A200A)) 
    \resp_byte[1]_i_3 
       (.I0(\resp_byte[1]_i_6_n_0 ),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\state_reg[4]_0 ),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\resp_byte_reg[1] ),
        .I5(\resp_byte_reg[0] [0]),
        .O(\resp_byte[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20222000)) 
    \resp_byte[1]_i_4 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .I2(ram_dev_data[9]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(ram_dev_data[25]),
        .I5(\resp_byte[1]_i_7_n_0 ),
        .O(\resp_byte[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF0D0D)) 
    \resp_byte[1]_i_5 
       (.I0(\resp_byte[4]_i_4_0 [13]),
        .I1(\resp_byte[3]_i_9_n_0 ),
        .I2(\resp_byte[1]_i_8_n_0 ),
        .I3(\resp_byte[4]_i_4_0 [1]),
        .I4(\resp_byte[7]_i_5_n_0 ),
        .I5(\resp_byte_reg[0] [1]),
        .O(\resp_byte[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FFF2FFF2FF)) 
    \resp_byte[1]_i_6 
       (.I0(\resp_byte[7]_i_8_0 [1]),
        .I1(\resp_byte[3]_i_9_n_0 ),
        .I2(\resp_byte[1]_i_9_n_0 ),
        .I3(\resp_byte_reg[0] [0]),
        .I4(\resp_byte[4]_i_4_0 [1]),
        .I5(\resp_byte[7]_i_5_n_0 ),
        .O(\resp_byte[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF3F333F3BBF333F3)) 
    \resp_byte[1]_i_7 
       (.I0(ram_dev_data[17]),
        .I1(\resp_byte[7]_i_6_n_0 ),
        .I2(ram_dev_data[1]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[1]_i_8 
       (.I0(\resp_byte[4]_i_4_0 [9]),
        .I1(\resp_byte[4]_i_4_0 [19]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[1]_i_9 
       (.I0(\resp_byte[4]_i_4_0 [9]),
        .I1(\resp_byte[7]_i_8_0 [9]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[2]_i_1 
       (.I0(\resp_byte[2]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [1]),
        .I2(\resp_byte[2]_i_3_n_0 ),
        .I3(\resp_byte_reg[0] [2]),
        .I4(\resp_byte[2]_i_4_n_0 ),
        .O(\resp_cur_reg[2] [2]));
  LUT6 #(
    .INIT(64'hB8AA00AA00AA00AA)) 
    \resp_byte[2]_i_2 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(resp_pos1[2]),
        .I2(\cmd_arg_reg[31]_0 [2]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008FDF)) 
    \resp_byte[2]_i_3 
       (.I0(\resp_byte[7]_i_5_n_0 ),
        .I1(\resp_byte[4]_i_4_0 [2]),
        .I2(\resp_byte_reg[0] [0]),
        .I3(\resp_byte[2]_i_5_n_0 ),
        .I4(\resp_byte[2]_i_6_n_0 ),
        .O(\resp_byte[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0E0E0EEEEE0EE)) 
    \resp_byte[2]_i_4 
       (.I0(\resp_byte[2]_i_7_n_0 ),
        .I1(\resp_byte[2]_i_8_n_0 ),
        .I2(\resp_byte_reg[0] [1]),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\resp_byte[4]_i_4_0 [2]),
        .I5(\resp_byte_reg[2] ),
        .O(\resp_byte[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \resp_byte[2]_i_5 
       (.I0(\resp_byte[4]_i_4_0 [10]),
        .I1(\resp_byte[7]_i_8_0 [2]),
        .I2(\counter_reg[4]_1 ),
        .I3(\resp_byte[7]_i_8_0 [10]),
        .I4(\state_reg[4]_0 ),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\resp_byte[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0550550100000000)) 
    \resp_byte[2]_i_6 
       (.I0(\resp_byte_reg[0] [0]),
        .I1(\resp_byte[2]_i_3_0 ),
        .I2(resp_pos1[2]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(Q),
        .O(\resp_byte[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF3F333F3BBF333F3)) 
    \resp_byte[2]_i_7 
       (.I0(ram_dev_data[18]),
        .I1(\resp_byte[7]_i_6_n_0 ),
        .I2(ram_dev_data[2]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    \resp_byte[2]_i_8 
       (.I0(ram_dev_data[26]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(ram_dev_data[10]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .O(\resp_byte[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \resp_byte[3]_i_1 
       (.I0(\resp_byte[3]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [1]),
        .I2(\resp_byte[3]_i_3_n_0 ),
        .I3(\resp_byte_reg[0] [2]),
        .I4(\resp_byte[3]_i_4_n_0 ),
        .I5(\resp_byte[3]_i_5_n_0 ),
        .O(\resp_cur_reg[2] [3]));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[3]_i_10 
       (.I0(\resp_byte[4]_i_4_0 [11]),
        .I1(\resp_byte[4]_i_4_0 [20]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF00A00FCF00C0)) 
    \resp_byte[3]_i_11 
       (.I0(\resp_byte[4]_i_4_0 [11]),
        .I1(\resp_byte[7]_i_8_0 [11]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8AA00AA00AA00AA)) 
    \resp_byte[3]_i_2 
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(resp_pos1[2]),
        .I2(\cmd_arg_reg[31]_0 [3]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA202A200A)) 
    \resp_byte[3]_i_3 
       (.I0(\resp_byte[3]_i_6_n_0 ),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\state_reg[4]_0 ),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\resp_byte_reg[3] ),
        .I5(\resp_byte_reg[0] [0]),
        .O(\resp_byte[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20222000)) 
    \resp_byte[3]_i_4 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .I2(ram_dev_data[11]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(ram_dev_data[27]),
        .I5(\resp_byte[3]_i_8_n_0 ),
        .O(\resp_byte[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF0D0D)) 
    \resp_byte[3]_i_5 
       (.I0(\resp_byte[4]_i_4_0 [14]),
        .I1(\resp_byte[3]_i_9_n_0 ),
        .I2(\resp_byte[3]_i_10_n_0 ),
        .I3(\resp_byte[4]_i_4_0 [3]),
        .I4(\resp_byte[7]_i_5_n_0 ),
        .I5(\resp_byte_reg[0] [1]),
        .O(\resp_byte[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FFF2FFF2FF)) 
    \resp_byte[3]_i_6 
       (.I0(\resp_byte[7]_i_8_0 [3]),
        .I1(\resp_byte[3]_i_9_n_0 ),
        .I2(\resp_byte[3]_i_11_n_0 ),
        .I3(\resp_byte_reg[0] [0]),
        .I4(\resp_byte[4]_i_4_0 [3]),
        .I5(\resp_byte[7]_i_5_n_0 ),
        .O(\resp_byte[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \resp_byte[3]_i_7 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .O(\state_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF3F333F3BBF333F3)) 
    \resp_byte[3]_i_8 
       (.I0(ram_dev_data[19]),
        .I1(\resp_byte[7]_i_6_n_0 ),
        .I2(ram_dev_data[3]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \resp_byte[3]_i_9 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\counter_reg[4]_0 [1]),
        .O(\resp_byte[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[4]_i_1 
       (.I0(\resp_byte[4]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [1]),
        .I2(\resp_byte[4]_i_3_n_0 ),
        .I3(\resp_byte_reg[0] [2]),
        .I4(\resp_byte[4]_i_4_n_0 ),
        .O(\resp_cur_reg[2] [4]));
  LUT6 #(
    .INIT(64'hB8AA00AA00AA00AA)) 
    \resp_byte[4]_i_2 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(resp_pos1[2]),
        .I2(\cmd_arg_reg[31]_0 [4]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000BF1F)) 
    \resp_byte[4]_i_3 
       (.I0(\resp_byte[7]_i_5_n_0 ),
        .I1(\resp_byte[4]_i_5_n_0 ),
        .I2(\resp_byte_reg[0] [0]),
        .I3(\resp_byte[4]_i_4_0 [4]),
        .I4(\resp_byte[4]_i_6_n_0 ),
        .O(\resp_byte[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    \resp_byte[4]_i_4 
       (.I0(\resp_byte[4]_i_7_n_0 ),
        .I1(\resp_byte[0]_i_4_n_0 ),
        .I2(\resp_byte_reg[0] [1]),
        .I3(\resp_byte[4]_i_4_0 [4]),
        .I4(\resp_byte[7]_i_5_n_0 ),
        .I5(\resp_byte[4]_i_8_n_0 ),
        .O(\resp_byte[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1C001F00DCFFDFFF)) 
    \resp_byte[4]_i_5 
       (.I0(\resp_byte[7]_i_8_0 [4]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\counter_reg[4]_0 [0]),
        .I3(Q),
        .I4(\resp_byte[7]_i_8_0 [12]),
        .I5(\cmd_index_reg[5]_0 [4]),
        .O(\resp_byte[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0550550100000000)) 
    \resp_byte[4]_i_6 
       (.I0(\resp_byte_reg[0] [0]),
        .I1(\resp_byte[4]_i_3_0 ),
        .I2(resp_pos1[2]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(Q),
        .O(\resp_byte[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \resp_byte[4]_i_7 
       (.I0(ram_dev_data[12]),
        .I1(ram_dev_data[28]),
        .I2(\state_reg[4]_0 ),
        .I3(ram_dev_data[4]),
        .I4(\counter_reg[4]_1 ),
        .I5(ram_dev_data[20]),
        .O(\resp_byte[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE3FFE0FF23002000)) 
    \resp_byte[4]_i_8 
       (.I0(\resp_byte[4]_i_4_0 [15]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\counter_reg[4]_0 [0]),
        .I3(Q),
        .I4(\resp_byte[4]_i_4_0 [21]),
        .I5(\cmd_index_reg[5]_0 [4]),
        .O(\resp_byte[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[5]_i_1 
       (.I0(\resp_byte[5]_i_2_n_0 ),
        .I1(\resp_byte_reg[0] [1]),
        .I2(\resp_byte[5]_i_3_n_0 ),
        .I3(\resp_byte_reg[0] [2]),
        .I4(\resp_byte[5]_i_4_n_0 ),
        .O(\resp_cur_reg[2] [5]));
  LUT6 #(
    .INIT(64'hB8AA00AA00AA00AA)) 
    \resp_byte[5]_i_2 
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(resp_pos1[2]),
        .I2(\cmd_arg_reg[31]_0 [5]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AAA2AA)) 
    \resp_byte[5]_i_3 
       (.I0(\resp_byte[5]_i_5_n_0 ),
        .I1(\resp_byte[7]_i_5_n_0 ),
        .I2(\resp_byte[4]_i_4_0 [5]),
        .I3(\resp_byte_reg[0] [0]),
        .I4(\resp_byte[5]_i_6_n_0 ),
        .O(\resp_byte[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0E0E0EEEEE0EE)) 
    \resp_byte[5]_i_4 
       (.I0(\resp_byte[5]_i_7_n_0 ),
        .I1(\resp_byte[5]_i_8_n_0 ),
        .I2(\resp_byte_reg[0] [1]),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\resp_byte[4]_i_4_0 [5]),
        .I5(\resp_byte_reg[5] ),
        .O(\resp_byte[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC30EFFFF)) 
    \resp_byte[5]_i_5 
       (.I0(\resp_byte[5]_i_3_0 ),
        .I1(resp_pos1[2]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .I5(\resp_byte_reg[0] [0]),
        .O(\resp_byte[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \resp_byte[5]_i_6 
       (.I0(\resp_byte[7]_i_8_0 [13]),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\resp_byte[4]_i_4_0 [14]),
        .I3(\state_reg[4]_0 ),
        .I4(\resp_byte[7]_i_8_0 [5]),
        .I5(\counter_reg[4]_1 ),
        .O(\resp_byte[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF3F333F3BBF333F3)) 
    \resp_byte[5]_i_7 
       (.I0(ram_dev_data[21]),
        .I1(\resp_byte[7]_i_6_n_0 ),
        .I2(ram_dev_data[5]),
        .I3(Q),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\counter_reg[4]_0 [1]),
        .O(\resp_byte[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    \resp_byte[5]_i_8 
       (.I0(ram_dev_data[29]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(ram_dev_data[13]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .O(\resp_byte[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF3F5FFF)) 
    \resp_byte[6]_i_10 
       (.I0(\resp_byte[7]_i_8_0 [6]),
        .I1(\resp_byte[4]_i_4_0 [16]),
        .I2(Q),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\counter_reg[4]_0 [1]),
        .I5(resp_pos1[2]),
        .O(\resp_byte[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00A3FFFF00A300A3)) 
    \resp_byte[6]_i_2 
       (.I0(\resp_byte[4]_i_4_0 [6]),
        .I1(\resp_byte_reg[6] ),
        .I2(\resp_byte[7]_i_5_n_0 ),
        .I3(\resp_byte_reg[0] [1]),
        .I4(\resp_byte[6]_i_5_n_0 ),
        .I5(\resp_byte[7]_i_6_n_0 ),
        .O(\resp_byte[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC5050505)) 
    \resp_byte[6]_i_3 
       (.I0(\resp_byte_reg[6]_i_6_n_0 ),
        .I1(\resp_byte[7]_i_9_n_0 ),
        .I2(\resp_byte_reg[0] [1]),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\cmd_arg_reg[31]_0 [6]),
        .O(\resp_byte[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    \resp_byte[6]_i_5 
       (.I0(ram_dev_data[22]),
        .I1(Q),
        .I2(\counter_reg[4]_0 [0]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\resp_byte[6]_i_7_n_0 ),
        .O(\resp_byte[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0ACFFFF00AC0000)) 
    \resp_byte[6]_i_7 
       (.I0(ram_dev_data[14]),
        .I1(ram_dev_data[30]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .I5(ram_dev_data[6]),
        .O(\resp_byte[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCF1FFFF)) 
    \resp_byte[6]_i_8 
       (.I0(\resp_byte_reg[6]_i_6_0 ),
        .I1(resp_pos1[2]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .O(\resp_byte[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A2AAAAAAA2AA)) 
    \resp_byte[6]_i_9 
       (.I0(\resp_byte[6]_i_10_n_0 ),
        .I1(\state_reg[4]_0 ),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\resp_byte[7]_i_8_0 [14]),
        .I4(\resp_byte[7]_i_5_n_0 ),
        .I5(\resp_byte[4]_i_4_0 [6]),
        .O(\resp_byte[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \resp_byte[7]_i_10 
       (.I0(\counter_reg[4]_0 [0]),
        .I1(\counter_reg[4]_0 [1]),
        .O(\resp_byte[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h04044C48)) 
    \resp_byte[7]_i_11 
       (.I0(\counter_reg[4]_0 [0]),
        .I1(Q),
        .I2(\counter_reg[4]_0 [1]),
        .I3(initialization_done),
        .I4(resp_pos1[2]),
        .O(\resp_byte[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0CAF00000CA00000)) 
    \resp_byte[7]_i_12 
       (.I0(\resp_byte[4]_i_4_0 [17]),
        .I1(\resp_byte[7]_i_8_0 [7]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .I5(\resp_byte[7]_i_8_0 [15]),
        .O(\resp_byte[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00A300A300A3)) 
    \resp_byte[7]_i_2 
       (.I0(\resp_byte[4]_i_4_0 [7]),
        .I1(\resp_byte_reg[7] ),
        .I2(\resp_byte[7]_i_5_n_0 ),
        .I3(\resp_byte_reg[0] [1]),
        .I4(\resp_byte[7]_i_6_n_0 ),
        .I5(\resp_byte[7]_i_7_n_0 ),
        .O(\resp_byte[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \resp_byte[7]_i_3 
       (.I0(\resp_byte[7]_i_8_n_0 ),
        .I1(\resp_byte[7]_i_9_n_0 ),
        .I2(\resp_byte_reg[0] [1]),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\cmd_arg_reg[31]_0 [7]),
        .O(\resp_byte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \resp_byte[7]_i_5 
       (.I0(Q),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(resp_pos1[2]),
        .O(\resp_byte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \resp_byte[7]_i_6 
       (.I0(\resp_byte[7]_i_10_n_0 ),
        .I1(resp_pos1[2]),
        .I2(resp_pos1[4]),
        .I3(resp_pos1[3]),
        .I4(Q),
        .I5(\resp_byte_reg[0] [1]),
        .O(\resp_byte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \resp_byte[7]_i_7 
       (.I0(ram_dev_data[15]),
        .I1(ram_dev_data[31]),
        .I2(\state_reg[4]_0 ),
        .I3(ram_dev_data[7]),
        .I4(\counter_reg[4]_1 ),
        .I5(ram_dev_data[23]),
        .O(\resp_byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \resp_byte[7]_i_8 
       (.I0(\resp_byte[7]_i_11_n_0 ),
        .I1(\resp_byte_reg[0] [0]),
        .I2(\resp_byte[7]_i_12_n_0 ),
        .I3(\resp_byte[7]_i_5_n_0 ),
        .I4(\resp_byte[4]_i_4_0 [7]),
        .I5(\resp_byte_reg[0] [1]),
        .O(\resp_byte[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \resp_byte[7]_i_9 
       (.I0(\counter_reg[4]_0 [1]),
        .I1(\counter_reg[4]_0 [0]),
        .I2(Q),
        .O(\resp_byte[7]_i_9_n_0 ));
  MUXF7 \resp_byte_reg[0]_i_2 
       (.I0(\resp_byte[0]_i_6_n_0 ),
        .I1(\resp_byte[0]_i_7_n_0 ),
        .O(\resp_byte_reg[0]_i_2_n_0 ),
        .S(\resp_byte_reg[0] [1]));
  MUXF7 \resp_byte_reg[6]_i_1 
       (.I0(\resp_byte[6]_i_2_n_0 ),
        .I1(\resp_byte[6]_i_3_n_0 ),
        .O(\resp_cur_reg[2] [6]),
        .S(\resp_byte_reg[0] [2]));
  MUXF7 \resp_byte_reg[6]_i_6 
       (.I0(\resp_byte[6]_i_8_n_0 ),
        .I1(\resp_byte[6]_i_9_n_0 ),
        .O(\resp_byte_reg[6]_i_6_n_0 ),
        .S(\resp_byte_reg[0] [0]));
  MUXF7 \resp_byte_reg[7]_i_1 
       (.I0(\resp_byte[7]_i_2_n_0 ),
        .I1(\resp_byte[7]_i_3_n_0 ),
        .O(\resp_cur_reg[2] [7]),
        .S(\resp_byte_reg[0] [2]));
  LUT6 #(
    .INIT(64'hF2FFFFFCFFF3F8FC)) 
    \resp_cur[0]_i_1 
       (.I0(ignored_reg),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\resp_cur[0]_i_2_n_0 ),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\cmd_index_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFFFDFC0)) 
    \resp_cur[0]_i_2 
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .O(\resp_cur[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000DED000000000)) 
    \resp_cur[1]_i_1 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\resp_cur[2]_i_6_n_0 ),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\resp_cur[1]_i_2_n_0 ),
        .O(\cmd_index_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \resp_cur[1]_i_2 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .O(\resp_cur[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080888080808080)) 
    \resp_cur[2]_i_1 
       (.I0(\resp_cur[2]_i_3_n_0 ),
        .I1(resp_no_crc_reg),
        .I2(\FSM_onehot_state_reg[4]_0 [3]),
        .I3(\FSM_onehot_state_reg[4]_0 [0]),
        .I4(got_new_cmd_reg_0),
        .I5(\FSM_onehot_state_reg[4]_0 [4]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \resp_cur[2]_i_2 
       (.I0(\resp_cur[2]_i_5_n_0 ),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\resp_cur[2]_i_6_n_0 ),
        .I3(\cmd_index_reg[5]_0 [0]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\got_cmd0[0]_i_2_n_0 ),
        .O(\cmd_index_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0100010155555555)) 
    \resp_cur[2]_i_3 
       (.I0(\FSM_onehot_state_reg[4]_0 [2]),
        .I1(\FSM_onehot_state_reg[4]_0 [3]),
        .I2(\FSM_onehot_state_reg[4]_0 [1]),
        .I3(cmd_read_crc_err),
        .I4(cmd_received),
        .I5(\FSM_onehot_state_reg[4]_0 [0]),
        .O(\resp_cur[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000000040400000)) 
    \resp_cur[2]_i_5 
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [0]),
        .I3(invalid_dat_width_reg),
        .I4(\resp_cur[1]_i_2_n_0 ),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\resp_cur[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \resp_cur[2]_i_6 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_arg_reg[31]_0 [8]),
        .I2(\cmd_arg_reg[31]_0 [9]),
        .I3(\cmd_arg_reg[31]_0 [10]),
        .I4(\cmd_arg_reg[31]_0 [11]),
        .O(\resp_cur[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \resp_len[0]_i_1 
       (.I0(\resp_cur[1]_i_2_n_0 ),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [1]),
        .I5(invalid_dat_width_reg),
        .O(\cmd_index_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \resp_len[1]_i_1 
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\resp_cur[1]_i_2_n_0 ),
        .O(\cmd_index_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \resp_len[2]_i_1 
       (.I0(\cmd_index_reg[0]_1 ),
        .I1(\cmd_index_reg[3]_0 ),
        .O(\cmd_index_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \resp_len[4]_i_1 
       (.I0(\cmd_index_reg[0]_1 ),
        .I1(\cmd_index_reg[3]_0 ),
        .O(\cmd_index_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    resp_no_crc_i_1
       (.I0(\cmd_index_reg[0]_1 ),
        .I1(\cmd_index_reg[3]_0 ),
        .I2(\cmd_index_reg[0]_0 [1]),
        .O(resp_no_crc_next));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \resp_type_out[0]_i_1 
       (.I0(\cmd_index_reg[3]_0 ),
        .I1(\cmd_index_reg[0]_1 ),
        .I2(\cmd_index_reg[5]_1 ),
        .I3(\FSM_onehot_state_reg[3] ),
        .I4(is_writing_reg_inv_0),
        .O(\cmd_index_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \resp_type_out[4]_i_1 
       (.I0(\rca[15]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[3] ),
        .I2(is_writing_reg_inv_0),
        .O(\cmd_index_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \save_block_count_vars[0].block_count_vars[0][31]_i_1 
       (.I0(save_current_cmd),
        .I1(\save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \save_block_count_vars[0].block_count_vars[0][31]_i_2 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0 ),
        .I2(invalid_dat_width_reg),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [3]),
        .I5(\cmd_index_reg[5]_0 [4]),
        .O(acmd_defined_reg));
  LUT6 #(
    .INIT(64'hFFFFEBBBAAAAAAAA)) 
    \save_block_count_vars[0].block_count_vars[0][31]_i_3 
       (.I0(is_writing_reg_inv_0),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg[0] ),
        .O(\save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \save_block_count_vars[0].block_count_vars[0][31]_i_4 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .O(\save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFD5FFFEFDFFFDFF)) 
    \save_block_count_vars[0].block_count_vars[0][31]_i_5 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(invalid_dat_width_reg),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \save_block_count_vars[1].block_count_vars[1][22]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0 ),
        .I5(invalid_dat_width_reg),
        .O(\cmd_index_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_block_count_vars[1].block_count_vars[1][22]_i_2 
       (.I0(\cmd_index_reg[5]_0 [5]),
        .I1(\cmd_index_reg[5]_0 [4]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .O(\save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \save_erase_vars[0].erase_vars[0][31]_i_1 
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [1]),
        .I4(\FSM_onehot_state_reg[0] ),
        .I5(\save_erase_vars[0].erase_vars[0][31]_i_2_n_0 ),
        .O(\cmd_index_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \save_erase_vars[0].erase_vars[0][31]_i_2 
       (.I0(\cmd_index_reg[5]_0 [2]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .O(\save_erase_vars[0].erase_vars[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \save_erase_vars[1].erase_vars[1][31]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\save_erase_vars[1].erase_vars[1][31]_i_2_n_0 ),
        .I2(\cmd_index_reg[5]_0 [5]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [2]),
        .O(\cmd_index_reg[5]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \save_erase_vars[1].erase_vars[1][31]_i_2 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .O(\save_erase_vars[1].erase_vars[1][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEE0EEE)) 
    \saved_cmd_index[5]_i_1 
       (.I0(\saved_cmd_index[5]_i_2_n_0 ),
        .I1(\saved_cmd_index[5]_i_3_n_0 ),
        .I2(\saved_cmd_index[5]_i_4_n_0 ),
        .I3(invalid_dat_width_reg),
        .I4(\saved_cmd_index[5]_i_5_n_0 ),
        .I5(\saved_cmd_index_reg[5] ),
        .O(save_current_cmd));
  LUT6 #(
    .INIT(64'hFFFFFFFF00006100)) 
    \saved_cmd_index[5]_i_2 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [3]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\got_cmd0[0]_i_2_n_0 ),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\saved_cmd_index[5]_i_6_n_0 ),
        .O(\saved_cmd_index[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0220000200220020)) 
    \saved_cmd_index[5]_i_3 
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\saved_cmd_index[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FBFFFFFFFFFF)) 
    \saved_cmd_index[5]_i_4 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\saved_cmd_index[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800C00000)) 
    \saved_cmd_index[5]_i_5 
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [1]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [4]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\saved_cmd_index[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \saved_cmd_index[5]_i_6 
       (.I0(invalid_dat_width_reg),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .I3(\saved_cmd_index[5]_i_7_n_0 ),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\cmd_index_reg[5]_0 [4]),
        .O(\saved_cmd_index[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \saved_cmd_index[5]_i_7 
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .O(\saved_cmd_index[5]_i_7_n_0 ));
  FDSE sd_cmd_o_sys_reg
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sd_cmd_o_sys0),
        .Q(sd_cmd_o_sys),
        .S(is_writing_reg_inv_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    sd_dat3_pullup_off_i_2
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .O(\cmd_index_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    send_resp_o_i_1
       (.I0(\cmd_index_reg[3]_0 ),
        .I1(\cmd_index_reg[0]_1 ),
        .I2(\cmd_index_reg[5]_1 ),
        .I3(\FSM_onehot_state_reg[3] ),
        .I4(is_writing_reg_inv_0),
        .O(\cmd_index_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h000FCCDDFFFFCCDD)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(line_crc_n_5),
        .I2(line_crc_n_2),
        .I3(\state_reg_n_0_[0] ),
        .I4(p_0_in5_in),
        .I5(line_crc_n_3),
        .O(\state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_4 
       (.I0(E),
        .I1(\buf_read_reg[0]_0 ),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[0]_i_6 
       (.I0(p_0_in5_in),
        .I1(p_1_in2_in),
        .I2(Q),
        .O(\state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \state[3]_i_1 
       (.I0(line_crc_n_26),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_1_in6_in),
        .I3(p_5_in),
        .I4(\state[3]_i_3_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE0CFE000E0CFE00)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(line_crc_n_11),
        .I2(\state_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(E),
        .I5(\buf_read_reg[0]_0 ),
        .O(\state[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[3]_i_4 
       (.I0(p_5_in),
        .I1(line_crc_n_4),
        .O(\state[3]_i_4_n_0 ));
  CARRY4 state_next3_carry
       (.CI(1'b0),
        .CO({state_next3_carry_n_0,state_next3_carry_n_1,state_next3_carry_n_2,state_next3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({line_crc_n_28,line_crc_n_29,line_crc_n_30,1'b0}),
        .O(NLW_state_next3_carry_O_UNCONNECTED[3:0]),
        .S({line_crc_n_31,line_crc_n_32,line_crc_n_33,line_crc_n_34}));
  CARRY4 state_next3_carry__0
       (.CI(state_next3_carry_n_0),
        .CO({NLW_state_next3_carry__0_CO_UNCONNECTED[3:1],state_next38_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,line_crc_n_36}),
        .O(NLW_state_next3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,line_crc_n_35}));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(line_crc_n_25),
        .Q(\state_reg_n_0_[0] ),
        .R(is_writing_reg_inv_0));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(line_crc_n_24),
        .Q(p_5_in),
        .R(is_writing_reg_inv_0));
  FDRE \state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(line_crc_n_23),
        .Q(p_1_in6_in),
        .R(is_writing_reg_inv_0));
  FDRE \state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(p_0_in5_in),
        .R(is_writing_reg_inv_0));
  FDRE \state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(line_crc_n_14),
        .Q(Q),
        .R(is_writing_reg_inv_0));
  FDRE \state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(line_crc_n_1),
        .Q(p_1_in2_in),
        .R(is_writing_reg_inv_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    valid_i_1
       (.I0(cmd_received),
        .I1(cmd_read_crc_err),
        .O(got_new_cmd_reg_0));
  LUT6 #(
    .INIT(64'h000200000A0A010E)) 
    valid_i_13
       (.I0(\cmd_index_reg[5]_0 [3]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [2]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [5]),
        .O(\cmd_index_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h0001000700090000)) 
    valid_i_15
       (.I0(\cmd_index_reg[5]_0 [0]),
        .I1(\cmd_index_reg[5]_0 [1]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\cmd_index_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFEEEFEFEFEFFEEEE)) 
    valid_i_4
       (.I0(\cmd_index_reg[5]_0 [4]),
        .I1(\cmd_index_reg[5]_0 [5]),
        .I2(\cmd_index_reg[5]_0 [2]),
        .I3(\cmd_index_reg[5]_0 [3]),
        .I4(\cmd_index_reg[5]_0 [0]),
        .I5(\cmd_index_reg[5]_0 [1]),
        .O(\cmd_index_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFF2EF287D74FA84)) 
    valid_i_8
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [0]),
        .I2(\cmd_index_reg[5]_0 [4]),
        .I3(\cmd_index_reg[5]_0 [5]),
        .I4(\cmd_index_reg[5]_0 [2]),
        .I5(\cmd_index_reg[5]_0 [3]),
        .O(\cmd_index_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h080000D800000025)) 
    valid_i_9
       (.I0(\cmd_index_reg[5]_0 [1]),
        .I1(\cmd_index_reg[5]_0 [2]),
        .I2(\cmd_index_reg[5]_0 [3]),
        .I3(\cmd_index_reg[5]_0 [4]),
        .I4(\cmd_index_reg[5]_0 [5]),
        .I5(\cmd_index_reg[5]_0 [0]),
        .O(\cmd_index_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h0000EEE0)) 
    write_stb_received_r_i_1
       (.I0(p_1_in6_in),
        .I1(p_0_in5_in),
        .I2(write_stb_received_r),
        .I3(send_resp),
        .I4(is_writing_reg_inv_0),
        .O(write_stb_received_r_i_1_n_0));
  FDRE write_stb_received_r_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_stb_received_r_i_1_n_0),
        .Q(write_stb_received_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "command_validator" *) 
module adapter_axi_sd_0_0_command_validator
   (last_cmd_valid,
    acmd_defined_reg_0,
    \reg_saved_reg[19][14] ,
    \reg_saved_reg[19][16] ,
    \reg_saved_reg[19][17] ,
    valid_reg_0,
    cmd_illegal_stb0,
    cmd_ignored_stb0,
    send_no_resp0,
    valid_reg_1,
    cmd_received_good,
    valid_c1_out,
    S_AXI_ACLK,
    ignored_c,
    illegal_reg_0,
    acmd_defined_c,
    \axi_rdata[17]_i_3 ,
    \axi_rdata[17]_i_3_0 ,
    \axi_rdata[14]_i_3 ,
    \axi_rdata[17]_i_3_1 ,
    Q,
    send_resp);
  output last_cmd_valid;
  output acmd_defined_reg_0;
  output \reg_saved_reg[19][14] ;
  output \reg_saved_reg[19][16] ;
  output \reg_saved_reg[19][17] ;
  output valid_reg_0;
  output cmd_illegal_stb0;
  output cmd_ignored_stb0;
  output send_no_resp0;
  input valid_reg_1;
  input cmd_received_good;
  input valid_c1_out;
  input S_AXI_ACLK;
  input ignored_c;
  input illegal_reg_0;
  input acmd_defined_c;
  input [2:0]\axi_rdata[17]_i_3 ;
  input [2:0]\axi_rdata[17]_i_3_0 ;
  input [1:0]\axi_rdata[14]_i_3 ;
  input [2:0]\axi_rdata[17]_i_3_1 ;
  input [4:0]Q;
  input send_resp;

  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire acmd_defined_c;
  wire acmd_defined_reg_0;
  wire [1:0]\axi_rdata[14]_i_3 ;
  wire [2:0]\axi_rdata[17]_i_3 ;
  wire [2:0]\axi_rdata[17]_i_3_0 ;
  wire [2:0]\axi_rdata[17]_i_3_1 ;
  wire cmd_ignored_stb0;
  wire cmd_illegal;
  wire cmd_illegal_stb0;
  wire cmd_received_good;
  wire ignored_c;
  wire illegal_reg_0;
  wire last_cmd_ignored;
  wire last_cmd_valid;
  wire \reg_saved_reg[19][14] ;
  wire \reg_saved_reg[19][16] ;
  wire \reg_saved_reg[19][17] ;
  wire send_no_resp0;
  wire send_resp;
  wire valid_c1_out;
  wire valid_reg_0;
  wire valid_reg_1;

  FDRE acmd_defined_reg
       (.C(S_AXI_ACLK),
        .CE(cmd_received_good),
        .D(acmd_defined_c),
        .Q(acmd_defined_reg_0),
        .R(valid_reg_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\axi_rdata[17]_i_3 [0]),
        .I1(\axi_rdata[17]_i_3_0 [0]),
        .I2(\axi_rdata[14]_i_3 [1]),
        .I3(\axi_rdata[17]_i_3_1 [0]),
        .I4(\axi_rdata[14]_i_3 [0]),
        .I5(acmd_defined_reg_0),
        .O(\reg_saved_reg[19][14] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\axi_rdata[17]_i_3 [1]),
        .I1(\axi_rdata[17]_i_3_0 [1]),
        .I2(\axi_rdata[14]_i_3 [1]),
        .I3(\axi_rdata[17]_i_3_1 [1]),
        .I4(\axi_rdata[14]_i_3 [0]),
        .I5(last_cmd_ignored),
        .O(\reg_saved_reg[19][16] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\axi_rdata[17]_i_3 [2]),
        .I1(\axi_rdata[17]_i_3_0 [2]),
        .I2(\axi_rdata[14]_i_3 [1]),
        .I3(\axi_rdata[17]_i_3_1 [2]),
        .I4(\axi_rdata[14]_i_3 [0]),
        .I5(last_cmd_valid),
        .O(\reg_saved_reg[19][17] ));
  LUT2 #(
    .INIT(4'h8)) 
    cmd_ignored_stb_i_1
       (.I0(Q[1]),
        .I1(last_cmd_ignored),
        .O(cmd_ignored_stb0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_illegal_stb_i_1
       (.I0(cmd_illegal),
        .I1(Q[1]),
        .O(cmd_illegal_stb0));
  FDRE ignored_reg
       (.C(S_AXI_ACLK),
        .CE(cmd_received_good),
        .D(ignored_c),
        .Q(last_cmd_ignored),
        .R(valid_reg_1));
  FDRE illegal_reg
       (.C(S_AXI_ACLK),
        .CE(cmd_received_good),
        .D(illegal_reg_0),
        .Q(cmd_illegal),
        .R(valid_reg_1));
  LUT6 #(
    .INIT(64'h0000000077770777)) 
    \resp_cur[2]_i_4 
       (.I0(last_cmd_valid),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(cmd_received_good),
        .I5(Q[2]),
        .O(valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    send_no_resp_i_1
       (.I0(last_cmd_valid),
        .I1(Q[1]),
        .I2(send_resp),
        .I3(Q[4]),
        .O(send_no_resp0));
  FDRE valid_reg
       (.C(S_AXI_ACLK),
        .CE(cmd_received_good),
        .D(valid_c1_out),
        .Q(last_cmd_valid),
        .R(valid_reg_1));
endmodule

(* ORIG_REF_NAME = "dat_controller" *) 
module adapter_axi_sd_0_0_dat_controller
   (SR,
    empty_reg,
    dat_width_4_reg_0,
    invalid_dat_width,
    \dev_blocks_read_reg[0]_0 ,
    \dev_blocks_read_reg[3]_0 ,
    \dev_blocks_read_reg[7]_0 ,
    \dev_blocks_read_reg[11]_0 ,
    \dev_blocks_read_reg[15]_0 ,
    \dev_blocks_read_reg[19]_0 ,
    \dev_blocks_read_reg[23]_0 ,
    \dev_blocks_read_reg[27]_0 ,
    \dev_blocks_read_reg[31]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    Q,
    \addr_write_reg[9] ,
    CO,
    \FSM_onehot_state_reg[4]_0 ,
    multi_block_mode_reg_0,
    \axi_araddr_reg[2] ,
    axi_arready_reg,
    interrupt,
    ram_reg,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    ram_reg_9,
    ram_reg_10,
    ram_reg_11,
    ram_reg_12,
    ram_reg_13,
    ram_reg_14,
    ram_reg_15,
    ram_reg_16,
    ram_reg_17,
    ram_reg_18,
    ram_reg_19,
    ram_reg_20,
    ram_reg_21,
    ram_reg_22,
    ram_reg_23,
    ram_reg_24,
    ram_reg_25,
    ram_reg_26,
    ram_reg_27,
    ram_reg_28,
    ram_reg_29,
    ram_reg_30,
    \FSM_onehot_state_reg[1]_1 ,
    \addr_write_reg[3] ,
    \FSM_onehot_state_reg[1]_2 ,
    \FSM_onehot_sys_state_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_3 ,
    \FSM_onehot_state_reg[1]_4 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_onehot_state_reg[5]_0 ,
    ram_reg_31,
    ram_reg_32,
    dat_width_4_reg_1,
    dat_width_4_reg_2,
    \block_size_reg[7]_0 ,
    \block_size_reg[12]_0 ,
    \block_size_reg[7]_1 ,
    \FSM_onehot_state_reg[6]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    ram_reg_33,
    ram_reg_34,
    ram_reg_35,
    ram_reg_36,
    ram_reg_37,
    ram_reg_38,
    ram_reg_39,
    ram_reg_40,
    ram_reg_41,
    ram_reg_42,
    ram_reg_43,
    ram_reg_44,
    ram_reg_45,
    ram_reg_46,
    ram_reg_47,
    ram_reg_48,
    ram_reg_49,
    ram_reg_50,
    ram_reg_51,
    ram_reg_52,
    ram_reg_53,
    ram_reg_54,
    ram_reg_55,
    ram_reg_56,
    ram_reg_57,
    ram_reg_58,
    ram_reg_59,
    ram_reg_60,
    ram_reg_61,
    ram_reg_62,
    dat_width_4_reg_3,
    dat_width_4_reg_4,
    dat_width_4_reg_5,
    dat_width_4_reg_6,
    dat_width_4_reg_7,
    dat_width_4_reg_8,
    dat_width_4_reg_9,
    dat_width_4_reg_10,
    dat_width_4_reg_11,
    dat_width_4_reg_12,
    dat_width_4_reg_13,
    dat_width_4_reg_14,
    dat_width_4_reg_15,
    dat_width_4_reg_16,
    \FSM_onehot_state_reg[1]_5 ,
    \block_size_reg[12]_1 ,
    dat_width_4_reg_17,
    S_AXI_ACLK,
    multi_block_mode_next,
    empty_reg_0,
    dat_width_4_reg_18,
    invalid_dat_width_reg_0,
    E,
    S,
    state_next4_carry__1_0,
    state_next4_carry__2_0,
    \FSM_onehot_state[3]_i_7_0 ,
    new_sd_clk,
    \FSM_sequential_state[1]_i_2 ,
    \reg_saved_reg[24][0] ,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    S_AXI_ARVALID,
    cmd_unread,
    interrupt_0,
    cmd_saved_unread,
    interrupt_1,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[0]_2 ,
    \axi_rdata_reg[0]_3 ,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[30]_0 ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[29]_0 ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[26]_0 ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[25]_0 ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[24]_0 ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[22]_0 ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[16]_0 ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[13]_0 ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata[28]_i_3 ,
    \axi_rdata[28]_i_3_0 ,
    \axi_rdata[28]_i_3_1 ,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[5]_1 ,
    \FSM_onehot_sys_state_reg[0]_0 ,
    \FSM_onehot_sys_state_reg[0]_1 ,
    dat_wrote_new_word,
    O,
    \block_data_finished0_inferred__0/i__carry ,
    \card_status[11]_i_4 ,
    \dev_last_block_reg[7]_0 ,
    \FSM_onehot_sys_state_reg[0]_2 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_sys_state[2]_i_4 ,
    \FSM_onehot_state_reg[5]_2 ,
    \FSM_onehot_state[0]_i_3_0 ,
    \FSM_onehot_sys_state[2]_i_4_0 ,
    no_more_write_data,
    \FSM_onehot_state[2]_i_2_0 ,
    block_limit_used,
    \FSM_onehot_state[2]_i_2_1 ,
    dat_got_block,
    data_write_en,
    dat_got_word,
    state_next4_carry__2_1,
    ram_reg_63,
    ram_reg_64,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    block_data_finished0_carry__0,
    \block_size_reg[12]_2 ,
    \FSM_onehot_sys_state_reg[0]_3 );
  output [0:0]SR;
  output empty_reg;
  output dat_width_4_reg_0;
  output invalid_dat_width;
  output \dev_blocks_read_reg[0]_0 ;
  output [2:0]\dev_blocks_read_reg[3]_0 ;
  output [3:0]\dev_blocks_read_reg[7]_0 ;
  output [3:0]\dev_blocks_read_reg[11]_0 ;
  output [3:0]\dev_blocks_read_reg[15]_0 ;
  output [3:0]\dev_blocks_read_reg[19]_0 ;
  output [3:0]\dev_blocks_read_reg[23]_0 ;
  output [3:0]\dev_blocks_read_reg[27]_0 ;
  output [3:0]\dev_blocks_read_reg[31]_0 ;
  output \FSM_onehot_state_reg[1]_0 ;
  output [6:0]Q;
  output \addr_write_reg[9] ;
  output [0:0]CO;
  output \FSM_onehot_state_reg[4]_0 ;
  output multi_block_mode_reg_0;
  output \axi_araddr_reg[2] ;
  output [0:0]axi_arready_reg;
  output interrupt;
  output ram_reg;
  output ram_reg_0;
  output ram_reg_1;
  output ram_reg_2;
  output ram_reg_3;
  output ram_reg_4;
  output ram_reg_5;
  output ram_reg_6;
  output ram_reg_7;
  output ram_reg_8;
  output ram_reg_9;
  output ram_reg_10;
  output ram_reg_11;
  output ram_reg_12;
  output ram_reg_13;
  output ram_reg_14;
  output ram_reg_15;
  output ram_reg_16;
  output ram_reg_17;
  output ram_reg_18;
  output ram_reg_19;
  output ram_reg_20;
  output ram_reg_21;
  output ram_reg_22;
  output ram_reg_23;
  output ram_reg_24;
  output ram_reg_25;
  output ram_reg_26;
  output ram_reg_27;
  output ram_reg_28;
  output ram_reg_29;
  output ram_reg_30;
  output \FSM_onehot_state_reg[1]_1 ;
  output \addr_write_reg[3] ;
  output \FSM_onehot_state_reg[1]_2 ;
  output \FSM_onehot_sys_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[1]_3 ;
  output \FSM_onehot_state_reg[1]_4 ;
  output \FSM_onehot_state_reg[4]_1 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[4]_2 ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_onehot_state_reg[5]_0 ;
  output ram_reg_31;
  output ram_reg_32;
  output dat_width_4_reg_1;
  output dat_width_4_reg_2;
  output [0:0]\block_size_reg[7]_0 ;
  output [4:0]\block_size_reg[12]_0 ;
  output [0:0]\block_size_reg[7]_1 ;
  output \FSM_onehot_state_reg[6]_0 ;
  output \FSM_onehot_state_reg[2]_1 ;
  output ram_reg_33;
  output ram_reg_34;
  output ram_reg_35;
  output ram_reg_36;
  output ram_reg_37;
  output ram_reg_38;
  output ram_reg_39;
  output ram_reg_40;
  output ram_reg_41;
  output ram_reg_42;
  output ram_reg_43;
  output ram_reg_44;
  output ram_reg_45;
  output ram_reg_46;
  output ram_reg_47;
  output ram_reg_48;
  output ram_reg_49;
  output ram_reg_50;
  output ram_reg_51;
  output ram_reg_52;
  output ram_reg_53;
  output ram_reg_54;
  output ram_reg_55;
  output ram_reg_56;
  output ram_reg_57;
  output ram_reg_58;
  output ram_reg_59;
  output ram_reg_60;
  output ram_reg_61;
  output ram_reg_62;
  output dat_width_4_reg_3;
  output dat_width_4_reg_4;
  output dat_width_4_reg_5;
  output dat_width_4_reg_6;
  output dat_width_4_reg_7;
  output dat_width_4_reg_8;
  output dat_width_4_reg_9;
  output dat_width_4_reg_10;
  output dat_width_4_reg_11;
  output dat_width_4_reg_12;
  output dat_width_4_reg_13;
  output dat_width_4_reg_14;
  output dat_width_4_reg_15;
  output dat_width_4_reg_16;
  output [0:0]\FSM_onehot_state_reg[1]_5 ;
  output [0:0]\block_size_reg[12]_1 ;
  input dat_width_4_reg_17;
  input S_AXI_ACLK;
  input multi_block_mode_next;
  input empty_reg_0;
  input dat_width_4_reg_18;
  input invalid_dat_width_reg_0;
  input [0:0]E;
  input [3:0]S;
  input [3:0]state_next4_carry__1_0;
  input [3:0]state_next4_carry__2_0;
  input [3:0]\FSM_onehot_state[3]_i_7_0 ;
  input new_sd_clk;
  input [2:0]\FSM_sequential_state[1]_i_2 ;
  input [4:0]\reg_saved_reg[24][0] ;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_ARVALID;
  input cmd_unread;
  input [3:0]interrupt_0;
  input cmd_saved_unread;
  input interrupt_1;
  input [31:0]\axi_rdata_reg[31] ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[0]_2 ;
  input \axi_rdata_reg[0]_3 ;
  input \axi_rdata_reg[31]_0 ;
  input \axi_rdata_reg[31]_1 ;
  input \axi_rdata_reg[30] ;
  input \axi_rdata_reg[30]_0 ;
  input \axi_rdata_reg[29] ;
  input \axi_rdata_reg[29]_0 ;
  input \axi_rdata_reg[28] ;
  input \axi_rdata_reg[27] ;
  input \axi_rdata_reg[26] ;
  input \axi_rdata_reg[26]_0 ;
  input \axi_rdata_reg[25] ;
  input \axi_rdata_reg[25]_0 ;
  input \axi_rdata_reg[24] ;
  input \axi_rdata_reg[24]_0 ;
  input \axi_rdata_reg[23] ;
  input \axi_rdata_reg[23]_0 ;
  input \axi_rdata_reg[22] ;
  input \axi_rdata_reg[22]_0 ;
  input \axi_rdata_reg[21] ;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[19] ;
  input \axi_rdata_reg[19]_0 ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[16] ;
  input \axi_rdata_reg[16]_0 ;
  input \axi_rdata_reg[15] ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[13]_0 ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[1]_0 ;
  input [1:0]\axi_rdata[28]_i_3 ;
  input [1:0]\axi_rdata[28]_i_3_0 ;
  input [1:0]\axi_rdata[28]_i_3_1 ;
  input [2:0]D;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input \FSM_onehot_state_reg[5]_1 ;
  input \FSM_onehot_sys_state_reg[0]_0 ;
  input \FSM_onehot_sys_state_reg[0]_1 ;
  input dat_wrote_new_word;
  input [2:0]O;
  input [0:0]\block_data_finished0_inferred__0/i__carry ;
  input [2:0]\card_status[11]_i_4 ;
  input \dev_last_block_reg[7]_0 ;
  input \FSM_onehot_sys_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[2]_2 ;
  input \FSM_onehot_sys_state[2]_i_4 ;
  input \FSM_onehot_state_reg[5]_2 ;
  input \FSM_onehot_state[0]_i_3_0 ;
  input \FSM_onehot_sys_state[2]_i_4_0 ;
  input no_more_write_data;
  input \FSM_onehot_state[2]_i_2_0 ;
  input block_limit_used;
  input \FSM_onehot_state[2]_i_2_1 ;
  input dat_got_block;
  input data_write_en;
  input dat_got_word;
  input [31:0]state_next4_carry__2_1;
  input [31:0]ram_reg_63;
  input [31:0]ram_reg_64;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[1]_1 ;
  input [0:0]block_data_finished0_carry__0;
  input [4:0]\block_size_reg[12]_2 ;
  input \FSM_onehot_sys_state_reg[0]_3 ;

  wire \/i__n_0 ;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_3_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_2_0 ;
  wire \FSM_onehot_state[2]_i_2_1 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_10_n_0 ;
  wire \FSM_onehot_state[3]_i_11_n_0 ;
  wire \FSM_onehot_state[3]_i_13_n_0 ;
  wire \FSM_onehot_state[3]_i_14_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  wire [3:0]\FSM_onehot_state[3]_i_7_0 ;
  wire \FSM_onehot_state[3]_i_7_n_0 ;
  wire \FSM_onehot_state[3]_i_8_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire \FSM_onehot_state_reg[1]_3 ;
  wire \FSM_onehot_state_reg[1]_4 ;
  wire [0:0]\FSM_onehot_state_reg[1]_5 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[5]_1 ;
  wire \FSM_onehot_state_reg[5]_2 ;
  wire \FSM_onehot_state_reg[6]_0 ;
  wire \FSM_onehot_sys_state[1]_i_2_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_10_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_2_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_3_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_4 ;
  wire \FSM_onehot_sys_state[2]_i_4_0 ;
  wire \FSM_onehot_sys_state[2]_i_5_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_8_n_0 ;
  wire \FSM_onehot_sys_state_reg[0]_0 ;
  wire \FSM_onehot_sys_state_reg[0]_1 ;
  wire \FSM_onehot_sys_state_reg[0]_2 ;
  wire \FSM_onehot_sys_state_reg[0]_3 ;
  wire \FSM_onehot_sys_state_reg[2]_0 ;
  wire [2:0]\FSM_sequential_state[1]_i_2 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [2:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARVALID;
  wire \addr_write_reg[3] ;
  wire \addr_write_reg[9] ;
  wire \axi_araddr_reg[2] ;
  wire [0:0]axi_arready_reg;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire [1:0]\axi_rdata[28]_i_3 ;
  wire [1:0]\axi_rdata[28]_i_3_0 ;
  wire [1:0]\axi_rdata[28]_i_3_1 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire \axi_rdata_reg[0]_3 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[16]_0 ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[22]_0 ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[24]_0 ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[25]_0 ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[30] ;
  wire \axi_rdata_reg[30]_0 ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_1 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[9] ;
  wire \axi_rdata_reg[9]_0 ;
  wire [0:0]block_data_finished0_carry__0;
  wire [0:0]\block_data_finished0_inferred__0/i__carry ;
  wire block_limit_used;
  wire block_size0;
  wire [4:0]\block_size_reg[12]_0 ;
  wire [0:0]\block_size_reg[12]_1 ;
  wire [4:0]\block_size_reg[12]_2 ;
  wire [0:0]\block_size_reg[7]_0 ;
  wire [0:0]\block_size_reg[7]_1 ;
  wire [2:0]\card_status[11]_i_4 ;
  wire cmd_saved_unread;
  wire cmd_unread;
  wire dat_got_block;
  wire dat_got_word;
  wire dat_width_4_reg_0;
  wire dat_width_4_reg_1;
  wire dat_width_4_reg_10;
  wire dat_width_4_reg_11;
  wire dat_width_4_reg_12;
  wire dat_width_4_reg_13;
  wire dat_width_4_reg_14;
  wire dat_width_4_reg_15;
  wire dat_width_4_reg_16;
  wire dat_width_4_reg_17;
  wire dat_width_4_reg_18;
  wire dat_width_4_reg_2;
  wire dat_width_4_reg_3;
  wire dat_width_4_reg_4;
  wire dat_width_4_reg_5;
  wire dat_width_4_reg_6;
  wire dat_width_4_reg_7;
  wire dat_width_4_reg_8;
  wire dat_width_4_reg_9;
  wire dat_wrote_new_word;
  wire data_write_en;
  wire \dev_blocks_read[0]_i_2_n_0 ;
  wire \dev_blocks_read_reg[0]_0 ;
  wire \dev_blocks_read_reg[0]_i_1_n_0 ;
  wire \dev_blocks_read_reg[0]_i_1_n_1 ;
  wire \dev_blocks_read_reg[0]_i_1_n_2 ;
  wire \dev_blocks_read_reg[0]_i_1_n_3 ;
  wire \dev_blocks_read_reg[0]_i_1_n_4 ;
  wire \dev_blocks_read_reg[0]_i_1_n_5 ;
  wire \dev_blocks_read_reg[0]_i_1_n_6 ;
  wire \dev_blocks_read_reg[0]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[11]_0 ;
  wire \dev_blocks_read_reg[12]_i_1_n_0 ;
  wire \dev_blocks_read_reg[12]_i_1_n_1 ;
  wire \dev_blocks_read_reg[12]_i_1_n_2 ;
  wire \dev_blocks_read_reg[12]_i_1_n_3 ;
  wire \dev_blocks_read_reg[12]_i_1_n_4 ;
  wire \dev_blocks_read_reg[12]_i_1_n_5 ;
  wire \dev_blocks_read_reg[12]_i_1_n_6 ;
  wire \dev_blocks_read_reg[12]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[15]_0 ;
  wire \dev_blocks_read_reg[16]_i_1_n_0 ;
  wire \dev_blocks_read_reg[16]_i_1_n_1 ;
  wire \dev_blocks_read_reg[16]_i_1_n_2 ;
  wire \dev_blocks_read_reg[16]_i_1_n_3 ;
  wire \dev_blocks_read_reg[16]_i_1_n_4 ;
  wire \dev_blocks_read_reg[16]_i_1_n_5 ;
  wire \dev_blocks_read_reg[16]_i_1_n_6 ;
  wire \dev_blocks_read_reg[16]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[19]_0 ;
  wire \dev_blocks_read_reg[20]_i_1_n_0 ;
  wire \dev_blocks_read_reg[20]_i_1_n_1 ;
  wire \dev_blocks_read_reg[20]_i_1_n_2 ;
  wire \dev_blocks_read_reg[20]_i_1_n_3 ;
  wire \dev_blocks_read_reg[20]_i_1_n_4 ;
  wire \dev_blocks_read_reg[20]_i_1_n_5 ;
  wire \dev_blocks_read_reg[20]_i_1_n_6 ;
  wire \dev_blocks_read_reg[20]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[23]_0 ;
  wire \dev_blocks_read_reg[24]_i_1_n_0 ;
  wire \dev_blocks_read_reg[24]_i_1_n_1 ;
  wire \dev_blocks_read_reg[24]_i_1_n_2 ;
  wire \dev_blocks_read_reg[24]_i_1_n_3 ;
  wire \dev_blocks_read_reg[24]_i_1_n_4 ;
  wire \dev_blocks_read_reg[24]_i_1_n_5 ;
  wire \dev_blocks_read_reg[24]_i_1_n_6 ;
  wire \dev_blocks_read_reg[24]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[27]_0 ;
  wire \dev_blocks_read_reg[28]_i_1_n_1 ;
  wire \dev_blocks_read_reg[28]_i_1_n_2 ;
  wire \dev_blocks_read_reg[28]_i_1_n_3 ;
  wire \dev_blocks_read_reg[28]_i_1_n_4 ;
  wire \dev_blocks_read_reg[28]_i_1_n_5 ;
  wire \dev_blocks_read_reg[28]_i_1_n_6 ;
  wire \dev_blocks_read_reg[28]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[31]_0 ;
  wire [2:0]\dev_blocks_read_reg[3]_0 ;
  wire \dev_blocks_read_reg[4]_i_1_n_0 ;
  wire \dev_blocks_read_reg[4]_i_1_n_1 ;
  wire \dev_blocks_read_reg[4]_i_1_n_2 ;
  wire \dev_blocks_read_reg[4]_i_1_n_3 ;
  wire \dev_blocks_read_reg[4]_i_1_n_4 ;
  wire \dev_blocks_read_reg[4]_i_1_n_5 ;
  wire \dev_blocks_read_reg[4]_i_1_n_6 ;
  wire \dev_blocks_read_reg[4]_i_1_n_7 ;
  wire [3:0]\dev_blocks_read_reg[7]_0 ;
  wire \dev_blocks_read_reg[8]_i_1_n_0 ;
  wire \dev_blocks_read_reg[8]_i_1_n_1 ;
  wire \dev_blocks_read_reg[8]_i_1_n_2 ;
  wire \dev_blocks_read_reg[8]_i_1_n_3 ;
  wire \dev_blocks_read_reg[8]_i_1_n_4 ;
  wire \dev_blocks_read_reg[8]_i_1_n_5 ;
  wire \dev_blocks_read_reg[8]_i_1_n_6 ;
  wire \dev_blocks_read_reg[8]_i_1_n_7 ;
  wire [9:7]dev_last_block;
  wire \dev_last_block[9]_i_4_n_0 ;
  wire \dev_last_block[9]_i_6_n_0 ;
  wire \dev_last_block_reg[7]_0 ;
  wire empty_reg;
  wire empty_reg_0;
  wire fifo_n_120;
  wire fifo_n_121;
  wire fifo_n_122;
  wire fifo_n_18;
  wire fifo_n_19;
  wire fifo_n_20;
  wire fifo_n_21;
  wire fifo_n_22;
  wire fifo_n_23;
  wire fifo_n_24;
  wire fifo_n_25;
  wire fifo_n_6;
  wire fifo_n_63;
  wire fifo_n_7;
  wire [9:0]fifo_wraddr;
  wire interrupt;
  wire [3:0]interrupt_0;
  wire interrupt_1;
  wire interrupt_INST_0_i_1_n_0;
  wire invalid_dat_width;
  wire invalid_dat_width_reg_0;
  wire may_read_data;
  wire may_write_data;
  wire multi_block_mode;
  wire multi_block_mode_next;
  wire multi_block_mode_reg_0;
  wire new_sd_clk;
  wire no_more_write_data;
  wire ram_reg;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_10;
  wire ram_reg_11;
  wire ram_reg_12;
  wire ram_reg_13;
  wire ram_reg_14;
  wire ram_reg_15;
  wire ram_reg_16;
  wire ram_reg_17;
  wire ram_reg_18;
  wire ram_reg_19;
  wire ram_reg_2;
  wire ram_reg_20;
  wire ram_reg_21;
  wire ram_reg_22;
  wire ram_reg_23;
  wire ram_reg_24;
  wire ram_reg_25;
  wire ram_reg_26;
  wire ram_reg_27;
  wire ram_reg_28;
  wire ram_reg_29;
  wire ram_reg_3;
  wire ram_reg_30;
  wire ram_reg_31;
  wire ram_reg_32;
  wire ram_reg_33;
  wire ram_reg_34;
  wire ram_reg_35;
  wire ram_reg_36;
  wire ram_reg_37;
  wire ram_reg_38;
  wire ram_reg_39;
  wire ram_reg_4;
  wire ram_reg_40;
  wire ram_reg_41;
  wire ram_reg_42;
  wire ram_reg_43;
  wire ram_reg_44;
  wire ram_reg_45;
  wire ram_reg_46;
  wire ram_reg_47;
  wire ram_reg_48;
  wire ram_reg_49;
  wire ram_reg_5;
  wire ram_reg_50;
  wire ram_reg_51;
  wire ram_reg_52;
  wire ram_reg_53;
  wire ram_reg_54;
  wire ram_reg_55;
  wire ram_reg_56;
  wire ram_reg_57;
  wire ram_reg_58;
  wire ram_reg_59;
  wire ram_reg_6;
  wire ram_reg_60;
  wire ram_reg_61;
  wire ram_reg_62;
  wire [31:0]ram_reg_63;
  wire [31:0]ram_reg_64;
  wire ram_reg_7;
  wire ram_reg_8;
  wire ram_reg_9;
  wire [4:0]\reg_saved_reg[24][0] ;
  wire state_next4;
  wire state_next4_carry__0_i_1_n_0;
  wire state_next4_carry__0_i_2_n_0;
  wire state_next4_carry__0_i_3_n_0;
  wire state_next4_carry__0_i_4_n_0;
  wire state_next4_carry__0_n_0;
  wire state_next4_carry__0_n_1;
  wire state_next4_carry__0_n_2;
  wire state_next4_carry__0_n_3;
  wire [3:0]state_next4_carry__1_0;
  wire state_next4_carry__1_i_1_n_0;
  wire state_next4_carry__1_i_2_n_0;
  wire state_next4_carry__1_i_3_n_0;
  wire state_next4_carry__1_i_4_n_0;
  wire state_next4_carry__1_n_0;
  wire state_next4_carry__1_n_1;
  wire state_next4_carry__1_n_2;
  wire state_next4_carry__1_n_3;
  wire [3:0]state_next4_carry__2_0;
  wire [31:0]state_next4_carry__2_1;
  wire state_next4_carry__2_i_1_n_0;
  wire state_next4_carry__2_i_2_n_0;
  wire state_next4_carry__2_i_3_n_0;
  wire state_next4_carry__2_i_4_n_0;
  wire state_next4_carry__2_n_1;
  wire state_next4_carry__2_n_2;
  wire state_next4_carry__2_n_3;
  wire state_next4_carry_i_1_n_0;
  wire state_next4_carry_i_2_n_0;
  wire state_next4_carry_i_3_n_0;
  wire state_next4_carry_i_4_n_0;
  wire state_next4_carry_n_0;
  wire state_next4_carry_n_1;
  wire state_next4_carry_n_2;
  wire state_next4_carry_n_3;
  wire [5:0]state_next__0;
  wire sys_may_read_next;
  wire sys_may_write_next;
  wire [1:0]sys_state;
  wire write_ok2_carry__0_n_0;
  wire write_ok2_carry__0_n_1;
  wire write_ok2_carry__0_n_2;
  wire write_ok2_carry__0_n_3;
  wire write_ok2_carry__0_n_4;
  wire write_ok2_carry__0_n_5;
  wire write_ok2_carry__0_n_6;
  wire write_ok2_carry__0_n_7;
  wire write_ok2_carry__1_n_1;
  wire write_ok2_carry__1_n_3;
  wire write_ok2_carry__1_n_6;
  wire write_ok2_carry__1_n_7;
  wire write_ok2_carry_n_0;
  wire write_ok2_carry_n_1;
  wire write_ok2_carry_n_2;
  wire write_ok2_carry_n_3;
  wire write_ok2_carry_n_4;
  wire write_ok2_carry_n_5;
  wire write_ok2_carry_n_6;
  wire write_ok2_carry_n_7;
  wire [3:3]\NLW_dev_blocks_read_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_state_next4_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_next4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state_next4_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state_next4_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_write_ok2_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_write_ok2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \/i_ 
       (.I0(\axi_araddr_reg[2] ),
        .I1(sys_state[0]),
        .I2(\FSM_onehot_sys_state_reg[0]_3 ),
        .I3(sys_state[1]),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(\FSM_onehot_state[0]_i_5_n_0 ),
        .I2(\FSM_onehot_state_reg[5]_1 ),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFCCCC88888888)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(\FSM_onehot_state[0]_i_3_0 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_sys_state_reg[2]_0 ),
        .I3(no_more_write_data),
        .I4(Q[4]),
        .I5(Q[0]),
        .O(\FSM_onehot_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFF0D0000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[3]_i_5_n_0 ),
        .I1(\FSM_onehot_state[3]_i_6_n_0 ),
        .I2(multi_block_mode),
        .I3(\FSM_onehot_state[3]_i_7_n_0 ),
        .I4(Q[1]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_10 
       (.I0(\dev_blocks_read_reg[31]_0 [0]),
        .I1(\dev_blocks_read_reg[27]_0 [3]),
        .I2(\dev_blocks_read_reg[27]_0 [2]),
        .I3(\dev_blocks_read_reg[27]_0 [1]),
        .O(\FSM_onehot_state[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[3]_i_11 
       (.I0(\dev_blocks_read_reg[23]_0 [1]),
        .I1(\dev_blocks_read_reg[27]_0 [0]),
        .I2(\dev_blocks_read_reg[23]_0 [2]),
        .I3(\dev_blocks_read_reg[23]_0 [3]),
        .I4(\FSM_onehot_state[3]_i_14_n_0 ),
        .O(\FSM_onehot_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_13 
       (.I0(\dev_blocks_read_reg[3]_0 [2]),
        .I1(\dev_blocks_read_reg[3]_0 [1]),
        .I2(\dev_blocks_read_reg[7]_0 [0]),
        .I3(\dev_blocks_read_reg[3]_0 [0]),
        .O(\FSM_onehot_state[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_14 
       (.I0(\dev_blocks_read_reg[23]_0 [0]),
        .I1(\dev_blocks_read_reg[19]_0 [3]),
        .I2(\dev_blocks_read_reg[19]_0 [2]),
        .I3(\dev_blocks_read_reg[19]_0 [1]),
        .O(\FSM_onehot_state[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00F20000)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\FSM_onehot_state[3]_i_5_n_0 ),
        .I1(\FSM_onehot_state[3]_i_6_n_0 ),
        .I2(multi_block_mode),
        .I3(\FSM_onehot_state[3]_i_7_n_0 ),
        .I4(Q[1]),
        .O(multi_block_mode_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\FSM_onehot_state[3]_i_8_n_0 ),
        .I1(\dev_blocks_read_reg[15]_0 [2]),
        .I2(\dev_blocks_read_reg[15]_0 [1]),
        .I3(\dev_blocks_read_reg[19]_0 [0]),
        .I4(\dev_blocks_read_reg[15]_0 [3]),
        .I5(\FSM_onehot_state[3]_i_9_n_0 ),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(\FSM_onehot_state[3]_i_10_n_0 ),
        .I1(\dev_blocks_read_reg[31]_0 [2]),
        .I2(\dev_blocks_read_reg[31]_0 [1]),
        .I3(\dev_blocks_read_reg[31]_0 [3]),
        .I4(\dev_blocks_read_reg[0]_0 ),
        .I5(\FSM_onehot_state[3]_i_11_n_0 ),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD555D555D555)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(\FSM_onehot_state[2]_i_2_0 ),
        .I1(block_limit_used),
        .I2(multi_block_mode),
        .I3(state_next4),
        .I4(\FSM_onehot_state[2]_i_2_1 ),
        .I5(dat_got_block),
        .O(\FSM_onehot_state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(\dev_blocks_read_reg[15]_0 [0]),
        .I1(\dev_blocks_read_reg[11]_0 [3]),
        .I2(\dev_blocks_read_reg[11]_0 [2]),
        .I3(\dev_blocks_read_reg[11]_0 [1]),
        .O(\FSM_onehot_state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(\dev_blocks_read_reg[7]_0 [1]),
        .I1(\dev_blocks_read_reg[11]_0 [0]),
        .I2(\dev_blocks_read_reg[7]_0 [2]),
        .I3(\dev_blocks_read_reg[7]_0 [3]),
        .I4(\FSM_onehot_state[3]_i_13_n_0 ),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_2 ),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(Q[6]),
        .I3(\FSM_onehot_state_reg[5]_1 ),
        .I4(Q[5]),
        .I5(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(state_next__0[5]));
  LUT6 #(
    .INIT(64'hFFF0F0F088000000)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\FSM_onehot_sys_state_reg[2]_0 ),
        .I1(no_more_write_data),
        .I2(\FSM_onehot_sys_state_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[5]_1 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[0]),
        .Q(Q[0]),
        .S(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[1]),
        .R(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[2]),
        .Q(Q[2]),
        .R(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[3]),
        .Q(Q[3]),
        .R(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[4]),
        .R(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[5]),
        .Q(Q[5]),
        .R(dat_width_4_reg_17));
  (* FSM_ENCODED_STATES = "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[6]),
        .R(dat_width_4_reg_17));
  LUT4 #(
    .INIT(16'hCF88)) 
    \FSM_onehot_sys_state[1]_i_2 
       (.I0(\axi_araddr_reg[2] ),
        .I1(sys_state[0]),
        .I2(\FSM_onehot_sys_state_reg[0]_3 ),
        .I3(sys_state[1]),
        .O(\FSM_onehot_sys_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F553555)) 
    \FSM_onehot_sys_state[2]_i_10 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(\card_status[11]_i_4 [0]),
        .I3(\card_status[11]_i_4 [2]),
        .I4(\card_status[11]_i_4 [1]),
        .I5(Q[1]),
        .O(\FSM_onehot_sys_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFF77F800)) 
    \FSM_onehot_sys_state[2]_i_2 
       (.I0(\axi_araddr_reg[2] ),
        .I1(sys_state[0]),
        .I2(\FSM_onehot_sys_state_reg[0]_3 ),
        .I3(sys_state[1]),
        .I4(\FSM_onehot_sys_state_reg[2]_0 ),
        .O(\FSM_onehot_sys_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBF300FBFBF3F3)) 
    \FSM_onehot_sys_state[2]_i_3 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4]_2 ),
        .I2(Q[6]),
        .I3(\FSM_onehot_sys_state_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg[5]_1 ),
        .I5(\FSM_onehot_sys_state_reg[0]_1 ),
        .O(\FSM_onehot_sys_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111100000001)) 
    \FSM_onehot_sys_state[2]_i_5 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_sys_state_reg[0]_2 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(\FSM_onehot_sys_state[2]_i_10_n_0 ),
        .O(\FSM_onehot_sys_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \FSM_onehot_sys_state[2]_i_8 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state_reg[5]_1 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\FSM_onehot_sys_state[2]_i_4 ),
        .O(\FSM_onehot_sys_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_sys_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(fifo_n_120),
        .Q(sys_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sys_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(fifo_n_121),
        .Q(sys_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sys_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(fifo_n_122),
        .Q(\FSM_onehot_sys_state_reg[2]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .O(\FSM_onehot_state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\FSM_sequential_state_reg[1]_1 ),
        .O(\FSM_onehot_state_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(dat_width_4_reg_17),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\FSM_onehot_state_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\FSM_onehot_state_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\axi_rdata[28]_i_3 [0]),
        .I1(\axi_rdata[28]_i_3_0 [0]),
        .I2(\reg_saved_reg[24][0] [1]),
        .I3(\axi_rdata[28]_i_3_1 [0]),
        .I4(\reg_saved_reg[24][0] [0]),
        .I5(may_write_data),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\axi_rdata[28]_i_3 [1]),
        .I1(\axi_rdata[28]_i_3_0 [1]),
        .I2(\reg_saved_reg[24][0] [1]),
        .I3(\axi_rdata[28]_i_3_1 [1]),
        .I4(\reg_saved_reg[24][0] [0]),
        .I5(may_read_data),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(S_AXI_ARVALID),
        .O(axi_arready_reg));
  LUT2 #(
    .INIT(4'h9)) 
    block_data_finished0_carry__0_i_4
       (.I0(\block_size_reg[12]_0 [4]),
        .I1(block_data_finished0_carry__0),
        .O(\block_size_reg[12]_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    block_data_finished0_carry_i_5
       (.I0(\block_size_reg[12]_0 [2]),
        .I1(O[2]),
        .I2(\block_size_reg[12]_0 [1]),
        .I3(O[1]),
        .O(\block_size_reg[7]_0 ));
  FDSE \block_size_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(\block_size_reg[12]_2 [4]),
        .Q(\block_size_reg[12]_0 [4]),
        .S(dat_width_4_reg_17));
  FDRE \block_size_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(\block_size_reg[12]_2 [0]),
        .Q(\block_size_reg[12]_0 [0]),
        .R(dat_width_4_reg_17));
  FDRE \block_size_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(\block_size_reg[12]_2 [1]),
        .Q(\block_size_reg[12]_0 [1]),
        .R(dat_width_4_reg_17));
  FDRE \block_size_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(\block_size_reg[12]_2 [2]),
        .Q(\block_size_reg[12]_0 [2]),
        .R(dat_width_4_reg_17));
  FDRE \block_size_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(\block_size_reg[12]_2 [3]),
        .Q(\block_size_reg[12]_0 [3]),
        .R(dat_width_4_reg_17));
  LUT6 #(
    .INIT(64'h0F0355FFFFFFFFFF)) 
    \card_status[11]_i_5 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\card_status[11]_i_4 [0]),
        .I4(\card_status[11]_i_4 [1]),
        .I5(\card_status[11]_i_4 [2]),
        .O(\FSM_onehot_state_reg[6]_0 ));
  FDRE dat_width_4_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(dat_width_4_reg_18),
        .Q(dat_width_4_reg_0),
        .R(dat_width_4_reg_17));
  LUT1 #(
    .INIT(2'h1)) 
    \dev_blocks_read[0]_i_2 
       (.I0(\dev_blocks_read_reg[0]_0 ),
        .O(\dev_blocks_read[0]_i_2_n_0 ));
  FDRE \dev_blocks_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[0]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[0]_0 ),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\dev_blocks_read_reg[0]_i_1_n_0 ,\dev_blocks_read_reg[0]_i_1_n_1 ,\dev_blocks_read_reg[0]_i_1_n_2 ,\dev_blocks_read_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\dev_blocks_read_reg[0]_i_1_n_4 ,\dev_blocks_read_reg[0]_i_1_n_5 ,\dev_blocks_read_reg[0]_i_1_n_6 ,\dev_blocks_read_reg[0]_i_1_n_7 }),
        .S({\dev_blocks_read_reg[3]_0 ,\dev_blocks_read[0]_i_2_n_0 }));
  FDRE \dev_blocks_read_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[8]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[11]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[8]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[11]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[12]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[15]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[12]_i_1 
       (.CI(\dev_blocks_read_reg[8]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[12]_i_1_n_0 ,\dev_blocks_read_reg[12]_i_1_n_1 ,\dev_blocks_read_reg[12]_i_1_n_2 ,\dev_blocks_read_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[12]_i_1_n_4 ,\dev_blocks_read_reg[12]_i_1_n_5 ,\dev_blocks_read_reg[12]_i_1_n_6 ,\dev_blocks_read_reg[12]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[15]_0 ));
  FDRE \dev_blocks_read_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[12]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[15]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[12]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[15]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[12]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[15]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[16]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[19]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[16]_i_1 
       (.CI(\dev_blocks_read_reg[12]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[16]_i_1_n_0 ,\dev_blocks_read_reg[16]_i_1_n_1 ,\dev_blocks_read_reg[16]_i_1_n_2 ,\dev_blocks_read_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[16]_i_1_n_4 ,\dev_blocks_read_reg[16]_i_1_n_5 ,\dev_blocks_read_reg[16]_i_1_n_6 ,\dev_blocks_read_reg[16]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[19]_0 ));
  FDRE \dev_blocks_read_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[16]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[19]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[16]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[19]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[16]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[19]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[0]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[3]_0 [0]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[20]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[23]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[20]_i_1 
       (.CI(\dev_blocks_read_reg[16]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[20]_i_1_n_0 ,\dev_blocks_read_reg[20]_i_1_n_1 ,\dev_blocks_read_reg[20]_i_1_n_2 ,\dev_blocks_read_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[20]_i_1_n_4 ,\dev_blocks_read_reg[20]_i_1_n_5 ,\dev_blocks_read_reg[20]_i_1_n_6 ,\dev_blocks_read_reg[20]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[23]_0 ));
  FDRE \dev_blocks_read_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[20]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[23]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[20]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[23]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[20]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[23]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[24]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[27]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[24]_i_1 
       (.CI(\dev_blocks_read_reg[20]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[24]_i_1_n_0 ,\dev_blocks_read_reg[24]_i_1_n_1 ,\dev_blocks_read_reg[24]_i_1_n_2 ,\dev_blocks_read_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[24]_i_1_n_4 ,\dev_blocks_read_reg[24]_i_1_n_5 ,\dev_blocks_read_reg[24]_i_1_n_6 ,\dev_blocks_read_reg[24]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[27]_0 ));
  FDRE \dev_blocks_read_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[24]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[27]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[24]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[27]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[24]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[27]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[28]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[31]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[28]_i_1 
       (.CI(\dev_blocks_read_reg[24]_i_1_n_0 ),
        .CO({\NLW_dev_blocks_read_reg[28]_i_1_CO_UNCONNECTED [3],\dev_blocks_read_reg[28]_i_1_n_1 ,\dev_blocks_read_reg[28]_i_1_n_2 ,\dev_blocks_read_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[28]_i_1_n_4 ,\dev_blocks_read_reg[28]_i_1_n_5 ,\dev_blocks_read_reg[28]_i_1_n_6 ,\dev_blocks_read_reg[28]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[31]_0 ));
  FDRE \dev_blocks_read_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[28]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[31]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[0]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[3]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[28]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[31]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[28]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[31]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[0]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[3]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[4]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[7]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[4]_i_1 
       (.CI(\dev_blocks_read_reg[0]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[4]_i_1_n_0 ,\dev_blocks_read_reg[4]_i_1_n_1 ,\dev_blocks_read_reg[4]_i_1_n_2 ,\dev_blocks_read_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[4]_i_1_n_4 ,\dev_blocks_read_reg[4]_i_1_n_5 ,\dev_blocks_read_reg[4]_i_1_n_6 ,\dev_blocks_read_reg[4]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[7]_0 ));
  FDRE \dev_blocks_read_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[4]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[7]_0 [1]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[4]_i_1_n_5 ),
        .Q(\dev_blocks_read_reg[7]_0 [2]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[4]_i_1_n_4 ),
        .Q(\dev_blocks_read_reg[7]_0 [3]),
        .R(fifo_n_63));
  FDRE \dev_blocks_read_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[8]_i_1_n_7 ),
        .Q(\dev_blocks_read_reg[11]_0 [0]),
        .R(fifo_n_63));
  CARRY4 \dev_blocks_read_reg[8]_i_1 
       (.CI(\dev_blocks_read_reg[4]_i_1_n_0 ),
        .CO({\dev_blocks_read_reg[8]_i_1_n_0 ,\dev_blocks_read_reg[8]_i_1_n_1 ,\dev_blocks_read_reg[8]_i_1_n_2 ,\dev_blocks_read_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dev_blocks_read_reg[8]_i_1_n_4 ,\dev_blocks_read_reg[8]_i_1_n_5 ,\dev_blocks_read_reg[8]_i_1_n_6 ,\dev_blocks_read_reg[8]_i_1_n_7 }),
        .S(\dev_blocks_read_reg[11]_0 ));
  FDRE \dev_blocks_read_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\dev_blocks_read_reg[8]_i_1_n_6 ),
        .Q(\dev_blocks_read_reg[11]_0 [1]),
        .R(fifo_n_63));
  LUT5 #(
    .INIT(32'hFE00FEFE)) 
    \dev_last_block[9]_i_4 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(\FSM_onehot_sys_state[2]_i_4 ),
        .I4(\dev_last_block[9]_i_6_n_0 ),
        .O(\dev_last_block[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1011111113111111)) 
    \dev_last_block[9]_i_6 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\card_status[11]_i_4 [1]),
        .I3(\card_status[11]_i_4 [2]),
        .I4(\card_status[11]_i_4 [0]),
        .I5(Q[4]),
        .O(\dev_last_block[9]_i_6_n_0 ));
  FDRE \dev_last_block_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(fifo_wraddr[7]),
        .Q(dev_last_block[7]),
        .R(fifo_n_63));
  FDRE \dev_last_block_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(fifo_wraddr[8]),
        .Q(dev_last_block[8]),
        .R(fifo_n_63));
  FDRE \dev_last_block_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(fifo_wraddr[9]),
        .Q(dev_last_block[9]),
        .R(fifo_n_63));
  adapter_axi_sd_0_0_fifo_fwft fifo
       (.CO(CO),
        .D({state_next__0[3:2],state_next__0[0]}),
        .E(block_size0),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[0]_i_3_n_0 ),
        .\FSM_onehot_state_reg[1] (SR),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1]_0 ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_1 ),
        .\FSM_onehot_state_reg[1]_2 (\FSM_onehot_state_reg[1]_3 ),
        .\FSM_onehot_state_reg[1]_3 (\FSM_onehot_state_reg[1]_4 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg[2]_1 ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_2 ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state[2]_i_2_n_0 ),
        .\FSM_onehot_state_reg[3] (multi_block_mode_reg_0),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state_reg[4]_0 ),
        .\FSM_onehot_state_reg[4]_0 (\FSM_onehot_state_reg[4]_1 ),
        .\FSM_onehot_sys_state[2]_i_4_0 (\card_status[11]_i_4 [0]),
        .\FSM_onehot_sys_state[2]_i_4_1 (\FSM_onehot_state[0]_i_3_0 ),
        .\FSM_onehot_sys_state[2]_i_4_2 (\FSM_onehot_sys_state[2]_i_4_0 ),
        .\FSM_onehot_sys_state_reg[0] (fifo_n_120),
        .\FSM_onehot_sys_state_reg[0]_0 (fifo_n_121),
        .\FSM_onehot_sys_state_reg[0]_1 (fifo_n_122),
        .\FSM_onehot_sys_state_reg[0]_2 (\FSM_onehot_sys_state[2]_i_3_n_0 ),
        .\FSM_onehot_sys_state_reg[0]_3 (\FSM_onehot_sys_state[2]_i_5_n_0 ),
        .\FSM_onehot_sys_state_reg[0]_4 (\/i__n_0 ),
        .\FSM_onehot_sys_state_reg[1] (\FSM_onehot_sys_state[1]_i_2_n_0 ),
        .\FSM_onehot_sys_state_reg[2] (\FSM_onehot_sys_state[2]_i_8_n_0 ),
        .\FSM_onehot_sys_state_reg[2]_0 (\FSM_onehot_sys_state[2]_i_2_n_0 ),
        .\FSM_sequential_state[1]_i_2 ({\FSM_sequential_state[1]_i_2 [2],\FSM_sequential_state[1]_i_2 [0]}),
        .O({write_ok2_carry__1_n_6,write_ok2_carry__1_n_7}),
        .Q(Q),
        .S({fifo_n_6,fifo_n_7}),
        .SR(fifo_n_63),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\addr_out_cur[9]_i_3_0 (\axi_rdata_reg[0]_0 ),
        .\addr_out_cur[9]_i_3_1 (\axi_rdata_reg[0] ),
        .\addr_out_cur[9]_i_8_0 (\reg_saved_reg[24][0] ),
        .\addr_write_reg[3]_0 ({fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25}),
        .\addr_write_reg[3]_1 (\addr_write_reg[3] ),
        .\addr_write_reg[7]_0 ({fifo_n_18,fifo_n_19,fifo_n_20,fifo_n_21}),
        .\addr_write_reg[9]_0 (\addr_write_reg[9] ),
        .\addr_write_reg[9]_1 (fifo_wraddr),
        .\addr_write_reg[9]_2 (\FSM_onehot_sys_state_reg[2]_0 ),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0]_1 ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_2 ),
        .\axi_rdata_reg[0]_1 (\axi_rdata_reg[0]_3 ),
        .\axi_rdata_reg[10] (\axi_rdata_reg[10] ),
        .\axi_rdata_reg[10]_0 (\axi_rdata_reg[10]_0 ),
        .\axi_rdata_reg[11] (\axi_rdata_reg[11] ),
        .\axi_rdata_reg[11]_0 (\axi_rdata_reg[11]_0 ),
        .\axi_rdata_reg[12] (\axi_rdata_reg[12] ),
        .\axi_rdata_reg[12]_0 (\axi_rdata_reg[12]_0 ),
        .\axi_rdata_reg[13] (\axi_rdata_reg[13] ),
        .\axi_rdata_reg[13]_0 (\axi_rdata_reg[13]_0 ),
        .\axi_rdata_reg[14] (\axi_rdata_reg[14] ),
        .\axi_rdata_reg[14]_0 (\axi_rdata_reg[14]_0 ),
        .\axi_rdata_reg[15] (\axi_rdata_reg[15] ),
        .\axi_rdata_reg[15]_0 (\axi_rdata_reg[15]_0 ),
        .\axi_rdata_reg[16] (\axi_rdata_reg[16] ),
        .\axi_rdata_reg[16]_0 (\axi_rdata_reg[16]_0 ),
        .\axi_rdata_reg[17] (\axi_rdata_reg[17] ),
        .\axi_rdata_reg[17]_0 (\axi_rdata_reg[17]_0 ),
        .\axi_rdata_reg[18] (\axi_rdata_reg[18] ),
        .\axi_rdata_reg[18]_0 (\axi_rdata_reg[18]_0 ),
        .\axi_rdata_reg[19] (\axi_rdata_reg[19] ),
        .\axi_rdata_reg[19]_0 (\axi_rdata_reg[19]_0 ),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .\axi_rdata_reg[1]_0 (\axi_rdata_reg[1]_0 ),
        .\axi_rdata_reg[20] (\axi_rdata_reg[20] ),
        .\axi_rdata_reg[20]_0 (\axi_rdata_reg[20]_0 ),
        .\axi_rdata_reg[21] (\axi_rdata_reg[21] ),
        .\axi_rdata_reg[21]_0 (\axi_rdata_reg[21]_0 ),
        .\axi_rdata_reg[22] (\axi_rdata_reg[22] ),
        .\axi_rdata_reg[22]_0 (\axi_rdata_reg[22]_0 ),
        .\axi_rdata_reg[23] (\axi_rdata_reg[23] ),
        .\axi_rdata_reg[23]_0 (\axi_rdata_reg[23]_0 ),
        .\axi_rdata_reg[24] (\axi_rdata_reg[24] ),
        .\axi_rdata_reg[24]_0 (\axi_rdata_reg[24]_0 ),
        .\axi_rdata_reg[25] (\axi_rdata_reg[25] ),
        .\axi_rdata_reg[25]_0 (\axi_rdata_reg[25]_0 ),
        .\axi_rdata_reg[26] (\axi_rdata_reg[26] ),
        .\axi_rdata_reg[26]_0 (\axi_rdata_reg[26]_0 ),
        .\axi_rdata_reg[27] (\axi_rdata_reg[27] ),
        .\axi_rdata_reg[27]_0 (\axi_rdata[27]_i_5_n_0 ),
        .\axi_rdata_reg[28] (\axi_rdata_reg[28] ),
        .\axi_rdata_reg[28]_0 (\axi_rdata[28]_i_5_n_0 ),
        .\axi_rdata_reg[29] (\axi_rdata_reg[29] ),
        .\axi_rdata_reg[29]_0 (\axi_rdata_reg[29]_0 ),
        .\axi_rdata_reg[2] (\axi_rdata_reg[2] ),
        .\axi_rdata_reg[2]_0 (\axi_rdata_reg[2]_0 ),
        .\axi_rdata_reg[30] (\axi_rdata_reg[30] ),
        .\axi_rdata_reg[30]_0 (\axi_rdata_reg[30]_0 ),
        .\axi_rdata_reg[31] (\axi_rdata_reg[31] ),
        .\axi_rdata_reg[31]_0 (\axi_rdata_reg[31]_0 ),
        .\axi_rdata_reg[31]_1 (\axi_rdata_reg[31]_1 ),
        .\axi_rdata_reg[3] (\axi_rdata_reg[3] ),
        .\axi_rdata_reg[3]_0 (\axi_rdata_reg[3]_0 ),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4] ),
        .\axi_rdata_reg[4]_0 (\axi_rdata_reg[4]_0 ),
        .\axi_rdata_reg[5] (\axi_rdata_reg[5] ),
        .\axi_rdata_reg[5]_0 (\axi_rdata_reg[5]_0 ),
        .\axi_rdata_reg[6] (\axi_rdata_reg[6] ),
        .\axi_rdata_reg[6]_0 (\axi_rdata_reg[6]_0 ),
        .\axi_rdata_reg[7] (\axi_rdata_reg[7] ),
        .\axi_rdata_reg[7]_0 (\axi_rdata_reg[7]_0 ),
        .\axi_rdata_reg[8] (\axi_rdata_reg[8] ),
        .\axi_rdata_reg[8]_0 (\axi_rdata_reg[8]_0 ),
        .\axi_rdata_reg[9] (\axi_rdata_reg[9] ),
        .\axi_rdata_reg[9]_0 (\axi_rdata_reg[9]_0 ),
        .\block_size_reg[5] (\dev_last_block[9]_i_4_n_0 ),
        .\buf_write_reg[47] (dat_width_4_reg_0),
        .\card_status_resp_reg[8] ({write_ok2_carry__0_n_4,write_ok2_carry__0_n_5,write_ok2_carry__0_n_6,write_ok2_carry__0_n_7}),
        .dat_got_word(dat_got_word),
        .dat_width_4_reg(dat_width_4_reg_1),
        .dat_width_4_reg_0(dat_width_4_reg_2),
        .dat_width_4_reg_1(dat_width_4_reg_3),
        .dat_width_4_reg_10(dat_width_4_reg_12),
        .dat_width_4_reg_11(dat_width_4_reg_13),
        .dat_width_4_reg_12(dat_width_4_reg_14),
        .dat_width_4_reg_13(dat_width_4_reg_15),
        .dat_width_4_reg_14(dat_width_4_reg_16),
        .dat_width_4_reg_2(dat_width_4_reg_4),
        .dat_width_4_reg_3(dat_width_4_reg_5),
        .dat_width_4_reg_4(dat_width_4_reg_6),
        .dat_width_4_reg_5(dat_width_4_reg_7),
        .dat_width_4_reg_6(dat_width_4_reg_8),
        .dat_width_4_reg_7(dat_width_4_reg_9),
        .dat_width_4_reg_8(dat_width_4_reg_10),
        .dat_width_4_reg_9(dat_width_4_reg_11),
        .dat_wrote_new_word(dat_wrote_new_word),
        .data_write_en(data_write_en),
        .\dev_last_block_reg[7] (dat_width_4_reg_17),
        .\dev_last_block_reg[7]_0 (\dev_last_block_reg[7]_0 ),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .may_read_data(may_read_data),
        .new_sd_clk(new_sd_clk),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_10(ram_reg_9),
        .ram_reg_11(ram_reg_10),
        .ram_reg_12(ram_reg_11),
        .ram_reg_13(ram_reg_12),
        .ram_reg_14(ram_reg_13),
        .ram_reg_15(ram_reg_14),
        .ram_reg_16(ram_reg_15),
        .ram_reg_17(ram_reg_16),
        .ram_reg_18(ram_reg_17),
        .ram_reg_19(ram_reg_18),
        .ram_reg_2(ram_reg_1),
        .ram_reg_20(ram_reg_19),
        .ram_reg_21(ram_reg_20),
        .ram_reg_22(ram_reg_21),
        .ram_reg_23(ram_reg_22),
        .ram_reg_24(ram_reg_23),
        .ram_reg_25(ram_reg_24),
        .ram_reg_26(ram_reg_25),
        .ram_reg_27(ram_reg_26),
        .ram_reg_28(ram_reg_27),
        .ram_reg_29(ram_reg_28),
        .ram_reg_3(ram_reg_2),
        .ram_reg_30(ram_reg_29),
        .ram_reg_31(ram_reg_30),
        .ram_reg_32(ram_reg_31),
        .ram_reg_33(ram_reg_32),
        .ram_reg_34(ram_reg_33),
        .ram_reg_35(ram_reg_34),
        .ram_reg_36(ram_reg_35),
        .ram_reg_37(ram_reg_36),
        .ram_reg_38(ram_reg_37),
        .ram_reg_39(ram_reg_38),
        .ram_reg_4(ram_reg_3),
        .ram_reg_40(ram_reg_39),
        .ram_reg_41(ram_reg_40),
        .ram_reg_42(ram_reg_41),
        .ram_reg_43(ram_reg_42),
        .ram_reg_44(ram_reg_43),
        .ram_reg_45(ram_reg_44),
        .ram_reg_46(ram_reg_45),
        .ram_reg_47(ram_reg_46),
        .ram_reg_48(ram_reg_47),
        .ram_reg_49(ram_reg_48),
        .ram_reg_5(ram_reg_4),
        .ram_reg_50(ram_reg_49),
        .ram_reg_51(ram_reg_50),
        .ram_reg_52(ram_reg_51),
        .ram_reg_53(ram_reg_52),
        .ram_reg_54(ram_reg_53),
        .ram_reg_55(ram_reg_54),
        .ram_reg_56(ram_reg_55),
        .ram_reg_57(ram_reg_56),
        .ram_reg_58(ram_reg_57),
        .ram_reg_59(ram_reg_58),
        .ram_reg_6(ram_reg_5),
        .ram_reg_60(ram_reg_59),
        .ram_reg_61(ram_reg_60),
        .ram_reg_62(ram_reg_61),
        .ram_reg_63(ram_reg_62),
        .ram_reg_64(ram_reg_63),
        .ram_reg_65(ram_reg_64),
        .ram_reg_7(ram_reg_6),
        .ram_reg_8(ram_reg_7),
        .ram_reg_9(ram_reg_8),
        .sys_may_read_next(sys_may_read_next),
        .sys_may_read_reg_i_2_0(dev_last_block),
        .sys_may_write_next(sys_may_write_next),
        .sys_may_write_reg(write_ok2_carry__1_n_1),
        .sys_may_write_reg_0({write_ok2_carry_n_4,write_ok2_carry_n_5,write_ok2_carry_n_6,write_ok2_carry_n_7}),
        .sys_state(sys_state[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\block_size_reg[12]_0 [2]),
        .I1(O[0]),
        .I2(\block_size_reg[12]_0 [1]),
        .I3(\block_data_finished0_inferred__0/i__carry ),
        .O(\block_size_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    i__i_1
       (.I0(\reg_saved_reg[24][0] [0]),
        .I1(\reg_saved_reg[24][0] [3]),
        .I2(\reg_saved_reg[24][0] [1]),
        .I3(\reg_saved_reg[24][0] [2]),
        .I4(\reg_saved_reg[24][0] [4]),
        .I5(axi_arready_reg),
        .O(\axi_araddr_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    interrupt_INST_0
       (.I0(cmd_unread),
        .I1(interrupt_0[1]),
        .I2(cmd_saved_unread),
        .I3(interrupt_0[0]),
        .I4(interrupt_INST_0_i_1_n_0),
        .I5(interrupt_1),
        .O(interrupt));
  LUT4 #(
    .INIT(16'hF888)) 
    interrupt_INST_0_i_1
       (.I0(interrupt_0[2]),
        .I1(may_write_data),
        .I2(interrupt_0[3]),
        .I3(may_read_data),
        .O(interrupt_INST_0_i_1_n_0));
  FDRE invalid_dat_width_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(invalid_dat_width_reg_0),
        .Q(invalid_dat_width),
        .R(1'b0));
  FDRE multi_block_mode_reg
       (.C(S_AXI_ACLK),
        .CE(block_size0),
        .D(multi_block_mode_next),
        .Q(multi_block_mode),
        .R(dat_width_4_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \sd_dat_o_sys[3]_i_10 
       (.I0(\FSM_sequential_state[1]_i_2 [1]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\FSM_sequential_state_reg[1] ));
  CARRY4 state_next4_carry
       (.CI(1'b0),
        .CO({state_next4_carry_n_0,state_next4_carry_n_1,state_next4_carry_n_2,state_next4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({state_next4_carry_i_1_n_0,state_next4_carry_i_2_n_0,state_next4_carry_i_3_n_0,state_next4_carry_i_4_n_0}),
        .O(NLW_state_next4_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 state_next4_carry__0
       (.CI(state_next4_carry_n_0),
        .CO({state_next4_carry__0_n_0,state_next4_carry__0_n_1,state_next4_carry__0_n_2,state_next4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_next4_carry__0_i_1_n_0,state_next4_carry__0_i_2_n_0,state_next4_carry__0_i_3_n_0,state_next4_carry__0_i_4_n_0}),
        .O(NLW_state_next4_carry__0_O_UNCONNECTED[3:0]),
        .S(state_next4_carry__1_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__0_i_1
       (.I0(\dev_blocks_read_reg[15]_0 [3]),
        .I1(state_next4_carry__2_1[15]),
        .I2(\dev_blocks_read_reg[15]_0 [2]),
        .I3(state_next4_carry__2_1[14]),
        .O(state_next4_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__0_i_2
       (.I0(\dev_blocks_read_reg[15]_0 [1]),
        .I1(state_next4_carry__2_1[13]),
        .I2(\dev_blocks_read_reg[15]_0 [0]),
        .I3(state_next4_carry__2_1[12]),
        .O(state_next4_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__0_i_3
       (.I0(\dev_blocks_read_reg[11]_0 [3]),
        .I1(state_next4_carry__2_1[11]),
        .I2(\dev_blocks_read_reg[11]_0 [2]),
        .I3(state_next4_carry__2_1[10]),
        .O(state_next4_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__0_i_4
       (.I0(\dev_blocks_read_reg[11]_0 [1]),
        .I1(state_next4_carry__2_1[9]),
        .I2(\dev_blocks_read_reg[11]_0 [0]),
        .I3(state_next4_carry__2_1[8]),
        .O(state_next4_carry__0_i_4_n_0));
  CARRY4 state_next4_carry__1
       (.CI(state_next4_carry__0_n_0),
        .CO({state_next4_carry__1_n_0,state_next4_carry__1_n_1,state_next4_carry__1_n_2,state_next4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({state_next4_carry__1_i_1_n_0,state_next4_carry__1_i_2_n_0,state_next4_carry__1_i_3_n_0,state_next4_carry__1_i_4_n_0}),
        .O(NLW_state_next4_carry__1_O_UNCONNECTED[3:0]),
        .S(state_next4_carry__2_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__1_i_1
       (.I0(\dev_blocks_read_reg[23]_0 [3]),
        .I1(state_next4_carry__2_1[23]),
        .I2(\dev_blocks_read_reg[23]_0 [2]),
        .I3(state_next4_carry__2_1[22]),
        .O(state_next4_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__1_i_2
       (.I0(\dev_blocks_read_reg[23]_0 [1]),
        .I1(state_next4_carry__2_1[21]),
        .I2(\dev_blocks_read_reg[23]_0 [0]),
        .I3(state_next4_carry__2_1[20]),
        .O(state_next4_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__1_i_3
       (.I0(\dev_blocks_read_reg[19]_0 [3]),
        .I1(state_next4_carry__2_1[19]),
        .I2(\dev_blocks_read_reg[19]_0 [2]),
        .I3(state_next4_carry__2_1[18]),
        .O(state_next4_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__1_i_4
       (.I0(\dev_blocks_read_reg[19]_0 [1]),
        .I1(state_next4_carry__2_1[17]),
        .I2(\dev_blocks_read_reg[19]_0 [0]),
        .I3(state_next4_carry__2_1[16]),
        .O(state_next4_carry__1_i_4_n_0));
  CARRY4 state_next4_carry__2
       (.CI(state_next4_carry__1_n_0),
        .CO({state_next4,state_next4_carry__2_n_1,state_next4_carry__2_n_2,state_next4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({state_next4_carry__2_i_1_n_0,state_next4_carry__2_i_2_n_0,state_next4_carry__2_i_3_n_0,state_next4_carry__2_i_4_n_0}),
        .O(NLW_state_next4_carry__2_O_UNCONNECTED[3:0]),
        .S(\FSM_onehot_state[3]_i_7_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__2_i_1
       (.I0(\dev_blocks_read_reg[31]_0 [3]),
        .I1(state_next4_carry__2_1[31]),
        .I2(\dev_blocks_read_reg[31]_0 [2]),
        .I3(state_next4_carry__2_1[30]),
        .O(state_next4_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__2_i_2
       (.I0(\dev_blocks_read_reg[31]_0 [1]),
        .I1(state_next4_carry__2_1[29]),
        .I2(\dev_blocks_read_reg[31]_0 [0]),
        .I3(state_next4_carry__2_1[28]),
        .O(state_next4_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__2_i_3
       (.I0(\dev_blocks_read_reg[27]_0 [3]),
        .I1(state_next4_carry__2_1[27]),
        .I2(\dev_blocks_read_reg[27]_0 [2]),
        .I3(state_next4_carry__2_1[26]),
        .O(state_next4_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry__2_i_4
       (.I0(\dev_blocks_read_reg[27]_0 [1]),
        .I1(state_next4_carry__2_1[25]),
        .I2(\dev_blocks_read_reg[27]_0 [0]),
        .I3(state_next4_carry__2_1[24]),
        .O(state_next4_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry_i_1
       (.I0(\dev_blocks_read_reg[7]_0 [3]),
        .I1(state_next4_carry__2_1[7]),
        .I2(\dev_blocks_read_reg[7]_0 [2]),
        .I3(state_next4_carry__2_1[6]),
        .O(state_next4_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry_i_2
       (.I0(\dev_blocks_read_reg[7]_0 [1]),
        .I1(state_next4_carry__2_1[5]),
        .I2(\dev_blocks_read_reg[7]_0 [0]),
        .I3(state_next4_carry__2_1[4]),
        .O(state_next4_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry_i_3
       (.I0(\dev_blocks_read_reg[3]_0 [2]),
        .I1(state_next4_carry__2_1[3]),
        .I2(\dev_blocks_read_reg[3]_0 [1]),
        .I3(state_next4_carry__2_1[2]),
        .O(state_next4_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state_next4_carry_i_4
       (.I0(\dev_blocks_read_reg[3]_0 [0]),
        .I1(state_next4_carry__2_1[1]),
        .I2(\dev_blocks_read_reg[0]_0 ),
        .I3(state_next4_carry__2_1[0]),
        .O(state_next4_carry_i_4_n_0));
  FDRE sys_may_read_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sys_may_read_next),
        .Q(may_read_data),
        .R(dat_width_4_reg_17));
  FDRE sys_may_write_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sys_may_write_next),
        .Q(may_write_data),
        .R(dat_width_4_reg_17));
  CARRY4 write_ok2_carry
       (.CI(1'b0),
        .CO({write_ok2_carry_n_0,write_ok2_carry_n_1,write_ok2_carry_n_2,write_ok2_carry_n_3}),
        .CYINIT(1'b1),
        .DI(fifo_wraddr[3:0]),
        .O({write_ok2_carry_n_4,write_ok2_carry_n_5,write_ok2_carry_n_6,write_ok2_carry_n_7}),
        .S({fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25}));
  CARRY4 write_ok2_carry__0
       (.CI(write_ok2_carry_n_0),
        .CO({write_ok2_carry__0_n_0,write_ok2_carry__0_n_1,write_ok2_carry__0_n_2,write_ok2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(fifo_wraddr[7:4]),
        .O({write_ok2_carry__0_n_4,write_ok2_carry__0_n_5,write_ok2_carry__0_n_6,write_ok2_carry__0_n_7}),
        .S({fifo_n_18,fifo_n_19,fifo_n_20,fifo_n_21}));
  CARRY4 write_ok2_carry__1
       (.CI(write_ok2_carry__0_n_0),
        .CO({NLW_write_ok2_carry__1_CO_UNCONNECTED[3],write_ok2_carry__1_n_1,NLW_write_ok2_carry__1_CO_UNCONNECTED[1],write_ok2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,fifo_wraddr[9:8]}),
        .O({NLW_write_ok2_carry__1_O_UNCONNECTED[3:2],write_ok2_carry__1_n_6,write_ok2_carry__1_n_7}),
        .S({1'b0,1'b1,fifo_n_6,fifo_n_7}));
endmodule

(* ORIG_REF_NAME = "dat_interface" *) 
module adapter_axi_sd_0_0_dat_interface
   (read_block_end,
    dat_got_word,
    dat_got_block,
    sd_dat_t_sys,
    E,
    read_crc_err_reg_0,
    dat_wrote_new_word,
    D,
    CO,
    Q,
    read_crc_err_reg_1,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[3]_0 ,
    \crc_reg[10] ,
    \crc_reg[2] ,
    \crc_reg[2]_0 ,
    \crc_reg[10]_0 ,
    \sd_dat_o_sys_reg[3]_0 ,
    \read_data_reg[31]_0 ,
    \sd_dat_o_sys_reg[0]_0 ,
    S_AXI_ACLK,
    read_crc_err_reg_2,
    block_data_finished0_carry__0_0,
    \FSM_sequential_state[0]_i_14 ,
    \block_data_finished0_inferred__0/i__carry__0_0 ,
    \dev_blocks_read_reg[31] ,
    \FSM_sequential_state_reg[0]_1 ,
    \crc_reg[15] ,
    \sd_dat_o_sys_reg[3]_1 ,
    \block_data_finished0_inferred__0/i__carry__0_1 ,
    \sd_dat_o_sys_reg[0]_1 ,
    \crc_reg[0] ,
    \buf_write_reg[8]_0 ,
    \buf_write_reg[9]_0 ,
    \buf_write_reg[10]_0 ,
    \buf_write_reg[11]_0 ,
    \buf_write_reg[12]_0 ,
    \buf_write_reg[13]_0 ,
    \buf_write_reg[14]_0 ,
    \buf_write_reg[24]_0 ,
    \buf_write_reg[25]_0 ,
    \buf_write_reg[26]_0 ,
    \buf_write_reg[27]_0 ,
    \buf_write_reg[28]_0 ,
    \buf_write_reg[29]_0 ,
    \buf_write_reg[30]_0 ,
    \buf_write_reg[32]_0 ,
    \buf_write_reg[33]_0 ,
    \buf_write_reg[34]_0 ,
    \buf_write_reg[35]_0 ,
    \buf_write_reg[36]_0 ,
    \buf_write_reg[37]_0 ,
    \buf_write_reg[38]_0 ,
    \buf_write_reg[39]_0 ,
    \buf_write_reg[40]_0 ,
    \buf_write_reg[41]_0 ,
    \buf_write_reg[42]_0 ,
    \buf_write_reg[43]_0 ,
    \buf_write_reg[44]_0 ,
    \buf_write_reg[45]_0 ,
    \buf_write_reg[46]_0 ,
    \buf_write_reg[48]_0 ,
    \buf_write_reg[49]_0 ,
    \buf_write_reg[50]_0 ,
    \buf_write_reg[51]_0 ,
    \buf_write_reg[52]_0 ,
    \buf_write_reg[53]_0 ,
    \buf_write_reg[54]_0 ,
    \buf_write_reg[55]_0 ,
    \buf_write_reg[56]_0 ,
    \buf_write_reg[57]_0 ,
    \buf_write_reg[58]_0 ,
    \buf_write_reg[59]_0 ,
    \buf_write_reg[60]_0 ,
    \buf_write_reg[62]_0 ,
    \crc_reg[0]_0 ,
    \buf_write_reg[61]_0 ,
    \buf_write_reg[15]_0 ,
    \buf_write_reg[31]_0 ,
    \buf_write_reg[47]_0 ,
    \FSM_sequential_state_reg[0]_2 ,
    \sd_dat_o_sys_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    \crc[15]_i_4 ,
    \FSM_sequential_state_reg[0]_3 ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \sd_dat_o_sys[3]_i_3 ,
    \crc_reg[15]_0 ,
    fifo_empty,
    \FSM_sequential_state_reg[1]_3 );
  output read_block_end;
  output dat_got_word;
  output dat_got_block;
  output [0:0]sd_dat_t_sys;
  output [0:0]E;
  output read_crc_err_reg_0;
  output dat_wrote_new_word;
  output [3:0]D;
  output [0:0]CO;
  output [2:0]Q;
  output [0:0]read_crc_err_reg_1;
  output \FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[3]_0 ;
  output \crc_reg[10] ;
  output \crc_reg[2] ;
  output \crc_reg[2]_0 ;
  output \crc_reg[10]_0 ;
  output [3:0]\sd_dat_o_sys_reg[3]_0 ;
  output [31:0]\read_data_reg[31]_0 ;
  input \sd_dat_o_sys_reg[0]_0 ;
  input S_AXI_ACLK;
  input read_crc_err_reg_2;
  input [0:0]block_data_finished0_carry__0_0;
  input [0:0]\FSM_sequential_state[0]_i_14 ;
  input [0:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  input [0:0]\dev_blocks_read_reg[31] ;
  input \FSM_sequential_state_reg[0]_1 ;
  input \crc_reg[15] ;
  input \sd_dat_o_sys_reg[3]_1 ;
  input [4:0]\block_data_finished0_inferred__0/i__carry__0_1 ;
  input \sd_dat_o_sys_reg[0]_1 ;
  input [3:0]\crc_reg[0] ;
  input \buf_write_reg[8]_0 ;
  input \buf_write_reg[9]_0 ;
  input \buf_write_reg[10]_0 ;
  input \buf_write_reg[11]_0 ;
  input \buf_write_reg[12]_0 ;
  input \buf_write_reg[13]_0 ;
  input \buf_write_reg[14]_0 ;
  input \buf_write_reg[24]_0 ;
  input \buf_write_reg[25]_0 ;
  input \buf_write_reg[26]_0 ;
  input \buf_write_reg[27]_0 ;
  input \buf_write_reg[28]_0 ;
  input \buf_write_reg[29]_0 ;
  input \buf_write_reg[30]_0 ;
  input \buf_write_reg[32]_0 ;
  input \buf_write_reg[33]_0 ;
  input \buf_write_reg[34]_0 ;
  input \buf_write_reg[35]_0 ;
  input \buf_write_reg[36]_0 ;
  input \buf_write_reg[37]_0 ;
  input \buf_write_reg[38]_0 ;
  input \buf_write_reg[39]_0 ;
  input \buf_write_reg[40]_0 ;
  input \buf_write_reg[41]_0 ;
  input \buf_write_reg[42]_0 ;
  input \buf_write_reg[43]_0 ;
  input \buf_write_reg[44]_0 ;
  input \buf_write_reg[45]_0 ;
  input \buf_write_reg[46]_0 ;
  input \buf_write_reg[48]_0 ;
  input \buf_write_reg[49]_0 ;
  input \buf_write_reg[50]_0 ;
  input \buf_write_reg[51]_0 ;
  input \buf_write_reg[52]_0 ;
  input \buf_write_reg[53]_0 ;
  input \buf_write_reg[54]_0 ;
  input \buf_write_reg[55]_0 ;
  input \buf_write_reg[56]_0 ;
  input \buf_write_reg[57]_0 ;
  input \buf_write_reg[58]_0 ;
  input \buf_write_reg[59]_0 ;
  input \buf_write_reg[60]_0 ;
  input \buf_write_reg[62]_0 ;
  input \crc_reg[0]_0 ;
  input \buf_write_reg[61]_0 ;
  input \buf_write_reg[15]_0 ;
  input \buf_write_reg[31]_0 ;
  input \buf_write_reg[47]_0 ;
  input \FSM_sequential_state_reg[0]_2 ;
  input \sd_dat_o_sys_reg[1]_0 ;
  input \FSM_sequential_state_reg[1]_1 ;
  input \FSM_sequential_state_reg[1]_2 ;
  input \crc[15]_i_4 ;
  input \FSM_sequential_state_reg[0]_3 ;
  input \FSM_sequential_state_reg[2]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input \sd_dat_o_sys[3]_i_3 ;
  input [1:0]\crc_reg[15]_0 ;
  input fifo_empty;
  input [0:0]\FSM_sequential_state_reg[1]_3 ;

  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire [0:0]\FSM_sequential_state[0]_i_14 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[0]_3 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire [0:0]\FSM_sequential_state_reg[1]_3 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire [0:0]block_data_finished0_carry__0_0;
  wire block_data_finished0_carry__0_n_1;
  wire block_data_finished0_carry__0_n_2;
  wire block_data_finished0_carry__0_n_3;
  wire block_data_finished0_carry_n_0;
  wire block_data_finished0_carry_n_1;
  wire block_data_finished0_carry_n_2;
  wire block_data_finished0_carry_n_3;
  wire [0:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  wire [4:0]\block_data_finished0_inferred__0/i__carry__0_1 ;
  wire \block_data_finished0_inferred__0/i__carry__0_n_1 ;
  wire \block_data_finished0_inferred__0/i__carry__0_n_2 ;
  wire \block_data_finished0_inferred__0/i__carry__0_n_3 ;
  wire \block_data_finished0_inferred__0/i__carry_n_0 ;
  wire \block_data_finished0_inferred__0/i__carry_n_1 ;
  wire \block_data_finished0_inferred__0/i__carry_n_2 ;
  wire \block_data_finished0_inferred__0/i__carry_n_3 ;
  wire [24:8]buf_read_next;
  wire [62:0]buf_write;
  wire \buf_write[0]_i_2_n_0 ;
  wire \buf_write[60]_i_2_n_0 ;
  wire \buf_write[61]_i_2_n_0 ;
  wire \buf_write[62]_i_3_n_0 ;
  wire [47:15]buf_write_next;
  wire [62:0]buf_write_next__0;
  wire \buf_write_reg[10]_0 ;
  wire \buf_write_reg[11]_0 ;
  wire \buf_write_reg[12]_0 ;
  wire \buf_write_reg[13]_0 ;
  wire \buf_write_reg[14]_0 ;
  wire \buf_write_reg[15]_0 ;
  wire \buf_write_reg[24]_0 ;
  wire \buf_write_reg[25]_0 ;
  wire \buf_write_reg[26]_0 ;
  wire \buf_write_reg[27]_0 ;
  wire \buf_write_reg[28]_0 ;
  wire \buf_write_reg[29]_0 ;
  wire \buf_write_reg[30]_0 ;
  wire \buf_write_reg[31]_0 ;
  wire \buf_write_reg[32]_0 ;
  wire \buf_write_reg[33]_0 ;
  wire \buf_write_reg[34]_0 ;
  wire \buf_write_reg[35]_0 ;
  wire \buf_write_reg[36]_0 ;
  wire \buf_write_reg[37]_0 ;
  wire \buf_write_reg[38]_0 ;
  wire \buf_write_reg[39]_0 ;
  wire \buf_write_reg[40]_0 ;
  wire \buf_write_reg[41]_0 ;
  wire \buf_write_reg[42]_0 ;
  wire \buf_write_reg[43]_0 ;
  wire \buf_write_reg[44]_0 ;
  wire \buf_write_reg[45]_0 ;
  wire \buf_write_reg[46]_0 ;
  wire \buf_write_reg[47]_0 ;
  wire \buf_write_reg[48]_0 ;
  wire \buf_write_reg[49]_0 ;
  wire \buf_write_reg[50]_0 ;
  wire \buf_write_reg[51]_0 ;
  wire \buf_write_reg[52]_0 ;
  wire \buf_write_reg[53]_0 ;
  wire \buf_write_reg[54]_0 ;
  wire \buf_write_reg[55]_0 ;
  wire \buf_write_reg[56]_0 ;
  wire \buf_write_reg[57]_0 ;
  wire \buf_write_reg[58]_0 ;
  wire \buf_write_reg[59]_0 ;
  wire \buf_write_reg[60]_0 ;
  wire \buf_write_reg[61]_0 ;
  wire \buf_write_reg[62]_0 ;
  wire \buf_write_reg[8]_0 ;
  wire \buf_write_reg[9]_0 ;
  wire counter0;
  wire counter14_in;
  wire \counter1_inferred__0/i__carry_n_3 ;
  wire counter_inc_carry__0_n_0;
  wire counter_inc_carry__0_n_1;
  wire counter_inc_carry__0_n_2;
  wire counter_inc_carry__0_n_3;
  wire counter_inc_carry__0_n_4;
  wire counter_inc_carry__1_n_2;
  wire counter_inc_carry__1_n_3;
  wire counter_inc_carry__1_n_5;
  wire counter_inc_carry__1_n_6;
  wire counter_inc_carry__1_n_7;
  wire counter_inc_carry_n_0;
  wire counter_inc_carry_n_1;
  wire counter_inc_carry_n_2;
  wire counter_inc_carry_n_3;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire \crc[15]_i_4 ;
  wire [3:0]\crc_reg[0] ;
  wire \crc_reg[0]_0 ;
  wire \crc_reg[10] ;
  wire \crc_reg[10]_0 ;
  wire \crc_reg[15] ;
  wire [1:0]\crc_reg[15]_0 ;
  wire \crc_reg[2] ;
  wire \crc_reg[2]_0 ;
  wire dat_got_block;
  wire dat_got_word;
  wire dat_wrote_new_word;
  wire [0:0]\dev_blocks_read_reg[31] ;
  wire fifo_empty;
  wire got_block0;
  wire got_block_i_2_n_0;
  wire got_word_c;
  wire got_word_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2_n_0;
  wire \line_crc[0].line_crc_n_0 ;
  wire \line_crc[0].line_crc_n_1 ;
  wire \line_crc[0].line_crc_n_20 ;
  wire \line_crc[0].line_crc_n_21 ;
  wire \line_crc[0].line_crc_n_22 ;
  wire \line_crc[0].line_crc_n_23 ;
  wire \line_crc[0].line_crc_n_24 ;
  wire \line_crc[0].line_crc_n_25 ;
  wire \line_crc[0].line_crc_n_26 ;
  wire \line_crc[0].line_crc_n_27 ;
  wire \line_crc[0].line_crc_n_3 ;
  wire \line_crc[0].line_crc_n_4 ;
  wire \line_crc[1].line_crc_n_0 ;
  wire \line_crc[1].line_crc_n_1 ;
  wire \line_crc[1].line_crc_n_11 ;
  wire \line_crc[1].line_crc_n_27 ;
  wire \line_crc[1].line_crc_n_28 ;
  wire \line_crc[1].line_crc_n_29 ;
  wire \line_crc[1].line_crc_n_3 ;
  wire \line_crc[1].line_crc_n_30 ;
  wire \line_crc[1].line_crc_n_31 ;
  wire \line_crc[1].line_crc_n_32 ;
  wire \line_crc[1].line_crc_n_33 ;
  wire \line_crc[1].line_crc_n_34 ;
  wire \line_crc[1].line_crc_n_35 ;
  wire \line_crc[1].line_crc_n_36 ;
  wire \line_crc[1].line_crc_n_37 ;
  wire \line_crc[1].line_crc_n_38 ;
  wire \line_crc[1].line_crc_n_39 ;
  wire \line_crc[1].line_crc_n_4 ;
  wire \line_crc[1].line_crc_n_40 ;
  wire \line_crc[1].line_crc_n_41 ;
  wire \line_crc[1].line_crc_n_42 ;
  wire \line_crc[1].line_crc_n_43 ;
  wire \line_crc[1].line_crc_n_44 ;
  wire \line_crc[1].line_crc_n_45 ;
  wire \line_crc[1].line_crc_n_46 ;
  wire \line_crc[1].line_crc_n_47 ;
  wire \line_crc[1].line_crc_n_48 ;
  wire \line_crc[1].line_crc_n_49 ;
  wire \line_crc[1].line_crc_n_5 ;
  wire \line_crc[1].line_crc_n_50 ;
  wire \line_crc[1].line_crc_n_51 ;
  wire \line_crc[1].line_crc_n_52 ;
  wire \line_crc[1].line_crc_n_53 ;
  wire \line_crc[1].line_crc_n_54 ;
  wire \line_crc[1].line_crc_n_55 ;
  wire \line_crc[1].line_crc_n_56 ;
  wire \line_crc[1].line_crc_n_57 ;
  wire \line_crc[1].line_crc_n_58 ;
  wire \line_crc[1].line_crc_n_59 ;
  wire \line_crc[1].line_crc_n_6 ;
  wire \line_crc[1].line_crc_n_60 ;
  wire \line_crc[1].line_crc_n_7 ;
  wire \line_crc[1].line_crc_n_8 ;
  wire \line_crc[1].line_crc_n_9 ;
  wire \line_crc[2].line_crc_n_0 ;
  wire \line_crc[3].line_crc_n_0 ;
  wire p_0_in0_in;
  wire [31:1]p_0_in1_in;
  wire p_1_in;
  wire p_1_in1_in;
  wire read_block_end;
  wire read_block_end_i_1_n_0;
  wire read_crc_err_reg_0;
  wire [0:0]read_crc_err_reg_1;
  wire read_crc_err_reg_2;
  wire [30:1]read_data_next;
  wire [31:0]\read_data_reg[31]_0 ;
  wire resetn1;
  wire \sd_dat_o_sys[3]_i_3 ;
  wire \sd_dat_o_sys[3]_i_4_n_0 ;
  wire \sd_dat_o_sys_reg[0]_0 ;
  wire \sd_dat_o_sys_reg[0]_1 ;
  wire \sd_dat_o_sys_reg[1]_0 ;
  wire [3:0]\sd_dat_o_sys_reg[3]_0 ;
  wire \sd_dat_o_sys_reg[3]_1 ;
  wire [0:0]sd_dat_t_sys;
  wire \sd_dat_t_sys[3]_i_1_n_0 ;
  wire \sd_dat_t_sys[3]_i_2_n_0 ;
  wire \sd_dat_t_sys[3]_i_3_n_0 ;
  wire \sd_dat_t_sys[3]_i_4_n_0 ;
  wire \sd_dat_t_sys[3]_i_5_n_0 ;
  wire [2:2]state;
  wire state_next210_in;
  wire [2:0]state_next3;
  wire wrote_new_word_i_1_n_0;
  wire [3:0]NLW_block_data_finished0_carry_O_UNCONNECTED;
  wire [3:3]NLW_block_data_finished0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_block_data_finished0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_block_data_finished0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_block_data_finished0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_data_finished0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:2]NLW_counter_inc_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter_inc_carry__1_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(fifo_empty),
        .I4(state),
        .O(\FSM_sequential_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA20AAAAAAAA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\crc_reg[15] ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\line_crc[1].line_crc_n_1 ),
        .I3(\FSM_sequential_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_5_n_0 ),
        .I5(\line_crc[1].line_crc_n_4 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D000D0000000D0)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(\line_crc[1].line_crc_n_34 ),
        .I1(Q[2]),
        .I2(state),
        .I3(Q[1]),
        .I4(\line_crc[0].line_crc_n_22 ),
        .I5(Q[0]),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000040400)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(state),
        .I3(E),
        .I4(Q[0]),
        .I5(\crc_reg[0] [0]),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8080FFFFFFFFFF00)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(D[2]),
        .I1(E),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(\FSM_sequential_state_reg[0]_2 ),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[0]_i_9_n_0 ),
        .I1(state),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state[0]_i_10_n_0 ),
        .I5(\FSM_sequential_state[0]_i_11_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0008000800)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\line_crc[0].line_crc_n_26 ),
        .I1(Q[2]),
        .I2(state),
        .I3(Q[1]),
        .I4(E),
        .I5(Q[0]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h400000FF4000FFFF)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(state_next3[2]),
        .I2(read_crc_err_reg_0),
        .I3(E),
        .I4(Q[0]),
        .I5(state_next210_in),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF002F0000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(E),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\FSM_sequential_state_reg[1]_2 ),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0F000F0)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(Q[0]),
        .I1(\line_crc[1].line_crc_n_39 ),
        .I2(state),
        .I3(\line_crc[1].line_crc_n_34 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFCCFFCCCFECCCEC)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(D[2]),
        .I1(state),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\crc_reg[0] [0]),
        .I5(\line_crc[0].line_crc_n_21 ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\crc_reg[15] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(Q[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080803FFF0000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(E),
        .I3(D[0]),
        .I4(state),
        .I5(Q[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88880000CFCC0000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\line_crc[1].line_crc_n_39 ),
        .I1(Q[1]),
        .I2(\dev_blocks_read_reg[31] ),
        .I3(\FSM_sequential_state_reg[3]_1 ),
        .I4(state),
        .I5(Q[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2222FF0FFFFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(D[0]),
        .I2(E),
        .I3(\crc_reg[0] [0]),
        .I4(Q[1]),
        .I5(state),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F4F0000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(state),
        .I3(\line_crc[1].line_crc_n_36 ),
        .I4(\crc_reg[15] ),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033003300330332)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_1 ),
        .I1(state),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\dev_blocks_read_reg[31] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_3 ),
        .Q(Q[1]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(Q[2]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  CARRY4 block_data_finished0_carry
       (.CI(1'b0),
        .CO({block_data_finished0_carry_n_0,block_data_finished0_carry_n_1,block_data_finished0_carry_n_2,block_data_finished0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\line_crc[1].line_crc_n_40 ,\line_crc[1].line_crc_n_41 ,\line_crc[1].line_crc_n_42 ,\line_crc[1].line_crc_n_43 }),
        .O(NLW_block_data_finished0_carry_O_UNCONNECTED[3:0]),
        .S({block_data_finished0_carry__0_0,\line_crc[1].line_crc_n_44 ,\line_crc[1].line_crc_n_45 ,\line_crc[1].line_crc_n_46 }));
  CARRY4 block_data_finished0_carry__0
       (.CI(block_data_finished0_carry_n_0),
        .CO({NLW_block_data_finished0_carry__0_CO_UNCONNECTED[3],block_data_finished0_carry__0_n_1,block_data_finished0_carry__0_n_2,block_data_finished0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\line_crc[1].line_crc_n_49 ,\line_crc[1].line_crc_n_50 ,\line_crc[1].line_crc_n_51 }),
        .O(NLW_block_data_finished0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,\FSM_sequential_state[0]_i_14 ,\line_crc[1].line_crc_n_47 ,\line_crc[1].line_crc_n_48 }));
  CARRY4 \block_data_finished0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\block_data_finished0_inferred__0/i__carry_n_0 ,\block_data_finished0_inferred__0/i__carry_n_1 ,\block_data_finished0_inferred__0/i__carry_n_2 ,\block_data_finished0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\line_crc[1].line_crc_n_52 ,\line_crc[1].line_crc_n_53 ,\line_crc[1].line_crc_n_54 ,\line_crc[1].line_crc_n_55 }),
        .O(\NLW_block_data_finished0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\line_crc[1].line_crc_n_5 ,\block_data_finished0_inferred__0/i__carry__0_0 ,\line_crc[1].line_crc_n_6 ,\line_crc[1].line_crc_n_7 }));
  CARRY4 \block_data_finished0_inferred__0/i__carry__0 
       (.CI(\block_data_finished0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_block_data_finished0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\block_data_finished0_inferred__0/i__carry__0_n_1 ,\block_data_finished0_inferred__0/i__carry__0_n_2 ,\block_data_finished0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,CO,\line_crc[1].line_crc_n_56 ,\line_crc[1].line_crc_n_57 }),
        .O(\NLW_block_data_finished0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,\line_crc[1].line_crc_n_58 ,\line_crc[1].line_crc_n_59 ,\line_crc[1].line_crc_n_60 }));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_read[16]_i_1 
       (.I0(\crc_reg[0] [2]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[16]),
        .O(buf_read_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_read[24]_i_1 
       (.I0(\crc_reg[0] [3]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[24]),
        .O(buf_read_next[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_read[8]_i_1 
       (.I0(\crc_reg[0] [1]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[8]),
        .O(buf_read_next[8]));
  FDRE \buf_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\crc_reg[0] [0]),
        .Q(p_0_in1_in[1]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[10]),
        .Q(p_0_in1_in[11]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[11]),
        .Q(p_0_in1_in[12]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[12]),
        .Q(p_0_in1_in[13]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[13]),
        .Q(p_0_in1_in[14]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[14]),
        .Q(p_0_in1_in[15]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[15]),
        .Q(p_0_in1_in[16]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_read_next[16]),
        .Q(p_0_in1_in[17]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[17]),
        .Q(p_0_in1_in[18]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[18]),
        .Q(p_0_in1_in[19]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[19]),
        .Q(p_0_in1_in[20]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[1]),
        .Q(p_0_in1_in[2]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[20]),
        .Q(p_0_in1_in[21]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[21]),
        .Q(p_0_in1_in[22]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[22]),
        .Q(p_0_in1_in[23]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[23]),
        .Q(p_0_in1_in[24]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_read_next[24]),
        .Q(p_0_in1_in[25]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[25]),
        .Q(p_0_in1_in[26]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[26]),
        .Q(p_0_in1_in[27]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[27]),
        .Q(p_0_in1_in[28]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[28]),
        .Q(p_0_in1_in[29]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[29]),
        .Q(p_0_in1_in[30]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[2]),
        .Q(p_0_in1_in[3]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[30]),
        .Q(p_0_in1_in[31]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[3]),
        .Q(p_0_in1_in[4]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[4]),
        .Q(p_0_in1_in[5]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[5]),
        .Q(p_0_in1_in[6]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[6]),
        .Q(p_0_in1_in[7]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[7]),
        .Q(p_0_in1_in[8]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_read_next[8]),
        .Q(p_0_in1_in[9]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_read_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in1_in[9]),
        .Q(p_0_in1_in[10]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \buf_write[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(state),
        .I3(Q[0]),
        .I4(\sd_dat_t_sys[3]_i_4_n_0 ),
        .O(\buf_write[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[60]_i_2 
       (.I0(\buf_write_reg[60]_0 ),
        .I1(\line_crc[1].line_crc_n_28 ),
        .I2(read_crc_err_reg_0),
        .I3(\line_crc[1].line_crc_n_29 ),
        .I4(buf_write[59]),
        .O(\buf_write[60]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \buf_write[61]_i_2 
       (.I0(\buf_write_reg[61]_0 ),
        .I1(\line_crc[1].line_crc_n_28 ),
        .I2(read_crc_err_reg_0),
        .I3(\line_crc[1].line_crc_n_29 ),
        .I4(buf_write[60]),
        .O(\buf_write[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[62]_i_3 
       (.I0(\buf_write_reg[62]_0 ),
        .I1(\line_crc[1].line_crc_n_28 ),
        .I2(read_crc_err_reg_0),
        .I3(\line_crc[1].line_crc_n_29 ),
        .I4(buf_write[61]),
        .O(\buf_write[62]_i_3_n_0 ));
  FDRE \buf_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[0]),
        .Q(buf_write[0]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[10]),
        .Q(buf_write[10]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[11]),
        .Q(buf_write[11]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[12]),
        .Q(buf_write[12]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[13]),
        .Q(buf_write[13]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[14]),
        .Q(buf_write[14]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next[15]),
        .Q(buf_write[15]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[16]),
        .Q(buf_write[16]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[17]),
        .Q(buf_write[17]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[18]),
        .Q(buf_write[18]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[19]),
        .Q(buf_write[19]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[1]),
        .Q(buf_write[1]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[20]),
        .Q(buf_write[20]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[21]),
        .Q(buf_write[21]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[22]),
        .Q(buf_write[22]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[23]),
        .Q(buf_write[23]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[24]),
        .Q(buf_write[24]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[25]),
        .Q(buf_write[25]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[26]),
        .Q(buf_write[26]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[27]),
        .Q(buf_write[27]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[28]),
        .Q(buf_write[28]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[29]),
        .Q(buf_write[29]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[2]),
        .Q(buf_write[2]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[30]),
        .Q(buf_write[30]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next[31]),
        .Q(buf_write[31]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[32]),
        .Q(buf_write[32]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[33]),
        .Q(buf_write[33]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[34]),
        .Q(buf_write[34]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[35]),
        .Q(buf_write[35]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[36]),
        .Q(buf_write[36]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[37]),
        .Q(buf_write[37]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[38]),
        .Q(buf_write[38]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[39]),
        .Q(buf_write[39]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[3]),
        .Q(buf_write[3]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[40]),
        .Q(buf_write[40]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[41]),
        .Q(buf_write[41]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[42]),
        .Q(buf_write[42]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[43]),
        .Q(buf_write[43]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[44]),
        .Q(buf_write[44]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[45]),
        .Q(buf_write[45]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[46]),
        .Q(buf_write[46]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next[47]),
        .Q(buf_write[47]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[48] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[48]),
        .Q(buf_write[48]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[49] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[49]),
        .Q(buf_write[49]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[4]),
        .Q(buf_write[4]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[50] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[50]),
        .Q(buf_write[50]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[51] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[51]),
        .Q(buf_write[51]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[52] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[52]),
        .Q(buf_write[52]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[53] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[53]),
        .Q(buf_write[53]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[54] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[54]),
        .Q(buf_write[54]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[55] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[55]),
        .Q(buf_write[55]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[56] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[56]),
        .Q(buf_write[56]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[57] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[57]),
        .Q(buf_write[57]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[58] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[58]),
        .Q(buf_write[58]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[59] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[59]),
        .Q(buf_write[59]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[5]),
        .Q(buf_write[5]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[60] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[60]),
        .Q(buf_write[60]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[61] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[61]),
        .Q(buf_write[61]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[62] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[62]),
        .Q(buf_write[62]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[6]),
        .Q(buf_write[6]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[7]),
        .Q(buf_write[7]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[8]),
        .Q(buf_write[8]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \buf_write_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(buf_write_next__0[9]),
        .Q(buf_write[9]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  CARRY4 \counter1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED [3:2],counter14_in,\counter1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__0_n_0,i__carry_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(state_next3[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[11]_i_1 
       (.I0(counter14_in),
        .I1(\sd_dat_o_sys_reg[0]_0 ),
        .O(counter0));
  CARRY4 counter_inc_carry
       (.CI(1'b0),
        .CO({counter_inc_carry_n_0,counter_inc_carry_n_1,counter_inc_carry_n_2,counter_inc_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({D[0],p_0_in0_in,state_next3[2],state_next210_in}),
        .S({\counter_reg_n_0_[4] ,p_1_in1_in,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 counter_inc_carry__0
       (.CI(counter_inc_carry_n_0),
        .CO({counter_inc_carry__0_n_0,counter_inc_carry__0_n_1,counter_inc_carry__0_n_2,counter_inc_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_inc_carry__0_n_4,D[3:1]}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,p_1_in}));
  CARRY4 counter_inc_carry__1
       (.CI(counter_inc_carry__0_n_0),
        .CO({CO,NLW_counter_inc_carry__1_CO_UNCONNECTED[2],counter_inc_carry__1_n_2,counter_inc_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_inc_carry__1_O_UNCONNECTED[3],counter_inc_carry__1_n_5,counter_inc_carry__1_n_6,counter_inc_carry__1_n_7}),
        .S({1'b1,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE \counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(state_next3[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(counter0));
  FDRE \counter_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(counter_inc_carry__1_n_6),
        .Q(\counter_reg_n_0_[10] ),
        .R(counter0));
  FDRE \counter_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(counter_inc_carry__1_n_5),
        .Q(\counter_reg_n_0_[11] ),
        .R(counter0));
  FDRE \counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(state_next210_in),
        .Q(\counter_reg_n_0_[1] ),
        .R(counter0));
  FDRE \counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(state_next3[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(counter0));
  FDRE \counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(p_0_in0_in),
        .Q(p_1_in1_in),
        .R(counter0));
  FDRE \counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(D[0]),
        .Q(\counter_reg_n_0_[4] ),
        .R(counter0));
  FDRE \counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(D[1]),
        .Q(p_1_in),
        .R(counter0));
  FDRE \counter_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(D[2]),
        .Q(\counter_reg_n_0_[6] ),
        .R(counter0));
  FDRE \counter_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(D[3]),
        .Q(\counter_reg_n_0_[7] ),
        .R(counter0));
  FDRE \counter_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(counter_inc_carry__0_n_4),
        .Q(\counter_reg_n_0_[8] ),
        .R(counter0));
  FDRE \counter_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(counter_inc_carry__1_n_7),
        .Q(\counter_reg_n_0_[9] ),
        .R(counter0));
  LUT3 #(
    .INIT(8'h40)) 
    \dev_last_block[9]_i_2 
       (.I0(read_crc_err_reg_0),
        .I1(dat_got_block),
        .I2(\dev_blocks_read_reg[31] ),
        .O(read_crc_err_reg_1));
  LUT5 #(
    .INIT(32'h00004000)) 
    got_block_i_1
       (.I0(Q[2]),
        .I1(state),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(got_block_i_2_n_0),
        .O(got_block0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    got_block_i_2
       (.I0(\line_crc[1].line_crc_n_3 ),
        .I1(\line_crc[1].line_crc_n_31 ),
        .I2(\line_crc[1].line_crc_n_30 ),
        .I3(\line_crc[1].line_crc_n_9 ),
        .O(got_block_i_2_n_0));
  FDRE got_block_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(got_block0),
        .Q(dat_got_block),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    got_word_i_1
       (.I0(got_word_i_2_n_0),
        .I1(E),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(state),
        .O(got_word_c));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    got_word_i_2
       (.I0(p_0_in0_in),
        .I1(p_1_in1_in),
        .I2(\sd_dat_o_sys_reg[3]_1 ),
        .I3(D[1]),
        .I4(p_1_in),
        .O(got_word_i_2_n_0));
  FDRE got_word_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(got_word_c),
        .Q(dat_got_word),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h595A5A65)) 
    i__carry_i_1__0
       (.I0(\line_crc[1].line_crc_n_9 ),
        .I1(state),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000066606660000)) 
    i__carry_i_2
       (.I0(\line_crc[1].line_crc_n_3 ),
        .I1(\line_crc[0].line_crc_n_25 ),
        .I2(\line_crc[1].line_crc_n_37 ),
        .I3(\line_crc[0].line_crc_n_0 ),
        .I4(\line_crc[1].line_crc_n_0 ),
        .I5(\line_crc[1].line_crc_n_30 ),
        .O(i__carry_i_2_n_0));
  adapter_axi_sd_0_0_line_crc__parameterized0 \line_crc[0].line_crc 
       (.CO(block_data_finished0_carry__0_n_1),
        .D(\line_crc[0].line_crc_n_1 ),
        .\FSM_sequential_state[0]_i_10 (\sd_dat_o_sys_reg[3]_1 ),
        .\FSM_sequential_state[0]_i_10_0 (\block_data_finished0_inferred__0/i__carry__0_n_1 ),
        .\FSM_sequential_state[0]_i_5 (\FSM_sequential_state_reg[0]_1 ),
        .\FSM_sequential_state_reg[0] (\line_crc[0].line_crc_n_20 ),
        .\FSM_sequential_state_reg[0]_0 (\line_crc[0].line_crc_n_21 ),
        .\FSM_sequential_state_reg[0]_1 (\line_crc[0].line_crc_n_27 ),
        .\FSM_sequential_state_reg[1] (\line_crc[0].line_crc_n_4 ),
        .\FSM_sequential_state_reg[1]_0 (\line_crc[0].line_crc_n_23 ),
        .\FSM_sequential_state_reg[1]_1 (\line_crc[0].line_crc_n_24 ),
        .\FSM_sequential_state_reg[2] (\line_crc[0].line_crc_n_3 ),
        .\FSM_sequential_state_reg[3] (\line_crc[0].line_crc_n_0 ),
        .\FSM_sequential_state_reg[3]_0 (\line_crc[0].line_crc_n_25 ),
        .O({D[0],state_next210_in}),
        .Q({Q[2],state,Q[1:0]}),
        .SR(resetn1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\buf_write_reg[48] (\line_crc[1].line_crc_n_27 ),
        .\buf_write_reg[48]_0 (\buf_write_reg[48]_0 ),
        .\buf_write_reg[48]_1 (\line_crc[1].line_crc_n_28 ),
        .\buf_write_reg[48]_2 (\line_crc[1].line_crc_n_29 ),
        .\buf_write_reg[49] (\buf_write_reg[49]_0 ),
        .\buf_write_reg[50] (\buf_write_reg[50]_0 ),
        .\buf_write_reg[51] (\buf_write_reg[51]_0 ),
        .\buf_write_reg[52] (\buf_write_reg[52]_0 ),
        .\buf_write_reg[53] (\buf_write_reg[53]_0 ),
        .\buf_write_reg[54] (\buf_write_reg[54]_0 ),
        .\buf_write_reg[55] (\buf_write_reg[55]_0 ),
        .\buf_write_reg[56] (\buf_write_reg[56]_0 ),
        .\buf_write_reg[57] (\buf_write_reg[57]_0 ),
        .\buf_write_reg[58] (\buf_write_reg[58]_0 ),
        .\buf_write_reg[59] (\buf_write_reg[59]_0 ),
        .\buf_write_reg[60] (\buf_write[60]_i_2_n_0 ),
        .\buf_write_reg[61] (\buf_write[61]_i_2_n_0 ),
        .\buf_write_reg[62] (\buf_write[62]_i_3_n_0 ),
        .\crc[15]_i_10_0 (\dev_blocks_read_reg[31] ),
        .\crc[15]_i_11_0 (\FSM_sequential_state_reg[3]_1 ),
        .\crc[15]_i_11_1 (\line_crc[1].line_crc_n_39 ),
        .\crc[15]_i_11_2 (read_crc_err_reg_0),
        .\crc[15]_i_2 (\line_crc[1].line_crc_n_37 ),
        .\crc[15]_i_3 (\line_crc[1].line_crc_n_38 ),
        .\crc[15]_i_3_0 (D[2]),
        .\crc[15]_i_5_0 (\sd_dat_o_sys_reg[1]_0 ),
        .\crc_reg[0]_0 (\crc_reg[0] [0]),
        .\crc_reg[0]_1 ({buf_write[62],buf_write[58:47]}),
        .\crc_reg[0]_2 (\crc_reg[0]_0 ),
        .\crc_reg[10]_0 (\crc_reg[10] ),
        .\crc_reg[14]_0 (buf_write_next__0[62:48]),
        .\crc_reg[15]_0 (\crc_reg[15] ),
        .\crc_reg[15]_1 (\line_crc[1].line_crc_n_31 ),
        .\crc_reg[15]_2 (E),
        .dat_width_4_reg(\line_crc[0].line_crc_n_22 ),
        .\sd_clk_div_d_reg[3] (\line_crc[0].line_crc_n_26 ),
        .\sd_dat_o_sys[3]_i_2_0 (\line_crc[1].line_crc_n_35 ),
        .\sd_dat_o_sys_reg[0] (\line_crc[1].line_crc_n_33 ),
        .\sd_dat_o_sys_reg[0]_0 (\line_crc[1].line_crc_n_32 ),
        .\sd_dat_o_sys_reg[0]_1 (\sd_dat_o_sys_reg[0]_1 ),
        .\sd_dat_o_sys_reg[0]_2 (\line_crc[1].line_crc_n_9 ),
        .\sd_dat_o_sys_reg[0]_3 (\line_crc[1].line_crc_n_3 ),
        .\sd_dat_o_sys_reg[0]_4 (\line_crc[1].line_crc_n_30 ));
  adapter_axi_sd_0_0_line_crc__parameterized0_0 \line_crc[1].line_crc 
       (.CO(block_data_finished0_carry__0_n_1),
        .D(\line_crc[1].line_crc_n_8 ),
        .DI({\line_crc[1].line_crc_n_40 ,\line_crc[1].line_crc_n_41 ,\line_crc[1].line_crc_n_42 ,\line_crc[1].line_crc_n_43 }),
        .\FSM_onehot_state_reg[1] (\line_crc[1].line_crc_n_30 ),
        .\FSM_sequential_state_reg[0] (\line_crc[1].line_crc_n_4 ),
        .\FSM_sequential_state_reg[0]_0 (\line_crc[1].line_crc_n_27 ),
        .\FSM_sequential_state_reg[0]_1 (\line_crc[1].line_crc_n_32 ),
        .\FSM_sequential_state_reg[0]_2 (\line_crc[1].line_crc_n_34 ),
        .\FSM_sequential_state_reg[0]_3 (\line_crc[1].line_crc_n_35 ),
        .\FSM_sequential_state_reg[0]_4 (\line_crc[1].line_crc_n_36 ),
        .\FSM_sequential_state_reg[0]_5 (\dev_blocks_read_reg[31] ),
        .\FSM_sequential_state_reg[0]_6 (\FSM_sequential_state_reg[0]_3 ),
        .\FSM_sequential_state_reg[1] (\line_crc[1].line_crc_n_0 ),
        .\FSM_sequential_state_reg[1]_0 (\line_crc[1].line_crc_n_1 ),
        .\FSM_sequential_state_reg[1]_1 (\line_crc[1].line_crc_n_33 ),
        .\FSM_sequential_state_reg[2] (\line_crc[1].line_crc_n_3 ),
        .\FSM_sequential_state_reg[2]_0 (\line_crc[1].line_crc_n_31 ),
        .\FSM_sequential_state_reg[2]_1 (\line_crc[1].line_crc_n_37 ),
        .\FSM_sequential_state_reg[3] (\line_crc[1].line_crc_n_9 ),
        .\FSM_sequential_state_reg[3]_0 (\line_crc[1].line_crc_n_29 ),
        .\FSM_sequential_state_reg[3]_1 (read_crc_err_reg_0),
        .O({counter_inc_carry__0_n_4,D[3:1]}),
        .Q({Q[2],state,Q[1:0]}),
        .S({\line_crc[1].line_crc_n_5 ,\line_crc[1].line_crc_n_6 ,\line_crc[1].line_crc_n_7 }),
        .SR(\line_crc[1].line_crc_n_11 ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\block_data_finished0_inferred__0/i__carry ({D[0],p_0_in0_in,state_next3[2],state_next210_in}),
        .\block_data_finished0_inferred__0/i__carry__0 (\block_data_finished0_inferred__0/i__carry__0_1 ),
        .\block_data_finished0_inferred__0/i__carry__0_0 ({counter_inc_carry__1_n_5,counter_inc_carry__1_n_6,counter_inc_carry__1_n_7}),
        .\block_data_finished0_inferred__0/i__carry__0_1 (CO),
        .\block_size_reg[12] ({\line_crc[1].line_crc_n_49 ,\line_crc[1].line_crc_n_50 ,\line_crc[1].line_crc_n_51 }),
        .\block_size_reg[12]_0 ({\line_crc[1].line_crc_n_56 ,\line_crc[1].line_crc_n_57 }),
        .\block_size_reg[5] ({\line_crc[1].line_crc_n_44 ,\line_crc[1].line_crc_n_45 ,\line_crc[1].line_crc_n_46 }),
        .\block_size_reg[9] ({\line_crc[1].line_crc_n_52 ,\line_crc[1].line_crc_n_53 ,\line_crc[1].line_crc_n_54 ,\line_crc[1].line_crc_n_55 }),
        .\buf_write[59]_i_3_0 ({p_1_in,p_1_in1_in,\counter_reg_n_0_[0] }),
        .buf_write_next(buf_write_next[47]),
        .\buf_write_reg[32] (\buf_write_reg[32]_0 ),
        .\buf_write_reg[33] (\buf_write_reg[33]_0 ),
        .\buf_write_reg[34] (\buf_write_reg[34]_0 ),
        .\buf_write_reg[35] (\buf_write_reg[35]_0 ),
        .\buf_write_reg[36] (\buf_write_reg[36]_0 ),
        .\buf_write_reg[37] (\buf_write_reg[37]_0 ),
        .\buf_write_reg[38] (\buf_write_reg[38]_0 ),
        .\buf_write_reg[39] (\buf_write_reg[39]_0 ),
        .\buf_write_reg[40] (\buf_write_reg[40]_0 ),
        .\buf_write_reg[41] (\buf_write_reg[41]_0 ),
        .\buf_write_reg[42] (\buf_write_reg[42]_0 ),
        .\buf_write_reg[43] (\buf_write_reg[43]_0 ),
        .\buf_write_reg[44] (\buf_write_reg[44]_0 ),
        .\buf_write_reg[45] (\buf_write_reg[45]_0 ),
        .\buf_write_reg[46] (\buf_write_reg[46]_0 ),
        .\buf_write_reg[47] (buf_write[46:31]),
        .\buf_write_reg[47]_0 (\buf_write_reg[47]_0 ),
        .\counter_reg[0] (\line_crc[1].line_crc_n_39 ),
        .\counter_reg[11] ({\line_crc[1].line_crc_n_47 ,\line_crc[1].line_crc_n_48 }),
        .\counter_reg[11]_0 ({\line_crc[1].line_crc_n_58 ,\line_crc[1].line_crc_n_59 ,\line_crc[1].line_crc_n_60 }),
        .\counter_reg[5] (\line_crc[1].line_crc_n_28 ),
        .\crc[15]_i_16_0 (\block_data_finished0_inferred__0/i__carry__0_n_1 ),
        .\crc[15]_i_4_0 (\line_crc[0].line_crc_n_26 ),
        .\crc[15]_i_4_1 (\FSM_sequential_state_reg[0]_2 ),
        .\crc[15]_i_4_2 (\crc[15]_i_4 ),
        .\crc_reg[0]_0 (\crc_reg[0] [1:0]),
        .\crc_reg[10]_0 (\crc_reg[10]_0 ),
        .\crc_reg[12]_0 (\line_crc[0].line_crc_n_3 ),
        .\crc_reg[14]_0 (buf_write_next__0[46:32]),
        .\crc_reg[15]_0 (resetn1),
        .\crc_reg[15]_1 (\line_crc[0].line_crc_n_20 ),
        .\crc_reg[15]_2 (\crc_reg[15]_0 ),
        .dat_width_4_reg(\line_crc[1].line_crc_n_38 ),
        .\sd_clk_div_d_reg[3] (E),
        .\sd_dat_o_sys[3]_i_2 (\line_crc[0].line_crc_n_27 ),
        .\sd_dat_o_sys[3]_i_3_0 (\sd_dat_o_sys[3]_i_3 ),
        .\sd_dat_o_sys[3]_i_5 (\FSM_sequential_state_reg[0]_1 ),
        .\sd_dat_o_sys_reg[0] (\line_crc[0].line_crc_n_24 ),
        .\sd_dat_o_sys_reg[0]_0 (\line_crc[0].line_crc_n_23 ),
        .\sd_dat_o_sys_reg[0]_1 (\crc_reg[15] ),
        .\sd_dat_o_sys_reg[1] (\sd_dat_o_sys_reg[3]_1 ),
        .\sd_dat_o_sys_reg[1]_0 (\line_crc[0].line_crc_n_0 ),
        .\sd_dat_o_sys_reg[1]_1 (\sd_dat_o_sys[3]_i_4_n_0 ),
        .\sd_dat_o_sys_reg[1]_2 (\sd_dat_o_sys_reg[1]_0 ));
  adapter_axi_sd_0_0_line_crc__parameterized0_1 \line_crc[2].line_crc 
       (.D(\line_crc[2].line_crc_n_0 ),
        .Q(buf_write[30:15]),
        .SR(\line_crc[1].line_crc_n_11 ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .buf_write_next(buf_write_next[31]),
        .\buf_write_reg[16] (\line_crc[1].line_crc_n_27 ),
        .\buf_write_reg[16]_0 (\line_crc[1].line_crc_n_28 ),
        .\buf_write_reg[16]_1 (\line_crc[1].line_crc_n_29 ),
        .\buf_write_reg[24] (\buf_write_reg[24]_0 ),
        .\buf_write_reg[25] (\buf_write_reg[25]_0 ),
        .\buf_write_reg[26] (\buf_write_reg[26]_0 ),
        .\buf_write_reg[27] (\buf_write_reg[27]_0 ),
        .\buf_write_reg[28] (\buf_write_reg[28]_0 ),
        .\buf_write_reg[29] (\buf_write_reg[29]_0 ),
        .\buf_write_reg[30] (\buf_write_reg[30]_0 ),
        .\buf_write_reg[31] (\buf_write_reg[31]_0 ),
        .\crc_reg[0]_0 (\crc_reg[0] [2]),
        .\crc_reg[12]_0 (\line_crc[0].line_crc_n_3 ),
        .\crc_reg[14]_0 (buf_write_next__0[30:16]),
        .\crc_reg[15]_0 (E),
        .\crc_reg[2]_0 (\crc_reg[2]_0 ),
        .\sd_dat_o_sys_reg[2] (\line_crc[0].line_crc_n_0 ),
        .\sd_dat_o_sys_reg[2]_0 (\line_crc[1].line_crc_n_9 ),
        .\sd_dat_o_sys_reg[2]_1 (\sd_dat_o_sys[3]_i_4_n_0 ),
        .\sd_dat_o_sys_reg[2]_2 (\sd_dat_o_sys_reg[3]_1 ));
  adapter_axi_sd_0_0_line_crc__parameterized0_2 \line_crc[3].line_crc 
       (.D(\line_crc[3].line_crc_n_0 ),
        .Q(buf_write[14:0]),
        .SR(\line_crc[1].line_crc_n_11 ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .buf_write_next(buf_write_next[15]),
        .\buf_write_reg[0] (\buf_write[0]_i_2_n_0 ),
        .\buf_write_reg[10] (\buf_write_reg[10]_0 ),
        .\buf_write_reg[11] (\buf_write_reg[11]_0 ),
        .\buf_write_reg[12] (\buf_write_reg[12]_0 ),
        .\buf_write_reg[13] (\buf_write_reg[13]_0 ),
        .\buf_write_reg[14] (\buf_write_reg[14]_0 ),
        .\buf_write_reg[15] (\buf_write_reg[15]_0 ),
        .\buf_write_reg[1] (\line_crc[1].line_crc_n_27 ),
        .\buf_write_reg[1]_0 (\line_crc[1].line_crc_n_28 ),
        .\buf_write_reg[1]_1 (\line_crc[1].line_crc_n_29 ),
        .\buf_write_reg[8] (\buf_write_reg[8]_0 ),
        .\buf_write_reg[9] (\buf_write_reg[9]_0 ),
        .\crc_reg[0]_0 (\crc_reg[0] [3]),
        .\crc_reg[12]_0 (\line_crc[0].line_crc_n_3 ),
        .\crc_reg[14]_0 (buf_write_next__0[14:0]),
        .\crc_reg[15]_0 (E),
        .\crc_reg[2]_0 (\crc_reg[2] ),
        .\sd_dat_o_sys_reg[3] (\line_crc[0].line_crc_n_0 ),
        .\sd_dat_o_sys_reg[3]_0 (\line_crc[1].line_crc_n_9 ),
        .\sd_dat_o_sys_reg[3]_1 (\sd_dat_o_sys_reg[3]_1 ),
        .\sd_dat_o_sys_reg[3]_2 (\sd_dat_o_sys[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    read_block_end_i_1
       (.I0(\line_crc[1].line_crc_n_30 ),
        .I1(Q[0]),
        .I2(state),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(read_block_end_i_1_n_0));
  FDRE read_block_end_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_block_end_i_1_n_0),
        .Q(read_block_end),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE read_crc_err_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_crc_err_reg_2),
        .Q(read_crc_err_reg_0),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[10]_i_1 
       (.I0(p_0_in1_in[18]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[10]),
        .O(read_data_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[11]_i_1 
       (.I0(p_0_in1_in[26]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[11]),
        .O(read_data_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[12]_i_1 
       (.I0(p_0_in1_in[3]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[12]),
        .O(read_data_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[13]_i_1 
       (.I0(p_0_in1_in[11]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[13]),
        .O(read_data_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[14]_i_1 
       (.I0(p_0_in1_in[19]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[14]),
        .O(read_data_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[15]_i_1 
       (.I0(p_0_in1_in[27]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[15]),
        .O(read_data_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[16]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[16]),
        .O(read_data_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[17]_i_1 
       (.I0(p_0_in1_in[12]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[17]),
        .O(read_data_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[18]_i_1 
       (.I0(p_0_in1_in[20]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[18]),
        .O(read_data_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[19]_i_1 
       (.I0(p_0_in1_in[28]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[19]),
        .O(read_data_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[1]_i_1 
       (.I0(\crc_reg[0] [1]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[1]),
        .O(read_data_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[20]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[20]),
        .O(read_data_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[21]_i_1 
       (.I0(p_0_in1_in[13]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[21]),
        .O(read_data_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[22]_i_1 
       (.I0(p_0_in1_in[21]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[22]),
        .O(read_data_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[23]_i_1 
       (.I0(p_0_in1_in[29]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[23]),
        .O(read_data_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[24]_i_1 
       (.I0(p_0_in1_in[6]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[24]),
        .O(read_data_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[25]_i_1 
       (.I0(p_0_in1_in[14]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[25]),
        .O(read_data_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[26]_i_1 
       (.I0(p_0_in1_in[22]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[26]),
        .O(read_data_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[27]_i_1 
       (.I0(p_0_in1_in[30]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[27]),
        .O(read_data_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[28]_i_1 
       (.I0(p_0_in1_in[7]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[28]),
        .O(read_data_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[29]_i_1 
       (.I0(p_0_in1_in[15]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[29]),
        .O(read_data_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[2]_i_1 
       (.I0(\crc_reg[0] [2]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[2]),
        .O(read_data_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[30]_i_1 
       (.I0(p_0_in1_in[23]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[30]),
        .O(read_data_next[30]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[3]_i_1 
       (.I0(\crc_reg[0] [3]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[3]),
        .O(read_data_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[4]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[4]),
        .O(read_data_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[5]_i_1 
       (.I0(p_0_in1_in[9]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[5]),
        .O(read_data_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[6]_i_1 
       (.I0(p_0_in1_in[17]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[6]),
        .O(read_data_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[7]_i_1 
       (.I0(p_0_in1_in[25]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[7]),
        .O(read_data_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[8]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[8]),
        .O(read_data_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data[9]_i_1 
       (.I0(p_0_in1_in[10]),
        .I1(\sd_dat_o_sys_reg[3]_1 ),
        .I2(p_0_in1_in[9]),
        .O(read_data_next[9]));
  FDRE \read_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(\crc_reg[0] [0]),
        .Q(\read_data_reg[31]_0 [0]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[10]),
        .Q(\read_data_reg[31]_0 [10]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[11]),
        .Q(\read_data_reg[31]_0 [11]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[12]),
        .Q(\read_data_reg[31]_0 [12]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[13]),
        .Q(\read_data_reg[31]_0 [13]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[14]),
        .Q(\read_data_reg[31]_0 [14]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[15]),
        .Q(\read_data_reg[31]_0 [15]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[16]),
        .Q(\read_data_reg[31]_0 [16]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[17]),
        .Q(\read_data_reg[31]_0 [17]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[18]),
        .Q(\read_data_reg[31]_0 [18]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[19]),
        .Q(\read_data_reg[31]_0 [19]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[1]),
        .Q(\read_data_reg[31]_0 [1]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[20]),
        .Q(\read_data_reg[31]_0 [20]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[21]),
        .Q(\read_data_reg[31]_0 [21]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[22]),
        .Q(\read_data_reg[31]_0 [22]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[23]),
        .Q(\read_data_reg[31]_0 [23]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[24]),
        .Q(\read_data_reg[31]_0 [24]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[25]),
        .Q(\read_data_reg[31]_0 [25]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[26]),
        .Q(\read_data_reg[31]_0 [26]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[27]),
        .Q(\read_data_reg[31]_0 [27]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[28]),
        .Q(\read_data_reg[31]_0 [28]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[29]),
        .Q(\read_data_reg[31]_0 [29]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[2]),
        .Q(\read_data_reg[31]_0 [2]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[30]),
        .Q(\read_data_reg[31]_0 [30]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(p_0_in1_in[31]),
        .Q(\read_data_reg[31]_0 [31]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[3]),
        .Q(\read_data_reg[31]_0 [3]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[4]),
        .Q(\read_data_reg[31]_0 [4]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[5]),
        .Q(\read_data_reg[31]_0 [5]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[6]),
        .Q(\read_data_reg[31]_0 [6]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[7]),
        .Q(\read_data_reg[31]_0 [7]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[8]),
        .Q(\read_data_reg[31]_0 [8]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  FDRE \read_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(got_word_c),
        .D(read_data_next[9]),
        .Q(\read_data_reg[31]_0 [9]),
        .R(\sd_dat_o_sys_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h3DFF3DFDFFCCFFFF)) 
    \sd_dat_o_sys[3]_i_4 
       (.I0(\sd_dat_o_sys_reg[3]_1 ),
        .I1(\line_crc[1].line_crc_n_9 ),
        .I2(\line_crc[1].line_crc_n_30 ),
        .I3(\line_crc[1].line_crc_n_31 ),
        .I4(\crc_reg[15] ),
        .I5(\line_crc[1].line_crc_n_3 ),
        .O(\sd_dat_o_sys[3]_i_4_n_0 ));
  FDSE \sd_dat_o_sys_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\line_crc[0].line_crc_n_1 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [0]),
        .S(\sd_dat_o_sys_reg[0]_0 ));
  FDSE \sd_dat_o_sys_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\line_crc[1].line_crc_n_8 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [1]),
        .S(\sd_dat_o_sys_reg[0]_0 ));
  FDSE \sd_dat_o_sys_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\line_crc[2].line_crc_n_0 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [2]),
        .S(\sd_dat_o_sys_reg[0]_0 ));
  FDSE \sd_dat_o_sys_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\line_crc[3].line_crc_n_0 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [3]),
        .S(\sd_dat_o_sys_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \sd_dat_t_sys[3]_i_1 
       (.I0(\sd_dat_t_sys[3]_i_2_n_0 ),
        .I1(\sd_dat_t_sys[3]_i_3_n_0 ),
        .I2(\line_crc[0].line_crc_n_4 ),
        .I3(\sd_dat_t_sys[3]_i_4_n_0 ),
        .I4(\sd_dat_o_sys_reg[0]_1 ),
        .I5(\sd_dat_t_sys[3]_i_5_n_0 ),
        .O(\sd_dat_t_sys[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sd_dat_t_sys[3]_i_2 
       (.I0(\sd_dat_o_sys_reg[3]_0 [0]),
        .I1(\sd_dat_o_sys_reg[3]_0 [3]),
        .I2(\sd_dat_o_sys_reg[3]_0 [1]),
        .I3(\sd_dat_o_sys_reg[3]_0 [2]),
        .O(\sd_dat_t_sys[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sd_dat_t_sys[3]_i_3 
       (.I0(\line_crc[1].line_crc_n_3 ),
        .I1(\line_crc[0].line_crc_n_0 ),
        .O(\sd_dat_t_sys[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sd_dat_t_sys[3]_i_4 
       (.I0(\line_crc[1].line_crc_n_31 ),
        .I1(\line_crc[1].line_crc_n_30 ),
        .O(\sd_dat_t_sys[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \sd_dat_t_sys[3]_i_5 
       (.I0(\line_crc[1].line_crc_n_9 ),
        .I1(\line_crc[1].line_crc_n_30 ),
        .I2(\line_crc[0].line_crc_n_0 ),
        .I3(\line_crc[1].line_crc_n_3 ),
        .O(\sd_dat_t_sys[3]_i_5_n_0 ));
  FDSE \sd_dat_t_sys_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\sd_dat_t_sys[3]_i_1_n_0 ),
        .Q(sd_dat_t_sys),
        .S(\sd_dat_o_sys_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    wrote_new_word_i_1
       (.I0(\line_crc[1].line_crc_n_28 ),
        .I1(\sd_dat_o_sys_reg[0]_0 ),
        .I2(E),
        .I3(\buf_write[0]_i_2_n_0 ),
        .O(wrote_new_word_i_1_n_0));
  FDRE wrote_new_word_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wrote_new_word_i_1_n_0),
        .Q(dat_wrote_new_word),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "device" *) 
module adapter_axi_sd_0_0_device
   (read_block_end,
    D,
    sd_cmd_o,
    sd_cmd_t,
    sd_dat_t,
    cmd_missed1,
    last_cmd_is_acmd,
    write_ok15_in,
    dat_crc_err,
    is_inactive,
    fifo_empty,
    dat_width_4,
    Q,
    \card_status_reg[31] ,
    CO,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    \cmd_index_reg[1] ,
    SR,
    status_read,
    E,
    interrupt,
    ram_reg,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    ram_reg_9,
    ram_reg_10,
    ram_reg_11,
    ram_reg_12,
    ram_reg_13,
    ram_reg_14,
    ram_reg_15,
    ram_reg_16,
    ram_reg_17,
    ram_reg_18,
    ram_reg_19,
    ram_reg_20,
    ram_reg_21,
    ram_reg_22,
    ram_reg_23,
    ram_reg_24,
    ram_reg_25,
    ram_reg_26,
    ram_reg_27,
    ram_reg_28,
    ram_reg_29,
    ram_reg_30,
    new_cmd_saved_reg,
    got_new_cmd_out_reg_0,
    cmd_saved_missed_reg,
    cmd_missed_reg,
    device_reset_r_reg,
    \sd_dat_o_reg[3] ,
    got_acmd41_non_query_reg,
    \saved_cmd_arg_reg[31] ,
    \erase_start_reg[31] ,
    \erase_end_reg[31] ,
    \block_count_reg[31] ,
    \pre_erase_count_reg[22] ,
    ram_dev_addr,
    sd_dat3_pullup_off,
    dat_blocks_read,
    \cmd_index_reg[5] ,
    \cmd_arg_reg[19] ,
    \cmd_index_reg[5]_0 ,
    \crc_reg[10] ,
    \crc_reg[2] ,
    \crc_reg[2]_0 ,
    \crc_reg[10]_0 ,
    S_AXI_ACLK,
    \sd_clk_div_d_reg[0] ,
    sd_clk,
    sd_cmd_i,
    read_crc_err_reg,
    inactive_reg,
    empty_reg,
    dat_width_4_reg,
    no_more_write_data,
    ram_dev_data,
    S_AXI_ARESETN,
    \reg_saved_reg[24][0] ,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    S_AXI_ARVALID,
    cmd_unread,
    interrupt_0,
    cmd_saved_unread,
    device_reset_r,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[0]_2 ,
    \axi_rdata[28]_i_3 ,
    \axi_rdata[28]_i_3_0 ,
    \axi_rdata[28]_i_3_1 ,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[30]_0 ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[29]_0 ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[1] ,
    cmd_saved_missed,
    cmd_missed,
    \sd_dat_d_reg[0][3] ,
    \FSM_onehot_sys_state_reg[0] ,
    \ocr_high_byte_reg[31]_0 ,
    \size_reg[31]_0 ,
    \card_status_reg[31]_0 ,
    \card_status_reg[31]_1 ,
    data_write_en,
    ram_reg_31);
  output read_block_end;
  output [0:0]D;
  output sd_cmd_o;
  output sd_cmd_t;
  output [0:0]sd_dat_t;
  output cmd_missed1;
  output last_cmd_is_acmd;
  output write_ok15_in;
  output dat_crc_err;
  output is_inactive;
  output fifo_empty;
  output dat_width_4;
  output [31:0]Q;
  output [30:0]\card_status_reg[31] ;
  output [0:0]CO;
  output \FSM_onehot_state_reg[4]_0 ;
  output \FSM_onehot_state_reg[0]_0 ;
  output \cmd_index_reg[1] ;
  output [0:0]SR;
  output status_read;
  output [0:0]E;
  output interrupt;
  output ram_reg;
  output ram_reg_0;
  output ram_reg_1;
  output ram_reg_2;
  output ram_reg_3;
  output ram_reg_4;
  output ram_reg_5;
  output ram_reg_6;
  output ram_reg_7;
  output ram_reg_8;
  output ram_reg_9;
  output ram_reg_10;
  output ram_reg_11;
  output ram_reg_12;
  output ram_reg_13;
  output ram_reg_14;
  output ram_reg_15;
  output ram_reg_16;
  output ram_reg_17;
  output ram_reg_18;
  output ram_reg_19;
  output ram_reg_20;
  output ram_reg_21;
  output ram_reg_22;
  output ram_reg_23;
  output ram_reg_24;
  output ram_reg_25;
  output ram_reg_26;
  output ram_reg_27;
  output ram_reg_28;
  output ram_reg_29;
  output ram_reg_30;
  output new_cmd_saved_reg;
  output got_new_cmd_out_reg_0;
  output cmd_saved_missed_reg;
  output cmd_missed_reg;
  output device_reset_r_reg;
  output [3:0]\sd_dat_o_reg[3] ;
  output got_acmd41_non_query_reg;
  output [31:0]\saved_cmd_arg_reg[31] ;
  output [31:0]\erase_start_reg[31] ;
  output [31:0]\erase_end_reg[31] ;
  output [31:0]\block_count_reg[31] ;
  output [22:0]\pre_erase_count_reg[22] ;
  output [2:0]ram_dev_addr;
  output sd_dat3_pullup_off;
  output [31:0]dat_blocks_read;
  output \cmd_index_reg[5] ;
  output \cmd_arg_reg[19] ;
  output \cmd_index_reg[5]_0 ;
  output \crc_reg[10] ;
  output \crc_reg[2] ;
  output \crc_reg[2]_0 ;
  output \crc_reg[10]_0 ;
  input S_AXI_ACLK;
  input \sd_clk_div_d_reg[0] ;
  input sd_clk;
  input sd_cmd_i;
  input read_crc_err_reg;
  input inactive_reg;
  input empty_reg;
  input dat_width_4_reg;
  input no_more_write_data;
  input [31:0]ram_dev_data;
  input S_AXI_ARESETN;
  input [4:0]\reg_saved_reg[24][0] ;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_ARVALID;
  input cmd_unread;
  input [5:0]interrupt_0;
  input cmd_saved_unread;
  input device_reset_r;
  input [31:0]\axi_rdata_reg[31] ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[0]_2 ;
  input [21:0]\axi_rdata[28]_i_3 ;
  input [21:0]\axi_rdata[28]_i_3_0 ;
  input [20:0]\axi_rdata[28]_i_3_1 ;
  input \axi_rdata_reg[31]_0 ;
  input \axi_rdata_reg[31]_1 ;
  input \axi_rdata_reg[30] ;
  input \axi_rdata_reg[30]_0 ;
  input \axi_rdata_reg[29] ;
  input \axi_rdata_reg[29]_0 ;
  input \axi_rdata_reg[28] ;
  input \axi_rdata_reg[27] ;
  input \axi_rdata_reg[26] ;
  input \axi_rdata_reg[25] ;
  input \axi_rdata_reg[24] ;
  input \axi_rdata_reg[23] ;
  input \axi_rdata_reg[23]_0 ;
  input \axi_rdata_reg[22] ;
  input \axi_rdata_reg[21] ;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[19] ;
  input \axi_rdata_reg[19]_0 ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[16] ;
  input \axi_rdata_reg[15] ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[1] ;
  input cmd_saved_missed;
  input cmd_missed;
  input [3:0]\sd_dat_d_reg[0][3] ;
  input \FSM_onehot_sys_state_reg[0] ;
  input [7:0]\ocr_high_byte_reg[31]_0 ;
  input [31:0]\size_reg[31]_0 ;
  input [26:0]\card_status_reg[31]_0 ;
  input [26:0]\card_status_reg[31]_1 ;
  input data_write_en;
  input [31:0]ram_reg_31;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_sys_state_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire acmd_defined_c;
  wire [21:0]\axi_rdata[28]_i_3 ;
  wire [21:0]\axi_rdata[28]_i_3_0 ;
  wire [20:0]\axi_rdata[28]_i_3_1 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[30] ;
  wire \axi_rdata_reg[30]_0 ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_1 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire [31:0]\block_count_reg[31] ;
  wire block_limit_used;
  wire [9:5]block_size_next;
  wire card_status_keeper_n_31;
  wire card_status_keeper_n_32;
  wire card_status_keeper_n_33;
  wire card_status_keeper_n_34;
  wire card_status_keeper_n_36;
  wire card_status_keeper_n_38;
  wire card_status_keeper_n_39;
  wire card_status_keeper_n_43;
  wire card_status_keeper_n_44;
  wire card_status_keeper_n_45;
  wire card_status_keeper_n_46;
  wire card_status_keeper_n_47;
  wire card_status_keeper_n_48;
  wire card_status_keeper_n_49;
  wire card_status_keeper_n_50;
  wire card_status_keeper_n_51;
  wire card_status_keeper_n_52;
  wire card_status_keeper_n_53;
  wire card_status_keeper_n_54;
  wire card_status_keeper_n_77;
  wire card_status_keeper_n_78;
  wire card_status_keeper_n_79;
  wire [23:0]card_status_next2_out;
  wire [30:0]\card_status_reg[31] ;
  wire [26:0]\card_status_reg[31]_0 ;
  wire [26:0]\card_status_reg[31]_1 ;
  wire [28:0]card_status_resp;
  wire [28:5]card_status_resp_next;
  wire \cmd_arg_reg[19] ;
  wire cmd_crc_err_stb;
  wire cmd_crc_err_stb0;
  wire cmd_ignored_stb;
  wire cmd_ignored_stb0;
  wire cmd_illegal_stb;
  wire cmd_illegal_stb0;
  wire \cmd_index_reg[1] ;
  wire \cmd_index_reg[5] ;
  wire \cmd_index_reg[5]_0 ;
  wire cmd_info_keeper_n_10;
  wire cmd_info_keeper_n_11;
  wire cmd_info_keeper_n_12;
  wire cmd_info_keeper_n_13;
  wire cmd_info_keeper_n_14;
  wire cmd_info_keeper_n_15;
  wire cmd_info_keeper_n_18;
  wire cmd_info_keeper_n_19;
  wire cmd_info_keeper_n_20;
  wire cmd_info_keeper_n_21;
  wire cmd_info_keeper_n_22;
  wire cmd_info_keeper_n_4;
  wire cmd_info_keeper_n_5;
  wire cmd_info_keeper_n_55;
  wire cmd_info_keeper_n_56;
  wire cmd_info_keeper_n_57;
  wire cmd_info_keeper_n_58;
  wire cmd_info_keeper_n_59;
  wire cmd_info_keeper_n_6;
  wire cmd_info_keeper_n_60;
  wire cmd_info_keeper_n_61;
  wire cmd_info_keeper_n_62;
  wire cmd_info_keeper_n_63;
  wire cmd_info_keeper_n_64;
  wire cmd_info_keeper_n_65;
  wire cmd_info_keeper_n_66;
  wire cmd_info_keeper_n_7;
  wire cmd_info_keeper_n_8;
  wire cmd_info_keeper_n_9;
  wire cmd_missed;
  wire cmd_missed1;
  wire cmd_missed_reg;
  wire cmd_received_good;
  wire cmd_saved_missed;
  wire cmd_saved_missed_reg;
  wire cmd_saved_unread;
  wire \cmd_unit/p_2_in3_in ;
  wire cmd_unread;
  wire command_validator_n_2;
  wire command_validator_n_3;
  wire command_validator_n_4;
  wire command_validator_n_5;
  wire \crc_reg[10] ;
  wire \crc_reg[10]_0 ;
  wire \crc_reg[2] ;
  wire \crc_reg[2]_0 ;
  wire [12:5]dat_block_size;
  wire [31:0]dat_blocks_read;
  wire dat_controller_n_104;
  wire dat_controller_n_105;
  wire dat_controller_n_106;
  wire dat_controller_n_107;
  wire dat_controller_n_108;
  wire dat_controller_n_109;
  wire dat_controller_n_110;
  wire dat_controller_n_111;
  wire dat_controller_n_112;
  wire dat_controller_n_113;
  wire dat_controller_n_114;
  wire dat_controller_n_115;
  wire dat_controller_n_116;
  wire dat_controller_n_117;
  wire dat_controller_n_118;
  wire dat_controller_n_119;
  wire dat_controller_n_120;
  wire dat_controller_n_121;
  wire dat_controller_n_122;
  wire dat_controller_n_123;
  wire dat_controller_n_124;
  wire dat_controller_n_125;
  wire dat_controller_n_126;
  wire dat_controller_n_127;
  wire dat_controller_n_128;
  wire dat_controller_n_129;
  wire dat_controller_n_130;
  wire dat_controller_n_131;
  wire dat_controller_n_132;
  wire dat_controller_n_133;
  wire dat_controller_n_134;
  wire dat_controller_n_135;
  wire dat_controller_n_136;
  wire dat_controller_n_137;
  wire dat_controller_n_138;
  wire dat_controller_n_139;
  wire dat_controller_n_140;
  wire dat_controller_n_141;
  wire dat_controller_n_142;
  wire dat_controller_n_143;
  wire dat_controller_n_144;
  wire dat_controller_n_145;
  wire dat_controller_n_146;
  wire dat_controller_n_147;
  wire dat_controller_n_148;
  wire dat_controller_n_149;
  wire dat_controller_n_150;
  wire dat_controller_n_151;
  wire dat_controller_n_152;
  wire dat_controller_n_36;
  wire dat_controller_n_38;
  wire dat_controller_n_39;
  wire dat_controller_n_41;
  wire dat_controller_n_43;
  wire dat_controller_n_44;
  wire dat_controller_n_47;
  wire dat_controller_n_83;
  wire dat_controller_n_84;
  wire dat_controller_n_85;
  wire dat_controller_n_86;
  wire dat_controller_n_87;
  wire dat_controller_n_88;
  wire dat_controller_n_89;
  wire dat_controller_n_90;
  wire dat_controller_n_91;
  wire dat_controller_n_92;
  wire dat_controller_n_93;
  wire dat_controller_n_94;
  wire dat_controller_n_95;
  wire dat_controller_n_96;
  wire dat_controller_n_97;
  wire dat_controller_n_98;
  wire dat_crc_err;
  wire dat_got_block;
  wire dat_got_word;
  wire [31:0]dat_read_data;
  wire dat_read_mode;
  wire \dat_unit/crc_finished ;
  wire \dat_unit/p_0_in ;
  wire [3:0]\dat_unit/state ;
  wire \dat_unit/state_next214_in ;
  wire dat_width_4;
  wire dat_width_4_reg;
  wire dat_wrote_new_word;
  wire data_reading_closed;
  wire data_write_en;
  wire data_writing_closed;
  wire device_reset_r;
  wire device_reset_r_reg;
  wire empty_reg;
  wire [31:0]\erase_end_reg[31] ;
  wire erase_reset;
  wire erase_seq_error;
  wire [31:0]\erase_start_reg[31] ;
  wire fifo_empty;
  wire got_acmd41_non_query_reg;
  wire got_cmd00;
  wire got_cmd8_1;
  wire got_new_cmd;
  wire got_new_cmd_out_reg_0;
  wire ignored_c;
  wire inactive_keeper_n_10;
  wire inactive_keeper_n_11;
  wire inactive_keeper_n_12;
  wire inactive_keeper_n_13;
  wire inactive_keeper_n_14;
  wire inactive_keeper_n_15;
  wire inactive_keeper_n_16;
  wire inactive_keeper_n_17;
  wire inactive_keeper_n_18;
  wire inactive_keeper_n_19;
  wire inactive_keeper_n_2;
  wire inactive_keeper_n_20;
  wire inactive_keeper_n_21;
  wire inactive_keeper_n_22;
  wire inactive_keeper_n_23;
  wire inactive_keeper_n_24;
  wire inactive_keeper_n_25;
  wire inactive_keeper_n_26;
  wire inactive_keeper_n_27;
  wire inactive_keeper_n_28;
  wire inactive_keeper_n_29;
  wire inactive_keeper_n_30;
  wire inactive_keeper_n_31;
  wire inactive_keeper_n_32;
  wire inactive_keeper_n_33;
  wire inactive_keeper_n_34;
  wire inactive_keeper_n_35;
  wire inactive_keeper_n_36;
  wire inactive_keeper_n_37;
  wire inactive_keeper_n_38;
  wire inactive_keeper_n_39;
  wire inactive_keeper_n_4;
  wire inactive_keeper_n_40;
  wire inactive_keeper_n_41;
  wire inactive_keeper_n_42;
  wire inactive_keeper_n_43;
  wire inactive_keeper_n_44;
  wire inactive_keeper_n_45;
  wire inactive_keeper_n_46;
  wire inactive_keeper_n_47;
  wire inactive_keeper_n_48;
  wire inactive_keeper_n_5;
  wire inactive_keeper_n_8;
  wire inactive_keeper_n_9;
  wire inactive_reg;
  wire initialization_done;
  wire interrupt;
  wire [5:0]interrupt_0;
  wire invalid_dat_width;
  wire is_inactive;
  wire [5:0]last_cmd_index;
  wire last_cmd_is_acmd;
  wire last_cmd_valid;
  wire multi_block_mode_next;
  wire new_cmd_saved_reg;
  wire new_sd_clk;
  wire no_more_write_data;
  wire [7:0]\ocr_high_byte_reg[31]_0 ;
  wire \ocr_high_byte_reg_n_0_[24] ;
  wire \ocr_high_byte_reg_n_0_[25] ;
  wire \ocr_high_byte_reg_n_0_[26] ;
  wire \ocr_high_byte_reg_n_0_[27] ;
  wire \ocr_high_byte_reg_n_0_[28] ;
  wire \ocr_high_byte_reg_n_0_[29] ;
  wire \ocr_high_byte_reg_n_0_[30] ;
  wire out_of_range;
  wire p_1_in;
  wire p_3_out;
  wire [12:12]p_3_out_1;
  wire p_6_out;
  wire p_8_out;
  wire p_9_out;
  wire [22:0]\pre_erase_count_reg[22] ;
  wire [2:0]ram_dev_addr;
  wire [31:0]ram_dev_data;
  wire ram_reg;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_10;
  wire ram_reg_11;
  wire ram_reg_12;
  wire ram_reg_13;
  wire ram_reg_14;
  wire ram_reg_15;
  wire ram_reg_16;
  wire ram_reg_17;
  wire ram_reg_18;
  wire ram_reg_19;
  wire ram_reg_2;
  wire ram_reg_20;
  wire ram_reg_21;
  wire ram_reg_22;
  wire ram_reg_23;
  wire ram_reg_24;
  wire ram_reg_25;
  wire ram_reg_26;
  wire ram_reg_27;
  wire ram_reg_28;
  wire ram_reg_29;
  wire ram_reg_3;
  wire ram_reg_30;
  wire [31:0]ram_reg_31;
  wire ram_reg_4;
  wire ram_reg_5;
  wire ram_reg_6;
  wire ram_reg_7;
  wire ram_reg_8;
  wire ram_reg_9;
  wire range_check_n_2;
  wire [15:0]rca;
  wire rca_match;
  wire read_block_end;
  wire read_crc_err_reg;
  wire [4:0]\reg_saved_reg[24][0] ;
  wire resetn;
  wire [7:0]resp_byte;
  wire [7:0]resp_byte_next;
  wire [2:1]resp_cur;
  wire [4:0]resp_len_bytes;
  wire [4:0]resp_len_next;
  wire [2:0]resp_next;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire [1:0]resp_pos1;
  wire save_current_cmd;
  wire [31:0]\saved_cmd_arg_reg[31] ;
  wire sd_bus_interface_n_101;
  wire sd_bus_interface_n_102;
  wire sd_bus_interface_n_11;
  wire sd_bus_interface_n_111;
  wire sd_bus_interface_n_112;
  wire sd_bus_interface_n_116;
  wire sd_bus_interface_n_127;
  wire sd_bus_interface_n_129;
  wire sd_bus_interface_n_131;
  wire sd_bus_interface_n_133;
  wire sd_bus_interface_n_134;
  wire sd_bus_interface_n_135;
  wire sd_bus_interface_n_136;
  wire sd_bus_interface_n_137;
  wire sd_bus_interface_n_138;
  wire sd_bus_interface_n_139;
  wire sd_bus_interface_n_14;
  wire sd_bus_interface_n_140;
  wire sd_bus_interface_n_141;
  wire sd_bus_interface_n_142;
  wire sd_bus_interface_n_144;
  wire sd_bus_interface_n_146;
  wire sd_bus_interface_n_147;
  wire sd_bus_interface_n_148;
  wire sd_bus_interface_n_149;
  wire sd_bus_interface_n_150;
  wire sd_bus_interface_n_151;
  wire sd_bus_interface_n_152;
  wire sd_bus_interface_n_153;
  wire sd_bus_interface_n_154;
  wire sd_bus_interface_n_155;
  wire sd_bus_interface_n_156;
  wire sd_bus_interface_n_157;
  wire sd_bus_interface_n_158;
  wire sd_bus_interface_n_159;
  wire sd_bus_interface_n_160;
  wire sd_bus_interface_n_161;
  wire sd_bus_interface_n_162;
  wire sd_bus_interface_n_163;
  wire sd_bus_interface_n_164;
  wire sd_bus_interface_n_165;
  wire sd_bus_interface_n_166;
  wire sd_bus_interface_n_167;
  wire sd_bus_interface_n_168;
  wire sd_bus_interface_n_169;
  wire sd_bus_interface_n_170;
  wire sd_bus_interface_n_171;
  wire sd_bus_interface_n_172;
  wire sd_bus_interface_n_173;
  wire sd_bus_interface_n_174;
  wire sd_bus_interface_n_175;
  wire sd_bus_interface_n_176;
  wire sd_bus_interface_n_177;
  wire sd_bus_interface_n_178;
  wire sd_bus_interface_n_59;
  wire sd_bus_interface_n_63;
  wire sd_bus_interface_n_68;
  wire sd_bus_interface_n_69;
  wire sd_bus_interface_n_70;
  wire sd_bus_interface_n_79;
  wire sd_bus_interface_n_80;
  wire sd_bus_interface_n_81;
  wire sd_bus_interface_n_82;
  wire sd_bus_interface_n_83;
  wire sd_bus_interface_n_84;
  wire sd_bus_interface_n_85;
  wire sd_bus_interface_n_86;
  wire sd_bus_interface_n_87;
  wire sd_bus_interface_n_88;
  wire sd_bus_interface_n_90;
  wire sd_bus_interface_n_92;
  wire sd_bus_interface_n_93;
  wire sd_bus_interface_n_94;
  wire sd_bus_interface_n_95;
  wire sd_bus_interface_n_96;
  wire sd_bus_interface_n_97;
  wire sd_bus_interface_n_98;
  wire sd_bus_interface_n_99;
  wire sd_clk;
  wire \sd_clk_div_d_reg[0] ;
  wire sd_cmd_i;
  wire sd_cmd_o;
  wire sd_cmd_t;
  wire sd_dat3_pullup_off;
  wire [3:0]\sd_dat_d_reg[0][3] ;
  wire [3:0]\sd_dat_o_reg[3] ;
  wire [0:0]sd_dat_t;
  wire send_no_resp;
  wire send_no_resp0;
  wire send_resp;
  wire sent_r1;
  wire [31:0]\size_reg[31]_0 ;
  wire \size_reg_n_0_[0] ;
  wire \size_reg_n_0_[10] ;
  wire \size_reg_n_0_[11] ;
  wire \size_reg_n_0_[12] ;
  wire \size_reg_n_0_[13] ;
  wire \size_reg_n_0_[14] ;
  wire \size_reg_n_0_[15] ;
  wire \size_reg_n_0_[16] ;
  wire \size_reg_n_0_[17] ;
  wire \size_reg_n_0_[18] ;
  wire \size_reg_n_0_[19] ;
  wire \size_reg_n_0_[1] ;
  wire \size_reg_n_0_[20] ;
  wire \size_reg_n_0_[21] ;
  wire \size_reg_n_0_[22] ;
  wire \size_reg_n_0_[23] ;
  wire \size_reg_n_0_[24] ;
  wire \size_reg_n_0_[25] ;
  wire \size_reg_n_0_[26] ;
  wire \size_reg_n_0_[27] ;
  wire \size_reg_n_0_[28] ;
  wire \size_reg_n_0_[29] ;
  wire \size_reg_n_0_[2] ;
  wire \size_reg_n_0_[30] ;
  wire \size_reg_n_0_[31] ;
  wire \size_reg_n_0_[3] ;
  wire \size_reg_n_0_[4] ;
  wire \size_reg_n_0_[5] ;
  wire \size_reg_n_0_[6] ;
  wire \size_reg_n_0_[7] ;
  wire \size_reg_n_0_[8] ;
  wire \size_reg_n_0_[9] ;
  wire [3:0]state;
  wire [4:0]state_next__0;
  wire [6:1]state_next__0_0;
  wire status_read;
  wire update_2;
  wire valid_c1_out;
  wire write_ok15_in;

  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[0]),
        .Q(state[0]),
        .S(inactive_keeper_n_9));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[1]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(inactive_keeper_n_9));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[2]),
        .Q(state[2]),
        .R(inactive_keeper_n_9));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[3]),
        .Q(state[3]),
        .R(inactive_keeper_n_9));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(state_next__0[4]),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(inactive_keeper_n_9));
  adapter_axi_sd_0_0_card_status_keeper card_status_keeper
       (.CO(rca_match),
        .D({state_next__0_0[6],state_next__0_0[4],state_next__0_0[1]}),
        .\FSM_onehot_state_reg[0] (card_status_keeper_n_49),
        .\FSM_onehot_state_reg[1] (dat_controller_n_86),
        .\FSM_onehot_state_reg[1]_0 (dat_controller_n_106),
        .\FSM_onehot_state_reg[1]_1 (dat_controller_n_47),
        .\FSM_onehot_state_reg[2] (card_status_keeper_n_45),
        .\FSM_onehot_state_reg[3] (card_status_keeper_n_48),
        .\FSM_onehot_state_reg[6] (card_status_keeper_n_47),
        .\FSM_onehot_state_reg[6]_0 (sd_bus_interface_n_178),
        .\FSM_onehot_state_reg[6]_1 (dat_controller_n_90),
        .Q({data_writing_closed,dat_controller_n_38,dat_controller_n_39,data_reading_closed,dat_controller_n_41,dat_read_mode,dat_controller_n_43}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .acmd_defined_c(acmd_defined_c),
        .acmd_defined_reg(sd_bus_interface_n_135),
        .\card_status[11]_i_4 (sd_bus_interface_n_127),
        .\card_status_reg[10]_0 (card_status_keeper_n_31),
        .\card_status_reg[10]_1 (card_status_keeper_n_32),
        .\card_status_reg[10]_2 (cmd_info_keeper_n_18),
        .\card_status_reg[10]_3 (sd_bus_interface_n_136),
        .\card_status_reg[11]_0 (card_status_keeper_n_34),
        .\card_status_reg[11]_1 (card_status_keeper_n_50),
        .\card_status_reg[11]_2 (card_status_keeper_n_52),
        .\card_status_reg[11]_3 (sd_bus_interface_n_90),
        .\card_status_reg[23]_0 ({card_status_next2_out[23:22],card_status_next2_out[19],card_status_next2_out[7],card_status_next2_out[5:0]}),
        .\card_status_reg[31]_0 (\card_status_reg[31] ),
        .\card_status_reg[31]_1 (inactive_keeper_n_9),
        .\card_status_reg[31]_2 ({\card_status_reg[31]_0 [26:19],\card_status_reg[31]_0 [16:15],\card_status_reg[31]_0 [13:8],\card_status_reg[31]_0 [6]}),
        .\card_status_reg[31]_3 (range_check_n_2),
        .\card_status_reg[31]_4 ({\card_status_reg[31]_1 [26:19],\card_status_reg[31]_1 [16:15],\card_status_reg[31]_1 [13:8],\card_status_reg[31]_1 [6]}),
        .\card_status_reg[9]_0 (card_status_keeper_n_33),
        .\card_status_reg[9]_1 (card_status_keeper_n_38),
        .\card_status_reg[9]_2 (card_status_keeper_n_39),
        .\card_status_reg[9]_3 (card_status_keeper_n_43),
        .\card_status_reg[9]_4 (card_status_keeper_n_44),
        .\card_status_reg[9]_5 (card_status_keeper_n_46),
        .\card_status_reg[9]_6 (card_status_keeper_n_51),
        .\card_status_reg[9]_7 (sd_bus_interface_n_92),
        .\card_status_resp_reg[10]_0 (card_status_keeper_n_54),
        .\card_status_resp_reg[14]_0 (card_status_keeper_n_78),
        .\card_status_resp_reg[15]_0 (card_status_keeper_n_79),
        .\card_status_resp_reg[28]_0 ({card_status_resp[28:27],card_status_resp[25:22],card_status_resp[20:19],card_status_resp[17:16],card_status_resp[11:0]}),
        .\card_status_resp_reg[28]_1 ({card_status_resp_next[28],card_status_resp_next[13],card_status_resp_next[5]}),
        .\card_status_resp_reg[29]_0 (card_status_keeper_n_77),
        .\card_status_resp_reg[8]_0 (dat_controller_n_44),
        .cmd_crc_err_stb(cmd_crc_err_stb),
        .cmd_ignored_stb(cmd_ignored_stb),
        .cmd_illegal_stb(cmd_illegal_stb),
        .cmd_illegal_stb_reg(card_status_keeper_n_53),
        .\cmd_index_reg[4] (card_status_keeper_n_36),
        .erase_reset(erase_reset),
        .erase_seq_error(erase_seq_error),
        .ignored_c(ignored_c),
        .invalid_dat_width(invalid_dat_width),
        .no_more_write_data(no_more_write_data),
        .out_of_range(out_of_range),
        .p_3_out(p_3_out_1),
        .\resp_byte[5]_i_4 (sd_bus_interface_n_69),
        .\resp_byte[5]_i_4_0 (sd_bus_interface_n_111),
        .\resp_byte[5]_i_4_1 ({last_cmd_index[5],last_cmd_index[2]}),
        .\resp_byte[7]_i_2 (resp_pos1),
        .\resp_byte[7]_i_2_0 (\cmd_unit/p_2_in3_in ),
        .sent_r1(sent_r1),
        .update_2(update_2),
        .valid_c1_out(valid_c1_out),
        .valid_i_3_0(sd_bus_interface_n_144),
        .valid_i_3_1(sd_bus_interface_n_142),
        .valid_i_6_0(sd_bus_interface_n_140),
        .valid_reg(sd_bus_interface_n_131),
        .valid_reg_0(sd_bus_interface_n_141),
        .valid_reg_i_5_0(sd_bus_interface_n_134));
  FDRE cmd_crc_err_stb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cmd_crc_err_stb0),
        .Q(cmd_crc_err_stb),
        .R(inactive_keeper_n_9));
  FDRE cmd_ignored_stb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cmd_ignored_stb0),
        .Q(cmd_ignored_stb),
        .R(inactive_keeper_n_9));
  FDRE cmd_illegal_stb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(cmd_illegal_stb0),
        .Q(cmd_illegal_stb),
        .R(inactive_keeper_n_9));
  adapter_axi_sd_0_0_cmd_info_keeper cmd_info_keeper
       (.E(p_6_out),
        .Q(last_cmd_index),
        .S({cmd_info_keeper_n_19,cmd_info_keeper_n_20,cmd_info_keeper_n_21,cmd_info_keeper_n_22}),
        .SR(sd_bus_interface_n_112),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\axi_rdata[0]_i_3 (\reg_saved_reg[24][0] [1:0]),
        .\axi_rdata[26]_i_3 ({\axi_rdata[28]_i_3 [19:17],\axi_rdata[28]_i_3 [6:0]}),
        .\axi_rdata[26]_i_3_0 ({\axi_rdata[28]_i_3_0 [19:17],\axi_rdata[28]_i_3_0 [6:0]}),
        .\axi_rdata[26]_i_3_1 ({\axi_rdata[28]_i_3_1 [18:16],\axi_rdata[28]_i_3_1 [6:0]}),
        .\block_count_reg[15]_0 ({cmd_info_keeper_n_55,cmd_info_keeper_n_56,cmd_info_keeper_n_57,cmd_info_keeper_n_58}),
        .\block_count_reg[23]_0 ({cmd_info_keeper_n_59,cmd_info_keeper_n_60,cmd_info_keeper_n_61,cmd_info_keeper_n_62}),
        .\block_count_reg[31]_0 (\block_count_reg[31] ),
        .\block_count_reg[31]_1 ({cmd_info_keeper_n_63,cmd_info_keeper_n_64,cmd_info_keeper_n_65,cmd_info_keeper_n_66}),
        .block_limit_used(block_limit_used),
        .\card_status_resp_reg[28] ({\card_status_reg[31] [27],\card_status_reg[31] [12]}),
        .cmd_saved_missed(cmd_saved_missed),
        .cmd_saved_missed_reg(cmd_saved_missed_reg),
        .cmd_saved_missed_reg_0(status_read),
        .cmd_saved_unread(cmd_saved_unread),
        .\erase_end_reg[31]_0 (\erase_end_reg[31] ),
        .erase_reset(erase_reset),
        .erase_reset_reg_0(sd_bus_interface_n_133),
        .erase_reset_reg_1(\FSM_onehot_state_reg[0]_0 ),
        .erase_seq_error(erase_seq_error),
        .erase_seq_error_reg_0(cmd_info_keeper_n_18),
        .erase_seq_error_reg_1({card_status_resp_next[28],card_status_resp_next[13]}),
        .erase_seq_error_reg_2(sd_bus_interface_n_97),
        .\erase_start_reg[31]_0 (\erase_start_reg[31] ),
        .\erase_step_reg[0]_0 (cmd_info_keeper_n_5),
        .\erase_step_reg[0]_1 (sd_bus_interface_n_94),
        .\erase_step_reg[1]_0 (cmd_info_keeper_n_4),
        .\erase_step_reg[1]_1 (sd_bus_interface_n_93),
        .got_cmd8_1(got_cmd8_1),
        .got_cmd8_1_reg_0(sd_bus_interface_n_95),
        .got_cmd8_reg_0(inactive_keeper_n_9),
        .invalid_dat_width(invalid_dat_width),
        .new_cmd_saved_reg_0(new_cmd_saved_reg),
        .out_of_range(out_of_range),
        .\pre_erase_count_reg[22]_0 (\pre_erase_count_reg[22] ),
        .\reg_saved_reg[19][0] (cmd_info_keeper_n_6),
        .\reg_saved_reg[19][1] (cmd_info_keeper_n_7),
        .\reg_saved_reg[19][24] (cmd_info_keeper_n_13),
        .\reg_saved_reg[19][25] (cmd_info_keeper_n_14),
        .\reg_saved_reg[19][26] (cmd_info_keeper_n_15),
        .\reg_saved_reg[19][2] (cmd_info_keeper_n_8),
        .\reg_saved_reg[19][3] (cmd_info_keeper_n_9),
        .\reg_saved_reg[19][4] (cmd_info_keeper_n_10),
        .\reg_saved_reg[19][5] (cmd_info_keeper_n_11),
        .\reg_saved_reg[19][6] (cmd_info_keeper_n_12),
        .\save_block_count_vars[1].block_count_vars_reg[1][22]_0 (p_3_out),
        .save_current_cmd(save_current_cmd),
        .\save_erase_vars[0].erase_vars_reg[0][31]_0 (p_9_out),
        .\save_erase_vars[1].erase_vars_reg[1][31]_0 (Q),
        .\save_erase_vars[1].erase_vars_reg[1][31]_1 (p_8_out),
        .\saved_cmd_arg_reg[31]_0 (\saved_cmd_arg_reg[31] ),
        .saved_cmd_is_acmd_reg_0(last_cmd_is_acmd),
        .state_next4_carry(dat_blocks_read[3:1]),
        .state_next4_carry_0(dat_blocks_read[0]),
        .state_next4_carry_1(dat_blocks_read[7:4]),
        .state_next4_carry__0(dat_blocks_read[11:8]),
        .state_next4_carry__0_0(dat_blocks_read[15:12]),
        .state_next4_carry__1(dat_blocks_read[19:16]),
        .state_next4_carry__1_0(dat_blocks_read[23:20]),
        .state_next4_carry__2(dat_blocks_read[27:24]),
        .state_next4_carry__2_0(dat_blocks_read[31:28]),
        .update_2(update_2));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h0000EA00)) 
    cmd_missed_i_1
       (.I0(cmd_missed),
        .I1(got_new_cmd),
        .I2(cmd_unread),
        .I3(S_AXI_ARESETN),
        .I4(status_read),
        .O(cmd_missed_reg));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    cmd_unread_i_1
       (.I0(got_new_cmd),
        .I1(status_read),
        .I2(cmd_unread),
        .O(got_new_cmd_out_reg_0));
  adapter_axi_sd_0_0_command_validator command_validator
       (.Q({\FSM_onehot_state_reg_n_0_[4] ,state[3:2],\FSM_onehot_state_reg_n_0_[1] ,state[0]}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .acmd_defined_c(acmd_defined_c),
        .acmd_defined_reg_0(last_cmd_is_acmd),
        .\axi_rdata[14]_i_3 (\reg_saved_reg[24][0] [1:0]),
        .\axi_rdata[17]_i_3 (\axi_rdata[28]_i_3 [15:13]),
        .\axi_rdata[17]_i_3_0 (\axi_rdata[28]_i_3_0 [15:13]),
        .\axi_rdata[17]_i_3_1 (\axi_rdata[28]_i_3_1 [14:12]),
        .cmd_ignored_stb0(cmd_ignored_stb0),
        .cmd_illegal_stb0(cmd_illegal_stb0),
        .cmd_received_good(cmd_received_good),
        .ignored_c(ignored_c),
        .illegal_reg_0(sd_bus_interface_n_129),
        .last_cmd_valid(last_cmd_valid),
        .\reg_saved_reg[19][14] (command_validator_n_2),
        .\reg_saved_reg[19][16] (command_validator_n_3),
        .\reg_saved_reg[19][17] (command_validator_n_4),
        .send_no_resp0(send_no_resp0),
        .send_resp(send_resp),
        .valid_c1_out(valid_c1_out),
        .valid_reg_0(command_validator_n_5),
        .valid_reg_1(inactive_keeper_n_9));
  adapter_axi_sd_0_0_dat_controller dat_controller
       (.CO(CO),
        .D({state_next__0_0[6],state_next__0_0[4],state_next__0_0[1]}),
        .E(sd_bus_interface_n_70),
        .\FSM_onehot_state[0]_i_3_0 (card_status_keeper_n_52),
        .\FSM_onehot_state[2]_i_2_0 (card_status_keeper_n_33),
        .\FSM_onehot_state[2]_i_2_1 (dat_crc_err),
        .\FSM_onehot_state[3]_i_7_0 ({cmd_info_keeper_n_63,cmd_info_keeper_n_64,cmd_info_keeper_n_65,cmd_info_keeper_n_66}),
        .\FSM_onehot_state_reg[0]_0 (sd_bus_interface_n_178),
        .\FSM_onehot_state_reg[0]_1 (card_status_keeper_n_49),
        .\FSM_onehot_state_reg[1]_0 (dat_controller_n_36),
        .\FSM_onehot_state_reg[1]_1 (dat_controller_n_83),
        .\FSM_onehot_state_reg[1]_2 (dat_controller_n_85),
        .\FSM_onehot_state_reg[1]_3 (dat_controller_n_87),
        .\FSM_onehot_state_reg[1]_4 (dat_controller_n_88),
        .\FSM_onehot_state_reg[1]_5 (dat_controller_n_151),
        .\FSM_onehot_state_reg[2]_0 (dat_controller_n_90),
        .\FSM_onehot_state_reg[2]_1 (dat_controller_n_106),
        .\FSM_onehot_state_reg[2]_2 (card_status_keeper_n_46),
        .\FSM_onehot_state_reg[4]_0 (\FSM_onehot_state_reg[4]_0 ),
        .\FSM_onehot_state_reg[4]_1 (dat_controller_n_89),
        .\FSM_onehot_state_reg[4]_2 (dat_controller_n_91),
        .\FSM_onehot_state_reg[5]_0 (dat_controller_n_93),
        .\FSM_onehot_state_reg[5]_1 (card_status_keeper_n_32),
        .\FSM_onehot_state_reg[5]_2 (card_status_keeper_n_44),
        .\FSM_onehot_state_reg[6]_0 (dat_controller_n_105),
        .\FSM_onehot_sys_state[2]_i_4 (card_status_keeper_n_47),
        .\FSM_onehot_sys_state[2]_i_4_0 (card_status_keeper_n_31),
        .\FSM_onehot_sys_state_reg[0]_0 (card_status_keeper_n_48),
        .\FSM_onehot_sys_state_reg[0]_1 (card_status_keeper_n_43),
        .\FSM_onehot_sys_state_reg[0]_2 (card_status_keeper_n_45),
        .\FSM_onehot_sys_state_reg[0]_3 (\FSM_onehot_sys_state_reg[0] ),
        .\FSM_onehot_sys_state_reg[2]_0 (dat_controller_n_86),
        .\FSM_sequential_state[1]_i_2 ({\dat_unit/state [3],\dat_unit/state [1:0]}),
        .\FSM_sequential_state_reg[1] (dat_controller_n_92),
        .\FSM_sequential_state_reg[1]_0 (sd_bus_interface_n_102),
        .\FSM_sequential_state_reg[1]_1 (sd_bus_interface_n_101),
        .O({sd_bus_interface_n_11,\dat_unit/state_next214_in ,\dat_unit/p_0_in }),
        .Q({data_writing_closed,dat_controller_n_38,dat_controller_n_39,data_reading_closed,dat_controller_n_41,dat_read_mode,dat_controller_n_43}),
        .S({cmd_info_keeper_n_19,cmd_info_keeper_n_20,cmd_info_keeper_n_21,cmd_info_keeper_n_22}),
        .SR(write_ok15_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\addr_write_reg[3] (dat_controller_n_84),
        .\addr_write_reg[9] (dat_controller_n_44),
        .\axi_araddr_reg[2] (status_read),
        .axi_arready_reg(E),
        .\axi_rdata[28]_i_3 (\axi_rdata[28]_i_3 [21:20]),
        .\axi_rdata[28]_i_3_0 (\axi_rdata[28]_i_3_0 [21:20]),
        .\axi_rdata[28]_i_3_1 (\axi_rdata[28]_i_3_1 [20:19]),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_0 ),
        .\axi_rdata_reg[0]_1 (\axi_rdata_reg[0]_1 ),
        .\axi_rdata_reg[0]_2 (\axi_rdata_reg[0]_2 ),
        .\axi_rdata_reg[0]_3 (cmd_info_keeper_n_6),
        .\axi_rdata_reg[10] (\axi_rdata_reg[10] ),
        .\axi_rdata_reg[10]_0 (sd_bus_interface_n_84),
        .\axi_rdata_reg[11] (\axi_rdata_reg[11] ),
        .\axi_rdata_reg[11]_0 (sd_bus_interface_n_85),
        .\axi_rdata_reg[12] (\axi_rdata_reg[12] ),
        .\axi_rdata_reg[12]_0 (sd_bus_interface_n_86),
        .\axi_rdata_reg[13] (\axi_rdata_reg[13] ),
        .\axi_rdata_reg[13]_0 (sd_bus_interface_n_87),
        .\axi_rdata_reg[14] (\axi_rdata_reg[14] ),
        .\axi_rdata_reg[14]_0 (command_validator_n_2),
        .\axi_rdata_reg[15] (\axi_rdata_reg[15] ),
        .\axi_rdata_reg[15]_0 (\axi_rdata_reg[15]_0 ),
        .\axi_rdata_reg[16] (\axi_rdata_reg[16] ),
        .\axi_rdata_reg[16]_0 (command_validator_n_3),
        .\axi_rdata_reg[17] (\axi_rdata_reg[17] ),
        .\axi_rdata_reg[17]_0 (command_validator_n_4),
        .\axi_rdata_reg[18] (\axi_rdata_reg[18] ),
        .\axi_rdata_reg[18]_0 (\axi_rdata_reg[18]_0 ),
        .\axi_rdata_reg[19] (\axi_rdata_reg[19] ),
        .\axi_rdata_reg[19]_0 (\axi_rdata_reg[19]_0 ),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .\axi_rdata_reg[1]_0 (cmd_info_keeper_n_7),
        .\axi_rdata_reg[20] (\axi_rdata_reg[20] ),
        .\axi_rdata_reg[20]_0 (\axi_rdata_reg[20]_0 ),
        .\axi_rdata_reg[21] (\axi_rdata_reg[21] ),
        .\axi_rdata_reg[21]_0 (\axi_rdata_reg[21]_0 ),
        .\axi_rdata_reg[22] (\axi_rdata_reg[22] ),
        .\axi_rdata_reg[22]_0 (inactive_keeper_n_5),
        .\axi_rdata_reg[23] (\axi_rdata_reg[23] ),
        .\axi_rdata_reg[23]_0 (\axi_rdata_reg[23]_0 ),
        .\axi_rdata_reg[24] (\axi_rdata_reg[24] ),
        .\axi_rdata_reg[24]_0 (cmd_info_keeper_n_13),
        .\axi_rdata_reg[25] (\axi_rdata_reg[25] ),
        .\axi_rdata_reg[25]_0 (cmd_info_keeper_n_14),
        .\axi_rdata_reg[26] (\axi_rdata_reg[26] ),
        .\axi_rdata_reg[26]_0 (cmd_info_keeper_n_15),
        .\axi_rdata_reg[27] (\axi_rdata_reg[27] ),
        .\axi_rdata_reg[28] (\axi_rdata_reg[28] ),
        .\axi_rdata_reg[29] (\axi_rdata_reg[29] ),
        .\axi_rdata_reg[29]_0 (\axi_rdata_reg[29]_0 ),
        .\axi_rdata_reg[2] (\axi_rdata_reg[2] ),
        .\axi_rdata_reg[2]_0 (cmd_info_keeper_n_8),
        .\axi_rdata_reg[30] (\axi_rdata_reg[30] ),
        .\axi_rdata_reg[30]_0 (\axi_rdata_reg[30]_0 ),
        .\axi_rdata_reg[31] (\axi_rdata_reg[31] ),
        .\axi_rdata_reg[31]_0 (\axi_rdata_reg[31]_0 ),
        .\axi_rdata_reg[31]_1 (\axi_rdata_reg[31]_1 ),
        .\axi_rdata_reg[3] (\axi_rdata_reg[3] ),
        .\axi_rdata_reg[3]_0 (cmd_info_keeper_n_9),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4] ),
        .\axi_rdata_reg[4]_0 (cmd_info_keeper_n_10),
        .\axi_rdata_reg[5] (\axi_rdata_reg[5] ),
        .\axi_rdata_reg[5]_0 (cmd_info_keeper_n_11),
        .\axi_rdata_reg[6] (\axi_rdata_reg[6] ),
        .\axi_rdata_reg[6]_0 (cmd_info_keeper_n_12),
        .\axi_rdata_reg[7] (\axi_rdata_reg[7] ),
        .\axi_rdata_reg[7]_0 (\axi_rdata_reg[7]_0 ),
        .\axi_rdata_reg[8] (\axi_rdata_reg[8] ),
        .\axi_rdata_reg[8]_0 (sd_bus_interface_n_82),
        .\axi_rdata_reg[9] (\axi_rdata_reg[9] ),
        .\axi_rdata_reg[9]_0 (sd_bus_interface_n_83),
        .block_data_finished0_carry__0(sd_bus_interface_n_14),
        .\block_data_finished0_inferred__0/i__carry (\dat_unit/crc_finished ),
        .block_limit_used(block_limit_used),
        .\block_size_reg[12]_0 ({dat_block_size[12],dat_block_size[9],dat_block_size[7:5]}),
        .\block_size_reg[12]_1 (dat_controller_n_152),
        .\block_size_reg[12]_2 ({sd_bus_interface_n_63,block_size_next[9],block_size_next[7:5]}),
        .\block_size_reg[7]_0 (dat_controller_n_98),
        .\block_size_reg[7]_1 (dat_controller_n_104),
        .\card_status[11]_i_4 (\card_status_reg[31] [11:9]),
        .cmd_saved_unread(cmd_saved_unread),
        .cmd_unread(cmd_unread),
        .dat_got_block(dat_got_block),
        .dat_got_word(dat_got_word),
        .dat_width_4_reg_0(dat_width_4),
        .dat_width_4_reg_1(dat_controller_n_96),
        .dat_width_4_reg_10(dat_controller_n_144),
        .dat_width_4_reg_11(dat_controller_n_145),
        .dat_width_4_reg_12(dat_controller_n_146),
        .dat_width_4_reg_13(dat_controller_n_147),
        .dat_width_4_reg_14(dat_controller_n_148),
        .dat_width_4_reg_15(dat_controller_n_149),
        .dat_width_4_reg_16(dat_controller_n_150),
        .dat_width_4_reg_17(inactive_keeper_n_9),
        .dat_width_4_reg_18(dat_width_4_reg),
        .dat_width_4_reg_2(dat_controller_n_97),
        .dat_width_4_reg_3(dat_controller_n_137),
        .dat_width_4_reg_4(dat_controller_n_138),
        .dat_width_4_reg_5(dat_controller_n_139),
        .dat_width_4_reg_6(dat_controller_n_140),
        .dat_width_4_reg_7(dat_controller_n_141),
        .dat_width_4_reg_8(dat_controller_n_142),
        .dat_width_4_reg_9(dat_controller_n_143),
        .dat_wrote_new_word(dat_wrote_new_word),
        .data_write_en(data_write_en),
        .\dev_blocks_read_reg[0]_0 (dat_blocks_read[0]),
        .\dev_blocks_read_reg[11]_0 (dat_blocks_read[11:8]),
        .\dev_blocks_read_reg[15]_0 (dat_blocks_read[15:12]),
        .\dev_blocks_read_reg[19]_0 (dat_blocks_read[19:16]),
        .\dev_blocks_read_reg[23]_0 (dat_blocks_read[23:20]),
        .\dev_blocks_read_reg[27]_0 (dat_blocks_read[27:24]),
        .\dev_blocks_read_reg[31]_0 (dat_blocks_read[31:28]),
        .\dev_blocks_read_reg[3]_0 (dat_blocks_read[3:1]),
        .\dev_blocks_read_reg[7]_0 (dat_blocks_read[7:4]),
        .\dev_last_block_reg[7]_0 (card_status_keeper_n_50),
        .empty_reg(fifo_empty),
        .empty_reg_0(empty_reg),
        .interrupt(interrupt),
        .interrupt_0({interrupt_0[5:4],interrupt_0[1:0]}),
        .interrupt_1(inactive_keeper_n_4),
        .invalid_dat_width(invalid_dat_width),
        .invalid_dat_width_reg_0(sd_bus_interface_n_99),
        .multi_block_mode_next(multi_block_mode_next),
        .multi_block_mode_reg_0(dat_controller_n_47),
        .new_sd_clk(new_sd_clk),
        .no_more_write_data(no_more_write_data),
        .ram_reg(ram_reg),
        .ram_reg_0(ram_reg_0),
        .ram_reg_1(ram_reg_1),
        .ram_reg_10(ram_reg_10),
        .ram_reg_11(ram_reg_11),
        .ram_reg_12(ram_reg_12),
        .ram_reg_13(ram_reg_13),
        .ram_reg_14(ram_reg_14),
        .ram_reg_15(ram_reg_15),
        .ram_reg_16(ram_reg_16),
        .ram_reg_17(ram_reg_17),
        .ram_reg_18(ram_reg_18),
        .ram_reg_19(ram_reg_19),
        .ram_reg_2(ram_reg_2),
        .ram_reg_20(ram_reg_20),
        .ram_reg_21(ram_reg_21),
        .ram_reg_22(ram_reg_22),
        .ram_reg_23(ram_reg_23),
        .ram_reg_24(ram_reg_24),
        .ram_reg_25(ram_reg_25),
        .ram_reg_26(ram_reg_26),
        .ram_reg_27(ram_reg_27),
        .ram_reg_28(ram_reg_28),
        .ram_reg_29(ram_reg_29),
        .ram_reg_3(ram_reg_3),
        .ram_reg_30(ram_reg_30),
        .ram_reg_31(dat_controller_n_94),
        .ram_reg_32(dat_controller_n_95),
        .ram_reg_33(dat_controller_n_107),
        .ram_reg_34(dat_controller_n_108),
        .ram_reg_35(dat_controller_n_109),
        .ram_reg_36(dat_controller_n_110),
        .ram_reg_37(dat_controller_n_111),
        .ram_reg_38(dat_controller_n_112),
        .ram_reg_39(dat_controller_n_113),
        .ram_reg_4(ram_reg_4),
        .ram_reg_40(dat_controller_n_114),
        .ram_reg_41(dat_controller_n_115),
        .ram_reg_42(dat_controller_n_116),
        .ram_reg_43(dat_controller_n_117),
        .ram_reg_44(dat_controller_n_118),
        .ram_reg_45(dat_controller_n_119),
        .ram_reg_46(dat_controller_n_120),
        .ram_reg_47(dat_controller_n_121),
        .ram_reg_48(dat_controller_n_122),
        .ram_reg_49(dat_controller_n_123),
        .ram_reg_5(ram_reg_5),
        .ram_reg_50(dat_controller_n_124),
        .ram_reg_51(dat_controller_n_125),
        .ram_reg_52(dat_controller_n_126),
        .ram_reg_53(dat_controller_n_127),
        .ram_reg_54(dat_controller_n_128),
        .ram_reg_55(dat_controller_n_129),
        .ram_reg_56(dat_controller_n_130),
        .ram_reg_57(dat_controller_n_131),
        .ram_reg_58(dat_controller_n_132),
        .ram_reg_59(dat_controller_n_133),
        .ram_reg_6(ram_reg_6),
        .ram_reg_60(dat_controller_n_134),
        .ram_reg_61(dat_controller_n_135),
        .ram_reg_62(dat_controller_n_136),
        .ram_reg_63(ram_reg_31),
        .ram_reg_64(dat_read_data),
        .ram_reg_7(ram_reg_7),
        .ram_reg_8(ram_reg_8),
        .ram_reg_9(ram_reg_9),
        .\reg_saved_reg[24][0] (\reg_saved_reg[24][0] ),
        .state_next4_carry__1_0({cmd_info_keeper_n_55,cmd_info_keeper_n_56,cmd_info_keeper_n_57,cmd_info_keeper_n_58}),
        .state_next4_carry__2_0({cmd_info_keeper_n_59,cmd_info_keeper_n_60,cmd_info_keeper_n_61,cmd_info_keeper_n_62}),
        .state_next4_carry__2_1(\block_count_reg[31] ));
  FDRE got_new_cmd_out_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(got_new_cmd),
        .R(inactive_keeper_n_9));
  adapter_axi_sd_0_0_inactive_keeper inactive_keeper
       (.SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(cmd_missed1),
        .\axi_rdata[22]_i_3 (\axi_rdata[28]_i_3 [16]),
        .\axi_rdata[22]_i_3_0 (\axi_rdata[28]_i_3_0 [16]),
        .\axi_rdata[22]_i_3_1 (\reg_saved_reg[24][0] [1:0]),
        .\axi_rdata[22]_i_3_2 (\axi_rdata[28]_i_3_1 [15]),
        .device_reset_r(device_reset_r),
        .device_reset_r_reg(device_reset_r_reg),
        .device_reset_r_reg_0(status_read),
        .got_acmd41_non_query_reg_0(inactive_keeper_n_2),
        .got_acmd41_non_query_reg_1(sd_bus_interface_n_88),
        .got_cmd00(got_cmd00),
        .\got_cmd0_reg[0]_0 (inactive_keeper_n_9),
        .inactive_reg_0(is_inactive),
        .inactive_reg_1(inactive_reg),
        .interrupt(interrupt_0[3:2]),
        .\ocr_high_byte_reg[31] (\ocr_high_byte_reg[31]_0 ),
        .\reg_saved_reg[19][22] (inactive_keeper_n_5),
        .resetn(resetn),
        .\set_reg_clear_reset[10].reg_clear_reset_reg[10][22] (inactive_keeper_n_4),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][24] (inactive_keeper_n_16),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][25] (inactive_keeper_n_15),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][26] (inactive_keeper_n_14),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][27] (inactive_keeper_n_13),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][28] (inactive_keeper_n_12),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][29] (inactive_keeper_n_11),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][30] (inactive_keeper_n_10),
        .\set_reg_clear_reset[8].reg_clear_reset_reg[8][31] (inactive_keeper_n_8),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][0] (inactive_keeper_n_48),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][10] (inactive_keeper_n_38),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][11] (inactive_keeper_n_37),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][12] (inactive_keeper_n_36),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][13] (inactive_keeper_n_35),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][14] (inactive_keeper_n_34),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][15] (inactive_keeper_n_33),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][16] (inactive_keeper_n_32),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][17] (inactive_keeper_n_31),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][18] (inactive_keeper_n_30),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][19] (inactive_keeper_n_29),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][1] (inactive_keeper_n_47),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][20] (inactive_keeper_n_28),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][21] (inactive_keeper_n_27),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][22] (inactive_keeper_n_26),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][23] (inactive_keeper_n_25),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][24] (inactive_keeper_n_24),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][25] (inactive_keeper_n_23),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][26] (inactive_keeper_n_22),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][27] (inactive_keeper_n_21),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][28] (inactive_keeper_n_20),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][29] (inactive_keeper_n_19),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][2] (inactive_keeper_n_46),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][30] (inactive_keeper_n_18),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][31] (inactive_keeper_n_17),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][3] (inactive_keeper_n_45),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][4] (inactive_keeper_n_44),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][5] (inactive_keeper_n_43),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][6] (inactive_keeper_n_42),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][7] (inactive_keeper_n_41),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][8] (inactive_keeper_n_40),
        .\set_reg_clear_reset[9].reg_clear_reset_reg[9][9] (inactive_keeper_n_39),
        .\size_reg[31] (\size_reg[31]_0 ));
  FDRE \ocr_high_byte_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_16),
        .Q(\ocr_high_byte_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_15),
        .Q(\ocr_high_byte_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_14),
        .Q(\ocr_high_byte_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_13),
        .Q(\ocr_high_byte_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_12),
        .Q(\ocr_high_byte_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_11),
        .Q(\ocr_high_byte_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_10),
        .Q(\ocr_high_byte_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_8),
        .Q(initialization_done),
        .R(1'b0));
  adapter_axi_sd_0_0_range_check range_check
       (.CO(p_1_in),
        .DI({sd_bus_interface_n_150,sd_bus_interface_n_151,sd_bus_interface_n_152,sd_bus_interface_n_153}),
        .S({sd_bus_interface_n_146,sd_bus_interface_n_147,sd_bus_interface_n_148,sd_bus_interface_n_149}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .invalid_dat_width(invalid_dat_width),
        .out_of_range(out_of_range),
        .out_of_range0_carry__1_0({sd_bus_interface_n_158,sd_bus_interface_n_159,sd_bus_interface_n_160,sd_bus_interface_n_161}),
        .out_of_range0_carry__1_1({sd_bus_interface_n_154,sd_bus_interface_n_155,sd_bus_interface_n_156,sd_bus_interface_n_157}),
        .out_of_range0_carry__2_0({sd_bus_interface_n_166,sd_bus_interface_n_167,sd_bus_interface_n_168,sd_bus_interface_n_169}),
        .out_of_range0_carry__2_1({sd_bus_interface_n_162,sd_bus_interface_n_163,sd_bus_interface_n_164,sd_bus_interface_n_165}),
        .out_of_range_reg_0(range_check_n_2),
        .out_of_range_reg_1(sd_bus_interface_n_98),
        .out_of_range_reg_2({sd_bus_interface_n_174,sd_bus_interface_n_175,sd_bus_interface_n_176,sd_bus_interface_n_177}),
        .out_of_range_reg_3({sd_bus_interface_n_170,sd_bus_interface_n_171,sd_bus_interface_n_172,sd_bus_interface_n_173}));
  adapter_axi_sd_0_0_rca_keeper rca_keeper
       (.CO(rca_match),
        .E(sd_bus_interface_n_116),
        .Q(rca),
        .S({sd_bus_interface_n_137,sd_bus_interface_n_138}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .ignored_reg(sd_bus_interface_n_139),
        .rca_match_carry__0_0({Q[31],Q[27:22]}),
        .\rca_reg[0]_0 (inactive_keeper_n_9));
  adapter_axi_sd_0_0_responder responder
       (.D(resp_byte_next),
        .Q({resp_cur,ram_dev_addr[2]}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\card_status_reg[23] ({card_status_next2_out[23:22],card_status_next2_out[19],card_status_next2_out[7],card_status_next2_out[4:0]}),
        .\card_status_reg[23]_0 ({\card_status_reg[31]_0 [18:17],\card_status_reg[31]_0 [14],\card_status_reg[31]_0 [7],\card_status_reg[31]_0 [4:0]}),
        .\card_status_reg[23]_1 ({\card_status_reg[31] [22:21],\card_status_reg[31] [18],\card_status_reg[31] [7],\card_status_reg[31] [4:0]}),
        .\card_status_reg[23]_2 ({\card_status_reg[31]_1 [18:17],\card_status_reg[31]_1 [14],\card_status_reg[31]_1 [7],\card_status_reg[31]_1 [4:0]}),
        .cmd_crc_err_stb(cmd_crc_err_stb),
        .cmd_illegal_stb(cmd_illegal_stb),
        .\resp_byte_reg[7]_0 (resp_byte),
        .\resp_cur_reg[2]_0 (inactive_keeper_n_9),
        .\resp_len_reg[4]_0 ({resp_len_bytes[4],resp_len_bytes[2:0]}),
        .\resp_len_reg[4]_1 ({resp_len_next[4],resp_len_next[2:0]}),
        .resp_next(resp_next),
        .resp_no_crc(resp_no_crc),
        .resp_no_crc_next(resp_no_crc_next),
        .resp_no_crc_reg_0(sd_bus_interface_n_80),
        .\resp_type_out_reg[0]_0 (sd_bus_interface_n_81),
        .\resp_type_out_reg[4]_0 (sd_bus_interface_n_96),
        .send_resp(send_resp),
        .send_resp_o_reg_0(sd_bus_interface_n_79),
        .sent_r1(sent_r1));
  adapter_axi_sd_0_0_sd_bus_interface sd_bus_interface
       (.CO(p_1_in),
        .D(D),
        .DI({sd_bus_interface_n_150,sd_bus_interface_n_151,sd_bus_interface_n_152,sd_bus_interface_n_153}),
        .E(sd_bus_interface_n_70),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[0]_0 (sd_bus_interface_n_116),
        .\FSM_onehot_state_reg[3] (sd_bus_interface_n_80),
        .\FSM_onehot_state_reg[4] (state_next__0),
        .\FSM_onehot_state_reg[4]_0 ({\FSM_onehot_state_reg_n_0_[4] ,state[3:2],\FSM_onehot_state_reg_n_0_[1] ,state[0]}),
        .\FSM_sequential_state[0]_i_14 (dat_controller_n_152),
        .\FSM_sequential_state_reg[0] (sd_bus_interface_n_101),
        .\FSM_sequential_state_reg[0]_0 (dat_controller_n_89),
        .\FSM_sequential_state_reg[0]_1 (dat_controller_n_93),
        .\FSM_sequential_state_reg[0]_2 (dat_controller_n_44),
        .\FSM_sequential_state_reg[1] (sd_bus_interface_n_102),
        .\FSM_sequential_state_reg[1]_0 (dat_controller_n_88),
        .\FSM_sequential_state_reg[1]_1 (dat_controller_n_84),
        .\FSM_sequential_state_reg[1]_2 (dat_controller_n_151),
        .\FSM_sequential_state_reg[2] (dat_controller_n_83),
        .\FSM_sequential_state_reg[3] (sd_bus_interface_n_178),
        .\FSM_sequential_state_reg[3]_0 (dat_controller_n_91),
        .O({sd_bus_interface_n_11,\dat_unit/state_next214_in ,\dat_unit/p_0_in }),
        .Q({\dat_unit/state [3],\dat_unit/state [1:0]}),
        .S({sd_bus_interface_n_137,sd_bus_interface_n_138}),
        .SR(sd_bus_interface_n_112),
        .S_AXI_ACLK(S_AXI_ACLK),
        .acmd_defined_reg(p_6_out),
        .acmd_defined_reg_0(sd_bus_interface_n_133),
        .acmd_defined_reg_1(card_status_resp_next[5]),
        .\axi_rdata[13]_i_3 (\axi_rdata[28]_i_3 [12:7]),
        .\axi_rdata[13]_i_3_0 (\axi_rdata[28]_i_3_0 [12:7]),
        .\axi_rdata[13]_i_3_1 (\reg_saved_reg[24][0] [1:0]),
        .\axi_rdata[13]_i_3_2 (\axi_rdata[28]_i_3_1 [11:7]),
        .block_data_finished0_carry__0(dat_controller_n_98),
        .\block_data_finished0_inferred__0/i__carry__0 (dat_controller_n_104),
        .\block_data_finished0_inferred__0/i__carry__0_0 ({dat_block_size[12],dat_block_size[9],dat_block_size[7:5]}),
        .\buf_write_reg[10] (dat_controller_n_148),
        .\buf_write_reg[11] (dat_controller_n_147),
        .\buf_write_reg[12] (dat_controller_n_146),
        .\buf_write_reg[13] (dat_controller_n_145),
        .\buf_write_reg[14] (dat_controller_n_144),
        .\buf_write_reg[15] (dat_controller_n_97),
        .\buf_write_reg[24] (dat_controller_n_143),
        .\buf_write_reg[25] (dat_controller_n_142),
        .\buf_write_reg[26] (dat_controller_n_141),
        .\buf_write_reg[27] (dat_controller_n_140),
        .\buf_write_reg[28] (dat_controller_n_139),
        .\buf_write_reg[29] (dat_controller_n_138),
        .\buf_write_reg[30] (dat_controller_n_137),
        .\buf_write_reg[31] (dat_controller_n_96),
        .\buf_write_reg[32] (dat_controller_n_136),
        .\buf_write_reg[33] (dat_controller_n_135),
        .\buf_write_reg[34] (dat_controller_n_134),
        .\buf_write_reg[35] (dat_controller_n_133),
        .\buf_write_reg[36] (dat_controller_n_132),
        .\buf_write_reg[37] (dat_controller_n_131),
        .\buf_write_reg[38] (dat_controller_n_130),
        .\buf_write_reg[39] (dat_controller_n_129),
        .\buf_write_reg[40] (dat_controller_n_128),
        .\buf_write_reg[41] (dat_controller_n_127),
        .\buf_write_reg[42] (dat_controller_n_126),
        .\buf_write_reg[43] (dat_controller_n_125),
        .\buf_write_reg[44] (dat_controller_n_124),
        .\buf_write_reg[45] (dat_controller_n_123),
        .\buf_write_reg[46] (dat_controller_n_122),
        .\buf_write_reg[47] (dat_controller_n_95),
        .\buf_write_reg[48] (dat_controller_n_121),
        .\buf_write_reg[49] (dat_controller_n_120),
        .\buf_write_reg[50] (dat_controller_n_119),
        .\buf_write_reg[51] (dat_controller_n_118),
        .\buf_write_reg[52] (dat_controller_n_117),
        .\buf_write_reg[53] (dat_controller_n_116),
        .\buf_write_reg[54] (dat_controller_n_115),
        .\buf_write_reg[55] (dat_controller_n_114),
        .\buf_write_reg[56] (dat_controller_n_113),
        .\buf_write_reg[57] (dat_controller_n_112),
        .\buf_write_reg[58] (dat_controller_n_111),
        .\buf_write_reg[59] (dat_controller_n_110),
        .\buf_write_reg[60] (dat_controller_n_109),
        .\buf_write_reg[61] (dat_controller_n_108),
        .\buf_write_reg[62] (dat_controller_n_107),
        .\buf_write_reg[8] (dat_controller_n_150),
        .\buf_write_reg[9] (dat_controller_n_149),
        .\card_status[11]_i_4 (card_status_keeper_n_39),
        .\card_status_reg[11] (sd_bus_interface_n_90),
        .\card_status_reg[11]_0 ({\card_status_reg[31] [11:9],\card_status_reg[31] [5]}),
        .\card_status_reg[5] (sd_bus_interface_n_129),
        .\card_status_reg[5]_0 (card_status_keeper_n_53),
        .\card_status_reg[5]_1 (\card_status_reg[31]_0 [5]),
        .\card_status_reg[5]_2 (\card_status_reg[31]_1 [5]),
        .\card_status_reg[9] (sd_bus_interface_n_92),
        .\card_status_reg[9]_0 (dat_controller_n_105),
        .\card_status_reg[9]_1 (card_status_keeper_n_38),
        .\cmd_arg_reg[0] (sd_bus_interface_n_99),
        .\cmd_arg_reg[15] ({sd_bus_interface_n_158,sd_bus_interface_n_159,sd_bus_interface_n_160,sd_bus_interface_n_161}),
        .\cmd_arg_reg[19] (\cmd_arg_reg[19] ),
        .\cmd_arg_reg[23] ({sd_bus_interface_n_166,sd_bus_interface_n_167,sd_bus_interface_n_168,sd_bus_interface_n_169}),
        .\cmd_arg_reg[30] (sd_bus_interface_n_139),
        .\cmd_arg_reg[31] (Q),
        .\cmd_arg_reg[31]_0 ({sd_bus_interface_n_174,sd_bus_interface_n_175,sd_bus_interface_n_176,sd_bus_interface_n_177}),
        .cmd_crc_err_reg(sd_bus_interface_n_59),
        .cmd_crc_err_stb0(cmd_crc_err_stb0),
        .\cmd_index_reg[0] ({resp_len_next[4],resp_len_next[2:0]}),
        .\cmd_index_reg[0]_0 (sd_bus_interface_n_96),
        .\cmd_index_reg[0]_1 (p_3_out),
        .\cmd_index_reg[0]_2 (sd_bus_interface_n_127),
        .\cmd_index_reg[0]_3 (sd_bus_interface_n_142),
        .\cmd_index_reg[1] (\cmd_index_reg[1] ),
        .\cmd_index_reg[1]_0 (sd_bus_interface_n_68),
        .\cmd_index_reg[1]_1 (sd_bus_interface_n_136),
        .\cmd_index_reg[1]_2 (sd_bus_interface_n_141),
        .\cmd_index_reg[1]_3 (sd_bus_interface_n_144),
        .\cmd_index_reg[2] ({sd_bus_interface_n_63,block_size_next[9],block_size_next[7:5]}),
        .\cmd_index_reg[3] (sd_bus_interface_n_79),
        .\cmd_index_reg[3]_0 (sd_bus_interface_n_81),
        .\cmd_index_reg[3]_1 (p_9_out),
        .\cmd_index_reg[3]_2 (sd_bus_interface_n_140),
        .\cmd_index_reg[4] (sd_bus_interface_n_131),
        .\cmd_index_reg[5] (last_cmd_index),
        .\cmd_index_reg[5]_0 (sd_bus_interface_n_95),
        .\cmd_index_reg[5]_1 (\cmd_index_reg[5] ),
        .\cmd_index_reg[5]_2 (p_8_out),
        .\cmd_index_reg[5]_3 (sd_bus_interface_n_134),
        .\cmd_index_reg[5]_4 (sd_bus_interface_n_135),
        .\cmd_index_reg[5]_5 (\cmd_index_reg[5]_0 ),
        .cmd_received_good(cmd_received_good),
        .\counter_reg[0] (\dat_unit/crc_finished ),
        .\counter_reg[11] (sd_bus_interface_n_14),
        .\counter_reg[4] (resp_pos1),
        .\counter_reg[4]_0 (sd_bus_interface_n_69),
        .\crc[15]_i_4 (dat_controller_n_87),
        .\crc_reg[0] (dat_controller_n_94),
        .\crc_reg[10] (\crc_reg[10] ),
        .\crc_reg[10]_0 (\crc_reg[10]_0 ),
        .\crc_reg[15] (dat_controller_n_85),
        .\crc_reg[2] (\crc_reg[2] ),
        .\crc_reg[2]_0 (\crc_reg[2]_0 ),
        .dat_got_block(dat_got_block),
        .dat_got_word(dat_got_word),
        .dat_wrote_new_word(dat_wrote_new_word),
        .\dev_blocks_read_reg[31] (dat_read_mode),
        .erase_seq_error(erase_seq_error),
        .erase_seq_error_reg(sd_bus_interface_n_97),
        .\erase_step_reg[0] (sd_bus_interface_n_93),
        .\erase_step_reg[0]_0 (sd_bus_interface_n_94),
        .\erase_step_reg[0]_1 (cmd_info_keeper_n_5),
        .\erase_step_reg[0]_2 (cmd_info_keeper_n_4),
        .fifo_empty(fifo_empty),
        .got_acmd41_non_query_reg(sd_bus_interface_n_88),
        .got_acmd41_non_query_reg_0(got_acmd41_non_query_reg),
        .got_acmd41_non_query_reg_1(inactive_keeper_n_2),
        .got_cmd00(got_cmd00),
        .got_cmd8_1(got_cmd8_1),
        .ignored_c(ignored_c),
        .ignored_reg(rca_match),
        .ignored_reg_0(card_status_keeper_n_34),
        .illegal_reg(card_status_keeper_n_36),
        .initialization_done(initialization_done),
        .invalid_dat_width(invalid_dat_width),
        .invalid_dat_width_reg(last_cmd_is_acmd),
        .last_cmd_valid(last_cmd_valid),
        .multi_block_mode_next(multi_block_mode_next),
        .new_sd_clk(new_sd_clk),
        .out_of_range(out_of_range),
        .out_of_range0_carry(\size_reg_n_0_[1] ),
        .out_of_range0_carry_0(\size_reg_n_0_[0] ),
        .out_of_range0_carry_1(\size_reg_n_0_[3] ),
        .out_of_range0_carry_2(\size_reg_n_0_[2] ),
        .out_of_range0_carry_3(\size_reg_n_0_[5] ),
        .out_of_range0_carry_4(\size_reg_n_0_[4] ),
        .out_of_range0_carry_5(\size_reg_n_0_[7] ),
        .out_of_range0_carry_6(\size_reg_n_0_[6] ),
        .out_of_range0_carry__0(\size_reg_n_0_[9] ),
        .out_of_range0_carry__0_0(\size_reg_n_0_[8] ),
        .out_of_range0_carry__0_1(\size_reg_n_0_[11] ),
        .out_of_range0_carry__0_2(\size_reg_n_0_[10] ),
        .out_of_range0_carry__0_3(\size_reg_n_0_[13] ),
        .out_of_range0_carry__0_4(\size_reg_n_0_[12] ),
        .out_of_range0_carry__0_5(\size_reg_n_0_[15] ),
        .out_of_range0_carry__0_6(\size_reg_n_0_[14] ),
        .out_of_range0_carry__1(\size_reg_n_0_[17] ),
        .out_of_range0_carry__1_0(\size_reg_n_0_[16] ),
        .out_of_range0_carry__1_1(\size_reg_n_0_[19] ),
        .out_of_range0_carry__1_2(\size_reg_n_0_[18] ),
        .out_of_range0_carry__1_3(\size_reg_n_0_[21] ),
        .out_of_range0_carry__1_4(\size_reg_n_0_[20] ),
        .out_of_range0_carry__1_5(\size_reg_n_0_[23] ),
        .out_of_range0_carry__1_6(\size_reg_n_0_[22] ),
        .out_of_range0_carry__2(\size_reg_n_0_[25] ),
        .out_of_range0_carry__2_0(\size_reg_n_0_[24] ),
        .out_of_range0_carry__2_1(\size_reg_n_0_[27] ),
        .out_of_range0_carry__2_2(\size_reg_n_0_[26] ),
        .out_of_range0_carry__2_3(\size_reg_n_0_[29] ),
        .out_of_range0_carry__2_4(\size_reg_n_0_[28] ),
        .out_of_range0_carry__2_5(\size_reg_n_0_[31] ),
        .out_of_range0_carry__2_6(\size_reg_n_0_[30] ),
        .out_of_range_reg(sd_bus_interface_n_98),
        .p_3_out(p_3_out_1),
        .ram_dev_addr(ram_dev_addr[1:0]),
        .ram_dev_data(ram_dev_data),
        .read_block_end(read_block_end),
        .read_crc_err_reg(dat_crc_err),
        .read_crc_err_reg_0(read_crc_err_reg),
        .\read_data_reg[31] (dat_read_data),
        .\reg_saved_reg[19][10] (sd_bus_interface_n_84),
        .\reg_saved_reg[19][11] (sd_bus_interface_n_85),
        .\reg_saved_reg[19][12] (sd_bus_interface_n_86),
        .\reg_saved_reg[19][13] (sd_bus_interface_n_87),
        .\reg_saved_reg[19][8] (sd_bus_interface_n_82),
        .\reg_saved_reg[19][9] (sd_bus_interface_n_83),
        .resetn(resetn),
        .\resp_byte[2]_i_3 (\ocr_high_byte_reg_n_0_[26] ),
        .\resp_byte[4]_i_3 (\ocr_high_byte_reg_n_0_[28] ),
        .\resp_byte[4]_i_4 ({card_status_resp[28:27],card_status_resp[25:22],card_status_resp[20:19],card_status_resp[17:16],card_status_resp[11:0]}),
        .\resp_byte[5]_i_3 (\ocr_high_byte_reg_n_0_[29] ),
        .\resp_byte[7]_i_8 (rca),
        .\resp_byte_reg[0] ({resp_cur,ram_dev_addr[2]}),
        .\resp_byte_reg[0]_i_2 (\ocr_high_byte_reg_n_0_[24] ),
        .\resp_byte_reg[1] (\ocr_high_byte_reg_n_0_[25] ),
        .\resp_byte_reg[2] (card_status_keeper_n_54),
        .\resp_byte_reg[3] (\ocr_high_byte_reg_n_0_[27] ),
        .\resp_byte_reg[5] (card_status_keeper_n_77),
        .\resp_byte_reg[6] (card_status_keeper_n_78),
        .\resp_byte_reg[6]_i_6 (\ocr_high_byte_reg_n_0_[30] ),
        .\resp_byte_reg[7] (card_status_keeper_n_79),
        .\resp_cur_reg[2] (resp_byte_next),
        .resp_next(resp_next),
        .resp_no_crc(resp_no_crc),
        .resp_no_crc_next(resp_no_crc_next),
        .resp_no_crc_reg(command_validator_n_5),
        .save_current_cmd(save_current_cmd),
        .\saved_cmd_index_reg[5] (cmd_info_keeper_n_18),
        .sd_clk(sd_clk),
        .\sd_clk_div_d_reg[0]_0 (\sd_clk_div_d_reg[0] ),
        .sd_cmd_i(sd_cmd_i),
        .sd_cmd_o(sd_cmd_o),
        .sd_cmd_o_sys_reg(resp_byte),
        .sd_cmd_t(sd_cmd_t),
        .\sd_dat_d_reg[0][3]_0 (\sd_dat_d_reg[0][3] ),
        .\sd_dat_o_reg[3]_0 (\sd_dat_o_reg[3] ),
        .\sd_dat_o_sys[3]_i_3 (dat_controller_n_92),
        .\sd_dat_o_sys_reg[0] (inactive_keeper_n_9),
        .\sd_dat_o_sys_reg[0]_0 (card_status_keeper_n_51),
        .\sd_dat_o_sys_reg[1] (dat_controller_n_36),
        .\sd_dat_o_sys_reg[3] (dat_width_4),
        .sd_dat_t(sd_dat_t),
        .send_no_resp(send_no_resp),
        .send_resp(send_resp),
        .\set_reg_clear_always[12].reg_clear_always_reg[12][5] (card_status_next2_out[5]),
        .\size_reg[15] ({sd_bus_interface_n_154,sd_bus_interface_n_155,sd_bus_interface_n_156,sd_bus_interface_n_157}),
        .\size_reg[23] ({sd_bus_interface_n_162,sd_bus_interface_n_163,sd_bus_interface_n_164,sd_bus_interface_n_165}),
        .\size_reg[31] ({sd_bus_interface_n_170,sd_bus_interface_n_171,sd_bus_interface_n_172,sd_bus_interface_n_173}),
        .\size_reg[7] ({sd_bus_interface_n_146,sd_bus_interface_n_147,sd_bus_interface_n_148,sd_bus_interface_n_149}),
        .\state[5]_i_6 ({resp_len_bytes[4],resp_len_bytes[2:0]}),
        .\state_reg[4] (\cmd_unit/p_2_in3_in ),
        .\state_reg[4]_0 (sd_bus_interface_n_111),
        .update_2(update_2));
  FDRE send_no_resp_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(send_no_resp0),
        .Q(send_no_resp),
        .R(inactive_keeper_n_9));
  adapter_axi_sd_0_0_set_dat3_pullup set_dat3_pullup
       (.S_AXI_ACLK(S_AXI_ACLK),
        .sd_dat3_pullup_off(sd_dat3_pullup_off),
        .sd_dat3_pullup_off_reg_0(sd_bus_interface_n_68),
        .sd_dat3_pullup_off_reg_1(last_cmd_is_acmd),
        .sd_dat3_pullup_off_reg_2(last_cmd_index[5:4]),
        .sd_dat3_pullup_off_reg_3(\FSM_onehot_state_reg[0]_0 ),
        .sd_dat3_pullup_off_reg_4(inactive_keeper_n_9));
  FDRE \size_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_48),
        .Q(\size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \size_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_38),
        .Q(\size_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \size_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_37),
        .Q(\size_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \size_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_36),
        .Q(\size_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \size_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_35),
        .Q(\size_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \size_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_34),
        .Q(\size_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \size_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_33),
        .Q(\size_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \size_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_32),
        .Q(\size_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \size_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_31),
        .Q(\size_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \size_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_30),
        .Q(\size_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \size_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_29),
        .Q(\size_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \size_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_47),
        .Q(\size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \size_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_28),
        .Q(\size_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \size_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_27),
        .Q(\size_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \size_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_26),
        .Q(\size_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \size_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_25),
        .Q(\size_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \size_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_24),
        .Q(\size_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \size_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_23),
        .Q(\size_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \size_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_22),
        .Q(\size_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \size_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_21),
        .Q(\size_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \size_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_20),
        .Q(\size_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \size_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_19),
        .Q(\size_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \size_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_46),
        .Q(\size_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \size_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_18),
        .Q(\size_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \size_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_17),
        .Q(\size_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \size_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_45),
        .Q(\size_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \size_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_44),
        .Q(\size_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \size_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_43),
        .Q(\size_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \size_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_42),
        .Q(\size_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \size_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_41),
        .Q(\size_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \size_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_40),
        .Q(\size_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \size_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(sd_bus_interface_n_59),
        .D(inactive_keeper_n_39),
        .Q(\size_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_fwft" *) 
module adapter_axi_sd_0_0_fifo_fwft
   (\FSM_onehot_state_reg[1] ,
    empty_reg_0,
    \FSM_onehot_state_reg[1]_0 ,
    \addr_write_reg[9]_0 ,
    CO,
    \FSM_onehot_state_reg[4] ,
    S,
    \addr_write_reg[9]_1 ,
    \addr_write_reg[7]_0 ,
    \addr_write_reg[3]_0 ,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    ram_reg_9,
    ram_reg_10,
    ram_reg_11,
    ram_reg_12,
    ram_reg_13,
    ram_reg_14,
    ram_reg_15,
    ram_reg_16,
    ram_reg_17,
    ram_reg_18,
    ram_reg_19,
    ram_reg_20,
    ram_reg_21,
    ram_reg_22,
    ram_reg_23,
    ram_reg_24,
    ram_reg_25,
    ram_reg_26,
    ram_reg_27,
    ram_reg_28,
    ram_reg_29,
    ram_reg_30,
    ram_reg_31,
    \FSM_onehot_state_reg[1]_1 ,
    \addr_write_reg[3]_1 ,
    sys_may_write_next,
    \FSM_onehot_state_reg[1]_2 ,
    \FSM_onehot_state_reg[1]_3 ,
    SR,
    \FSM_onehot_state_reg[4]_0 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    sys_may_read_next,
    ram_reg_32,
    ram_reg_33,
    dat_width_4_reg,
    dat_width_4_reg_0,
    \FSM_onehot_state_reg[2]_0 ,
    ram_reg_34,
    ram_reg_35,
    ram_reg_36,
    ram_reg_37,
    ram_reg_38,
    ram_reg_39,
    ram_reg_40,
    ram_reg_41,
    ram_reg_42,
    ram_reg_43,
    ram_reg_44,
    ram_reg_45,
    ram_reg_46,
    ram_reg_47,
    ram_reg_48,
    ram_reg_49,
    ram_reg_50,
    ram_reg_51,
    ram_reg_52,
    ram_reg_53,
    ram_reg_54,
    ram_reg_55,
    ram_reg_56,
    ram_reg_57,
    ram_reg_58,
    ram_reg_59,
    ram_reg_60,
    ram_reg_61,
    ram_reg_62,
    ram_reg_63,
    dat_width_4_reg_1,
    dat_width_4_reg_2,
    dat_width_4_reg_3,
    dat_width_4_reg_4,
    dat_width_4_reg_5,
    dat_width_4_reg_6,
    dat_width_4_reg_7,
    dat_width_4_reg_8,
    dat_width_4_reg_9,
    dat_width_4_reg_10,
    dat_width_4_reg_11,
    dat_width_4_reg_12,
    dat_width_4_reg_13,
    dat_width_4_reg_14,
    \FSM_onehot_sys_state_reg[0] ,
    \FSM_onehot_sys_state_reg[0]_0 ,
    \FSM_onehot_sys_state_reg[0]_1 ,
    S_AXI_ACLK,
    empty_reg_1,
    Q,
    new_sd_clk,
    \FSM_sequential_state[1]_i_2 ,
    \addr_out_cur[9]_i_8_0 ,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[30]_0 ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[29]_0 ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[28]_0 ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[27]_0 ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[26]_0 ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[25]_0 ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[24]_0 ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[22]_0 ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[16]_0 ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[13]_0 ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    sys_may_write_reg,
    O,
    \addr_write_reg[9]_2 ,
    \card_status_resp_reg[8] ,
    \dev_last_block_reg[7] ,
    \FSM_onehot_sys_state_reg[0]_2 ,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    dat_wrote_new_word,
    sys_may_write_reg_0,
    \buf_write_reg[47] ,
    \block_size_reg[5] ,
    \dev_last_block_reg[7]_0 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_sys_state_reg[0]_3 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_sys_state_reg[2] ,
    \FSM_onehot_sys_state[2]_i_4_0 ,
    \FSM_onehot_sys_state[2]_i_4_1 ,
    \FSM_onehot_sys_state[2]_i_4_2 ,
    data_write_en,
    dat_got_word,
    may_read_data,
    S_AXI_ARVALID,
    \addr_out_cur[9]_i_3_0 ,
    \addr_out_cur[9]_i_3_1 ,
    sys_may_read_reg_i_2_0,
    ram_reg_64,
    ram_reg_65,
    sys_state,
    \FSM_onehot_sys_state_reg[0]_4 ,
    \FSM_onehot_sys_state_reg[1] ,
    \FSM_onehot_sys_state_reg[2]_0 );
  output \FSM_onehot_state_reg[1] ;
  output empty_reg_0;
  output \FSM_onehot_state_reg[1]_0 ;
  output \addr_write_reg[9]_0 ;
  output [0:0]CO;
  output \FSM_onehot_state_reg[4] ;
  output [1:0]S;
  output [9:0]\addr_write_reg[9]_1 ;
  output [3:0]\addr_write_reg[7]_0 ;
  output [3:0]\addr_write_reg[3]_0 ;
  output ram_reg_0;
  output ram_reg_1;
  output ram_reg_2;
  output ram_reg_3;
  output ram_reg_4;
  output ram_reg_5;
  output ram_reg_6;
  output ram_reg_7;
  output ram_reg_8;
  output ram_reg_9;
  output ram_reg_10;
  output ram_reg_11;
  output ram_reg_12;
  output ram_reg_13;
  output ram_reg_14;
  output ram_reg_15;
  output ram_reg_16;
  output ram_reg_17;
  output ram_reg_18;
  output ram_reg_19;
  output ram_reg_20;
  output ram_reg_21;
  output ram_reg_22;
  output ram_reg_23;
  output ram_reg_24;
  output ram_reg_25;
  output ram_reg_26;
  output ram_reg_27;
  output ram_reg_28;
  output ram_reg_29;
  output ram_reg_30;
  output ram_reg_31;
  output \FSM_onehot_state_reg[1]_1 ;
  output \addr_write_reg[3]_1 ;
  output sys_may_write_next;
  output \FSM_onehot_state_reg[1]_2 ;
  output \FSM_onehot_state_reg[1]_3 ;
  output [0:0]SR;
  output \FSM_onehot_state_reg[4]_0 ;
  output [2:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output sys_may_read_next;
  output ram_reg_32;
  output ram_reg_33;
  output dat_width_4_reg;
  output dat_width_4_reg_0;
  output \FSM_onehot_state_reg[2]_0 ;
  output ram_reg_34;
  output ram_reg_35;
  output ram_reg_36;
  output ram_reg_37;
  output ram_reg_38;
  output ram_reg_39;
  output ram_reg_40;
  output ram_reg_41;
  output ram_reg_42;
  output ram_reg_43;
  output ram_reg_44;
  output ram_reg_45;
  output ram_reg_46;
  output ram_reg_47;
  output ram_reg_48;
  output ram_reg_49;
  output ram_reg_50;
  output ram_reg_51;
  output ram_reg_52;
  output ram_reg_53;
  output ram_reg_54;
  output ram_reg_55;
  output ram_reg_56;
  output ram_reg_57;
  output ram_reg_58;
  output ram_reg_59;
  output ram_reg_60;
  output ram_reg_61;
  output ram_reg_62;
  output ram_reg_63;
  output dat_width_4_reg_1;
  output dat_width_4_reg_2;
  output dat_width_4_reg_3;
  output dat_width_4_reg_4;
  output dat_width_4_reg_5;
  output dat_width_4_reg_6;
  output dat_width_4_reg_7;
  output dat_width_4_reg_8;
  output dat_width_4_reg_9;
  output dat_width_4_reg_10;
  output dat_width_4_reg_11;
  output dat_width_4_reg_12;
  output dat_width_4_reg_13;
  output dat_width_4_reg_14;
  output \FSM_onehot_sys_state_reg[0] ;
  output \FSM_onehot_sys_state_reg[0]_0 ;
  output \FSM_onehot_sys_state_reg[0]_1 ;
  input S_AXI_ACLK;
  input empty_reg_1;
  input [6:0]Q;
  input new_sd_clk;
  input [1:0]\FSM_sequential_state[1]_i_2 ;
  input [4:0]\addr_out_cur[9]_i_8_0 ;
  input [31:0]\axi_rdata_reg[31] ;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[31]_0 ;
  input \axi_rdata_reg[31]_1 ;
  input \axi_rdata_reg[30] ;
  input \axi_rdata_reg[30]_0 ;
  input \axi_rdata_reg[29] ;
  input \axi_rdata_reg[29]_0 ;
  input \axi_rdata_reg[28] ;
  input \axi_rdata_reg[28]_0 ;
  input \axi_rdata_reg[27] ;
  input \axi_rdata_reg[27]_0 ;
  input \axi_rdata_reg[26] ;
  input \axi_rdata_reg[26]_0 ;
  input \axi_rdata_reg[25] ;
  input \axi_rdata_reg[25]_0 ;
  input \axi_rdata_reg[24] ;
  input \axi_rdata_reg[24]_0 ;
  input \axi_rdata_reg[23] ;
  input \axi_rdata_reg[23]_0 ;
  input \axi_rdata_reg[22] ;
  input \axi_rdata_reg[22]_0 ;
  input \axi_rdata_reg[21] ;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[19] ;
  input \axi_rdata_reg[19]_0 ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[16] ;
  input \axi_rdata_reg[16]_0 ;
  input \axi_rdata_reg[15] ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[13]_0 ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[1]_0 ;
  input [0:0]sys_may_write_reg;
  input [1:0]O;
  input \addr_write_reg[9]_2 ;
  input [3:0]\card_status_resp_reg[8] ;
  input \dev_last_block_reg[7] ;
  input \FSM_onehot_sys_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input dat_wrote_new_word;
  input [3:0]sys_may_write_reg_0;
  input \buf_write_reg[47] ;
  input \block_size_reg[5] ;
  input \dev_last_block_reg[7]_0 ;
  input \FSM_onehot_state_reg[3] ;
  input \FSM_onehot_sys_state_reg[0]_3 ;
  input \FSM_onehot_state_reg[2]_1 ;
  input \FSM_onehot_state_reg[2]_2 ;
  input \FSM_onehot_sys_state_reg[2] ;
  input [0:0]\FSM_onehot_sys_state[2]_i_4_0 ;
  input \FSM_onehot_sys_state[2]_i_4_1 ;
  input \FSM_onehot_sys_state[2]_i_4_2 ;
  input data_write_en;
  input dat_got_word;
  input may_read_data;
  input S_AXI_ARVALID;
  input \addr_out_cur[9]_i_3_0 ;
  input \addr_out_cur[9]_i_3_1 ;
  input [2:0]sys_may_read_reg_i_2_0;
  input [31:0]ram_reg_64;
  input [31:0]ram_reg_65;
  input [0:0]sys_state;
  input \FSM_onehot_sys_state_reg[0]_4 ;
  input \FSM_onehot_sys_state_reg[1] ;
  input \FSM_onehot_sys_state_reg[2]_0 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire \FSM_onehot_state_reg[1]_3 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_sys_state[2]_i_11_n_0 ;
  wire [0:0]\FSM_onehot_sys_state[2]_i_4_0 ;
  wire \FSM_onehot_sys_state[2]_i_4_1 ;
  wire \FSM_onehot_sys_state[2]_i_4_2 ;
  wire \FSM_onehot_sys_state[2]_i_4_n_0 ;
  wire \FSM_onehot_sys_state[2]_i_7_n_0 ;
  wire \FSM_onehot_sys_state_reg[0] ;
  wire \FSM_onehot_sys_state_reg[0]_0 ;
  wire \FSM_onehot_sys_state_reg[0]_1 ;
  wire \FSM_onehot_sys_state_reg[0]_2 ;
  wire \FSM_onehot_sys_state_reg[0]_3 ;
  wire \FSM_onehot_sys_state_reg[0]_4 ;
  wire \FSM_onehot_sys_state_reg[1] ;
  wire \FSM_onehot_sys_state_reg[2] ;
  wire \FSM_onehot_sys_state_reg[2]_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire [1:0]\FSM_sequential_state[1]_i_2 ;
  wire [1:0]O;
  wire [6:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARVALID;
  wire \addr_out_cur[9]_i_1_n_0 ;
  wire \addr_out_cur[9]_i_3_0 ;
  wire \addr_out_cur[9]_i_3_1 ;
  wire \addr_out_cur[9]_i_4_n_0 ;
  wire \addr_out_cur[9]_i_5_n_0 ;
  wire \addr_out_cur[9]_i_6_n_0 ;
  wire \addr_out_cur[9]_i_7_n_0 ;
  wire [4:0]\addr_out_cur[9]_i_8_0 ;
  wire \addr_out_cur[9]_i_8_n_0 ;
  wire \addr_out_cur_reg[9]_i_2_n_1 ;
  wire \addr_out_cur_reg[9]_i_2_n_2 ;
  wire \addr_out_cur_reg[9]_i_2_n_3 ;
  wire \addr_read[1]_i_1_n_0 ;
  wire \addr_read[2]_i_1_n_0 ;
  wire \addr_read[3]_i_1_n_0 ;
  wire \addr_read[4]_i_1_n_0 ;
  wire \addr_read[5]_i_1_n_0 ;
  wire \addr_read[6]_i_1_n_0 ;
  wire \addr_read[7]_i_1_n_0 ;
  wire \addr_read[8]_i_1_n_0 ;
  wire \addr_read[9]_i_2_n_0 ;
  wire addr_write0;
  wire \addr_write[0]_i_1_n_0 ;
  wire \addr_write[9]_i_2_n_0 ;
  wire [3:0]\addr_write_reg[3]_0 ;
  wire \addr_write_reg[3]_1 ;
  wire [3:0]\addr_write_reg[7]_0 ;
  wire \addr_write_reg[9]_0 ;
  wire [9:0]\addr_write_reg[9]_1 ;
  wire \addr_write_reg[9]_2 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[16]_0 ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[22]_0 ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[24]_0 ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[25]_0 ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[27]_0 ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[28]_0 ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[30] ;
  wire \axi_rdata_reg[30]_0 ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_1 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[9] ;
  wire \axi_rdata_reg[9]_0 ;
  wire \block_size_reg[5] ;
  wire \buf_write_reg[47] ;
  wire \card_status_resp[8]_i_3_n_0 ;
  wire \card_status_resp[8]_i_4_n_0 ;
  wire \card_status_resp[8]_i_5_n_0 ;
  wire [3:0]\card_status_resp_reg[8] ;
  wire \crc[15]_i_30_n_0 ;
  wire dat_got_word;
  wire dat_width_4_reg;
  wire dat_width_4_reg_0;
  wire dat_width_4_reg_1;
  wire dat_width_4_reg_10;
  wire dat_width_4_reg_11;
  wire dat_width_4_reg_12;
  wire dat_width_4_reg_13;
  wire dat_width_4_reg_14;
  wire dat_width_4_reg_2;
  wire dat_width_4_reg_3;
  wire dat_width_4_reg_4;
  wire dat_width_4_reg_5;
  wire dat_width_4_reg_6;
  wire dat_width_4_reg_7;
  wire dat_width_4_reg_8;
  wire dat_width_4_reg_9;
  wire dat_wrote_new_word;
  wire data_read_en1;
  wire data_write_en;
  wire \dev_last_block[9]_i_3_n_0 ;
  wire \dev_last_block_reg[7] ;
  wire \dev_last_block_reg[7]_0 ;
  wire [31:0]device_data_out;
  wire empty_reg_0;
  wire empty_reg_1;
  wire [31:0]fifo_data_in;
  wire [9:7]fifo_rdaddr_cur;
  wire [6:0]fifo_rdaddr_next;
  wire [9:7]fifo_rdaddr_next__0;
  wire fifo_resetn;
  wire may_read_data;
  wire multi_block_mode_i_3_n_0;
  wire new_sd_clk;
  wire [9:9]p_0_in;
  wire [0:0]p_0_in_0;
  wire [9:1]p_0_in__0;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_10;
  wire ram_reg_11;
  wire ram_reg_12;
  wire ram_reg_13;
  wire ram_reg_14;
  wire ram_reg_15;
  wire ram_reg_16;
  wire ram_reg_17;
  wire ram_reg_18;
  wire ram_reg_19;
  wire ram_reg_2;
  wire ram_reg_20;
  wire ram_reg_21;
  wire ram_reg_22;
  wire ram_reg_23;
  wire ram_reg_24;
  wire ram_reg_25;
  wire ram_reg_26;
  wire ram_reg_27;
  wire ram_reg_28;
  wire ram_reg_29;
  wire ram_reg_3;
  wire ram_reg_30;
  wire ram_reg_31;
  wire ram_reg_32;
  wire ram_reg_33;
  wire ram_reg_34;
  wire ram_reg_35;
  wire ram_reg_36;
  wire ram_reg_37;
  wire ram_reg_38;
  wire ram_reg_39;
  wire ram_reg_4;
  wire ram_reg_40;
  wire ram_reg_41;
  wire ram_reg_42;
  wire ram_reg_43;
  wire ram_reg_44;
  wire ram_reg_45;
  wire ram_reg_46;
  wire ram_reg_47;
  wire ram_reg_48;
  wire ram_reg_49;
  wire ram_reg_5;
  wire ram_reg_50;
  wire ram_reg_51;
  wire ram_reg_52;
  wire ram_reg_53;
  wire ram_reg_54;
  wire ram_reg_55;
  wire ram_reg_56;
  wire ram_reg_57;
  wire ram_reg_58;
  wire ram_reg_59;
  wire ram_reg_6;
  wire ram_reg_60;
  wire ram_reg_61;
  wire ram_reg_62;
  wire ram_reg_63;
  wire [31:0]ram_reg_64;
  wire [31:0]ram_reg_65;
  wire ram_reg_7;
  wire ram_reg_8;
  wire ram_reg_9;
  wire ram_reg_i_1_n_0;
  wire ram_reg_i_37_n_0;
  wire ram_reg_i_37_n_1;
  wire ram_reg_i_37_n_2;
  wire ram_reg_i_37_n_3;
  wire ram_reg_i_38_n_0;
  wire ram_reg_i_39_n_0;
  wire ram_reg_i_40_n_0;
  wire ram_reg_i_41_n_0;
  wire sys_may_read_i_3_n_0;
  wire sys_may_read_i_4_n_0;
  wire sys_may_read_next;
  wire [2:0]sys_may_read_reg_i_2_0;
  wire sys_may_read_reg_i_2_n_0;
  wire sys_may_write_next;
  wire [0:0]sys_may_write_reg;
  wire [3:0]sys_may_write_reg_0;
  wire [0:0]sys_state;
  wire [3:0]\NLW_addr_out_cur_reg[9]_i_2_O_UNCONNECTED ;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_i_37_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFF5FD0000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2] ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\FSM_onehot_state_reg[0] ),
        .I4(Q[0]),
        .I5(\FSM_onehot_state_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(Q[2]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFBFBFB00)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .I3(\FSM_onehot_state_reg[2]_2 ),
        .I4(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEECCEEC0)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_state_reg[3] ),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[2]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\addr_write_reg[9]_2 ),
        .I1(sys_may_read_reg_i_2_n_0),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF22FFFF2)) 
    \FSM_onehot_sys_state[0]_i_1 
       (.I0(sys_state),
        .I1(\FSM_onehot_sys_state_reg[0]_4 ),
        .I2(\FSM_onehot_sys_state_reg[0]_2 ),
        .I3(\FSM_onehot_sys_state[2]_i_4_n_0 ),
        .I4(\FSM_onehot_sys_state_reg[0]_3 ),
        .I5(\dev_last_block_reg[7] ),
        .O(\FSM_onehot_sys_state_reg[0] ));
  LUT5 #(
    .INIT(32'h00002802)) 
    \FSM_onehot_sys_state[1]_i_1 
       (.I0(\FSM_onehot_sys_state_reg[1] ),
        .I1(\FSM_onehot_sys_state_reg[0]_2 ),
        .I2(\FSM_onehot_sys_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_sys_state_reg[0]_3 ),
        .I4(\dev_last_block_reg[7] ),
        .O(\FSM_onehot_sys_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00002802)) 
    \FSM_onehot_sys_state[2]_i_1 
       (.I0(\FSM_onehot_sys_state_reg[2]_0 ),
        .I1(\FSM_onehot_sys_state_reg[0]_2 ),
        .I2(\FSM_onehot_sys_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_sys_state_reg[0]_3 ),
        .I4(\dev_last_block_reg[7] ),
        .O(\FSM_onehot_sys_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_sys_state[2]_i_11 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(Q[2]),
        .O(\FSM_onehot_sys_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFFFE)) 
    \FSM_onehot_sys_state[2]_i_4 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\FSM_onehot_sys_state[2]_i_7_n_0 ),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_sys_state_reg[2] ),
        .O(\FSM_onehot_sys_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEEFE)) 
    \FSM_onehot_sys_state[2]_i_7 
       (.I0(\FSM_onehot_sys_state[2]_i_11_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\FSM_onehot_sys_state[2]_i_4_0 ),
        .I4(\FSM_onehot_sys_state[2]_i_4_1 ),
        .I5(\FSM_onehot_sys_state[2]_i_4_2 ),
        .O(\FSM_onehot_sys_state[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(empty_reg_0),
        .I1(Q[5]),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(\FSM_sequential_state[0]_i_13_n_0 ),
        .I1(O[1]),
        .I2(sys_may_write_reg),
        .I3(\card_status_resp_reg[8] [3]),
        .I4(O[0]),
        .I5(Q[4]),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(Q[1]),
        .I2(\FSM_sequential_state[1]_i_2 [1]),
        .I3(sys_may_write_reg),
        .I4(O[1]),
        .O(\FSM_onehot_state_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(new_sd_clk),
        .I1(\addr_write_reg[3]_1 ),
        .I2(sys_may_write_reg),
        .I3(O[1]),
        .I4(\FSM_onehot_state_reg[1] ),
        .I5(Q[1]),
        .O(\FSM_onehot_state_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h54)) 
    \addr_out_cur[9]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_state_reg[4] ),
        .I2(empty_reg_0),
        .O(\addr_out_cur[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFE0FFE0FFE0E0)) 
    \addr_out_cur[9]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(dat_wrote_new_word),
        .I3(\addr_out_cur[9]_i_8_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_onehot_state_reg[4] ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_out_cur[9]_i_4 
       (.I0(\addr_write_reg[9]_1 [9]),
        .I1(fifo_rdaddr_next__0[9]),
        .O(\addr_out_cur[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_out_cur[9]_i_5 
       (.I0(fifo_rdaddr_next__0[7]),
        .I1(\addr_write_reg[9]_1 [7]),
        .I2(fifo_rdaddr_next__0[8]),
        .I3(\addr_write_reg[9]_1 [8]),
        .I4(fifo_rdaddr_next[6]),
        .I5(\addr_write_reg[9]_1 [6]),
        .O(\addr_out_cur[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_out_cur[9]_i_6 
       (.I0(fifo_rdaddr_next[3]),
        .I1(\addr_write_reg[9]_1 [3]),
        .I2(fifo_rdaddr_next[5]),
        .I3(\addr_write_reg[9]_1 [5]),
        .I4(fifo_rdaddr_next[4]),
        .I5(\addr_write_reg[9]_1 [4]),
        .O(\addr_out_cur[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_out_cur[9]_i_7 
       (.I0(fifo_rdaddr_next[2]),
        .I1(\addr_write_reg[9]_1 [2]),
        .I2(fifo_rdaddr_next[1]),
        .I3(\addr_write_reg[9]_1 [1]),
        .I4(fifo_rdaddr_next[0]),
        .I5(\addr_write_reg[9]_1 [0]),
        .O(\addr_out_cur[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \addr_out_cur[9]_i_8 
       (.I0(may_read_data),
        .I1(data_read_en1),
        .I2(S_AXI_ARVALID),
        .I3(\addr_out_cur[9]_i_3_0 ),
        .I4(\addr_out_cur[9]_i_3_1 ),
        .I5(\addr_write_reg[9]_2 ),
        .O(\addr_out_cur[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \addr_out_cur[9]_i_9 
       (.I0(\addr_out_cur[9]_i_8_0 [2]),
        .I1(\addr_out_cur[9]_i_8_0 [4]),
        .I2(\addr_out_cur[9]_i_8_0 [0]),
        .I3(\addr_out_cur[9]_i_8_0 [1]),
        .I4(\addr_out_cur[9]_i_8_0 [3]),
        .O(data_read_en1));
  FDRE \addr_out_cur_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(fifo_rdaddr_next__0[7]),
        .Q(fifo_rdaddr_cur[7]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_out_cur_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(fifo_rdaddr_next__0[8]),
        .Q(fifo_rdaddr_cur[8]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_out_cur_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(fifo_rdaddr_next__0[9]),
        .Q(fifo_rdaddr_cur[9]),
        .R(\FSM_onehot_state_reg[1] ));
  CARRY4 \addr_out_cur_reg[9]_i_2 
       (.CI(1'b0),
        .CO({CO,\addr_out_cur_reg[9]_i_2_n_1 ,\addr_out_cur_reg[9]_i_2_n_2 ,\addr_out_cur_reg[9]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_out_cur_reg[9]_i_2_O_UNCONNECTED [3:0]),
        .S({\addr_out_cur[9]_i_4_n_0 ,\addr_out_cur[9]_i_5_n_0 ,\addr_out_cur[9]_i_6_n_0 ,\addr_out_cur[9]_i_7_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_read[0]_i_1 
       (.I0(fifo_rdaddr_next[0]),
        .O(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_read[1]_i_1 
       (.I0(fifo_rdaddr_next[0]),
        .I1(fifo_rdaddr_next[1]),
        .O(\addr_read[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_read[2]_i_1 
       (.I0(fifo_rdaddr_next[2]),
        .I1(fifo_rdaddr_next[1]),
        .I2(fifo_rdaddr_next[0]),
        .O(\addr_read[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_read[3]_i_1 
       (.I0(fifo_rdaddr_next[3]),
        .I1(fifo_rdaddr_next[2]),
        .I2(fifo_rdaddr_next[0]),
        .I3(fifo_rdaddr_next[1]),
        .O(\addr_read[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_read[4]_i_1 
       (.I0(fifo_rdaddr_next[4]),
        .I1(fifo_rdaddr_next[3]),
        .I2(fifo_rdaddr_next[1]),
        .I3(fifo_rdaddr_next[0]),
        .I4(fifo_rdaddr_next[2]),
        .O(\addr_read[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addr_read[5]_i_1 
       (.I0(fifo_rdaddr_next[5]),
        .I1(fifo_rdaddr_next[4]),
        .I2(fifo_rdaddr_next[2]),
        .I3(fifo_rdaddr_next[0]),
        .I4(fifo_rdaddr_next[1]),
        .I5(fifo_rdaddr_next[3]),
        .O(\addr_read[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_read[6]_i_1 
       (.I0(fifo_rdaddr_next[6]),
        .I1(\addr_read[9]_i_2_n_0 ),
        .O(\addr_read[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_read[7]_i_1 
       (.I0(fifo_rdaddr_next__0[7]),
        .I1(fifo_rdaddr_next[6]),
        .I2(\addr_read[9]_i_2_n_0 ),
        .O(\addr_read[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_read[8]_i_1 
       (.I0(fifo_rdaddr_next__0[8]),
        .I1(fifo_rdaddr_next__0[7]),
        .I2(\addr_read[9]_i_2_n_0 ),
        .I3(fifo_rdaddr_next[6]),
        .O(\addr_read[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_read[9]_i_1 
       (.I0(fifo_rdaddr_next__0[9]),
        .I1(fifo_rdaddr_next__0[8]),
        .I2(fifo_rdaddr_next[6]),
        .I3(\addr_read[9]_i_2_n_0 ),
        .I4(fifo_rdaddr_next__0[7]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_read[9]_i_2 
       (.I0(fifo_rdaddr_next[4]),
        .I1(fifo_rdaddr_next[2]),
        .I2(fifo_rdaddr_next[0]),
        .I3(fifo_rdaddr_next[1]),
        .I4(fifo_rdaddr_next[3]),
        .I5(fifo_rdaddr_next[5]),
        .O(\addr_read[9]_i_2_n_0 ));
  FDRE \addr_read_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(p_0_in_0),
        .Q(fifo_rdaddr_next[0]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[1]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[1]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[2]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[2]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[3]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[3]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[4]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[4]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[5]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[5]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[6]_i_1_n_0 ),
        .Q(fifo_rdaddr_next[6]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[7]_i_1_n_0 ),
        .Q(fifo_rdaddr_next__0[7]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(\addr_read[8]_i_1_n_0 ),
        .Q(fifo_rdaddr_next__0[8]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_read_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\addr_out_cur[9]_i_1_n_0 ),
        .D(p_0_in),
        .Q(fifo_rdaddr_next__0[9]),
        .R(\FSM_onehot_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_write[0]_i_1 
       (.I0(\addr_write_reg[9]_1 [0]),
        .O(\addr_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_write[1]_i_1 
       (.I0(\addr_write_reg[9]_1 [1]),
        .I1(\addr_write_reg[9]_1 [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_write[2]_i_1 
       (.I0(\addr_write_reg[9]_1 [2]),
        .I1(\addr_write_reg[9]_1 [0]),
        .I2(\addr_write_reg[9]_1 [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_write[3]_i_1 
       (.I0(\addr_write_reg[9]_1 [3]),
        .I1(\addr_write_reg[9]_1 [2]),
        .I2(\addr_write_reg[9]_1 [1]),
        .I3(\addr_write_reg[9]_1 [0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_write[4]_i_1 
       (.I0(\addr_write_reg[9]_1 [4]),
        .I1(\addr_write_reg[9]_1 [3]),
        .I2(\addr_write_reg[9]_1 [0]),
        .I3(\addr_write_reg[9]_1 [1]),
        .I4(\addr_write_reg[9]_1 [2]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addr_write[5]_i_1 
       (.I0(\addr_write_reg[9]_1 [5]),
        .I1(\addr_write_reg[9]_1 [2]),
        .I2(\addr_write_reg[9]_1 [1]),
        .I3(\addr_write_reg[9]_1 [0]),
        .I4(\addr_write_reg[9]_1 [3]),
        .I5(\addr_write_reg[9]_1 [4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_write[6]_i_1 
       (.I0(\addr_write_reg[9]_1 [6]),
        .I1(\addr_write[9]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_write[7]_i_1 
       (.I0(\addr_write_reg[9]_1 [7]),
        .I1(\addr_write[9]_i_2_n_0 ),
        .I2(\addr_write_reg[9]_1 [6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_write[8]_i_1 
       (.I0(\addr_write_reg[9]_1 [8]),
        .I1(\addr_write_reg[9]_1 [7]),
        .I2(\addr_write_reg[9]_1 [6]),
        .I3(\addr_write[9]_i_2_n_0 ),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_write[9]_i_1 
       (.I0(\addr_write_reg[9]_1 [9]),
        .I1(\addr_write[9]_i_2_n_0 ),
        .I2(\addr_write_reg[9]_1 [6]),
        .I3(\addr_write_reg[9]_1 [7]),
        .I4(\addr_write_reg[9]_1 [8]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_write[9]_i_2 
       (.I0(\addr_write_reg[9]_1 [5]),
        .I1(\addr_write_reg[9]_1 [2]),
        .I2(\addr_write_reg[9]_1 [1]),
        .I3(\addr_write_reg[9]_1 [0]),
        .I4(\addr_write_reg[9]_1 [3]),
        .I5(\addr_write_reg[9]_1 [4]),
        .O(\addr_write[9]_i_2_n_0 ));
  FDRE \addr_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(\addr_write[0]_i_1_n_0 ),
        .Q(\addr_write_reg[9]_1 [0]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[1]),
        .Q(\addr_write_reg[9]_1 [1]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[2]),
        .Q(\addr_write_reg[9]_1 [2]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[3]),
        .Q(\addr_write_reg[9]_1 [3]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[4]),
        .Q(\addr_write_reg[9]_1 [4]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[5]),
        .Q(\addr_write_reg[9]_1 [5]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[6]),
        .Q(\addr_write_reg[9]_1 [6]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[7]),
        .Q(\addr_write_reg[9]_1 [7]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[8]),
        .Q(\addr_write_reg[9]_1 [8]),
        .R(\FSM_onehot_state_reg[1] ));
  FDRE \addr_write_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(addr_write0),
        .D(p_0_in__0[9]),
        .Q(\addr_write_reg[9]_1 [9]),
        .R(\FSM_onehot_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(device_data_out[0]),
        .I1(\axi_rdata_reg[31] [0]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[0] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(ram_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(device_data_out[10]),
        .I1(\axi_rdata_reg[31] [10]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[10] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[10]_0 ),
        .O(ram_reg_22));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(device_data_out[11]),
        .I1(\axi_rdata_reg[31] [11]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[11] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[11]_0 ),
        .O(ram_reg_21));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(device_data_out[12]),
        .I1(\axi_rdata_reg[31] [12]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[12] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[12]_0 ),
        .O(ram_reg_20));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(device_data_out[13]),
        .I1(\axi_rdata_reg[31] [13]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[13] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[13]_0 ),
        .O(ram_reg_19));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(device_data_out[14]),
        .I1(\axi_rdata_reg[31] [14]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[14] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[14]_0 ),
        .O(ram_reg_18));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(device_data_out[15]),
        .I1(\axi_rdata_reg[31] [15]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[15] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[15]_0 ),
        .O(ram_reg_17));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(device_data_out[16]),
        .I1(\axi_rdata_reg[31] [16]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[16] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[16]_0 ),
        .O(ram_reg_16));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(device_data_out[17]),
        .I1(\axi_rdata_reg[31] [17]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[17] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[17]_0 ),
        .O(ram_reg_15));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(device_data_out[18]),
        .I1(\axi_rdata_reg[31] [18]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[18] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[18]_0 ),
        .O(ram_reg_14));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(device_data_out[19]),
        .I1(\axi_rdata_reg[31] [19]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[19] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[19]_0 ),
        .O(ram_reg_13));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(device_data_out[1]),
        .I1(\axi_rdata_reg[31] [1]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[1] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[1]_0 ),
        .O(ram_reg_31));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(device_data_out[20]),
        .I1(\axi_rdata_reg[31] [20]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[20] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[20]_0 ),
        .O(ram_reg_12));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(device_data_out[21]),
        .I1(\axi_rdata_reg[31] [21]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[21] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[21]_0 ),
        .O(ram_reg_11));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(device_data_out[22]),
        .I1(\axi_rdata_reg[31] [22]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[22] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[22]_0 ),
        .O(ram_reg_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(device_data_out[23]),
        .I1(\axi_rdata_reg[31] [23]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[23] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[23]_0 ),
        .O(ram_reg_9));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(device_data_out[24]),
        .I1(\axi_rdata_reg[31] [24]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[24] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[24]_0 ),
        .O(ram_reg_8));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(device_data_out[25]),
        .I1(\axi_rdata_reg[31] [25]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[25] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[25]_0 ),
        .O(ram_reg_7));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(device_data_out[26]),
        .I1(\axi_rdata_reg[31] [26]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[26] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[26]_0 ),
        .O(ram_reg_6));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(device_data_out[27]),
        .I1(\axi_rdata_reg[31] [27]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[27] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[27]_0 ),
        .O(ram_reg_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(device_data_out[28]),
        .I1(\axi_rdata_reg[31] [28]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[28] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[28]_0 ),
        .O(ram_reg_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(device_data_out[29]),
        .I1(\axi_rdata_reg[31] [29]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[29] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[29]_0 ),
        .O(ram_reg_3));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(device_data_out[2]),
        .I1(\axi_rdata_reg[31] [2]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[2] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[2]_0 ),
        .O(ram_reg_30));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(device_data_out[30]),
        .I1(\axi_rdata_reg[31] [30]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[30] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[30]_0 ),
        .O(ram_reg_2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(device_data_out[31]),
        .I1(\axi_rdata_reg[31] [31]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[31]_0 ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[31]_1 ),
        .O(ram_reg_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(device_data_out[3]),
        .I1(\axi_rdata_reg[31] [3]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[3] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[3]_0 ),
        .O(ram_reg_29));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(device_data_out[4]),
        .I1(\axi_rdata_reg[31] [4]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[4] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[4]_0 ),
        .O(ram_reg_28));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(device_data_out[5]),
        .I1(\axi_rdata_reg[31] [5]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[5] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[5]_0 ),
        .O(ram_reg_27));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(device_data_out[6]),
        .I1(\axi_rdata_reg[31] [6]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[6] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[6]_0 ),
        .O(ram_reg_26));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(device_data_out[7]),
        .I1(\axi_rdata_reg[31] [7]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[7] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[7]_0 ),
        .O(ram_reg_25));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(device_data_out[8]),
        .I1(\axi_rdata_reg[31] [8]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[8] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[8]_0 ),
        .O(ram_reg_24));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(device_data_out[9]),
        .I1(\axi_rdata_reg[31] [9]),
        .I2(\addr_out_cur[9]_i_8_0 [3]),
        .I3(\axi_rdata_reg[9] ),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[9]_0 ),
        .O(ram_reg_23));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[10]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[11]),
        .O(dat_width_4_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[11]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[15]),
        .O(dat_width_4_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[12]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[19]),
        .O(dat_width_4_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[13]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[23]),
        .O(dat_width_4_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[14]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[27]),
        .O(dat_width_4_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[15]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[31]),
        .O(dat_width_4_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[24]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[2]),
        .O(dat_width_4_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[25]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[6]),
        .O(dat_width_4_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[26]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[10]),
        .O(dat_width_4_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[27]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[14]),
        .O(dat_width_4_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[28]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[18]),
        .O(dat_width_4_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[29]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[22]),
        .O(dat_width_4_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[30]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[26]),
        .O(dat_width_4_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[31]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[30]),
        .O(dat_width_4_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[32]_i_2 
       (.I0(device_data_out[0]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_63));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[33]_i_2 
       (.I0(device_data_out[1]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_62));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[34]_i_2 
       (.I0(device_data_out[2]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_61));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[35]_i_2 
       (.I0(device_data_out[3]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_60));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[36]_i_2 
       (.I0(device_data_out[4]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_59));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[37]_i_2 
       (.I0(device_data_out[5]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_58));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[38]_i_2 
       (.I0(device_data_out[6]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_57));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[39]_i_2 
       (.I0(device_data_out[7]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_56));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[40]_i_2 
       (.I0(device_data_out[1]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[8]),
        .O(ram_reg_55));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[41]_i_2 
       (.I0(device_data_out[5]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[9]),
        .O(ram_reg_54));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[42]_i_2 
       (.I0(device_data_out[9]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[10]),
        .O(ram_reg_53));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[43]_i_2 
       (.I0(device_data_out[13]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[11]),
        .O(ram_reg_52));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[44]_i_2 
       (.I0(device_data_out[17]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[12]),
        .O(ram_reg_51));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[45]_i_2 
       (.I0(device_data_out[21]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[13]),
        .O(ram_reg_50));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[46]_i_2 
       (.I0(device_data_out[25]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[14]),
        .O(ram_reg_49));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[47]_i_2 
       (.I0(device_data_out[29]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[15]),
        .O(ram_reg_33));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[48]_i_2 
       (.I0(device_data_out[16]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_48));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[49]_i_2 
       (.I0(device_data_out[17]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_47));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[50]_i_2 
       (.I0(device_data_out[18]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_46));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[51]_i_2 
       (.I0(device_data_out[19]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_45));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[52]_i_2 
       (.I0(device_data_out[20]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_44));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[53]_i_2 
       (.I0(device_data_out[21]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_43));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[54]_i_2 
       (.I0(device_data_out[22]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_42));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buf_write[55]_i_2 
       (.I0(device_data_out[23]),
        .I1(\buf_write_reg[47] ),
        .O(ram_reg_41));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[56]_i_2 
       (.I0(device_data_out[0]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[24]),
        .O(ram_reg_40));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[57]_i_2 
       (.I0(device_data_out[4]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[25]),
        .O(ram_reg_39));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[58]_i_2 
       (.I0(device_data_out[8]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[26]),
        .O(ram_reg_38));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[59]_i_2 
       (.I0(device_data_out[12]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[27]),
        .O(ram_reg_37));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[60]_i_3 
       (.I0(device_data_out[16]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[28]),
        .O(ram_reg_36));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[61]_i_3 
       (.I0(device_data_out[20]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[29]),
        .O(ram_reg_35));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[62]_i_5 
       (.I0(device_data_out[24]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[30]),
        .O(ram_reg_34));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[8]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[3]),
        .O(dat_width_4_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[9]_i_2 
       (.I0(\buf_write_reg[47] ),
        .I1(device_data_out[7]),
        .O(dat_width_4_reg_13));
  LUT6 #(
    .INIT(64'h0000000077F70000)) 
    \card_status_resp[8]_i_2 
       (.I0(O[0]),
        .I1(\card_status_resp_reg[8] [3]),
        .I2(\card_status_resp[8]_i_3_n_0 ),
        .I3(\card_status_resp[8]_i_4_n_0 ),
        .I4(\card_status_resp[8]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg[1] ),
        .O(\addr_write_reg[9]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \card_status_resp[8]_i_3 
       (.I0(sys_may_write_reg_0[2]),
        .I1(\card_status_resp_reg[8] [0]),
        .I2(sys_may_write_reg_0[3]),
        .O(\card_status_resp[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \card_status_resp[8]_i_4 
       (.I0(\card_status_resp_reg[8] [1]),
        .I1(sys_may_write_reg_0[0]),
        .I2(sys_may_write_reg_0[1]),
        .I3(\card_status_resp_reg[8] [2]),
        .O(\card_status_resp[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \card_status_resp[8]_i_5 
       (.I0(sys_may_write_reg),
        .I1(O[1]),
        .O(\card_status_resp[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \crc[12]_i_3 
       (.I0(device_data_out[28]),
        .I1(\buf_write_reg[47] ),
        .I2(device_data_out[31]),
        .O(ram_reg_32));
  LUT6 #(
    .INIT(64'hFDFFDDDDDDDDDDDD)) 
    \crc[15]_i_19 
       (.I0(Q[1]),
        .I1(\crc[15]_i_30_n_0 ),
        .I2(\card_status_resp[8]_i_4_n_0 ),
        .I3(\card_status_resp[8]_i_3_n_0 ),
        .I4(\card_status_resp_reg[8] [3]),
        .I5(O[0]),
        .O(\FSM_onehot_state_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \crc[15]_i_30 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(O[1]),
        .I2(sys_may_write_reg),
        .O(\crc[15]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dev_last_block[9]_i_1 
       (.I0(\dev_last_block_reg[7] ),
        .I1(\dev_last_block[9]_i_3_n_0 ),
        .I2(\FSM_onehot_sys_state_reg[0]_2 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h00000111FFFFFEEE)) 
    \dev_last_block[9]_i_3 
       (.I0(\block_size_reg[5] ),
        .I1(\dev_last_block_reg[7]_0 ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[3] ),
        .I5(\FSM_onehot_sys_state_reg[0]_3 ),
        .O(\dev_last_block[9]_i_3_n_0 ));
  FDRE empty_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(empty_reg_1),
        .Q(empty_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    multi_block_mode_i_1
       (.I0(Q[0]),
        .I1(multi_block_mode_i_3_n_0),
        .I2(\FSM_onehot_sys_state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFEEEFFFFFFFF)) 
    multi_block_mode_i_3
       (.I0(\block_size_reg[5] ),
        .I1(\dev_last_block_reg[7]_0 ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[3] ),
        .I5(\FSM_onehot_sys_state_reg[0]_3 ),
        .O(multi_block_mode_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({fifo_rdaddr_next__0[8:7],fifo_rdaddr_next,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\addr_write_reg[9]_1 [8:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(fifo_data_in[15:0]),
        .DIBDI(fifo_data_in[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(device_data_out[15:0]),
        .DOBDO(device_data_out[31:16]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ram_reg_i_1_n_0),
        .ENBWREN(addr_write0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\FSM_onehot_state_reg[1] ),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({fifo_resetn,fifo_resetn,fifo_resetn,fifo_resetn}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    ram_reg_i_1
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\dev_last_block_reg[7] ),
        .I5(\addr_out_cur[9]_i_1_n_0 ),
        .O(ram_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_10
       (.I0(ram_reg_64[9]),
        .I1(Q[4]),
        .I2(ram_reg_65[9]),
        .I3(Q[1]),
        .O(fifo_data_in[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_11
       (.I0(ram_reg_64[8]),
        .I1(Q[4]),
        .I2(ram_reg_65[8]),
        .I3(Q[1]),
        .O(fifo_data_in[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_12
       (.I0(ram_reg_64[7]),
        .I1(Q[4]),
        .I2(ram_reg_65[7]),
        .I3(Q[1]),
        .O(fifo_data_in[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_13
       (.I0(ram_reg_64[6]),
        .I1(Q[4]),
        .I2(ram_reg_65[6]),
        .I3(Q[1]),
        .O(fifo_data_in[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_14
       (.I0(ram_reg_64[5]),
        .I1(Q[4]),
        .I2(ram_reg_65[5]),
        .I3(Q[1]),
        .O(fifo_data_in[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_15
       (.I0(ram_reg_64[4]),
        .I1(Q[4]),
        .I2(ram_reg_65[4]),
        .I3(Q[1]),
        .O(fifo_data_in[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_16
       (.I0(ram_reg_64[3]),
        .I1(Q[4]),
        .I2(ram_reg_65[3]),
        .I3(Q[1]),
        .O(fifo_data_in[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_17
       (.I0(ram_reg_64[2]),
        .I1(Q[4]),
        .I2(ram_reg_65[2]),
        .I3(Q[1]),
        .O(fifo_data_in[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_18
       (.I0(ram_reg_64[1]),
        .I1(Q[4]),
        .I2(ram_reg_65[1]),
        .I3(Q[1]),
        .O(fifo_data_in[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_19
       (.I0(ram_reg_64[0]),
        .I1(Q[4]),
        .I2(ram_reg_65[0]),
        .I3(Q[1]),
        .O(fifo_data_in[0]));
  LUT6 #(
    .INIT(64'h00000000FF808080)) 
    ram_reg_i_2
       (.I0(Q[4]),
        .I1(\addr_write_reg[9]_2 ),
        .I2(data_write_en),
        .I3(Q[1]),
        .I4(dat_got_word),
        .I5(ram_reg_i_37_n_0),
        .O(addr_write0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_20
       (.I0(ram_reg_64[31]),
        .I1(Q[4]),
        .I2(ram_reg_65[31]),
        .I3(Q[1]),
        .O(fifo_data_in[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_21
       (.I0(ram_reg_64[30]),
        .I1(Q[4]),
        .I2(ram_reg_65[30]),
        .I3(Q[1]),
        .O(fifo_data_in[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_22
       (.I0(ram_reg_64[29]),
        .I1(Q[4]),
        .I2(ram_reg_65[29]),
        .I3(Q[1]),
        .O(fifo_data_in[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_23
       (.I0(ram_reg_64[28]),
        .I1(Q[4]),
        .I2(ram_reg_65[28]),
        .I3(Q[1]),
        .O(fifo_data_in[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_24
       (.I0(ram_reg_64[27]),
        .I1(Q[4]),
        .I2(ram_reg_65[27]),
        .I3(Q[1]),
        .O(fifo_data_in[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_25
       (.I0(ram_reg_64[26]),
        .I1(Q[4]),
        .I2(ram_reg_65[26]),
        .I3(Q[1]),
        .O(fifo_data_in[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_26
       (.I0(ram_reg_64[25]),
        .I1(Q[4]),
        .I2(ram_reg_65[25]),
        .I3(Q[1]),
        .O(fifo_data_in[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_27
       (.I0(ram_reg_64[24]),
        .I1(Q[4]),
        .I2(ram_reg_65[24]),
        .I3(Q[1]),
        .O(fifo_data_in[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_28
       (.I0(ram_reg_64[23]),
        .I1(Q[4]),
        .I2(ram_reg_65[23]),
        .I3(Q[1]),
        .O(fifo_data_in[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_29
       (.I0(ram_reg_64[22]),
        .I1(Q[4]),
        .I2(ram_reg_65[22]),
        .I3(Q[1]),
        .O(fifo_data_in[22]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    ram_reg_i_3
       (.I0(\dev_last_block_reg[7] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\FSM_onehot_state_reg[1] ));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_30
       (.I0(ram_reg_64[21]),
        .I1(Q[4]),
        .I2(ram_reg_65[21]),
        .I3(Q[1]),
        .O(fifo_data_in[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_31
       (.I0(ram_reg_64[20]),
        .I1(Q[4]),
        .I2(ram_reg_65[20]),
        .I3(Q[1]),
        .O(fifo_data_in[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_32
       (.I0(ram_reg_64[19]),
        .I1(Q[4]),
        .I2(ram_reg_65[19]),
        .I3(Q[1]),
        .O(fifo_data_in[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_33
       (.I0(ram_reg_64[18]),
        .I1(Q[4]),
        .I2(ram_reg_65[18]),
        .I3(Q[1]),
        .O(fifo_data_in[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_34
       (.I0(ram_reg_64[17]),
        .I1(Q[4]),
        .I2(ram_reg_65[17]),
        .I3(Q[1]),
        .O(fifo_data_in[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_35
       (.I0(ram_reg_64[16]),
        .I1(Q[4]),
        .I2(ram_reg_65[16]),
        .I3(Q[1]),
        .O(fifo_data_in[16]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    ram_reg_i_36
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\dev_last_block_reg[7] ),
        .O(fifo_resetn));
  CARRY4 ram_reg_i_37
       (.CI(1'b0),
        .CO({ram_reg_i_37_n_0,ram_reg_i_37_n_1,ram_reg_i_37_n_2,ram_reg_i_37_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ram_reg_i_37_O_UNCONNECTED[3:0]),
        .S({ram_reg_i_38_n_0,ram_reg_i_39_n_0,ram_reg_i_40_n_0,ram_reg_i_41_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_i_38
       (.I0(fifo_rdaddr_next__0[9]),
        .I1(\addr_write_reg[9]_1 [9]),
        .O(ram_reg_i_38_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_reg_i_39
       (.I0(fifo_rdaddr_next__0[7]),
        .I1(\addr_write_reg[9]_1 [7]),
        .I2(fifo_rdaddr_next__0[8]),
        .I3(\addr_write_reg[9]_1 [8]),
        .I4(fifo_rdaddr_next[6]),
        .I5(\addr_write_reg[9]_1 [6]),
        .O(ram_reg_i_39_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_4
       (.I0(ram_reg_64[15]),
        .I1(Q[4]),
        .I2(ram_reg_65[15]),
        .I3(Q[1]),
        .O(fifo_data_in[15]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_reg_i_40
       (.I0(fifo_rdaddr_next[3]),
        .I1(\addr_write_reg[9]_1 [3]),
        .I2(fifo_rdaddr_next[5]),
        .I3(\addr_write_reg[9]_1 [5]),
        .I4(fifo_rdaddr_next[4]),
        .I5(\addr_write_reg[9]_1 [4]),
        .O(ram_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_reg_i_41
       (.I0(fifo_rdaddr_next[2]),
        .I1(\addr_write_reg[9]_1 [2]),
        .I2(fifo_rdaddr_next[1]),
        .I3(\addr_write_reg[9]_1 [1]),
        .I4(fifo_rdaddr_next[0]),
        .I5(\addr_write_reg[9]_1 [0]),
        .O(ram_reg_i_41_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_5
       (.I0(ram_reg_64[14]),
        .I1(Q[4]),
        .I2(ram_reg_65[14]),
        .I3(Q[1]),
        .O(fifo_data_in[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_6
       (.I0(ram_reg_64[13]),
        .I1(Q[4]),
        .I2(ram_reg_65[13]),
        .I3(Q[1]),
        .O(fifo_data_in[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_7
       (.I0(ram_reg_64[12]),
        .I1(Q[4]),
        .I2(ram_reg_65[12]),
        .I3(Q[1]),
        .O(fifo_data_in[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_8
       (.I0(ram_reg_64[11]),
        .I1(Q[4]),
        .I2(ram_reg_65[11]),
        .I3(Q[1]),
        .O(fifo_data_in[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_i_9
       (.I0(ram_reg_64[10]),
        .I1(Q[4]),
        .I2(ram_reg_65[10]),
        .I3(Q[1]),
        .O(fifo_data_in[10]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \sd_dat_o_sys[3]_i_9 
       (.I0(Q[1]),
        .I1(\addr_write_reg[9]_0 ),
        .I2(new_sd_clk),
        .I3(\FSM_sequential_state[1]_i_2 [0]),
        .O(\FSM_onehot_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    sys_may_read_i_1
       (.I0(sys_may_read_reg_i_2_n_0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\addr_write_reg[9]_2 ),
        .O(sys_may_read_next));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sys_may_read_i_3
       (.I0(fifo_rdaddr_next__0[8]),
        .I1(sys_may_read_reg_i_2_0[1]),
        .I2(fifo_rdaddr_next__0[7]),
        .I3(sys_may_read_reg_i_2_0[0]),
        .I4(sys_may_read_reg_i_2_0[2]),
        .I5(fifo_rdaddr_next__0[9]),
        .O(sys_may_read_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sys_may_read_i_4
       (.I0(fifo_rdaddr_cur[9]),
        .I1(sys_may_read_reg_i_2_0[2]),
        .I2(fifo_rdaddr_cur[8]),
        .I3(sys_may_read_reg_i_2_0[1]),
        .I4(sys_may_read_reg_i_2_0[0]),
        .I5(fifo_rdaddr_cur[7]),
        .O(sys_may_read_i_4_n_0));
  MUXF7 sys_may_read_reg_i_2
       (.I0(sys_may_read_i_3_n_0),
        .I1(sys_may_read_i_4_n_0),
        .O(sys_may_read_reg_i_2_n_0),
        .S(\addr_out_cur[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    sys_may_write_i_1
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(O[1]),
        .I2(sys_may_write_reg),
        .I3(\addr_write_reg[3]_1 ),
        .I4(Q[4]),
        .I5(\addr_write_reg[9]_2 ),
        .O(sys_may_write_next));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    sys_may_write_i_2
       (.I0(\card_status_resp[8]_i_4_n_0 ),
        .I1(sys_may_write_reg_0[2]),
        .I2(\card_status_resp_reg[8] [0]),
        .I3(sys_may_write_reg_0[3]),
        .I4(\card_status_resp_reg[8] [3]),
        .I5(O[0]),
        .O(\addr_write_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__0_i_1
       (.I0(\addr_write_reg[9]_1 [7]),
        .I1(fifo_rdaddr_next__0[7]),
        .O(\addr_write_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__0_i_2
       (.I0(\addr_write_reg[9]_1 [6]),
        .I1(fifo_rdaddr_next[6]),
        .O(\addr_write_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__0_i_3
       (.I0(\addr_write_reg[9]_1 [5]),
        .I1(fifo_rdaddr_next[5]),
        .O(\addr_write_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__0_i_4
       (.I0(\addr_write_reg[9]_1 [4]),
        .I1(fifo_rdaddr_next[4]),
        .O(\addr_write_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__1_i_1
       (.I0(\addr_write_reg[9]_1 [9]),
        .I1(fifo_rdaddr_next__0[9]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry__1_i_2
       (.I0(\addr_write_reg[9]_1 [8]),
        .I1(fifo_rdaddr_next__0[8]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry_i_1
       (.I0(\addr_write_reg[9]_1 [3]),
        .I1(fifo_rdaddr_next[3]),
        .O(\addr_write_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry_i_2
       (.I0(\addr_write_reg[9]_1 [2]),
        .I1(fifo_rdaddr_next[2]),
        .O(\addr_write_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry_i_3
       (.I0(\addr_write_reg[9]_1 [1]),
        .I1(fifo_rdaddr_next[1]),
        .O(\addr_write_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    write_ok2_carry_i_4
       (.I0(\addr_write_reg[9]_1 [0]),
        .I1(fifo_rdaddr_next[0]),
        .O(\addr_write_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "inactive_keeper" *) 
module adapter_axi_sd_0_0_inactive_keeper
   (S_AXI_ARESETN_0,
    inactive_reg_0,
    got_acmd41_non_query_reg_0,
    SR,
    \set_reg_clear_reset[10].reg_clear_reset_reg[10][22] ,
    \reg_saved_reg[19][22] ,
    device_reset_r_reg,
    resetn,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][31] ,
    \got_cmd0_reg[0]_0 ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][30] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][29] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][28] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][27] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][26] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][25] ,
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][24] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][31] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][30] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][29] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][28] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][27] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][26] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][25] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][24] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][23] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][22] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][21] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][20] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][19] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][18] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][17] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][16] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][15] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][14] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][13] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][12] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][11] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][10] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][9] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][8] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][7] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][6] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][5] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][4] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][3] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][2] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][1] ,
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][0] ,
    got_cmd00,
    S_AXI_ACLK,
    inactive_reg_1,
    got_acmd41_non_query_reg_1,
    S_AXI_ARESETN,
    interrupt,
    device_reset_r,
    \axi_rdata[22]_i_3 ,
    \axi_rdata[22]_i_3_0 ,
    \axi_rdata[22]_i_3_1 ,
    \axi_rdata[22]_i_3_2 ,
    device_reset_r_reg_0,
    \ocr_high_byte_reg[31] ,
    \size_reg[31] );
  output S_AXI_ARESETN_0;
  output inactive_reg_0;
  output got_acmd41_non_query_reg_0;
  output [0:0]SR;
  output \set_reg_clear_reset[10].reg_clear_reset_reg[10][22] ;
  output \reg_saved_reg[19][22] ;
  output device_reset_r_reg;
  output resetn;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][31] ;
  output \got_cmd0_reg[0]_0 ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][30] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][29] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][28] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][27] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][26] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][25] ;
  output \set_reg_clear_reset[8].reg_clear_reset_reg[8][24] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][31] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][30] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][29] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][28] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][27] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][26] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][25] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][24] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][23] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][22] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][21] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][20] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][19] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][18] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][17] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][16] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][15] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][14] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][13] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][12] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][11] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][10] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][9] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][8] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][7] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][6] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][5] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][4] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][3] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][2] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][1] ;
  output \set_reg_clear_reset[9].reg_clear_reset_reg[9][0] ;
  input got_cmd00;
  input S_AXI_ACLK;
  input inactive_reg_1;
  input got_acmd41_non_query_reg_1;
  input S_AXI_ARESETN;
  input [1:0]interrupt;
  input device_reset_r;
  input [0:0]\axi_rdata[22]_i_3 ;
  input [0:0]\axi_rdata[22]_i_3_0 ;
  input [1:0]\axi_rdata[22]_i_3_1 ;
  input [0:0]\axi_rdata[22]_i_3_2 ;
  input device_reset_r_reg_0;
  input [7:0]\ocr_high_byte_reg[31] ;
  input [31:0]\size_reg[31] ;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire [0:0]\axi_rdata[22]_i_3 ;
  wire [0:0]\axi_rdata[22]_i_3_0 ;
  wire [1:0]\axi_rdata[22]_i_3_1 ;
  wire [0:0]\axi_rdata[22]_i_3_2 ;
  wire device_reset_r;
  wire device_reset_r_reg;
  wire device_reset_r_reg_0;
  wire got_acmd41_non_query_reg_0;
  wire got_acmd41_non_query_reg_1;
  wire got_cmd00;
  wire \got_cmd0_reg[0]_0 ;
  wire got_reset_cmd;
  wire inactive_reg_0;
  wire inactive_reg_1;
  wire [1:0]interrupt;
  wire [7:0]\ocr_high_byte_reg[31] ;
  wire \reg_saved_reg[19][22] ;
  wire resetn;
  wire \set_reg_clear_reset[10].reg_clear_reset_reg[10][22] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][24] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][25] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][26] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][27] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][28] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][29] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][30] ;
  wire \set_reg_clear_reset[8].reg_clear_reset_reg[8][31] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][0] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][10] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][11] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][12] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][13] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][14] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][15] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][16] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][17] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][18] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][19] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][1] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][20] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][21] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][22] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][23] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][24] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][25] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][26] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][27] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][28] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][29] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][2] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][30] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][31] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][3] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][4] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][5] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][6] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][7] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][8] ;
  wire \set_reg_clear_reset[9].reg_clear_reset_reg[9][9] ;
  wire [31:0]\size_reg[31] ;

  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(got_reset_cmd),
        .I1(S_AXI_ARESETN),
        .I2(inactive_reg_0),
        .O(\got_cmd0_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\axi_rdata[22]_i_3 ),
        .I1(\axi_rdata[22]_i_3_0 ),
        .I2(\axi_rdata[22]_i_3_1 [1]),
        .I3(\axi_rdata[22]_i_3_2 ),
        .I4(\axi_rdata[22]_i_3_1 [0]),
        .I5(inactive_reg_0),
        .O(\reg_saved_reg[19][22] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    device_reset_r_i_1
       (.I0(device_reset_r),
        .I1(got_reset_cmd),
        .I2(S_AXI_ARESETN),
        .I3(device_reset_r_reg_0),
        .O(device_reset_r_reg));
  FDRE got_acmd41_non_query_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(got_acmd41_non_query_reg_1),
        .Q(got_acmd41_non_query_reg_0),
        .R(S_AXI_ARESETN_0));
  FDRE \got_cmd0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(got_cmd00),
        .Q(got_reset_cmd),
        .R(S_AXI_ARESETN_0));
  FDRE inactive_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(inactive_reg_1),
        .Q(inactive_reg_0),
        .R(S_AXI_ARESETN_0));
  LUT4 #(
    .INIT(16'hF888)) 
    interrupt_INST_0_i_2
       (.I0(interrupt[0]),
        .I1(inactive_reg_0),
        .I2(interrupt[1]),
        .I3(device_reset_r),
        .O(\set_reg_clear_reset[10].reg_clear_reset_reg[10][22] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[24]_i_1 
       (.I0(\ocr_high_byte_reg[31] [0]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][24] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[25]_i_1 
       (.I0(\ocr_high_byte_reg[31] [1]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][25] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[26]_i_1 
       (.I0(\ocr_high_byte_reg[31] [2]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][26] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[27]_i_1 
       (.I0(\ocr_high_byte_reg[31] [3]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][27] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[28]_i_1 
       (.I0(\ocr_high_byte_reg[31] [4]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][28] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[29]_i_1 
       (.I0(\ocr_high_byte_reg[31] [5]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][29] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[30]_i_1 
       (.I0(\ocr_high_byte_reg[31] [6]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][30] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ocr_high_byte[31]_i_2 
       (.I0(\ocr_high_byte_reg[31] [7]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[8].reg_clear_reset_reg[8][31] ));
  LUT3 #(
    .INIT(8'hFB)) 
    resetn_reg_inv_i_1
       (.I0(inactive_reg_0),
        .I1(S_AXI_ARESETN),
        .I2(got_reset_cmd),
        .O(resetn));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \set_reg_clear_reset[9].reg_clear_reset[9][31]_i_1 
       (.I0(got_reset_cmd),
        .I1(S_AXI_ARESETN),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[0]_i_1 
       (.I0(\size_reg[31] [0]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][0] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[10]_i_1 
       (.I0(\size_reg[31] [10]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][10] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[11]_i_1 
       (.I0(\size_reg[31] [11]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][11] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[12]_i_1 
       (.I0(\size_reg[31] [12]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][12] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[13]_i_1 
       (.I0(\size_reg[31] [13]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][13] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[14]_i_1 
       (.I0(\size_reg[31] [14]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][14] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[15]_i_1 
       (.I0(\size_reg[31] [15]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][15] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[16]_i_1 
       (.I0(\size_reg[31] [16]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][16] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[17]_i_1 
       (.I0(\size_reg[31] [17]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][17] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[18]_i_1 
       (.I0(\size_reg[31] [18]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][18] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[19]_i_1 
       (.I0(\size_reg[31] [19]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][19] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[1]_i_1 
       (.I0(\size_reg[31] [1]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][1] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[20]_i_1 
       (.I0(\size_reg[31] [20]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][20] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[21]_i_1 
       (.I0(\size_reg[31] [21]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][21] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[22]_i_1 
       (.I0(\size_reg[31] [22]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][22] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[23]_i_1 
       (.I0(\size_reg[31] [23]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][23] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[24]_i_1 
       (.I0(\size_reg[31] [24]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][24] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[25]_i_1 
       (.I0(\size_reg[31] [25]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][25] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[26]_i_1 
       (.I0(\size_reg[31] [26]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][26] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[27]_i_1 
       (.I0(\size_reg[31] [27]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][27] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[28]_i_1 
       (.I0(\size_reg[31] [28]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][28] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[29]_i_1 
       (.I0(\size_reg[31] [29]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][29] ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[2]_i_1 
       (.I0(\size_reg[31] [2]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][2] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[30]_i_1 
       (.I0(\size_reg[31] [30]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][30] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[31]_i_1 
       (.I0(\size_reg[31] [31]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][31] ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[3]_i_1 
       (.I0(\size_reg[31] [3]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][3] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[4]_i_1 
       (.I0(\size_reg[31] [4]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][4] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[5]_i_1 
       (.I0(\size_reg[31] [5]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][5] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[6]_i_1 
       (.I0(\size_reg[31] [6]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][6] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[7]_i_1 
       (.I0(\size_reg[31] [7]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][7] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[8]_i_1 
       (.I0(\size_reg[31] [8]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][8] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \size[9]_i_1 
       (.I0(\size_reg[31] [9]),
        .I1(\got_cmd0_reg[0]_0 ),
        .O(\set_reg_clear_reset[9].reg_clear_reset_reg[9][9] ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc
   (\state_reg[4] ,
    \state_reg[3] ,
    send_resp_o_reg,
    write_stb_received_r_reg,
    \counter_reg[0] ,
    \state_reg[4]_0 ,
    D,
    \counter_reg[1] ,
    \state_reg[1] ,
    cmd_crc_err_next,
    sd_cmd_o_sys0,
    \state_reg[4]_1 ,
    \crc_reg[5]_0 ,
    \state_reg[5] ,
    SR,
    \state_reg[2] ,
    \state_reg[3]_0 ,
    \state_reg[1]_0 ,
    DI,
    S,
    \counter_reg[6] ,
    \counter_reg[5] ,
    Q,
    E,
    send_no_resp,
    \counter_reg[7] ,
    \cmd_arg_reg[0] ,
    \state_reg[1]_1 ,
    sd_cmd_o_sys_reg,
    sd_cmd_o_sys_reg_0,
    \counter_reg[0]_0 ,
    \counter_reg[0]_1 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    send_resp,
    write_stb_received_r,
    resp_no_crc,
    CO,
    \state[5]_i_6_0 ,
    S_AXI_ACLK);
  output \state_reg[4] ;
  output \state_reg[3] ;
  output send_resp_o_reg;
  output write_stb_received_r_reg;
  output \counter_reg[0] ;
  output \state_reg[4]_0 ;
  output [3:0]D;
  output \counter_reg[1] ;
  output \state_reg[1] ;
  output cmd_crc_err_next;
  output sd_cmd_o_sys0;
  output \state_reg[4]_1 ;
  output [5:0]\crc_reg[5]_0 ;
  output \state_reg[5] ;
  output [0:0]SR;
  output [2:0]\state_reg[2] ;
  output \state_reg[3]_0 ;
  output [0:0]\state_reg[1]_0 ;
  output [2:0]DI;
  output [3:0]S;
  output [0:0]\counter_reg[6] ;
  output [0:0]\counter_reg[5] ;
  input [5:0]Q;
  input [0:0]E;
  input send_no_resp;
  input [7:0]\counter_reg[7] ;
  input [0:0]\cmd_arg_reg[0] ;
  input [0:0]\state_reg[1]_1 ;
  input [6:0]sd_cmd_o_sys_reg;
  input [6:0]sd_cmd_o_sys_reg_0;
  input \counter_reg[0]_0 ;
  input \counter_reg[0]_1 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input send_resp;
  input write_stb_received_r;
  input resp_no_crc;
  input [0:0]CO;
  input [3:0]\state[5]_i_6_0 ;
  input S_AXI_ACLK;

  wire [0:0]CO;
  wire [3:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]\cmd_arg_reg[0] ;
  wire cmd_crc_err_i_2_n_0;
  wire cmd_crc_err_next;
  wire \counter[7]_i_3_n_0 ;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[1] ;
  wire [0:0]\counter_reg[5] ;
  wire [0:0]\counter_reg[6] ;
  wire [7:0]\counter_reg[7] ;
  wire [3:3]crc0;
  wire [0:0]crc2;
  wire \crc[3]_i_3_n_0 ;
  wire \crc[6]_i_1_n_0 ;
  wire [5:0]\crc_reg[5]_0 ;
  wire [6:0]crc_result;
  wire resp_no_crc;
  wire sd_cmd_o_sys0;
  wire sd_cmd_o_sys_i_2_n_0;
  wire sd_cmd_o_sys_i_3_n_0;
  wire [6:0]sd_cmd_o_sys_reg;
  wire [6:0]sd_cmd_o_sys_reg_0;
  wire send_no_resp;
  wire send_resp;
  wire send_resp_o_reg;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[4]_i_10_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[5]_i_4_n_0 ;
  wire \state[5]_i_5_n_0 ;
  wire [3:0]\state[5]_i_6_0 ;
  wire \state[5]_i_6_n_0 ;
  wire \state[5]_i_7_n_0 ;
  wire \state[5]_i_8_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire [0:0]\state_reg[1]_1 ;
  wire [2:0]\state_reg[2] ;
  wire \state_reg[3] ;
  wire \state_reg[3]_0 ;
  wire \state_reg[4] ;
  wire \state_reg[4]_0 ;
  wire \state_reg[4]_1 ;
  wire \state_reg[5] ;
  wire write_stb_received_r;
  wire write_stb_received_r_reg;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[1]_i_1__0 
       (.I0(crc_result[0]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[0]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[0]),
        .O(\crc_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[2]_i_1__0 
       (.I0(crc_result[1]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[1]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[1]),
        .O(\crc_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[3]_i_1__0 
       (.I0(crc_result[2]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[2]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[2]),
        .O(\crc_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[4]_i_1__0 
       (.I0(crc_result[3]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[3]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[3]),
        .O(\crc_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[5]_i_1__0 
       (.I0(crc_result[4]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[4]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[4]),
        .O(\crc_reg[5]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[6]_i_1__0 
       (.I0(crc_result[5]),
        .I1(\state_reg[4] ),
        .I2(sd_cmd_o_sys_reg[5]),
        .I3(\state_reg[5] ),
        .I4(sd_cmd_o_sys_reg_0[5]),
        .O(\crc_reg[5]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h0EEEEEEE)) 
    \buf_write[6]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\counter_reg[7] [2]),
        .I3(\counter_reg[7] [0]),
        .I4(\counter_reg[7] [1]),
        .O(\state_reg[5] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cmd_crc_err_i_1
       (.I0(crc_result[6]),
        .I1(crc_result[0]),
        .I2(crc_result[3]),
        .I3(crc_result[4]),
        .I4(cmd_crc_err_i_2_n_0),
        .O(cmd_crc_err_next));
  LUT4 #(
    .INIT(16'hFFFD)) 
    cmd_crc_err_i_2
       (.I0(\state_reg[1]_1 ),
        .I1(crc_result[5]),
        .I2(crc_result[1]),
        .I3(crc_result[2]),
        .O(cmd_crc_err_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[7] [2]),
        .I1(\counter_reg[7] [1]),
        .I2(\counter_reg[7] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[7] [3]),
        .I1(\counter_reg[7] [2]),
        .I2(\counter_reg[7] [0]),
        .I3(\counter_reg[7] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(\counter_reg[7] [5]),
        .I1(\counter_reg[7] [1]),
        .I2(\counter_reg[7] [0]),
        .I3(\counter_reg[7] [2]),
        .I4(\counter_reg[7] [3]),
        .I5(\counter_reg[7] [4]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[7]_i_1 
       (.I0(\counter_reg[0]_0 ),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(\counter_reg[0]_1 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \counter[7]_i_2 
       (.I0(\counter_reg[7] [7]),
        .I1(\counter_reg[1] ),
        .I2(\counter_reg[7] [3]),
        .I3(\counter_reg[7] [4]),
        .I4(\counter_reg[7] [5]),
        .I5(\counter_reg[7] [6]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF9FF99FF9FFFF)) 
    \counter[7]_i_3 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state_reg[2] [1]),
        .I4(Q[2]),
        .I5(\state[2]_i_2_n_0 ),
        .O(\counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[7]_i_5 
       (.I0(\counter_reg[7] [1]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [2]),
        .O(\counter_reg[1] ));
  LUT5 #(
    .INIT(32'h025D5708)) 
    \crc[0]_i_1__3 
       (.I0(\state_reg[4]_1 ),
        .I1(\crc[3]_i_3_n_0 ),
        .I2(\state_reg[4] ),
        .I3(crc_result[6]),
        .I4(\state_reg[1]_1 ),
        .O(crc2));
  LUT6 #(
    .INIT(64'hAAA5AA5A96969696)) 
    \crc[3]_i_1 
       (.I0(crc_result[2]),
        .I1(\state_reg[1]_1 ),
        .I2(crc_result[6]),
        .I3(\state_reg[4] ),
        .I4(\crc[3]_i_3_n_0 ),
        .I5(\state_reg[4]_1 ),
        .O(crc0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \crc[3]_i_2 
       (.I0(\state_reg[3] ),
        .I1(Q[4]),
        .O(\state_reg[4] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \crc[3]_i_3 
       (.I0(sd_cmd_o_sys_reg[6]),
        .I1(\state_reg[5] ),
        .I2(sd_cmd_o_sys_reg_0[6]),
        .O(\crc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \crc[6]_i_1 
       (.I0(\counter_reg[0]_0 ),
        .I1(\state_reg[2] [1]),
        .I2(\state_reg[4]_1 ),
        .O(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc2),
        .Q(crc_result[0]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc_result[0]),
        .Q(crc_result[1]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc_result[1]),
        .Q(crc_result[2]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc0),
        .Q(crc_result[3]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc_result[3]),
        .Q(crc_result[4]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc_result[4]),
        .Q(crc_result[5]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(crc_result[5]),
        .Q(crc_result[6]),
        .R(\crc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    got_new_cmd_i_1
       (.I0(Q[1]),
        .I1(\counter_reg[0] ),
        .I2(cmd_crc_err_next),
        .I3(\cmd_arg_reg[0] ),
        .O(\state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF111F1)) 
    sd_cmd_o_sys_i_1
       (.I0(\state_reg[4]_1 ),
        .I1(\state_reg[3] ),
        .I2(\crc[3]_i_3_n_0 ),
        .I3(\state_reg[4] ),
        .I4(crc_result[6]),
        .I5(sd_cmd_o_sys_i_2_n_0),
        .O(sd_cmd_o_sys0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sd_cmd_o_sys_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(sd_cmd_o_sys_i_3_n_0),
        .O(sd_cmd_o_sys_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF07FFF7FFF7FFF7)) 
    sd_cmd_o_sys_i_3
       (.I0(Q[5]),
        .I1(D[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(resp_no_crc),
        .I5(\state[5]_i_7_n_0 ),
        .O(sd_cmd_o_sys_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .O(\state_reg[2] [0]));
  LUT6 #(
    .INIT(64'h000000000000B0BB)) 
    \state[0]_i_2 
       (.I0(\state_reg[0] ),
        .I1(\state[5]_i_5_n_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\state[0]_i_5_n_0 ),
        .I5(\state[5]_i_4_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F08800000088)) 
    \state[0]_i_5 
       (.I0(send_no_resp),
        .I1(Q[2]),
        .I2(\state[2]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\counter_reg[0] ),
        .O(\state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDDDD00C0)) 
    \state[1]_i_1 
       (.I0(\counter_reg[0] ),
        .I1(Q[0]),
        .I2(E),
        .I3(\state_reg[1]_1 ),
        .I4(Q[1]),
        .O(\state_reg[2] [1]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \state[1]_i_2 
       (.I0(D[2]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [3]),
        .I4(\counter_reg[7] [2]),
        .I5(E),
        .O(\counter_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .O(\state_reg[2] [2]));
  LUT5 #(
    .INIT(32'h3AFA3A3A)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\state_reg[1]_1 ),
        .I4(E),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF000F0FFEEEEFFFF)) 
    \state[2]_i_3 
       (.I0(E),
        .I1(send_no_resp),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\counter_reg[0] ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[2]_i_4 
       (.I0(cmd_crc_err_next),
        .I1(\cmd_arg_reg[0] ),
        .O(\state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \state[3]_i_2 
       (.I0(write_stb_received_r_reg),
        .I1(Q[3]),
        .I2(send_resp_o_reg),
        .O(\state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \state[4]_i_1 
       (.I0(\state[5]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(\state[4]_i_2_n_0 ),
        .I3(\state[4]_i_3_n_0 ),
        .O(\state_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h8015)) 
    \state[4]_i_10 
       (.I0(\counter_reg[7] [3]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [2]),
        .O(\state[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7073404070737073)) 
    \state[4]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(Q[0]),
        .I2(E),
        .I3(\state_reg[1] ),
        .I4(\counter_reg[0] ),
        .I5(Q[1]),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD5D0D0DFFFFFFFF)) 
    \state[4]_i_3 
       (.I0(Q[4]),
        .I1(\state[5]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(send_resp_o_reg),
        .I4(write_stb_received_r_reg),
        .I5(\state[5]_i_5_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \state[4]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(send_no_resp),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'h11111000)) 
    \state[4]_i_5 
       (.I0(send_resp),
        .I1(write_stb_received_r),
        .I2(D[0]),
        .I3(E),
        .I4(send_no_resp),
        .O(send_resp_o_reg));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hBBBF)) 
    \state[4]_i_6 
       (.I0(\state[4]_i_7_n_0 ),
        .I1(E),
        .I2(write_stb_received_r),
        .I3(send_resp),
        .O(write_stb_received_r_reg));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \state[4]_i_7 
       (.I0(\state[4]_i_8_n_0 ),
        .I1(\state[4]_i_9_n_0 ),
        .I2(\counter_reg[7] [7]),
        .I3(\counter_reg[7] [6]),
        .I4(CO),
        .I5(\state[4]_i_10_n_0 ),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000015555555)) 
    \state[4]_i_8 
       (.I0(\counter_reg[7] [5]),
        .I1(\counter_reg[7] [3]),
        .I2(\counter_reg[7] [2]),
        .I3(\counter_reg[7] [0]),
        .I4(\counter_reg[7] [1]),
        .I5(\counter_reg[7] [4]),
        .O(\state[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \state[4]_i_9 
       (.I0(\counter_reg[7] [2]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [3]),
        .I4(\counter_reg[7] [4]),
        .I5(\counter_reg[7] [5]),
        .O(\state[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA08)) 
    \state[5]_i_1 
       (.I0(\state[5]_i_2_n_0 ),
        .I1(\state_reg[4]_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(\state[5]_i_4_n_0 ),
        .O(\state_reg[3] ));
  LUT6 #(
    .INIT(64'hF755F755F300C000)) 
    \state[5]_i_2 
       (.I0(\state[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\state_reg[3]_0 ),
        .I3(\state[5]_i_5_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\state[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[5]_i_3 
       (.I0(\state[5]_i_6_n_0 ),
        .I1(Q[4]),
        .O(\state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[5]_i_4 
       (.I0(sd_cmd_o_sys_i_2_n_0),
        .I1(E),
        .O(\state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[5]_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\state[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \state[5]_i_6 
       (.I0(\state[5]_i_7_n_0 ),
        .I1(E),
        .I2(resp_no_crc),
        .O(\state[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B0B000B)) 
    \state[5]_i_7 
       (.I0(D[3]),
        .I1(\state[5]_i_6_0 [3]),
        .I2(\state[5]_i_8_n_0 ),
        .I3(\state[5]_i_6_0 [2]),
        .I4(D[2]),
        .O(\state[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4FF44484)) 
    \state[5]_i_8 
       (.I0(\counter_reg[7] [4]),
        .I1(\state[5]_i_6_0 [1]),
        .I2(\counter_reg[7] [3]),
        .I3(\counter_reg[1] ),
        .I4(\state[5]_i_6_0 [0]),
        .O(\state[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    state_next3_carry__0_i_1
       (.I0(\counter_reg[7] [5]),
        .I1(\counter_reg[7] [4]),
        .I2(\counter_reg[7] [3]),
        .I3(\counter_reg[1] ),
        .I4(\counter_reg[7] [7]),
        .I5(\counter_reg[7] [6]),
        .O(\counter_reg[5] ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    state_next3_carry__0_i_2
       (.I0(\counter_reg[7] [6]),
        .I1(\counter_reg[7] [7]),
        .I2(\counter_reg[1] ),
        .I3(\counter_reg[7] [3]),
        .I4(\counter_reg[7] [4]),
        .I5(\counter_reg[7] [5]),
        .O(\counter_reg[6] ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFF4000)) 
    state_next3_carry_i_1
       (.I0(\counter_reg[1] ),
        .I1(\counter_reg[7] [3]),
        .I2(\counter_reg[7] [4]),
        .I3(\counter_reg[7] [5]),
        .I4(\counter_reg[7] [6]),
        .I5(\counter_reg[7] [7]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFFEAAAAAAA)) 
    state_next3_carry_i_2
       (.I0(\counter_reg[7] [4]),
        .I1(\counter_reg[7] [1]),
        .I2(\counter_reg[7] [0]),
        .I3(\counter_reg[7] [2]),
        .I4(\counter_reg[7] [3]),
        .I5(\counter_reg[7] [5]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7FEA)) 
    state_next3_carry_i_3
       (.I0(\counter_reg[7] [2]),
        .I1(\counter_reg[7] [1]),
        .I2(\counter_reg[7] [0]),
        .I3(\counter_reg[7] [3]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h1111111181111111)) 
    state_next3_carry_i_4
       (.I0(\counter_reg[7] [7]),
        .I1(\counter_reg[7] [6]),
        .I2(\counter_reg[7] [5]),
        .I3(\counter_reg[7] [4]),
        .I4(\counter_reg[7] [3]),
        .I5(\counter_reg[1] ),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h8000000015555555)) 
    state_next3_carry_i_5
       (.I0(\counter_reg[7] [5]),
        .I1(\counter_reg[7] [3]),
        .I2(\counter_reg[7] [2]),
        .I3(\counter_reg[7] [0]),
        .I4(\counter_reg[7] [1]),
        .I5(\counter_reg[7] [4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h8015)) 
    state_next3_carry_i_6
       (.I0(\counter_reg[7] [3]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h2)) 
    state_next3_carry_i_7
       (.I0(\counter_reg[7] [1]),
        .I1(\counter_reg[7] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc__parameterized0
   (\FSM_sequential_state_reg[3] ,
    D,
    SR,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \crc_reg[14]_0 ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    dat_width_4_reg,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[3]_0 ,
    \sd_clk_div_d_reg[3] ,
    \FSM_sequential_state_reg[0]_1 ,
    \crc_reg[10]_0 ,
    \sd_dat_o_sys_reg[0] ,
    \sd_dat_o_sys_reg[0]_0 ,
    Q,
    \crc_reg[15]_0 ,
    \crc[15]_i_10_0 ,
    \sd_dat_o_sys_reg[0]_1 ,
    \sd_dat_o_sys_reg[0]_2 ,
    \sd_dat_o_sys_reg[0]_3 ,
    \sd_dat_o_sys_reg[0]_4 ,
    \crc_reg[15]_1 ,
    \crc_reg[0]_0 ,
    \buf_write_reg[48] ,
    \buf_write_reg[48]_0 ,
    \buf_write_reg[48]_1 ,
    \crc_reg[0]_1 ,
    \buf_write_reg[48]_2 ,
    \buf_write_reg[49] ,
    \buf_write_reg[50] ,
    \buf_write_reg[51] ,
    \buf_write_reg[52] ,
    \buf_write_reg[53] ,
    \buf_write_reg[54] ,
    \buf_write_reg[55] ,
    \buf_write_reg[56] ,
    \buf_write_reg[57] ,
    \buf_write_reg[58] ,
    \buf_write_reg[59] ,
    \buf_write_reg[60] ,
    \buf_write_reg[62] ,
    \crc_reg[0]_2 ,
    \buf_write_reg[61] ,
    \sd_dat_o_sys[3]_i_2_0 ,
    \crc[15]_i_2 ,
    \crc_reg[15]_2 ,
    O,
    \crc[15]_i_5_0 ,
    \crc[15]_i_3 ,
    CO,
    \FSM_sequential_state[0]_i_10 ,
    \FSM_sequential_state[0]_i_10_0 ,
    \crc[15]_i_3_0 ,
    \FSM_sequential_state[0]_i_5 ,
    \crc[15]_i_11_0 ,
    \crc[15]_i_11_1 ,
    \crc[15]_i_11_2 ,
    S_AXI_ACLK);
  output \FSM_sequential_state_reg[3] ;
  output [0:0]D;
  output [0:0]SR;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output [14:0]\crc_reg[14]_0 ;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[0]_0 ;
  output dat_width_4_reg;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output \FSM_sequential_state_reg[3]_0 ;
  output \sd_clk_div_d_reg[3] ;
  output \FSM_sequential_state_reg[0]_1 ;
  output \crc_reg[10]_0 ;
  input \sd_dat_o_sys_reg[0] ;
  input \sd_dat_o_sys_reg[0]_0 ;
  input [3:0]Q;
  input \crc_reg[15]_0 ;
  input [0:0]\crc[15]_i_10_0 ;
  input \sd_dat_o_sys_reg[0]_1 ;
  input \sd_dat_o_sys_reg[0]_2 ;
  input \sd_dat_o_sys_reg[0]_3 ;
  input \sd_dat_o_sys_reg[0]_4 ;
  input \crc_reg[15]_1 ;
  input [0:0]\crc_reg[0]_0 ;
  input \buf_write_reg[48] ;
  input \buf_write_reg[48]_0 ;
  input \buf_write_reg[48]_1 ;
  input [12:0]\crc_reg[0]_1 ;
  input \buf_write_reg[48]_2 ;
  input \buf_write_reg[49] ;
  input \buf_write_reg[50] ;
  input \buf_write_reg[51] ;
  input \buf_write_reg[52] ;
  input \buf_write_reg[53] ;
  input \buf_write_reg[54] ;
  input \buf_write_reg[55] ;
  input \buf_write_reg[56] ;
  input \buf_write_reg[57] ;
  input \buf_write_reg[58] ;
  input \buf_write_reg[59] ;
  input \buf_write_reg[60] ;
  input \buf_write_reg[62] ;
  input \crc_reg[0]_2 ;
  input \buf_write_reg[61] ;
  input \sd_dat_o_sys[3]_i_2_0 ;
  input \crc[15]_i_2 ;
  input \crc_reg[15]_2 ;
  input [1:0]O;
  input \crc[15]_i_5_0 ;
  input \crc[15]_i_3 ;
  input [0:0]CO;
  input \FSM_sequential_state[0]_i_10 ;
  input [0:0]\FSM_sequential_state[0]_i_10_0 ;
  input [0:0]\crc[15]_i_3_0 ;
  input \FSM_sequential_state[0]_i_5 ;
  input \crc[15]_i_11_0 ;
  input \crc[15]_i_11_1 ;
  input \crc[15]_i_11_2 ;
  input S_AXI_ACLK;

  wire [0:0]CO;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_10 ;
  wire [0:0]\FSM_sequential_state[0]_i_10_0 ;
  wire \FSM_sequential_state[0]_i_5 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire [1:0]O;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire \buf_write_reg[48] ;
  wire \buf_write_reg[48]_0 ;
  wire \buf_write_reg[48]_1 ;
  wire \buf_write_reg[48]_2 ;
  wire \buf_write_reg[49] ;
  wire \buf_write_reg[50] ;
  wire \buf_write_reg[51] ;
  wire \buf_write_reg[52] ;
  wire \buf_write_reg[53] ;
  wire \buf_write_reg[54] ;
  wire \buf_write_reg[55] ;
  wire \buf_write_reg[56] ;
  wire \buf_write_reg[57] ;
  wire \buf_write_reg[58] ;
  wire \buf_write_reg[59] ;
  wire \buf_write_reg[60] ;
  wire \buf_write_reg[61] ;
  wire \buf_write_reg[62] ;
  wire [12:5]crc0;
  wire [0:0]crc2;
  wire \crc[12]_i_2_n_0 ;
  wire [0:0]\crc[15]_i_10_0 ;
  wire \crc[15]_i_11_0 ;
  wire \crc[15]_i_11_1 ;
  wire \crc[15]_i_11_2 ;
  wire \crc[15]_i_17_n_0 ;
  wire \crc[15]_i_2 ;
  wire \crc[15]_i_22_n_0 ;
  wire \crc[15]_i_23_n_0 ;
  wire \crc[15]_i_25_n_0 ;
  wire \crc[15]_i_3 ;
  wire [0:0]\crc[15]_i_3_0 ;
  wire \crc[15]_i_5_0 ;
  wire [0:0]\crc_reg[0]_0 ;
  wire [12:0]\crc_reg[0]_1 ;
  wire \crc_reg[0]_2 ;
  wire \crc_reg[10]_0 ;
  wire [14:0]\crc_reg[14]_0 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg[15]_1 ;
  wire \crc_reg[15]_2 ;
  wire [15:0]\crc_result[0]_3 ;
  wire dat_width_4_reg;
  wire read_crc_err_i_10_n_0;
  wire read_crc_err_i_11_n_0;
  wire read_crc_err_i_16_n_0;
  wire \sd_clk_div_d_reg[3] ;
  wire \sd_dat_o_sys[3]_i_2_0 ;
  wire \sd_dat_o_sys[3]_i_5_n_0 ;
  wire \sd_dat_o_sys_reg[0] ;
  wire \sd_dat_o_sys_reg[0]_0 ;
  wire \sd_dat_o_sys_reg[0]_1 ;
  wire \sd_dat_o_sys_reg[0]_2 ;
  wire \sd_dat_o_sys_reg[0]_3 ;
  wire \sd_dat_o_sys_reg[0]_4 ;

  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(\crc_reg[15]_2 ),
        .I1(\FSM_sequential_state[0]_i_5 ),
        .O(\sd_clk_div_d_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \FSM_sequential_state[0]_i_14 
       (.I0(\crc_reg[15]_2 ),
        .I1(CO),
        .I2(\FSM_sequential_state[0]_i_10 ),
        .I3(\FSM_sequential_state[0]_i_10_0 ),
        .O(dat_width_4_reg));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(Q[0]),
        .I1(\crc_reg[15]_2 ),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[48]_i_1 
       (.I0(\crc_result[0]_3 [0]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[48]_0 ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [0]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[49]_i_1 
       (.I0(\crc_result[0]_3 [1]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[49] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [1]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[50]_i_1 
       (.I0(\crc_result[0]_3 [2]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[50] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [2]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[51]_i_1 
       (.I0(\crc_result[0]_3 [3]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[51] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [3]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[52]_i_1 
       (.I0(\crc_result[0]_3 [4]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[52] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [4]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [4]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[53]_i_1 
       (.I0(\crc_result[0]_3 [5]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[53] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [5]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [5]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[54]_i_1 
       (.I0(\crc_result[0]_3 [6]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[54] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [6]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [6]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[55]_i_1 
       (.I0(\crc_result[0]_3 [7]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[55] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [7]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [7]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[56]_i_1 
       (.I0(\crc_result[0]_3 [8]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[56] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [8]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [8]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[57]_i_1 
       (.I0(\crc_result[0]_3 [9]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[57] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [9]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [9]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[58]_i_1 
       (.I0(\crc_result[0]_3 [10]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[58] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [10]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [10]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[59]_i_1 
       (.I0(\crc_result[0]_3 [11]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[59] ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [11]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc_reg[14]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[60]_i_1 
       (.I0(\crc_result[0]_3 [12]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[60] ),
        .O(\crc_reg[14]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[61]_i_1 
       (.I0(\crc_result[0]_3 [13]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[61] ),
        .O(\crc_reg[14]_0 [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_write[62]_i_1 
       (.I0(\crc_result[0]_3 [14]),
        .I1(\buf_write_reg[48] ),
        .I2(\buf_write_reg[62] ),
        .O(\crc_reg[14]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \crc[0]_i_1__2 
       (.I0(\crc_result[0]_3 [15]),
        .I1(\crc[12]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg[2] ),
        .I3(\crc_reg[0]_0 ),
        .O(crc2));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[12]_i_1__2 
       (.I0(\crc_result[0]_3 [11]),
        .I1(\crc_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[2] ),
        .I3(\crc[12]_i_2_n_0 ),
        .I4(\crc_result[0]_3 [15]),
        .O(crc0[12]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \crc[12]_i_2 
       (.I0(\crc_result[0]_3 [15]),
        .I1(\buf_write_reg[48] ),
        .I2(\crc_reg[0]_2 ),
        .I3(\buf_write_reg[48]_1 ),
        .I4(\crc_reg[0]_1 [12]),
        .I5(\buf_write_reg[48]_2 ),
        .O(\crc[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \crc[12]_i_2__0 
       (.I0(\sd_dat_o_sys_reg[0]_3 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\sd_dat_o_sys_reg[0]_4 ),
        .I3(\sd_dat_o_sys_reg[0]_2 ),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFF0F8C8C0C0C8C8C)) 
    \crc[15]_i_10 
       (.I0(\crc[15]_i_3_0 ),
        .I1(\crc[15]_i_22_n_0 ),
        .I2(\FSM_sequential_state_reg[3]_0 ),
        .I3(\sd_clk_div_d_reg[3] ),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h888BFFFF888B0000)) 
    \crc[15]_i_11 
       (.I0(\crc[15]_i_23_n_0 ),
        .I1(Q[1]),
        .I2(\FSM_sequential_state_reg[3]_0 ),
        .I3(\crc[15]_i_3 ),
        .I4(Q[2]),
        .I5(\crc[15]_i_25_n_0 ),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00AAFFAB00AA00AB)) 
    \crc[15]_i_17 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\crc[15]_i_5_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\FSM_sequential_state_reg[1]_1 ),
        .O(\crc[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAA22220222)) 
    \crc[15]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(\crc_reg[15]_1 ),
        .I2(\crc_reg[15]_0 ),
        .I3(\sd_dat_o_sys_reg[0]_3 ),
        .I4(\sd_dat_o_sys_reg[0]_4 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(SR));
  LUT3 #(
    .INIT(8'h70)) 
    \crc[15]_i_21 
       (.I0(Q[0]),
        .I1(\crc_reg[0]_0 ),
        .I2(\crc_reg[15]_2 ),
        .O(\FSM_sequential_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \crc[15]_i_22 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\crc[15]_i_10_0 ),
        .O(\crc[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1F101010BFBFBFBF)) 
    \crc[15]_i_23 
       (.I0(\crc[15]_i_11_1 ),
        .I1(\crc[15]_i_11_2 ),
        .I2(Q[0]),
        .I3(\crc_reg[15]_2 ),
        .I4(O[0]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFF0AFF0E000AFF0E)) 
    \crc[15]_i_25 
       (.I0(\crc[15]_i_10_0 ),
        .I1(\crc[15]_i_11_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_state_reg[3]_0 ),
        .I5(\FSM_sequential_state_reg[0]_1 ),
        .O(\crc[15]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \crc[15]_i_5 
       (.I0(\crc[15]_i_17_n_0 ),
        .I1(\sd_dat_o_sys_reg[0]_2 ),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h8080FFF0)) 
    \crc[15]_i_6 
       (.I0(\crc_reg[15]_2 ),
        .I1(O[1]),
        .I2(Q[0]),
        .I3(dat_width_4_reg),
        .I4(\crc[15]_i_2 ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[5]_i_1__2 
       (.I0(\crc_result[0]_3 [4]),
        .I1(\crc_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[2] ),
        .I3(\crc[12]_i_2_n_0 ),
        .I4(\crc_result[0]_3 [15]),
        .O(crc0[5]));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(crc2),
        .Q(\crc_result[0]_3 [0]),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [9]),
        .Q(\crc_result[0]_3 [10]),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [10]),
        .Q(\crc_result[0]_3 [11]),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(crc0[12]),
        .Q(\crc_result[0]_3 [12]),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [12]),
        .Q(\crc_result[0]_3 [13]),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [13]),
        .Q(\crc_result[0]_3 [14]),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [14]),
        .Q(\crc_result[0]_3 [15]),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [0]),
        .Q(\crc_result[0]_3 [1]),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [1]),
        .Q(\crc_result[0]_3 [2]),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [2]),
        .Q(\crc_result[0]_3 [3]),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [3]),
        .Q(\crc_result[0]_3 [4]),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(crc0[5]),
        .Q(\crc_result[0]_3 [5]),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [5]),
        .Q(\crc_result[0]_3 [6]),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [6]),
        .Q(\crc_result[0]_3 [7]),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [7]),
        .Q(\crc_result[0]_3 [8]),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_2 ),
        .D(\crc_result[0]_3 [8]),
        .Q(\crc_result[0]_3 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hBE1B)) 
    i__carry_i_3
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\FSM_sequential_state_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_10
       (.I0(\crc_result[0]_3 [13]),
        .I1(\crc_result[0]_3 [12]),
        .I2(\crc_result[0]_3 [14]),
        .I3(\crc_result[0]_3 [15]),
        .O(read_crc_err_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_crc_err_i_11
       (.I0(\crc_result[0]_3 [2]),
        .I1(\crc_result[0]_3 [3]),
        .I2(\crc_result[0]_3 [0]),
        .I3(\crc_result[0]_3 [1]),
        .I4(read_crc_err_i_16_n_0),
        .O(read_crc_err_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_16
       (.I0(\crc_result[0]_3 [6]),
        .I1(\crc_result[0]_3 [5]),
        .I2(\crc_result[0]_3 [7]),
        .I3(\crc_result[0]_3 [4]),
        .O(read_crc_err_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_crc_err_i_4
       (.I0(read_crc_err_i_10_n_0),
        .I1(\crc_result[0]_3 [10]),
        .I2(\crc_result[0]_3 [9]),
        .I3(\crc_result[0]_3 [8]),
        .I4(\crc_result[0]_3 [11]),
        .I5(read_crc_err_i_11_n_0),
        .O(\crc_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hCFF500FFFFFCFF0C)) 
    \sd_dat_o_sys[0]_i_1 
       (.I0(\sd_dat_o_sys_reg[0]_1 ),
        .I1(\crc[12]_i_2_n_0 ),
        .I2(\sd_dat_o_sys_reg[0]_2 ),
        .I3(\sd_dat_o_sys_reg[0]_3 ),
        .I4(\sd_dat_o_sys_reg[0]_4 ),
        .I5(\FSM_sequential_state_reg[3] ),
        .O(D));
  LUT5 #(
    .INIT(32'hF404FFFF)) 
    \sd_dat_o_sys[3]_i_2 
       (.I0(\sd_dat_o_sys_reg[0] ),
        .I1(\sd_dat_o_sys_reg[0]_0 ),
        .I2(Q[3]),
        .I3(\sd_dat_o_sys[3]_i_5_n_0 ),
        .I4(\crc_reg[15]_0 ),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'hBB8B8888BB8BBB8B)) 
    \sd_dat_o_sys[3]_i_5 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(\sd_dat_o_sys[3]_i_2_0 ),
        .I5(\crc[15]_i_2 ),
        .O(\sd_dat_o_sys[3]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc__parameterized0_0
   (\FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \sd_clk_div_d_reg[3] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0] ,
    S,
    D,
    \FSM_sequential_state_reg[3] ,
    buf_write_next,
    SR,
    \crc_reg[14]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    \counter_reg[5] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_onehot_state_reg[1] ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[0]_3 ,
    \FSM_sequential_state_reg[0]_4 ,
    \FSM_sequential_state_reg[2]_1 ,
    dat_width_4_reg,
    \counter_reg[0] ,
    DI,
    \block_size_reg[5] ,
    \counter_reg[11] ,
    \block_size_reg[12] ,
    \block_size_reg[9] ,
    \block_size_reg[12]_0 ,
    \counter_reg[11]_0 ,
    \crc_reg[10]_0 ,
    \FSM_sequential_state_reg[0]_5 ,
    Q,
    \sd_dat_o_sys[3]_i_5 ,
    O,
    \sd_dat_o_sys_reg[0] ,
    \sd_dat_o_sys_reg[0]_0 ,
    \sd_dat_o_sys_reg[0]_1 ,
    \crc[15]_i_16_0 ,
    \sd_dat_o_sys_reg[1] ,
    CO,
    \block_data_finished0_inferred__0/i__carry__0 ,
    \sd_dat_o_sys_reg[1]_0 ,
    \sd_dat_o_sys_reg[1]_1 ,
    \crc_reg[15]_0 ,
    \crc_reg[0]_0 ,
    \crc_reg[12]_0 ,
    \buf_write_reg[32] ,
    \buf_write_reg[47] ,
    \buf_write_reg[33] ,
    \buf_write_reg[34] ,
    \buf_write_reg[35] ,
    \buf_write_reg[36] ,
    \buf_write_reg[37] ,
    \buf_write_reg[38] ,
    \buf_write_reg[39] ,
    \buf_write_reg[40] ,
    \buf_write_reg[41] ,
    \buf_write_reg[42] ,
    \buf_write_reg[43] ,
    \buf_write_reg[44] ,
    \buf_write_reg[45] ,
    \buf_write_reg[46] ,
    \buf_write_reg[47]_0 ,
    \crc_reg[15]_1 ,
    \sd_dat_o_sys_reg[1]_2 ,
    \sd_dat_o_sys[3]_i_2 ,
    \block_data_finished0_inferred__0/i__carry ,
    \crc[15]_i_4_0 ,
    \crc[15]_i_4_1 ,
    \crc[15]_i_4_2 ,
    \FSM_sequential_state_reg[0]_6 ,
    \sd_dat_o_sys[3]_i_3_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \buf_write[59]_i_3_0 ,
    \crc_reg[15]_2 ,
    \block_data_finished0_inferred__0/i__carry__0_0 ,
    \block_data_finished0_inferred__0/i__carry__0_1 ,
    S_AXI_ACLK);
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \sd_clk_div_d_reg[3] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0] ;
  output [2:0]S;
  output [0:0]D;
  output \FSM_sequential_state_reg[3] ;
  output [0:0]buf_write_next;
  output [0:0]SR;
  output [14:0]\crc_reg[14]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \counter_reg[5] ;
  output \FSM_sequential_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[1] ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[0]_1 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output \FSM_sequential_state_reg[0]_2 ;
  output \FSM_sequential_state_reg[0]_3 ;
  output \FSM_sequential_state_reg[0]_4 ;
  output \FSM_sequential_state_reg[2]_1 ;
  output dat_width_4_reg;
  output \counter_reg[0] ;
  output [3:0]DI;
  output [2:0]\block_size_reg[5] ;
  output [1:0]\counter_reg[11] ;
  output [2:0]\block_size_reg[12] ;
  output [3:0]\block_size_reg[9] ;
  output [1:0]\block_size_reg[12]_0 ;
  output [2:0]\counter_reg[11]_0 ;
  output \crc_reg[10]_0 ;
  input [0:0]\FSM_sequential_state_reg[0]_5 ;
  input [3:0]Q;
  input \sd_dat_o_sys[3]_i_5 ;
  input [3:0]O;
  input \sd_dat_o_sys_reg[0] ;
  input \sd_dat_o_sys_reg[0]_0 ;
  input \sd_dat_o_sys_reg[0]_1 ;
  input [0:0]\crc[15]_i_16_0 ;
  input \sd_dat_o_sys_reg[1] ;
  input [0:0]CO;
  input [4:0]\block_data_finished0_inferred__0/i__carry__0 ;
  input \sd_dat_o_sys_reg[1]_0 ;
  input \sd_dat_o_sys_reg[1]_1 ;
  input [0:0]\crc_reg[15]_0 ;
  input [1:0]\crc_reg[0]_0 ;
  input \crc_reg[12]_0 ;
  input \buf_write_reg[32] ;
  input [15:0]\buf_write_reg[47] ;
  input \buf_write_reg[33] ;
  input \buf_write_reg[34] ;
  input \buf_write_reg[35] ;
  input \buf_write_reg[36] ;
  input \buf_write_reg[37] ;
  input \buf_write_reg[38] ;
  input \buf_write_reg[39] ;
  input \buf_write_reg[40] ;
  input \buf_write_reg[41] ;
  input \buf_write_reg[42] ;
  input \buf_write_reg[43] ;
  input \buf_write_reg[44] ;
  input \buf_write_reg[45] ;
  input \buf_write_reg[46] ;
  input \buf_write_reg[47]_0 ;
  input \crc_reg[15]_1 ;
  input \sd_dat_o_sys_reg[1]_2 ;
  input \sd_dat_o_sys[3]_i_2 ;
  input [3:0]\block_data_finished0_inferred__0/i__carry ;
  input \crc[15]_i_4_0 ;
  input \crc[15]_i_4_1 ;
  input \crc[15]_i_4_2 ;
  input \FSM_sequential_state_reg[0]_6 ;
  input \sd_dat_o_sys[3]_i_3_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input [2:0]\buf_write[59]_i_3_0 ;
  input [1:0]\crc_reg[15]_2 ;
  input [2:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  input [0:0]\block_data_finished0_inferred__0/i__carry__0_1 ;
  input S_AXI_ACLK;

  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[0]_3 ;
  wire \FSM_sequential_state_reg[0]_4 ;
  wire [0:0]\FSM_sequential_state_reg[0]_5 ;
  wire \FSM_sequential_state_reg[0]_6 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire [3:0]O;
  wire [3:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [3:0]\block_data_finished0_inferred__0/i__carry ;
  wire [4:0]\block_data_finished0_inferred__0/i__carry__0 ;
  wire [2:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  wire [0:0]\block_data_finished0_inferred__0/i__carry__0_1 ;
  wire [2:0]\block_size_reg[12] ;
  wire [1:0]\block_size_reg[12]_0 ;
  wire [2:0]\block_size_reg[5] ;
  wire [3:0]\block_size_reg[9] ;
  wire [2:0]\buf_write[59]_i_3_0 ;
  wire \buf_write[59]_i_5_n_0 ;
  wire \buf_write[59]_i_6_n_0 ;
  wire \buf_write[59]_i_7_n_0 ;
  wire \buf_write[59]_i_8_n_0 ;
  wire \buf_write[62]_i_4_n_0 ;
  wire [0:0]buf_write_next;
  wire \buf_write_reg[32] ;
  wire \buf_write_reg[33] ;
  wire \buf_write_reg[34] ;
  wire \buf_write_reg[35] ;
  wire \buf_write_reg[36] ;
  wire \buf_write_reg[37] ;
  wire \buf_write_reg[38] ;
  wire \buf_write_reg[39] ;
  wire \buf_write_reg[40] ;
  wire \buf_write_reg[41] ;
  wire \buf_write_reg[42] ;
  wire \buf_write_reg[43] ;
  wire \buf_write_reg[44] ;
  wire \buf_write_reg[45] ;
  wire \buf_write_reg[46] ;
  wire [15:0]\buf_write_reg[47] ;
  wire \buf_write_reg[47]_0 ;
  wire \counter_reg[0] ;
  wire [1:0]\counter_reg[11] ;
  wire [2:0]\counter_reg[11]_0 ;
  wire \counter_reg[5] ;
  wire [12:5]crc0;
  wire [0:0]crc2;
  wire \crc[15]_i_12_n_0 ;
  wire \crc[15]_i_13_n_0 ;
  wire \crc[15]_i_14_n_0 ;
  wire \crc[15]_i_15_n_0 ;
  wire [0:0]\crc[15]_i_16_0 ;
  wire \crc[15]_i_16_n_0 ;
  wire \crc[15]_i_20_n_0 ;
  wire \crc[15]_i_26_n_0 ;
  wire \crc[15]_i_27_n_0 ;
  wire \crc[15]_i_28_n_0 ;
  wire \crc[15]_i_29_n_0 ;
  wire \crc[15]_i_31_n_0 ;
  wire \crc[15]_i_4_0 ;
  wire \crc[15]_i_4_1 ;
  wire \crc[15]_i_4_2 ;
  wire \crc[15]_i_7_n_0 ;
  wire [1:0]\crc_reg[0]_0 ;
  wire \crc_reg[10]_0 ;
  wire \crc_reg[12]_0 ;
  wire [14:0]\crc_reg[14]_0 ;
  wire [0:0]\crc_reg[15]_0 ;
  wire \crc_reg[15]_1 ;
  wire [1:0]\crc_reg[15]_2 ;
  wire [15:0]\crc_result[1]_2 ;
  wire dat_width_4_reg;
  wire read_crc_err_i_15_n_0;
  wire read_crc_err_i_8_n_0;
  wire read_crc_err_i_9_n_0;
  wire \sd_clk_div_d_reg[3] ;
  wire \sd_dat_o_sys[3]_i_11_n_0 ;
  wire \sd_dat_o_sys[3]_i_2 ;
  wire \sd_dat_o_sys[3]_i_3_0 ;
  wire \sd_dat_o_sys[3]_i_5 ;
  wire \sd_dat_o_sys[3]_i_6_n_0 ;
  wire \sd_dat_o_sys[3]_i_7_n_0 ;
  wire \sd_dat_o_sys[3]_i_8_n_0 ;
  wire \sd_dat_o_sys_reg[0] ;
  wire \sd_dat_o_sys_reg[0]_0 ;
  wire \sd_dat_o_sys_reg[0]_1 ;
  wire \sd_dat_o_sys_reg[1] ;
  wire \sd_dat_o_sys_reg[1]_0 ;
  wire \sd_dat_o_sys_reg[1]_1 ;
  wire \sd_dat_o_sys_reg[1]_2 ;

  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD555FFFF)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(Q[0]),
        .I1(\sd_clk_div_d_reg[3] ),
        .I2(\FSM_sequential_state_reg[0]_6 ),
        .I3(\FSM_sequential_state_reg[0]_5 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(Q[3]),
        .O(\FSM_sequential_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(Q[0]),
        .I1(\sd_clk_div_d_reg[3] ),
        .I2(\block_data_finished0_inferred__0/i__carry [3]),
        .O(\FSM_sequential_state_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\block_data_finished0_inferred__0/i__carry [1]),
        .I1(\buf_write[59]_i_3_0 [0]),
        .I2(\sd_clk_div_d_reg[3] ),
        .O(\counter_reg[0] ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_sequential_state_reg[3]_1 ),
        .I3(\block_data_finished0_inferred__0/i__carry [1]),
        .I4(\buf_write[59]_i_3_0 [0]),
        .I5(\sd_clk_div_d_reg[3] ),
        .O(\FSM_sequential_state_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    block_data_finished0_carry__0_i_1
       (.I0(\block_data_finished0_inferred__0/i__carry__0_1 ),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [4]),
        .O(\block_size_reg[12] [2]));
  LUT2 #(
    .INIT(4'hE)) 
    block_data_finished0_carry__0_i_2
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0_0 [1]),
        .O(\block_size_reg[12] [1]));
  LUT3 #(
    .INIT(8'hB2)) 
    block_data_finished0_carry__0_i_3
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [0]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [3]),
        .I2(O[3]),
        .O(\block_size_reg[12] [0]));
  LUT2 #(
    .INIT(4'h1)) 
    block_data_finished0_carry__0_i_5
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [1]),
        .I1(\block_data_finished0_inferred__0/i__carry__0_0 [2]),
        .O(\counter_reg[11] [1]));
  LUT3 #(
    .INIT(8'h41)) 
    block_data_finished0_carry__0_i_6
       (.I0(O[3]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [3]),
        .I2(\block_data_finished0_inferred__0/i__carry__0_0 [0]),
        .O(\counter_reg[11] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    block_data_finished0_carry_i_1
       (.I0(O[2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [2]),
        .I2(O[1]),
        .I3(\block_data_finished0_inferred__0/i__carry__0 [1]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hB2)) 
    block_data_finished0_carry_i_2
       (.I0(O[0]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [0]),
        .I2(\block_data_finished0_inferred__0/i__carry [3]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    block_data_finished0_carry_i_3
       (.I0(\block_data_finished0_inferred__0/i__carry [2]),
        .I1(\block_data_finished0_inferred__0/i__carry [1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hB)) 
    block_data_finished0_carry_i_4
       (.I0(\block_data_finished0_inferred__0/i__carry [0]),
        .I1(\buf_write[59]_i_3_0 [0]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h41)) 
    block_data_finished0_carry_i_6
       (.I0(\block_data_finished0_inferred__0/i__carry [3]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [0]),
        .I2(O[0]),
        .O(\block_size_reg[5] [2]));
  LUT2 #(
    .INIT(4'h1)) 
    block_data_finished0_carry_i_7
       (.I0(\block_data_finished0_inferred__0/i__carry [1]),
        .I1(\block_data_finished0_inferred__0/i__carry [2]),
        .O(\block_size_reg[5] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    block_data_finished0_carry_i_8
       (.I0(\buf_write[59]_i_3_0 [0]),
        .I1(\block_data_finished0_inferred__0/i__carry [0]),
        .O(\block_size_reg[5] [0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[32]_i_1 
       (.I0(\crc_result[1]_2 [0]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[32] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [0]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[33]_i_1 
       (.I0(\crc_result[1]_2 [1]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[33] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [1]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[34]_i_1 
       (.I0(\crc_result[1]_2 [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[34] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [2]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[35]_i_1 
       (.I0(\crc_result[1]_2 [3]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[35] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [3]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[36]_i_1 
       (.I0(\crc_result[1]_2 [4]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[36] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [4]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [4]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[37]_i_1 
       (.I0(\crc_result[1]_2 [5]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[37] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [5]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [5]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[38]_i_1 
       (.I0(\crc_result[1]_2 [6]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[38] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [6]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [6]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[39]_i_1 
       (.I0(\crc_result[1]_2 [7]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[39] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [7]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [7]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[40]_i_1 
       (.I0(\crc_result[1]_2 [8]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[40] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [8]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [8]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[41]_i_1 
       (.I0(\crc_result[1]_2 [9]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[41] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [9]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [9]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[42]_i_1 
       (.I0(\crc_result[1]_2 [10]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[42] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [10]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [10]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[43]_i_1 
       (.I0(\crc_result[1]_2 [11]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[43] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [11]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [11]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[44]_i_1 
       (.I0(\crc_result[1]_2 [12]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[44] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [12]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [12]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[45]_i_1 
       (.I0(\crc_result[1]_2 [13]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[45] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [13]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [13]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[46]_i_1 
       (.I0(\crc_result[1]_2 [14]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[46] ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [14]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(\crc_reg[14]_0 [14]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[47]_i_1 
       (.I0(\crc_result[1]_2 [15]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\buf_write_reg[47]_0 ),
        .I3(\counter_reg[5] ),
        .I4(\buf_write_reg[47] [15]),
        .I5(\FSM_sequential_state_reg[3]_0 ),
        .O(buf_write_next));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \buf_write[59]_i_3 
       (.I0(\buf_write[59]_i_5_n_0 ),
        .I1(\buf_write[59]_i_6_n_0 ),
        .I2(\FSM_sequential_state_reg[2] ),
        .I3(\sd_dat_o_sys_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg[1] ),
        .I5(\FSM_sequential_state_reg[3] ),
        .O(\counter_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \buf_write[59]_i_4 
       (.I0(\FSM_sequential_state_reg[3] ),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\FSM_sequential_state_reg[2]_0 ),
        .I3(\FSM_sequential_state_reg[2] ),
        .I4(\buf_write[59]_i_7_n_0 ),
        .I5(\buf_write[59]_i_8_n_0 ),
        .O(\FSM_sequential_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0028AA28AA280028)) 
    \buf_write[59]_i_5 
       (.I0(\buf_write[62]_i_4_n_0 ),
        .I1(\buf_write[59]_i_3_0 [2]),
        .I2(O[0]),
        .I3(\sd_dat_o_sys_reg[1] ),
        .I4(\buf_write[59]_i_3_0 [1]),
        .I5(\block_data_finished0_inferred__0/i__carry [2]),
        .O(\buf_write[59]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \buf_write[59]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\buf_write[59]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \buf_write[59]_i_7 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\buf_write[59]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \buf_write[59]_i_8 
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(\buf_write[59]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \buf_write[62]_i_2 
       (.I0(\buf_write[62]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[2] ),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(\FSM_onehot_state_reg[1] ),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \buf_write[62]_i_4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\buf_write[62]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \crc[0]_i_1__1 
       (.I0(\crc_result[1]_2 [15]),
        .I1(buf_write_next),
        .I2(\crc_reg[12]_0 ),
        .I3(\crc_reg[0]_0 [1]),
        .O(crc2));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[12]_i_1__1 
       (.I0(\crc_result[1]_2 [11]),
        .I1(\crc_reg[0]_0 [1]),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[1]_2 [15]),
        .O(crc0[12]));
  LUT2 #(
    .INIT(4'hB)) 
    \crc[15]_i_1 
       (.I0(\crc_reg[15]_0 ),
        .I1(\sd_dat_o_sys_reg[1] ),
        .O(SR));
  LUT6 #(
    .INIT(64'hF7570757FFFFFFFF)) 
    \crc[15]_i_12 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(\FSM_sequential_state_reg[0]_5 ),
        .I2(Q[0]),
        .I3(\crc[15]_i_26_n_0 ),
        .I4(\sd_dat_o_sys[3]_i_5 ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\crc[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF55FF44FF)) 
    \crc[15]_i_13 
       (.I0(\crc[15]_i_27_n_0 ),
        .I1(\crc[15]_i_4_0 ),
        .I2(dat_width_4_reg),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(Q[2]),
        .O(\crc[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h33BF33BFFFFFF3FF)) 
    \crc[15]_i_14 
       (.I0(\sd_clk_div_d_reg[3] ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(Q[0]),
        .I3(\crc[15]_i_4_2 ),
        .I4(\crc[15]_i_4_1 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(\crc[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4404000044000000)) 
    \crc[15]_i_15 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\crc_reg[0]_0 [0]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\sd_clk_div_d_reg[3] ),
        .O(\crc[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABAAABAAAAAA)) 
    \crc[15]_i_16 
       (.I0(\crc[15]_i_28_n_0 ),
        .I1(\crc[15]_i_29_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state_reg[0]_2 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(\crc[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF008B038B03)) 
    \crc[15]_i_18 
       (.I0(O[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[0]_5 ),
        .I3(\sd_clk_div_d_reg[3] ),
        .I4(\sd_dat_o_sys[3]_i_5 ),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \crc[15]_i_2 
       (.I0(\crc_reg[15]_1 ),
        .I1(Q[2]),
        .I2(\crc[15]_i_7_n_0 ),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[0]_1 ),
        .I5(\FSM_sequential_state_reg[1]_1 ),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hC055CF55CF55CF55)) 
    \crc[15]_i_20 
       (.I0(dat_width_4_reg),
        .I1(\counter_reg[0] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\block_data_finished0_inferred__0/i__carry [0]),
        .I5(\sd_clk_div_d_reg[3] ),
        .O(\crc[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000E2E20000)) 
    \crc[15]_i_24 
       (.I0(CO),
        .I1(\sd_dat_o_sys_reg[1] ),
        .I2(\crc[15]_i_16_0 ),
        .I3(\block_data_finished0_inferred__0/i__carry [3]),
        .I4(\sd_clk_div_d_reg[3] ),
        .I5(Q[0]),
        .O(dat_width_4_reg));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \crc[15]_i_26 
       (.I0(\sd_clk_div_d_reg[3] ),
        .I1(O[1]),
        .O(\crc[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \crc[15]_i_27 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\sd_clk_div_d_reg[3] ),
        .I3(Q[0]),
        .O(\crc[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00404040)) 
    \crc[15]_i_28 
       (.I0(\crc[15]_i_31_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\counter_reg[0] ),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\crc[15]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \crc[15]_i_29 
       (.I0(Q[0]),
        .I1(\crc[15]_i_16_0 ),
        .I2(\sd_dat_o_sys_reg[1] ),
        .I3(CO),
        .I4(\sd_clk_div_d_reg[3] ),
        .O(\crc[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[15]_i_2__0 
       (.I0(\crc_reg[15]_2 [1]),
        .I1(\crc_reg[15]_2 [0]),
        .O(\sd_clk_div_d_reg[3] ));
  LUT6 #(
    .INIT(64'h2F2F202F00000000)) 
    \crc[15]_i_3 
       (.I0(\sd_dat_o_sys_reg[0] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(\sd_dat_o_sys_reg[0]_0 ),
        .I5(\sd_dat_o_sys_reg[0]_1 ),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \crc[15]_i_31 
       (.I0(\block_data_finished0_inferred__0/i__carry [0]),
        .I1(Q[0]),
        .I2(\sd_clk_div_d_reg[3] ),
        .O(\crc[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D5D5D5D5DFF5D)) 
    \crc[15]_i_4 
       (.I0(\sd_dat_o_sys_reg[0]_1 ),
        .I1(\crc[15]_i_12_n_0 ),
        .I2(\crc[15]_i_13_n_0 ),
        .I3(\crc[15]_i_14_n_0 ),
        .I4(\crc[15]_i_15_n_0 ),
        .I5(\crc[15]_i_16_n_0 ),
        .O(\FSM_onehot_state_reg[1] ));
  LUT6 #(
    .INIT(64'h45CFCFCC54FCFFCF)) 
    \crc[15]_i_7 
       (.I0(\sd_clk_div_d_reg[3] ),
        .I1(\FSM_sequential_state_reg[0]_3 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\crc[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h33773333FFFF3F33)) 
    \crc[15]_i_8 
       (.I0(\crc[15]_i_4_1 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\sd_clk_div_d_reg[3] ),
        .I3(Q[0]),
        .I4(\crc[15]_i_4_2 ),
        .I5(\FSM_sequential_state_reg[2]_1 ),
        .O(\FSM_sequential_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hEECCEECCFFF00000)) 
    \crc[15]_i_9 
       (.I0(\crc[15]_i_20_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_4 ),
        .I2(\sd_dat_o_sys[3]_i_2 ),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[5]_i_1__1 
       (.I0(\crc_result[1]_2 [4]),
        .I1(\crc_reg[0]_0 [1]),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[1]_2 [15]),
        .O(crc0[5]));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(crc2),
        .Q(\crc_result[1]_2 [0]),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [9]),
        .Q(\crc_result[1]_2 [10]),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [10]),
        .Q(\crc_result[1]_2 [11]),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(crc0[12]),
        .Q(\crc_result[1]_2 [12]),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [12]),
        .Q(\crc_result[1]_2 [13]),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [13]),
        .Q(\crc_result[1]_2 [14]),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [14]),
        .Q(\crc_result[1]_2 [15]),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [0]),
        .Q(\crc_result[1]_2 [1]),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [1]),
        .Q(\crc_result[1]_2 [2]),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [2]),
        .Q(\crc_result[1]_2 [3]),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [3]),
        .Q(\crc_result[1]_2 [4]),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(crc0[5]),
        .Q(\crc_result[1]_2 [5]),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [5]),
        .Q(\crc_result[1]_2 [6]),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [6]),
        .Q(\crc_result[1]_2 [7]),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [7]),
        .Q(\crc_result[1]_2 [8]),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\sd_clk_div_d_reg[3] ),
        .D(\crc_result[1]_2 [8]),
        .Q(\crc_result[1]_2 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry__0_i_1
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [4]),
        .I2(\block_data_finished0_inferred__0/i__carry__0_0 [1]),
        .O(\block_size_reg[12]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(O[3]),
        .I1(\block_data_finished0_inferred__0/i__carry__0_0 [0]),
        .O(\block_size_reg[12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\block_data_finished0_inferred__0/i__carry__0_1 ),
        .O(\counter_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry__0_i_4
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [4]),
        .I2(\block_data_finished0_inferred__0/i__carry__0_0 [1]),
        .O(\counter_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\block_data_finished0_inferred__0/i__carry__0_0 [0]),
        .I1(O[3]),
        .O(\counter_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_1
       (.I0(O[2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [3]),
        .I2(O[1]),
        .O(\block_size_reg[9] [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(O[0]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [2]),
        .I2(\block_data_finished0_inferred__0/i__carry [3]),
        .I3(\block_data_finished0_inferred__0/i__carry__0 [1]),
        .O(\block_size_reg[9] [2]));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_3__0
       (.I0(\block_data_finished0_inferred__0/i__carry [2]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [0]),
        .I2(\block_data_finished0_inferred__0/i__carry [1]),
        .O(\block_size_reg[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hAB52)) 
    i__carry_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_sequential_state_reg[2]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_4__0
       (.I0(\block_data_finished0_inferred__0/i__carry [0]),
        .I1(\buf_write[59]_i_3_0 [0]),
        .O(\block_size_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hC3D4)) 
    i__carry_i_5
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_5__0
       (.I0(O[1]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [3]),
        .I2(O[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_7
       (.I0(\block_data_finished0_inferred__0/i__carry [1]),
        .I1(\block_data_finished0_inferred__0/i__carry__0 [0]),
        .I2(\block_data_finished0_inferred__0/i__carry [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\buf_write[59]_i_3_0 [0]),
        .I1(\block_data_finished0_inferred__0/i__carry [0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_15
       (.I0(\crc_result[1]_2 [5]),
        .I1(\crc_result[1]_2 [4]),
        .I2(\crc_result[1]_2 [7]),
        .I3(\crc_result[1]_2 [6]),
        .O(read_crc_err_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_crc_err_i_3
       (.I0(read_crc_err_i_8_n_0),
        .I1(\crc_result[1]_2 [10]),
        .I2(\crc_result[1]_2 [9]),
        .I3(\crc_result[1]_2 [8]),
        .I4(\crc_result[1]_2 [11]),
        .I5(read_crc_err_i_9_n_0),
        .O(\crc_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_8
       (.I0(\crc_result[1]_2 [14]),
        .I1(\crc_result[1]_2 [13]),
        .I2(\crc_result[1]_2 [12]),
        .I3(\crc_result[1]_2 [15]),
        .O(read_crc_err_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_crc_err_i_9
       (.I0(\crc_result[1]_2 [0]),
        .I1(\crc_result[1]_2 [1]),
        .I2(\crc_result[1]_2 [2]),
        .I3(\crc_result[1]_2 [3]),
        .I4(read_crc_err_i_15_n_0),
        .O(read_crc_err_i_9_n_0));
  LUT5 #(
    .INIT(32'hFDFDF0FD)) 
    \sd_dat_o_sys[1]_i_1 
       (.I0(\sd_dat_o_sys_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\sd_dat_o_sys_reg[1]_1 ),
        .I3(\sd_dat_o_sys_reg[1] ),
        .I4(buf_write_next),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hFFAAFEAA)) 
    \sd_dat_o_sys[3]_i_11 
       (.I0(Q[2]),
        .I1(\sd_clk_div_d_reg[3] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\sd_dat_o_sys[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888A8888)) 
    \sd_dat_o_sys[3]_i_3 
       (.I0(\sd_dat_o_sys_reg[0]_1 ),
        .I1(\sd_dat_o_sys[3]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\sd_dat_o_sys[3]_i_7_n_0 ),
        .I4(\sd_dat_o_sys[3]_i_8_n_0 ),
        .I5(\sd_dat_o_sys_reg[1]_2 ),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'h3030300430303034)) 
    \sd_dat_o_sys[3]_i_6 
       (.I0(\FSM_sequential_state_reg[0]_3 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\crc[15]_i_20_n_0 ),
        .O(\sd_dat_o_sys[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00454545)) 
    \sd_dat_o_sys[3]_i_7 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[0]_6 ),
        .I2(\FSM_sequential_state_reg[0]_5 ),
        .I3(\sd_dat_o_sys[3]_i_8_n_0 ),
        .I4(\sd_dat_o_sys[3]_i_3_0 ),
        .I5(\sd_dat_o_sys[3]_i_11_n_0 ),
        .O(\sd_dat_o_sys[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0E16)) 
    \sd_dat_o_sys[3]_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\sd_dat_o_sys[3]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc__parameterized0_1
   (D,
    buf_write_next,
    \crc_reg[14]_0 ,
    \crc_reg[2]_0 ,
    \sd_dat_o_sys_reg[2] ,
    \sd_dat_o_sys_reg[2]_0 ,
    \sd_dat_o_sys_reg[2]_1 ,
    \sd_dat_o_sys_reg[2]_2 ,
    \crc_reg[0]_0 ,
    \crc_reg[12]_0 ,
    \buf_write_reg[16] ,
    \buf_write_reg[16]_0 ,
    Q,
    \buf_write_reg[16]_1 ,
    \buf_write_reg[24] ,
    \buf_write_reg[25] ,
    \buf_write_reg[26] ,
    \buf_write_reg[27] ,
    \buf_write_reg[28] ,
    \buf_write_reg[29] ,
    \buf_write_reg[30] ,
    \buf_write_reg[31] ,
    SR,
    \crc_reg[15]_0 ,
    S_AXI_ACLK);
  output [0:0]D;
  output [0:0]buf_write_next;
  output [14:0]\crc_reg[14]_0 ;
  output \crc_reg[2]_0 ;
  input \sd_dat_o_sys_reg[2] ;
  input \sd_dat_o_sys_reg[2]_0 ;
  input \sd_dat_o_sys_reg[2]_1 ;
  input \sd_dat_o_sys_reg[2]_2 ;
  input [0:0]\crc_reg[0]_0 ;
  input \crc_reg[12]_0 ;
  input \buf_write_reg[16] ;
  input \buf_write_reg[16]_0 ;
  input [15:0]Q;
  input \buf_write_reg[16]_1 ;
  input \buf_write_reg[24] ;
  input \buf_write_reg[25] ;
  input \buf_write_reg[26] ;
  input \buf_write_reg[27] ;
  input \buf_write_reg[28] ;
  input \buf_write_reg[29] ;
  input \buf_write_reg[30] ;
  input \buf_write_reg[31] ;
  input [0:0]SR;
  input \crc_reg[15]_0 ;
  input S_AXI_ACLK;

  wire [0:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]buf_write_next;
  wire \buf_write_reg[16] ;
  wire \buf_write_reg[16]_0 ;
  wire \buf_write_reg[16]_1 ;
  wire \buf_write_reg[24] ;
  wire \buf_write_reg[25] ;
  wire \buf_write_reg[26] ;
  wire \buf_write_reg[27] ;
  wire \buf_write_reg[28] ;
  wire \buf_write_reg[29] ;
  wire \buf_write_reg[30] ;
  wire \buf_write_reg[31] ;
  wire [12:5]crc0;
  wire [0:0]crc2;
  wire [0:0]\crc_reg[0]_0 ;
  wire \crc_reg[12]_0 ;
  wire [14:0]\crc_reg[14]_0 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg[2]_0 ;
  wire [15:0]\crc_result[2]_1 ;
  wire read_crc_err_i_14_n_0;
  wire read_crc_err_i_6_n_0;
  wire read_crc_err_i_7_n_0;
  wire \sd_dat_o_sys_reg[2] ;
  wire \sd_dat_o_sys_reg[2]_0 ;
  wire \sd_dat_o_sys_reg[2]_1 ;
  wire \sd_dat_o_sys_reg[2]_2 ;

  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[16]_i_1 
       (.I0(\crc_result[2]_1 [0]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[0]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [0]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[17]_i_1 
       (.I0(\crc_result[2]_1 [1]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[1]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [1]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[18]_i_1 
       (.I0(\crc_result[2]_1 [2]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[2]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [2]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[19]_i_1 
       (.I0(\crc_result[2]_1 [3]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[3]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [3]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[20]_i_1 
       (.I0(\crc_result[2]_1 [4]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[4]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [4]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[21]_i_1 
       (.I0(\crc_result[2]_1 [5]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[5]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [5]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[22]_i_1 
       (.I0(\crc_result[2]_1 [6]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[6]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [6]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[23]_i_1 
       (.I0(\crc_result[2]_1 [7]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[16]_0 ),
        .I3(Q[7]),
        .I4(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [7]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[24]_i_1 
       (.I0(\crc_result[2]_1 [8]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[24] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[8]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [8]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[25]_i_1 
       (.I0(\crc_result[2]_1 [9]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[25] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[9]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [9]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[26]_i_1 
       (.I0(\crc_result[2]_1 [10]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[26] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[10]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [10]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[27]_i_1 
       (.I0(\crc_result[2]_1 [11]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[27] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[11]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [11]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[28]_i_1 
       (.I0(\crc_result[2]_1 [12]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[28] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[12]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [12]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[29]_i_1 
       (.I0(\crc_result[2]_1 [13]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[29] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[13]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [13]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[30]_i_1 
       (.I0(\crc_result[2]_1 [14]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[30] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[14]),
        .I5(\buf_write_reg[16]_1 ),
        .O(\crc_reg[14]_0 [14]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[31]_i_1 
       (.I0(\crc_result[2]_1 [15]),
        .I1(\buf_write_reg[16] ),
        .I2(\buf_write_reg[31] ),
        .I3(\buf_write_reg[16]_0 ),
        .I4(Q[15]),
        .I5(\buf_write_reg[16]_1 ),
        .O(buf_write_next));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \crc[0]_i_1__0 
       (.I0(\crc_result[2]_1 [15]),
        .I1(buf_write_next),
        .I2(\crc_reg[12]_0 ),
        .I3(\crc_reg[0]_0 ),
        .O(crc2));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[12]_i_1__0 
       (.I0(\crc_result[2]_1 [11]),
        .I1(\crc_reg[0]_0 ),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[2]_1 [15]),
        .O(crc0[12]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[5]_i_1__0 
       (.I0(\crc_result[2]_1 [4]),
        .I1(\crc_reg[0]_0 ),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[2]_1 [15]),
        .O(crc0[5]));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc2),
        .Q(\crc_result[2]_1 [0]),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [9]),
        .Q(\crc_result[2]_1 [10]),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [10]),
        .Q(\crc_result[2]_1 [11]),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc0[12]),
        .Q(\crc_result[2]_1 [12]),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [12]),
        .Q(\crc_result[2]_1 [13]),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [13]),
        .Q(\crc_result[2]_1 [14]),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [14]),
        .Q(\crc_result[2]_1 [15]),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [0]),
        .Q(\crc_result[2]_1 [1]),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [1]),
        .Q(\crc_result[2]_1 [2]),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [2]),
        .Q(\crc_result[2]_1 [3]),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [3]),
        .Q(\crc_result[2]_1 [4]),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc0[5]),
        .Q(\crc_result[2]_1 [5]),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [5]),
        .Q(\crc_result[2]_1 [6]),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [6]),
        .Q(\crc_result[2]_1 [7]),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [7]),
        .Q(\crc_result[2]_1 [8]),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[2]_1 [8]),
        .Q(\crc_result[2]_1 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_14
       (.I0(\crc_result[2]_1 [13]),
        .I1(\crc_result[2]_1 [12]),
        .I2(\crc_result[2]_1 [14]),
        .I3(\crc_result[2]_1 [15]),
        .O(read_crc_err_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_crc_err_i_2
       (.I0(read_crc_err_i_6_n_0),
        .I1(\crc_result[2]_1 [2]),
        .I2(\crc_result[2]_1 [1]),
        .I3(\crc_result[2]_1 [3]),
        .I4(\crc_result[2]_1 [0]),
        .I5(read_crc_err_i_7_n_0),
        .O(\crc_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_6
       (.I0(\crc_result[2]_1 [5]),
        .I1(\crc_result[2]_1 [4]),
        .I2(\crc_result[2]_1 [7]),
        .I3(\crc_result[2]_1 [6]),
        .O(read_crc_err_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_crc_err_i_7
       (.I0(\crc_result[2]_1 [11]),
        .I1(\crc_result[2]_1 [8]),
        .I2(\crc_result[2]_1 [9]),
        .I3(\crc_result[2]_1 [10]),
        .I4(read_crc_err_i_14_n_0),
        .O(read_crc_err_i_7_n_0));
  LUT5 #(
    .INIT(32'hFDFDF0FD)) 
    \sd_dat_o_sys[2]_i_1 
       (.I0(\sd_dat_o_sys_reg[2] ),
        .I1(\sd_dat_o_sys_reg[2]_0 ),
        .I2(\sd_dat_o_sys_reg[2]_1 ),
        .I3(\sd_dat_o_sys_reg[2]_2 ),
        .I4(buf_write_next),
        .O(D));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc__parameterized0_2
   (D,
    buf_write_next,
    \crc_reg[14]_0 ,
    \crc_reg[2]_0 ,
    \sd_dat_o_sys_reg[3] ,
    \sd_dat_o_sys_reg[3]_0 ,
    \sd_dat_o_sys_reg[3]_1 ,
    \sd_dat_o_sys_reg[3]_2 ,
    \crc_reg[0]_0 ,
    \crc_reg[12]_0 ,
    \buf_write_reg[1] ,
    \buf_write_reg[1]_0 ,
    Q,
    \buf_write_reg[1]_1 ,
    \buf_write_reg[8] ,
    \buf_write_reg[9] ,
    \buf_write_reg[10] ,
    \buf_write_reg[11] ,
    \buf_write_reg[12] ,
    \buf_write_reg[13] ,
    \buf_write_reg[14] ,
    \buf_write_reg[15] ,
    \buf_write_reg[0] ,
    SR,
    \crc_reg[15]_0 ,
    S_AXI_ACLK);
  output [0:0]D;
  output [0:0]buf_write_next;
  output [14:0]\crc_reg[14]_0 ;
  output \crc_reg[2]_0 ;
  input \sd_dat_o_sys_reg[3] ;
  input \sd_dat_o_sys_reg[3]_0 ;
  input \sd_dat_o_sys_reg[3]_1 ;
  input \sd_dat_o_sys_reg[3]_2 ;
  input [0:0]\crc_reg[0]_0 ;
  input \crc_reg[12]_0 ;
  input \buf_write_reg[1] ;
  input \buf_write_reg[1]_0 ;
  input [14:0]Q;
  input \buf_write_reg[1]_1 ;
  input \buf_write_reg[8] ;
  input \buf_write_reg[9] ;
  input \buf_write_reg[10] ;
  input \buf_write_reg[11] ;
  input \buf_write_reg[12] ;
  input \buf_write_reg[13] ;
  input \buf_write_reg[14] ;
  input \buf_write_reg[15] ;
  input \buf_write_reg[0] ;
  input [0:0]SR;
  input \crc_reg[15]_0 ;
  input S_AXI_ACLK;

  wire [0:0]D;
  wire [14:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]buf_write_next;
  wire \buf_write_reg[0] ;
  wire \buf_write_reg[10] ;
  wire \buf_write_reg[11] ;
  wire \buf_write_reg[12] ;
  wire \buf_write_reg[13] ;
  wire \buf_write_reg[14] ;
  wire \buf_write_reg[15] ;
  wire \buf_write_reg[1] ;
  wire \buf_write_reg[1]_0 ;
  wire \buf_write_reg[1]_1 ;
  wire \buf_write_reg[8] ;
  wire \buf_write_reg[9] ;
  wire [12:5]crc0;
  wire [0:0]crc2;
  wire [0:0]\crc_reg[0]_0 ;
  wire \crc_reg[12]_0 ;
  wire [14:0]\crc_reg[14]_0 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg[2]_0 ;
  wire [15:0]\crc_result[3]_0 ;
  wire read_crc_err_i_12_n_0;
  wire read_crc_err_i_13_n_0;
  wire read_crc_err_i_17_n_0;
  wire \sd_dat_o_sys_reg[3] ;
  wire \sd_dat_o_sys_reg[3]_0 ;
  wire \sd_dat_o_sys_reg[3]_1 ;
  wire \sd_dat_o_sys_reg[3]_2 ;

  LUT2 #(
    .INIT(4'h8)) 
    \buf_write[0]_i_1 
       (.I0(\crc_result[3]_0 [0]),
        .I1(\buf_write_reg[0] ),
        .O(\crc_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[10]_i_1 
       (.I0(\crc_result[3]_0 [10]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[10] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[9]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [10]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[11]_i_1 
       (.I0(\crc_result[3]_0 [11]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[11] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[10]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [11]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[12]_i_1 
       (.I0(\crc_result[3]_0 [12]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[12] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[11]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [12]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[13]_i_1 
       (.I0(\crc_result[3]_0 [13]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[13] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[12]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [13]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[14]_i_1 
       (.I0(\crc_result[3]_0 [14]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[14] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[13]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [14]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \buf_write[15]_i_1 
       (.I0(\crc_result[3]_0 [15]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[15] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[14]),
        .I5(\buf_write_reg[1]_1 ),
        .O(buf_write_next));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[1]_i_1 
       (.I0(\crc_result[3]_0 [1]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[0]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [1]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[2]_i_1 
       (.I0(\crc_result[3]_0 [2]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[1]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [2]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[3]_i_1 
       (.I0(\crc_result[3]_0 [3]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[2]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [3]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[4]_i_1 
       (.I0(\crc_result[3]_0 [4]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[3]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [4]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[5]_i_1 
       (.I0(\crc_result[3]_0 [5]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[4]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [5]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[6]_i_1 
       (.I0(\crc_result[3]_0 [6]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[5]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [6]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \buf_write[7]_i_1 
       (.I0(\crc_result[3]_0 [7]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[1]_0 ),
        .I3(Q[6]),
        .I4(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [7]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[8]_i_1 
       (.I0(\crc_result[3]_0 [8]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[8] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[7]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [8]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \buf_write[9]_i_1 
       (.I0(\crc_result[3]_0 [9]),
        .I1(\buf_write_reg[1] ),
        .I2(\buf_write_reg[9] ),
        .I3(\buf_write_reg[1]_0 ),
        .I4(Q[8]),
        .I5(\buf_write_reg[1]_1 ),
        .O(\crc_reg[14]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \crc[0]_i_1 
       (.I0(\crc_result[3]_0 [15]),
        .I1(buf_write_next),
        .I2(\crc_reg[12]_0 ),
        .I3(\crc_reg[0]_0 ),
        .O(crc2));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[12]_i_1 
       (.I0(\crc_result[3]_0 [11]),
        .I1(\crc_reg[0]_0 ),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[3]_0 [15]),
        .O(crc0[12]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \crc[5]_i_1 
       (.I0(\crc_result[3]_0 [4]),
        .I1(\crc_reg[0]_0 ),
        .I2(\crc_reg[12]_0 ),
        .I3(buf_write_next),
        .I4(\crc_result[3]_0 [15]),
        .O(crc0[5]));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc2),
        .Q(\crc_result[3]_0 [0]),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [9]),
        .Q(\crc_result[3]_0 [10]),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [10]),
        .Q(\crc_result[3]_0 [11]),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc0[12]),
        .Q(\crc_result[3]_0 [12]),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [12]),
        .Q(\crc_result[3]_0 [13]),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [13]),
        .Q(\crc_result[3]_0 [14]),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [14]),
        .Q(\crc_result[3]_0 [15]),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [0]),
        .Q(\crc_result[3]_0 [1]),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [1]),
        .Q(\crc_result[3]_0 [2]),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [2]),
        .Q(\crc_result[3]_0 [3]),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [3]),
        .Q(\crc_result[3]_0 [4]),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(crc0[5]),
        .Q(\crc_result[3]_0 [5]),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [5]),
        .Q(\crc_result[3]_0 [6]),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [6]),
        .Q(\crc_result[3]_0 [7]),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [7]),
        .Q(\crc_result[3]_0 [8]),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\crc_reg[15]_0 ),
        .D(\crc_result[3]_0 [8]),
        .Q(\crc_result[3]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_12
       (.I0(\crc_result[3]_0 [5]),
        .I1(\crc_result[3]_0 [4]),
        .I2(\crc_result[3]_0 [7]),
        .I3(\crc_result[3]_0 [6]),
        .O(read_crc_err_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_crc_err_i_13
       (.I0(\crc_result[3]_0 [11]),
        .I1(\crc_result[3]_0 [10]),
        .I2(\crc_result[3]_0 [8]),
        .I3(\crc_result[3]_0 [9]),
        .I4(read_crc_err_i_17_n_0),
        .O(read_crc_err_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_crc_err_i_17
       (.I0(\crc_result[3]_0 [13]),
        .I1(\crc_result[3]_0 [12]),
        .I2(\crc_result[3]_0 [14]),
        .I3(\crc_result[3]_0 [15]),
        .O(read_crc_err_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_crc_err_i_5
       (.I0(read_crc_err_i_12_n_0),
        .I1(\crc_result[3]_0 [2]),
        .I2(\crc_result[3]_0 [1]),
        .I3(\crc_result[3]_0 [3]),
        .I4(\crc_result[3]_0 [0]),
        .I5(read_crc_err_i_13_n_0),
        .O(\crc_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFFDD0D)) 
    \sd_dat_o_sys[3]_i_1 
       (.I0(\sd_dat_o_sys_reg[3] ),
        .I1(\sd_dat_o_sys_reg[3]_0 ),
        .I2(\sd_dat_o_sys_reg[3]_1 ),
        .I3(buf_write_next),
        .I4(\sd_dat_o_sys_reg[3]_2 ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "range_check" *) 
module adapter_axi_sd_0_0_range_check
   (out_of_range,
    CO,
    out_of_range_reg_0,
    out_of_range_reg_1,
    S_AXI_ACLK,
    DI,
    S,
    out_of_range0_carry__1_0,
    out_of_range0_carry__1_1,
    out_of_range0_carry__2_0,
    out_of_range0_carry__2_1,
    out_of_range_reg_2,
    out_of_range_reg_3,
    invalid_dat_width);
  output out_of_range;
  output [0:0]CO;
  output out_of_range_reg_0;
  input out_of_range_reg_1;
  input S_AXI_ACLK;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]out_of_range0_carry__1_0;
  input [3:0]out_of_range0_carry__1_1;
  input [3:0]out_of_range0_carry__2_0;
  input [3:0]out_of_range0_carry__2_1;
  input [3:0]out_of_range_reg_2;
  input [3:0]out_of_range_reg_3;
  input invalid_dat_width;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire S_AXI_ACLK;
  wire invalid_dat_width;
  wire out_of_range;
  wire out_of_range0_carry__0_n_0;
  wire out_of_range0_carry__0_n_1;
  wire out_of_range0_carry__0_n_2;
  wire out_of_range0_carry__0_n_3;
  wire [3:0]out_of_range0_carry__1_0;
  wire [3:0]out_of_range0_carry__1_1;
  wire out_of_range0_carry__1_n_0;
  wire out_of_range0_carry__1_n_1;
  wire out_of_range0_carry__1_n_2;
  wire out_of_range0_carry__1_n_3;
  wire [3:0]out_of_range0_carry__2_0;
  wire [3:0]out_of_range0_carry__2_1;
  wire out_of_range0_carry__2_n_1;
  wire out_of_range0_carry__2_n_2;
  wire out_of_range0_carry__2_n_3;
  wire out_of_range0_carry_n_0;
  wire out_of_range0_carry_n_1;
  wire out_of_range0_carry_n_2;
  wire out_of_range0_carry_n_3;
  wire out_of_range_reg_0;
  wire out_of_range_reg_1;
  wire [3:0]out_of_range_reg_2;
  wire [3:0]out_of_range_reg_3;
  wire [3:0]NLW_out_of_range0_carry_O_UNCONNECTED;
  wire [3:0]NLW_out_of_range0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_out_of_range0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_out_of_range0_carry__2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \card_status[31]_i_2 
       (.I0(out_of_range),
        .I1(invalid_dat_width),
        .O(out_of_range_reg_0));
  CARRY4 out_of_range0_carry
       (.CI(1'b0),
        .CO({out_of_range0_carry_n_0,out_of_range0_carry_n_1,out_of_range0_carry_n_2,out_of_range0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_out_of_range0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 out_of_range0_carry__0
       (.CI(out_of_range0_carry_n_0),
        .CO({out_of_range0_carry__0_n_0,out_of_range0_carry__0_n_1,out_of_range0_carry__0_n_2,out_of_range0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out_of_range0_carry__1_0),
        .O(NLW_out_of_range0_carry__0_O_UNCONNECTED[3:0]),
        .S(out_of_range0_carry__1_1));
  CARRY4 out_of_range0_carry__1
       (.CI(out_of_range0_carry__0_n_0),
        .CO({out_of_range0_carry__1_n_0,out_of_range0_carry__1_n_1,out_of_range0_carry__1_n_2,out_of_range0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out_of_range0_carry__2_0),
        .O(NLW_out_of_range0_carry__1_O_UNCONNECTED[3:0]),
        .S(out_of_range0_carry__2_1));
  CARRY4 out_of_range0_carry__2
       (.CI(out_of_range0_carry__1_n_0),
        .CO({CO,out_of_range0_carry__2_n_1,out_of_range0_carry__2_n_2,out_of_range0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(out_of_range_reg_2),
        .O(NLW_out_of_range0_carry__2_O_UNCONNECTED[3:0]),
        .S(out_of_range_reg_3));
  FDRE out_of_range_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(out_of_range_reg_1),
        .Q(out_of_range),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rca_keeper" *) 
module adapter_axi_sd_0_0_rca_keeper
   (CO,
    Q,
    S,
    ignored_reg,
    rca_match_carry__0_0,
    \rca_reg[0]_0 ,
    E,
    S_AXI_ACLK);
  output [0:0]CO;
  output [15:0]Q;
  input [1:0]S;
  input [0:0]ignored_reg;
  input [6:0]rca_match_carry__0_0;
  input \rca_reg[0]_0 ;
  input [0:0]E;
  input S_AXI_ACLK;

  wire [0:0]CO;
  wire [0:0]E;
  wire [15:0]Q;
  wire [1:0]S;
  wire S_AXI_ACLK;
  wire [0:0]ignored_reg;
  wire [16:1]p_0_in;
  wire \rca[0]_i_1_n_0 ;
  wire \rca[10]_i_1_n_0 ;
  wire \rca[11]_i_1_n_0 ;
  wire \rca[12]_i_1_n_0 ;
  wire \rca[13]_i_1_n_0 ;
  wire \rca[14]_i_1_n_0 ;
  wire \rca[15]_i_2_n_0 ;
  wire \rca[15]_i_5_n_0 ;
  wire \rca[15]_i_7_n_0 ;
  wire \rca[15]_i_8_n_0 ;
  wire \rca[15]_i_9_n_0 ;
  wire \rca[1]_i_1_n_0 ;
  wire \rca[2]_i_1_n_0 ;
  wire \rca[3]_i_1_n_0 ;
  wire \rca[4]_i_1_n_0 ;
  wire \rca[5]_i_1_n_0 ;
  wire \rca[6]_i_1_n_0 ;
  wire \rca[7]_i_1_n_0 ;
  wire \rca[8]_i_1_n_0 ;
  wire \rca[9]_i_1_n_0 ;
  wire [6:0]rca_match_carry__0_0;
  wire rca_match_carry__0_i_1_n_0;
  wire rca_match_carry__0_n_3;
  wire rca_match_carry_i_1_n_0;
  wire rca_match_carry_i_2_n_0;
  wire rca_match_carry_n_0;
  wire rca_match_carry_n_1;
  wire rca_match_carry_n_2;
  wire rca_match_carry_n_3;
  wire \rca_reg[0]_0 ;
  wire \rca_reg[12]_i_2_n_0 ;
  wire \rca_reg[12]_i_2_n_1 ;
  wire \rca_reg[12]_i_2_n_2 ;
  wire \rca_reg[12]_i_2_n_3 ;
  wire \rca_reg[15]_i_4_n_2 ;
  wire \rca_reg[15]_i_4_n_3 ;
  wire \rca_reg[4]_i_2_n_0 ;
  wire \rca_reg[4]_i_2_n_1 ;
  wire \rca_reg[4]_i_2_n_2 ;
  wire \rca_reg[4]_i_2_n_3 ;
  wire \rca_reg[8]_i_2_n_0 ;
  wire \rca_reg[8]_i_2_n_1 ;
  wire \rca_reg[8]_i_2_n_2 ;
  wire \rca_reg[8]_i_2_n_3 ;
  wire [3:0]NLW_rca_match_carry_O_UNCONNECTED;
  wire [3:2]NLW_rca_match_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rca_match_carry__0_O_UNCONNECTED;
  wire [2:2]\NLW_rca_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_rca_reg[15]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \rca[0]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(Q[0]),
        .O(\rca[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[10]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[10]),
        .O(\rca[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[11]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[11]),
        .O(\rca[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[12]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[12]),
        .O(\rca[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[13]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[13]),
        .O(\rca[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[14]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[14]),
        .O(\rca[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \rca[15]_i_2 
       (.I0(p_0_in[16]),
        .I1(p_0_in[15]),
        .I2(\rca[15]_i_5_n_0 ),
        .O(\rca[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rca[15]_i_5 
       (.I0(\rca[15]_i_7_n_0 ),
        .I1(Q[7]),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[6]),
        .I5(\rca[15]_i_8_n_0 ),
        .O(\rca[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rca[15]_i_7 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[13]),
        .I3(Q[9]),
        .O(\rca[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rca[15]_i_8 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\rca[15]_i_9_n_0 ),
        .O(\rca[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rca[15]_i_9 
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[5]),
        .I3(Q[3]),
        .O(\rca[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[1]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[1]),
        .O(\rca[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[2]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[2]),
        .O(\rca[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[3]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[3]),
        .O(\rca[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[4]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[4]),
        .O(\rca[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[5]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[5]),
        .O(\rca[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[6]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[6]),
        .O(\rca[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[7]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[7]),
        .O(\rca[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rca[8]_i_1 
       (.I0(p_0_in[16]),
        .I1(\rca[15]_i_5_n_0 ),
        .I2(p_0_in[8]),
        .O(\rca[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[9]_i_1 
       (.I0(\rca[15]_i_5_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[9]),
        .O(\rca[9]_i_1_n_0 ));
  CARRY4 rca_match_carry
       (.CI(1'b0),
        .CO({rca_match_carry_n_0,rca_match_carry_n_1,rca_match_carry_n_2,rca_match_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rca_match_carry_O_UNCONNECTED[3:0]),
        .S({rca_match_carry_i_1_n_0,rca_match_carry_i_2_n_0,S}));
  CARRY4 rca_match_carry__0
       (.CI(rca_match_carry_n_0),
        .CO({NLW_rca_match_carry__0_CO_UNCONNECTED[3:2],CO,rca_match_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rca_match_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rca_match_carry__0_i_1_n_0,ignored_reg}));
  LUT2 #(
    .INIT(4'h9)) 
    rca_match_carry__0_i_1
       (.I0(Q[15]),
        .I1(rca_match_carry__0_0[6]),
        .O(rca_match_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match_carry_i_1
       (.I0(Q[10]),
        .I1(rca_match_carry__0_0[4]),
        .I2(rca_match_carry__0_0[5]),
        .I3(Q[11]),
        .I4(rca_match_carry__0_0[3]),
        .I5(Q[9]),
        .O(rca_match_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match_carry_i_2
       (.I0(Q[8]),
        .I1(rca_match_carry__0_0[2]),
        .I2(rca_match_carry__0_0[1]),
        .I3(Q[7]),
        .I4(rca_match_carry__0_0[0]),
        .I5(Q[6]),
        .O(rca_match_carry_i_2_n_0));
  FDRE \rca_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[12]_i_2 
       (.CI(\rca_reg[8]_i_2_n_0 ),
        .CO({\rca_reg[12]_i_2_n_0 ,\rca_reg[12]_i_2_n_1 ,\rca_reg[12]_i_2_n_2 ,\rca_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(Q[12:9]));
  FDRE \rca_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[15]_i_2_n_0 ),
        .Q(Q[15]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[15]_i_4 
       (.CI(\rca_reg[12]_i_2_n_0 ),
        .CO({p_0_in[16],\NLW_rca_reg[15]_i_4_CO_UNCONNECTED [2],\rca_reg[15]_i_4_n_2 ,\rca_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rca_reg[15]_i_4_O_UNCONNECTED [3],p_0_in[15:13]}),
        .S({1'b1,Q[15:13]}));
  FDRE \rca_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\rca_reg[4]_i_2_n_0 ,\rca_reg[4]_i_2_n_1 ,\rca_reg[4]_i_2_n_2 ,\rca_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(Q[4:1]));
  FDRE \rca_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[8]_i_2 
       (.CI(\rca_reg[4]_i_2_n_0 ),
        .CO({\rca_reg[8]_i_2_n_0 ,\rca_reg[8]_i_2_n_1 ,\rca_reg[8]_i_2_n_2 ,\rca_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(Q[8:5]));
  FDRE \rca_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\rca[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\rca_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "responder" *) 
module adapter_axi_sd_0_0_responder
   (resp_no_crc,
    send_resp,
    sent_r1,
    \card_status_reg[23] ,
    Q,
    \resp_byte_reg[7]_0 ,
    \resp_len_reg[4]_0 ,
    \resp_cur_reg[2]_0 ,
    resp_no_crc_reg_0,
    resp_no_crc_next,
    S_AXI_ACLK,
    send_resp_o_reg_0,
    \resp_type_out_reg[4]_0 ,
    \resp_type_out_reg[0]_0 ,
    \card_status_reg[23]_0 ,
    \card_status_reg[23]_1 ,
    \card_status_reg[23]_2 ,
    cmd_illegal_stb,
    cmd_crc_err_stb,
    resp_next,
    D,
    \resp_len_reg[4]_1 );
  output resp_no_crc;
  output send_resp;
  output sent_r1;
  output [8:0]\card_status_reg[23] ;
  output [2:0]Q;
  output [7:0]\resp_byte_reg[7]_0 ;
  output [3:0]\resp_len_reg[4]_0 ;
  input \resp_cur_reg[2]_0 ;
  input resp_no_crc_reg_0;
  input resp_no_crc_next;
  input S_AXI_ACLK;
  input send_resp_o_reg_0;
  input \resp_type_out_reg[4]_0 ;
  input \resp_type_out_reg[0]_0 ;
  input [8:0]\card_status_reg[23]_0 ;
  input [8:0]\card_status_reg[23]_1 ;
  input [8:0]\card_status_reg[23]_2 ;
  input cmd_illegal_stb;
  input cmd_crc_err_stb;
  input [2:0]resp_next;
  input [7:0]D;
  input [3:0]\resp_len_reg[4]_1 ;

  wire [7:0]D;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire [8:0]\card_status_reg[23] ;
  wire [8:0]\card_status_reg[23]_0 ;
  wire [8:0]\card_status_reg[23]_1 ;
  wire [8:0]\card_status_reg[23]_2 ;
  wire cmd_crc_err_stb;
  wire cmd_illegal_stb;
  wire [7:0]\resp_byte_reg[7]_0 ;
  wire \resp_cur_reg[2]_0 ;
  wire [3:0]\resp_len_reg[4]_0 ;
  wire [3:0]\resp_len_reg[4]_1 ;
  wire [2:0]resp_next;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire resp_no_crc_reg_0;
  wire \resp_type_out_reg[0]_0 ;
  wire \resp_type_out_reg[4]_0 ;
  wire send_resp;
  wire send_resp_o_reg_0;
  wire sent_r1;
  wire sent_r6;

  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[0]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [0]),
        .I3(\card_status_reg[23]_1 [0]),
        .I4(\card_status_reg[23]_2 [0]),
        .O(\card_status_reg[23] [0]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[19]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [6]),
        .I3(\card_status_reg[23]_1 [6]),
        .I4(\card_status_reg[23]_2 [6]),
        .O(\card_status_reg[23] [6]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[1]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [1]),
        .I3(\card_status_reg[23]_1 [1]),
        .I4(\card_status_reg[23]_2 [1]),
        .O(\card_status_reg[23] [1]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \card_status[22]_i_1 
       (.I0(\card_status_reg[23]_1 [7]),
        .I1(\card_status_reg[23]_0 [7]),
        .I2(cmd_illegal_stb),
        .I3(sent_r6),
        .I4(sent_r1),
        .I5(\card_status_reg[23]_2 [7]),
        .O(\card_status_reg[23] [7]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \card_status[23]_i_1 
       (.I0(\card_status_reg[23]_1 [8]),
        .I1(\card_status_reg[23]_0 [8]),
        .I2(cmd_crc_err_stb),
        .I3(sent_r6),
        .I4(sent_r1),
        .I5(\card_status_reg[23]_2 [8]),
        .O(\card_status_reg[23] [8]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[2]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [2]),
        .I3(\card_status_reg[23]_1 [2]),
        .I4(\card_status_reg[23]_2 [2]),
        .O(\card_status_reg[23] [2]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[3]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [3]),
        .I3(\card_status_reg[23]_1 [3]),
        .I4(\card_status_reg[23]_2 [3]),
        .O(\card_status_reg[23] [3]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[4]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [4]),
        .I3(\card_status_reg[23]_1 [4]),
        .I4(\card_status_reg[23]_2 [4]),
        .O(\card_status_reg[23] [4]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[7]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [5]),
        .I3(\card_status_reg[23]_1 [5]),
        .I4(\card_status_reg[23]_2 [5]),
        .O(\card_status_reg[23] [5]));
  FDRE \resp_byte_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\resp_byte_reg[7]_0 [0]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\resp_byte_reg[7]_0 [1]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\resp_byte_reg[7]_0 [2]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\resp_byte_reg[7]_0 [3]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\resp_byte_reg[7]_0 [4]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\resp_byte_reg[7]_0 [5]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\resp_byte_reg[7]_0 [6]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_byte_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\resp_byte_reg[7]_0 [7]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_cur_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(resp_next[0]),
        .Q(Q[0]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_cur_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(resp_next[1]),
        .Q(Q[1]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_cur_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(resp_next[2]),
        .Q(Q[2]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_len_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(\resp_len_reg[4]_1 [0]),
        .Q(\resp_len_reg[4]_0 [0]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_len_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(\resp_len_reg[4]_1 [1]),
        .Q(\resp_len_reg[4]_0 [1]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_len_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(\resp_len_reg[4]_1 [2]),
        .Q(\resp_len_reg[4]_0 [2]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_len_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(\resp_len_reg[4]_1 [3]),
        .Q(\resp_len_reg[4]_0 [3]),
        .R(\resp_cur_reg[2]_0 ));
  FDRE resp_no_crc_reg
       (.C(S_AXI_ACLK),
        .CE(resp_no_crc_reg_0),
        .D(resp_no_crc_next),
        .Q(resp_no_crc),
        .R(\resp_cur_reg[2]_0 ));
  FDRE \resp_type_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\resp_type_out_reg[0]_0 ),
        .Q(sent_r1),
        .R(1'b0));
  FDRE \resp_type_out_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\resp_type_out_reg[4]_0 ),
        .Q(sent_r6),
        .R(1'b0));
  FDRE send_resp_o_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(send_resp_o_reg_0),
        .Q(send_resp),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sd_bus_interface" *) 
module adapter_axi_sd_0_0_sd_bus_interface
   (read_block_end,
    dat_got_word,
    dat_got_block,
    new_sd_clk,
    D,
    sd_cmd_o,
    sd_cmd_t,
    sd_dat_t,
    read_crc_err_reg,
    dat_wrote_new_word,
    \counter_reg[0] ,
    O,
    \counter_reg[11] ,
    Q,
    \state_reg[4] ,
    \counter_reg[4] ,
    \cmd_index_reg[5] ,
    \cmd_arg_reg[31] ,
    cmd_crc_err_reg,
    \FSM_onehot_state_reg[0] ,
    cmd_received_good,
    \cmd_index_reg[1] ,
    \cmd_index_reg[2] ,
    \cmd_index_reg[1]_0 ,
    \counter_reg[4]_0 ,
    E,
    \cmd_index_reg[0] ,
    resp_next,
    resp_no_crc_next,
    \cmd_index_reg[3] ,
    \FSM_onehot_state_reg[3] ,
    \cmd_index_reg[3]_0 ,
    \reg_saved_reg[19][8] ,
    \reg_saved_reg[19][9] ,
    \reg_saved_reg[19][10] ,
    \reg_saved_reg[19][11] ,
    \reg_saved_reg[19][12] ,
    \reg_saved_reg[19][13] ,
    got_acmd41_non_query_reg,
    got_acmd41_non_query_reg_0,
    \card_status_reg[11] ,
    p_3_out,
    \card_status_reg[9] ,
    \erase_step_reg[0] ,
    \erase_step_reg[0]_0 ,
    \cmd_index_reg[5]_0 ,
    \cmd_index_reg[0]_0 ,
    erase_seq_error_reg,
    out_of_range_reg,
    \cmd_arg_reg[0] ,
    \cmd_index_reg[5]_1 ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[1] ,
    \resp_cur_reg[2] ,
    \state_reg[4]_0 ,
    SR,
    save_current_cmd,
    \cmd_index_reg[0]_1 ,
    acmd_defined_reg,
    \FSM_onehot_state_reg[0]_0 ,
    \cmd_index_reg[5]_2 ,
    \cmd_index_reg[3]_1 ,
    \set_reg_clear_always[12].reg_clear_always_reg[12][5] ,
    update_2,
    \FSM_onehot_state_reg[4] ,
    got_cmd00,
    \cmd_index_reg[0]_2 ,
    \cmd_arg_reg[19] ,
    \card_status_reg[5] ,
    ignored_c,
    \cmd_index_reg[4] ,
    multi_block_mode_next,
    acmd_defined_reg_0,
    \cmd_index_reg[5]_3 ,
    \cmd_index_reg[5]_4 ,
    \cmd_index_reg[1]_1 ,
    S,
    \cmd_arg_reg[30] ,
    \cmd_index_reg[3]_2 ,
    \cmd_index_reg[1]_2 ,
    \cmd_index_reg[0]_3 ,
    \cmd_index_reg[5]_5 ,
    \cmd_index_reg[1]_3 ,
    acmd_defined_reg_1,
    \size_reg[7] ,
    DI,
    \size_reg[15] ,
    \cmd_arg_reg[15] ,
    \size_reg[23] ,
    \cmd_arg_reg[23] ,
    \size_reg[31] ,
    \cmd_arg_reg[31]_0 ,
    \FSM_sequential_state_reg[3] ,
    cmd_crc_err_stb0,
    \crc_reg[10] ,
    \crc_reg[2] ,
    \crc_reg[2]_0 ,
    \crc_reg[10]_0 ,
    ram_dev_addr,
    \read_data_reg[31] ,
    \sd_dat_o_reg[3]_0 ,
    \sd_dat_o_sys_reg[0] ,
    S_AXI_ACLK,
    resetn,
    \sd_clk_div_d_reg[0]_0 ,
    sd_clk,
    sd_cmd_i,
    read_crc_err_reg_0,
    block_data_finished0_carry__0,
    \FSM_sequential_state[0]_i_14 ,
    \block_data_finished0_inferred__0/i__carry__0 ,
    \dev_blocks_read_reg[31] ,
    \FSM_sequential_state_reg[0]_0 ,
    \crc_reg[15] ,
    send_no_resp,
    \sd_dat_o_sys_reg[3] ,
    \resp_byte_reg[0] ,
    \block_data_finished0_inferred__0/i__carry__0_0 ,
    \FSM_onehot_state_reg[4]_0 ,
    ram_dev_data,
    \axi_rdata[13]_i_3 ,
    \axi_rdata[13]_i_3_0 ,
    \axi_rdata[13]_i_3_1 ,
    \axi_rdata[13]_i_3_2 ,
    got_acmd41_non_query_reg_1,
    \saved_cmd_index_reg[5] ,
    \card_status_reg[11]_0 ,
    \erase_step_reg[0]_1 ,
    \erase_step_reg[0]_2 ,
    got_cmd8_1,
    erase_seq_error,
    CO,
    out_of_range,
    invalid_dat_width_reg,
    invalid_dat_width,
    \sd_dat_o_sys_reg[0]_0 ,
    \buf_write_reg[8] ,
    \buf_write_reg[9] ,
    \buf_write_reg[10] ,
    \buf_write_reg[11] ,
    \buf_write_reg[12] ,
    \buf_write_reg[13] ,
    \buf_write_reg[14] ,
    \buf_write_reg[24] ,
    \buf_write_reg[25] ,
    \buf_write_reg[26] ,
    \buf_write_reg[27] ,
    \buf_write_reg[28] ,
    \buf_write_reg[29] ,
    \buf_write_reg[30] ,
    \buf_write_reg[32] ,
    \buf_write_reg[33] ,
    \buf_write_reg[34] ,
    \buf_write_reg[35] ,
    \buf_write_reg[36] ,
    \buf_write_reg[37] ,
    \buf_write_reg[38] ,
    \buf_write_reg[39] ,
    \buf_write_reg[40] ,
    \buf_write_reg[41] ,
    \buf_write_reg[42] ,
    \buf_write_reg[43] ,
    \buf_write_reg[44] ,
    \buf_write_reg[45] ,
    \buf_write_reg[46] ,
    \buf_write_reg[48] ,
    \buf_write_reg[49] ,
    \buf_write_reg[50] ,
    \buf_write_reg[51] ,
    \buf_write_reg[52] ,
    \buf_write_reg[53] ,
    \buf_write_reg[54] ,
    \buf_write_reg[55] ,
    \buf_write_reg[56] ,
    \buf_write_reg[57] ,
    \buf_write_reg[58] ,
    \buf_write_reg[59] ,
    \buf_write_reg[60] ,
    \buf_write_reg[62] ,
    \crc_reg[0] ,
    \buf_write_reg[61] ,
    \buf_write_reg[15] ,
    \buf_write_reg[31] ,
    \buf_write_reg[47] ,
    \FSM_sequential_state_reg[0]_1 ,
    sd_cmd_o_sys_reg,
    send_resp,
    resp_no_crc,
    \sd_dat_o_sys_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \crc[15]_i_4 ,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[3]_0 ,
    \sd_dat_o_sys[3]_i_3 ,
    \state[5]_i_6 ,
    \resp_byte[4]_i_4 ,
    \resp_byte_reg[7] ,
    \resp_byte_reg[6] ,
    \resp_byte_reg[3] ,
    \resp_byte[7]_i_8 ,
    \resp_byte_reg[1] ,
    \resp_byte[5]_i_3 ,
    \resp_byte[4]_i_3 ,
    \resp_byte[2]_i_3 ,
    \resp_byte_reg[0]_i_2 ,
    \resp_byte_reg[6]_i_6 ,
    initialization_done,
    \resp_byte_reg[2] ,
    \resp_byte_reg[5] ,
    resp_no_crc_reg,
    \card_status_reg[9]_0 ,
    \card_status_reg[9]_1 ,
    \card_status_reg[5]_0 ,
    \card_status_reg[5]_1 ,
    \card_status_reg[5]_2 ,
    last_cmd_valid,
    \card_status[11]_i_4 ,
    illegal_reg,
    ignored_reg,
    ignored_reg_0,
    out_of_range0_carry,
    out_of_range0_carry_0,
    out_of_range0_carry_1,
    out_of_range0_carry_2,
    out_of_range0_carry_3,
    out_of_range0_carry_4,
    out_of_range0_carry_5,
    out_of_range0_carry_6,
    out_of_range0_carry__0,
    out_of_range0_carry__0_0,
    out_of_range0_carry__0_1,
    out_of_range0_carry__0_2,
    out_of_range0_carry__0_3,
    out_of_range0_carry__0_4,
    out_of_range0_carry__0_5,
    out_of_range0_carry__0_6,
    out_of_range0_carry__1,
    out_of_range0_carry__1_0,
    out_of_range0_carry__1_1,
    out_of_range0_carry__1_2,
    out_of_range0_carry__1_3,
    out_of_range0_carry__1_4,
    out_of_range0_carry__1_5,
    out_of_range0_carry__1_6,
    out_of_range0_carry__2,
    out_of_range0_carry__2_0,
    out_of_range0_carry__2_1,
    out_of_range0_carry__2_2,
    out_of_range0_carry__2_3,
    out_of_range0_carry__2_4,
    out_of_range0_carry__2_5,
    out_of_range0_carry__2_6,
    fifo_empty,
    \FSM_sequential_state_reg[1]_2 ,
    \sd_dat_d_reg[0][3]_0 );
  output read_block_end;
  output dat_got_word;
  output dat_got_block;
  output new_sd_clk;
  output [0:0]D;
  output sd_cmd_o;
  output sd_cmd_t;
  output [0:0]sd_dat_t;
  output read_crc_err_reg;
  output dat_wrote_new_word;
  output [0:0]\counter_reg[0] ;
  output [2:0]O;
  output [0:0]\counter_reg[11] ;
  output [2:0]Q;
  output [0:0]\state_reg[4] ;
  output [1:0]\counter_reg[4] ;
  output [5:0]\cmd_index_reg[5] ;
  output [31:0]\cmd_arg_reg[31] ;
  output cmd_crc_err_reg;
  output \FSM_onehot_state_reg[0] ;
  output cmd_received_good;
  output \cmd_index_reg[1] ;
  output [4:0]\cmd_index_reg[2] ;
  output \cmd_index_reg[1]_0 ;
  output \counter_reg[4]_0 ;
  output [0:0]E;
  output [3:0]\cmd_index_reg[0] ;
  output [2:0]resp_next;
  output resp_no_crc_next;
  output \cmd_index_reg[3] ;
  output \FSM_onehot_state_reg[3] ;
  output \cmd_index_reg[3]_0 ;
  output \reg_saved_reg[19][8] ;
  output \reg_saved_reg[19][9] ;
  output \reg_saved_reg[19][10] ;
  output \reg_saved_reg[19][11] ;
  output \reg_saved_reg[19][12] ;
  output \reg_saved_reg[19][13] ;
  output got_acmd41_non_query_reg;
  output got_acmd41_non_query_reg_0;
  output \card_status_reg[11] ;
  output [0:0]p_3_out;
  output \card_status_reg[9] ;
  output \erase_step_reg[0] ;
  output \erase_step_reg[0]_0 ;
  output \cmd_index_reg[5]_0 ;
  output \cmd_index_reg[0]_0 ;
  output erase_seq_error_reg;
  output out_of_range_reg;
  output \cmd_arg_reg[0] ;
  output \cmd_index_reg[5]_1 ;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[1] ;
  output [7:0]\resp_cur_reg[2] ;
  output \state_reg[4]_0 ;
  output [0:0]SR;
  output save_current_cmd;
  output [0:0]\cmd_index_reg[0]_1 ;
  output [0:0]acmd_defined_reg;
  output [0:0]\FSM_onehot_state_reg[0]_0 ;
  output [0:0]\cmd_index_reg[5]_2 ;
  output [0:0]\cmd_index_reg[3]_1 ;
  output [0:0]\set_reg_clear_always[12].reg_clear_always_reg[12][5] ;
  output update_2;
  output [4:0]\FSM_onehot_state_reg[4] ;
  output got_cmd00;
  output \cmd_index_reg[0]_2 ;
  output \cmd_arg_reg[19] ;
  output \card_status_reg[5] ;
  output ignored_c;
  output \cmd_index_reg[4] ;
  output multi_block_mode_next;
  output acmd_defined_reg_0;
  output \cmd_index_reg[5]_3 ;
  output \cmd_index_reg[5]_4 ;
  output \cmd_index_reg[1]_1 ;
  output [1:0]S;
  output [0:0]\cmd_arg_reg[30] ;
  output \cmd_index_reg[3]_2 ;
  output \cmd_index_reg[1]_2 ;
  output \cmd_index_reg[0]_3 ;
  output \cmd_index_reg[5]_5 ;
  output \cmd_index_reg[1]_3 ;
  output [0:0]acmd_defined_reg_1;
  output [3:0]\size_reg[7] ;
  output [3:0]DI;
  output [3:0]\size_reg[15] ;
  output [3:0]\cmd_arg_reg[15] ;
  output [3:0]\size_reg[23] ;
  output [3:0]\cmd_arg_reg[23] ;
  output [3:0]\size_reg[31] ;
  output [3:0]\cmd_arg_reg[31]_0 ;
  output \FSM_sequential_state_reg[3] ;
  output cmd_crc_err_stb0;
  output \crc_reg[10] ;
  output \crc_reg[2] ;
  output \crc_reg[2]_0 ;
  output \crc_reg[10]_0 ;
  output [1:0]ram_dev_addr;
  output [31:0]\read_data_reg[31] ;
  output [3:0]\sd_dat_o_reg[3]_0 ;
  input \sd_dat_o_sys_reg[0] ;
  input S_AXI_ACLK;
  input resetn;
  input \sd_clk_div_d_reg[0]_0 ;
  input sd_clk;
  input sd_cmd_i;
  input read_crc_err_reg_0;
  input [0:0]block_data_finished0_carry__0;
  input [0:0]\FSM_sequential_state[0]_i_14 ;
  input [0:0]\block_data_finished0_inferred__0/i__carry__0 ;
  input [0:0]\dev_blocks_read_reg[31] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input \crc_reg[15] ;
  input send_no_resp;
  input \sd_dat_o_sys_reg[3] ;
  input [2:0]\resp_byte_reg[0] ;
  input [4:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  input [4:0]\FSM_onehot_state_reg[4]_0 ;
  input [31:0]ram_dev_data;
  input [5:0]\axi_rdata[13]_i_3 ;
  input [5:0]\axi_rdata[13]_i_3_0 ;
  input [1:0]\axi_rdata[13]_i_3_1 ;
  input [4:0]\axi_rdata[13]_i_3_2 ;
  input got_acmd41_non_query_reg_1;
  input \saved_cmd_index_reg[5] ;
  input [3:0]\card_status_reg[11]_0 ;
  input \erase_step_reg[0]_1 ;
  input \erase_step_reg[0]_2 ;
  input got_cmd8_1;
  input erase_seq_error;
  input [0:0]CO;
  input out_of_range;
  input invalid_dat_width_reg;
  input invalid_dat_width;
  input \sd_dat_o_sys_reg[0]_0 ;
  input \buf_write_reg[8] ;
  input \buf_write_reg[9] ;
  input \buf_write_reg[10] ;
  input \buf_write_reg[11] ;
  input \buf_write_reg[12] ;
  input \buf_write_reg[13] ;
  input \buf_write_reg[14] ;
  input \buf_write_reg[24] ;
  input \buf_write_reg[25] ;
  input \buf_write_reg[26] ;
  input \buf_write_reg[27] ;
  input \buf_write_reg[28] ;
  input \buf_write_reg[29] ;
  input \buf_write_reg[30] ;
  input \buf_write_reg[32] ;
  input \buf_write_reg[33] ;
  input \buf_write_reg[34] ;
  input \buf_write_reg[35] ;
  input \buf_write_reg[36] ;
  input \buf_write_reg[37] ;
  input \buf_write_reg[38] ;
  input \buf_write_reg[39] ;
  input \buf_write_reg[40] ;
  input \buf_write_reg[41] ;
  input \buf_write_reg[42] ;
  input \buf_write_reg[43] ;
  input \buf_write_reg[44] ;
  input \buf_write_reg[45] ;
  input \buf_write_reg[46] ;
  input \buf_write_reg[48] ;
  input \buf_write_reg[49] ;
  input \buf_write_reg[50] ;
  input \buf_write_reg[51] ;
  input \buf_write_reg[52] ;
  input \buf_write_reg[53] ;
  input \buf_write_reg[54] ;
  input \buf_write_reg[55] ;
  input \buf_write_reg[56] ;
  input \buf_write_reg[57] ;
  input \buf_write_reg[58] ;
  input \buf_write_reg[59] ;
  input \buf_write_reg[60] ;
  input \buf_write_reg[62] ;
  input \crc_reg[0] ;
  input \buf_write_reg[61] ;
  input \buf_write_reg[15] ;
  input \buf_write_reg[31] ;
  input \buf_write_reg[47] ;
  input \FSM_sequential_state_reg[0]_1 ;
  input [7:0]sd_cmd_o_sys_reg;
  input send_resp;
  input resp_no_crc;
  input \sd_dat_o_sys_reg[1] ;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[1]_1 ;
  input \crc[15]_i_4 ;
  input \FSM_sequential_state_reg[0]_2 ;
  input \FSM_sequential_state_reg[2] ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \sd_dat_o_sys[3]_i_3 ;
  input [3:0]\state[5]_i_6 ;
  input [21:0]\resp_byte[4]_i_4 ;
  input \resp_byte_reg[7] ;
  input \resp_byte_reg[6] ;
  input \resp_byte_reg[3] ;
  input [15:0]\resp_byte[7]_i_8 ;
  input \resp_byte_reg[1] ;
  input \resp_byte[5]_i_3 ;
  input \resp_byte[4]_i_3 ;
  input \resp_byte[2]_i_3 ;
  input \resp_byte_reg[0]_i_2 ;
  input \resp_byte_reg[6]_i_6 ;
  input initialization_done;
  input \resp_byte_reg[2] ;
  input \resp_byte_reg[5] ;
  input resp_no_crc_reg;
  input \card_status_reg[9]_0 ;
  input \card_status_reg[9]_1 ;
  input \card_status_reg[5]_0 ;
  input [0:0]\card_status_reg[5]_1 ;
  input [0:0]\card_status_reg[5]_2 ;
  input last_cmd_valid;
  input \card_status[11]_i_4 ;
  input illegal_reg;
  input [0:0]ignored_reg;
  input ignored_reg_0;
  input out_of_range0_carry;
  input out_of_range0_carry_0;
  input out_of_range0_carry_1;
  input out_of_range0_carry_2;
  input out_of_range0_carry_3;
  input out_of_range0_carry_4;
  input out_of_range0_carry_5;
  input out_of_range0_carry_6;
  input out_of_range0_carry__0;
  input out_of_range0_carry__0_0;
  input out_of_range0_carry__0_1;
  input out_of_range0_carry__0_2;
  input out_of_range0_carry__0_3;
  input out_of_range0_carry__0_4;
  input out_of_range0_carry__0_5;
  input out_of_range0_carry__0_6;
  input out_of_range0_carry__1;
  input out_of_range0_carry__1_0;
  input out_of_range0_carry__1_1;
  input out_of_range0_carry__1_2;
  input out_of_range0_carry__1_3;
  input out_of_range0_carry__1_4;
  input out_of_range0_carry__1_5;
  input out_of_range0_carry__1_6;
  input out_of_range0_carry__2;
  input out_of_range0_carry__2_0;
  input out_of_range0_carry__2_1;
  input out_of_range0_carry__2_2;
  input out_of_range0_carry__2_3;
  input out_of_range0_carry__2_4;
  input out_of_range0_carry__2_5;
  input out_of_range0_carry__2_6;
  input fifo_empty;
  input [0:0]\FSM_sequential_state_reg[1]_2 ;
  input [3:0]\sd_dat_d_reg[0][3]_0 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [4:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]\FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_sequential_state[0]_i_14 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[1]_2 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire [2:0]O;
  wire [2:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]acmd_defined_reg;
  wire acmd_defined_reg_0;
  wire [0:0]acmd_defined_reg_1;
  wire [5:0]\axi_rdata[13]_i_3 ;
  wire [5:0]\axi_rdata[13]_i_3_0 ;
  wire [1:0]\axi_rdata[13]_i_3_1 ;
  wire [4:0]\axi_rdata[13]_i_3_2 ;
  wire [0:0]block_data_finished0_carry__0;
  wire [0:0]\block_data_finished0_inferred__0/i__carry__0 ;
  wire [4:0]\block_data_finished0_inferred__0/i__carry__0_0 ;
  wire [0:0]buf_read_next;
  wire \buf_write_reg[10] ;
  wire \buf_write_reg[11] ;
  wire \buf_write_reg[12] ;
  wire \buf_write_reg[13] ;
  wire \buf_write_reg[14] ;
  wire \buf_write_reg[15] ;
  wire \buf_write_reg[24] ;
  wire \buf_write_reg[25] ;
  wire \buf_write_reg[26] ;
  wire \buf_write_reg[27] ;
  wire \buf_write_reg[28] ;
  wire \buf_write_reg[29] ;
  wire \buf_write_reg[30] ;
  wire \buf_write_reg[31] ;
  wire \buf_write_reg[32] ;
  wire \buf_write_reg[33] ;
  wire \buf_write_reg[34] ;
  wire \buf_write_reg[35] ;
  wire \buf_write_reg[36] ;
  wire \buf_write_reg[37] ;
  wire \buf_write_reg[38] ;
  wire \buf_write_reg[39] ;
  wire \buf_write_reg[40] ;
  wire \buf_write_reg[41] ;
  wire \buf_write_reg[42] ;
  wire \buf_write_reg[43] ;
  wire \buf_write_reg[44] ;
  wire \buf_write_reg[45] ;
  wire \buf_write_reg[46] ;
  wire \buf_write_reg[47] ;
  wire \buf_write_reg[48] ;
  wire \buf_write_reg[49] ;
  wire \buf_write_reg[50] ;
  wire \buf_write_reg[51] ;
  wire \buf_write_reg[52] ;
  wire \buf_write_reg[53] ;
  wire \buf_write_reg[54] ;
  wire \buf_write_reg[55] ;
  wire \buf_write_reg[56] ;
  wire \buf_write_reg[57] ;
  wire \buf_write_reg[58] ;
  wire \buf_write_reg[59] ;
  wire \buf_write_reg[60] ;
  wire \buf_write_reg[61] ;
  wire \buf_write_reg[62] ;
  wire \buf_write_reg[8] ;
  wire \buf_write_reg[9] ;
  wire \card_status[11]_i_4 ;
  wire \card_status_reg[11] ;
  wire [3:0]\card_status_reg[11]_0 ;
  wire \card_status_reg[5] ;
  wire \card_status_reg[5]_0 ;
  wire [0:0]\card_status_reg[5]_1 ;
  wire [0:0]\card_status_reg[5]_2 ;
  wire \card_status_reg[9] ;
  wire \card_status_reg[9]_0 ;
  wire \card_status_reg[9]_1 ;
  wire \cmd_arg_reg[0] ;
  wire [3:0]\cmd_arg_reg[15] ;
  wire \cmd_arg_reg[19] ;
  wire [3:0]\cmd_arg_reg[23] ;
  wire [0:0]\cmd_arg_reg[30] ;
  wire [31:0]\cmd_arg_reg[31] ;
  wire [3:0]\cmd_arg_reg[31]_0 ;
  wire cmd_crc_err_reg;
  wire cmd_crc_err_stb0;
  wire [3:0]\cmd_index_reg[0] ;
  wire \cmd_index_reg[0]_0 ;
  wire [0:0]\cmd_index_reg[0]_1 ;
  wire \cmd_index_reg[0]_2 ;
  wire \cmd_index_reg[0]_3 ;
  wire \cmd_index_reg[1] ;
  wire \cmd_index_reg[1]_0 ;
  wire \cmd_index_reg[1]_1 ;
  wire \cmd_index_reg[1]_2 ;
  wire \cmd_index_reg[1]_3 ;
  wire [4:0]\cmd_index_reg[2] ;
  wire \cmd_index_reg[3] ;
  wire \cmd_index_reg[3]_0 ;
  wire [0:0]\cmd_index_reg[3]_1 ;
  wire \cmd_index_reg[3]_2 ;
  wire \cmd_index_reg[4] ;
  wire [5:0]\cmd_index_reg[5] ;
  wire \cmd_index_reg[5]_0 ;
  wire \cmd_index_reg[5]_1 ;
  wire [0:0]\cmd_index_reg[5]_2 ;
  wire \cmd_index_reg[5]_3 ;
  wire \cmd_index_reg[5]_4 ;
  wire \cmd_index_reg[5]_5 ;
  wire cmd_received_good;
  wire [0:0]\counter_reg[0] ;
  wire [0:0]\counter_reg[11] ;
  wire [1:0]\counter_reg[4] ;
  wire \counter_reg[4]_0 ;
  wire \crc[15]_i_4 ;
  wire \crc_reg[0] ;
  wire \crc_reg[10] ;
  wire \crc_reg[10]_0 ;
  wire \crc_reg[15] ;
  wire \crc_reg[2] ;
  wire \crc_reg[2]_0 ;
  wire dat_got_block;
  wire dat_got_word;
  wire dat_wrote_new_word;
  wire [0:0]\dev_blocks_read_reg[31] ;
  wire erase_seq_error;
  wire erase_seq_error_reg;
  wire \erase_step_reg[0] ;
  wire \erase_step_reg[0]_0 ;
  wire \erase_step_reg[0]_1 ;
  wire \erase_step_reg[0]_2 ;
  wire fifo_empty;
  wire got_acmd41_non_query_reg;
  wire got_acmd41_non_query_reg_0;
  wire got_acmd41_non_query_reg_1;
  wire got_cmd00;
  wire got_cmd8_1;
  wire ignored_c;
  wire [0:0]ignored_reg;
  wire ignored_reg_0;
  wire illegal_reg;
  wire initialization_done;
  wire invalid_dat_width;
  wire invalid_dat_width_reg;
  wire last_cmd_valid;
  wire multi_block_mode_next;
  wire new_sd_clk;
  wire out_of_range;
  wire out_of_range0_carry;
  wire out_of_range0_carry_0;
  wire out_of_range0_carry_1;
  wire out_of_range0_carry_2;
  wire out_of_range0_carry_3;
  wire out_of_range0_carry_4;
  wire out_of_range0_carry_5;
  wire out_of_range0_carry_6;
  wire out_of_range0_carry__0;
  wire out_of_range0_carry__0_0;
  wire out_of_range0_carry__0_1;
  wire out_of_range0_carry__0_2;
  wire out_of_range0_carry__0_3;
  wire out_of_range0_carry__0_4;
  wire out_of_range0_carry__0_5;
  wire out_of_range0_carry__0_6;
  wire out_of_range0_carry__1;
  wire out_of_range0_carry__1_0;
  wire out_of_range0_carry__1_1;
  wire out_of_range0_carry__1_2;
  wire out_of_range0_carry__1_3;
  wire out_of_range0_carry__1_4;
  wire out_of_range0_carry__1_5;
  wire out_of_range0_carry__1_6;
  wire out_of_range0_carry__2;
  wire out_of_range0_carry__2_0;
  wire out_of_range0_carry__2_1;
  wire out_of_range0_carry__2_2;
  wire out_of_range0_carry__2_3;
  wire out_of_range0_carry__2_4;
  wire out_of_range0_carry__2_5;
  wire out_of_range0_carry__2_6;
  wire out_of_range_reg;
  wire p_0_in;
  wire [0:0]p_3_out;
  wire [1:0]ram_dev_addr;
  wire [31:0]ram_dev_data;
  wire read_block_end;
  wire read_crc_err_reg;
  wire read_crc_err_reg_0;
  wire [31:0]\read_data_reg[31] ;
  wire \reg_saved_reg[19][10] ;
  wire \reg_saved_reg[19][11] ;
  wire \reg_saved_reg[19][12] ;
  wire \reg_saved_reg[19][13] ;
  wire \reg_saved_reg[19][8] ;
  wire \reg_saved_reg[19][9] ;
  wire resetn;
  wire resetn_reg_reg_inv_n_0;
  wire \resp_byte[2]_i_3 ;
  wire \resp_byte[4]_i_3 ;
  wire [21:0]\resp_byte[4]_i_4 ;
  wire \resp_byte[5]_i_3 ;
  wire [15:0]\resp_byte[7]_i_8 ;
  wire [2:0]\resp_byte_reg[0] ;
  wire \resp_byte_reg[0]_i_2 ;
  wire \resp_byte_reg[1] ;
  wire \resp_byte_reg[2] ;
  wire \resp_byte_reg[3] ;
  wire \resp_byte_reg[5] ;
  wire \resp_byte_reg[6] ;
  wire \resp_byte_reg[6]_i_6 ;
  wire \resp_byte_reg[7] ;
  wire [7:0]\resp_cur_reg[2] ;
  wire [2:0]resp_next;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire resp_no_crc_reg;
  wire save_current_cmd;
  wire \saved_cmd_index_reg[5] ;
  wire sd_clk;
  wire \sd_clk_div_d_reg[0]_0 ;
  wire \sd_clk_div_d_reg_n_0_[1] ;
  wire \sd_clk_div_d_reg_n_0_[3] ;
  wire [1:0]sd_cmd_d;
  wire sd_cmd_i;
  wire sd_cmd_i_sys;
  wire sd_cmd_o;
  wire sd_cmd_o_sys;
  wire [7:0]sd_cmd_o_sys_reg;
  wire sd_cmd_t;
  wire sd_cmd_t_sys;
  wire [3:0]\sd_dat_d_reg[0][3]_0 ;
  wire [3:0]\sd_dat_d_reg[0]_4 ;
  wire [3:0]\sd_dat_d_reg[1]_5 ;
  wire \sd_dat_d_reg_n_0_[2][1] ;
  wire \sd_dat_d_reg_n_0_[2][2] ;
  wire \sd_dat_d_reg_n_0_[2][3] ;
  wire [3:0]\sd_dat_o_reg[3]_0 ;
  wire [3:0]sd_dat_o_sys;
  wire \sd_dat_o_sys[3]_i_3 ;
  wire \sd_dat_o_sys_reg[0] ;
  wire \sd_dat_o_sys_reg[0]_0 ;
  wire \sd_dat_o_sys_reg[1] ;
  wire \sd_dat_o_sys_reg[3] ;
  wire [0:0]sd_dat_t;
  wire [3:3]sd_dat_t_sys;
  wire send_no_resp;
  wire send_resp;
  wire [0:0]\set_reg_clear_always[12].reg_clear_always_reg[12][5] ;
  wire [3:0]\size_reg[15] ;
  wire [3:0]\size_reg[23] ;
  wire [3:0]\size_reg[31] ;
  wire [3:0]\size_reg[7] ;
  wire [3:0]\state[5]_i_6 ;
  wire [0:0]\state_reg[4] ;
  wire \state_reg[4]_0 ;
  wire update_2;

  adapter_axi_sd_0_0_cmd_interface cmd_unit
       (.CO(CO),
        .DI(DI),
        .E(new_sd_clk),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3] ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state_reg[4] ),
        .\FSM_onehot_state_reg[4]_0 (\FSM_onehot_state_reg[4]_0 ),
        .Q(\state_reg[4] ),
        .S(S),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .acmd_defined_reg(acmd_defined_reg),
        .acmd_defined_reg_0(acmd_defined_reg_0),
        .acmd_defined_reg_1(acmd_defined_reg_1),
        .\axi_rdata[13]_i_3 (\axi_rdata[13]_i_3 ),
        .\axi_rdata[13]_i_3_0 (\axi_rdata[13]_i_3_0 ),
        .\axi_rdata[13]_i_3_1 (\axi_rdata[13]_i_3_1 ),
        .\axi_rdata[13]_i_3_2 (\axi_rdata[13]_i_3_2 ),
        .\buf_read_reg[0]_0 (sd_cmd_i_sys),
        .\card_status[11]_i_4_0 (\card_status[11]_i_4 ),
        .\card_status_reg[11] (\card_status_reg[11] ),
        .\card_status_reg[11]_0 (\card_status_reg[11]_0 ),
        .\card_status_reg[5] (\card_status_reg[5] ),
        .\card_status_reg[5]_0 (\card_status_reg[5]_0 ),
        .\card_status_reg[5]_1 (\card_status_reg[5]_1 ),
        .\card_status_reg[5]_2 (\card_status_reg[5]_2 ),
        .\card_status_reg[9] (\card_status_reg[9] ),
        .\card_status_reg[9]_0 (\card_status_reg[9]_0 ),
        .\card_status_reg[9]_1 (\card_status_reg[9]_1 ),
        .\cmd_arg_reg[0]_0 (\cmd_arg_reg[0] ),
        .\cmd_arg_reg[15]_0 (\cmd_arg_reg[15] ),
        .\cmd_arg_reg[19]_0 (\cmd_arg_reg[19] ),
        .\cmd_arg_reg[23]_0 (\cmd_arg_reg[23] ),
        .\cmd_arg_reg[30]_0 (\cmd_arg_reg[30] ),
        .\cmd_arg_reg[31]_0 (\cmd_arg_reg[31] ),
        .\cmd_arg_reg[31]_1 (\cmd_arg_reg[31]_0 ),
        .cmd_crc_err_reg_0(cmd_crc_err_reg),
        .cmd_crc_err_stb0(cmd_crc_err_stb0),
        .\cmd_index_reg[0]_0 (\cmd_index_reg[0] ),
        .\cmd_index_reg[0]_1 (resp_next[1]),
        .\cmd_index_reg[0]_2 (\cmd_index_reg[0]_0 ),
        .\cmd_index_reg[0]_3 (\cmd_index_reg[0]_1 ),
        .\cmd_index_reg[0]_4 (\cmd_index_reg[0]_2 ),
        .\cmd_index_reg[0]_5 (\cmd_index_reg[0]_3 ),
        .\cmd_index_reg[1]_0 (\cmd_index_reg[1] ),
        .\cmd_index_reg[1]_1 (\cmd_index_reg[1]_0 ),
        .\cmd_index_reg[1]_2 (\cmd_index_reg[1]_1 ),
        .\cmd_index_reg[1]_3 (\cmd_index_reg[1]_2 ),
        .\cmd_index_reg[1]_4 (\cmd_index_reg[1]_3 ),
        .\cmd_index_reg[2]_0 (\cmd_index_reg[2] ),
        .\cmd_index_reg[3]_0 (resp_next[2]),
        .\cmd_index_reg[3]_1 (\cmd_index_reg[3] ),
        .\cmd_index_reg[3]_2 (\cmd_index_reg[3]_0 ),
        .\cmd_index_reg[3]_3 (\cmd_index_reg[3]_1 ),
        .\cmd_index_reg[3]_4 (\cmd_index_reg[3]_2 ),
        .\cmd_index_reg[4]_0 (\cmd_index_reg[4] ),
        .\cmd_index_reg[5]_0 (\cmd_index_reg[5] ),
        .\cmd_index_reg[5]_1 (resp_next[0]),
        .\cmd_index_reg[5]_2 (\cmd_index_reg[5]_0 ),
        .\cmd_index_reg[5]_3 (\cmd_index_reg[5]_1 ),
        .\cmd_index_reg[5]_4 (\cmd_index_reg[5]_2 ),
        .\cmd_index_reg[5]_5 (\cmd_index_reg[5]_3 ),
        .\cmd_index_reg[5]_6 (\cmd_index_reg[5]_4 ),
        .\cmd_index_reg[5]_7 (\cmd_index_reg[5]_5 ),
        .\counter_reg[4]_0 (\counter_reg[4] ),
        .\counter_reg[4]_1 (\counter_reg[4]_0 ),
        .erase_seq_error(erase_seq_error),
        .erase_seq_error_reg(erase_seq_error_reg),
        .\erase_step_reg[0] (\erase_step_reg[0] ),
        .\erase_step_reg[0]_0 (\erase_step_reg[0]_0 ),
        .\erase_step_reg[0]_1 (\erase_step_reg[0]_1 ),
        .\erase_step_reg[0]_2 (\erase_step_reg[0]_2 ),
        .got_acmd41_non_query_reg(got_acmd41_non_query_reg),
        .got_acmd41_non_query_reg_0(got_acmd41_non_query_reg_0),
        .got_acmd41_non_query_reg_1(got_acmd41_non_query_reg_1),
        .got_cmd00(got_cmd00),
        .got_cmd8_1(got_cmd8_1),
        .got_new_cmd_reg_0(cmd_received_good),
        .ignored_c(ignored_c),
        .ignored_reg(ignored_reg),
        .ignored_reg_0(ignored_reg_0),
        .illegal_reg(illegal_reg),
        .initialization_done(initialization_done),
        .invalid_dat_width(invalid_dat_width),
        .invalid_dat_width_reg(invalid_dat_width_reg),
        .is_writing_reg_inv_0(\sd_dat_o_sys_reg[0] ),
        .last_cmd_valid(last_cmd_valid),
        .multi_block_mode_next(multi_block_mode_next),
        .out_of_range(out_of_range),
        .out_of_range0_carry(out_of_range0_carry),
        .out_of_range0_carry_0(out_of_range0_carry_0),
        .out_of_range0_carry_1(out_of_range0_carry_1),
        .out_of_range0_carry_2(out_of_range0_carry_2),
        .out_of_range0_carry_3(out_of_range0_carry_3),
        .out_of_range0_carry_4(out_of_range0_carry_4),
        .out_of_range0_carry_5(out_of_range0_carry_5),
        .out_of_range0_carry_6(out_of_range0_carry_6),
        .out_of_range0_carry__0(out_of_range0_carry__0),
        .out_of_range0_carry__0_0(out_of_range0_carry__0_0),
        .out_of_range0_carry__0_1(out_of_range0_carry__0_1),
        .out_of_range0_carry__0_2(out_of_range0_carry__0_2),
        .out_of_range0_carry__0_3(out_of_range0_carry__0_3),
        .out_of_range0_carry__0_4(out_of_range0_carry__0_4),
        .out_of_range0_carry__0_5(out_of_range0_carry__0_5),
        .out_of_range0_carry__0_6(out_of_range0_carry__0_6),
        .out_of_range0_carry__1(out_of_range0_carry__1),
        .out_of_range0_carry__1_0(out_of_range0_carry__1_0),
        .out_of_range0_carry__1_1(out_of_range0_carry__1_1),
        .out_of_range0_carry__1_2(out_of_range0_carry__1_2),
        .out_of_range0_carry__1_3(out_of_range0_carry__1_3),
        .out_of_range0_carry__1_4(out_of_range0_carry__1_4),
        .out_of_range0_carry__1_5(out_of_range0_carry__1_5),
        .out_of_range0_carry__1_6(out_of_range0_carry__1_6),
        .out_of_range0_carry__2(out_of_range0_carry__2),
        .out_of_range0_carry__2_0(out_of_range0_carry__2_0),
        .out_of_range0_carry__2_1(out_of_range0_carry__2_1),
        .out_of_range0_carry__2_2(out_of_range0_carry__2_2),
        .out_of_range0_carry__2_3(out_of_range0_carry__2_3),
        .out_of_range0_carry__2_4(out_of_range0_carry__2_4),
        .out_of_range0_carry__2_5(out_of_range0_carry__2_5),
        .out_of_range0_carry__2_6(out_of_range0_carry__2_6),
        .out_of_range_reg(out_of_range_reg),
        .p_3_out(p_3_out),
        .ram_dev_addr(ram_dev_addr),
        .ram_dev_data(ram_dev_data),
        .\reg_saved_reg[19][10] (\reg_saved_reg[19][10] ),
        .\reg_saved_reg[19][11] (\reg_saved_reg[19][11] ),
        .\reg_saved_reg[19][12] (\reg_saved_reg[19][12] ),
        .\reg_saved_reg[19][13] (\reg_saved_reg[19][13] ),
        .\reg_saved_reg[19][8] (\reg_saved_reg[19][8] ),
        .\reg_saved_reg[19][9] (\reg_saved_reg[19][9] ),
        .\resp_byte[2]_i_3_0 (\resp_byte[2]_i_3 ),
        .\resp_byte[4]_i_3_0 (\resp_byte[4]_i_3 ),
        .\resp_byte[4]_i_4_0 (\resp_byte[4]_i_4 ),
        .\resp_byte[5]_i_3_0 (\resp_byte[5]_i_3 ),
        .\resp_byte[7]_i_8_0 (\resp_byte[7]_i_8 ),
        .\resp_byte_reg[0] (\resp_byte_reg[0] ),
        .\resp_byte_reg[0]_i_2_0 (\resp_byte_reg[0]_i_2 ),
        .\resp_byte_reg[1] (\resp_byte_reg[1] ),
        .\resp_byte_reg[2] (\resp_byte_reg[2] ),
        .\resp_byte_reg[3] (\resp_byte_reg[3] ),
        .\resp_byte_reg[5] (\resp_byte_reg[5] ),
        .\resp_byte_reg[6] (\resp_byte_reg[6] ),
        .\resp_byte_reg[6]_i_6_0 (\resp_byte_reg[6]_i_6 ),
        .\resp_byte_reg[7] (\resp_byte_reg[7] ),
        .\resp_cur_reg[2] (\resp_cur_reg[2] ),
        .resp_no_crc(resp_no_crc),
        .resp_no_crc_next(resp_no_crc_next),
        .resp_no_crc_reg(resp_no_crc_reg),
        .save_current_cmd(save_current_cmd),
        .\saved_cmd_index_reg[5] (\saved_cmd_index_reg[5] ),
        .sd_cmd_o_sys(sd_cmd_o_sys),
        .sd_cmd_o_sys_reg_0(sd_cmd_o_sys_reg),
        .sd_cmd_t_sys(sd_cmd_t_sys),
        .send_no_resp(send_no_resp),
        .send_resp(send_resp),
        .\set_reg_clear_always[12].reg_clear_always_reg[12][5] (\set_reg_clear_always[12].reg_clear_always_reg[12][5] ),
        .\size_reg[15] (\size_reg[15] ),
        .\size_reg[23] (\size_reg[23] ),
        .\size_reg[31] (\size_reg[31] ),
        .\size_reg[7] (\size_reg[7] ),
        .\state[5]_i_6 (\state[5]_i_6 ),
        .\state_reg[4]_0 (\state_reg[4]_0 ),
        .update_2(update_2));
  adapter_axi_sd_0_0_dat_interface dat_unit
       (.CO(\counter_reg[11] ),
        .D({O,\counter_reg[0] }),
        .E(new_sd_clk),
        .\FSM_sequential_state[0]_i_14 (\FSM_sequential_state[0]_i_14 ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_2 (\FSM_sequential_state_reg[0]_1 ),
        .\FSM_sequential_state_reg[0]_3 (\FSM_sequential_state_reg[0]_2 ),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state_reg[1]_0 ),
        .\FSM_sequential_state_reg[1]_2 (\FSM_sequential_state_reg[1]_1 ),
        .\FSM_sequential_state_reg[1]_3 (\FSM_sequential_state_reg[1]_2 ),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state_reg[3] ),
        .\FSM_sequential_state_reg[3]_1 (\FSM_sequential_state_reg[3]_0 ),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .block_data_finished0_carry__0_0(block_data_finished0_carry__0),
        .\block_data_finished0_inferred__0/i__carry__0_0 (\block_data_finished0_inferred__0/i__carry__0 ),
        .\block_data_finished0_inferred__0/i__carry__0_1 (\block_data_finished0_inferred__0/i__carry__0_0 ),
        .\buf_write_reg[10]_0 (\buf_write_reg[10] ),
        .\buf_write_reg[11]_0 (\buf_write_reg[11] ),
        .\buf_write_reg[12]_0 (\buf_write_reg[12] ),
        .\buf_write_reg[13]_0 (\buf_write_reg[13] ),
        .\buf_write_reg[14]_0 (\buf_write_reg[14] ),
        .\buf_write_reg[15]_0 (\buf_write_reg[15] ),
        .\buf_write_reg[24]_0 (\buf_write_reg[24] ),
        .\buf_write_reg[25]_0 (\buf_write_reg[25] ),
        .\buf_write_reg[26]_0 (\buf_write_reg[26] ),
        .\buf_write_reg[27]_0 (\buf_write_reg[27] ),
        .\buf_write_reg[28]_0 (\buf_write_reg[28] ),
        .\buf_write_reg[29]_0 (\buf_write_reg[29] ),
        .\buf_write_reg[30]_0 (\buf_write_reg[30] ),
        .\buf_write_reg[31]_0 (\buf_write_reg[31] ),
        .\buf_write_reg[32]_0 (\buf_write_reg[32] ),
        .\buf_write_reg[33]_0 (\buf_write_reg[33] ),
        .\buf_write_reg[34]_0 (\buf_write_reg[34] ),
        .\buf_write_reg[35]_0 (\buf_write_reg[35] ),
        .\buf_write_reg[36]_0 (\buf_write_reg[36] ),
        .\buf_write_reg[37]_0 (\buf_write_reg[37] ),
        .\buf_write_reg[38]_0 (\buf_write_reg[38] ),
        .\buf_write_reg[39]_0 (\buf_write_reg[39] ),
        .\buf_write_reg[40]_0 (\buf_write_reg[40] ),
        .\buf_write_reg[41]_0 (\buf_write_reg[41] ),
        .\buf_write_reg[42]_0 (\buf_write_reg[42] ),
        .\buf_write_reg[43]_0 (\buf_write_reg[43] ),
        .\buf_write_reg[44]_0 (\buf_write_reg[44] ),
        .\buf_write_reg[45]_0 (\buf_write_reg[45] ),
        .\buf_write_reg[46]_0 (\buf_write_reg[46] ),
        .\buf_write_reg[47]_0 (\buf_write_reg[47] ),
        .\buf_write_reg[48]_0 (\buf_write_reg[48] ),
        .\buf_write_reg[49]_0 (\buf_write_reg[49] ),
        .\buf_write_reg[50]_0 (\buf_write_reg[50] ),
        .\buf_write_reg[51]_0 (\buf_write_reg[51] ),
        .\buf_write_reg[52]_0 (\buf_write_reg[52] ),
        .\buf_write_reg[53]_0 (\buf_write_reg[53] ),
        .\buf_write_reg[54]_0 (\buf_write_reg[54] ),
        .\buf_write_reg[55]_0 (\buf_write_reg[55] ),
        .\buf_write_reg[56]_0 (\buf_write_reg[56] ),
        .\buf_write_reg[57]_0 (\buf_write_reg[57] ),
        .\buf_write_reg[58]_0 (\buf_write_reg[58] ),
        .\buf_write_reg[59]_0 (\buf_write_reg[59] ),
        .\buf_write_reg[60]_0 (\buf_write_reg[60] ),
        .\buf_write_reg[61]_0 (\buf_write_reg[61] ),
        .\buf_write_reg[62]_0 (\buf_write_reg[62] ),
        .\buf_write_reg[8]_0 (\buf_write_reg[8] ),
        .\buf_write_reg[9]_0 (\buf_write_reg[9] ),
        .\crc[15]_i_4 (\crc[15]_i_4 ),
        .\crc_reg[0] ({\sd_dat_d_reg_n_0_[2][3] ,\sd_dat_d_reg_n_0_[2][2] ,\sd_dat_d_reg_n_0_[2][1] ,buf_read_next}),
        .\crc_reg[0]_0 (\crc_reg[0] ),
        .\crc_reg[10] (\crc_reg[10] ),
        .\crc_reg[10]_0 (\crc_reg[10]_0 ),
        .\crc_reg[15] (\crc_reg[15] ),
        .\crc_reg[15]_0 ({\sd_clk_div_d_reg_n_0_[3] ,p_0_in}),
        .\crc_reg[2] (\crc_reg[2] ),
        .\crc_reg[2]_0 (\crc_reg[2]_0 ),
        .dat_got_block(dat_got_block),
        .dat_got_word(dat_got_word),
        .dat_wrote_new_word(dat_wrote_new_word),
        .\dev_blocks_read_reg[31] (\dev_blocks_read_reg[31] ),
        .fifo_empty(fifo_empty),
        .read_block_end(read_block_end),
        .read_crc_err_reg_0(read_crc_err_reg),
        .read_crc_err_reg_1(E),
        .read_crc_err_reg_2(read_crc_err_reg_0),
        .\read_data_reg[31]_0 (\read_data_reg[31] ),
        .\sd_dat_o_sys[3]_i_3 (\sd_dat_o_sys[3]_i_3 ),
        .\sd_dat_o_sys_reg[0]_0 (\sd_dat_o_sys_reg[0] ),
        .\sd_dat_o_sys_reg[0]_1 (\sd_dat_o_sys_reg[0]_0 ),
        .\sd_dat_o_sys_reg[1]_0 (\sd_dat_o_sys_reg[1] ),
        .\sd_dat_o_sys_reg[3]_0 (sd_dat_o_sys),
        .\sd_dat_o_sys_reg[3]_1 (\sd_dat_o_sys_reg[3] ),
        .sd_dat_t_sys(sd_dat_t_sys));
  FDRE #(
    .INIT(1'b1)) 
    resetn_reg_reg_inv
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(resetn),
        .Q(resetn_reg_reg_inv_n_0),
        .R(1'b0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_clk_div_d_reg[0] 
       (.C(sd_clk),
        .CE(1'b1),
        .CLR(resetn_reg_reg_inv_n_0),
        .D(\sd_clk_div_d_reg[0]_0 ),
        .Q(D));
  FDRE \sd_clk_div_d_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D),
        .Q(\sd_clk_div_d_reg_n_0_[1] ),
        .R(\sd_dat_o_sys_reg[0] ));
  FDRE \sd_clk_div_d_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_clk_div_d_reg_n_0_[1] ),
        .Q(p_0_in),
        .R(\sd_dat_o_sys_reg[0] ));
  FDRE \sd_clk_div_d_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\sd_clk_div_d_reg_n_0_[3] ),
        .R(\sd_dat_o_sys_reg[0] ));
  FDPE \sd_cmd_d_reg[0] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_cmd_i),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(sd_cmd_d[0]));
  FDSE \sd_cmd_d_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_cmd_d[0]),
        .Q(sd_cmd_d[1]),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_cmd_d_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_cmd_d[1]),
        .Q(sd_cmd_i_sys),
        .S(\sd_dat_o_sys_reg[0] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sd_cmd_o_reg
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_cmd_o_sys),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(sd_cmd_o));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sd_cmd_t_reg
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_cmd_t_sys),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(sd_cmd_t));
  FDPE \sd_dat_d_reg[0][0] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0][3]_0 [0]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_d_reg[0]_4 [0]));
  FDPE \sd_dat_d_reg[0][1] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0][3]_0 [1]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_d_reg[0]_4 [1]));
  FDPE \sd_dat_d_reg[0][2] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0][3]_0 [2]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_d_reg[0]_4 [2]));
  FDPE \sd_dat_d_reg[0][3] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0][3]_0 [3]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_d_reg[0]_4 [3]));
  FDSE \sd_dat_d_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0]_4 [0]),
        .Q(\sd_dat_d_reg[1]_5 [0]),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0]_4 [1]),
        .Q(\sd_dat_d_reg[1]_5 [1]),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0]_4 [2]),
        .Q(\sd_dat_d_reg[1]_5 [2]),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0]_4 [3]),
        .Q(\sd_dat_d_reg[1]_5 [3]),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1]_5 [0]),
        .Q(buf_read_next),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1]_5 [1]),
        .Q(\sd_dat_d_reg_n_0_[2][1] ),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1]_5 [2]),
        .Q(\sd_dat_d_reg_n_0_[2][2] ),
        .S(\sd_dat_o_sys_reg[0] ));
  FDSE \sd_dat_d_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1]_5 [3]),
        .Q(\sd_dat_d_reg_n_0_[2][3] ),
        .S(\sd_dat_o_sys_reg[0] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[0] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_dat_o_sys[0]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_o_reg[3]_0 [0]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[1] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_dat_o_sys[1]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_o_reg[3]_0 [1]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[2] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_dat_o_sys[2]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_o_reg[3]_0 [2]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[3] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_dat_o_sys[3]),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(\sd_dat_o_reg[3]_0 [3]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_t_reg[3] 
       (.C(sd_clk),
        .CE(1'b1),
        .D(sd_dat_t_sys),
        .PRE(resetn_reg_reg_inv_n_0),
        .Q(sd_dat_t));
endmodule

(* ORIG_REF_NAME = "set_dat3_pullup" *) 
module adapter_axi_sd_0_0_set_dat3_pullup
   (sd_dat3_pullup_off,
    sd_dat3_pullup_off_reg_0,
    sd_dat3_pullup_off_reg_1,
    sd_dat3_pullup_off_reg_2,
    sd_dat3_pullup_off_reg_3,
    sd_dat3_pullup_off_reg_4,
    S_AXI_ACLK);
  output sd_dat3_pullup_off;
  input sd_dat3_pullup_off_reg_0;
  input sd_dat3_pullup_off_reg_1;
  input [1:0]sd_dat3_pullup_off_reg_2;
  input sd_dat3_pullup_off_reg_3;
  input sd_dat3_pullup_off_reg_4;
  input S_AXI_ACLK;

  wire S_AXI_ACLK;
  wire sd_dat3_pullup_off;
  wire sd_dat3_pullup_off_i_1_n_0;
  wire sd_dat3_pullup_off_reg_0;
  wire sd_dat3_pullup_off_reg_1;
  wire [1:0]sd_dat3_pullup_off_reg_2;
  wire sd_dat3_pullup_off_reg_3;
  wire sd_dat3_pullup_off_reg_4;

  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    sd_dat3_pullup_off_i_1
       (.I0(sd_dat3_pullup_off_reg_0),
        .I1(sd_dat3_pullup_off_reg_1),
        .I2(sd_dat3_pullup_off_reg_2[1]),
        .I3(sd_dat3_pullup_off_reg_2[0]),
        .I4(sd_dat3_pullup_off_reg_3),
        .I5(sd_dat3_pullup_off),
        .O(sd_dat3_pullup_off_i_1_n_0));
  FDRE sd_dat3_pullup_off_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_dat3_pullup_off_i_1_n_0),
        .Q(sd_dat3_pullup_off),
        .R(sd_dat3_pullup_off_reg_4));
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
