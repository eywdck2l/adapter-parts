// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Apr 28 13:53:45 2019
// Host        : db17480ec9ff running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/adapter/adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/adapter_axi_sd_0_0_sim_netlist.v
// Design      : adapter_axi_sd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adapter_axi_sd_0_0,axi_sd_v1_0_S_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_sd_v1_0_S_AXI,Vivado 2018.3" *) 
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
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CLK" *) input sd_clk;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CMD" *) inout sd_cmd;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd DAT" *) inout [3:0]sd_dat;
  output sd_dat3_pullup;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [4:0]S_AXI_AWADDR;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;

  wire \<const0> ;
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
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire interrupt;
  wire sd_clk;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sd_cmd;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire sd_dat3_pullup;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .interrupt(interrupt),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .sd_dat3_pullup(sd_dat3_pullup));
endmodule

(* ORIG_REF_NAME = "axi_sd_v1_0_S_AXI" *) 
module adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI
   (sd_dat3_pullup,
    interrupt,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    sd_cmd,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    sd_clk,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output sd_dat3_pullup;
  output interrupt;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  inout sd_cmd;
  input [31:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input sd_clk;
  input [2:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input [2:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
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
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire interrupt;
  wire [31:0]read_data;
  wire sd_clk;
  wire sd_cmd;
  wire sd_dat3_pullup;
  wire [2:0]sel0;
  wire slv_reg_rden__0;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_BREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(aw_en_reg_n_0),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(read_data[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  adapter_axi_sd_0_0_sd_if_controller nolabel_line341
       (.D(read_data),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_awaddr(axi_awaddr),
        .interrupt(interrupt),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .sd_dat3_pullup(sd_dat3_pullup),
        .sel0(sel0),
        .\state_reg[0] (S_AXI_AWREADY),
        .\state_reg[0]_0 (S_AXI_WREADY));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module adapter_axi_sd_0_0_line_crc
   (\axi_awaddr_reg[4] ,
    S_AXI_WVALID_0,
    D,
    \state_reg[3] ,
    \state_reg[0] ,
    \bits_left_reg[2] ,
    \bits_left_reg[1] ,
    \since_read_done_reg[4] ,
    sd_cmd_d_reg,
    crc_error_last0,
    axi_awaddr,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    Q,
    \crc_reg[0]_0 ,
    p_0_in,
    cmd_tx_ctrl,
    \data_buf_reg[47] ,
    write_crc,
    \data_buf[47]_i_2_0 ,
    \data_buf_reg[46] ,
    \data_buf_reg[45] ,
    \data_buf_reg[45]_0 ,
    \data_buf_reg[44] ,
    \data_buf_reg[43] ,
    \data_buf_reg[42] ,
    \data_buf_reg[42]_0 ,
    \data_buf_reg[41] ,
    \data_buf_reg[41]_0 ,
    read_ready_reg,
    write_pending,
    write_strb,
    write_pending_reg,
    data2,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    S_AXI_ACLK);
  output \axi_awaddr_reg[4] ;
  output S_AXI_WVALID_0;
  output [6:0]D;
  output \state_reg[3] ;
  output \state_reg[0] ;
  output \bits_left_reg[2] ;
  output \bits_left_reg[1] ;
  output \since_read_done_reg[4] ;
  output sd_cmd_d_reg;
  output crc_error_last0;
  input [2:0]axi_awaddr;
  input [0:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input [3:0]Q;
  input [1:0]\crc_reg[0]_0 ;
  input [0:0]p_0_in;
  input [0:0]cmd_tx_ctrl;
  input [1:0]\data_buf_reg[47] ;
  input write_crc;
  input [5:0]\data_buf[47]_i_2_0 ;
  input \data_buf_reg[46] ;
  input \data_buf_reg[45] ;
  input \data_buf_reg[45]_0 ;
  input \data_buf_reg[44] ;
  input \data_buf_reg[43] ;
  input \data_buf_reg[42] ;
  input \data_buf_reg[42]_0 ;
  input \data_buf_reg[41] ;
  input \data_buf_reg[41]_0 ;
  input [7:0]read_ready_reg;
  input write_pending;
  input write_strb;
  input [5:0]write_pending_reg;
  input [2:0]data2;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input S_AXI_ACLK;

  wire [6:0]D;
  wire [3:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_AWVALID;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire S_AXI_WVALID_0;
  wire [2:0]axi_awaddr;
  wire \axi_awaddr_reg[4] ;
  wire \bits_left_reg[1] ;
  wire \bits_left_reg[2] ;
  wire [0:0]cmd_tx_ctrl;
  wire [6:0]crc;
  wire [3:3]crc0;
  wire [0:0]crc2;
  wire \crc[6]_i_1_n_0 ;
  wire \crc[6]_i_2_n_0 ;
  wire crc_error_last0;
  wire crc_error_last_i_2_n_0;
  wire [1:0]\crc_reg[0]_0 ;
  wire [2:0]data2;
  wire \data_buf[43]_i_2_n_0 ;
  wire \data_buf[44]_i_2_n_0 ;
  wire \data_buf[45]_i_3_n_0 ;
  wire [5:0]\data_buf[47]_i_2_0 ;
  wire \data_buf[47]_i_2_n_0 ;
  wire \data_buf[47]_i_4_n_0 ;
  wire \data_buf[47]_i_5_n_0 ;
  wire \data_buf_reg[41] ;
  wire \data_buf_reg[41]_0 ;
  wire \data_buf_reg[42] ;
  wire \data_buf_reg[42]_0 ;
  wire \data_buf_reg[43] ;
  wire \data_buf_reg[44] ;
  wire \data_buf_reg[45] ;
  wire \data_buf_reg[45]_0 ;
  wire \data_buf_reg[46] ;
  wire [1:0]\data_buf_reg[47] ;
  wire [0:0]p_0_in;
  wire [7:0]read_ready_reg;
  wire sd_cmd_d_reg;
  wire \since_read_done_reg[4] ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[3] ;
  wire write_crc;
  wire write_pending;
  wire write_pending_i_5_n_0;
  wire [5:0]write_pending_reg;
  wire write_strb;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bits_left[3]_i_4 
       (.I0(Q[3]),
        .I1(\bits_left_reg[2] ),
        .I2(write_crc),
        .O(\state_reg[3] ));
  LUT3 #(
    .INIT(8'h04)) 
    \bits_left[7]_i_6 
       (.I0(p_0_in),
        .I1(\crc_reg[0]_0 [0]),
        .I2(\crc_reg[0]_0 [1]),
        .O(sd_cmd_d_reg));
  LUT5 #(
    .INIT(32'h6665666A)) 
    \crc[0]_i_1 
       (.I0(crc[6]),
        .I1(D[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(p_0_in),
        .O(crc2));
  LUT6 #(
    .INIT(64'hAAA955595556AAA6)) 
    \crc[3]_i_1 
       (.I0(crc[2]),
        .I1(p_0_in),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(D[6]),
        .I5(crc[6]),
        .O(crc0));
  LUT2 #(
    .INIT(4'hE)) 
    \crc[6]_i_1 
       (.I0(Q[0]),
        .I1(\axi_awaddr_reg[4] ),
        .O(\crc[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01E0)) 
    \crc[6]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\crc_reg[0]_0 [1]),
        .I3(\crc_reg[0]_0 [0]),
        .O(\crc[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    crc_error_last_i_1
       (.I0(crc[6]),
        .I1(crc[3]),
        .I2(crc[2]),
        .I3(crc[5]),
        .I4(crc_error_last_i_2_n_0),
        .O(crc_error_last0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    crc_error_last_i_2
       (.I0(crc[4]),
        .I1(crc[0]),
        .I2(p_0_in),
        .I3(crc[1]),
        .O(crc_error_last_i_2_n_0));
  FDRE \crc_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc2),
        .Q(crc[0]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc[0]),
        .Q(crc[1]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc[1]),
        .Q(crc[2]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc0),
        .Q(crc[3]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc[3]),
        .Q(crc[4]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc[4]),
        .Q(crc[5]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\crc[6]_i_2_n_0 ),
        .D(crc[5]),
        .Q(crc[6]),
        .R(\crc[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \data_buf[41]_i_1 
       (.I0(\state_reg[3] ),
        .I1(crc[0]),
        .I2(\data_buf_reg[41] ),
        .I3(\state_reg[0] ),
        .I4(\data_buf_reg[41]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \data_buf[42]_i_1 
       (.I0(\state_reg[3] ),
        .I1(crc[1]),
        .I2(\data_buf_reg[42] ),
        .I3(\state_reg[0] ),
        .I4(\data_buf_reg[42]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \data_buf[43]_i_1 
       (.I0(\data_buf_reg[45] ),
        .I1(\data_buf[47]_i_2_0 [0]),
        .I2(\data_buf[43]_i_2_n_0 ),
        .I3(\state_reg[0] ),
        .I4(\data_buf_reg[43] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \data_buf[43]_i_2 
       (.I0(Q[2]),
        .I1(\data_buf[47]_i_2_0 [1]),
        .I2(Q[1]),
        .I3(\data_buf[47]_i_2_0 [0]),
        .I4(\state_reg[3] ),
        .I5(crc[2]),
        .O(\data_buf[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \data_buf[44]_i_1 
       (.I0(\data_buf_reg[45] ),
        .I1(\data_buf[47]_i_2_0 [1]),
        .I2(\data_buf[44]_i_2_n_0 ),
        .I3(\state_reg[0] ),
        .I4(\data_buf_reg[44] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \data_buf[44]_i_2 
       (.I0(Q[2]),
        .I1(\data_buf[47]_i_2_0 [2]),
        .I2(Q[1]),
        .I3(\data_buf[47]_i_2_0 [1]),
        .I4(\state_reg[3] ),
        .I5(crc[3]),
        .O(\data_buf[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \data_buf[45]_i_1 
       (.I0(\data_buf_reg[45] ),
        .I1(\data_buf[47]_i_2_0 [2]),
        .I2(\data_buf[45]_i_3_n_0 ),
        .I3(\state_reg[0] ),
        .I4(\data_buf_reg[45]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \data_buf[45]_i_3 
       (.I0(Q[2]),
        .I1(\data_buf[47]_i_2_0 [3]),
        .I2(Q[1]),
        .I3(\data_buf[47]_i_2_0 [2]),
        .I4(\state_reg[3] ),
        .I5(crc[4]),
        .O(\data_buf[45]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF400F400F400)) 
    \data_buf[46]_i_1 
       (.I0(\state_reg[3] ),
        .I1(crc[5]),
        .I2(\data_buf_reg[46] ),
        .I3(\state_reg[0] ),
        .I4(cmd_tx_ctrl),
        .I5(\data_buf_reg[47] [0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF4FFF400F400F400)) 
    \data_buf[47]_i_1 
       (.I0(\state_reg[3] ),
        .I1(crc[6]),
        .I2(\data_buf[47]_i_2_n_0 ),
        .I3(\state_reg[0] ),
        .I4(cmd_tx_ctrl),
        .I5(\data_buf_reg[47] [1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \data_buf[47]_i_2 
       (.I0(\data_buf[47]_i_4_n_0 ),
        .I1(\bits_left_reg[2] ),
        .I2(write_crc),
        .I3(Q[3]),
        .I4(\data_buf[47]_i_2_0 [4]),
        .O(\data_buf[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBBBF)) 
    \data_buf[47]_i_3 
       (.I0(\since_read_done_reg[4] ),
        .I1(Q[0]),
        .I2(write_pending),
        .I3(write_strb),
        .I4(sd_cmd_d_reg),
        .I5(\data_buf[47]_i_5_n_0 ),
        .O(\state_reg[0] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_buf[47]_i_4 
       (.I0(\data_buf[47]_i_2_0 [5]),
        .I1(Q[2]),
        .I2(\data_buf[47]_i_2_0 [4]),
        .I3(Q[1]),
        .O(\data_buf[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA800000000)) 
    \data_buf[47]_i_5 
       (.I0(\bits_left_reg[1] ),
        .I1(read_ready_reg[6]),
        .I2(read_ready_reg[7]),
        .I3(read_ready_reg[5]),
        .I4(read_ready_reg[2]),
        .I5(Q[3]),
        .O(\data_buf[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    interrupt_i_1
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(S_AXI_WVALID_0),
        .I4(S_AXI_WDATA),
        .I5(S_AXI_ARESETN),
        .O(\axi_awaddr_reg[4] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    interrupt_i_3
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[0]_1 ),
        .O(S_AXI_WVALID_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    io_buf_cmd_i_3
       (.I0(read_ready_reg[2]),
        .I1(read_ready_reg[5]),
        .I2(read_ready_reg[7]),
        .I3(read_ready_reg[6]),
        .I4(\bits_left_reg[1] ),
        .O(\bits_left_reg[2] ));
  LUT4 #(
    .INIT(16'h0004)) 
    io_buf_cmd_i_4
       (.I0(read_ready_reg[1]),
        .I1(read_ready_reg[0]),
        .I2(read_ready_reg[4]),
        .I3(read_ready_reg[3]),
        .O(\bits_left_reg[1] ));
  LUT4 #(
    .INIT(16'h0002)) 
    write_pending_i_3
       (.I0(write_pending_i_5_n_0),
        .I1(write_pending_reg[4]),
        .I2(write_pending_reg[5]),
        .I3(write_pending_reg[3]),
        .O(\since_read_done_reg[4] ));
  LUT6 #(
    .INIT(64'h22B2B2BB22B222B2)) 
    write_pending_i_5
       (.I0(data2[2]),
        .I1(write_pending_reg[2]),
        .I2(data2[1]),
        .I3(write_pending_reg[1]),
        .I4(write_pending_reg[0]),
        .I5(data2[0]),
        .O(write_pending_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "sd_cmd_if" *) 
module adapter_axi_sd_0_0_sd_cmd_if
   (\axi_awaddr_reg[4] ,
    crc_error_last,
    S_AXI_WVALID_0,
    D,
    \state_reg[0]_0 ,
    E,
    interrupt_next,
    set_write_no_cmd_index,
    \data_buf_reg[47]_0 ,
    \axi_awaddr_reg[3] ,
    \FSM_sequential_state_reg[0] ,
    write_strb_next,
    read_ready_reg_0,
    sd_cmd,
    S_AXI_ACLK,
    write_strb,
    axi_awaddr,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    data2,
    Q,
    \FSM_sequential_state_reg[0]_0 ,
    \state_reg[1]_0 ,
    cmd_tx_ctrl,
    \data_buf_reg[47]_1 ,
    \data_buf_reg[45]_0 ,
    \write_byte_cnt_reg[0] ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    sd_clk);
  output \axi_awaddr_reg[4] ;
  output crc_error_last;
  output S_AXI_WVALID_0;
  output [1:0]D;
  output [1:0]\state_reg[0]_0 ;
  output [0:0]E;
  output interrupt_next;
  output set_write_no_cmd_index;
  output [47:0]\data_buf_reg[47]_0 ;
  output [0:0]\axi_awaddr_reg[3] ;
  output [0:0]\FSM_sequential_state_reg[0] ;
  output write_strb_next;
  output [0:0]read_ready_reg_0;
  inout sd_cmd;
  input S_AXI_ACLK;
  input write_strb;
  input [2:0]axi_awaddr;
  input [0:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input [7:0]data2;
  input [1:0]Q;
  input \FSM_sequential_state_reg[0]_0 ;
  input [1:0]\state_reg[1]_0 ;
  input [1:0]cmd_tx_ctrl;
  input [31:0]\data_buf_reg[47]_1 ;
  input [5:0]\data_buf_reg[45]_0 ;
  input \write_byte_cnt_reg[0] ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input sd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire I0;
  wire [1:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_AWVALID;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire S_AXI_WVALID_0;
  wire T0;
  wire [2:0]axi_awaddr;
  wire [0:0]\axi_awaddr_reg[3] ;
  wire \axi_awaddr_reg[4] ;
  wire [4:0]bits_left;
  wire \bits_left[3]_i_2_n_0 ;
  wire \bits_left[3]_i_3_n_0 ;
  wire \bits_left[4]_i_2_n_0 ;
  wire \bits_left[5]_i_2_n_0 ;
  wire \bits_left[5]_i_3_n_0 ;
  wire \bits_left[5]_i_4_n_0 ;
  wire \bits_left[6]_i_2_n_0 ;
  wire \bits_left[7]_i_2_n_0 ;
  wire \bits_left[7]_i_3_n_0 ;
  wire \bits_left[7]_i_4_n_0 ;
  wire \bits_left[7]_i_5_n_0 ;
  wire [7:0]bits_left_next;
  wire \bits_left_reg_n_0_[5] ;
  wire \bits_left_reg_n_0_[6] ;
  wire \bits_left_reg_n_0_[7] ;
  wire [1:0]cmd_tx_ctrl;
  wire crc_error_last;
  wire crc_error_last0;
  wire [7:0]data2;
  wire \data_buf[0]_i_1_n_0 ;
  wire \data_buf[10]_i_1_n_0 ;
  wire \data_buf[11]_i_1_n_0 ;
  wire \data_buf[12]_i_1_n_0 ;
  wire \data_buf[13]_i_1_n_0 ;
  wire \data_buf[14]_i_1_n_0 ;
  wire \data_buf[15]_i_1_n_0 ;
  wire \data_buf[16]_i_1_n_0 ;
  wire \data_buf[17]_i_1_n_0 ;
  wire \data_buf[18]_i_1_n_0 ;
  wire \data_buf[19]_i_1_n_0 ;
  wire \data_buf[1]_i_1_n_0 ;
  wire \data_buf[20]_i_1_n_0 ;
  wire \data_buf[21]_i_1_n_0 ;
  wire \data_buf[22]_i_1_n_0 ;
  wire \data_buf[23]_i_1_n_0 ;
  wire \data_buf[24]_i_1_n_0 ;
  wire \data_buf[25]_i_1_n_0 ;
  wire \data_buf[26]_i_1_n_0 ;
  wire \data_buf[27]_i_1_n_0 ;
  wire \data_buf[28]_i_1_n_0 ;
  wire \data_buf[29]_i_1_n_0 ;
  wire \data_buf[2]_i_1_n_0 ;
  wire \data_buf[30]_i_1_n_0 ;
  wire \data_buf[31]_i_1_n_0 ;
  wire \data_buf[32]_i_1_n_0 ;
  wire \data_buf[33]_i_1_n_0 ;
  wire \data_buf[34]_i_1_n_0 ;
  wire \data_buf[35]_i_1_n_0 ;
  wire \data_buf[36]_i_1_n_0 ;
  wire \data_buf[37]_i_1_n_0 ;
  wire \data_buf[38]_i_1_n_0 ;
  wire \data_buf[39]_i_1_n_0 ;
  wire \data_buf[39]_i_2_n_0 ;
  wire \data_buf[3]_i_1_n_0 ;
  wire \data_buf[40]_i_1_n_0 ;
  wire \data_buf[40]_i_2_n_0 ;
  wire \data_buf[41]_i_2_n_0 ;
  wire \data_buf[41]_i_3_n_0 ;
  wire \data_buf[42]_i_2_n_0 ;
  wire \data_buf[42]_i_3_n_0 ;
  wire \data_buf[43]_i_3_n_0 ;
  wire \data_buf[44]_i_3_n_0 ;
  wire \data_buf[45]_i_2_n_0 ;
  wire \data_buf[45]_i_4_n_0 ;
  wire \data_buf[46]_i_2_n_0 ;
  wire \data_buf[4]_i_1_n_0 ;
  wire \data_buf[5]_i_1_n_0 ;
  wire \data_buf[6]_i_1_n_0 ;
  wire \data_buf[7]_i_1_n_0 ;
  wire \data_buf[8]_i_1_n_0 ;
  wire \data_buf[9]_i_1_n_0 ;
  wire [5:0]\data_buf_reg[45]_0 ;
  wire [47:0]\data_buf_reg[47]_0 ;
  wire [31:0]\data_buf_reg[47]_1 ;
  wire interrupt_i_4_n_0;
  wire interrupt_next;
  wire line_crc_n_10;
  wire line_crc_n_11;
  wire line_crc_n_12;
  wire line_crc_n_13;
  wire line_crc_n_14;
  wire line_crc_n_2;
  wire line_crc_n_3;
  wire line_crc_n_4;
  wire line_crc_n_5;
  wire line_crc_n_6;
  wire line_crc_n_7;
  wire line_crc_n_8;
  wire line_crc_n_9;
  wire out_en;
  wire [0:0]p_0_in;
  wire read_ready_next;
  wire [0:0]read_ready_reg_0;
  wire ready_new;
  wire sd_clk;
  wire [1:0]sd_clk_d;
  wire sd_cmd;
  wire sd_cmd_i;
  wire set_write_no_cmd_index;
  wire [5:0]since_read_done;
  wire \since_read_done[0]_i_1_n_0 ;
  wire \since_read_done[1]_i_1_n_0 ;
  wire \since_read_done[2]_i_1_n_0 ;
  wire \since_read_done[3]_i_1_n_0 ;
  wire \since_read_done[4]_i_1_n_0 ;
  wire \since_read_done[5]_i_1_n_0 ;
  wire \since_read_done[5]_i_2_n_0 ;
  wire \since_read_done[5]_i_3_n_0 ;
  wire \since_read_done[5]_i_5_n_0 ;
  wire since_read_done_0;
  wire state;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire [2:0]state__0;
  wire [2:0]state_next__0;
  wire [1:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [1:0]\state_reg[1]_0 ;
  wire to_next_state;
  wire \write_byte_cnt_reg[0] ;
  wire write_crc;
  wire write_crc_i_1_n_0;
  wire write_crc_i_2_n_0;
  wire write_data_ack;
  wire write_data_ack_i_1_n_0;
  wire write_pending;
  wire write_pending_i_4_n_0;
  wire write_pending_next;
  wire write_strb;
  wire write_strb_next;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h3505)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(Q[1]),
        .I3(interrupt_i_4_n_0),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(interrupt_i_4_n_0),
        .I1(cmd_tx_ctrl[1]),
        .I2(write_data_ack),
        .I3(Q[1]),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFAC0FA00)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(interrupt_i_4_n_0),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFC005C)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(ready_new),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h77777077)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\since_read_done[5]_i_5_n_0 ),
        .I1(since_read_done[5]),
        .I2(sd_clk_d[1]),
        .I3(sd_clk_d[0]),
        .I4(p_0_in),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAFE)) 
    \bits_left[0]_i_1 
       (.I0(\bits_left[5]_i_4_n_0 ),
        .I1(out_en),
        .I2(state__0[1]),
        .I3(bits_left[0]),
        .I4(state__0[2]),
        .O(bits_left_next[0]));
  LUT5 #(
    .INIT(32'hFFFFF844)) 
    \bits_left[1]_i_1 
       (.I0(bits_left[0]),
        .I1(\bits_left[7]_i_3_n_0 ),
        .I2(state__0[2]),
        .I3(bits_left[1]),
        .I4(\bits_left[5]_i_4_n_0 ),
        .O(bits_left_next[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE01010)) 
    \bits_left[2]_i_1 
       (.I0(bits_left[0]),
        .I1(bits_left[1]),
        .I2(\bits_left[7]_i_3_n_0 ),
        .I3(state__0[2]),
        .I4(bits_left[2]),
        .I5(\bits_left[5]_i_4_n_0 ),
        .O(bits_left_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFF90FFFFFFFF)) 
    \bits_left[3]_i_1 
       (.I0(bits_left[3]),
        .I1(\bits_left[3]_i_2_n_0 ),
        .I2(\bits_left[7]_i_3_n_0 ),
        .I3(\bits_left[5]_i_4_n_0 ),
        .I4(\bits_left[3]_i_3_n_0 ),
        .I5(line_crc_n_9),
        .O(bits_left_next[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bits_left[3]_i_2 
       (.I0(bits_left[2]),
        .I1(bits_left[0]),
        .I2(bits_left[1]),
        .O(\bits_left[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888888888888)) 
    \bits_left[3]_i_3 
       (.I0(bits_left[3]),
        .I1(state__0[2]),
        .I2(write_strb),
        .I3(write_pending),
        .I4(state__0[0]),
        .I5(data2[3]),
        .O(\bits_left[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \bits_left[4]_i_1 
       (.I0(\bits_left[4]_i_2_n_0 ),
        .I1(\bits_left[7]_i_3_n_0 ),
        .I2(data2[4]),
        .I3(\bits_left[6]_i_2_n_0 ),
        .I4(state__0[2]),
        .I5(bits_left[4]),
        .O(bits_left_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \bits_left[4]_i_2 
       (.I0(bits_left[4]),
        .I1(bits_left[2]),
        .I2(bits_left[0]),
        .I3(bits_left[1]),
        .I4(bits_left[3]),
        .O(\bits_left[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \bits_left[5]_i_1 
       (.I0(\bits_left_reg_n_0_[5] ),
        .I1(\bits_left[5]_i_2_n_0 ),
        .I2(\bits_left[7]_i_3_n_0 ),
        .I3(\bits_left[5]_i_3_n_0 ),
        .I4(\bits_left[5]_i_4_n_0 ),
        .O(bits_left_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bits_left[5]_i_2 
       (.I0(bits_left[4]),
        .I1(bits_left[3]),
        .I2(bits_left[1]),
        .I3(bits_left[0]),
        .I4(bits_left[2]),
        .O(\bits_left[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888888888888)) 
    \bits_left[5]_i_3 
       (.I0(\bits_left_reg_n_0_[5] ),
        .I1(state__0[2]),
        .I2(write_strb),
        .I3(write_pending),
        .I4(state__0[0]),
        .I5(data2[5]),
        .O(\bits_left[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bits_left[5]_i_4 
       (.I0(sd_clk_d[1]),
        .I1(sd_clk_d[0]),
        .I2(p_0_in),
        .I3(state__0[0]),
        .O(\bits_left[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F488F888F8)) 
    \bits_left[6]_i_1 
       (.I0(\bits_left[7]_i_2_n_0 ),
        .I1(\bits_left[7]_i_3_n_0 ),
        .I2(data2[6]),
        .I3(\bits_left[6]_i_2_n_0 ),
        .I4(state__0[2]),
        .I5(\bits_left_reg_n_0_[6] ),
        .O(bits_left_next[6]));
  LUT6 #(
    .INIT(64'h11111F11FFFFFFFF)) 
    \bits_left[6]_i_2 
       (.I0(write_pending),
        .I1(write_strb),
        .I2(p_0_in),
        .I3(sd_clk_d[0]),
        .I4(sd_clk_d[1]),
        .I5(state__0[0]),
        .O(\bits_left[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB0FF40FF40)) 
    \bits_left[7]_i_1 
       (.I0(\bits_left_reg_n_0_[6] ),
        .I1(\bits_left[7]_i_2_n_0 ),
        .I2(\bits_left[7]_i_3_n_0 ),
        .I3(\bits_left[7]_i_4_n_0 ),
        .I4(state__0[2]),
        .I5(\bits_left_reg_n_0_[7] ),
        .O(bits_left_next[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bits_left[7]_i_2 
       (.I0(\bits_left_reg_n_0_[5] ),
        .I1(bits_left[2]),
        .I2(bits_left[0]),
        .I3(bits_left[1]),
        .I4(bits_left[3]),
        .I5(bits_left[4]),
        .O(\bits_left[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    \bits_left[7]_i_3 
       (.I0(out_en),
        .I1(\bits_left[7]_i_5_n_0 ),
        .I2(line_crc_n_12),
        .I3(state__0[1]),
        .O(\bits_left[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08080800)) 
    \bits_left[7]_i_4 
       (.I0(data2[7]),
        .I1(state__0[0]),
        .I2(line_crc_n_14),
        .I3(write_strb),
        .I4(write_pending),
        .O(\bits_left[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bits_left[7]_i_5 
       (.I0(\bits_left_reg_n_0_[6] ),
        .I1(\bits_left_reg_n_0_[7] ),
        .I2(\bits_left_reg_n_0_[5] ),
        .I3(bits_left[2]),
        .O(\bits_left[7]_i_5_n_0 ));
  FDRE \bits_left_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[0]),
        .Q(bits_left[0]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[1]),
        .Q(bits_left[1]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[2]),
        .Q(bits_left[2]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[3]),
        .Q(bits_left[3]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[4]),
        .Q(bits_left[4]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[5]),
        .Q(\bits_left_reg_n_0_[5] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[6]),
        .Q(\bits_left_reg_n_0_[6] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \bits_left_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(bits_left_next[7]),
        .Q(\bits_left_reg_n_0_[7] ),
        .R(\axi_awaddr_reg[4] ));
  FDSE crc_error_last_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(crc_error_last0),
        .Q(crc_error_last),
        .S(\axi_awaddr_reg[4] ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[0]_i_1 
       (.I0(line_crc_n_10),
        .I1(p_0_in),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [0]),
        .O(\data_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[10]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [9]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [10]),
        .O(\data_buf[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[11]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [10]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [11]),
        .O(\data_buf[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[12]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [11]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [12]),
        .O(\data_buf[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[13]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [12]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [13]),
        .O(\data_buf[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[14]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [13]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [14]),
        .O(\data_buf[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[15]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [14]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [15]),
        .O(\data_buf[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \data_buf[16]_i_1 
       (.I0(\data_buf_reg[47]_0 [16]),
        .I1(state__0[2]),
        .I2(\data_buf_reg[47]_0 [15]),
        .I3(state__0[1]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [0]),
        .O(\data_buf[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[17]_i_1 
       (.I0(\data_buf_reg[47]_0 [17]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [16]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [1]),
        .O(\data_buf[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[18]_i_1 
       (.I0(\data_buf_reg[47]_0 [18]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [17]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [2]),
        .O(\data_buf[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[19]_i_1 
       (.I0(\data_buf_reg[47]_0 [19]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [18]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [3]),
        .O(\data_buf[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[1]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [0]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [1]),
        .O(\data_buf[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[20]_i_1 
       (.I0(\data_buf_reg[47]_0 [20]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [19]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [4]),
        .O(\data_buf[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[21]_i_1 
       (.I0(\data_buf_reg[47]_0 [21]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [20]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [5]),
        .O(\data_buf[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[22]_i_1 
       (.I0(\data_buf_reg[47]_0 [22]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [21]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [6]),
        .O(\data_buf[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[23]_i_1 
       (.I0(\data_buf_reg[47]_0 [23]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [22]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [7]),
        .O(\data_buf[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[24]_i_1 
       (.I0(\data_buf_reg[47]_0 [24]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [23]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [8]),
        .O(\data_buf[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[25]_i_1 
       (.I0(\data_buf_reg[47]_0 [25]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [24]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [9]),
        .O(\data_buf[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[26]_i_1 
       (.I0(\data_buf_reg[47]_0 [26]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [25]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [10]),
        .O(\data_buf[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[27]_i_1 
       (.I0(\data_buf_reg[47]_0 [27]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [26]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [11]),
        .O(\data_buf[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[28]_i_1 
       (.I0(\data_buf_reg[47]_0 [28]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [27]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [12]),
        .O(\data_buf[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[29]_i_1 
       (.I0(\data_buf_reg[47]_0 [29]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [28]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [13]),
        .O(\data_buf[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[2]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [1]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [2]),
        .O(\data_buf[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[30]_i_1 
       (.I0(\data_buf_reg[47]_0 [30]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [29]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [14]),
        .O(\data_buf[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[31]_i_1 
       (.I0(\data_buf_reg[47]_0 [31]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [30]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [15]),
        .O(\data_buf[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[32]_i_1 
       (.I0(\data_buf_reg[47]_0 [32]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [31]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [16]),
        .O(\data_buf[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[33]_i_1 
       (.I0(\data_buf_reg[47]_0 [33]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [32]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [17]),
        .O(\data_buf[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[34]_i_1 
       (.I0(\data_buf_reg[47]_0 [34]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [33]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [18]),
        .O(\data_buf[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[35]_i_1 
       (.I0(\data_buf_reg[47]_0 [35]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [34]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [19]),
        .O(\data_buf[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[36]_i_1 
       (.I0(\data_buf_reg[47]_0 [36]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [35]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [20]),
        .O(\data_buf[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[37]_i_1 
       (.I0(\data_buf_reg[47]_0 [37]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [36]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [21]),
        .O(\data_buf[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[38]_i_1 
       (.I0(\data_buf_reg[47]_0 [38]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [37]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [22]),
        .O(\data_buf[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \data_buf[39]_i_1 
       (.I0(\data_buf_reg[47]_0 [39]),
        .I1(state__0[2]),
        .I2(\data_buf[39]_i_2_n_0 ),
        .I3(\data_buf_reg[47]_0 [38]),
        .I4(line_crc_n_10),
        .I5(\data_buf_reg[47]_1 [23]),
        .O(\data_buf[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_buf[39]_i_2 
       (.I0(\data_buf[45]_i_2_n_0 ),
        .I1(state__0[1]),
        .O(\data_buf[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[3]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [2]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [3]),
        .O(\data_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F707F7F7F707070)) 
    \data_buf[40]_i_1 
       (.I0(line_crc_n_9),
        .I1(\data_buf[40]_i_2_n_0 ),
        .I2(line_crc_n_10),
        .I3(\data_buf_reg[47]_1 [24]),
        .I4(cmd_tx_ctrl[1]),
        .I5(\data_buf_reg[45]_0 [0]),
        .O(\data_buf[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00077777)) 
    \data_buf[40]_i_2 
       (.I0(\data_buf_reg[47]_0 [40]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(out_en),
        .I4(\data_buf_reg[47]_0 [39]),
        .O(\data_buf[40]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF8FF8888)) 
    \data_buf[41]_i_2 
       (.I0(state__0[2]),
        .I1(\data_buf_reg[47]_0 [41]),
        .I2(state__0[1]),
        .I3(\data_buf[45]_i_2_n_0 ),
        .I4(\data_buf_reg[47]_0 [40]),
        .O(\data_buf[41]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_buf[41]_i_3 
       (.I0(\data_buf_reg[47]_1 [25]),
        .I1(cmd_tx_ctrl[1]),
        .I2(\data_buf_reg[45]_0 [1]),
        .O(\data_buf[41]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8FF8888)) 
    \data_buf[42]_i_2 
       (.I0(state__0[2]),
        .I1(\data_buf_reg[47]_0 [42]),
        .I2(state__0[1]),
        .I3(\data_buf[45]_i_2_n_0 ),
        .I4(\data_buf_reg[47]_0 [41]),
        .O(\data_buf[42]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_buf[42]_i_3 
       (.I0(\data_buf_reg[47]_1 [26]),
        .I1(cmd_tx_ctrl[1]),
        .I2(\data_buf_reg[45]_0 [2]),
        .O(\data_buf[42]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_buf[43]_i_3 
       (.I0(\data_buf_reg[47]_1 [27]),
        .I1(cmd_tx_ctrl[1]),
        .I2(\data_buf_reg[45]_0 [3]),
        .O(\data_buf[43]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_buf[44]_i_3 
       (.I0(\data_buf_reg[47]_1 [28]),
        .I1(cmd_tx_ctrl[1]),
        .I2(\data_buf_reg[45]_0 [4]),
        .O(\data_buf[44]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \data_buf[45]_i_2 
       (.I0(line_crc_n_11),
        .I1(write_crc),
        .I2(out_en),
        .O(\data_buf[45]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_buf[45]_i_4 
       (.I0(\data_buf_reg[47]_1 [29]),
        .I1(cmd_tx_ctrl[1]),
        .I2(\data_buf_reg[45]_0 [5]),
        .O(\data_buf[45]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFC0C0)) 
    \data_buf[46]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(\data_buf_reg[47]_0 [46]),
        .I3(\data_buf[45]_i_2_n_0 ),
        .I4(\data_buf_reg[47]_0 [45]),
        .O(\data_buf[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[4]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [3]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [4]),
        .O(\data_buf[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[5]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [4]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [5]),
        .O(\data_buf[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[6]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [5]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [6]),
        .O(\data_buf[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[7]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [6]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [7]),
        .O(\data_buf[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[8]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [7]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [8]),
        .O(\data_buf[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \data_buf[9]_i_1 
       (.I0(line_crc_n_10),
        .I1(state__0[1]),
        .I2(\data_buf_reg[47]_0 [8]),
        .I3(state__0[2]),
        .I4(\data_buf_reg[47]_0 [9]),
        .O(\data_buf[9]_i_1_n_0 ));
  FDRE \data_buf_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[0]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [0]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[10]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [10]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[11]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [11]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[12]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [12]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[13]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [13]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[14]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [14]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[15]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [15]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[16]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [16]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[17]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [17]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[18]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [18]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[19]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [19]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[1]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [1]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[20]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [20]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[21]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [21]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[22]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [22]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[23]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [23]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[24]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [24]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[25]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [25]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[26]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [26]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[27]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [27]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[28]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [28]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[29]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [29]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[2]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [2]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[30]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [30]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[31]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [31]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[32]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [32]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[33]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [33]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[34]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [34]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[35]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [35]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[36]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [36]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[37]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [37]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[38]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [38]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[39]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [39]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[3]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [3]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[40]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [40]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_8),
        .Q(\data_buf_reg[47]_0 [41]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_7),
        .Q(\data_buf_reg[47]_0 [42]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_6),
        .Q(\data_buf_reg[47]_0 [43]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_5),
        .Q(\data_buf_reg[47]_0 [44]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_4),
        .Q(\data_buf_reg[47]_0 [45]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_3),
        .Q(\data_buf_reg[47]_0 [46]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(line_crc_n_2),
        .Q(\data_buf_reg[47]_0 [47]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[4]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [4]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[5]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [5]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[6]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [6]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[7]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [7]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[8]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [8]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \data_buf_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(\data_buf[9]_i_1_n_0 ),
        .Q(\data_buf_reg[47]_0 [9]),
        .R(\axi_awaddr_reg[4] ));
  LUT6 #(
    .INIT(64'h800080FF80008000)) 
    interrupt_i_2
       (.I0(interrupt_i_4_n_0),
        .I1(write_data_ack),
        .I2(cmd_tx_ctrl[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(ready_new),
        .O(interrupt_next));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    interrupt_i_4
       (.I0(bits_left_next[7]),
        .I1(bits_left_next[5]),
        .I2(bits_left_next[6]),
        .O(interrupt_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    io_buf_cmd
       (.I(I0),
        .IO(sd_cmd),
        .O(sd_cmd_i),
        .T(T0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    io_buf_cmd_i_1
       (.I0(\data_buf_reg[47]_0 [47]),
        .I1(line_crc_n_11),
        .I2(out_en),
        .I3(write_crc),
        .O(I0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    io_buf_cmd_i_2
       (.I0(out_en),
        .O(T0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \last_received[47]_i_1 
       (.I0(ready_new),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(read_ready_reg_0));
  adapter_axi_sd_0_0_line_crc line_crc
       (.D({line_crc_n_2,line_crc_n_3,line_crc_n_4,line_crc_n_5,line_crc_n_6,line_crc_n_7,line_crc_n_8}),
        .Q({out_en,state__0}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_AXI_WVALID_0(S_AXI_WVALID_0),
        .axi_awaddr(axi_awaddr),
        .\axi_awaddr_reg[4] (\axi_awaddr_reg[4] ),
        .\bits_left_reg[1] (line_crc_n_12),
        .\bits_left_reg[2] (line_crc_n_11),
        .cmd_tx_ctrl(cmd_tx_ctrl[1]),
        .crc_error_last0(crc_error_last0),
        .\crc_reg[0]_0 (sd_clk_d),
        .data2(data2[2:0]),
        .\data_buf[47]_i_2_0 (\data_buf_reg[47]_0 [47:42]),
        .\data_buf_reg[41] (\data_buf[41]_i_2_n_0 ),
        .\data_buf_reg[41]_0 (\data_buf[41]_i_3_n_0 ),
        .\data_buf_reg[42] (\data_buf[42]_i_2_n_0 ),
        .\data_buf_reg[42]_0 (\data_buf[42]_i_3_n_0 ),
        .\data_buf_reg[43] (\data_buf[43]_i_3_n_0 ),
        .\data_buf_reg[44] (\data_buf[44]_i_3_n_0 ),
        .\data_buf_reg[45] (\data_buf[45]_i_2_n_0 ),
        .\data_buf_reg[45]_0 (\data_buf[45]_i_4_n_0 ),
        .\data_buf_reg[46] (\data_buf[46]_i_2_n_0 ),
        .\data_buf_reg[47] (\data_buf_reg[47]_1 [31:30]),
        .p_0_in(p_0_in),
        .read_ready_reg({\bits_left_reg_n_0_[7] ,\bits_left_reg_n_0_[6] ,\bits_left_reg_n_0_[5] ,bits_left}),
        .sd_cmd_d_reg(line_crc_n_14),
        .\since_read_done_reg[4] (line_crc_n_13),
        .\state_reg[0] (line_crc_n_10),
        .\state_reg[0]_0 (\state_reg[0]_1 ),
        .\state_reg[0]_1 (\state_reg[0]_2 ),
        .\state_reg[3] (line_crc_n_9),
        .write_crc(write_crc),
        .write_pending(write_pending),
        .write_pending_reg(since_read_done),
        .write_strb(write_strb));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    read_ready_i_1
       (.I0(state__0[1]),
        .I1(line_crc_n_11),
        .O(read_ready_next));
  FDRE read_ready_reg
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(read_ready_next),
        .Q(ready_new),
        .R(\axi_awaddr_reg[4] ));
  FDSE \sd_clk_d_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_clk),
        .Q(sd_clk_d[0]),
        .S(\axi_awaddr_reg[4] ));
  FDSE \sd_clk_d_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_clk_d[0]),
        .Q(sd_clk_d[1]),
        .S(\axi_awaddr_reg[4] ));
  FDSE sd_cmd_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sd_cmd_i),
        .Q(p_0_in),
        .S(\axi_awaddr_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \since_read_done[0]_i_1 
       (.I0(since_read_done_0),
        .I1(since_read_done[0]),
        .O(\since_read_done[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \since_read_done[1]_i_1 
       (.I0(since_read_done[1]),
        .I1(since_read_done[0]),
        .I2(since_read_done_0),
        .O(\since_read_done[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF78)) 
    \since_read_done[2]_i_1 
       (.I0(since_read_done[1]),
        .I1(since_read_done[0]),
        .I2(since_read_done[2]),
        .I3(since_read_done_0),
        .O(\since_read_done[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7F80)) 
    \since_read_done[3]_i_1 
       (.I0(since_read_done[2]),
        .I1(since_read_done[0]),
        .I2(since_read_done[1]),
        .I3(since_read_done[3]),
        .I4(since_read_done_0),
        .O(\since_read_done[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \since_read_done[4]_i_1 
       (.I0(since_read_done[4]),
        .I1(since_read_done[3]),
        .I2(since_read_done[1]),
        .I3(since_read_done[0]),
        .I4(since_read_done[2]),
        .I5(since_read_done_0),
        .O(\since_read_done[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \since_read_done[5]_i_1 
       (.I0(\axi_awaddr_reg[4] ),
        .I1(state__0[0]),
        .O(\since_read_done[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \since_read_done[5]_i_2 
       (.I0(sd_clk_d[0]),
        .I1(sd_clk_d[1]),
        .I2(since_read_done_0),
        .O(\since_read_done[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h66E6)) 
    \since_read_done[5]_i_3 
       (.I0(since_read_done[5]),
        .I1(\since_read_done[5]_i_5_n_0 ),
        .I2(sd_clk_d[1]),
        .I3(sd_clk_d[0]),
        .O(\since_read_done[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \since_read_done[5]_i_4 
       (.I0(sd_clk_d[0]),
        .I1(sd_clk_d[1]),
        .I2(\since_read_done[5]_i_5_n_0 ),
        .I3(since_read_done[5]),
        .O(since_read_done_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \since_read_done[5]_i_5 
       (.I0(since_read_done[4]),
        .I1(since_read_done[3]),
        .I2(since_read_done[1]),
        .I3(since_read_done[0]),
        .I4(since_read_done[2]),
        .O(\since_read_done[5]_i_5_n_0 ));
  FDRE \since_read_done_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[0]_i_1_n_0 ),
        .Q(since_read_done[0]),
        .R(\since_read_done[5]_i_1_n_0 ));
  FDRE \since_read_done_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[1]_i_1_n_0 ),
        .Q(since_read_done[1]),
        .R(\since_read_done[5]_i_1_n_0 ));
  FDRE \since_read_done_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[2]_i_1_n_0 ),
        .Q(since_read_done[2]),
        .R(\since_read_done[5]_i_1_n_0 ));
  FDRE \since_read_done_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[3]_i_1_n_0 ),
        .Q(since_read_done[3]),
        .R(\since_read_done[5]_i_1_n_0 ));
  FDRE \since_read_done_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[4]_i_1_n_0 ),
        .Q(since_read_done[4]),
        .R(\since_read_done[5]_i_1_n_0 ));
  FDRE \since_read_done_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\since_read_done[5]_i_2_n_0 ),
        .D(\since_read_done[5]_i_3_n_0 ),
        .Q(since_read_done[5]),
        .R(\since_read_done[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFD11)) 
    \state[0]_i_1 
       (.I0(\state_reg[1]_0 [0]),
        .I1(\state_reg[1]_0 [1]),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\state_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_1__0 
       (.I0(state__0[1]),
        .I1(out_en),
        .O(state_next__0[0]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \state[1]_i_1 
       (.I0(sd_clk_d[1]),
        .I1(sd_clk_d[0]),
        .I2(p_0_in),
        .I3(out_en),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(state_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFAFAC000)) 
    \state[1]_i_1__0 
       (.I0(interrupt_i_4_n_0),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\state_reg[1]_0 [0]),
        .I4(\state_reg[1]_0 [1]),
        .O(\state_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \state[2]_i_1 
       (.I0(sd_clk_d[1]),
        .I1(sd_clk_d[0]),
        .I2(p_0_in),
        .I3(out_en),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(state_next__0[2]));
  LUT6 #(
    .INIT(64'hFF240000FF24FF24)) 
    \state[3]_i_1 
       (.I0(state__0[1]),
        .I1(sd_clk_d[1]),
        .I2(sd_clk_d[0]),
        .I3(state__0[0]),
        .I4(\state[3]_i_2_n_0 ),
        .I5(\state[3]_i_3_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'hFCFCFCFCFEFFFEFE)) 
    \state[3]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(\bits_left[5]_i_4_n_0 ),
        .I3(write_crc),
        .I4(out_en),
        .I5(line_crc_n_11),
        .O(\state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBBBF)) 
    \state[3]_i_3 
       (.I0(line_crc_n_13),
        .I1(state__0[0]),
        .I2(write_pending),
        .I3(write_strb),
        .O(\state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010" *) 
  FDSE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(state),
        .D(state_next__0[0]),
        .Q(state__0[0]),
        .S(\axi_awaddr_reg[4] ));
  (* FSM_ENCODED_STATES = "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010" *) 
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(state),
        .D(state_next__0[1]),
        .Q(state__0[1]),
        .R(\axi_awaddr_reg[4] ));
  (* FSM_ENCODED_STATES = "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010" *) 
  FDRE \state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(state),
        .D(state_next__0[2]),
        .Q(state__0[2]),
        .R(\axi_awaddr_reg[4] ));
  (* FSM_ENCODED_STATES = "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010" *) 
  FDRE \state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(state),
        .D(state__0[2]),
        .Q(out_en),
        .R(\axi_awaddr_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    \to_write[31]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    write_crc_i_1
       (.I0(state__0[1]),
        .I1(out_en),
        .I2(cmd_tx_ctrl[0]),
        .I3(write_pending_i_4_n_0),
        .I4(write_crc_i_2_n_0),
        .I5(write_crc),
        .O(write_crc_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEEEFEE00000000)) 
    write_crc_i_2
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(line_crc_n_11),
        .I3(write_crc),
        .I4(state__0[2]),
        .I5(to_next_state),
        .O(write_crc_i_2_n_0));
  FDRE write_crc_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_crc_i_1_n_0),
        .Q(write_crc),
        .R(\axi_awaddr_reg[4] ));
  LUT6 #(
    .INIT(64'h0000000044544544)) 
    write_data_ack_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(state__0[0]),
        .I2(sd_clk_d[0]),
        .I3(sd_clk_d[1]),
        .I4(state__0[1]),
        .I5(line_crc_n_10),
        .O(write_data_ack_i_1_n_0));
  FDRE write_data_ack_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_data_ack_i_1_n_0),
        .Q(write_data_ack),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \write_delay[2]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\write_byte_cnt_reg[0] ),
        .I2(axi_awaddr[1]),
        .I3(axi_awaddr[2]),
        .I4(S_AXI_WVALID_0),
        .I5(axi_awaddr[0]),
        .O(\axi_awaddr_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    write_no_cmd_index_i_2
       (.I0(bits_left_next[6]),
        .I1(bits_left_next[5]),
        .I2(bits_left_next[7]),
        .I3(Q[1]),
        .I4(write_data_ack),
        .O(set_write_no_cmd_index));
  LUT4 #(
    .INIT(16'hAEBA)) 
    write_pending_i_1
       (.I0(state__0[0]),
        .I1(sd_clk_d[0]),
        .I2(sd_clk_d[1]),
        .I3(state__0[1]),
        .O(to_next_state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    write_pending_i_2
       (.I0(line_crc_n_13),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(out_en),
        .I4(write_pending_i_4_n_0),
        .O(write_pending_next));
  LUT5 #(
    .INIT(32'h040404FF)) 
    write_pending_i_4
       (.I0(sd_clk_d[1]),
        .I1(sd_clk_d[0]),
        .I2(p_0_in),
        .I3(write_strb),
        .I4(write_pending),
        .O(write_pending_i_4_n_0));
  FDRE write_pending_reg
       (.C(S_AXI_ACLK),
        .CE(to_next_state),
        .D(write_pending_next),
        .Q(write_pending),
        .R(\axi_awaddr_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    write_strb_i_1
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(write_strb_next));
endmodule

(* ORIG_REF_NAME = "sd_if_controller" *) 
module adapter_axi_sd_0_0_sd_if_controller
   (sd_dat3_pullup,
    interrupt,
    D,
    sd_cmd,
    S_AXI_ACLK,
    S_AXI_WDATA,
    axi_awaddr,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    sel0,
    sd_clk);
  output sd_dat3_pullup;
  output interrupt;
  output [31:0]D;
  inout sd_cmd;
  input S_AXI_ACLK;
  input [31:0]S_AXI_WDATA;
  input [2:0]axi_awaddr;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [2:0]sel0;
  input sd_clk;

  wire [31:0]D;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_AWVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire [2:0]axi_awaddr;
  wire dat3_pullup_disabled;
  wire dat3_pullup_disabled_i_1_n_0;
  wire interrupt;
  wire nolabel_line59_n_0;
  wire nolabel_line59_n_2;
  wire nolabel_line59_n_3;
  wire nolabel_line59_n_4;
  wire nolabel_line59_n_5;
  wire nolabel_line59_n_6;
  wire nolabel_line59_n_7;
  wire nolabel_line59_n_8;
  wire [15:0]\rca_cmp.rca_reg ;
  wire \rca_cmp.rca_reg[15]_i_1_n_0 ;
  wire rca_mismatch;
  wire rca_mismatch_carry__0_n_3;
  wire rca_mismatch_carry_n_0;
  wire rca_mismatch_carry_n_1;
  wire rca_mismatch_carry_n_2;
  wire rca_mismatch_carry_n_3;
  wire sd_clk;
  wire sd_cmd;
  wire sd_dat3_pullup;
  wire [2:0]sel0;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [3:0]NLW_rca_mismatch_carry_O_UNCONNECTED;
  wire [3:2]NLW_rca_mismatch_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rca_mismatch_carry__0_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    buf_dat3_pullup
       (.I(1'b1),
        .O(sd_dat3_pullup),
        .T(dat3_pullup_disabled));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    dat3_pullup_disabled_i_1
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(nolabel_line59_n_2),
        .I4(S_AXI_WDATA[1]),
        .I5(dat3_pullup_disabled),
        .O(dat3_pullup_disabled_i_1_n_0));
  FDRE dat3_pullup_disabled_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(dat3_pullup_disabled_i_1_n_0),
        .Q(dat3_pullup_disabled),
        .R(nolabel_line59_n_0));
  adapter_axi_sd_0_0_sd_if_controller_cmd nolabel_line59
       (.CO(rca_mismatch),
        .D(D),
        .Q(\rca_cmp.rca_reg ),
        .S({nolabel_line59_n_3,nolabel_line59_n_4}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_AXI_WVALID_0(nolabel_line59_n_2),
        .axi_awaddr(axi_awaddr),
        .\axi_awaddr_reg[4] (nolabel_line59_n_0),
        .dat3_pullup_disabled(dat3_pullup_disabled),
        .interrupt(interrupt),
        .\last_received_reg[33]_0 ({nolabel_line59_n_5,nolabel_line59_n_6,nolabel_line59_n_7,nolabel_line59_n_8}),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .sel0(sel0),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \rca_cmp.rca_reg[15]_i_1 
       (.I0(axi_awaddr[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[0]),
        .I3(nolabel_line59_n_2),
        .O(\rca_cmp.rca_reg[15]_i_1_n_0 ));
  FDRE \rca_cmp.rca_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\rca_cmp.rca_reg [0]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\rca_cmp.rca_reg [10]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\rca_cmp.rca_reg [11]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\rca_cmp.rca_reg [12]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\rca_cmp.rca_reg [13]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\rca_cmp.rca_reg [14]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\rca_cmp.rca_reg [15]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\rca_cmp.rca_reg [1]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\rca_cmp.rca_reg [2]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\rca_cmp.rca_reg [3]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\rca_cmp.rca_reg [4]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\rca_cmp.rca_reg [5]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\rca_cmp.rca_reg [6]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\rca_cmp.rca_reg [7]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\rca_cmp.rca_reg [8]),
        .R(nolabel_line59_n_0));
  FDRE \rca_cmp.rca_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\rca_cmp.rca_reg[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\rca_cmp.rca_reg [9]),
        .R(nolabel_line59_n_0));
  CARRY4 rca_mismatch_carry
       (.CI(1'b0),
        .CO({rca_mismatch_carry_n_0,rca_mismatch_carry_n_1,rca_mismatch_carry_n_2,rca_mismatch_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rca_mismatch_carry_O_UNCONNECTED[3:0]),
        .S({nolabel_line59_n_5,nolabel_line59_n_6,nolabel_line59_n_7,nolabel_line59_n_8}));
  CARRY4 rca_mismatch_carry__0
       (.CI(rca_mismatch_carry_n_0),
        .CO({NLW_rca_mismatch_carry__0_CO_UNCONNECTED[3:2],rca_mismatch,rca_mismatch_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_rca_mismatch_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,nolabel_line59_n_3,nolabel_line59_n_4}));
endmodule

(* ORIG_REF_NAME = "sd_if_controller_cmd" *) 
module adapter_axi_sd_0_0_sd_if_controller_cmd
   (\axi_awaddr_reg[4] ,
    interrupt,
    S_AXI_WVALID_0,
    S,
    \last_received_reg[33]_0 ,
    D,
    sd_cmd,
    S_AXI_ACLK,
    S_AXI_WDATA,
    axi_awaddr,
    S_AXI_ARESETN,
    Q,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    sel0,
    dat3_pullup_disabled,
    CO,
    sd_clk);
  output \axi_awaddr_reg[4] ;
  output interrupt;
  output S_AXI_WVALID_0;
  output [1:0]S;
  output [3:0]\last_received_reg[33]_0 ;
  output [31:0]D;
  inout sd_cmd;
  input S_AXI_ACLK;
  input [31:0]S_AXI_WDATA;
  input [2:0]axi_awaddr;
  input S_AXI_ARESETN;
  input [15:0]Q;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input [2:0]sel0;
  input dat3_pullup_disabled;
  input [0:0]CO;
  input sd_clk;

  wire [0:0]CO;
  wire [31:0]D;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire [15:0]Q;
  wire [1:0]S;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_AWVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire S_AXI_WVALID_0;
  wire [2:0]axi_awaddr;
  wire \axi_awaddr_reg[4] ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire cmd_if_n_11;
  wire cmd_if_n_12;
  wire cmd_if_n_13;
  wire cmd_if_n_14;
  wire cmd_if_n_15;
  wire cmd_if_n_16;
  wire cmd_if_n_17;
  wire cmd_if_n_18;
  wire cmd_if_n_19;
  wire cmd_if_n_20;
  wire cmd_if_n_21;
  wire cmd_if_n_22;
  wire cmd_if_n_23;
  wire cmd_if_n_24;
  wire cmd_if_n_25;
  wire cmd_if_n_26;
  wire cmd_if_n_27;
  wire cmd_if_n_28;
  wire cmd_if_n_29;
  wire cmd_if_n_30;
  wire cmd_if_n_31;
  wire cmd_if_n_32;
  wire cmd_if_n_33;
  wire cmd_if_n_34;
  wire cmd_if_n_35;
  wire cmd_if_n_36;
  wire cmd_if_n_37;
  wire cmd_if_n_38;
  wire cmd_if_n_39;
  wire cmd_if_n_40;
  wire cmd_if_n_41;
  wire cmd_if_n_42;
  wire cmd_if_n_43;
  wire cmd_if_n_44;
  wire cmd_if_n_45;
  wire cmd_if_n_46;
  wire cmd_if_n_47;
  wire cmd_if_n_48;
  wire cmd_if_n_49;
  wire cmd_if_n_5;
  wire cmd_if_n_50;
  wire cmd_if_n_51;
  wire cmd_if_n_52;
  wire cmd_if_n_53;
  wire cmd_if_n_54;
  wire cmd_if_n_55;
  wire cmd_if_n_56;
  wire cmd_if_n_57;
  wire cmd_if_n_6;
  wire [17:16]cmd_status;
  wire [1:0]cmd_tx_ctrl;
  wire crc_err;
  wire crc_error_last;
  wire dat3_pullup_disabled;
  wire [31:0]data1;
  wire [12:2]data2;
  wire [47:47]data_new;
  wire interrupt;
  wire interrupt_next;
  wire [3:0]\last_received_reg[33]_0 ;
  wire \last_received_reg_n_0_[0] ;
  wire \last_received_reg_n_0_[1] ;
  wire \last_received_reg_n_0_[2] ;
  wire \last_received_reg_n_0_[3] ;
  wire \last_received_reg_n_0_[40] ;
  wire \last_received_reg_n_0_[41] ;
  wire \last_received_reg_n_0_[42] ;
  wire \last_received_reg_n_0_[43] ;
  wire \last_received_reg_n_0_[44] ;
  wire \last_received_reg_n_0_[45] ;
  wire \last_received_reg_n_0_[46] ;
  wire \last_received_reg_n_0_[47] ;
  wire \last_received_reg_n_0_[4] ;
  wire \last_received_reg_n_0_[5] ;
  wire \last_received_reg_n_0_[6] ;
  wire \last_received_reg_n_0_[7] ;
  wire [23:0]p_2_out;
  wire sd_clk;
  wire sd_cmd;
  wire [2:0]sel0;
  wire set_write_no_cmd_index;
  wire [1:0]state;
  wire state_next;
  wire [1:0]state_next__0;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [31:24]to_write;
  wire update_last_received;
  wire update_write_data;
  wire update_write_status;
  wire write_delay0;
  wire \write_delay[2]_i_3_n_0 ;
  wire write_no_cmd_index_i_1_n_0;
  wire write_strb;
  wire write_strb_next;

  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(S_AXI_WVALID_0),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "state_cmd_received:01,state_writing_buf_full:10,state_idle:00,state_writing_buf_not_full:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(state_next),
        .D(state_next__0[0]),
        .Q(state[0]),
        .R(\axi_awaddr_reg[4] ));
  (* FSM_ENCODED_STATES = "state_cmd_received:01,state_writing_buf_full:10,state_idle:00,state_writing_buf_not_full:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(state_next),
        .D(state_next__0[1]),
        .Q(state[1]),
        .R(\axi_awaddr_reg[4] ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[0]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[0]),
        .I4(\axi_rdata[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3202303032020000)) 
    \axi_rdata[0]_i_2 
       (.I0(data1[0]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(cmd_tx_ctrl[0]),
        .I4(sel0[1]),
        .I5(\last_received_reg_n_0_[40] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[10]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0E0E0C0002020C00)) 
    \axi_rdata[10]_i_2 
       (.I0(data1[10]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\last_received_reg_n_0_[2] ),
        .I4(sel0[1]),
        .I5(data2[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[11]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0E0E0C0002020C00)) 
    \axi_rdata[11]_i_2 
       (.I0(data1[11]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\last_received_reg_n_0_[3] ),
        .I4(sel0[1]),
        .I5(data2[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[12]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000FCA000000CA0)) 
    \axi_rdata[12]_i_2 
       (.I0(data1[12]),
        .I1(\last_received_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(data2[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[13]_i_1 
       (.I0(data1[13]),
        .I1(\last_received_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[14]_i_1 
       (.I0(data1[14]),
        .I1(\last_received_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[15]_i_1 
       (.I0(data1[15]),
        .I1(\last_received_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h05004040)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[2]),
        .I1(cmd_status[16]),
        .I2(sel0[0]),
        .I3(data1[16]),
        .I4(sel0[1]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h05004040)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[2]),
        .I1(cmd_status[17]),
        .I2(sel0[0]),
        .I3(data1[17]),
        .I4(sel0[1]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[18]_i_1 
       (.I0(data1[18]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h11004040)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(crc_err),
        .I3(data1[19]),
        .I4(sel0[1]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[1]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0E0C0E00020C0200)) 
    \axi_rdata[1]_i_2 
       (.I0(data1[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\last_received_reg_n_0_[41] ),
        .I5(cmd_tx_ctrl[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11004040)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(CO),
        .I3(data1[20]),
        .I4(sel0[1]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[21]_i_1 
       (.I0(data1[21]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[22]_i_1 
       (.I0(data1[22]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[23]_i_1 
       (.I0(data1[23]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h11004040)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(dat3_pullup_disabled),
        .I3(data1[24]),
        .I4(sel0[1]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[25]_i_1 
       (.I0(data1[25]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[26]_i_1 
       (.I0(data1[26]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[27]_i_1 
       (.I0(data1[27]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[28]_i_1 
       (.I0(data1[28]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[29]_i_1 
       (.I0(data1[29]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[2]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0E020C0C0E020000)) 
    \axi_rdata[2]_i_2 
       (.I0(data1[2]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(data2[2]),
        .I4(sel0[1]),
        .I5(\last_received_reg_n_0_[42] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[30]_i_1 
       (.I0(data1[30]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[31]_i_1 
       (.I0(data1[31]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[3]),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0E0C0E00020C0200)) 
    \axi_rdata[3]_i_2 
       (.I0(data1[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\last_received_reg_n_0_[43] ),
        .I5(data2[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[4]),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0E0C0E00020C0200)) 
    \axi_rdata[4]_i_2 
       (.I0(data1[4]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\last_received_reg_n_0_[44] ),
        .I5(data2[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[5]_i_1 
       (.I0(data1[5]),
        .I1(\last_received_reg_n_0_[45] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[6]_i_1 
       (.I0(data1[6]),
        .I1(\last_received_reg_n_0_[46] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0F0C00A0000C00A0)) 
    \axi_rdata[7]_i_1 
       (.I0(data1[7]),
        .I1(\last_received_reg_n_0_[47] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[8]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0E0E0C0002020C00)) 
    \axi_rdata[8]_i_2 
       (.I0(data1[8]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\last_received_reg_n_0_[0] ),
        .I4(sel0[1]),
        .I5(data2[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[9]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h3202303032020000)) 
    \axi_rdata[9]_i_2 
       (.I0(data1[9]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(data2[9]),
        .I4(sel0[1]),
        .I5(\last_received_reg_n_0_[1] ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  adapter_axi_sd_0_0_sd_cmd_if cmd_if
       (.D(state_next__0),
        .E(state_next),
        .\FSM_sequential_state_reg[0] (update_write_data),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[1]_i_5_n_0 ),
        .Q(state),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_WDATA(S_AXI_WDATA[0]),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_AXI_WVALID_0(S_AXI_WVALID_0),
        .axi_awaddr(axi_awaddr),
        .\axi_awaddr_reg[3] (update_write_status),
        .\axi_awaddr_reg[4] (\axi_awaddr_reg[4] ),
        .cmd_tx_ctrl(cmd_tx_ctrl),
        .crc_error_last(crc_error_last),
        .data2({data2[12:8],data2[4:2]}),
        .\data_buf_reg[45]_0 ({\last_received_reg_n_0_[45] ,\last_received_reg_n_0_[44] ,\last_received_reg_n_0_[43] ,\last_received_reg_n_0_[42] ,\last_received_reg_n_0_[41] ,\last_received_reg_n_0_[40] }),
        .\data_buf_reg[47]_0 ({data_new,cmd_if_n_11,cmd_if_n_12,cmd_if_n_13,cmd_if_n_14,cmd_if_n_15,cmd_if_n_16,cmd_if_n_17,cmd_if_n_18,cmd_if_n_19,cmd_if_n_20,cmd_if_n_21,cmd_if_n_22,cmd_if_n_23,cmd_if_n_24,cmd_if_n_25,cmd_if_n_26,cmd_if_n_27,cmd_if_n_28,cmd_if_n_29,cmd_if_n_30,cmd_if_n_31,cmd_if_n_32,cmd_if_n_33,cmd_if_n_34,cmd_if_n_35,cmd_if_n_36,cmd_if_n_37,cmd_if_n_38,cmd_if_n_39,cmd_if_n_40,cmd_if_n_41,cmd_if_n_42,cmd_if_n_43,cmd_if_n_44,cmd_if_n_45,cmd_if_n_46,cmd_if_n_47,cmd_if_n_48,cmd_if_n_49,cmd_if_n_50,cmd_if_n_51,cmd_if_n_52,cmd_if_n_53,cmd_if_n_54,cmd_if_n_55,cmd_if_n_56,cmd_if_n_57}),
        .\data_buf_reg[47]_1 ({to_write,p_2_out}),
        .interrupt_next(interrupt_next),
        .read_ready_reg_0(update_last_received),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .set_write_no_cmd_index(set_write_no_cmd_index),
        .\state_reg[0]_0 ({cmd_if_n_5,cmd_if_n_6}),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[0]_2 (\state_reg[0]_1 ),
        .\state_reg[1]_0 (cmd_status),
        .\write_byte_cnt_reg[0] (\write_delay[2]_i_3_n_0 ),
        .write_strb(write_strb),
        .write_strb_next(write_strb_next));
  FDRE crc_err_reg
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(crc_error_last),
        .Q(crc_err),
        .R(\axi_awaddr_reg[4] ));
  FDRE interrupt_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(interrupt_next),
        .Q(interrupt),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_57),
        .Q(\last_received_reg_n_0_[0] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_47),
        .Q(data1[2]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_46),
        .Q(data1[3]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_45),
        .Q(data1[4]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_44),
        .Q(data1[5]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_43),
        .Q(data1[6]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_42),
        .Q(data1[7]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_41),
        .Q(data1[8]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_40),
        .Q(data1[9]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_39),
        .Q(data1[10]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_38),
        .Q(data1[11]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_56),
        .Q(\last_received_reg_n_0_[1] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_37),
        .Q(data1[12]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_36),
        .Q(data1[13]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_35),
        .Q(data1[14]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_34),
        .Q(data1[15]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_33),
        .Q(data1[16]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_32),
        .Q(data1[17]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_31),
        .Q(data1[18]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_30),
        .Q(data1[19]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_29),
        .Q(data1[20]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_28),
        .Q(data1[21]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_55),
        .Q(\last_received_reg_n_0_[2] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_27),
        .Q(data1[22]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_26),
        .Q(data1[23]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_25),
        .Q(data1[24]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_24),
        .Q(data1[25]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_23),
        .Q(data1[26]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_22),
        .Q(data1[27]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_21),
        .Q(data1[28]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_20),
        .Q(data1[29]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_19),
        .Q(data1[30]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_18),
        .Q(data1[31]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_54),
        .Q(\last_received_reg_n_0_[3] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_17),
        .Q(\last_received_reg_n_0_[40] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_16),
        .Q(\last_received_reg_n_0_[41] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_15),
        .Q(\last_received_reg_n_0_[42] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_14),
        .Q(\last_received_reg_n_0_[43] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_13),
        .Q(\last_received_reg_n_0_[44] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_12),
        .Q(\last_received_reg_n_0_[45] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_11),
        .Q(\last_received_reg_n_0_[46] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(data_new),
        .Q(\last_received_reg_n_0_[47] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_53),
        .Q(\last_received_reg_n_0_[4] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_52),
        .Q(\last_received_reg_n_0_[5] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_51),
        .Q(\last_received_reg_n_0_[6] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_50),
        .Q(\last_received_reg_n_0_[7] ),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_49),
        .Q(data1[0]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \last_received_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(update_last_received),
        .D(cmd_if_n_48),
        .Q(data1[1]),
        .R(\axi_awaddr_reg[4] ));
  LUT2 #(
    .INIT(4'h9)) 
    rca_mismatch_carry__0_i_1
       (.I0(Q[15]),
        .I1(data1[31]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_mismatch_carry__0_i_2
       (.I0(data1[30]),
        .I1(Q[14]),
        .I2(data1[28]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(data1[29]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_mismatch_carry_i_1
       (.I0(data1[25]),
        .I1(Q[9]),
        .I2(data1[26]),
        .I3(Q[10]),
        .I4(Q[11]),
        .I5(data1[27]),
        .O(\last_received_reg[33]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_mismatch_carry_i_2
       (.I0(data1[22]),
        .I1(Q[6]),
        .I2(data1[23]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(data1[24]),
        .O(\last_received_reg[33]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_mismatch_carry_i_3
       (.I0(data1[19]),
        .I1(Q[3]),
        .I2(data1[20]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(data1[21]),
        .O(\last_received_reg[33]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_mismatch_carry_i_4
       (.I0(data1[16]),
        .I1(Q[0]),
        .I2(data1[17]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(data1[18]),
        .O(\last_received_reg[33]_0 [0]));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(state_next),
        .D(cmd_if_n_6),
        .Q(cmd_status[16]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(state_next),
        .D(cmd_if_n_5),
        .Q(cmd_status[17]),
        .R(\axi_awaddr_reg[4] ));
  FDRE \to_write_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[0]),
        .Q(p_2_out[0]),
        .R(write_delay0));
  FDRE \to_write_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[10]),
        .Q(p_2_out[10]),
        .R(write_delay0));
  FDRE \to_write_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[11]),
        .Q(p_2_out[11]),
        .R(write_delay0));
  FDRE \to_write_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[12]),
        .Q(p_2_out[12]),
        .R(write_delay0));
  FDRE \to_write_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[13]),
        .Q(p_2_out[13]),
        .R(write_delay0));
  FDRE \to_write_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[14]),
        .Q(p_2_out[14]),
        .R(write_delay0));
  FDRE \to_write_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[15]),
        .Q(p_2_out[15]),
        .R(write_delay0));
  FDRE \to_write_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[16]),
        .Q(p_2_out[16]),
        .R(write_delay0));
  FDRE \to_write_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[17]),
        .Q(p_2_out[17]),
        .R(write_delay0));
  FDRE \to_write_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[18]),
        .Q(p_2_out[18]),
        .R(write_delay0));
  FDRE \to_write_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[19]),
        .Q(p_2_out[19]),
        .R(write_delay0));
  FDRE \to_write_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[1]),
        .Q(p_2_out[1]),
        .R(write_delay0));
  FDRE \to_write_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[20]),
        .Q(p_2_out[20]),
        .R(write_delay0));
  FDRE \to_write_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[21]),
        .Q(p_2_out[21]),
        .R(write_delay0));
  FDRE \to_write_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[22]),
        .Q(p_2_out[22]),
        .R(write_delay0));
  FDRE \to_write_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[23]),
        .Q(p_2_out[23]),
        .R(write_delay0));
  FDRE \to_write_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[24]),
        .Q(to_write[24]),
        .R(write_delay0));
  FDRE \to_write_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[25]),
        .Q(to_write[25]),
        .R(write_delay0));
  FDRE \to_write_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[26]),
        .Q(to_write[26]),
        .R(write_delay0));
  FDRE \to_write_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[27]),
        .Q(to_write[27]),
        .R(write_delay0));
  FDRE \to_write_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[28]),
        .Q(to_write[28]),
        .R(write_delay0));
  FDRE \to_write_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[29]),
        .Q(to_write[29]),
        .R(write_delay0));
  FDRE \to_write_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[2]),
        .Q(p_2_out[2]),
        .R(write_delay0));
  FDRE \to_write_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[30]),
        .Q(to_write[30]),
        .R(write_delay0));
  FDRE \to_write_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[31]),
        .Q(to_write[31]),
        .R(write_delay0));
  FDRE \to_write_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[3]),
        .Q(p_2_out[3]),
        .R(write_delay0));
  FDRE \to_write_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[4]),
        .Q(p_2_out[4]),
        .R(write_delay0));
  FDRE \to_write_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[5]),
        .Q(p_2_out[5]),
        .R(write_delay0));
  FDRE \to_write_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[6]),
        .Q(p_2_out[6]),
        .R(write_delay0));
  FDRE \to_write_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[7]),
        .Q(p_2_out[7]),
        .R(write_delay0));
  FDRE \to_write_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[8]),
        .Q(p_2_out[8]),
        .R(write_delay0));
  FDRE \to_write_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(update_write_data),
        .D(S_AXI_WDATA[9]),
        .Q(p_2_out[9]),
        .R(write_delay0));
  FDSE \write_byte_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[8]),
        .Q(data2[8]),
        .S(write_delay0));
  FDRE \write_byte_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[9]),
        .Q(data2[9]),
        .R(write_delay0));
  FDSE \write_byte_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[10]),
        .Q(data2[10]),
        .S(write_delay0));
  FDRE \write_byte_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[11]),
        .Q(data2[11]),
        .R(write_delay0));
  FDRE \write_byte_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[12]),
        .Q(data2[12]),
        .R(write_delay0));
  LUT3 #(
    .INIT(8'hAB)) 
    \write_delay[2]_i_1 
       (.I0(\axi_awaddr_reg[4] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(write_delay0));
  LUT2 #(
    .INIT(4'hB)) 
    \write_delay[2]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\write_delay[2]_i_3_n_0 ));
  FDRE \write_delay_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[2]),
        .Q(data2[2]),
        .R(write_delay0));
  FDSE \write_delay_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[3]),
        .Q(data2[3]),
        .S(write_delay0));
  FDRE \write_delay_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[4]),
        .Q(data2[4]),
        .R(write_delay0));
  LUT5 #(
    .INIT(32'h0000FECE)) 
    write_no_cmd_index_i_1
       (.I0(cmd_tx_ctrl[1]),
        .I1(set_write_no_cmd_index),
        .I2(update_write_status),
        .I3(S_AXI_WDATA[1]),
        .I4(write_delay0),
        .O(write_no_cmd_index_i_1_n_0));
  FDRE write_no_cmd_index_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_no_cmd_index_i_1_n_0),
        .Q(cmd_tx_ctrl[1]),
        .R(1'b0));
  FDRE write_no_crc_reg
       (.C(S_AXI_ACLK),
        .CE(update_write_status),
        .D(S_AXI_WDATA[0]),
        .Q(cmd_tx_ctrl[0]),
        .R(write_delay0));
  FDRE write_strb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_strb_next),
        .Q(write_strb),
        .R(\axi_awaddr_reg[4] ));
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
