// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu May 28 08:23:06 2020
// Host        : e8bdd687b03d running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_reset_generator_wrap_0_0/block_design_reset_generator_wrap_0_0_sim_netlist.v
// Design      : block_design_reset_generator_wrap_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_reset_generator_wrap_0_0,reset_generator_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "reset_generator_wrapper,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module block_design_reset_generator_wrap_0_0
   (out_aresetn,
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
    aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 out_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [1:0]out_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [2:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [2:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [1:0]out_aresetn;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \^s_axi_rdata [0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  block_design_reset_generator_wrap_0_0_reset_generator_wrapper inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .arready(s_axi_arready),
        .bvalid_reg(s_axi_bvalid),
        .out_aresetn(out_aresetn),
        .rvalid_reg(s_axi_rvalid),
        .s_axi_araddr(s_axi_araddr[2]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wstrb(s_axi_wstrb[0]),
        .s_axi_wvalid(s_axi_wvalid),
        .wready(s_axi_wready));
endmodule

(* ORIG_REF_NAME = "block_design_axi4_lite_intf" *) 
module block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf
   (bvalid_reg_0,
    wready,
    s_axi_awready,
    arready,
    rvalid_reg_0,
    s_axi_rdata,
    out_aresetn,
    aclk,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_wstrb);
  output bvalid_reg_0;
  output wready;
  output s_axi_awready;
  output arready;
  output rvalid_reg_0;
  output [0:0]s_axi_rdata;
  output [1:0]out_aresetn;
  input aclk;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [0:0]s_axi_awaddr;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire aclk;
  wire aresetn;
  wire arready;
  wire arready_i_1_n_0;
  wire awready_i_2_n_0;
  wire bvalid_i_1_n_0;
  wire bvalid_reg_0;
  wire [1:0]out_aresetn;
  wire p_0_in;
  wire p_1_in;
  wire \raddr_saved[2]_i_1_n_0 ;
  wire read_got_addr;
  wire read_got_addr_next1_out;
  wire rvalid_i_1_n_0;
  wire rvalid_reg_0;
  wire [0:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sel00;
  wire \waddr_saved[2]_i_1_n_0 ;
  wire \waddr_saved_reg_n_0_[2] ;
  wire \wdata_saved[0]_i_1_n_0 ;
  wire \wdata_saved_reg_n_0_[0] ;
  wire wr_tran_next;
  wire wr_tran_reg_n_0;
  wire wready;
  wire wready_i_1_n_0;
  wire write_got_addr;
  wire write_got_addr_next4_out;
  wire write_got_data;
  wire write_got_data_next3_out;
  wire \write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0 ;
  wire \write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0 ;
  wire \wstrb_saved[0]_i_1_n_0 ;
  wire \wstrb_saved_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF15FFFF)) 
    arready_i_1
       (.I0(read_got_addr),
        .I1(s_axi_arvalid),
        .I2(arready),
        .I3(s_axi_rready),
        .I4(rvalid_reg_0),
        .O(arready_i_1_n_0));
  FDRE arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arready_i_1_n_0),
        .Q(arready),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'hEAEA00EAFFFFFFFF)) 
    awready_i_1
       (.I0(write_got_data),
        .I1(s_axi_wvalid),
        .I2(wready),
        .I3(bvalid_reg_0),
        .I4(s_axi_bready),
        .I5(awready_i_2_n_0),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    awready_i_2
       (.I0(write_got_addr),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .O(awready_i_2_n_0));
  FDRE awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(s_axi_awready),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'hBBBBB00000000000)) 
    bvalid_i_1
       (.I0(s_axi_bready),
        .I1(bvalid_reg_0),
        .I2(wready),
        .I3(s_axi_wvalid),
        .I4(write_got_data),
        .I5(awready_i_2_n_0),
        .O(bvalid_i_1_n_0));
  FDRE bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(bvalid_reg_0),
        .R(p_1_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \raddr_saved[2]_i_1 
       (.I0(s_axi_araddr),
        .I1(s_axi_arvalid),
        .I2(arready),
        .I3(sel00),
        .O(\raddr_saved[2]_i_1_n_0 ));
  FDRE \raddr_saved_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\raddr_saved[2]_i_1_n_0 ),
        .Q(sel00),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22222000)) 
    read_got_addr_i_1
       (.I0(rvalid_reg_0),
        .I1(s_axi_rready),
        .I2(arready),
        .I3(s_axi_arvalid),
        .I4(read_got_addr),
        .O(read_got_addr_next1_out));
  FDRE read_got_addr_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_got_addr_next1_out),
        .Q(read_got_addr),
        .R(p_1_in));
  LUT5 #(
    .INIT(32'hFFC0FFEA)) 
    rvalid_i_1
       (.I0(rvalid_reg_0),
        .I1(arready),
        .I2(s_axi_arvalid),
        .I3(read_got_addr),
        .I4(s_axi_rready),
        .O(rvalid_i_1_n_0));
  FDRE rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rvalid_i_1_n_0),
        .Q(rvalid_reg_0),
        .R(p_1_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(out_aresetn[1]),
        .I1(sel00),
        .I2(out_aresetn[0]),
        .O(s_axi_rdata));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \waddr_saved[2]_i_1 
       (.I0(s_axi_awaddr),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(\waddr_saved_reg_n_0_[2] ),
        .O(\waddr_saved[2]_i_1_n_0 ));
  FDRE \waddr_saved_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\waddr_saved[2]_i_1_n_0 ),
        .Q(\waddr_saved_reg_n_0_[2] ),
        .R(p_1_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wdata_saved[0]_i_1 
       (.I0(s_axi_wdata),
        .I1(wready),
        .I2(s_axi_wvalid),
        .I3(\wdata_saved_reg_n_0_[0] ),
        .O(\wdata_saved[0]_i_1_n_0 ));
  FDRE \wdata_saved_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_saved[0]_i_1_n_0 ),
        .Q(\wdata_saved_reg_n_0_[0] ),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'hA888A8880000A888)) 
    wr_tran_i_1
       (.I0(awready_i_2_n_0),
        .I1(write_got_data),
        .I2(s_axi_wvalid),
        .I3(wready),
        .I4(bvalid_reg_0),
        .I5(s_axi_bready),
        .O(wr_tran_next));
  FDRE wr_tran_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_tran_next),
        .Q(wr_tran_reg_n_0),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'hFFFF07FF07070707)) 
    wready_i_1
       (.I0(wready),
        .I1(s_axi_wvalid),
        .I2(write_got_data),
        .I3(bvalid_reg_0),
        .I4(s_axi_bready),
        .I5(awready_i_2_n_0),
        .O(wready_i_1_n_0));
  FDRE wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wready_i_1_n_0),
        .Q(wready),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'h2020202020AAAAAA)) 
    write_got_addr_i_1
       (.I0(awready_i_2_n_0),
        .I1(s_axi_bready),
        .I2(bvalid_reg_0),
        .I3(wready),
        .I4(s_axi_wvalid),
        .I5(write_got_data),
        .O(write_got_addr_next4_out));
  FDRE write_got_addr_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_got_addr_next4_out),
        .Q(write_got_addr),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'h7575750075007500)) 
    write_got_data_i_1
       (.I0(awready_i_2_n_0),
        .I1(s_axi_bready),
        .I2(bvalid_reg_0),
        .I3(write_got_data),
        .I4(s_axi_wvalid),
        .I5(wready),
        .O(write_got_data_next3_out));
  FDRE write_got_data_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_got_data_next3_out),
        .Q(write_got_data),
        .R(p_1_in));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \write_reg[0].write_reg[0].reg_written[0][0]_i_1 
       (.I0(\wdata_saved_reg_n_0_[0] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(wr_tran_reg_n_0),
        .I3(\wstrb_saved_reg_n_0_[0] ),
        .I4(out_aresetn[0]),
        .O(\write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0 ));
  FDRE \write_reg[0].write_reg[0].reg_written_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0 ),
        .Q(out_aresetn[0]),
        .R(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \write_reg[1].write_reg[0].reg_written[4][0]_i_1 
       (.I0(aresetn),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \write_reg[1].write_reg[0].reg_written[4][0]_i_2 
       (.I0(\wdata_saved_reg_n_0_[0] ),
        .I1(\waddr_saved_reg_n_0_[2] ),
        .I2(wr_tran_reg_n_0),
        .I3(\wstrb_saved_reg_n_0_[0] ),
        .I4(out_aresetn[1]),
        .O(\write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0 ));
  FDRE \write_reg[1].write_reg[0].reg_written_reg[4][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0 ),
        .Q(out_aresetn[1]),
        .R(p_1_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wstrb_saved[0]_i_1 
       (.I0(s_axi_wstrb),
        .I1(wready),
        .I2(s_axi_wvalid),
        .I3(\wstrb_saved_reg_n_0_[0] ),
        .O(\wstrb_saved[0]_i_1_n_0 ));
  FDRE \wstrb_saved_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_saved[0]_i_1_n_0 ),
        .Q(\wstrb_saved_reg_n_0_[0] ),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "reset_generator" *) 
module block_design_reset_generator_wrap_0_0_reset_generator
   (bvalid_reg,
    wready,
    s_axi_awready,
    arready,
    rvalid_reg,
    s_axi_rdata,
    out_aresetn,
    aclk,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_wstrb);
  output bvalid_reg;
  output wready;
  output s_axi_awready;
  output arready;
  output rvalid_reg;
  output [0:0]s_axi_rdata;
  output [1:0]out_aresetn;
  input aclk;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [0:0]s_axi_awaddr;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire aclk;
  wire aresetn;
  wire arready;
  wire bvalid_reg;
  wire [1:0]out_aresetn;
  wire rvalid_reg;
  wire [0:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wready;

  block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf control_intf
       (.aclk(aclk),
        .aresetn(aresetn),
        .arready(arready),
        .bvalid_reg_0(bvalid_reg),
        .out_aresetn(out_aresetn),
        .rvalid_reg_0(rvalid_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .wready(wready));
endmodule

(* ORIG_REF_NAME = "reset_generator_wrapper" *) 
module block_design_reset_generator_wrap_0_0_reset_generator_wrapper
   (bvalid_reg,
    wready,
    s_axi_awready,
    arready,
    rvalid_reg,
    s_axi_rdata,
    out_aresetn,
    aclk,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_wstrb);
  output bvalid_reg;
  output wready;
  output s_axi_awready;
  output arready;
  output rvalid_reg;
  output [0:0]s_axi_rdata;
  output [1:0]out_aresetn;
  input aclk;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [0:0]s_axi_awaddr;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire aclk;
  wire aresetn;
  wire arready;
  wire bvalid_reg;
  wire [1:0]out_aresetn;
  wire rvalid_reg;
  wire [0:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wready;

  block_design_reset_generator_wrap_0_0_reset_generator inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .arready(arready),
        .bvalid_reg(bvalid_reg),
        .out_aresetn(out_aresetn),
        .rvalid_reg(rvalid_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .wready(wready));
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
