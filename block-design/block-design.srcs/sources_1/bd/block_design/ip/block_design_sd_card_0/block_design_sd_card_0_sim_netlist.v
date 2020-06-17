// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat Jun  6 05:11:43 2020
// Host        : ff48e243dfe3 running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_card_0/block_design_sd_card_0_sim_netlist.v
// Design      : block_design_sd_card_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_sd_card_0,axi_sd_card,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_sd_card,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module block_design_sd_card_0
   (sd_clk,
    sd_cmd,
    sd_dat,
    sd_dat3_pullup,
    out_tdata,
    out_tlast,
    out_tvalid,
    out_tready,
    fifo_out_resetn,
    fifo_out_almostfull,
    fifo_out_tready_masked,
    fifo_out_tvalid_masked,
    fifo_out_tready_in,
    fifo_out_tvalid_in,
    in_tdata,
    in_tlast,
    in_tvalid,
    in_tready,
    fifo_in_resetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    interrupt,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CLK" *) input sd_clk;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CMD" *) inout sd_cmd;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd DAT" *) inout [3:0]sd_dat;
  output sd_dat3_pullup;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TDATA" *) output [7:0]out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TLAST" *) output out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TVALID" *) output out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_out_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_out_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_out_resetn;
  input fifo_out_almostfull;
  output fifo_out_tready_masked;
  output fifo_out_tvalid_masked;
  input fifo_out_tready_in;
  input fifo_out_tvalid_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TDATA" *) input [7:0]in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TLAST" *) input in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TVALID" *) input in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_in_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_in_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_in_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [6:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [6:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI:data_out:data_in, ASSOCIATED_RESET resetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;

  wire \<const0> ;
  wire clk;
  wire fifo_in_resetn;
  wire fifo_out_almostfull;
  wire fifo_out_resetn;
  wire fifo_out_tready_in;
  wire fifo_out_tready_masked;
  wire fifo_out_tvalid_in;
  wire fifo_out_tvalid_masked;
  wire [7:0]in_tdata;
  wire in_tlast;
  wire in_tready;
  wire in_tvalid;
  wire interrupt;
  wire [7:0]out_tdata;
  wire out_tlast;
  wire out_tready;
  wire out_tvalid;
  wire resetn;
  wire [6:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sd_clk;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sd_cmd;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [3:0]sd_dat;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire sd_dat3_pullup;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  GND GND
       (.G(\<const0> ));
  block_design_sd_card_0_axi_sd_card inst
       (.clk(clk),
        .fifo_in_resetn(fifo_in_resetn),
        .fifo_out_almostfull(fifo_out_almostfull),
        .fifo_out_resetn(fifo_out_resetn),
        .fifo_out_tready_in(fifo_out_tready_in),
        .fifo_out_tready_masked(fifo_out_tready_masked),
        .fifo_out_tvalid_in(fifo_out_tvalid_in),
        .fifo_out_tvalid_masked(fifo_out_tvalid_masked),
        .in_tdata(in_tdata),
        .in_tlast(in_tlast),
        .in_tready(in_tready),
        .in_tvalid(in_tvalid),
        .interrupt(interrupt),
        .out_tdata(out_tdata),
        .out_tlast(out_tlast),
        .out_tready(out_tready),
        .out_tvalid(out_tvalid),
        .resetn(resetn),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .sd_clk(sd_clk),
        .sd_cmd(sd_cmd),
        .sd_dat(sd_dat),
        .sd_dat3_pullup(sd_dat3_pullup));
endmodule

(* ORIG_REF_NAME = "axi4_lite_intf" *) 
module block_design_sd_card_0_axi4_lite_intf
   (SR,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rvalid,
    \s_axi_awaddr[6] ,
    resetn_0,
    E,
    Q,
    \set_reg[20].reg_written_reg[20][15]_0 ,
    \set_reg[19].reg_written_reg[19][31]_0 ,
    \set_reg[18].reg_written_reg[18][31]_0 ,
    p_1_in,
    \waddr_saved_reg[4]_0 ,
    s_axi_rdata,
    clk,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awaddr,
    resetn,
    s_axi_araddr,
    ram_write,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    ram_read,
    \rdata_reg[31]_0 ,
    \rdata[31]_i_4_0 ,
    \rdata[31]_i_4_1 ,
    \rdata[31]_i_4_2 ,
    ram_word_out_reg,
    ram_byte_index_write,
    \set_reg[18].reg_written_reg[18][31]_1 ,
    s_axi_wdata);
  output [0:0]SR;
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output \s_axi_awaddr[6] ;
  output [0:0]resetn_0;
  output [0:0]E;
  output [2:0]Q;
  output [8:0]\set_reg[20].reg_written_reg[20][15]_0 ;
  output [31:0]\set_reg[19].reg_written_reg[19][31]_0 ;
  output [7:0]\set_reg[18].reg_written_reg[18][31]_0 ;
  output [7:0]p_1_in;
  output [2:0]\waddr_saved_reg[4]_0 ;
  output [31:0]s_axi_rdata;
  input clk;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [4:0]s_axi_awaddr;
  input resetn;
  input [4:0]s_axi_araddr;
  input ram_write;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input ram_read;
  input [23:0]\rdata_reg[31]_0 ;
  input [31:0]\rdata[31]_i_4_0 ;
  input [31:0]\rdata[31]_i_4_1 ;
  input [31:0]\rdata[31]_i_4_2 ;
  input [7:0]ram_word_out_reg;
  input [1:0]ram_byte_index_write;
  input [0:0]\set_reg[18].reg_written_reg[18][31]_1 ;
  input [31:0]s_axi_wdata;

  wire [0:0]E;
  wire \FSM_onehot_read_state[1]_i_2_n_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire awready_i_2_n_0;
  wire bvalid_i_1_n_0;
  wire bvalid_i_2_n_0;
  wire clk;
  wire [7:0]p_1_in;
  wire [6:5]raddr_saved;
  wire [1:0]ram_byte_index_write;
  wire ram_read;
  wire [7:0]ram_word_out_reg;
  wire ram_write;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[14]_i_3_n_0 ;
  wire \rdata[14]_i_4_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[15]_i_4_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[23]_i_3_n_0 ;
  wire \rdata[23]_i_4_n_0 ;
  wire \rdata[23]_i_5_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[24]_i_3_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[25]_i_3_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[26]_i_3_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[27]_i_3_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[28]_i_3_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[29]_i_3_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[30]_i_3_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire [31:0]\rdata[31]_i_4_0 ;
  wire [31:0]\rdata[31]_i_4_1 ;
  wire [31:0]\rdata[31]_i_4_2 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[4]_i_4_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire [31:0]rdata_next;
  wire [23:0]\rdata_reg[31]_0 ;
  wire read_delay_needed;
  wire read_delay_needed_i_1_n_0;
  wire [0:0]read_state;
  wire [2:0]read_state_next__0;
  wire [1:0]read_state_reg;
  wire resetn;
  wire [0:0]resetn_0;
  wire rvalid_i_1_n_0;
  wire rvalid_i_2_n_0;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire \s_axi_awaddr[6] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire set_arready;
  wire set_rdata;
  wire \set_reg[18].reg_written[18][31]_i_2_n_0 ;
  wire [7:0]\set_reg[18].reg_written_reg[18][31]_0 ;
  wire [0:0]\set_reg[18].reg_written_reg[18][31]_1 ;
  wire \set_reg[19].reg_written[19][31]_i_1_n_0 ;
  wire [31:0]\set_reg[19].reg_written_reg[19][31]_0 ;
  wire \set_reg[20].reg_written[20][15]_i_1_n_0 ;
  wire [8:0]\set_reg[20].reg_written_reg[20][15]_0 ;
  wire [2:0]\waddr_saved_reg[4]_0 ;
  wire \wdata_saved_reg_n_0_[0] ;
  wire \wdata_saved_reg_n_0_[10] ;
  wire \wdata_saved_reg_n_0_[11] ;
  wire \wdata_saved_reg_n_0_[12] ;
  wire \wdata_saved_reg_n_0_[13] ;
  wire \wdata_saved_reg_n_0_[14] ;
  wire \wdata_saved_reg_n_0_[15] ;
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
  wire \wdata_saved_reg_n_0_[8] ;
  wire \wdata_saved_reg_n_0_[9] ;
  wire [0:0]write_state;
  wire [2:0]write_state_next__0;
  wire [1:0]write_state_reg;

  LUT5 #(
    .INIT(32'hEEC0FFC0)) 
    \FSM_onehot_read_state[0]_i_1 
       (.I0(\FSM_onehot_read_state[1]_i_2_n_0 ),
        .I1(read_state_reg[1]),
        .I2(s_axi_rready),
        .I3(read_state),
        .I4(s_axi_arvalid),
        .O(read_state_next__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFF0FF20FF20)) 
    \FSM_onehot_read_state[1]_i_1 
       (.I0(read_state_reg[1]),
        .I1(s_axi_rready),
        .I2(read_state_reg[0]),
        .I3(\FSM_onehot_read_state[1]_i_2_n_0 ),
        .I4(s_axi_arvalid),
        .I5(read_state),
        .O(read_state_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_read_state[1]_i_2 
       (.I0(read_state_reg[0]),
        .I1(read_delay_needed),
        .I2(ram_read),
        .O(\FSM_onehot_read_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00E0EEEE)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(set_rdata),
        .I1(read_state_reg[1]),
        .I2(read_state),
        .I3(s_axi_arvalid),
        .I4(s_axi_rready),
        .I5(read_state_reg[0]),
        .O(read_state_next__0[2]));
  (* FSM_ENCODED_STATES = "read_got_req:010,read_done:100,read_idle:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_read_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(read_state_next__0[0]),
        .Q(read_state),
        .S(SR));
  (* FSM_ENCODED_STATES = "read_got_req:010,read_done:100,read_idle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(read_state_next__0[1]),
        .Q(read_state_reg[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_got_req:010,read_done:100,read_idle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(read_state_next__0[2]),
        .Q(read_state_reg[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF8F8F000FFFFF000)) 
    \FSM_onehot_write_state[0]_i_1 
       (.I0(ram_write),
        .I1(write_state_reg[0]),
        .I2(write_state_reg[1]),
        .I3(s_axi_bready),
        .I4(write_state),
        .I5(bvalid_i_2_n_0),
        .O(write_state_next__0[0]));
  LUT6 #(
    .INIT(64'hFFFFAA08FF0CAA08)) 
    \FSM_onehot_write_state[1]_i_1 
       (.I0(awready_i_2_n_0),
        .I1(write_state_reg[1]),
        .I2(s_axi_bready),
        .I3(write_state),
        .I4(write_state_reg[0]),
        .I5(ram_write),
        .O(write_state_next__0[1]));
  LUT6 #(
    .INIT(64'hF0F020F0FFFF20F0)) 
    \FSM_onehot_write_state[2]_i_1 
       (.I0(write_state),
        .I1(bvalid_i_2_n_0),
        .I2(write_state_reg[1]),
        .I3(s_axi_bready),
        .I4(write_state_reg[0]),
        .I5(ram_write),
        .O(write_state_next__0[2]));
  (* FSM_ENCODED_STATES = "write_got_req:010,write_done:100,write_idle:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_write_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(write_state_next__0[0]),
        .Q(write_state),
        .S(SR));
  (* FSM_ENCODED_STATES = "write_got_req:010,write_done:100,write_idle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_write_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(write_state_next__0[1]),
        .Q(write_state_reg[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "write_got_req:010,write_done:100,write_idle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_write_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(write_state_next__0[2]),
        .Q(write_state_reg[1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    arready_i_1
       (.I0(s_axi_arvalid),
        .I1(read_state),
        .O(set_arready));
  FDRE arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_arready),
        .Q(s_axi_arready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    awready_i_1
       (.I0(resetn),
        .O(SR));
  LUT3 #(
    .INIT(8'h80)) 
    awready_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(write_state),
        .O(awready_i_2_n_0));
  FDRE awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(awready_i_2_n_0),
        .Q(s_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0403040434330404)) 
    bvalid_i_1
       (.I0(ram_write),
        .I1(write_state_reg[0]),
        .I2(write_state),
        .I3(s_axi_bready),
        .I4(write_state_reg[1]),
        .I5(bvalid_i_2_n_0),
        .O(bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bvalid_i_2
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(bvalid_i_2_n_0));
  FDRE bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \latched_status_bits[15]_i_1 
       (.I0(E),
        .I1(resetn),
        .O(resetn_0));
  FDRE \raddr_saved_reg[2] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \raddr_saved_reg[3] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \raddr_saved_reg[4] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \raddr_saved_reg[5] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[3]),
        .Q(raddr_saved[5]),
        .R(SR));
  FDRE \raddr_saved_reg[6] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[4]),
        .Q(raddr_saved[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    ram_reg_r1_0_31_0_5_i_1
       (.I0(\wdata_saved_reg_n_0_[17] ),
        .I1(\wdata_saved_reg_n_0_[9] ),
        .I2(\wdata_saved_reg_n_0_[25] ),
        .I3(ram_byte_index_write[0]),
        .I4(ram_byte_index_write[1]),
        .I5(\wdata_saved_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    ram_reg_r1_0_31_0_5_i_2
       (.I0(\wdata_saved_reg_n_0_[24] ),
        .I1(\wdata_saved_reg_n_0_[16] ),
        .I2(\wdata_saved_reg_n_0_[8] ),
        .I3(ram_byte_index_write[1]),
        .I4(ram_byte_index_write[0]),
        .I5(\wdata_saved_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    ram_reg_r1_0_31_0_5_i_3
       (.I0(\wdata_saved_reg_n_0_[27] ),
        .I1(\wdata_saved_reg_n_0_[19] ),
        .I2(\wdata_saved_reg_n_0_[3] ),
        .I3(ram_byte_index_write[0]),
        .I4(ram_byte_index_write[1]),
        .I5(\wdata_saved_reg_n_0_[11] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    ram_reg_r1_0_31_0_5_i_4
       (.I0(\wdata_saved_reg_n_0_[26] ),
        .I1(\wdata_saved_reg_n_0_[18] ),
        .I2(\wdata_saved_reg_n_0_[10] ),
        .I3(ram_byte_index_write[1]),
        .I4(ram_byte_index_write[0]),
        .I5(\wdata_saved_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    ram_reg_r1_0_31_0_5_i_5
       (.I0(\wdata_saved_reg_n_0_[21] ),
        .I1(\wdata_saved_reg_n_0_[13] ),
        .I2(\wdata_saved_reg_n_0_[29] ),
        .I3(ram_byte_index_write[0]),
        .I4(ram_byte_index_write[1]),
        .I5(\wdata_saved_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    ram_reg_r1_0_31_0_5_i_6
       (.I0(\wdata_saved_reg_n_0_[28] ),
        .I1(\wdata_saved_reg_n_0_[20] ),
        .I2(\wdata_saved_reg_n_0_[12] ),
        .I3(ram_byte_index_write[1]),
        .I4(ram_byte_index_write[0]),
        .I5(\wdata_saved_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    ram_reg_r1_0_31_6_7_i_1
       (.I0(\wdata_saved_reg_n_0_[31] ),
        .I1(\wdata_saved_reg_n_0_[23] ),
        .I2(\wdata_saved_reg_n_0_[7] ),
        .I3(ram_byte_index_write[0]),
        .I4(ram_byte_index_write[1]),
        .I5(\wdata_saved_reg_n_0_[15] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    ram_reg_r1_0_31_6_7_i_2
       (.I0(\wdata_saved_reg_n_0_[30] ),
        .I1(\wdata_saved_reg_n_0_[22] ),
        .I2(\wdata_saved_reg_n_0_[14] ),
        .I3(ram_byte_index_write[1]),
        .I4(ram_byte_index_write[0]),
        .I5(\wdata_saved_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[0]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [0]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[0]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(ram_word_out_reg[0]),
        .O(rdata_next[0]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[0]_i_2 
       (.I0(\rdata[31]_i_4_1 [0]),
        .I1(\rdata[31]_i_4_0 [0]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [0]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[10]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [10]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[10]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [2]),
        .O(rdata_next[10]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[10]_i_2 
       (.I0(\rdata[31]_i_4_2 [10]),
        .I1(\rdata[31]_i_4_1 [10]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [10]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[11]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [11]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[11]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [3]),
        .O(rdata_next[11]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[11]_i_2 
       (.I0(\rdata[31]_i_4_2 [11]),
        .I1(\rdata[31]_i_4_1 [11]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [11]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[12]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [12]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[12]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [4]),
        .O(rdata_next[12]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[12]_i_2 
       (.I0(\rdata[31]_i_4_2 [12]),
        .I1(\rdata[31]_i_4_1 [12]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [12]),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[13]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [13]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[13]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [5]),
        .O(rdata_next[13]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[13]_i_2 
       (.I0(\rdata[31]_i_4_1 [13]),
        .I1(\rdata[31]_i_4_0 [13]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [13]),
        .O(\rdata[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[14]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[14]_i_2_n_0 ),
        .I2(\rdata[14]_i_3_n_0 ),
        .I3(\rdata[14]_i_4_n_0 ),
        .O(rdata_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[14]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [7]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[14]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [14]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [14]),
        .O(\rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[14]_i_4 
       (.I0(\rdata_reg[31]_0 [6]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [14]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [14]),
        .O(\rdata[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[15]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[15]_i_2_n_0 ),
        .I2(\rdata[15]_i_3_n_0 ),
        .I3(\rdata[15]_i_4_n_0 ),
        .O(rdata_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[15]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [8]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[15]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [15]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [15]),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[15]_i_4 
       (.I0(\rdata_reg[31]_0 [7]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [15]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [15]),
        .O(\rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[16]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [16]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[16]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [8]),
        .O(rdata_next[16]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[16]_i_2 
       (.I0(\rdata[31]_i_4_1 [16]),
        .I1(\rdata[31]_i_4_0 [16]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [16]),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[17]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [17]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[17]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [9]),
        .O(rdata_next[17]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[17]_i_2 
       (.I0(\rdata[31]_i_4_1 [17]),
        .I1(\rdata[31]_i_4_0 [17]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [17]),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[18]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [18]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[18]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [10]),
        .O(rdata_next[18]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[18]_i_2 
       (.I0(\rdata[31]_i_4_1 [18]),
        .I1(\rdata[31]_i_4_0 [18]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [18]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[19]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [19]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[19]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [11]),
        .O(rdata_next[19]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[19]_i_2 
       (.I0(\rdata[31]_i_4_1 [19]),
        .I1(\rdata[31]_i_4_0 [19]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [19]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[1]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [1]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[1]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(ram_word_out_reg[1]),
        .O(rdata_next[1]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[1]_i_2 
       (.I0(\rdata[31]_i_4_2 [1]),
        .I1(\rdata[31]_i_4_1 [1]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[20]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [20]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[20]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [12]),
        .O(rdata_next[20]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[20]_i_2 
       (.I0(\rdata[31]_i_4_2 [20]),
        .I1(\rdata[31]_i_4_1 [20]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [20]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[21]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [21]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[21]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [13]),
        .O(rdata_next[21]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[21]_i_2 
       (.I0(\rdata[31]_i_4_1 [21]),
        .I1(\rdata[31]_i_4_0 [21]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [21]),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[22]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [22]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[22]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [14]),
        .O(rdata_next[22]));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[22]_i_2 
       (.I0(\rdata[31]_i_4_2 [22]),
        .I1(\rdata[31]_i_4_1 [22]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [22]),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [23]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[23]_i_4_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [15]),
        .O(rdata_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \rdata[23]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(raddr_saved[5]),
        .I3(raddr_saved[6]),
        .I4(Q[0]),
        .O(\rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rdata[23]_i_3 
       (.I0(raddr_saved[6]),
        .I1(raddr_saved[5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000AC000000AC0)) 
    \rdata[23]_i_4 
       (.I0(\rdata[31]_i_4_2 [23]),
        .I1(\rdata[31]_i_4_1 [23]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_0 [23]),
        .O(\rdata[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[23]_i_5 
       (.I0(raddr_saved[5]),
        .I1(raddr_saved[6]),
        .O(\rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[24]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [24]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [0]),
        .I5(\rdata[24]_i_2_n_0 ),
        .O(rdata_next[24]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[24]_i_2 
       (.I0(\rdata[24]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [16]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0F0FCF0A0F00CF)) 
    \rdata[24]_i_3 
       (.I0(\rdata[31]_i_4_0 [24]),
        .I1(\rdata[31]_i_4_1 [24]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_2 [24]),
        .O(\rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[25]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [25]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [1]),
        .I5(\rdata[25]_i_2_n_0 ),
        .O(rdata_next[25]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[25]_i_2 
       (.I0(\rdata[25]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [17]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FF00F0CCFF)) 
    \rdata[25]_i_3 
       (.I0(\rdata[31]_i_4_0 [25]),
        .I1(\rdata[31]_i_4_1 [25]),
        .I2(\rdata[31]_i_4_2 [25]),
        .I3(raddr_saved[6]),
        .I4(raddr_saved[5]),
        .I5(Q[2]),
        .O(\rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[26]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [26]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [2]),
        .I5(\rdata[26]_i_2_n_0 ),
        .O(rdata_next[26]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[26]_i_2 
       (.I0(\rdata[26]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [18]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FF00F0CCFF)) 
    \rdata[26]_i_3 
       (.I0(\rdata[31]_i_4_0 [26]),
        .I1(\rdata[31]_i_4_1 [26]),
        .I2(\rdata[31]_i_4_2 [26]),
        .I3(raddr_saved[6]),
        .I4(raddr_saved[5]),
        .I5(Q[2]),
        .O(\rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[27]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [27]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [3]),
        .I5(\rdata[27]_i_2_n_0 ),
        .O(rdata_next[27]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[27]_i_2 
       (.I0(\rdata[27]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [19]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h233F2333230F2303)) 
    \rdata[27]_i_3 
       (.I0(\rdata[31]_i_4_0 [27]),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [27]),
        .I5(\rdata[31]_i_4_2 [27]),
        .O(\rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[28]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [28]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [4]),
        .I5(\rdata[28]_i_2_n_0 ),
        .O(rdata_next[28]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[28]_i_2 
       (.I0(\rdata[28]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [20]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FF00F0CCFF)) 
    \rdata[28]_i_3 
       (.I0(\rdata[31]_i_4_0 [28]),
        .I1(\rdata[31]_i_4_1 [28]),
        .I2(\rdata[31]_i_4_2 [28]),
        .I3(raddr_saved[6]),
        .I4(raddr_saved[5]),
        .I5(Q[2]),
        .O(\rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[29]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [29]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [5]),
        .I5(\rdata[29]_i_2_n_0 ),
        .O(rdata_next[29]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[29]_i_2 
       (.I0(\rdata[29]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [21]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0F0FCF0A0F00CF)) 
    \rdata[29]_i_3 
       (.I0(\rdata[31]_i_4_0 [29]),
        .I1(\rdata[31]_i_4_1 [29]),
        .I2(raddr_saved[6]),
        .I3(raddr_saved[5]),
        .I4(Q[2]),
        .I5(\rdata[31]_i_4_2 [29]),
        .O(\rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555555FD)) 
    \rdata[2]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[31]_i_4_1 [2]),
        .I2(\rdata[2]_i_2_n_0 ),
        .I3(raddr_saved[5]),
        .I4(\rdata[2]_i_3_n_0 ),
        .I5(\rdata[2]_i_4_n_0 ),
        .O(rdata_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFCF44CC)) 
    \rdata[2]_i_3 
       (.I0(\set_reg[19].reg_written_reg[19][31]_0 [2]),
        .I1(Q[1]),
        .I2(\set_reg[20].reg_written_reg[20][15]_0 [0]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[2]_i_4 
       (.I0(ram_word_out_reg[2]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [2]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [2]),
        .O(\rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[30]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [30]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [6]),
        .I5(\rdata[30]_i_2_n_0 ),
        .O(rdata_next[30]));
  LUT6 #(
    .INIT(64'h2220222022202A28)) 
    \rdata[30]_i_2 
       (.I0(\rdata[30]_i_3_n_0 ),
        .I1(raddr_saved[6]),
        .I2(raddr_saved[5]),
        .I3(\rdata_reg[31]_0 [22]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00FF00F0CCFF)) 
    \rdata[30]_i_3 
       (.I0(\rdata[31]_i_4_0 [30]),
        .I1(\rdata[31]_i_4_1 [30]),
        .I2(\rdata[31]_i_4_2 [30]),
        .I3(raddr_saved[6]),
        .I4(raddr_saved[5]),
        .I5(Q[2]),
        .O(\rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \rdata[31]_i_1 
       (.I0(read_state_reg[0]),
        .I1(read_delay_needed),
        .I2(ram_read),
        .O(set_rdata));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444000)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\set_reg[19].reg_written_reg[19][31]_0 [31]),
        .I3(Q[0]),
        .I4(\set_reg[18].reg_written_reg[18][31]_0 [7]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(rdata_next[31]));
  LUT3 #(
    .INIT(8'hEF)) 
    \rdata[31]_i_3 
       (.I0(Q[2]),
        .I1(raddr_saved[5]),
        .I2(raddr_saved[6]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000CCCCCEEEE)) 
    \rdata[31]_i_4 
       (.I0(\rdata_reg[31]_0 [23]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(raddr_saved[6]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000CAF00000CA000)) 
    \rdata[31]_i_5 
       (.I0(\rdata[31]_i_4_0 [31]),
        .I1(\rdata[31]_i_4_1 [31]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [31]),
        .O(\rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[3]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[3]_i_2_n_0 ),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(\rdata[3]_i_4_n_0 ),
        .O(rdata_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[3]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[3]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [3]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[3]_i_4 
       (.I0(ram_word_out_reg[3]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [3]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [3]),
        .O(\rdata[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[4]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[4]_i_2_n_0 ),
        .I2(\rdata[4]_i_3_n_0 ),
        .I3(\rdata[4]_i_4_n_0 ),
        .O(rdata_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[4]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [2]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[4]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [4]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[4]_i_4 
       (.I0(ram_word_out_reg[4]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [4]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [4]),
        .O(\rdata[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[5]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[5]_i_2_n_0 ),
        .I2(\rdata[5]_i_3_n_0 ),
        .I3(\rdata[5]_i_4_n_0 ),
        .O(rdata_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[5]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[5]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [5]),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[5]_i_4 
       (.I0(ram_word_out_reg[5]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [5]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [5]),
        .O(\rdata[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[6]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[6]_i_2_n_0 ),
        .I2(\rdata[6]_i_3_n_0 ),
        .I3(\rdata[6]_i_4_n_0 ),
        .O(rdata_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[6]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[6]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [6]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [6]),
        .O(\rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[6]_i_4 
       (.I0(ram_word_out_reg[6]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [6]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [6]),
        .O(\rdata[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[7]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[7]_i_2_n_0 ),
        .I2(\rdata[7]_i_3_n_0 ),
        .I3(\rdata[7]_i_4_n_0 ),
        .O(rdata_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[7]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [5]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[7]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [7]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [7]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[7]_i_4 
       (.I0(ram_word_out_reg[7]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [7]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [7]),
        .O(\rdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \rdata[8]_i_1 
       (.I0(raddr_saved[6]),
        .I1(\rdata[8]_i_2_n_0 ),
        .I2(\rdata[8]_i_3_n_0 ),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rdata[8]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[20].reg_written_reg[20][15]_0 [6]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7070707F)) 
    \rdata[8]_i_3 
       (.I0(Q[0]),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [8]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rdata[31]_i_4_1 [8]),
        .O(\rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0011110FFF1111)) 
    \rdata[8]_i_4 
       (.I0(\rdata_reg[31]_0 [0]),
        .I1(raddr_saved[6]),
        .I2(\rdata[31]_i_4_0 [8]),
        .I3(Q[2]),
        .I4(raddr_saved[5]),
        .I5(\rdata[31]_i_4_2 [8]),
        .O(\rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \rdata[9]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\set_reg[19].reg_written_reg[19][31]_0 [9]),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[9]_i_2_n_0 ),
        .I4(\rdata[23]_i_5_n_0 ),
        .I5(\rdata_reg[31]_0 [1]),
        .O(rdata_next[9]));
  LUT6 #(
    .INIT(64'h000ACF00000AC000)) 
    \rdata[9]_i_2 
       (.I0(\rdata[31]_i_4_1 [9]),
        .I1(\rdata[31]_i_4_0 [9]),
        .I2(Q[2]),
        .I3(raddr_saved[5]),
        .I4(raddr_saved[6]),
        .I5(\rdata[31]_i_4_2 [9]),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \rdata_reg[10] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \rdata_reg[11] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \rdata_reg[12] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \rdata_reg[13] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \rdata_reg[14] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \rdata_reg[15] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \rdata_reg[16] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \rdata_reg[17] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \rdata_reg[18] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \rdata_reg[19] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \rdata_reg[1] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \rdata_reg[20] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \rdata_reg[21] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \rdata_reg[22] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \rdata_reg[23] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \rdata_reg[24] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \rdata_reg[25] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \rdata_reg[26] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \rdata_reg[27] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \rdata_reg[28] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \rdata_reg[29] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \rdata_reg[2] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \rdata_reg[30] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \rdata_reg[31] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \rdata_reg[3] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \rdata_reg[4] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \rdata_reg[5] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \rdata_reg[6] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \rdata_reg[7] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \rdata_reg[8] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \rdata_reg[9] 
       (.C(clk),
        .CE(set_rdata),
        .D(rdata_next[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h01FF)) 
    read_delay_needed_i_1
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[4]),
        .O(read_delay_needed_i_1_n_0));
  FDRE read_delay_needed_reg
       (.C(clk),
        .CE(set_arready),
        .D(read_delay_needed_i_1_n_0),
        .Q(read_delay_needed),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \reg_saved[9][31]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[4]),
        .I3(set_arready),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h0522007705000500)) 
    rvalid_i_1
       (.I0(read_state),
        .I1(s_axi_arvalid),
        .I2(rvalid_i_2_n_0),
        .I3(read_state_reg[0]),
        .I4(s_axi_rready),
        .I5(read_state_reg[1]),
        .O(rvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rvalid_i_2
       (.I0(ram_read),
        .I1(read_delay_needed),
        .O(rvalid_i_2_n_0));
  FDRE rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \set_reg[18].reg_written[18][31]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(\s_axi_awaddr[6] ),
        .I4(write_state),
        .I5(s_axi_awaddr[3]),
        .O(\set_reg[18].reg_written[18][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \set_reg[18].reg_written[18][31]_i_3 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .O(\s_axi_awaddr[6] ));
  FDRE \set_reg[18].reg_written_reg[18][24] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [0]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][25] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [1]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][26] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [2]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][27] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [3]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][28] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [4]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][29] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [5]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][30] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [6]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[18].reg_written_reg[18][31] 
       (.C(clk),
        .CE(\set_reg[18].reg_written[18][31]_i_2_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\set_reg[18].reg_written_reg[18][31]_0 [7]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \set_reg[19].reg_written[19][31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(\s_axi_awaddr[6] ),
        .I4(write_state),
        .I5(s_axi_awaddr[3]),
        .O(\set_reg[19].reg_written[19][31]_i_1_n_0 ));
  FDRE \set_reg[19].reg_written_reg[19][0] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [0]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][10] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [10]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][11] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [11]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][12] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [12]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][13] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [13]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][14] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [14]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][15] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [15]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][16] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [16]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][17] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [17]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][18] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [18]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][19] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [19]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][1] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [1]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][20] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [20]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][21] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [21]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][22] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [22]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][23] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [23]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][24] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [24]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][25] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [25]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][26] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [26]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][27] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [27]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][28] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [28]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][29] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [29]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][2] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [2]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][30] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [30]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][31] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [31]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][3] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [3]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][4] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [4]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][5] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [5]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][6] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [6]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][7] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [7]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][8] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [8]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  FDRE \set_reg[19].reg_written_reg[19][9] 
       (.C(clk),
        .CE(\set_reg[19].reg_written[19][31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\set_reg[19].reg_written_reg[19][31]_0 [9]),
        .R(\set_reg[18].reg_written_reg[18][31]_1 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \set_reg[20].reg_written[20][15]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(write_state),
        .I2(\s_axi_awaddr[6] ),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[0]),
        .O(\set_reg[20].reg_written[20][15]_i_1_n_0 ));
  FDRE \set_reg[20].reg_written_reg[20][14] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [7]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][15] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [8]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][2] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [0]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][3] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [1]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][4] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [2]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][5] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [3]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][6] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [4]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][7] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [5]),
        .R(SR));
  FDRE \set_reg[20].reg_written_reg[20][8] 
       (.C(clk),
        .CE(\set_reg[20].reg_written[20][15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\set_reg[20].reg_written_reg[20][15]_0 [6]),
        .R(SR));
  FDRE \waddr_saved_reg[2] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_awaddr[0]),
        .Q(\waddr_saved_reg[4]_0 [0]),
        .R(SR));
  FDRE \waddr_saved_reg[3] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_awaddr[1]),
        .Q(\waddr_saved_reg[4]_0 [1]),
        .R(SR));
  FDRE \waddr_saved_reg[4] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_awaddr[2]),
        .Q(\waddr_saved_reg[4]_0 [2]),
        .R(SR));
  FDRE \wdata_saved_reg[0] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(\wdata_saved_reg_n_0_[0] ),
        .R(SR));
  FDRE \wdata_saved_reg[10] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(\wdata_saved_reg_n_0_[10] ),
        .R(SR));
  FDRE \wdata_saved_reg[11] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(\wdata_saved_reg_n_0_[11] ),
        .R(SR));
  FDRE \wdata_saved_reg[12] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(\wdata_saved_reg_n_0_[12] ),
        .R(SR));
  FDRE \wdata_saved_reg[13] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(\wdata_saved_reg_n_0_[13] ),
        .R(SR));
  FDRE \wdata_saved_reg[14] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(\wdata_saved_reg_n_0_[14] ),
        .R(SR));
  FDRE \wdata_saved_reg[15] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(\wdata_saved_reg_n_0_[15] ),
        .R(SR));
  FDRE \wdata_saved_reg[16] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(\wdata_saved_reg_n_0_[16] ),
        .R(SR));
  FDRE \wdata_saved_reg[17] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(\wdata_saved_reg_n_0_[17] ),
        .R(SR));
  FDRE \wdata_saved_reg[18] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(\wdata_saved_reg_n_0_[18] ),
        .R(SR));
  FDRE \wdata_saved_reg[19] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(\wdata_saved_reg_n_0_[19] ),
        .R(SR));
  FDRE \wdata_saved_reg[1] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(\wdata_saved_reg_n_0_[1] ),
        .R(SR));
  FDRE \wdata_saved_reg[20] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[20]),
        .Q(\wdata_saved_reg_n_0_[20] ),
        .R(SR));
  FDRE \wdata_saved_reg[21] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[21]),
        .Q(\wdata_saved_reg_n_0_[21] ),
        .R(SR));
  FDRE \wdata_saved_reg[22] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[22]),
        .Q(\wdata_saved_reg_n_0_[22] ),
        .R(SR));
  FDRE \wdata_saved_reg[23] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[23]),
        .Q(\wdata_saved_reg_n_0_[23] ),
        .R(SR));
  FDRE \wdata_saved_reg[24] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[24]),
        .Q(\wdata_saved_reg_n_0_[24] ),
        .R(SR));
  FDRE \wdata_saved_reg[25] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[25]),
        .Q(\wdata_saved_reg_n_0_[25] ),
        .R(SR));
  FDRE \wdata_saved_reg[26] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[26]),
        .Q(\wdata_saved_reg_n_0_[26] ),
        .R(SR));
  FDRE \wdata_saved_reg[27] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[27]),
        .Q(\wdata_saved_reg_n_0_[27] ),
        .R(SR));
  FDRE \wdata_saved_reg[28] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[28]),
        .Q(\wdata_saved_reg_n_0_[28] ),
        .R(SR));
  FDRE \wdata_saved_reg[29] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[29]),
        .Q(\wdata_saved_reg_n_0_[29] ),
        .R(SR));
  FDRE \wdata_saved_reg[2] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(\wdata_saved_reg_n_0_[2] ),
        .R(SR));
  FDRE \wdata_saved_reg[30] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[30]),
        .Q(\wdata_saved_reg_n_0_[30] ),
        .R(SR));
  FDRE \wdata_saved_reg[31] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[31]),
        .Q(\wdata_saved_reg_n_0_[31] ),
        .R(SR));
  FDRE \wdata_saved_reg[3] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(\wdata_saved_reg_n_0_[3] ),
        .R(SR));
  FDRE \wdata_saved_reg[4] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(\wdata_saved_reg_n_0_[4] ),
        .R(SR));
  FDRE \wdata_saved_reg[5] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(\wdata_saved_reg_n_0_[5] ),
        .R(SR));
  FDRE \wdata_saved_reg[6] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(\wdata_saved_reg_n_0_[6] ),
        .R(SR));
  FDRE \wdata_saved_reg[7] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(\wdata_saved_reg_n_0_[7] ),
        .R(SR));
  FDRE \wdata_saved_reg[8] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(\wdata_saved_reg_n_0_[8] ),
        .R(SR));
  FDRE \wdata_saved_reg[9] 
       (.C(clk),
        .CE(awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(\wdata_saved_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_sd_card" *) 
module block_design_sd_card_0_axi_sd_card
   (s_axi_awready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rvalid,
    s_axi_rdata,
    out_tdata,
    out_tlast,
    out_tvalid,
    in_tready,
    fifo_out_resetn,
    sd_dat3_pullup,
    fifo_out_tready_masked,
    fifo_out_tvalid_masked,
    fifo_in_resetn,
    interrupt,
    sd_cmd,
    sd_dat,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awaddr,
    resetn,
    s_axi_araddr,
    clk,
    s_axi_wdata,
    fifo_out_almostfull,
    out_tready,
    in_tdata,
    in_tlast,
    in_tvalid,
    sd_clk,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    fifo_out_tready_in,
    fifo_out_tvalid_in);
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  output [7:0]out_tdata;
  output out_tlast;
  output out_tvalid;
  output in_tready;
  output fifo_out_resetn;
  output sd_dat3_pullup;
  output fifo_out_tready_masked;
  output fifo_out_tvalid_masked;
  output fifo_in_resetn;
  output interrupt;
  inout sd_cmd;
  inout [3:0]sd_dat;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [4:0]s_axi_awaddr;
  input resetn;
  input [4:0]s_axi_araddr;
  input clk;
  input [31:0]s_axi_wdata;
  input fifo_out_almostfull;
  input out_tready;
  input [7:0]in_tdata;
  input in_tlast;
  input in_tvalid;
  input sd_clk;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input fifo_out_tready_in;
  input fifo_out_tvalid_in;

  wire [31:0]\assign_reg_mux[2].reg_needed.mux ;
  wire \assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0 ;
  wire [31:0]\assign_reg_mux[3].reg_needed.mux ;
  wire \assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0 ;
  wire \assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0 ;
  wire [31:0]\assign_reg_mux[4].reg_needed.mux ;
  wire axi4_lite_intf_inst_n_0;
  wire axi4_lite_intf_inst_n_5;
  wire axi4_lite_intf_inst_n_6;
  wire axi4_lite_intf_inst_n_60;
  wire axi4_lite_intf_inst_n_61;
  wire axi4_lite_intf_inst_n_62;
  wire axi4_lite_intf_inst_n_63;
  wire axi4_lite_intf_inst_n_64;
  wire axi4_lite_intf_inst_n_65;
  wire axi4_lite_intf_inst_n_66;
  wire axi4_lite_intf_inst_n_67;
  wire clk;
  wire [4:0]dev_ram_addr;
  wire [7:0]dev_ram_data;
  wire [7:0]dev_ram_data0;
  wire dev_ram_read_en;
  wire device_n_168;
  wire device_n_169;
  wire device_n_175;
  wire device_n_176;
  wire device_n_177;
  wire device_n_178;
  wire device_n_179;
  wire device_n_180;
  wire device_n_181;
  wire device_n_182;
  wire device_n_183;
  wire device_n_184;
  wire device_n_185;
  wire device_n_186;
  wire device_n_187;
  wire device_n_188;
  wire device_n_189;
  wire device_n_190;
  wire device_n_191;
  wire device_n_192;
  wire device_n_193;
  wire device_n_298;
  wire device_n_299;
  wire device_n_300;
  wire device_n_301;
  wire device_n_302;
  wire device_n_303;
  wire device_n_304;
  wire device_n_305;
  wire device_n_306;
  wire device_n_307;
  wire device_n_308;
  wire device_n_309;
  wire device_n_310;
  wire device_n_311;
  wire device_n_312;
  wire device_n_313;
  wire device_n_314;
  wire device_n_315;
  wire device_n_316;
  wire device_n_317;
  wire device_n_318;
  wire device_n_319;
  wire device_n_320;
  wire fifo_in_resetn;
  wire fifo_out_almostfull;
  wire fifo_out_resetn;
  wire fifo_out_tready_in;
  wire fifo_out_tready_masked;
  wire fifo_out_tvalid_in;
  wire fifo_out_tvalid_masked;
  wire [7:0]in_tdata;
  wire in_tlast;
  wire in_tready;
  wire in_tvalid;
  wire interrupt;
  wire [15:2]latched_status_bits;
  wire [15:2]latched_status_bits_next;
  wire [8:8]onread_pre;
  wire [7:0]out_tdata;
  wire out_tlast;
  wire out_tready;
  wire out_tvalid;
  wire p_28_out;
  wire [1:0]p_2_in;
  wire p_2_out;
  wire p_4_out;
  wire p_6_out;
  wire [4:2]raddr_saved;
  wire \ram_byte_index_read[0]_i_1_n_0 ;
  wire \ram_byte_index_read[1]_i_1_n_0 ;
  wire [1:0]ram_byte_index_write;
  wire \ram_byte_index_write[0]_i_1_n_0 ;
  wire \ram_byte_index_write[1]_i_1_n_0 ;
  wire ram_read;
  wire ram_read_i_1_n_0;
  wire [7:0]ram_word_out0;
  wire [23:0]ram_word_out_reg;
  wire \ram_word_out_reg_n_0_[24] ;
  wire \ram_word_out_reg_n_0_[25] ;
  wire \ram_word_out_reg_n_0_[26] ;
  wire \ram_word_out_reg_n_0_[27] ;
  wire \ram_word_out_reg_n_0_[28] ;
  wire \ram_word_out_reg_n_0_[29] ;
  wire \ram_word_out_reg_n_0_[30] ;
  wire \ram_word_out_reg_n_0_[31] ;
  wire ram_write;
  wire ram_write_i_1_n_0;
  wire ram_write_i_2_n_0;
  wire [2:0]\reg_clear_always[21]_13 ;
  wire [31:0]\reg_clear_always[22]_11 ;
  wire [31:0]\reg_clear_always[23]_12 ;
  wire [31:0]reg_read_only;
  wire [14:0]\reg_saved_in[10]_5 ;
  wire [31:0]\reg_saved_in[11]_7 ;
  wire [31:0]\reg_saved_in[12]_4 ;
  wire [31:0]\reg_saved_in[13]_8 ;
  wire [31:0]\reg_saved_in[14]_9 ;
  wire [31:0]\reg_saved_in[15]_10 ;
  wire [31:0]\reg_saved_in[17]_3 ;
  wire [31:0]\reg_saved_in[9]_6 ;
  wire [14:0]\reg_saved_reg[10]_15 ;
  wire [31:0]\reg_saved_reg[11]_16 ;
  wire [31:0]\reg_saved_reg[12]_17 ;
  wire [31:0]\reg_saved_reg[13]_18 ;
  wire [31:0]\reg_saved_reg[14]_19 ;
  wire [31:0]\reg_saved_reg[15]_20 ;
  wire [22:0]\reg_saved_reg[16]_21 ;
  wire [31:0]\reg_saved_reg[17]_22 ;
  wire [31:0]\reg_saved_reg[9]_14 ;
  wire [31:24]\reg_written[18]_0 ;
  wire [31:0]\reg_written[19]_1 ;
  wire [15:2]\reg_written[20]_2 ;
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
  wire s_axi_wvalid;
  wire sd_clk;
  wire sd_cmd;
  wire sd_cmd_i;
  wire sd_cmd_o;
  wire sd_cmd_t;
  wire [3:0]sd_dat;
  wire sd_dat3_pullup;
  wire sd_dat3_pullup_off;
  wire [3:0]sd_dat_i;
  wire [3:0]sd_dat_o;
  wire [3:0]sd_dat_t;
  wire \set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0 ;
  wire \set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0 ;
  wire \set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0 ;
  wire [4:2]waddr_saved;
  wire [1:0]NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_6_7_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[19]_i_1 
       (.I0(\reg_saved_reg[9]_14 [19]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [19]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[20]_i_1 
       (.I0(\reg_saved_reg[9]_14 [20]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [20]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[21]_i_1 
       (.I0(\reg_saved_reg[9]_14 [21]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [21]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[22]_i_1 
       (.I0(\reg_saved_reg[9]_14 [22]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [22]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[23]_i_1 
       (.I0(\reg_saved_reg[9]_14 [23]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [23]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[24]_i_1 
       (.I0(\reg_saved_reg[9]_14 [24]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [24]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[25]_i_1 
       (.I0(\reg_saved_reg[9]_14 [25]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [25]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[26]_i_1 
       (.I0(\reg_saved_reg[9]_14 [26]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [26]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[27]_i_1 
       (.I0(\reg_saved_reg[9]_14 [27]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [27]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[28]_i_1 
       (.I0(\reg_saved_reg[9]_14 [28]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [28]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[29]_i_1 
       (.I0(\reg_saved_reg[9]_14 [29]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [29]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[30]_i_1 
       (.I0(\reg_saved_reg[9]_14 [30]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [30]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \assign_reg_mux[2].reg_needed.mux[31]_i_1 
       (.I0(\reg_saved_reg[9]_14 [31]),
        .I1(s_axi_araddr[1]),
        .I2(\reg_saved_reg[11]_16 [31]),
        .I3(s_axi_araddr[0]),
        .O(\assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0 ));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_193),
        .Q(\assign_reg_mux[2].reg_needed.mux [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_183),
        .Q(\assign_reg_mux[2].reg_needed.mux [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_182),
        .Q(\assign_reg_mux[2].reg_needed.mux [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_181),
        .Q(\assign_reg_mux[2].reg_needed.mux [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_180),
        .Q(\assign_reg_mux[2].reg_needed.mux [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_179),
        .Q(\assign_reg_mux[2].reg_needed.mux [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_178),
        .Q(\assign_reg_mux[2].reg_needed.mux [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_177),
        .Q(\assign_reg_mux[2].reg_needed.mux [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_176),
        .Q(\assign_reg_mux[2].reg_needed.mux [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_175),
        .Q(\assign_reg_mux[2].reg_needed.mux [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_192),
        .Q(\assign_reg_mux[2].reg_needed.mux [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_191),
        .Q(\assign_reg_mux[2].reg_needed.mux [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0 ),
        .Q(\assign_reg_mux[2].reg_needed.mux [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_190),
        .Q(\assign_reg_mux[2].reg_needed.mux [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_189),
        .Q(\assign_reg_mux[2].reg_needed.mux [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_188),
        .Q(\assign_reg_mux[2].reg_needed.mux [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_187),
        .Q(\assign_reg_mux[2].reg_needed.mux [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_186),
        .Q(\assign_reg_mux[2].reg_needed.mux [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_185),
        .Q(\assign_reg_mux[2].reg_needed.mux [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[2].reg_needed.mux_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(device_n_184),
        .Q(\assign_reg_mux[2].reg_needed.mux [9]),
        .R(axi4_lite_intf_inst_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[0]_i_1 
       (.I0(\reg_saved_reg[15]_20 [0]),
        .I1(\reg_saved_reg[13]_18 [0]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [0]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [0]),
        .O(\assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[10]_i_1 
       (.I0(\reg_saved_reg[15]_20 [10]),
        .I1(\reg_saved_reg[13]_18 [10]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [10]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [10]),
        .O(\assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[11]_i_1 
       (.I0(\reg_saved_reg[15]_20 [11]),
        .I1(\reg_saved_reg[13]_18 [11]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [11]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [11]),
        .O(\assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[12]_i_1 
       (.I0(\reg_saved_reg[15]_20 [12]),
        .I1(\reg_saved_reg[13]_18 [12]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [12]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [12]),
        .O(\assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[13]_i_1 
       (.I0(\reg_saved_reg[15]_20 [13]),
        .I1(\reg_saved_reg[13]_18 [13]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [13]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [13]),
        .O(\assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[14]_i_1 
       (.I0(\reg_saved_reg[15]_20 [14]),
        .I1(\reg_saved_reg[13]_18 [14]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [14]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [14]),
        .O(\assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[15]_i_1 
       (.I0(\reg_saved_reg[15]_20 [15]),
        .I1(\reg_saved_reg[13]_18 [15]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [15]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [15]),
        .O(\assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[16]_i_1 
       (.I0(\reg_saved_reg[15]_20 [16]),
        .I1(\reg_saved_reg[13]_18 [16]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [16]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [16]),
        .O(\assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[17]_i_1 
       (.I0(\reg_saved_reg[15]_20 [17]),
        .I1(\reg_saved_reg[13]_18 [17]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [17]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [17]),
        .O(\assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[18]_i_1 
       (.I0(\reg_saved_reg[15]_20 [18]),
        .I1(\reg_saved_reg[13]_18 [18]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [18]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [18]),
        .O(\assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[19]_i_1 
       (.I0(\reg_saved_reg[15]_20 [19]),
        .I1(\reg_saved_reg[13]_18 [19]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [19]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [19]),
        .O(\assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[1]_i_1 
       (.I0(\reg_saved_reg[15]_20 [1]),
        .I1(\reg_saved_reg[13]_18 [1]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [1]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [1]),
        .O(\assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[20]_i_1 
       (.I0(\reg_saved_reg[15]_20 [20]),
        .I1(\reg_saved_reg[13]_18 [20]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [20]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [20]),
        .O(\assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[21]_i_1 
       (.I0(\reg_saved_reg[15]_20 [21]),
        .I1(\reg_saved_reg[13]_18 [21]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [21]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [21]),
        .O(\assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[22]_i_1 
       (.I0(\reg_saved_reg[15]_20 [22]),
        .I1(\reg_saved_reg[13]_18 [22]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [22]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [22]),
        .O(\assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[23]_i_1 
       (.I0(\reg_saved_reg[15]_20 [23]),
        .I1(\reg_saved_reg[13]_18 [23]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [23]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [23]),
        .O(\assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[24]_i_1 
       (.I0(\reg_saved_reg[15]_20 [24]),
        .I1(\reg_saved_reg[13]_18 [24]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [24]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [24]),
        .O(\assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[25]_i_1 
       (.I0(\reg_saved_reg[15]_20 [25]),
        .I1(\reg_saved_reg[13]_18 [25]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [25]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [25]),
        .O(\assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[26]_i_1 
       (.I0(\reg_saved_reg[15]_20 [26]),
        .I1(\reg_saved_reg[13]_18 [26]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [26]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [26]),
        .O(\assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[27]_i_1 
       (.I0(\reg_saved_reg[15]_20 [27]),
        .I1(\reg_saved_reg[13]_18 [27]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [27]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [27]),
        .O(\assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[28]_i_1 
       (.I0(\reg_saved_reg[15]_20 [28]),
        .I1(\reg_saved_reg[13]_18 [28]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [28]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [28]),
        .O(\assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[29]_i_1 
       (.I0(\reg_saved_reg[15]_20 [29]),
        .I1(\reg_saved_reg[13]_18 [29]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [29]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [29]),
        .O(\assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[2]_i_1 
       (.I0(\reg_saved_reg[15]_20 [2]),
        .I1(\reg_saved_reg[13]_18 [2]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [2]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [2]),
        .O(\assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[30]_i_1 
       (.I0(\reg_saved_reg[15]_20 [30]),
        .I1(\reg_saved_reg[13]_18 [30]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [30]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [30]),
        .O(\assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[31]_i_1 
       (.I0(\reg_saved_reg[15]_20 [31]),
        .I1(\reg_saved_reg[13]_18 [31]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [31]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [31]),
        .O(\assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[3]_i_1 
       (.I0(\reg_saved_reg[15]_20 [3]),
        .I1(\reg_saved_reg[13]_18 [3]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [3]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [3]),
        .O(\assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[4]_i_1 
       (.I0(\reg_saved_reg[15]_20 [4]),
        .I1(\reg_saved_reg[13]_18 [4]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [4]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [4]),
        .O(\assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[5]_i_1 
       (.I0(\reg_saved_reg[15]_20 [5]),
        .I1(\reg_saved_reg[13]_18 [5]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [5]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [5]),
        .O(\assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[6]_i_1 
       (.I0(\reg_saved_reg[15]_20 [6]),
        .I1(\reg_saved_reg[13]_18 [6]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [6]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [6]),
        .O(\assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[7]_i_1 
       (.I0(\reg_saved_reg[15]_20 [7]),
        .I1(\reg_saved_reg[13]_18 [7]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [7]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [7]),
        .O(\assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[8]_i_1 
       (.I0(\reg_saved_reg[15]_20 [8]),
        .I1(\reg_saved_reg[13]_18 [8]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [8]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [8]),
        .O(\assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[3].reg_needed.mux[9]_i_1 
       (.I0(\reg_saved_reg[15]_20 [9]),
        .I1(\reg_saved_reg[13]_18 [9]),
        .I2(s_axi_araddr[0]),
        .I3(\reg_saved_reg[14]_19 [9]),
        .I4(s_axi_araddr[1]),
        .I5(\reg_saved_reg[12]_17 [9]),
        .O(\assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0 ));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[3].reg_needed.mux_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0 ),
        .Q(\assign_reg_mux[3].reg_needed.mux [9]),
        .R(axi4_lite_intf_inst_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[0]_i_1 
       (.I0(\reg_saved_reg[16]_21 [0]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [0]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[10]_i_1 
       (.I0(\reg_saved_reg[16]_21 [10]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [10]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[10]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[11]_i_1 
       (.I0(\reg_saved_reg[16]_21 [11]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [11]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[11]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[12]_i_1 
       (.I0(\reg_saved_reg[16]_21 [12]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [12]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[12]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[13]_i_1 
       (.I0(\reg_saved_reg[16]_21 [13]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [13]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[13]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[14]_i_1 
       (.I0(\reg_saved_reg[16]_21 [14]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [14]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[14]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[15]_i_1 
       (.I0(\reg_saved_reg[16]_21 [15]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [15]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[15]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[16]_i_1 
       (.I0(\reg_saved_reg[16]_21 [16]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [16]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[17]_i_1 
       (.I0(\reg_saved_reg[16]_21 [17]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [17]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[17]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[18]_i_1 
       (.I0(\reg_saved_reg[16]_21 [18]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [18]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[19]_i_1 
       (.I0(\reg_saved_reg[16]_21 [19]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [19]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[1]_i_1 
       (.I0(\reg_saved_reg[16]_21 [1]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [1]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[20]_i_1 
       (.I0(\reg_saved_reg[16]_21 [20]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [20]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[21]_i_1 
       (.I0(\reg_saved_reg[16]_21 [21]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [21]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[21]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[22]_i_1 
       (.I0(\reg_saved_reg[16]_21 [22]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [22]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[22]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[23]_i_1 
       (.I0(\reg_saved_reg[17]_22 [23]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[23]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[24]_i_1 
       (.I0(\reg_saved_reg[17]_22 [24]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[24]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[25]_i_1 
       (.I0(\reg_saved_reg[17]_22 [25]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[25]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[26]_i_1 
       (.I0(\reg_saved_reg[17]_22 [26]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[26]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[27]_i_1 
       (.I0(\reg_saved_reg[17]_22 [27]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[27]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[28]_i_1 
       (.I0(\reg_saved_reg[17]_22 [28]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[28]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[29]_i_1 
       (.I0(\reg_saved_reg[17]_22 [29]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[2]_i_1 
       (.I0(\reg_saved_reg[16]_21 [2]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [2]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[30]_i_1 
       (.I0(\reg_saved_reg[17]_22 [30]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[30]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \assign_reg_mux[4].reg_needed.mux[31]_i_1 
       (.I0(\reg_saved_reg[17]_22 [31]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .O(reg_read_only[31]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[3]_i_1 
       (.I0(\reg_saved_reg[16]_21 [3]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [3]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[4]_i_1 
       (.I0(\reg_saved_reg[16]_21 [4]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [4]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[5]_i_1 
       (.I0(\reg_saved_reg[16]_21 [5]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [5]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[6]_i_1 
       (.I0(\reg_saved_reg[16]_21 [6]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [6]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[7]_i_1 
       (.I0(\reg_saved_reg[16]_21 [7]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [7]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[8]_i_1 
       (.I0(\reg_saved_reg[16]_21 [8]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [8]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \assign_reg_mux[4].reg_needed.mux[9]_i_1 
       (.I0(\reg_saved_reg[16]_21 [9]),
        .I1(s_axi_araddr[0]),
        .I2(\reg_saved_reg[17]_22 [9]),
        .I3(s_axi_araddr[1]),
        .O(reg_read_only[9]));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[0]),
        .Q(\assign_reg_mux[4].reg_needed.mux [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[10]),
        .Q(\assign_reg_mux[4].reg_needed.mux [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[11]),
        .Q(\assign_reg_mux[4].reg_needed.mux [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[12]),
        .Q(\assign_reg_mux[4].reg_needed.mux [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[13]),
        .Q(\assign_reg_mux[4].reg_needed.mux [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[14]),
        .Q(\assign_reg_mux[4].reg_needed.mux [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[15]),
        .Q(\assign_reg_mux[4].reg_needed.mux [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[16]),
        .Q(\assign_reg_mux[4].reg_needed.mux [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[17]),
        .Q(\assign_reg_mux[4].reg_needed.mux [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[18]),
        .Q(\assign_reg_mux[4].reg_needed.mux [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[19]),
        .Q(\assign_reg_mux[4].reg_needed.mux [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[1]),
        .Q(\assign_reg_mux[4].reg_needed.mux [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[20]),
        .Q(\assign_reg_mux[4].reg_needed.mux [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[21]),
        .Q(\assign_reg_mux[4].reg_needed.mux [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[22]),
        .Q(\assign_reg_mux[4].reg_needed.mux [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[23]),
        .Q(\assign_reg_mux[4].reg_needed.mux [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[24]),
        .Q(\assign_reg_mux[4].reg_needed.mux [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[25]),
        .Q(\assign_reg_mux[4].reg_needed.mux [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[26]),
        .Q(\assign_reg_mux[4].reg_needed.mux [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[27]),
        .Q(\assign_reg_mux[4].reg_needed.mux [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[28]),
        .Q(\assign_reg_mux[4].reg_needed.mux [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[29]),
        .Q(\assign_reg_mux[4].reg_needed.mux [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[2]),
        .Q(\assign_reg_mux[4].reg_needed.mux [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[30]),
        .Q(\assign_reg_mux[4].reg_needed.mux [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[31]),
        .Q(\assign_reg_mux[4].reg_needed.mux [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[3]),
        .Q(\assign_reg_mux[4].reg_needed.mux [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[4]),
        .Q(\assign_reg_mux[4].reg_needed.mux [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[5]),
        .Q(\assign_reg_mux[4].reg_needed.mux [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[6]),
        .Q(\assign_reg_mux[4].reg_needed.mux [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[7]),
        .Q(\assign_reg_mux[4].reg_needed.mux [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[8]),
        .Q(\assign_reg_mux[4].reg_needed.mux [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \assign_reg_mux[4].reg_needed.mux_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_read_only[9]),
        .Q(\assign_reg_mux[4].reg_needed.mux [9]),
        .R(axi4_lite_intf_inst_n_0));
  block_design_sd_card_0_axi4_lite_intf axi4_lite_intf_inst
       (.E(onread_pre),
        .Q(raddr_saved),
        .SR(axi4_lite_intf_inst_n_0),
        .clk(clk),
        .p_1_in({axi4_lite_intf_inst_n_60,axi4_lite_intf_inst_n_61,axi4_lite_intf_inst_n_62,axi4_lite_intf_inst_n_63,axi4_lite_intf_inst_n_64,axi4_lite_intf_inst_n_65,axi4_lite_intf_inst_n_66,axi4_lite_intf_inst_n_67}),
        .ram_byte_index_write(ram_byte_index_write),
        .ram_read(ram_read),
        .ram_word_out_reg(ram_word_out_reg[7:0]),
        .ram_write(ram_write),
        .\rdata[31]_i_4_0 (\assign_reg_mux[3].reg_needed.mux ),
        .\rdata[31]_i_4_1 (\assign_reg_mux[4].reg_needed.mux ),
        .\rdata[31]_i_4_2 (\assign_reg_mux[2].reg_needed.mux ),
        .\rdata_reg[31]_0 ({\ram_word_out_reg_n_0_[31] ,\ram_word_out_reg_n_0_[30] ,\ram_word_out_reg_n_0_[29] ,\ram_word_out_reg_n_0_[28] ,\ram_word_out_reg_n_0_[27] ,\ram_word_out_reg_n_0_[26] ,\ram_word_out_reg_n_0_[25] ,\ram_word_out_reg_n_0_[24] ,ram_word_out_reg[23:8]}),
        .resetn(resetn),
        .resetn_0(axi4_lite_intf_inst_n_6),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[6] (axi4_lite_intf_inst_n_5),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\set_reg[18].reg_written_reg[18][31]_0 (\reg_written[18]_0 ),
        .\set_reg[18].reg_written_reg[18][31]_1 (p_28_out),
        .\set_reg[19].reg_written_reg[19][31]_0 (\reg_written[19]_1 ),
        .\set_reg[20].reg_written_reg[20][15]_0 ({\reg_written[20]_2 [15:14],\reg_written[20]_2 [8:2]}),
        .\waddr_saved_reg[4]_0 (waddr_saved));
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
        .T(sd_dat_t[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[1].buf_dat 
       (.I(sd_dat_o[1]),
        .IO(sd_dat[1]),
        .O(sd_dat_i[1]),
        .T(sd_dat_t[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[2].buf_dat 
       (.I(sd_dat_o[2]),
        .IO(sd_dat[2]),
        .O(sd_dat_i[2]),
        .T(sd_dat_t[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \buf_dat[3].buf_dat 
       (.I(sd_dat_o[3]),
        .IO(sd_dat[3]),
        .O(sd_dat_i[3]),
        .T(sd_dat_t[3]));
  FDRE \dev_ram_data_reg[0] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[0]),
        .Q(dev_ram_data[0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[1] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[1]),
        .Q(dev_ram_data[1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[2] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[2]),
        .Q(dev_ram_data[2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[3] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[3]),
        .Q(dev_ram_data[3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[4] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[4]),
        .Q(dev_ram_data[4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[5] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[5]),
        .Q(dev_ram_data[5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[6] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[6]),
        .Q(dev_ram_data[6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \dev_ram_data_reg[7] 
       (.C(clk),
        .CE(dev_ram_read_en),
        .D(dev_ram_data0[7]),
        .Q(dev_ram_data[7]),
        .R(axi4_lite_intf_inst_n_0));
  block_design_sd_card_0_device device
       (.D(\reg_saved_in[17]_3 ),
        .E(dev_ram_read_en),
        .Q(\reg_saved_in[15]_10 ),
        .SR(axi4_lite_intf_inst_n_0),
        .\assign_reg_mux[2].reg_needed.mux_reg[14] ({\reg_saved_reg[10]_15 [14:8],\reg_saved_reg[10]_15 [6:0]}),
        .\assign_reg_mux[2].reg_needed.mux_reg[15] ({latched_status_bits[15:14],latched_status_bits[8],latched_status_bits[6:2]}),
        .\assign_reg_mux[2].reg_needed.mux_reg[18] (\reg_saved_reg[11]_16 [18:0]),
        .\assign_reg_mux[2].reg_needed.mux_reg[18]_0 ({\reg_saved_reg[9]_14 [18:13],\reg_saved_reg[9]_14 [11:0]}),
        .\card_status_reg[31] ({\reg_clear_always[22]_11 [31:13],\reg_clear_always[22]_11 [7:0]}),
        .\card_status_reg[31]_0 ({\reg_clear_always[23]_12 [31:13],\reg_clear_always[23]_12 [7:0]}),
        .clk(clk),
        .cmd_arg(\reg_saved_in[12]_4 ),
        .dev_ram_data(dev_ram_data),
        .fifo_in_resetn(fifo_in_resetn),
        .fifo_out_almostfull(fifo_out_almostfull),
        .fifo_out_resetn(fifo_out_resetn),
        .fifo_out_tready_in(fifo_out_tready_in),
        .fifo_out_tready_masked(fifo_out_tready_masked),
        .fifo_out_tvalid_in(fifo_out_tvalid_in),
        .fifo_out_tvalid_masked(fifo_out_tvalid_masked),
        .\got_cmd0_reg[0] (p_28_out),
        .in_tdata(in_tdata),
        .in_tlast(in_tlast),
        .in_tready(in_tready),
        .in_tvalid(in_tvalid),
        .interrupt(interrupt),
        .interrupt_INST_0_i_2({\reg_written[20]_2 [15:14],\reg_written[20]_2 [8:2]}),
        .\latched_status_bits_reg[15] ({latched_status_bits_next[15:14],latched_status_bits_next[8],latched_status_bits_next[6:2]}),
        .\ocr_high_byte_reg[31]_0 (\reg_written[18]_0 ),
        .out_tdata(out_tdata),
        .out_tlast(out_tlast),
        .out_tready(out_tready),
        .out_tvalid(out_tvalid),
        .ram_addr({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .\reg_clear_always[21]_13 (\reg_clear_always[21]_13 ),
        .\reg_saved_in[10]_5 ({\reg_saved_in[10]_5 [14:8],\reg_saved_in[10]_5 [6:0]}),
        .\reg_saved_in[9]_6 ({\reg_saved_in[9]_6 [31:13],\reg_saved_in[9]_6 [11:0]}),
        .\reg_saved_reg[11][18] ({device_n_175,device_n_176,device_n_177,device_n_178,device_n_179,device_n_180,device_n_181,device_n_182,device_n_183,device_n_184,device_n_185,device_n_186,device_n_187,device_n_188,device_n_189,device_n_190,device_n_191,device_n_192,device_n_193}),
        .resetn(resetn),
        .s_axi_araddr(s_axi_araddr[1:0]),
        .\save_block_limit_vars[1].block_limit_vars_reg[1][22] ({device_n_298,device_n_299,device_n_300,device_n_301,device_n_302,device_n_303,device_n_304,device_n_305,device_n_306,device_n_307,device_n_308,device_n_309,device_n_310,device_n_311,device_n_312,device_n_313,device_n_314,device_n_315,device_n_316,device_n_317,device_n_318,device_n_319,device_n_320}),
        .\save_erase_vars[0].erase_vars_reg[0][31] (\reg_saved_in[13]_8 ),
        .\save_erase_vars[1].erase_vars_reg[1][31] (\reg_saved_in[14]_9 ),
        .\saved_cmd_arg_reg[31] (\reg_saved_in[11]_7 ),
        .sd_clk(sd_clk),
        .sd_cmd_i(sd_cmd_i),
        .sd_cmd_o(sd_cmd_o),
        .sd_cmd_t(sd_cmd_t),
        .sd_dat3_pullup_off(sd_dat3_pullup_off),
        .sd_dat_i(sd_dat_i),
        .sd_dat_o(sd_dat_o),
        .sd_dat_t(sd_dat_t),
        .\size_reg[31]_0 (\reg_written[19]_1 ));
  FDRE \latched_status_bits_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[14]),
        .Q(latched_status_bits[14]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[15]),
        .Q(latched_status_bits[15]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[2]),
        .Q(latched_status_bits[2]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[3]),
        .Q(latched_status_bits[3]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[4]),
        .Q(latched_status_bits[4]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[5]),
        .Q(latched_status_bits[5]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[6]),
        .Q(latched_status_bits[6]),
        .R(axi4_lite_intf_inst_n_6));
  FDRE \latched_status_bits_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(latched_status_bits_next[8]),
        .Q(latched_status_bits[8]),
        .R(axi4_lite_intf_inst_n_6));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ram_byte_index_read[0]_i_1 
       (.I0(p_2_in[0]),
        .I1(resetn),
        .I2(ram_read),
        .O(\ram_byte_index_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \ram_byte_index_read[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(p_2_in[0]),
        .I2(resetn),
        .I3(ram_read),
        .O(\ram_byte_index_read[1]_i_1_n_0 ));
  FDRE \ram_byte_index_read_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ram_byte_index_read[0]_i_1_n_0 ),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \ram_byte_index_read_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ram_byte_index_read[1]_i_1_n_0 ),
        .Q(p_2_in[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ram_byte_index_write[0]_i_1 
       (.I0(ram_byte_index_write[0]),
        .I1(ram_write),
        .I2(resetn),
        .O(\ram_byte_index_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \ram_byte_index_write[1]_i_1 
       (.I0(ram_byte_index_write[0]),
        .I1(ram_byte_index_write[1]),
        .I2(ram_write),
        .I3(resetn),
        .O(\ram_byte_index_write[1]_i_1_n_0 ));
  FDRE \ram_byte_index_write_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ram_byte_index_write[0]_i_1_n_0 ),
        .Q(ram_byte_index_write[0]),
        .R(1'b0));
  FDRE \ram_byte_index_write_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ram_byte_index_write[1]_i_1_n_0 ),
        .Q(ram_byte_index_write[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FFFFFF02020202)) 
    ram_read_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[4]),
        .I3(p_2_in[0]),
        .I4(p_2_in[1]),
        .I5(ram_read),
        .O(ram_read_i_1_n_0));
  FDRE ram_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_read_i_1_n_0),
        .Q(ram_read),
        .R(axi4_lite_intf_inst_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_r1_0_31_0_5
       (.ADDRA({raddr_saved,p_2_in}),
        .ADDRB({raddr_saved,p_2_in}),
        .ADDRC({raddr_saved,p_2_in}),
        .ADDRD({waddr_saved,ram_byte_index_write}),
        .DIA({axi4_lite_intf_inst_n_66,axi4_lite_intf_inst_n_67}),
        .DIB({axi4_lite_intf_inst_n_64,axi4_lite_intf_inst_n_65}),
        .DIC({axi4_lite_intf_inst_n_62,axi4_lite_intf_inst_n_63}),
        .DID({1'b0,1'b0}),
        .DOA(ram_word_out0[1:0]),
        .DOB(ram_word_out0[3:2]),
        .DOC(ram_word_out0[5:4]),
        .DOD(NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M ram_reg_r1_0_31_6_7
       (.ADDRA({raddr_saved,p_2_in}),
        .ADDRB({raddr_saved,p_2_in}),
        .ADDRC({raddr_saved,p_2_in}),
        .ADDRD({waddr_saved,ram_byte_index_write}),
        .DIA({axi4_lite_intf_inst_n_60,axi4_lite_intf_inst_n_61}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ram_word_out0[7:6]),
        .DOB(NLW_ram_reg_r1_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_r1_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_r1_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_r2_0_31_0_5
       (.ADDRA({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRB({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRC({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRD({waddr_saved,ram_byte_index_write}),
        .DIA({axi4_lite_intf_inst_n_66,axi4_lite_intf_inst_n_67}),
        .DIB({axi4_lite_intf_inst_n_64,axi4_lite_intf_inst_n_65}),
        .DIC({axi4_lite_intf_inst_n_62,axi4_lite_intf_inst_n_63}),
        .DID({1'b0,1'b0}),
        .DOA(dev_ram_data0[1:0]),
        .DOB(dev_ram_data0[3:2]),
        .DOC(dev_ram_data0[5:4]),
        .DOD(NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M ram_reg_r2_0_31_6_7
       (.ADDRA({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRB({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRC({dev_ram_addr[4:3],device_n_168,device_n_169,dev_ram_addr[0]}),
        .ADDRD({waddr_saved,ram_byte_index_write}),
        .DIA({axi4_lite_intf_inst_n_60,axi4_lite_intf_inst_n_61}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dev_ram_data0[7:6]),
        .DOB(NLW_ram_reg_r2_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_r2_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_r2_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_write));
  FDRE \ram_word_out_reg[0] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[0]),
        .Q(ram_word_out_reg[0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[10] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[2]),
        .Q(ram_word_out_reg[10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[11] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[3]),
        .Q(ram_word_out_reg[11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[12] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[4]),
        .Q(ram_word_out_reg[12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[13] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[5]),
        .Q(ram_word_out_reg[13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[14] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[6]),
        .Q(ram_word_out_reg[14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[15] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[7]),
        .Q(ram_word_out_reg[15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[16] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[8]),
        .Q(ram_word_out_reg[16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[17] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[9]),
        .Q(ram_word_out_reg[17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[18] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[10]),
        .Q(ram_word_out_reg[18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[19] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[11]),
        .Q(ram_word_out_reg[19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[1] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[1]),
        .Q(ram_word_out_reg[1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[20] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[12]),
        .Q(ram_word_out_reg[20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[21] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[13]),
        .Q(ram_word_out_reg[21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[22] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[14]),
        .Q(ram_word_out_reg[22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[23] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[15]),
        .Q(ram_word_out_reg[23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[24] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[16]),
        .Q(\ram_word_out_reg_n_0_[24] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[25] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[17]),
        .Q(\ram_word_out_reg_n_0_[25] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[26] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[18]),
        .Q(\ram_word_out_reg_n_0_[26] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[27] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[19]),
        .Q(\ram_word_out_reg_n_0_[27] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[28] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[20]),
        .Q(\ram_word_out_reg_n_0_[28] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[29] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[21]),
        .Q(\ram_word_out_reg_n_0_[29] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[2] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[2]),
        .Q(ram_word_out_reg[2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[30] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[22]),
        .Q(\ram_word_out_reg_n_0_[30] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[31] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[23]),
        .Q(\ram_word_out_reg_n_0_[31] ),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[3] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[3]),
        .Q(ram_word_out_reg[3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[4] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[4]),
        .Q(ram_word_out_reg[4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[5] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[5]),
        .Q(ram_word_out_reg[5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[6] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[6]),
        .Q(ram_word_out_reg[6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[7] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out0[7]),
        .Q(ram_word_out_reg[7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[8] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[0]),
        .Q(ram_word_out_reg[8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \ram_word_out_reg[9] 
       (.C(clk),
        .CE(ram_read),
        .D(ram_word_out_reg[1]),
        .Q(ram_word_out_reg[9]),
        .R(axi4_lite_intf_inst_n_0));
  LUT6 #(
    .INIT(64'h4444444444447444)) 
    ram_write_i_1
       (.I0(ram_write_i_2_n_0),
        .I1(ram_write),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[4]),
        .O(ram_write_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_write_i_2
       (.I0(ram_byte_index_write[1]),
        .I1(ram_byte_index_write[0]),
        .O(ram_write_i_2_n_0));
  FDRE ram_write_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_write_i_1_n_0),
        .Q(ram_write),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [0]),
        .Q(\reg_saved_reg[10]_15 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [10]),
        .Q(\reg_saved_reg[10]_15 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [11]),
        .Q(\reg_saved_reg[10]_15 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [12]),
        .Q(\reg_saved_reg[10]_15 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [13]),
        .Q(\reg_saved_reg[10]_15 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [14]),
        .Q(\reg_saved_reg[10]_15 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [1]),
        .Q(\reg_saved_reg[10]_15 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [2]),
        .Q(\reg_saved_reg[10]_15 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [3]),
        .Q(\reg_saved_reg[10]_15 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [4]),
        .Q(\reg_saved_reg[10]_15 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [5]),
        .Q(\reg_saved_reg[10]_15 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [6]),
        .Q(\reg_saved_reg[10]_15 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [8]),
        .Q(\reg_saved_reg[10]_15 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[10][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[10]_5 [9]),
        .Q(\reg_saved_reg[10]_15 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [0]),
        .Q(\reg_saved_reg[11]_16 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [10]),
        .Q(\reg_saved_reg[11]_16 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [11]),
        .Q(\reg_saved_reg[11]_16 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [12]),
        .Q(\reg_saved_reg[11]_16 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [13]),
        .Q(\reg_saved_reg[11]_16 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [14]),
        .Q(\reg_saved_reg[11]_16 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [15]),
        .Q(\reg_saved_reg[11]_16 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [16]),
        .Q(\reg_saved_reg[11]_16 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [17]),
        .Q(\reg_saved_reg[11]_16 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [18]),
        .Q(\reg_saved_reg[11]_16 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [19]),
        .Q(\reg_saved_reg[11]_16 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [1]),
        .Q(\reg_saved_reg[11]_16 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [20]),
        .Q(\reg_saved_reg[11]_16 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [21]),
        .Q(\reg_saved_reg[11]_16 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [22]),
        .Q(\reg_saved_reg[11]_16 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [23]),
        .Q(\reg_saved_reg[11]_16 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [24]),
        .Q(\reg_saved_reg[11]_16 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [25]),
        .Q(\reg_saved_reg[11]_16 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [26]),
        .Q(\reg_saved_reg[11]_16 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [27]),
        .Q(\reg_saved_reg[11]_16 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [28]),
        .Q(\reg_saved_reg[11]_16 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [29]),
        .Q(\reg_saved_reg[11]_16 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [2]),
        .Q(\reg_saved_reg[11]_16 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [30]),
        .Q(\reg_saved_reg[11]_16 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [31]),
        .Q(\reg_saved_reg[11]_16 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [3]),
        .Q(\reg_saved_reg[11]_16 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [4]),
        .Q(\reg_saved_reg[11]_16 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [5]),
        .Q(\reg_saved_reg[11]_16 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [6]),
        .Q(\reg_saved_reg[11]_16 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [7]),
        .Q(\reg_saved_reg[11]_16 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [8]),
        .Q(\reg_saved_reg[11]_16 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[11][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[11]_7 [9]),
        .Q(\reg_saved_reg[11]_16 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [0]),
        .Q(\reg_saved_reg[12]_17 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [10]),
        .Q(\reg_saved_reg[12]_17 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [11]),
        .Q(\reg_saved_reg[12]_17 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [12]),
        .Q(\reg_saved_reg[12]_17 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [13]),
        .Q(\reg_saved_reg[12]_17 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [14]),
        .Q(\reg_saved_reg[12]_17 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [15]),
        .Q(\reg_saved_reg[12]_17 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [16]),
        .Q(\reg_saved_reg[12]_17 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [17]),
        .Q(\reg_saved_reg[12]_17 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [18]),
        .Q(\reg_saved_reg[12]_17 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [19]),
        .Q(\reg_saved_reg[12]_17 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [1]),
        .Q(\reg_saved_reg[12]_17 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [20]),
        .Q(\reg_saved_reg[12]_17 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [21]),
        .Q(\reg_saved_reg[12]_17 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [22]),
        .Q(\reg_saved_reg[12]_17 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [23]),
        .Q(\reg_saved_reg[12]_17 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [24]),
        .Q(\reg_saved_reg[12]_17 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [25]),
        .Q(\reg_saved_reg[12]_17 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [26]),
        .Q(\reg_saved_reg[12]_17 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [27]),
        .Q(\reg_saved_reg[12]_17 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [28]),
        .Q(\reg_saved_reg[12]_17 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [29]),
        .Q(\reg_saved_reg[12]_17 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [2]),
        .Q(\reg_saved_reg[12]_17 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [30]),
        .Q(\reg_saved_reg[12]_17 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [31]),
        .Q(\reg_saved_reg[12]_17 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [3]),
        .Q(\reg_saved_reg[12]_17 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [4]),
        .Q(\reg_saved_reg[12]_17 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [5]),
        .Q(\reg_saved_reg[12]_17 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [6]),
        .Q(\reg_saved_reg[12]_17 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [7]),
        .Q(\reg_saved_reg[12]_17 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [8]),
        .Q(\reg_saved_reg[12]_17 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[12][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[12]_4 [9]),
        .Q(\reg_saved_reg[12]_17 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [0]),
        .Q(\reg_saved_reg[13]_18 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [10]),
        .Q(\reg_saved_reg[13]_18 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [11]),
        .Q(\reg_saved_reg[13]_18 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [12]),
        .Q(\reg_saved_reg[13]_18 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [13]),
        .Q(\reg_saved_reg[13]_18 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [14]),
        .Q(\reg_saved_reg[13]_18 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [15]),
        .Q(\reg_saved_reg[13]_18 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [16]),
        .Q(\reg_saved_reg[13]_18 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [17]),
        .Q(\reg_saved_reg[13]_18 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [18]),
        .Q(\reg_saved_reg[13]_18 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [19]),
        .Q(\reg_saved_reg[13]_18 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [1]),
        .Q(\reg_saved_reg[13]_18 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [20]),
        .Q(\reg_saved_reg[13]_18 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [21]),
        .Q(\reg_saved_reg[13]_18 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [22]),
        .Q(\reg_saved_reg[13]_18 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [23]),
        .Q(\reg_saved_reg[13]_18 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [24]),
        .Q(\reg_saved_reg[13]_18 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [25]),
        .Q(\reg_saved_reg[13]_18 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [26]),
        .Q(\reg_saved_reg[13]_18 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [27]),
        .Q(\reg_saved_reg[13]_18 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [28]),
        .Q(\reg_saved_reg[13]_18 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [29]),
        .Q(\reg_saved_reg[13]_18 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [2]),
        .Q(\reg_saved_reg[13]_18 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [30]),
        .Q(\reg_saved_reg[13]_18 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [31]),
        .Q(\reg_saved_reg[13]_18 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [3]),
        .Q(\reg_saved_reg[13]_18 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [4]),
        .Q(\reg_saved_reg[13]_18 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [5]),
        .Q(\reg_saved_reg[13]_18 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [6]),
        .Q(\reg_saved_reg[13]_18 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [7]),
        .Q(\reg_saved_reg[13]_18 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [8]),
        .Q(\reg_saved_reg[13]_18 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[13][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[13]_8 [9]),
        .Q(\reg_saved_reg[13]_18 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [0]),
        .Q(\reg_saved_reg[14]_19 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [10]),
        .Q(\reg_saved_reg[14]_19 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [11]),
        .Q(\reg_saved_reg[14]_19 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [12]),
        .Q(\reg_saved_reg[14]_19 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [13]),
        .Q(\reg_saved_reg[14]_19 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [14]),
        .Q(\reg_saved_reg[14]_19 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [15]),
        .Q(\reg_saved_reg[14]_19 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [16]),
        .Q(\reg_saved_reg[14]_19 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [17]),
        .Q(\reg_saved_reg[14]_19 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [18]),
        .Q(\reg_saved_reg[14]_19 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [19]),
        .Q(\reg_saved_reg[14]_19 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [1]),
        .Q(\reg_saved_reg[14]_19 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [20]),
        .Q(\reg_saved_reg[14]_19 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [21]),
        .Q(\reg_saved_reg[14]_19 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [22]),
        .Q(\reg_saved_reg[14]_19 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [23]),
        .Q(\reg_saved_reg[14]_19 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [24]),
        .Q(\reg_saved_reg[14]_19 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [25]),
        .Q(\reg_saved_reg[14]_19 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [26]),
        .Q(\reg_saved_reg[14]_19 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [27]),
        .Q(\reg_saved_reg[14]_19 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [28]),
        .Q(\reg_saved_reg[14]_19 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [29]),
        .Q(\reg_saved_reg[14]_19 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [2]),
        .Q(\reg_saved_reg[14]_19 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [30]),
        .Q(\reg_saved_reg[14]_19 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [31]),
        .Q(\reg_saved_reg[14]_19 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [3]),
        .Q(\reg_saved_reg[14]_19 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [4]),
        .Q(\reg_saved_reg[14]_19 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [5]),
        .Q(\reg_saved_reg[14]_19 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [6]),
        .Q(\reg_saved_reg[14]_19 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [7]),
        .Q(\reg_saved_reg[14]_19 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [8]),
        .Q(\reg_saved_reg[14]_19 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[14][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[14]_9 [9]),
        .Q(\reg_saved_reg[14]_19 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [0]),
        .Q(\reg_saved_reg[15]_20 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [10]),
        .Q(\reg_saved_reg[15]_20 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [11]),
        .Q(\reg_saved_reg[15]_20 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [12]),
        .Q(\reg_saved_reg[15]_20 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [13]),
        .Q(\reg_saved_reg[15]_20 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [14]),
        .Q(\reg_saved_reg[15]_20 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [15]),
        .Q(\reg_saved_reg[15]_20 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [16]),
        .Q(\reg_saved_reg[15]_20 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [17]),
        .Q(\reg_saved_reg[15]_20 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [18]),
        .Q(\reg_saved_reg[15]_20 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [19]),
        .Q(\reg_saved_reg[15]_20 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [1]),
        .Q(\reg_saved_reg[15]_20 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [20]),
        .Q(\reg_saved_reg[15]_20 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [21]),
        .Q(\reg_saved_reg[15]_20 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [22]),
        .Q(\reg_saved_reg[15]_20 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [23]),
        .Q(\reg_saved_reg[15]_20 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [24]),
        .Q(\reg_saved_reg[15]_20 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [25]),
        .Q(\reg_saved_reg[15]_20 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [26]),
        .Q(\reg_saved_reg[15]_20 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [27]),
        .Q(\reg_saved_reg[15]_20 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [28]),
        .Q(\reg_saved_reg[15]_20 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [29]),
        .Q(\reg_saved_reg[15]_20 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [2]),
        .Q(\reg_saved_reg[15]_20 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [30]),
        .Q(\reg_saved_reg[15]_20 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [31]),
        .Q(\reg_saved_reg[15]_20 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [3]),
        .Q(\reg_saved_reg[15]_20 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [4]),
        .Q(\reg_saved_reg[15]_20 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [5]),
        .Q(\reg_saved_reg[15]_20 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [6]),
        .Q(\reg_saved_reg[15]_20 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [7]),
        .Q(\reg_saved_reg[15]_20 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [8]),
        .Q(\reg_saved_reg[15]_20 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[15][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[15]_10 [9]),
        .Q(\reg_saved_reg[15]_20 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_320),
        .Q(\reg_saved_reg[16]_21 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_310),
        .Q(\reg_saved_reg[16]_21 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_309),
        .Q(\reg_saved_reg[16]_21 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_308),
        .Q(\reg_saved_reg[16]_21 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_307),
        .Q(\reg_saved_reg[16]_21 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_306),
        .Q(\reg_saved_reg[16]_21 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_305),
        .Q(\reg_saved_reg[16]_21 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_304),
        .Q(\reg_saved_reg[16]_21 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_303),
        .Q(\reg_saved_reg[16]_21 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_302),
        .Q(\reg_saved_reg[16]_21 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_301),
        .Q(\reg_saved_reg[16]_21 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_319),
        .Q(\reg_saved_reg[16]_21 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_300),
        .Q(\reg_saved_reg[16]_21 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_299),
        .Q(\reg_saved_reg[16]_21 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_298),
        .Q(\reg_saved_reg[16]_21 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_318),
        .Q(\reg_saved_reg[16]_21 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_317),
        .Q(\reg_saved_reg[16]_21 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_316),
        .Q(\reg_saved_reg[16]_21 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_315),
        .Q(\reg_saved_reg[16]_21 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_314),
        .Q(\reg_saved_reg[16]_21 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_313),
        .Q(\reg_saved_reg[16]_21 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_312),
        .Q(\reg_saved_reg[16]_21 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[16][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(device_n_311),
        .Q(\reg_saved_reg[16]_21 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [0]),
        .Q(\reg_saved_reg[17]_22 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [10]),
        .Q(\reg_saved_reg[17]_22 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [11]),
        .Q(\reg_saved_reg[17]_22 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][12] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [12]),
        .Q(\reg_saved_reg[17]_22 [12]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [13]),
        .Q(\reg_saved_reg[17]_22 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [14]),
        .Q(\reg_saved_reg[17]_22 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [15]),
        .Q(\reg_saved_reg[17]_22 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [16]),
        .Q(\reg_saved_reg[17]_22 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [17]),
        .Q(\reg_saved_reg[17]_22 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [18]),
        .Q(\reg_saved_reg[17]_22 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [19]),
        .Q(\reg_saved_reg[17]_22 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [1]),
        .Q(\reg_saved_reg[17]_22 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [20]),
        .Q(\reg_saved_reg[17]_22 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [21]),
        .Q(\reg_saved_reg[17]_22 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [22]),
        .Q(\reg_saved_reg[17]_22 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [23]),
        .Q(\reg_saved_reg[17]_22 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [24]),
        .Q(\reg_saved_reg[17]_22 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [25]),
        .Q(\reg_saved_reg[17]_22 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [26]),
        .Q(\reg_saved_reg[17]_22 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [27]),
        .Q(\reg_saved_reg[17]_22 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [28]),
        .Q(\reg_saved_reg[17]_22 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [29]),
        .Q(\reg_saved_reg[17]_22 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [2]),
        .Q(\reg_saved_reg[17]_22 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [30]),
        .Q(\reg_saved_reg[17]_22 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [31]),
        .Q(\reg_saved_reg[17]_22 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [3]),
        .Q(\reg_saved_reg[17]_22 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [4]),
        .Q(\reg_saved_reg[17]_22 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [5]),
        .Q(\reg_saved_reg[17]_22 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [6]),
        .Q(\reg_saved_reg[17]_22 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [7]),
        .Q(\reg_saved_reg[17]_22 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [8]),
        .Q(\reg_saved_reg[17]_22 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[17][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[17]_3 [9]),
        .Q(\reg_saved_reg[17]_22 [9]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][0] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [0]),
        .Q(\reg_saved_reg[9]_14 [0]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][10] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [10]),
        .Q(\reg_saved_reg[9]_14 [10]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][11] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [11]),
        .Q(\reg_saved_reg[9]_14 [11]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][13] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [13]),
        .Q(\reg_saved_reg[9]_14 [13]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][14] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [14]),
        .Q(\reg_saved_reg[9]_14 [14]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][15] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [15]),
        .Q(\reg_saved_reg[9]_14 [15]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][16] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [16]),
        .Q(\reg_saved_reg[9]_14 [16]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][17] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [17]),
        .Q(\reg_saved_reg[9]_14 [17]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][18] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [18]),
        .Q(\reg_saved_reg[9]_14 [18]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][19] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [19]),
        .Q(\reg_saved_reg[9]_14 [19]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][1] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [1]),
        .Q(\reg_saved_reg[9]_14 [1]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][20] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [20]),
        .Q(\reg_saved_reg[9]_14 [20]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][21] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [21]),
        .Q(\reg_saved_reg[9]_14 [21]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][22] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [22]),
        .Q(\reg_saved_reg[9]_14 [22]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][23] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [23]),
        .Q(\reg_saved_reg[9]_14 [23]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][24] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [24]),
        .Q(\reg_saved_reg[9]_14 [24]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][25] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [25]),
        .Q(\reg_saved_reg[9]_14 [25]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][26] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [26]),
        .Q(\reg_saved_reg[9]_14 [26]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][27] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [27]),
        .Q(\reg_saved_reg[9]_14 [27]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][28] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [28]),
        .Q(\reg_saved_reg[9]_14 [28]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][29] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [29]),
        .Q(\reg_saved_reg[9]_14 [29]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][2] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [2]),
        .Q(\reg_saved_reg[9]_14 [2]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][30] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [30]),
        .Q(\reg_saved_reg[9]_14 [30]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][31] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [31]),
        .Q(\reg_saved_reg[9]_14 [31]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][3] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [3]),
        .Q(\reg_saved_reg[9]_14 [3]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][4] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [4]),
        .Q(\reg_saved_reg[9]_14 [4]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][5] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [5]),
        .Q(\reg_saved_reg[9]_14 [5]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][6] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [6]),
        .Q(\reg_saved_reg[9]_14 [6]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][7] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [7]),
        .Q(\reg_saved_reg[9]_14 [7]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][8] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [8]),
        .Q(\reg_saved_reg[9]_14 [8]),
        .R(axi4_lite_intf_inst_n_0));
  FDRE \reg_saved_reg[9][9] 
       (.C(clk),
        .CE(onread_pre),
        .D(\reg_saved_in[9]_6 [9]),
        .Q(\reg_saved_reg[9]_14 [9]),
        .R(axi4_lite_intf_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \set_reg_clear_always[21].reg_clear_always[21][0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_6_out),
        .O(\set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \set_reg_clear_always[21].reg_clear_always[21][1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_6_out),
        .O(\set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \set_reg_clear_always[21].reg_clear_always[21][2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(p_6_out),
        .O(\set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \set_reg_clear_always[21].reg_clear_always[21][2]_i_2 
       (.I0(axi4_lite_intf_inst_n_5),
        .I1(resetn),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[2]),
        .O(p_6_out));
  FDRE \set_reg_clear_always[21].reg_clear_always_reg[21][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0 ),
        .Q(\reg_clear_always[21]_13 [0]),
        .R(1'b0));
  FDRE \set_reg_clear_always[21].reg_clear_always_reg[21][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0 ),
        .Q(\reg_clear_always[21]_13 [1]),
        .R(1'b0));
  FDRE \set_reg_clear_always[21].reg_clear_always_reg[21][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0 ),
        .Q(\reg_clear_always[21]_13 [2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \set_reg_clear_always[22].reg_clear_always[22][31]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(axi4_lite_intf_inst_n_5),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[3]),
        .I5(resetn),
        .O(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\reg_clear_always[22]_11 [0]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][13] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[13]),
        .Q(\reg_clear_always[22]_11 [13]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][14] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[14]),
        .Q(\reg_clear_always[22]_11 [14]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][15] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[15]),
        .Q(\reg_clear_always[22]_11 [15]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][16] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[16]),
        .Q(\reg_clear_always[22]_11 [16]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][17] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[17]),
        .Q(\reg_clear_always[22]_11 [17]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][18] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[18]),
        .Q(\reg_clear_always[22]_11 [18]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][19] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[19]),
        .Q(\reg_clear_always[22]_11 [19]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][1] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\reg_clear_always[22]_11 [1]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][20] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[20]),
        .Q(\reg_clear_always[22]_11 [20]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][21] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[21]),
        .Q(\reg_clear_always[22]_11 [21]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][22] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[22]),
        .Q(\reg_clear_always[22]_11 [22]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][23] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[23]),
        .Q(\reg_clear_always[22]_11 [23]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][24] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[24]),
        .Q(\reg_clear_always[22]_11 [24]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][25] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[25]),
        .Q(\reg_clear_always[22]_11 [25]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][26] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[26]),
        .Q(\reg_clear_always[22]_11 [26]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][27] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[27]),
        .Q(\reg_clear_always[22]_11 [27]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][28] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[28]),
        .Q(\reg_clear_always[22]_11 [28]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][29] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[29]),
        .Q(\reg_clear_always[22]_11 [29]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\reg_clear_always[22]_11 [2]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][30] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[30]),
        .Q(\reg_clear_always[22]_11 [30]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][31] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[31]),
        .Q(\reg_clear_always[22]_11 [31]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\reg_clear_always[22]_11 [3]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][4] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(\reg_clear_always[22]_11 [4]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\reg_clear_always[22]_11 [5]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(\reg_clear_always[22]_11 [6]),
        .R(p_4_out));
  FDRE \set_reg_clear_always[22].reg_clear_always_reg[22][7] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(\reg_clear_always[22]_11 [7]),
        .R(p_4_out));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \set_reg_clear_always[23].reg_clear_always[23][31]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(axi4_lite_intf_inst_n_5),
        .I2(s_axi_awaddr[1]),
        .I3(resetn),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[0]),
        .O(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\reg_clear_always[23]_12 [0]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][13] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[13]),
        .Q(\reg_clear_always[23]_12 [13]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][14] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[14]),
        .Q(\reg_clear_always[23]_12 [14]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][15] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[15]),
        .Q(\reg_clear_always[23]_12 [15]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][16] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[16]),
        .Q(\reg_clear_always[23]_12 [16]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][17] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[17]),
        .Q(\reg_clear_always[23]_12 [17]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][18] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[18]),
        .Q(\reg_clear_always[23]_12 [18]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][19] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[19]),
        .Q(\reg_clear_always[23]_12 [19]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][1] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\reg_clear_always[23]_12 [1]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][20] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[20]),
        .Q(\reg_clear_always[23]_12 [20]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][21] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[21]),
        .Q(\reg_clear_always[23]_12 [21]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][22] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[22]),
        .Q(\reg_clear_always[23]_12 [22]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][23] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[23]),
        .Q(\reg_clear_always[23]_12 [23]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][24] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[24]),
        .Q(\reg_clear_always[23]_12 [24]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][25] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[25]),
        .Q(\reg_clear_always[23]_12 [25]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][26] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[26]),
        .Q(\reg_clear_always[23]_12 [26]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][27] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[27]),
        .Q(\reg_clear_always[23]_12 [27]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][28] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[28]),
        .Q(\reg_clear_always[23]_12 [28]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][29] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[29]),
        .Q(\reg_clear_always[23]_12 [29]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\reg_clear_always[23]_12 [2]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][30] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[30]),
        .Q(\reg_clear_always[23]_12 [30]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][31] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[31]),
        .Q(\reg_clear_always[23]_12 [31]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\reg_clear_always[23]_12 [3]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][4] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(\reg_clear_always[23]_12 [4]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\reg_clear_always[23]_12 [5]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(\reg_clear_always[23]_12 [6]),
        .R(p_2_out));
  FDRE \set_reg_clear_always[23].reg_clear_always_reg[23][7] 
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(\reg_clear_always[23]_12 [7]),
        .R(p_2_out));
endmodule

(* ORIG_REF_NAME = "card_status_keeper" *) 
module block_design_sd_card_0_card_status_keeper
   (Q,
    \cmd_index_reg[0] ,
    \card_status_resp_reg[23]_0 ,
    \card_status_reg[11]_0 ,
    valid_c1_out,
    ignored_c,
    \card_status_reg[5]_0 ,
    acmd_defined_c,
    \card_status_reg[10]_0 ,
    \card_status_reg[9]_0 ,
    \dev_ram_data_reg[4] ,
    \cmd_index_reg[4] ,
    \dev_ram_data_reg[0] ,
    \dev_ram_data_reg[1] ,
    \dev_ram_data_reg[2] ,
    \dev_ram_data_reg[3] ,
    \dev_ram_data_reg[5] ,
    \dev_ram_data_reg[6] ,
    \dev_ram_data_reg[7] ,
    cmd_illegal_stb_reg,
    \card_status_resp_reg[2]_0 ,
    \card_status_resp_reg[5]_0 ,
    \card_status_reg[10]_1 ,
    \card_status_reg[10]_2 ,
    \card_status_reg[11]_1 ,
    acmd_defined_reg,
    D,
    cmd_resp_pos,
    \card_status_reg[23]_0 ,
    \card_status_reg[10]_3 ,
    \card_status_reg[10]_4 ,
    \card_status_reg[10]_5 ,
    \card_status_reg[31]_0 ,
    update_2,
    \card_status_reg[31]_1 ,
    \card_status_reg[31]_2 ,
    sent_r1,
    erase_seq_error,
    cc_error_out,
    erase_reset,
    \card_status_reg[9]_1 ,
    initialization_done,
    valid_reg,
    valid_reg_0,
    illegal_reg,
    rca_match,
    \card_status[10]_i_2_0 ,
    valid_reg_i_4_0,
    illegal_reg_0,
    cmd8_vhs_match,
    valid_reg_i_4_1,
    ignored_reg,
    ignored_reg_0,
    ignored_reg_1,
    \card_status_resp_reg[28]_0 ,
    invalid_dat_width,
    out_of_range,
    dat_done,
    \card_status_reg[9]_2 ,
    \reg_clear_always[21]_13 ,
    dev_ram_data,
    \resp_byte_reg[4] ,
    \resp_byte_reg[4]_0 ,
    cmd_illegal_stb,
    cmd_crc_err_stb,
    cmd_ignored_stb,
    \resp_byte_reg[2] ,
    \resp_byte_reg[2]_0 ,
    \resp_byte_reg[5] ,
    \resp_byte_reg[5]_0 ,
    dat_resetn,
    fifo_out_almostfull,
    SR,
    clk,
    \card_status_reg[11]_2 ,
    \card_status_reg[11]_3 );
  output [26:0]Q;
  output \cmd_index_reg[0] ;
  output [11:0]\card_status_resp_reg[23]_0 ;
  output [2:0]\card_status_reg[11]_0 ;
  output valid_c1_out;
  output ignored_c;
  output \card_status_reg[5]_0 ;
  output acmd_defined_c;
  output \card_status_reg[10]_0 ;
  output \card_status_reg[9]_0 ;
  output \dev_ram_data_reg[4] ;
  output \cmd_index_reg[4] ;
  output \dev_ram_data_reg[0] ;
  output \dev_ram_data_reg[1] ;
  output \dev_ram_data_reg[2] ;
  output \dev_ram_data_reg[3] ;
  output \dev_ram_data_reg[5] ;
  output \dev_ram_data_reg[6] ;
  output \dev_ram_data_reg[7] ;
  output cmd_illegal_stb_reg;
  output \card_status_resp_reg[2]_0 ;
  output \card_status_resp_reg[5]_0 ;
  output \card_status_reg[10]_1 ;
  output \card_status_reg[10]_2 ;
  output \card_status_reg[11]_1 ;
  input acmd_defined_reg;
  input [5:0]D;
  input [2:0]cmd_resp_pos;
  input [9:0]\card_status_reg[23]_0 ;
  input \card_status_reg[10]_3 ;
  input \card_status_reg[10]_4 ;
  input \card_status_reg[10]_5 ;
  input [16:0]\card_status_reg[31]_0 ;
  input update_2;
  input \card_status_reg[31]_1 ;
  input [16:0]\card_status_reg[31]_2 ;
  input sent_r1;
  input erase_seq_error;
  input cc_error_out;
  input erase_reset;
  input \card_status_reg[9]_1 ;
  input initialization_done;
  input valid_reg;
  input valid_reg_0;
  input illegal_reg;
  input rca_match;
  input [0:0]\card_status[10]_i_2_0 ;
  input valid_reg_i_4_0;
  input illegal_reg_0;
  input cmd8_vhs_match;
  input valid_reg_i_4_1;
  input ignored_reg;
  input ignored_reg_0;
  input ignored_reg_1;
  input [3:0]\card_status_resp_reg[28]_0 ;
  input invalid_dat_width;
  input out_of_range;
  input dat_done;
  input \card_status_reg[9]_2 ;
  input [0:0]\reg_clear_always[21]_13 ;
  input [7:0]dev_ram_data;
  input \resp_byte_reg[4] ;
  input [1:0]\resp_byte_reg[4]_0 ;
  input cmd_illegal_stb;
  input cmd_crc_err_stb;
  input cmd_ignored_stb;
  input \resp_byte_reg[2] ;
  input \resp_byte_reg[2]_0 ;
  input \resp_byte_reg[5] ;
  input \resp_byte_reg[5]_0 ;
  input dat_resetn;
  input fifo_out_almostfull;
  input [0:0]SR;
  input clk;
  input \card_status_reg[11]_2 ;
  input \card_status_reg[11]_3 ;

  wire [5:0]D;
  wire [26:0]Q;
  wire [0:0]SR;
  wire acmd_defined_c;
  wire acmd_defined_reg;
  wire \card_status[10]_i_1_n_0 ;
  wire [0:0]\card_status[10]_i_2_0 ;
  wire \card_status[10]_i_4_n_0 ;
  wire \card_status[10]_i_5_n_0 ;
  wire \card_status[10]_i_6_n_0 ;
  wire \card_status[10]_i_7_n_0 ;
  wire \card_status[11]_i_10_n_0 ;
  wire \card_status[11]_i_11_n_0 ;
  wire \card_status[11]_i_12_n_0 ;
  wire \card_status[11]_i_14_n_0 ;
  wire \card_status[11]_i_1_n_0 ;
  wire \card_status[11]_i_3_n_0 ;
  wire \card_status[11]_i_5_n_0 ;
  wire \card_status[11]_i_6_n_0 ;
  wire \card_status[11]_i_8_n_0 ;
  wire \card_status[11]_i_9_n_0 ;
  wire \card_status[9]_i_1_n_0 ;
  wire \card_status[9]_i_2_n_0 ;
  wire \card_status[9]_i_3_n_0 ;
  wire \card_status[9]_i_4_n_0 ;
  wire \card_status[9]_i_5_n_0 ;
  wire [31:6]card_status_next2_out;
  wire \card_status_reg[10]_0 ;
  wire \card_status_reg[10]_1 ;
  wire \card_status_reg[10]_2 ;
  wire \card_status_reg[10]_3 ;
  wire \card_status_reg[10]_4 ;
  wire \card_status_reg[10]_5 ;
  wire [2:0]\card_status_reg[11]_0 ;
  wire \card_status_reg[11]_1 ;
  wire \card_status_reg[11]_2 ;
  wire \card_status_reg[11]_3 ;
  wire [9:0]\card_status_reg[23]_0 ;
  wire [16:0]\card_status_reg[31]_0 ;
  wire \card_status_reg[31]_1 ;
  wire [16:0]\card_status_reg[31]_2 ;
  wire \card_status_reg[5]_0 ;
  wire \card_status_reg[9]_0 ;
  wire \card_status_reg[9]_1 ;
  wire \card_status_reg[9]_2 ;
  wire [31:2]card_status_resp;
  wire [31:20]card_status_resp_next;
  wire [11:0]\card_status_resp_reg[23]_0 ;
  wire [3:0]\card_status_resp_reg[28]_0 ;
  wire \card_status_resp_reg[2]_0 ;
  wire \card_status_resp_reg[5]_0 ;
  wire cc_error_out;
  wire clk;
  wire cmd8_vhs_match;
  wire cmd_crc_err_stb;
  wire cmd_ignored_stb;
  wire cmd_illegal_stb;
  wire cmd_illegal_stb_reg;
  wire \cmd_index_reg[0] ;
  wire \cmd_index_reg[4] ;
  wire [2:0]cmd_resp_pos;
  wire dat_done;
  wire dat_resetn;
  wire [7:0]dev_ram_data;
  wire \dev_ram_data_reg[0] ;
  wire \dev_ram_data_reg[1] ;
  wire \dev_ram_data_reg[2] ;
  wire \dev_ram_data_reg[3] ;
  wire \dev_ram_data_reg[4] ;
  wire \dev_ram_data_reg[5] ;
  wire \dev_ram_data_reg[6] ;
  wire \dev_ram_data_reg[7] ;
  wire erase_reset;
  wire erase_seq_error;
  wire fifo_out_almostfull;
  wire ignored_c;
  wire ignored_i_3_n_0;
  wire ignored_reg;
  wire ignored_reg_0;
  wire ignored_reg_1;
  wire illegal_reg;
  wire illegal_reg_0;
  wire initialization_done;
  wire invalid_dat_width;
  wire out_of_range;
  wire rca_match;
  wire [0:0]\reg_clear_always[21]_13 ;
  wire \resp_byte[0]_i_7_n_0 ;
  wire \resp_byte[1]_i_4_n_0 ;
  wire \resp_byte[2]_i_7_n_0 ;
  wire \resp_byte[3]_i_4_n_0 ;
  wire \resp_byte[4]_i_7_n_0 ;
  wire \resp_byte[5]_i_7_n_0 ;
  wire \resp_byte[6]_i_4_n_0 ;
  wire \resp_byte[7]_i_5_n_0 ;
  wire \resp_byte_reg[2] ;
  wire \resp_byte_reg[2]_0 ;
  wire \resp_byte_reg[4] ;
  wire [1:0]\resp_byte_reg[4]_0 ;
  wire \resp_byte_reg[5] ;
  wire \resp_byte_reg[5]_0 ;
  wire sent_r1;
  wire update_2;
  wire valid_c1_out;
  wire valid_i_10_n_0;
  wire valid_i_11_n_0;
  wire valid_i_13_n_0;
  wire valid_i_3_n_0;
  wire valid_i_6_n_0;
  wire valid_i_8_n_0;
  wire valid_i_9_n_0;
  wire valid_reg;
  wire valid_reg_0;
  wire valid_reg_i_4_0;
  wire valid_reg_i_4_1;
  wire valid_reg_i_4_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    acmd_defined_i_1
       (.I0(Q[5]),
        .I1(acmd_defined_reg),
        .O(acmd_defined_c));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    busy_out_i_1
       (.I0(\card_status_reg[11]_0 [1]),
        .I1(\card_status_reg[11]_0 [2]),
        .I2(dat_resetn),
        .I3(\card_status_reg[11]_0 [0]),
        .O(\card_status_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF202A2020)) 
    \card_status[10]_i_1 
       (.I0(card_status_next2_out[10]),
        .I1(\card_status[11]_i_3_n_0 ),
        .I2(\card_status_reg[11]_3 ),
        .I3(\card_status[11]_i_5_n_0 ),
        .I4(\card_status[11]_i_6_n_0 ),
        .I5(\card_status_reg[11]_0 [1]),
        .O(\card_status[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5755575557555455)) 
    \card_status[10]_i_2 
       (.I0(\card_status_reg[11]_0 [0]),
        .I1(\card_status_reg[10]_3 ),
        .I2(\card_status_reg[10]_4 ),
        .I3(\card_status_reg[10]_5 ),
        .I4(\card_status[10]_i_4_n_0 ),
        .I5(\card_status[10]_i_5_n_0 ),
        .O(card_status_next2_out[10]));
  LUT6 #(
    .INIT(64'h8888A22280008000)) 
    \card_status[10]_i_4 
       (.I0(D[0]),
        .I1(D[1]),
        .I2(D[2]),
        .I3(\card_status[10]_i_6_n_0 ),
        .I4(D[3]),
        .I5(D[5]),
        .O(\card_status[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0055BA00)) 
    \card_status[10]_i_5 
       (.I0(D[2]),
        .I1(\card_status[10]_i_2_0 ),
        .I2(D[3]),
        .I3(D[4]),
        .I4(D[1]),
        .I5(\card_status[10]_i_7_n_0 ),
        .O(\card_status[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \card_status[10]_i_6 
       (.I0(\card_status_reg[11]_0 [2]),
        .I1(\card_status_reg[11]_0 [1]),
        .I2(rca_match),
        .O(\card_status[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA4444AFAA4444)) 
    \card_status[10]_i_7 
       (.I0(D[5]),
        .I1(D[3]),
        .I2(D[0]),
        .I3(\card_status_reg[11]_0 [1]),
        .I4(D[2]),
        .I5(D[1]),
        .O(\card_status[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFFF303A3030)) 
    \card_status[11]_i_1 
       (.I0(\card_status_reg[11]_2 ),
        .I1(\card_status[11]_i_3_n_0 ),
        .I2(\card_status_reg[11]_3 ),
        .I3(\card_status[11]_i_5_n_0 ),
        .I4(\card_status[11]_i_6_n_0 ),
        .I5(\card_status_reg[11]_0 [2]),
        .O(\card_status[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDEFFDFFFFDF)) 
    \card_status[11]_i_10 
       (.I0(D[3]),
        .I1(D[4]),
        .I2(D[2]),
        .I3(D[5]),
        .I4(D[0]),
        .I5(D[1]),
        .O(\card_status[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00CD0A4C1C8D0EE9)) 
    \card_status[11]_i_11 
       (.I0(D[3]),
        .I1(D[4]),
        .I2(D[5]),
        .I3(D[2]),
        .I4(D[1]),
        .I5(D[0]),
        .O(\card_status[11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \card_status[11]_i_12 
       (.I0(\card_status[11]_i_10_n_0 ),
        .I1(Q[5]),
        .O(\card_status[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \card_status[11]_i_14 
       (.I0(Q[5]),
        .I1(\card_status[11]_i_10_n_0 ),
        .I2(\card_status_reg[11]_0 [1]),
        .I3(\card_status_reg[11]_0 [0]),
        .I4(\card_status_reg[11]_0 [2]),
        .O(\card_status[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF55FF55FFFFFF)) 
    \card_status[11]_i_3 
       (.I0(dat_done),
        .I1(\card_status_reg[9]_2 ),
        .I2(\reg_clear_always[21]_13 ),
        .I3(\card_status_reg[11]_0 [2]),
        .I4(\card_status_reg[11]_0 [1]),
        .I5(\card_status_reg[11]_0 [0]),
        .O(\card_status[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00002A20)) 
    \card_status[11]_i_5 
       (.I0(\card_status[11]_i_8_n_0 ),
        .I1(\card_status[11]_i_9_n_0 ),
        .I2(\card_status[11]_i_10_n_0 ),
        .I3(Q[5]),
        .I4(\card_status[11]_i_11_n_0 ),
        .O(\card_status[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAAAAAABAA)) 
    \card_status[11]_i_6 
       (.I0(\card_status[11]_i_8_n_0 ),
        .I1(\card_status[11]_i_12_n_0 ),
        .I2(\card_status_reg[9]_1 ),
        .I3(initialization_done),
        .I4(\card_status[11]_i_11_n_0 ),
        .I5(\card_status[11]_i_14_n_0 ),
        .O(\card_status[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1B0700223F160CA3)) 
    \card_status[11]_i_8 
       (.I0(D[1]),
        .I1(D[5]),
        .I2(D[2]),
        .I3(D[3]),
        .I4(D[4]),
        .I5(D[0]),
        .O(\card_status[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0838)) 
    \card_status[11]_i_9 
       (.I0(\card_status_reg[11]_0 [0]),
        .I1(\card_status_reg[11]_0 [1]),
        .I2(\card_status_reg[11]_0 [2]),
        .I3(rca_match),
        .O(\card_status[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FEEE)) 
    \card_status[13]_i_1 
       (.I0(Q[8]),
        .I1(\card_status_reg[31]_0 [1]),
        .I2(erase_reset),
        .I3(update_2),
        .I4(\card_status_reg[31]_2 [1]),
        .I5(sent_r1),
        .O(card_status_next2_out[13]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[14]_i_1 
       (.I0(Q[9]),
        .I1(\card_status_reg[31]_0 [2]),
        .I2(\card_status_reg[31]_2 [2]),
        .I3(sent_r1),
        .O(card_status_next2_out[14]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[15]_i_1 
       (.I0(Q[10]),
        .I1(\card_status_reg[31]_0 [3]),
        .I2(\card_status_reg[31]_2 [3]),
        .I3(sent_r1),
        .O(card_status_next2_out[15]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[16]_i_1 
       (.I0(Q[11]),
        .I1(\card_status_reg[31]_0 [4]),
        .I2(\card_status_reg[31]_2 [4]),
        .I3(sent_r1),
        .O(card_status_next2_out[16]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[17]_i_1 
       (.I0(Q[12]),
        .I1(\card_status_reg[31]_0 [5]),
        .I2(\card_status_reg[31]_2 [5]),
        .I3(sent_r1),
        .O(card_status_next2_out[17]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[18]_i_1 
       (.I0(Q[13]),
        .I1(\card_status_reg[31]_0 [6]),
        .I2(\card_status_reg[31]_2 [6]),
        .I3(sent_r1),
        .O(card_status_next2_out[18]));
  LUT6 #(
    .INIT(64'h000000000000FEEE)) 
    \card_status[20]_i_1 
       (.I0(Q[15]),
        .I1(\card_status_reg[31]_0 [7]),
        .I2(cc_error_out),
        .I3(update_2),
        .I4(\card_status_reg[31]_2 [7]),
        .I5(sent_r1),
        .O(card_status_next2_out[20]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[21]_i_1 
       (.I0(Q[16]),
        .I1(\card_status_reg[31]_0 [8]),
        .I2(\card_status_reg[31]_2 [8]),
        .I3(sent_r1),
        .O(card_status_next2_out[21]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[24]_i_1 
       (.I0(Q[19]),
        .I1(\card_status_reg[31]_0 [9]),
        .I2(\card_status_reg[31]_2 [9]),
        .I3(sent_r1),
        .O(card_status_next2_out[24]));
  LUT3 #(
    .INIT(8'h0E)) 
    \card_status[25]_i_1 
       (.I0(Q[20]),
        .I1(\card_status_reg[31]_0 [10]),
        .I2(\card_status_reg[31]_2 [10]),
        .O(card_status_next2_out[25]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[26]_i_1 
       (.I0(Q[21]),
        .I1(\card_status_reg[31]_0 [11]),
        .I2(\card_status_reg[31]_2 [11]),
        .I3(sent_r1),
        .O(card_status_next2_out[26]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[27]_i_1 
       (.I0(Q[22]),
        .I1(\card_status_reg[31]_0 [12]),
        .I2(\card_status_reg[31]_2 [12]),
        .I3(sent_r1),
        .O(card_status_next2_out[27]));
  LUT6 #(
    .INIT(64'h000000000000FEEE)) 
    \card_status[28]_i_1 
       (.I0(Q[23]),
        .I1(\card_status_reg[31]_0 [13]),
        .I2(erase_seq_error),
        .I3(update_2),
        .I4(\card_status_reg[31]_2 [13]),
        .I5(sent_r1),
        .O(card_status_next2_out[28]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[29]_i_1 
       (.I0(Q[24]),
        .I1(\card_status_reg[31]_0 [14]),
        .I2(\card_status_reg[31]_2 [14]),
        .I3(sent_r1),
        .O(card_status_next2_out[29]));
  LUT4 #(
    .INIT(16'h000E)) 
    \card_status[30]_i_1 
       (.I0(Q[25]),
        .I1(\card_status_reg[31]_0 [15]),
        .I2(\card_status_reg[31]_2 [15]),
        .I3(sent_r1),
        .O(card_status_next2_out[30]));
  LUT6 #(
    .INIT(64'h000000000000EEFE)) 
    \card_status[31]_i_1 
       (.I0(Q[26]),
        .I1(\card_status_reg[31]_0 [16]),
        .I2(update_2),
        .I3(\card_status_reg[31]_1 ),
        .I4(\card_status_reg[31]_2 [16]),
        .I5(sent_r1),
        .O(card_status_next2_out[31]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \card_status[5]_i_2 
       (.I0(D[0]),
        .I1(D[3]),
        .I2(D[2]),
        .I3(D[1]),
        .I4(D[4]),
        .I5(D[5]),
        .O(\cmd_index_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \card_status[5]_i_3 
       (.I0(cmd_illegal_stb),
        .I1(cmd_crc_err_stb),
        .I2(Q[5]),
        .I3(cmd_ignored_stb),
        .O(cmd_illegal_stb_reg));
  LUT3 #(
    .INIT(8'h0E)) 
    \card_status[6]_i_1 
       (.I0(Q[6]),
        .I1(\card_status_reg[31]_0 [0]),
        .I2(\card_status_reg[31]_2 [0]),
        .O(card_status_next2_out[6]));
  LUT6 #(
    .INIT(64'hCFCACFCF303A3030)) 
    \card_status[9]_i_1 
       (.I0(\card_status[9]_i_2_n_0 ),
        .I1(\card_status[11]_i_3_n_0 ),
        .I2(\card_status_reg[11]_3 ),
        .I3(\card_status[11]_i_5_n_0 ),
        .I4(\card_status[11]_i_6_n_0 ),
        .I5(\card_status_reg[11]_0 [0]),
        .O(\card_status[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBE0000)) 
    \card_status[9]_i_2 
       (.I0(D[3]),
        .I1(rca_match),
        .I2(\card_status_reg[11]_0 [1]),
        .I3(\card_status_reg[11]_0 [2]),
        .I4(\card_status[9]_i_3_n_0 ),
        .I5(\card_status[9]_i_4_n_0 ),
        .O(\card_status[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAB9AA00)) 
    \card_status[9]_i_3 
       (.I0(D[2]),
        .I1(D[4]),
        .I2(\card_status_reg[11]_0 [1]),
        .I3(D[1]),
        .I4(D[3]),
        .O(\card_status[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAFAAFEFAFAAAFE)) 
    \card_status[9]_i_4 
       (.I0(\card_status[9]_i_5_n_0 ),
        .I1(D[4]),
        .I2(D[2]),
        .I3(D[3]),
        .I4(D[0]),
        .I5(D[1]),
        .O(\card_status[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3E00000000003E00)) 
    \card_status[9]_i_5 
       (.I0(\card_status[10]_i_2_0 ),
        .I1(D[1]),
        .I2(D[0]),
        .I3(D[4]),
        .I4(D[5]),
        .I5(D[3]),
        .O(\card_status[9]_i_5_n_0 ));
  FDRE \card_status_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \card_status_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status[10]_i_1_n_0 ),
        .Q(\card_status_reg[11]_0 [1]),
        .R(SR));
  FDRE \card_status_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status[11]_i_1_n_0 ),
        .Q(\card_status_reg[11]_0 [2]),
        .R(SR));
  FDRE \card_status_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[13]),
        .Q(Q[8]),
        .R(SR));
  FDRE \card_status_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[14]),
        .Q(Q[9]),
        .R(SR));
  FDRE \card_status_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[15]),
        .Q(Q[10]),
        .R(SR));
  FDRE \card_status_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[16]),
        .Q(Q[11]),
        .R(SR));
  FDRE \card_status_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[17]),
        .Q(Q[12]),
        .R(SR));
  FDRE \card_status_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[18]),
        .Q(Q[13]),
        .R(SR));
  FDRE \card_status_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [7]),
        .Q(Q[14]),
        .R(SR));
  FDRE \card_status_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \card_status_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[20]),
        .Q(Q[15]),
        .R(SR));
  FDRE \card_status_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[21]),
        .Q(Q[16]),
        .R(SR));
  FDRE \card_status_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [8]),
        .Q(Q[17]),
        .R(SR));
  FDRE \card_status_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [9]),
        .Q(Q[18]),
        .R(SR));
  FDRE \card_status_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[24]),
        .Q(Q[19]),
        .R(SR));
  FDRE \card_status_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[25]),
        .Q(Q[20]),
        .R(SR));
  FDRE \card_status_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[26]),
        .Q(Q[21]),
        .R(SR));
  FDRE \card_status_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[27]),
        .Q(Q[22]),
        .R(SR));
  FDRE \card_status_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[28]),
        .Q(Q[23]),
        .R(SR));
  FDRE \card_status_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[29]),
        .Q(Q[24]),
        .R(SR));
  FDRE \card_status_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \card_status_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[30]),
        .Q(Q[25]),
        .R(SR));
  FDRE \card_status_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[31]),
        .Q(Q[26]),
        .R(SR));
  FDRE \card_status_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \card_status_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \card_status_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \card_status_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(card_status_next2_out[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \card_status_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status_reg[23]_0 [6]),
        .Q(Q[7]),
        .R(SR));
  FDRE \card_status_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\card_status[9]_i_1_n_0 ),
        .Q(\card_status_reg[11]_0 [0]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \card_status_resp[20]_i_1 
       (.I0(cc_error_out),
        .I1(Q[15]),
        .O(card_status_resp_next[20]));
  LUT3 #(
    .INIT(8'hFE)) 
    \card_status_resp[31]_i_2 
       (.I0(Q[26]),
        .I1(invalid_dat_width),
        .I2(out_of_range),
        .O(card_status_resp_next[31]));
  FDRE \card_status_resp_reg[0] 
       (.C(clk),
        .CE(update_2),
        .D(Q[0]),
        .Q(\card_status_resp_reg[23]_0 [0]),
        .R(SR));
  FDRE \card_status_resp_reg[10] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_reg[11]_0 [1]),
        .Q(\card_status_resp_reg[23]_0 [7]),
        .R(SR));
  FDRE \card_status_resp_reg[11] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_reg[11]_0 [2]),
        .Q(\card_status_resp_reg[23]_0 [8]),
        .R(SR));
  FDRE \card_status_resp_reg[13] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_0 [2]),
        .Q(card_status_resp[13]),
        .R(SR));
  FDRE \card_status_resp_reg[14] 
       (.C(clk),
        .CE(update_2),
        .D(Q[9]),
        .Q(card_status_resp[14]),
        .R(SR));
  FDRE \card_status_resp_reg[15] 
       (.C(clk),
        .CE(update_2),
        .D(Q[10]),
        .Q(card_status_resp[15]),
        .R(SR));
  FDRE \card_status_resp_reg[16] 
       (.C(clk),
        .CE(update_2),
        .D(Q[11]),
        .Q(card_status_resp[16]),
        .R(SR));
  FDRE \card_status_resp_reg[17] 
       (.C(clk),
        .CE(update_2),
        .D(Q[12]),
        .Q(card_status_resp[17]),
        .R(SR));
  FDRE \card_status_resp_reg[18] 
       (.C(clk),
        .CE(update_2),
        .D(Q[13]),
        .Q(card_status_resp[18]),
        .R(SR));
  FDRE \card_status_resp_reg[19] 
       (.C(clk),
        .CE(update_2),
        .D(Q[14]),
        .Q(\card_status_resp_reg[23]_0 [9]),
        .R(SR));
  FDRE \card_status_resp_reg[1] 
       (.C(clk),
        .CE(update_2),
        .D(Q[1]),
        .Q(\card_status_resp_reg[23]_0 [1]),
        .R(SR));
  FDRE \card_status_resp_reg[20] 
       (.C(clk),
        .CE(update_2),
        .D(card_status_resp_next[20]),
        .Q(card_status_resp[20]),
        .R(SR));
  FDRE \card_status_resp_reg[21] 
       (.C(clk),
        .CE(update_2),
        .D(Q[16]),
        .Q(card_status_resp[21]),
        .R(SR));
  FDRE \card_status_resp_reg[22] 
       (.C(clk),
        .CE(update_2),
        .D(Q[17]),
        .Q(\card_status_resp_reg[23]_0 [10]),
        .R(SR));
  FDRE \card_status_resp_reg[23] 
       (.C(clk),
        .CE(update_2),
        .D(Q[18]),
        .Q(\card_status_resp_reg[23]_0 [11]),
        .R(SR));
  FDRE \card_status_resp_reg[24] 
       (.C(clk),
        .CE(update_2),
        .D(Q[19]),
        .Q(card_status_resp[24]),
        .R(SR));
  FDRE \card_status_resp_reg[25] 
       (.C(clk),
        .CE(update_2),
        .D(Q[20]),
        .Q(card_status_resp[25]),
        .R(SR));
  FDRE \card_status_resp_reg[26] 
       (.C(clk),
        .CE(update_2),
        .D(Q[21]),
        .Q(card_status_resp[26]),
        .R(SR));
  FDRE \card_status_resp_reg[27] 
       (.C(clk),
        .CE(update_2),
        .D(Q[22]),
        .Q(card_status_resp[27]),
        .R(SR));
  FDRE \card_status_resp_reg[28] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_0 [3]),
        .Q(card_status_resp[28]),
        .R(SR));
  FDRE \card_status_resp_reg[29] 
       (.C(clk),
        .CE(update_2),
        .D(Q[24]),
        .Q(card_status_resp[29]),
        .R(SR));
  FDRE \card_status_resp_reg[2] 
       (.C(clk),
        .CE(update_2),
        .D(Q[2]),
        .Q(card_status_resp[2]),
        .R(SR));
  FDRE \card_status_resp_reg[30] 
       (.C(clk),
        .CE(update_2),
        .D(Q[25]),
        .Q(card_status_resp[30]),
        .R(SR));
  FDRE \card_status_resp_reg[31] 
       (.C(clk),
        .CE(update_2),
        .D(card_status_resp_next[31]),
        .Q(card_status_resp[31]),
        .R(SR));
  FDRE \card_status_resp_reg[3] 
       (.C(clk),
        .CE(update_2),
        .D(Q[3]),
        .Q(\card_status_resp_reg[23]_0 [2]),
        .R(SR));
  FDRE \card_status_resp_reg[4] 
       (.C(clk),
        .CE(update_2),
        .D(Q[4]),
        .Q(card_status_resp[4]),
        .R(SR));
  FDRE \card_status_resp_reg[5] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_0 [0]),
        .Q(card_status_resp[5]),
        .R(SR));
  FDRE \card_status_resp_reg[6] 
       (.C(clk),
        .CE(update_2),
        .D(Q[6]),
        .Q(\card_status_resp_reg[23]_0 [3]),
        .R(SR));
  FDRE \card_status_resp_reg[7] 
       (.C(clk),
        .CE(update_2),
        .D(Q[7]),
        .Q(\card_status_resp_reg[23]_0 [4]),
        .R(SR));
  FDSE \card_status_resp_reg[8] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_resp_reg[28]_0 [1]),
        .Q(\card_status_resp_reg[23]_0 [5]),
        .S(SR));
  FDRE \card_status_resp_reg[9] 
       (.C(clk),
        .CE(update_2),
        .D(\card_status_reg[11]_0 [0]),
        .Q(\card_status_resp_reg[23]_0 [6]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h60)) 
    dev_resetn_i_1
       (.I0(\card_status_reg[11]_0 [1]),
        .I1(\card_status_reg[11]_0 [0]),
        .I2(\card_status_reg[11]_0 [2]),
        .O(\card_status_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h050D0507FF3F0507)) 
    ignored_i_1
       (.I0(ignored_reg),
        .I1(Q[5]),
        .I2(ignored_i_3_n_0),
        .I3(ignored_reg_0),
        .I4(ignored_reg_1),
        .I5(rca_match),
        .O(ignored_c));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    ignored_i_3
       (.I0(\card_status_reg[11]_0 [2]),
        .I1(\card_status_reg[11]_0 [0]),
        .I2(\card_status_reg[11]_0 [1]),
        .O(ignored_i_3_n_0));
  LUT6 #(
    .INIT(64'h5510101055555555)) 
    illegal_i_1
       (.I0(ignored_c),
        .I1(valid_reg),
        .I2(valid_i_3_n_0),
        .I3(valid_reg_i_4_n_0),
        .I4(valid_reg_0),
        .I5(valid_i_6_n_0),
        .O(\card_status_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    reading_i_2
       (.I0(\card_status_reg[11]_0 [2]),
        .I1(\card_status_reg[11]_0 [1]),
        .O(\card_status_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    ready_for_data_i_1
       (.I0(\card_status_reg[11]_0 [1]),
        .I1(\card_status_reg[11]_0 [2]),
        .I2(\card_status_reg[11]_0 [0]),
        .I3(fifo_out_almostfull),
        .O(\card_status_reg[10]_2 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \resp_byte[0]_i_4 
       (.I0(dev_ram_data[0]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(\card_status_resp_reg[23]_0 [0]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[0]_i_7_n_0 ),
        .O(\dev_ram_data_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[0]_i_7 
       (.I0(\card_status_resp_reg[23]_0 [5]),
        .I1(card_status_resp[16]),
        .I2(cmd_resp_pos[1]),
        .I3(card_status_resp[24]),
        .I4(cmd_resp_pos[0]),
        .I5(D[0]),
        .O(\resp_byte[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \resp_byte[1]_i_2 
       (.I0(dev_ram_data[1]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(\card_status_resp_reg[23]_0 [1]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[1]_i_4_n_0 ),
        .O(\dev_ram_data_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[1]_i_4 
       (.I0(\card_status_resp_reg[23]_0 [6]),
        .I1(card_status_resp[17]),
        .I2(cmd_resp_pos[1]),
        .I3(card_status_resp[25]),
        .I4(cmd_resp_pos[0]),
        .I5(D[1]),
        .O(\resp_byte[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[2]_i_3 
       (.I0(card_status_resp[2]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte_reg[2] ),
        .I3(\resp_byte_reg[4]_0 [0]),
        .I4(\resp_byte_reg[2]_0 ),
        .O(\card_status_resp_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \resp_byte[2]_i_4 
       (.I0(dev_ram_data[2]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(card_status_resp[2]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[2]_i_7_n_0 ),
        .O(\dev_ram_data_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[2]_i_7 
       (.I0(\card_status_resp_reg[23]_0 [7]),
        .I1(card_status_resp[18]),
        .I2(cmd_resp_pos[1]),
        .I3(card_status_resp[26]),
        .I4(cmd_resp_pos[0]),
        .I5(D[2]),
        .O(\resp_byte[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \resp_byte[3]_i_2 
       (.I0(dev_ram_data[3]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(\card_status_resp_reg[23]_0 [2]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[3]_i_4_n_0 ),
        .O(\dev_ram_data_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[3]_i_4 
       (.I0(\card_status_resp_reg[23]_0 [8]),
        .I1(\card_status_resp_reg[23]_0 [9]),
        .I2(cmd_resp_pos[1]),
        .I3(card_status_resp[27]),
        .I4(cmd_resp_pos[0]),
        .I5(D[3]),
        .O(\resp_byte[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0E0E0EFEFEFEF)) 
    \resp_byte[4]_i_5 
       (.I0(dev_ram_data[4]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(card_status_resp[4]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[4]_i_7_n_0 ),
        .O(\dev_ram_data_reg[4] ));
  LUT6 #(
    .INIT(64'hFF020002FFFFFFFF)) 
    \resp_byte[4]_i_6 
       (.I0(D[4]),
        .I1(cmd_resp_pos[0]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[2]),
        .I4(card_status_resp[4]),
        .I5(\resp_byte_reg[4]_0 [0]),
        .O(\cmd_index_reg[4] ));
  LUT6 #(
    .INIT(64'hFABAFFBAFABFFFBF)) 
    \resp_byte[4]_i_7 
       (.I0(cmd_resp_pos[2]),
        .I1(card_status_resp[20]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[0]),
        .I4(card_status_resp[28]),
        .I5(D[4]),
        .O(\resp_byte[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[5]_i_3 
       (.I0(card_status_resp[5]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte_reg[5] ),
        .I3(\resp_byte_reg[4]_0 [0]),
        .I4(\resp_byte_reg[5]_0 ),
        .O(\card_status_resp_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \resp_byte[5]_i_4 
       (.I0(dev_ram_data[5]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(card_status_resp[5]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[5]_i_7_n_0 ),
        .O(\dev_ram_data_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[5]_i_7 
       (.I0(card_status_resp[13]),
        .I1(card_status_resp[21]),
        .I2(cmd_resp_pos[1]),
        .I3(card_status_resp[29]),
        .I4(cmd_resp_pos[0]),
        .I5(D[5]),
        .O(\resp_byte[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \resp_byte[6]_i_2 
       (.I0(dev_ram_data[6]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(\card_status_resp_reg[23]_0 [3]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[6]_i_4_n_0 ),
        .O(\dev_ram_data_reg[6] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \resp_byte[6]_i_4 
       (.I0(card_status_resp[14]),
        .I1(\card_status_resp_reg[23]_0 [10]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[0]),
        .I4(card_status_resp[30]),
        .O(\resp_byte[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \resp_byte[7]_i_2 
       (.I0(dev_ram_data[7]),
        .I1(\resp_byte_reg[4] ),
        .I2(\resp_byte_reg[4]_0 [1]),
        .I3(\card_status_resp_reg[23]_0 [4]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte[7]_i_5_n_0 ),
        .O(\dev_ram_data_reg[7] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \resp_byte[7]_i_5 
       (.I0(card_status_resp[15]),
        .I1(\card_status_resp_reg[23]_0 [11]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[0]),
        .I4(card_status_resp[31]),
        .O(\resp_byte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000BBB0000)) 
    valid_i_1
       (.I0(valid_reg),
        .I1(valid_i_3_n_0),
        .I2(valid_reg_i_4_n_0),
        .I3(valid_reg_0),
        .I4(valid_i_6_n_0),
        .I5(ignored_c),
        .O(valid_c1_out));
  LUT6 #(
    .INIT(64'hCC0C0CCCCCCCCCC4)) 
    valid_i_10
       (.I0(cmd8_vhs_match),
        .I1(illegal_reg_0),
        .I2(valid_reg_i_4_0),
        .I3(\card_status_reg[11]_0 [1]),
        .I4(\card_status_reg[11]_0 [0]),
        .I5(\card_status_reg[11]_0 [2]),
        .O(valid_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF74043000)) 
    valid_i_11
       (.I0(rca_match),
        .I1(\card_status_reg[11]_0 [2]),
        .I2(\card_status_reg[11]_0 [1]),
        .I3(\card_status_reg[11]_0 [0]),
        .I4(valid_reg_i_4_0),
        .I5(illegal_reg_0),
        .O(valid_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hCCCC0CC4)) 
    valid_i_13
       (.I0(\card_status_reg[11]_0 [0]),
        .I1(illegal_reg_0),
        .I2(valid_reg_i_4_0),
        .I3(\card_status_reg[11]_0 [1]),
        .I4(\card_status_reg[11]_0 [2]),
        .O(valid_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    valid_i_3
       (.I0(acmd_defined_reg),
        .I1(Q[5]),
        .O(valid_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF04F4)) 
    valid_i_6
       (.I0(valid_i_10_n_0),
        .I1(valid_i_11_n_0),
        .I2(illegal_reg),
        .I3(valid_i_13_n_0),
        .I4(valid_reg_0),
        .O(valid_i_6_n_0));
  LUT6 #(
    .INIT(64'h44404FF500000FF5)) 
    valid_i_8
       (.I0(valid_reg_i_4_0),
        .I1(valid_reg_i_4_1),
        .I2(\card_status_reg[11]_0 [0]),
        .I3(\card_status_reg[11]_0 [1]),
        .I4(\card_status_reg[11]_0 [2]),
        .I5(Q[5]),
        .O(valid_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFF4FFFB)) 
    valid_i_9
       (.I0(valid_reg_i_4_0),
        .I1(Q[5]),
        .I2(\card_status_reg[11]_0 [0]),
        .I3(\card_status_reg[11]_0 [1]),
        .I4(\card_status_reg[11]_0 [2]),
        .O(valid_i_9_n_0));
  MUXF7 valid_reg_i_4
       (.I0(valid_i_8_n_0),
        .I1(valid_i_9_n_0),
        .O(valid_reg_i_4_n_0),
        .S(illegal_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    writing_i_1
       (.I0(\card_status_reg[11]_0 [0]),
        .I1(\card_status_reg[11]_0 [2]),
        .I2(\card_status_reg[11]_0 [1]),
        .O(\card_status_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "cmd_info_keeper" *) 
module block_design_sd_card_0_cmd_info_keeper
   (\reg_saved_in[10]_5 ,
    new_cmd_saved,
    got_new_cmd12,
    erase_seq_error,
    erase_reset,
    got_cmd8,
    dat_width_4,
    invalid_dat_width,
    \cmd_index_reg[0] ,
    erase_seq_error_reg_0,
    cmd_received_good,
    \save_block_limit_vars[0].block_limit_vars_used_reg[0]_0 ,
    \cmd_index_reg[4] ,
    \cmd_index_reg[2] ,
    \cmd_index_reg[0]_0 ,
    \cmd_index_reg[3] ,
    \cmd_index_reg[0]_1 ,
    invalid_dat_width_reg_0,
    erase_seq_error_reg_1,
    interrupt,
    \reg_saved_reg[11][11] ,
    new_cmd_saved_reg_0,
    \latched_status_bits_reg[6] ,
    \saved_cmd_arg_reg[31]_0 ,
    \save_erase_vars[0].erase_vars_reg[0][31]_0 ,
    \save_erase_vars[1].erase_vars_reg[1][31]_0 ,
    Q,
    \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 ,
    SR,
    saved_cmd_is_acmd_reg_0,
    clk,
    \save_block_limit_vars[0].save_reg_0 ,
    \save_block_limit_vars[1].save_reg_0 ,
    erase_seq_error_reg_2,
    cmd_discard_block_limit_reg_0,
    got_cmd8_reg_0,
    D,
    erase_reset_reg_0,
    resetn_0,
    update_1,
    \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 ,
    invalid_dat_width_reg_1,
    cc_error_out,
    dat_width_4_reg_0,
    dat_width_4_reg_1,
    dat_width_4_reg_2,
    got_new_cmd,
    cmd_crc_err,
    \block_type_reg[0] ,
    \block_type_reg[0]_0 ,
    out_of_range,
    \reg_saved_in[9]_6 ,
    interrupt_0,
    interrupt_1,
    \latched_status_bits_reg[6]_0 ,
    interrupt_2,
    \assign_reg_mux[2].reg_needed.mux_reg[11] ,
    \assign_reg_mux[2].reg_needed.mux_reg[11]_0 ,
    s_axi_araddr,
    \assign_reg_mux[2].reg_needed.mux_reg[11]_1 ,
    new_cmd,
    E,
    \save_erase_vars[1].erase_vars_reg[1][31]_1 ,
    \erase_step_reg[1]_0 );
  output [6:0]\reg_saved_in[10]_5 ;
  output new_cmd_saved;
  output got_new_cmd12;
  output erase_seq_error;
  output erase_reset;
  output got_cmd8;
  output dat_width_4;
  output invalid_dat_width;
  output \cmd_index_reg[0] ;
  output erase_seq_error_reg_0;
  output cmd_received_good;
  output [0:0]\save_block_limit_vars[0].block_limit_vars_used_reg[0]_0 ;
  output \cmd_index_reg[4] ;
  output \cmd_index_reg[2] ;
  output \cmd_index_reg[0]_0 ;
  output \cmd_index_reg[3] ;
  output \cmd_index_reg[0]_1 ;
  output invalid_dat_width_reg_0;
  output [1:0]erase_seq_error_reg_1;
  output interrupt;
  output [5:0]\reg_saved_reg[11][11] ;
  output new_cmd_saved_reg_0;
  output [2:0]\latched_status_bits_reg[6] ;
  output [31:0]\saved_cmd_arg_reg[31]_0 ;
  output [31:0]\save_erase_vars[0].erase_vars_reg[0][31]_0 ;
  output [31:0]\save_erase_vars[1].erase_vars_reg[1][31]_0 ;
  output [31:0]Q;
  output [22:0]\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 ;
  input [0:0]SR;
  input saved_cmd_is_acmd_reg_0;
  input clk;
  input \save_block_limit_vars[0].save_reg_0 ;
  input \save_block_limit_vars[1].save_reg_0 ;
  input erase_seq_error_reg_2;
  input cmd_discard_block_limit_reg_0;
  input got_cmd8_reg_0;
  input [5:0]D;
  input erase_reset_reg_0;
  input resetn_0;
  input update_1;
  input [31:0]\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 ;
  input invalid_dat_width_reg_1;
  input cc_error_out;
  input dat_width_4_reg_0;
  input dat_width_4_reg_1;
  input dat_width_4_reg_2;
  input got_new_cmd;
  input cmd_crc_err;
  input \block_type_reg[0] ;
  input \block_type_reg[0]_0 ;
  input out_of_range;
  input [1:0]\reg_saved_in[9]_6 ;
  input interrupt_0;
  input [2:0]interrupt_1;
  input [4:0]\latched_status_bits_reg[6]_0 ;
  input interrupt_2;
  input [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11] ;
  input [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11]_0 ;
  input [1:0]s_axi_araddr;
  input [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11]_1 ;
  input new_cmd;
  input [0:0]E;
  input [0:0]\save_erase_vars[1].erase_vars_reg[1][31]_1 ;
  input \erase_step_reg[1]_0 ;

  wire [5:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire \assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0 ;
  wire [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11] ;
  wire [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11]_0 ;
  wire [5:0]\assign_reg_mux[2].reg_needed.mux_reg[11]_1 ;
  wire block_limit_used;
  wire \block_type_reg[0] ;
  wire \block_type_reg[0]_0 ;
  wire cc_error_out;
  wire clk;
  wire cmd_crc_err;
  wire cmd_discard_block_limit;
  wire cmd_discard_block_limit_reg_0;
  wire \cmd_index_reg[0] ;
  wire \cmd_index_reg[0]_0 ;
  wire \cmd_index_reg[0]_1 ;
  wire \cmd_index_reg[2] ;
  wire \cmd_index_reg[3] ;
  wire \cmd_index_reg[4] ;
  wire cmd_received_good;
  wire dat_width_4;
  wire dat_width_4_i_1_n_0;
  wire dat_width_4_i_2_n_0;
  wire dat_width_4_reg_0;
  wire dat_width_4_reg_1;
  wire dat_width_4_reg_2;
  wire erase_reset;
  wire erase_reset_i_1_n_0;
  wire erase_reset_reg_0;
  wire erase_seq_error;
  wire erase_seq_error_reg_0;
  wire [1:0]erase_seq_error_reg_1;
  wire erase_seq_error_reg_2;
  wire \erase_step[0]_i_1_n_0 ;
  wire \erase_step[1]_i_1_n_0 ;
  wire \erase_step[1]_i_5_n_0 ;
  wire \erase_step_reg[1]_0 ;
  wire \erase_step_reg_n_0_[0] ;
  wire \erase_step_reg_n_0_[1] ;
  wire got_cmd8;
  wire got_cmd8_reg_0;
  wire got_new_cmd;
  wire got_new_cmd12;
  wire got_new_cmd120;
  wire got_new_cmd12_i_2_n_0;
  wire interrupt;
  wire interrupt_0;
  wire [2:0]interrupt_1;
  wire interrupt_2;
  wire interrupt_INST_0_i_3_n_0;
  wire invalid_dat_width;
  wire invalid_dat_width_i_1_n_0;
  wire invalid_dat_width_reg_0;
  wire invalid_dat_width_reg_1;
  wire [2:0]\latched_status_bits_reg[6] ;
  wire [4:0]\latched_status_bits_reg[6]_0 ;
  wire new_cmd;
  wire new_cmd_saved;
  wire new_cmd_saved_reg_0;
  wire out_of_range;
  wire p_4_out;
  wire p_6_out;
  wire pre_erase_count_used;
  wire [6:0]\reg_saved_in[10]_5 ;
  wire [1:0]\reg_saved_in[9]_6 ;
  wire [5:0]\reg_saved_reg[11][11] ;
  wire resetn_0;
  wire [1:0]s_axi_araddr;
  wire [31:0]\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 ;
  wire \save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0 ;
  wire [0:0]\save_block_limit_vars[0].block_limit_vars_used_reg[0]_0 ;
  wire \save_block_limit_vars[0].save ;
  wire \save_block_limit_vars[0].save_reg_0 ;
  wire [22:0]\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 ;
  wire \save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0 ;
  wire \save_block_limit_vars[1].save ;
  wire \save_block_limit_vars[1].save_reg_0 ;
  wire save_current_cmd;
  wire [31:0]\save_erase_vars[0].erase_vars_reg[0][31]_0 ;
  wire [31:0]\save_erase_vars[1].erase_vars_reg[1][31]_0 ;
  wire [0:0]\save_erase_vars[1].erase_vars_reg[1][31]_1 ;
  wire [31:0]\saved_cmd_arg_reg[31]_0 ;
  wire \saved_cmd_index[5]_i_2_n_0 ;
  wire \saved_cmd_index[5]_i_3_n_0 ;
  wire saved_cmd_is_acmd_reg_0;
  wire update_1;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[10]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [4]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [4]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [4]),
        .I4(s_axi_araddr[1]),
        .I5(block_limit_used),
        .O(\reg_saved_reg[11][11] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[11]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [5]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [5]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [5]),
        .I4(s_axi_araddr[1]),
        .I5(pre_erase_count_used),
        .O(\reg_saved_reg[11][11] [5]));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \assign_reg_mux[2].reg_needed.mux[2]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [0]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [0]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [0]),
        .I4(s_axi_araddr[1]),
        .I5(new_cmd_saved_reg_0),
        .O(\reg_saved_reg[11][11] [0]));
  LUT2 #(
    .INIT(4'h1)) 
    \assign_reg_mux[2].reg_needed.mux[2]_i_2 
       (.I0(new_cmd_saved),
        .I1(\latched_status_bits_reg[6]_0 [0]),
        .O(new_cmd_saved_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[3]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [1]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [1]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [1]),
        .I4(s_axi_araddr[1]),
        .I5(\latched_status_bits_reg[6] [1]),
        .O(\reg_saved_reg[11][11] [1]));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \assign_reg_mux[2].reg_needed.mux[6]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [2]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [2]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [2]),
        .I4(s_axi_araddr[1]),
        .I5(\assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0 ),
        .O(\reg_saved_reg[11][11] [2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \assign_reg_mux[2].reg_needed.mux[6]_i_2 
       (.I0(got_new_cmd12),
        .I1(\latched_status_bits_reg[6]_0 [4]),
        .O(\assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[9]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[11] [3]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[11]_0 [3]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[11]_1 [3]),
        .I4(s_axi_araddr[1]),
        .I5(got_cmd8),
        .O(\reg_saved_reg[11][11] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888AAA)) 
    \block_type[0]_i_1 
       (.I0(\block_type_reg[0] ),
        .I1(block_limit_used),
        .I2(D[3]),
        .I3(D[0]),
        .I4(D[1]),
        .I5(\block_type_reg[0]_0 ),
        .O(\save_block_limit_vars[0].block_limit_vars_used_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \card_status[10]_i_3 
       (.I0(invalid_dat_width),
        .I1(out_of_range),
        .I2(cc_error_out),
        .I3(erase_reset),
        .I4(erase_seq_error),
        .O(invalid_dat_width_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \card_status[11]_i_4 
       (.I0(erase_seq_error),
        .I1(erase_reset),
        .I2(cc_error_out),
        .I3(dat_width_4_reg_0),
        .I4(dat_width_4_reg_1),
        .I5(dat_width_4_reg_2),
        .O(erase_seq_error_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \card_status_resp[13]_i_1 
       (.I0(erase_reset),
        .I1(\reg_saved_in[9]_6 [0]),
        .O(erase_seq_error_reg_1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \card_status_resp[28]_i_1 
       (.I0(erase_seq_error),
        .I1(\reg_saved_in[9]_6 [1]),
        .O(erase_seq_error_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \card_status_resp[5]_i_2 
       (.I0(D[2]),
        .I1(D[1]),
        .O(\cmd_index_reg[2] ));
  FDRE cmd_discard_block_limit_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_discard_block_limit_reg_0),
        .Q(cmd_discard_block_limit),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    dat_width_4_i_1
       (.I0(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .I1(saved_cmd_is_acmd_reg_0),
        .I2(dat_width_4_i_2_n_0),
        .I3(erase_seq_error_reg_0),
        .I4(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .I5(dat_width_4),
        .O(dat_width_4_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    dat_width_4_i_2
       (.I0(D[2]),
        .I1(D[1]),
        .I2(D[0]),
        .I3(D[5]),
        .I4(D[3]),
        .I5(D[4]),
        .O(dat_width_4_i_2_n_0));
  FDRE dat_width_4_reg
       (.C(clk),
        .CE(1'b1),
        .D(dat_width_4_i_1_n_0),
        .Q(dat_width_4),
        .R(SR));
  LUT6 #(
    .INIT(64'h4440CCCC44400000)) 
    erase_reset_i_1
       (.I0(erase_reset_reg_0),
        .I1(resetn_0),
        .I2(\erase_step_reg_n_0_[0] ),
        .I3(\erase_step_reg_n_0_[1] ),
        .I4(update_1),
        .I5(erase_reset),
        .O(erase_reset_i_1_n_0));
  FDRE erase_reset_reg
       (.C(clk),
        .CE(1'b1),
        .D(erase_reset_i_1_n_0),
        .Q(erase_reset),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000404000004)) 
    erase_seq_error_i_2
       (.I0(D[3]),
        .I1(D[5]),
        .I2(D[4]),
        .I3(D[2]),
        .I4(D[1]),
        .I5(D[0]),
        .O(\cmd_index_reg[3] ));
  FDRE erase_seq_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(erase_seq_error_reg_2),
        .Q(erase_seq_error),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8088808880888488)) 
    \erase_step[0]_i_1 
       (.I0(\erase_step_reg_n_0_[0] ),
        .I1(resetn_0),
        .I2(\erase_step_reg[1]_0 ),
        .I3(update_1),
        .I4(\cmd_index_reg[4] ),
        .I5(\erase_step_reg_n_0_[1] ),
        .O(\erase_step[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCC0CC00000800)) 
    \erase_step[1]_i_1 
       (.I0(\erase_step_reg_n_0_[0] ),
        .I1(resetn_0),
        .I2(\erase_step_reg[1]_0 ),
        .I3(update_1),
        .I4(\cmd_index_reg[4] ),
        .I5(\erase_step_reg_n_0_[1] ),
        .O(\erase_step[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEABF)) 
    \erase_step[1]_i_3 
       (.I0(D[4]),
        .I1(\erase_step_reg_n_0_[0] ),
        .I2(\erase_step_reg_n_0_[1] ),
        .I3(D[5]),
        .I4(D[3]),
        .I5(\erase_step[1]_i_5_n_0 ),
        .O(\cmd_index_reg[4] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \erase_step[1]_i_4 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(D[5]),
        .I4(D[3]),
        .I5(D[4]),
        .O(\cmd_index_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFEFE7FE)) 
    \erase_step[1]_i_5 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(\erase_step_reg_n_0_[0] ),
        .I3(\erase_step_reg_n_0_[1] ),
        .I4(D[0]),
        .O(\erase_step[1]_i_5_n_0 ));
  FDRE \erase_step_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\erase_step[0]_i_1_n_0 ),
        .Q(\erase_step_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \erase_step_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\erase_step[1]_i_1_n_0 ),
        .Q(\erase_step_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    got_cmd8_i_2
       (.I0(D[0]),
        .I1(D[1]),
        .O(\cmd_index_reg[0]_1 ));
  FDRE got_cmd8_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_cmd8_reg_0),
        .Q(got_cmd8),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    got_new_cmd12_i_1
       (.I0(erase_seq_error_reg_0),
        .I1(D[4]),
        .I2(D[3]),
        .I3(D[5]),
        .I4(got_new_cmd12_i_2_n_0),
        .I5(D[0]),
        .O(got_new_cmd120));
  LUT2 #(
    .INIT(4'h2)) 
    got_new_cmd12_i_2
       (.I0(D[2]),
        .I1(D[1]),
        .O(got_new_cmd12_i_2_n_0));
  FDRE got_new_cmd12_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_new_cmd120),
        .Q(got_new_cmd12),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    interrupt_INST_0
       (.I0(interrupt_0),
        .I1(interrupt_1[0]),
        .I2(\latched_status_bits_reg[6]_0 [0]),
        .I3(new_cmd_saved),
        .I4(interrupt_2),
        .I5(interrupt_INST_0_i_3_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'hFFFFEA00EA00EA00)) 
    interrupt_INST_0_i_3
       (.I0(\latched_status_bits_reg[6]_0 [3]),
        .I1(\latched_status_bits_reg[6]_0 [2]),
        .I2(new_cmd),
        .I3(interrupt_1[2]),
        .I4(\latched_status_bits_reg[6] [1]),
        .I5(interrupt_1[1]),
        .O(interrupt_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000AAA80008)) 
    invalid_dat_width_i_1
       (.I0(resetn_0),
        .I1(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .I2(erase_seq_error_reg_0),
        .I3(invalid_dat_width_reg_1),
        .I4(invalid_dat_width),
        .I5(update_1),
        .O(invalid_dat_width_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    invalid_dat_width_i_3
       (.I0(D[0]),
        .I1(D[1]),
        .I2(D[2]),
        .O(\cmd_index_reg[0] ));
  FDRE invalid_dat_width_reg
       (.C(clk),
        .CE(1'b1),
        .D(invalid_dat_width_i_1_n_0),
        .Q(invalid_dat_width),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[2]_i_1 
       (.I0(\latched_status_bits_reg[6]_0 [0]),
        .I1(new_cmd_saved),
        .O(\latched_status_bits_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \latched_status_bits[3]_i_1 
       (.I0(\latched_status_bits_reg[6]_0 [1]),
        .I1(\latched_status_bits_reg[6]_0 [0]),
        .I2(new_cmd_saved),
        .O(\latched_status_bits_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[6]_i_1 
       (.I0(\latched_status_bits_reg[6]_0 [4]),
        .I1(got_new_cmd12),
        .O(\latched_status_bits_reg[6] [2]));
  FDRE new_cmd_saved_reg
       (.C(clk),
        .CE(1'b1),
        .D(save_current_cmd),
        .Q(new_cmd_saved),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \save_block_limit_vars[0].block_limit_vars[0][31]_i_1 
       (.I0(\save_block_limit_vars[0].save ),
        .I1(update_1),
        .O(p_6_out));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][0] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][10] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][11] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][12] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][13] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][14] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][15] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][16] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][17] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][18] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][19] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][1] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][20] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][21] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][22] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][23] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][24] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][25] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][26] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][27] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][28] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][29] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][2] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][30] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][31] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][3] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][4] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][5] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][6] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][7] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][8] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \save_block_limit_vars[0].block_limit_vars_reg[0][9] 
       (.C(clk),
        .CE(p_6_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [9]),
        .Q(Q[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00E0A0A0)) 
    \save_block_limit_vars[0].block_limit_vars_used[0]_i_1 
       (.I0(block_limit_used),
        .I1(\save_block_limit_vars[0].save ),
        .I2(resetn_0),
        .I3(cmd_discard_block_limit),
        .I4(update_1),
        .O(\save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0 ));
  FDRE \save_block_limit_vars[0].block_limit_vars_used_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0 ),
        .Q(block_limit_used),
        .R(1'b0));
  FDRE \save_block_limit_vars[0].save_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\save_block_limit_vars[0].save_reg_0 ),
        .Q(\save_block_limit_vars[0].save ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \save_block_limit_vars[1].block_limit_vars[1][22]_i_1 
       (.I0(\save_block_limit_vars[1].save ),
        .I1(update_1),
        .O(p_4_out));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][0] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [0]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][10] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [10]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [10]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][11] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [11]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [11]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][12] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [12]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [12]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][13] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [13]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [13]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][14] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [14]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [14]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][15] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [15]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [15]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][16] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [16]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [16]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][17] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [17]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [17]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][18] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [18]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [18]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][19] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [19]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [19]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][1] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [1]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][20] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [20]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [20]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][21] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [21]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [21]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][22] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [22]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [22]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][2] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [2]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [2]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][3] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [3]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [3]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][4] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [4]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [4]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][5] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [5]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [5]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][6] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [6]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [6]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][7] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [7]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [7]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][8] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [8]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [8]),
        .R(SR));
  FDRE \save_block_limit_vars[1].block_limit_vars_reg[1][9] 
       (.C(clk),
        .CE(p_4_out),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [9]),
        .Q(\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 [9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00E0A0A0)) 
    \save_block_limit_vars[1].block_limit_vars_used[1]_i_1 
       (.I0(pre_erase_count_used),
        .I1(\save_block_limit_vars[1].save ),
        .I2(resetn_0),
        .I3(cmd_discard_block_limit),
        .I4(update_1),
        .O(\save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0 ));
  FDRE \save_block_limit_vars[1].block_limit_vars_used_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0 ),
        .Q(pre_erase_count_used),
        .R(1'b0));
  FDRE \save_block_limit_vars[1].save_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\save_block_limit_vars[1].save_reg_0 ),
        .Q(\save_block_limit_vars[1].save ),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][0] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [0]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][10] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [10]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [10]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][11] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [11]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [11]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][12] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [12]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [12]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][13] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [13]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [13]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][14] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [14]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [14]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][15] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [15]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [15]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][16] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [16]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [16]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][17] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [17]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [17]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][18] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [18]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [18]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][19] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [19]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [19]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][1] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [1]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][20] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [20]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [20]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][21] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [21]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [21]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][22] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [22]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [22]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][23] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [23]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [23]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][24] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [24]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [24]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][25] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [25]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [25]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][26] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [26]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [26]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][27] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [27]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [27]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][28] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [28]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [28]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][29] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [29]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [29]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][2] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [2]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [2]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][30] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [30]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [30]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][31] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [31]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [31]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][3] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [3]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [3]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][4] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [4]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [4]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][5] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [5]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [5]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][6] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [6]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [6]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][7] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [7]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [7]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][8] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [8]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [8]),
        .R(SR));
  FDRE \save_erase_vars[0].erase_vars_reg[0][9] 
       (.C(clk),
        .CE(E),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [9]),
        .Q(\save_erase_vars[0].erase_vars_reg[0][31]_0 [9]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][0] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [0]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][10] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [10]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [10]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][11] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [11]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [11]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][12] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [12]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [12]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][13] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [13]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [13]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][14] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [14]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [14]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][15] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [15]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [15]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][16] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [16]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [16]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][17] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [17]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [17]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][18] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [18]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [18]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][19] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [19]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [19]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][1] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [1]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][20] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [20]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [20]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][21] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [21]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [21]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][22] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [22]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [22]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][23] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [23]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [23]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][24] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [24]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [24]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][25] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [25]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [25]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][26] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [26]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [26]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][27] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [27]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [27]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][28] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [28]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [28]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][29] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [29]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [29]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][2] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [2]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [2]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][30] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [30]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [30]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][31] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [31]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [31]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][3] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [3]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [3]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][4] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [4]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [4]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][5] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [5]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [5]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][6] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [6]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [6]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][7] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [7]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [7]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][8] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [8]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [8]),
        .R(SR));
  FDRE \save_erase_vars[1].erase_vars_reg[1][9] 
       (.C(clk),
        .CE(\save_erase_vars[1].erase_vars_reg[1][31]_1 ),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [9]),
        .Q(\save_erase_vars[1].erase_vars_reg[1][31]_0 [9]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[0] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [0]),
        .Q(\saved_cmd_arg_reg[31]_0 [0]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[10] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [10]),
        .Q(\saved_cmd_arg_reg[31]_0 [10]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[11] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [11]),
        .Q(\saved_cmd_arg_reg[31]_0 [11]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[12] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [12]),
        .Q(\saved_cmd_arg_reg[31]_0 [12]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[13] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [13]),
        .Q(\saved_cmd_arg_reg[31]_0 [13]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[14] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [14]),
        .Q(\saved_cmd_arg_reg[31]_0 [14]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[15] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [15]),
        .Q(\saved_cmd_arg_reg[31]_0 [15]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[16] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [16]),
        .Q(\saved_cmd_arg_reg[31]_0 [16]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[17] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [17]),
        .Q(\saved_cmd_arg_reg[31]_0 [17]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[18] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [18]),
        .Q(\saved_cmd_arg_reg[31]_0 [18]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[19] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [19]),
        .Q(\saved_cmd_arg_reg[31]_0 [19]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[1] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [1]),
        .Q(\saved_cmd_arg_reg[31]_0 [1]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[20] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [20]),
        .Q(\saved_cmd_arg_reg[31]_0 [20]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[21] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [21]),
        .Q(\saved_cmd_arg_reg[31]_0 [21]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[22] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [22]),
        .Q(\saved_cmd_arg_reg[31]_0 [22]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[23] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [23]),
        .Q(\saved_cmd_arg_reg[31]_0 [23]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[24] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [24]),
        .Q(\saved_cmd_arg_reg[31]_0 [24]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[25] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [25]),
        .Q(\saved_cmd_arg_reg[31]_0 [25]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[26] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [26]),
        .Q(\saved_cmd_arg_reg[31]_0 [26]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[27] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [27]),
        .Q(\saved_cmd_arg_reg[31]_0 [27]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[28] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [28]),
        .Q(\saved_cmd_arg_reg[31]_0 [28]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[29] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [29]),
        .Q(\saved_cmd_arg_reg[31]_0 [29]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[2] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [2]),
        .Q(\saved_cmd_arg_reg[31]_0 [2]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[30] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [30]),
        .Q(\saved_cmd_arg_reg[31]_0 [30]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[31] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [31]),
        .Q(\saved_cmd_arg_reg[31]_0 [31]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[3] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [3]),
        .Q(\saved_cmd_arg_reg[31]_0 [3]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[4] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [4]),
        .Q(\saved_cmd_arg_reg[31]_0 [4]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[5] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [5]),
        .Q(\saved_cmd_arg_reg[31]_0 [5]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[6] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [6]),
        .Q(\saved_cmd_arg_reg[31]_0 [6]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[7] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [7]),
        .Q(\saved_cmd_arg_reg[31]_0 [7]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[8] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [8]),
        .Q(\saved_cmd_arg_reg[31]_0 [8]),
        .R(SR));
  FDRE \saved_cmd_arg_reg[9] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 [9]),
        .Q(\saved_cmd_arg_reg[31]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0151)) 
    \saved_cmd_index[5]_i_1 
       (.I0(erase_seq_error_reg_0),
        .I1(\saved_cmd_index[5]_i_2_n_0 ),
        .I2(saved_cmd_is_acmd_reg_0),
        .I3(\saved_cmd_index[5]_i_3_n_0 ),
        .O(save_current_cmd));
  LUT6 #(
    .INIT(64'hFFFFFBFFDECD7BFE)) 
    \saved_cmd_index[5]_i_2 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[0]),
        .I3(D[1]),
        .I4(D[4]),
        .I5(D[5]),
        .O(\saved_cmd_index[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFDFFDFFFFFBFFF)) 
    \saved_cmd_index[5]_i_3 
       (.I0(D[3]),
        .I1(D[1]),
        .I2(D[2]),
        .I3(D[4]),
        .I4(D[5]),
        .I5(D[0]),
        .O(\saved_cmd_index[5]_i_3_n_0 ));
  FDRE \saved_cmd_index_reg[0] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[0]),
        .Q(\reg_saved_in[10]_5 [0]),
        .R(SR));
  FDRE \saved_cmd_index_reg[1] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[1]),
        .Q(\reg_saved_in[10]_5 [1]),
        .R(SR));
  FDRE \saved_cmd_index_reg[2] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[2]),
        .Q(\reg_saved_in[10]_5 [2]),
        .R(SR));
  FDRE \saved_cmd_index_reg[3] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[3]),
        .Q(\reg_saved_in[10]_5 [3]),
        .R(SR));
  FDRE \saved_cmd_index_reg[4] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[4]),
        .Q(\reg_saved_in[10]_5 [4]),
        .R(SR));
  FDRE \saved_cmd_index_reg[5] 
       (.C(clk),
        .CE(save_current_cmd),
        .D(D[5]),
        .Q(\reg_saved_in[10]_5 [5]),
        .R(SR));
  FDRE saved_cmd_is_acmd_reg
       (.C(clk),
        .CE(save_current_cmd),
        .D(saved_cmd_is_acmd_reg_0),
        .Q(\reg_saved_in[10]_5 [6]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \update_phase[0]_i_1 
       (.I0(got_new_cmd),
        .I1(cmd_crc_err),
        .O(cmd_received_good));
endmodule

(* ORIG_REF_NAME = "cmd_interface" *) 
module block_design_sd_card_0_cmd_interface
   (got_new_cmd,
    SS,
    cmd_crc_err,
    sd_cmd_o_sys,
    sd_cmd_t_sys,
    cmd_resp_pos,
    cmd_index,
    cmd_arg,
    clk,
    new_sd_clk,
    Q,
    cmd_resp_byte,
    resp_no_crc,
    cmd_resp_len,
    resp_none,
    resp_start,
    resetn);
  output got_new_cmd;
  output [0:0]SS;
  output cmd_crc_err;
  output sd_cmd_o_sys;
  output sd_cmd_t_sys;
  output [4:0]cmd_resp_pos;
  output [5:0]cmd_index;
  output [31:0]cmd_arg;
  input clk;
  input new_sd_clk;
  input [0:0]Q;
  input [7:0]cmd_resp_byte;
  input resp_no_crc;
  input [3:0]cmd_resp_len;
  input resp_none;
  input resp_start;
  input resetn;

  wire [0:0]Q;
  wire [0:0]SS;
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
  wire \buf_write[0]_i_1_n_0 ;
  wire clk;
  wire [31:0]cmd_arg;
  wire cmd_crc_err;
  wire cmd_crc_err_next;
  wire [5:0]cmd_index;
  wire [7:0]cmd_resp_byte;
  wire [3:0]cmd_resp_len;
  wire [4:0]cmd_resp_pos;
  wire [7:0]counter;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire \counter[7]_i_6_n_0 ;
  wire \counter[7]_i_7_n_0 ;
  wire got_new_cmd;
  wire got_new_cmd_i_3_n_0;
  wire is_writing0;
  wire line_crc_n_0;
  wire line_crc_n_1;
  wire line_crc_n_10;
  wire line_crc_n_11;
  wire line_crc_n_12;
  wire line_crc_n_13;
  wire line_crc_n_14;
  wire line_crc_n_15;
  wire line_crc_n_16;
  wire line_crc_n_17;
  wire line_crc_n_18;
  wire line_crc_n_19;
  wire line_crc_n_2;
  wire line_crc_n_20;
  wire line_crc_n_23;
  wire line_crc_n_24;
  wire line_crc_n_25;
  wire line_crc_n_26;
  wire line_crc_n_27;
  wire line_crc_n_3;
  wire line_crc_n_5;
  wire line_crc_n_6;
  wire line_crc_n_7;
  wire line_crc_n_8;
  wire line_crc_n_9;
  wire new_sd_clk;
  wire p_0_in;
  wire p_0_in5_in;
  wire [5:0]p_1_in;
  wire p_1_in2_in;
  wire p_1_in6_in;
  wire p_2_in3_in;
  wire p_4_in;
  wire resetn;
  wire resp_no_crc;
  wire resp_none;
  wire resp_start;
  wire sd_cmd_o_sys;
  wire sd_cmd_o_sys0;
  wire sd_cmd_o_sys_i_2_n_0;
  wire sd_cmd_t_sys;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire update_read;
  wire write_stb_received_r;
  wire write_stb_received_r_i_1_n_0;

  FDRE \buf_read_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(Q),
        .Q(\buf_read_reg_n_0_[0] ),
        .R(SS));
  FDRE \buf_read_reg[10] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[9] ),
        .Q(\buf_read_reg_n_0_[10] ),
        .R(SS));
  FDRE \buf_read_reg[11] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[10] ),
        .Q(\buf_read_reg_n_0_[11] ),
        .R(SS));
  FDRE \buf_read_reg[12] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[11] ),
        .Q(\buf_read_reg_n_0_[12] ),
        .R(SS));
  FDRE \buf_read_reg[13] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[12] ),
        .Q(\buf_read_reg_n_0_[13] ),
        .R(SS));
  FDRE \buf_read_reg[14] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[13] ),
        .Q(\buf_read_reg_n_0_[14] ),
        .R(SS));
  FDRE \buf_read_reg[15] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[14] ),
        .Q(\buf_read_reg_n_0_[15] ),
        .R(SS));
  FDRE \buf_read_reg[16] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[15] ),
        .Q(\buf_read_reg_n_0_[16] ),
        .R(SS));
  FDRE \buf_read_reg[17] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[16] ),
        .Q(\buf_read_reg_n_0_[17] ),
        .R(SS));
  FDRE \buf_read_reg[18] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[17] ),
        .Q(\buf_read_reg_n_0_[18] ),
        .R(SS));
  FDRE \buf_read_reg[19] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[18] ),
        .Q(\buf_read_reg_n_0_[19] ),
        .R(SS));
  FDRE \buf_read_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[0] ),
        .Q(\buf_read_reg_n_0_[1] ),
        .R(SS));
  FDRE \buf_read_reg[20] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[19] ),
        .Q(\buf_read_reg_n_0_[20] ),
        .R(SS));
  FDRE \buf_read_reg[21] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[20] ),
        .Q(\buf_read_reg_n_0_[21] ),
        .R(SS));
  FDRE \buf_read_reg[22] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[21] ),
        .Q(\buf_read_reg_n_0_[22] ),
        .R(SS));
  FDRE \buf_read_reg[23] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[22] ),
        .Q(\buf_read_reg_n_0_[23] ),
        .R(SS));
  FDRE \buf_read_reg[24] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[23] ),
        .Q(\buf_read_reg_n_0_[24] ),
        .R(SS));
  FDRE \buf_read_reg[25] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[24] ),
        .Q(\buf_read_reg_n_0_[25] ),
        .R(SS));
  FDRE \buf_read_reg[26] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[25] ),
        .Q(\buf_read_reg_n_0_[26] ),
        .R(SS));
  FDRE \buf_read_reg[27] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[26] ),
        .Q(\buf_read_reg_n_0_[27] ),
        .R(SS));
  FDRE \buf_read_reg[28] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[27] ),
        .Q(\buf_read_reg_n_0_[28] ),
        .R(SS));
  FDRE \buf_read_reg[29] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[28] ),
        .Q(\buf_read_reg_n_0_[29] ),
        .R(SS));
  FDRE \buf_read_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[1] ),
        .Q(\buf_read_reg_n_0_[2] ),
        .R(SS));
  FDRE \buf_read_reg[30] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[29] ),
        .Q(\buf_read_reg_n_0_[30] ),
        .R(SS));
  FDRE \buf_read_reg[31] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[30] ),
        .Q(\buf_read_reg_n_0_[31] ),
        .R(SS));
  FDRE \buf_read_reg[32] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[31] ),
        .Q(\buf_read_reg_n_0_[32] ),
        .R(SS));
  FDRE \buf_read_reg[33] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[32] ),
        .Q(\buf_read_reg_n_0_[33] ),
        .R(SS));
  FDRE \buf_read_reg[34] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[33] ),
        .Q(\buf_read_reg_n_0_[34] ),
        .R(SS));
  FDRE \buf_read_reg[35] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[34] ),
        .Q(\buf_read_reg_n_0_[35] ),
        .R(SS));
  FDRE \buf_read_reg[36] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[35] ),
        .Q(\buf_read_reg_n_0_[36] ),
        .R(SS));
  FDRE \buf_read_reg[37] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[36] ),
        .Q(\buf_read_reg_n_0_[37] ),
        .R(SS));
  FDRE \buf_read_reg[38] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[37] ),
        .Q(\buf_read_reg_n_0_[38] ),
        .R(SS));
  FDRE \buf_read_reg[39] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[38] ),
        .Q(p_1_in[0]),
        .R(SS));
  FDRE \buf_read_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[2] ),
        .Q(\buf_read_reg_n_0_[3] ),
        .R(SS));
  FDRE \buf_read_reg[40] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[0]),
        .Q(p_1_in[1]),
        .R(SS));
  FDRE \buf_read_reg[41] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(SS));
  FDRE \buf_read_reg[42] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(SS));
  FDRE \buf_read_reg[43] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(SS));
  FDRE \buf_read_reg[44] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(SS));
  FDRE \buf_read_reg[45] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(p_1_in[5]),
        .Q(p_0_in),
        .R(SS));
  FDRE \buf_read_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[3] ),
        .Q(\buf_read_reg_n_0_[4] ),
        .R(SS));
  FDRE \buf_read_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[4] ),
        .Q(\buf_read_reg_n_0_[5] ),
        .R(SS));
  FDRE \buf_read_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[5] ),
        .Q(\buf_read_reg_n_0_[6] ),
        .R(SS));
  FDRE \buf_read_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[6] ),
        .Q(\buf_read_reg_n_0_[7] ),
        .R(SS));
  FDRE \buf_read_reg[8] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[7] ),
        .Q(\buf_read_reg_n_0_[8] ),
        .R(SS));
  FDRE \buf_read_reg[9] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_read_reg_n_0_[8] ),
        .Q(\buf_read_reg_n_0_[9] ),
        .R(SS));
  LUT3 #(
    .INIT(8'hBA)) 
    \buf_write[0]_i_1 
       (.I0(line_crc_n_6),
        .I1(line_crc_n_13),
        .I2(cmd_resp_byte[0]),
        .O(\buf_write[0]_i_1_n_0 ));
  FDRE \buf_write_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buf_write[0]_i_1_n_0 ),
        .Q(buf_write[0]),
        .R(SS));
  FDRE \buf_write_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_12),
        .Q(buf_write[1]),
        .R(SS));
  FDRE \buf_write_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_11),
        .Q(buf_write[2]),
        .R(SS));
  FDRE \buf_write_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_10),
        .Q(buf_write[3]),
        .R(SS));
  FDRE \buf_write_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_9),
        .Q(buf_write[4]),
        .R(SS));
  FDRE \buf_write_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_8),
        .Q(buf_write[5]),
        .R(SS));
  FDRE \buf_write_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_7),
        .Q(buf_write[6]),
        .R(SS));
  FDRE \cmd_arg_reg[0] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[7] ),
        .Q(cmd_arg[0]),
        .R(SS));
  FDRE \cmd_arg_reg[10] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[17] ),
        .Q(cmd_arg[10]),
        .R(SS));
  FDRE \cmd_arg_reg[11] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[18] ),
        .Q(cmd_arg[11]),
        .R(SS));
  FDRE \cmd_arg_reg[12] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[19] ),
        .Q(cmd_arg[12]),
        .R(SS));
  FDRE \cmd_arg_reg[13] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[20] ),
        .Q(cmd_arg[13]),
        .R(SS));
  FDRE \cmd_arg_reg[14] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[21] ),
        .Q(cmd_arg[14]),
        .R(SS));
  FDRE \cmd_arg_reg[15] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[22] ),
        .Q(cmd_arg[15]),
        .R(SS));
  FDRE \cmd_arg_reg[16] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[23] ),
        .Q(cmd_arg[16]),
        .R(SS));
  FDRE \cmd_arg_reg[17] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[24] ),
        .Q(cmd_arg[17]),
        .R(SS));
  FDRE \cmd_arg_reg[18] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[25] ),
        .Q(cmd_arg[18]),
        .R(SS));
  FDRE \cmd_arg_reg[19] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[26] ),
        .Q(cmd_arg[19]),
        .R(SS));
  FDRE \cmd_arg_reg[1] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[8] ),
        .Q(cmd_arg[1]),
        .R(SS));
  FDRE \cmd_arg_reg[20] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[27] ),
        .Q(cmd_arg[20]),
        .R(SS));
  FDRE \cmd_arg_reg[21] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[28] ),
        .Q(cmd_arg[21]),
        .R(SS));
  FDRE \cmd_arg_reg[22] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[29] ),
        .Q(cmd_arg[22]),
        .R(SS));
  FDRE \cmd_arg_reg[23] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[30] ),
        .Q(cmd_arg[23]),
        .R(SS));
  FDRE \cmd_arg_reg[24] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[31] ),
        .Q(cmd_arg[24]),
        .R(SS));
  FDRE \cmd_arg_reg[25] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[32] ),
        .Q(cmd_arg[25]),
        .R(SS));
  FDRE \cmd_arg_reg[26] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[33] ),
        .Q(cmd_arg[26]),
        .R(SS));
  FDRE \cmd_arg_reg[27] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[34] ),
        .Q(cmd_arg[27]),
        .R(SS));
  FDRE \cmd_arg_reg[28] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[35] ),
        .Q(cmd_arg[28]),
        .R(SS));
  FDRE \cmd_arg_reg[29] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[36] ),
        .Q(cmd_arg[29]),
        .R(SS));
  FDRE \cmd_arg_reg[2] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[9] ),
        .Q(cmd_arg[2]),
        .R(SS));
  FDRE \cmd_arg_reg[30] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[37] ),
        .Q(cmd_arg[30]),
        .R(SS));
  FDRE \cmd_arg_reg[31] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[38] ),
        .Q(cmd_arg[31]),
        .R(SS));
  FDRE \cmd_arg_reg[3] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[10] ),
        .Q(cmd_arg[3]),
        .R(SS));
  FDRE \cmd_arg_reg[4] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[11] ),
        .Q(cmd_arg[4]),
        .R(SS));
  FDRE \cmd_arg_reg[5] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[12] ),
        .Q(cmd_arg[5]),
        .R(SS));
  FDRE \cmd_arg_reg[6] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[13] ),
        .Q(cmd_arg[6]),
        .R(SS));
  FDRE \cmd_arg_reg[7] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[14] ),
        .Q(cmd_arg[7]),
        .R(SS));
  FDRE \cmd_arg_reg[8] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[15] ),
        .Q(cmd_arg[8]),
        .R(SS));
  FDRE \cmd_arg_reg[9] 
       (.C(clk),
        .CE(update_read),
        .D(\buf_read_reg_n_0_[16] ),
        .Q(cmd_arg[9]),
        .R(SS));
  FDRE cmd_crc_err_reg
       (.C(clk),
        .CE(update_read),
        .D(cmd_crc_err_next),
        .Q(cmd_crc_err),
        .R(SS));
  FDRE \cmd_index_reg[0] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[0]),
        .Q(cmd_index[0]),
        .R(SS));
  FDRE \cmd_index_reg[1] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[1]),
        .Q(cmd_index[1]),
        .R(SS));
  FDRE \cmd_index_reg[2] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[2]),
        .Q(cmd_index[2]),
        .R(SS));
  FDRE \cmd_index_reg[3] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[3]),
        .Q(cmd_index[3]),
        .R(SS));
  FDRE \cmd_index_reg[4] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[4]),
        .Q(cmd_index[4]),
        .R(SS));
  FDRE \cmd_index_reg[5] 
       (.C(clk),
        .CE(update_read),
        .D(p_1_in[5]),
        .Q(cmd_index[5]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd_resp_pos[0]_INST_0 
       (.I0(p_2_in3_in),
        .I1(counter[3]),
        .O(cmd_resp_pos[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \cmd_resp_pos[1]_INST_0 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(p_2_in3_in),
        .O(cmd_resp_pos[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cmd_resp_pos[2]_INST_0 
       (.I0(p_2_in3_in),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[5]),
        .O(cmd_resp_pos[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cmd_resp_pos[3]_INST_0 
       (.I0(p_2_in3_in),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[6]),
        .O(cmd_resp_pos[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cmd_resp_pos[4]_INST_0 
       (.I0(p_2_in3_in),
        .I1(counter[5]),
        .I2(counter[3]),
        .I3(counter[4]),
        .I4(counter[6]),
        .I5(counter[7]),
        .O(cmd_resp_pos[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \counter[6]_i_1 
       (.I0(counter[6]),
        .I1(line_crc_n_20),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[7]_i_5 
       (.I0(p_0_in5_in),
        .I1(\state[3]_i_1_n_0 ),
        .O(\counter[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEA11)) 
    \counter[7]_i_6 
       (.I0(line_crc_n_0),
        .I1(line_crc_n_15),
        .I2(line_crc_n_14),
        .I3(p_2_in3_in),
        .O(\counter[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF085)) 
    \counter[7]_i_7 
       (.I0(line_crc_n_27),
        .I1(line_crc_n_14),
        .I2(p_1_in2_in),
        .I3(line_crc_n_0),
        .O(\counter[7]_i_7_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter[0]),
        .R(line_crc_n_26));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(line_crc_n_26));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(line_crc_n_26));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_19),
        .Q(counter[3]),
        .R(line_crc_n_26));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(line_crc_n_26));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_18),
        .Q(counter[5]),
        .R(line_crc_n_26));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(line_crc_n_26));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(line_crc_n_17),
        .Q(counter[7]),
        .R(line_crc_n_26));
  LUT1 #(
    .INIT(2'h1)) 
    got_new_cmd_i_1
       (.I0(resetn),
        .O(SS));
  LUT5 #(
    .INIT(32'h80000000)) 
    got_new_cmd_i_3
       (.I0(counter[5]),
        .I1(new_sd_clk),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .O(got_new_cmd_i_3_n_0));
  FDRE got_new_cmd_reg
       (.C(clk),
        .CE(1'b1),
        .D(update_read),
        .Q(got_new_cmd),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    is_writing_inv_i_1
       (.I0(\state[3]_i_1_n_0 ),
        .I1(\state[5]_i_1_n_0 ),
        .I2(line_crc_n_5),
        .O(is_writing0));
  FDSE is_writing_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(is_writing0),
        .Q(sd_cmd_t_sys),
        .S(SS));
  block_design_sd_card_0_line_crc line_crc
       (.D({line_crc_n_1,line_crc_n_2,line_crc_n_3}),
        .E(update_read),
        .Q({p_1_in2_in,p_2_in3_in,p_0_in5_in,p_1_in6_in,p_4_in,\state_reg_n_0_[0] }),
        .SR(line_crc_n_26),
        .clk(clk),
        .\cmd_arg_reg[0] (got_new_cmd_i_3_n_0),
        .\cmd_arg_reg[0]_0 (p_0_in),
        .cmd_crc_err_next(cmd_crc_err_next),
        .cmd_resp_byte(cmd_resp_byte[7:1]),
        .cmd_resp_len(cmd_resp_len),
        .\counter_reg[2] (line_crc_n_13),
        .\counter_reg[4] (line_crc_n_20),
        .\counter_reg[6] (line_crc_n_25),
        .\counter_reg[7] ({line_crc_n_17,line_crc_n_18,line_crc_n_19}),
        .\counter_reg[7]_0 (counter),
        .\counter_reg[7]_1 (\counter[7]_i_5_n_0 ),
        .\counter_reg[7]_2 (\counter[7]_i_6_n_0 ),
        .\counter_reg[7]_3 (\counter[7]_i_7_n_0 ),
        .\crc_reg[0]_0 (buf_write),
        .\crc_reg[5]_0 ({line_crc_n_7,line_crc_n_8,line_crc_n_9,line_crc_n_10,line_crc_n_11,line_crc_n_12}),
        .new_sd_clk(new_sd_clk),
        .resetn(resetn),
        .resp_no_crc(resp_no_crc),
        .resp_no_crc_reg(line_crc_n_16),
        .resp_none(resp_none),
        .resp_start(resp_start),
        .sd_cmd_o_sys0(sd_cmd_o_sys0),
        .sd_cmd_o_sys_reg(sd_cmd_o_sys_i_2_n_0),
        .sd_cmd_o_sys_reg_0(\state[5]_i_1_n_0 ),
        .\state_reg[0] (line_crc_n_0),
        .\state_reg[0]_0 (\state[0]_i_5_n_0 ),
        .\state_reg[0]_1 (\state[0]_i_3_n_0 ),
        .\state_reg[1] (line_crc_n_23),
        .\state_reg[1]_0 (Q),
        .\state_reg[2] (line_crc_n_14),
        .\state_reg[3] (line_crc_n_24),
        .\state_reg[4] (line_crc_n_5),
        .\state_reg[4]_0 (line_crc_n_15),
        .\state_reg[5] (line_crc_n_6),
        .\state_reg[5]_0 (line_crc_n_27),
        .write_stb_received_r(write_stb_received_r));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sd_cmd_o_sys_i_2
       (.I0(line_crc_n_16),
        .I1(p_4_in),
        .I2(p_1_in6_in),
        .I3(\state_reg_n_0_[0] ),
        .O(sd_cmd_o_sys_i_2_n_0));
  FDSE sd_cmd_o_sys_reg
       (.C(clk),
        .CE(new_sd_clk),
        .D(sd_cmd_o_sys0),
        .Q(sd_cmd_o_sys),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h44444544)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(line_crc_n_23),
        .I2(p_4_in),
        .I3(p_1_in6_in),
        .I4(resp_none),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFFAB0FABFFAB00)) 
    \state[0]_i_5 
       (.I0(line_crc_n_25),
        .I1(\state[0]_i_6_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(p_2_in3_in),
        .I5(p_1_in2_in),
        .O(\state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h11111000)) 
    \state[0]_i_6 
       (.I0(resp_start),
        .I1(write_stb_received_r),
        .I2(new_sd_clk),
        .I3(counter[5]),
        .I4(resp_none),
        .O(\state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_1_in6_in),
        .I3(p_4_in),
        .I4(line_crc_n_24),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFDDDD00005500)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(line_crc_n_23),
        .I2(Q),
        .I3(new_sd_clk),
        .I4(\state_reg_n_0_[0] ),
        .I5(p_0_in5_in),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \state[3]_i_4 
       (.I0(p_4_in),
        .I1(p_1_in6_in),
        .I2(resp_none),
        .O(\state[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[4]_i_1 
       (.I0(line_crc_n_5),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \state[5]_i_1 
       (.I0(line_crc_n_0),
        .I1(p_1_in2_in),
        .I2(line_crc_n_14),
        .I3(line_crc_n_27),
        .O(\state[5]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_crc_n_3),
        .Q(\state_reg_n_0_[0] ),
        .R(SS));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(line_crc_n_2),
        .Q(p_4_in),
        .R(SS));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(line_crc_n_1),
        .Q(p_1_in6_in),
        .R(SS));
  FDRE \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(p_0_in5_in),
        .R(SS));
  FDRE \state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[4]_i_1_n_0 ),
        .Q(p_2_in3_in),
        .R(SS));
  FDRE \state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[5]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(SS));
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    write_stb_received_r_i_1
       (.I0(p_1_in6_in),
        .I1(p_0_in5_in),
        .I2(resetn),
        .I3(resp_start),
        .I4(write_stb_received_r),
        .O(write_stb_received_r_i_1_n_0));
  FDRE write_stb_received_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_stb_received_r_i_1_n_0),
        .Q(write_stb_received_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "command_validator" *) 
module block_design_sd_card_0_command_validator
   (cmd8_vhs_match,
    acmd_defined_reg_0,
    \FSM_onehot_state_reg[2] ,
    resetn_out_reg,
    acmd_defined_reg_1,
    update_1,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    E,
    update_2,
    \set_reg_clear_always[22].reg_clear_always_reg[22][5] ,
    \cmd_index_reg[5] ,
    \cmd_index_reg[0] ,
    \cmd_index_reg[3] ,
    D,
    \cmd_index_reg[3]_0 ,
    resp_no_crc_next,
    \cmd_index_reg[1] ,
    acmd_defined_reg_2,
    \cmd_index_reg[3]_1 ,
    \cmd_index_reg[0]_0 ,
    resetn_out_reg_0,
    \cmd_index_reg[3]_2 ,
    acmd_defined_reg_3,
    \cmd_index_reg[0]_1 ,
    \cmd_index_reg[0]_2 ,
    \cmd_index_reg[4] ,
    \cmd_index_reg[1]_0 ,
    acmd_defined_reg_4,
    \cmd_index_reg[0]_3 ,
    \cmd_index_reg[5]_0 ,
    \cmd_index_reg[5]_1 ,
    acmd_defined_reg_5,
    \cmd_index_reg[3]_3 ,
    cmd_illegal_stb0,
    cmd_ignored_stb0,
    send_no_resp0,
    \reg_saved_reg[11][1] ,
    resetn_out_reg_1,
    is_inactive_reg,
    got_acmd41_non_query_reg,
    \cmd_index_reg[3]_4 ,
    \cmd_index_reg[4]_0 ,
    \cmd_index_reg[1]_1 ,
    resetn_out_reg_2,
    SR,
    clk,
    valid_c1_out,
    ignored_c,
    illegal_reg_0,
    acmd_defined_c,
    Q,
    erase_seq_error_reg,
    resetn_0,
    erase_seq_error_reg_0,
    erase_seq_error,
    cmd_index,
    \block_type_reg[1] ,
    \block_type_reg[1]_0 ,
    \card_status_reg[5] ,
    \card_status_reg[5]_0 ,
    \card_status_reg[5]_1 ,
    \card_status_reg[5]_2 ,
    \save_erase_vars[0].erase_vars_reg[0][31] ,
    \resp_type_out_reg[5] ,
    cmd_received_good,
    cmd_crc_err,
    got_new_cmd,
    got_acmd41_non_query_reg_0,
    got_acmd41_non_query_reg_1,
    cmd_arg,
    \card_status_resp_reg[5] ,
    erase_reset_reg,
    rca_match,
    invalid_dat_width_reg,
    out_of_range_reg,
    resp_start,
    \assign_reg_mux[2].reg_needed.mux_reg[1] ,
    \assign_reg_mux[2].reg_needed.mux_reg[1]_0 ,
    s_axi_araddr,
    \assign_reg_mux[2].reg_needed.mux_reg[1]_1 ,
    \resp_type_out_reg[1] ,
    is_inactive_reg_0,
    is_inactive_reg_1,
    is_inactive,
    got_cmd8_reg,
    got_cmd8,
    sd_dat3_pullup_off_reg,
    sd_dat3_pullup_off,
    \resp_type_out_reg[5]_0 );
  output cmd8_vhs_match;
  output acmd_defined_reg_0;
  output \FSM_onehot_state_reg[2] ;
  output resetn_out_reg;
  output acmd_defined_reg_1;
  output update_1;
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[1]_0 ;
  output [0:0]E;
  output update_2;
  output [0:0]\set_reg_clear_always[22].reg_clear_always_reg[22][5] ;
  output [0:0]\cmd_index_reg[5] ;
  output [0:0]\cmd_index_reg[0] ;
  output [0:0]\cmd_index_reg[3] ;
  output [4:0]D;
  output [3:0]\cmd_index_reg[3]_0 ;
  output resp_no_crc_next;
  output \cmd_index_reg[1] ;
  output [1:0]acmd_defined_reg_2;
  output \cmd_index_reg[3]_1 ;
  output \cmd_index_reg[0]_0 ;
  output resetn_out_reg_0;
  output \cmd_index_reg[3]_2 ;
  output [0:0]acmd_defined_reg_3;
  output \cmd_index_reg[0]_1 ;
  output \cmd_index_reg[0]_2 ;
  output \cmd_index_reg[4] ;
  output \cmd_index_reg[1]_0 ;
  output acmd_defined_reg_4;
  output \cmd_index_reg[0]_3 ;
  output \cmd_index_reg[5]_0 ;
  output \cmd_index_reg[5]_1 ;
  output acmd_defined_reg_5;
  output \cmd_index_reg[3]_3 ;
  output cmd_illegal_stb0;
  output cmd_ignored_stb0;
  output send_no_resp0;
  output [1:0]\reg_saved_reg[11][1] ;
  output resetn_out_reg_1;
  output is_inactive_reg;
  output got_acmd41_non_query_reg;
  output \cmd_index_reg[3]_4 ;
  output \cmd_index_reg[4]_0 ;
  output \cmd_index_reg[1]_1 ;
  output resetn_out_reg_2;
  input [0:0]SR;
  input clk;
  input valid_c1_out;
  input ignored_c;
  input illegal_reg_0;
  input acmd_defined_c;
  input [4:0]Q;
  input erase_seq_error_reg;
  input resetn_0;
  input erase_seq_error_reg_0;
  input erase_seq_error;
  input [5:0]cmd_index;
  input \block_type_reg[1] ;
  input \block_type_reg[1]_0 ;
  input \card_status_reg[5] ;
  input \card_status_reg[5]_0 ;
  input [0:0]\card_status_reg[5]_1 ;
  input [0:0]\card_status_reg[5]_2 ;
  input \save_erase_vars[0].erase_vars_reg[0][31] ;
  input \resp_type_out_reg[5] ;
  input cmd_received_good;
  input cmd_crc_err;
  input got_new_cmd;
  input got_acmd41_non_query_reg_0;
  input got_acmd41_non_query_reg_1;
  input [3:0]cmd_arg;
  input \card_status_resp_reg[5] ;
  input erase_reset_reg;
  input rca_match;
  input invalid_dat_width_reg;
  input out_of_range_reg;
  input resp_start;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1] ;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1]_0 ;
  input [1:0]s_axi_araddr;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1]_1 ;
  input [0:0]\resp_type_out_reg[1] ;
  input is_inactive_reg_0;
  input is_inactive_reg_1;
  input is_inactive;
  input got_cmd8_reg;
  input got_cmd8;
  input sd_dat3_pullup_off_reg;
  input sd_dat3_pullup_off;
  input \resp_type_out_reg[5]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire acmd_defined_c;
  wire acmd_defined_reg_0;
  wire acmd_defined_reg_1;
  wire [1:0]acmd_defined_reg_2;
  wire [0:0]acmd_defined_reg_3;
  wire acmd_defined_reg_4;
  wire acmd_defined_reg_5;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1] ;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1]_0 ;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[1]_1 ;
  wire \block_type[1]_i_3_n_0 ;
  wire \block_type[1]_i_6_n_0 ;
  wire \block_type_reg[1] ;
  wire \block_type_reg[1]_0 ;
  wire \card_status[11]_i_15_n_0 ;
  wire \card_status[11]_i_16_n_0 ;
  wire \card_status_reg[5] ;
  wire \card_status_reg[5]_0 ;
  wire [0:0]\card_status_reg[5]_1 ;
  wire [0:0]\card_status_reg[5]_2 ;
  wire \card_status_resp[31]_i_4_n_0 ;
  wire \card_status_resp[31]_i_5_n_0 ;
  wire \card_status_resp_reg[5] ;
  wire clk;
  wire cmd8_vhs_match;
  wire [3:0]cmd_arg;
  wire cmd_crc_err;
  wire cmd_discard_block_limit_i_2_n_0;
  wire cmd_discard_block_limit_i_3_n_0;
  wire cmd_discard_block_limit_i_4_n_0;
  wire cmd_ignored_stb0;
  wire cmd_illegal;
  wire cmd_illegal_stb0;
  wire [5:0]cmd_index;
  wire [0:0]\cmd_index_reg[0] ;
  wire \cmd_index_reg[0]_0 ;
  wire \cmd_index_reg[0]_1 ;
  wire \cmd_index_reg[0]_2 ;
  wire \cmd_index_reg[0]_3 ;
  wire \cmd_index_reg[1] ;
  wire \cmd_index_reg[1]_0 ;
  wire \cmd_index_reg[1]_1 ;
  wire [0:0]\cmd_index_reg[3] ;
  wire [3:0]\cmd_index_reg[3]_0 ;
  wire \cmd_index_reg[3]_1 ;
  wire \cmd_index_reg[3]_2 ;
  wire \cmd_index_reg[3]_3 ;
  wire \cmd_index_reg[3]_4 ;
  wire \cmd_index_reg[4] ;
  wire \cmd_index_reg[4]_0 ;
  wire [0:0]\cmd_index_reg[5] ;
  wire \cmd_index_reg[5]_0 ;
  wire \cmd_index_reg[5]_1 ;
  wire cmd_received_good;
  wire erase_reset_reg;
  wire erase_seq_error;
  wire erase_seq_error_reg;
  wire erase_seq_error_reg_0;
  wire got_acmd41_non_query_i_2_n_0;
  wire got_acmd41_non_query_reg;
  wire got_acmd41_non_query_reg_0;
  wire got_acmd41_non_query_reg_1;
  wire got_cmd8;
  wire got_cmd8_reg;
  wire got_new_cmd;
  wire ignored_c;
  wire illegal_reg_0;
  wire invalid_dat_width_reg;
  wire is_inactive;
  wire is_inactive_reg;
  wire is_inactive_reg_0;
  wire is_inactive_reg_1;
  wire last_cmd_ignored;
  wire last_cmd_valid;
  wire out_of_range_reg;
  wire p_1_in__0;
  wire rca_match;
  wire [1:0]\reg_saved_reg[11][1] ;
  wire resetn_0;
  wire resetn_out_reg;
  wire resetn_out_reg_0;
  wire resetn_out_reg_1;
  wire resetn_out_reg_2;
  wire \resp_cur[0]_i_2_n_0 ;
  wire \resp_cur[0]_i_3_n_0 ;
  wire \resp_len[4]_i_2_n_0 ;
  wire resp_no_crc_next;
  wire resp_start;
  wire [0:0]\resp_type_out_reg[1] ;
  wire \resp_type_out_reg[5] ;
  wire \resp_type_out_reg[5]_0 ;
  wire [1:0]s_axi_araddr;
  wire \save_erase_vars[0].erase_vars_reg[0][31] ;
  wire sd_dat3_pullup_off;
  wire sd_dat3_pullup_off_reg;
  wire send_no_resp0;
  wire [0:0]\set_reg_clear_always[22].reg_clear_always_reg[22][5] ;
  wire update_1;
  wire update_2;
  wire \update_phase_reg_n_0_[0] ;
  wire valid_c1_out;
  wire validator_done;

  LUT6 #(
    .INIT(64'hDDCCFCCCFDFCFCFC)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(last_cmd_valid),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(validator_done),
        .I5(cmd_received_good),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hD0DCD0D0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(validator_done),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cmd_crc_err),
        .I4(got_new_cmd),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF222F2F2F0000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[0]),
        .I1(cmd_received_good),
        .I2(Q[1]),
        .I3(last_cmd_valid),
        .I4(validator_done),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF08AA0808)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cmd_received_good),
        .I3(validator_done),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF08AA0808)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(cmd_received_good),
        .I3(validator_done),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFDFFFB7CFFFE7FF)) 
    acmd_defined_i_2
       (.I0(cmd_index[0]),
        .I1(cmd_index[3]),
        .I2(cmd_index[1]),
        .I3(cmd_index[2]),
        .I4(cmd_index[4]),
        .I5(cmd_index[5]),
        .O(\cmd_index_reg[0]_0 ));
  FDRE acmd_defined_reg
       (.C(clk),
        .CE(\update_phase_reg_n_0_[0] ),
        .D(acmd_defined_c),
        .Q(acmd_defined_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[0]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[1] [0]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[1]_0 [0]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[1]_1 [0]),
        .I4(s_axi_araddr[1]),
        .I5(last_cmd_ignored),
        .O(\reg_saved_reg[11][1] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[1]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[1] [1]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[1]_0 [1]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[1]_1 [1]),
        .I4(s_axi_araddr[1]),
        .I5(last_cmd_valid),
        .O(\reg_saved_reg[11][1] [1]));
  LUT6 #(
    .INIT(64'h2202020222A2A2A2)) 
    \block_type[1]_i_1 
       (.I0(update_2),
        .I1(\block_type[1]_i_3_n_0 ),
        .I2(cmd_index[2]),
        .I3(\block_type_reg[1] ),
        .I4(\block_type_reg[1]_0 ),
        .I5(\block_type[1]_i_6_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hBB7BABFBFBBBBBBF)) 
    \block_type[1]_i_3 
       (.I0(acmd_defined_reg_0),
        .I1(cmd_index[4]),
        .I2(cmd_index[5]),
        .I3(cmd_index[3]),
        .I4(cmd_index[0]),
        .I5(cmd_index[1]),
        .O(\block_type[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFFFFFFFDEFF)) 
    \block_type[1]_i_6 
       (.I0(cmd_index[4]),
        .I1(cmd_index[5]),
        .I2(acmd_defined_reg_0),
        .I3(cmd_index[1]),
        .I4(cmd_index[0]),
        .I5(cmd_index[3]),
        .O(\block_type[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \card_status[11]_i_15 
       (.I0(Q[1]),
        .I1(last_cmd_valid),
        .I2(validator_done),
        .O(\card_status[11]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00D0DDDD)) 
    \card_status[11]_i_16 
       (.I0(Q[1]),
        .I1(validator_done),
        .I2(got_new_cmd),
        .I3(cmd_crc_err),
        .I4(Q[0]),
        .O(\card_status[11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF11F1)) 
    \card_status[11]_i_7 
       (.I0(\card_status[11]_i_15_n_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(\card_status[11]_i_16_n_0 ),
        .I4(Q[3]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \card_status[5]_i_1 
       (.I0(\card_status_reg[5] ),
        .I1(update_2),
        .I2(\card_status_reg[5]_0 ),
        .I3(\card_status_reg[5]_1 ),
        .I4(\card_status_reg[5]_2 ),
        .O(\set_reg_clear_always[22].reg_clear_always_reg[22][5] ));
  LUT6 #(
    .INIT(64'h8808080808080808)) 
    \card_status_resp[31]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\card_status_resp[31]_i_4_n_0 ),
        .I2(\card_status_resp[31]_i_5_n_0 ),
        .I3(validator_done),
        .I4(last_cmd_valid),
        .I5(Q[1]),
        .O(update_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0CEE0C)) 
    \card_status_resp[31]_i_3 
       (.I0(cmd_received_good),
        .I1(Q[1]),
        .I2(validator_done),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_onehot_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5100515155555555)) 
    \card_status_resp[31]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(validator_done),
        .I3(cmd_received_good),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\card_status_resp[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5100515155555555)) 
    \card_status_resp[31]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(validator_done),
        .I3(cmd_received_good),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\card_status_resp[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \card_status_resp[5]_i_1 
       (.I0(acmd_defined_reg_0),
        .I1(cmd_index[5]),
        .I2(cmd_index[4]),
        .I3(\card_status_resp_reg[5] ),
        .I4(cmd_index[3]),
        .I5(cmd_index[0]),
        .O(acmd_defined_reg_3));
  LUT4 #(
    .INIT(16'h0010)) 
    cmd8_vhs_match_i_1
       (.I0(cmd_arg[3]),
        .I1(cmd_arg[2]),
        .I2(cmd_arg[0]),
        .I3(cmd_arg[1]),
        .O(p_1_in__0));
  FDRE cmd8_vhs_match_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0),
        .Q(cmd8_vhs_match),
        .R(SR));
  LUT5 #(
    .INIT(32'h00800A8A)) 
    cmd_discard_block_limit_i_1
       (.I0(resetn_0),
        .I1(cmd_discard_block_limit_i_2_n_0),
        .I2(cmd_index[0]),
        .I3(cmd_discard_block_limit_i_3_n_0),
        .I4(cmd_discard_block_limit_i_4_n_0),
        .O(resetn_out_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFF7FFF7FF)) 
    cmd_discard_block_limit_i_2
       (.I0(cmd_index[2]),
        .I1(cmd_index[1]),
        .I2(cmd_index[3]),
        .I3(cmd_index[4]),
        .I4(acmd_defined_reg_0),
        .I5(cmd_index[5]),
        .O(cmd_discard_block_limit_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    cmd_discard_block_limit_i_3
       (.I0(cmd_index[2]),
        .I1(cmd_index[4]),
        .I2(cmd_index[3]),
        .I3(acmd_defined_reg_0),
        .I4(cmd_index[5]),
        .I5(cmd_index[1]),
        .O(cmd_discard_block_limit_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    cmd_discard_block_limit_i_4
       (.I0(acmd_defined_reg_0),
        .I1(cmd_index[4]),
        .I2(cmd_index[5]),
        .I3(cmd_index[2]),
        .I4(cmd_index[1]),
        .I5(cmd_index[3]),
        .O(cmd_discard_block_limit_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_ignored_stb_i_1
       (.I0(Q[1]),
        .I1(last_cmd_ignored),
        .O(cmd_ignored_stb0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_illegal_stb_i_1
       (.I0(cmd_illegal),
        .I1(Q[1]),
        .O(cmd_illegal_stb0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    erase_reset_i_2
       (.I0(acmd_defined_reg_0),
        .I1(erase_reset_reg),
        .I2(erase_seq_error_reg_0),
        .O(acmd_defined_reg_4));
  LUT6 #(
    .INIT(64'h4000F0F040000000)) 
    erase_seq_error_i_1
       (.I0(acmd_defined_reg_1),
        .I1(erase_seq_error_reg),
        .I2(resetn_0),
        .I3(erase_seq_error_reg_0),
        .I4(update_1),
        .I5(erase_seq_error),
        .O(resetn_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \erase_step[1]_i_2 
       (.I0(erase_reset_reg),
        .I1(acmd_defined_reg_0),
        .O(acmd_defined_reg_1));
  LUT3 #(
    .INIT(8'hF8)) 
    got_acmd41_non_query_i_1
       (.I0(update_1),
        .I1(got_acmd41_non_query_i_2_n_0),
        .I2(got_acmd41_non_query_reg_1),
        .O(got_acmd41_non_query_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    got_acmd41_non_query_i_2
       (.I0(\cmd_index_reg[3]_0 [1]),
        .I1(got_acmd41_non_query_reg_0),
        .I2(got_acmd41_non_query_reg_1),
        .O(got_acmd41_non_query_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    got_cmd8_i_1
       (.I0(update_1),
        .I1(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I2(cmd_index[3]),
        .I3(cmd_index[5]),
        .I4(got_cmd8_reg),
        .I5(got_cmd8),
        .O(\cmd_index_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h1090100101113101)) 
    ignored_i_2
       (.I0(cmd_index[5]),
        .I1(cmd_index[4]),
        .I2(cmd_index[0]),
        .I3(cmd_index[3]),
        .I4(cmd_index[1]),
        .I5(cmd_index[2]),
        .O(\cmd_index_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFDDFFFFFFFFF)) 
    ignored_i_4
       (.I0(cmd_index[0]),
        .I1(cmd_index[4]),
        .I2(cmd_index[5]),
        .I3(cmd_index[2]),
        .I4(cmd_index[1]),
        .I5(cmd_index[3]),
        .O(\cmd_index_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h1810001000001000)) 
    ignored_i_5
       (.I0(cmd_index[4]),
        .I1(cmd_index[5]),
        .I2(cmd_index[3]),
        .I3(cmd_index[1]),
        .I4(cmd_index[2]),
        .I5(cmd_index[0]),
        .O(\cmd_index_reg[4] ));
  FDRE ignored_reg
       (.C(clk),
        .CE(\update_phase_reg_n_0_[0] ),
        .D(ignored_c),
        .Q(last_cmd_ignored),
        .R(SR));
  FDRE illegal_reg
       (.C(clk),
        .CE(\update_phase_reg_n_0_[0] ),
        .D(illegal_reg_0),
        .Q(cmd_illegal),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    invalid_dat_width_i_2
       (.I0(acmd_defined_reg_0),
        .I1(cmd_index[4]),
        .I2(cmd_index[3]),
        .I3(cmd_index[5]),
        .I4(invalid_dat_width_reg),
        .O(acmd_defined_reg_5));
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    is_inactive_i_1
       (.I0(got_acmd41_non_query_i_2_n_0),
        .I1(is_inactive_reg_0),
        .I2(is_inactive_reg_1),
        .I3(update_1),
        .I4(is_inactive),
        .O(is_inactive_reg));
  LUT6 #(
    .INIT(64'h0000000000360000)) 
    out_of_range_i_1
       (.I0(cmd_index[3]),
        .I1(cmd_index[1]),
        .I2(cmd_index[0]),
        .I3(acmd_defined_reg_0),
        .I4(cmd_index[4]),
        .I5(out_of_range_reg),
        .O(\cmd_index_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \rca[15]_i_1 
       (.I0(update_1),
        .I1(cmd_index[3]),
        .I2(cmd_index[0]),
        .I3(cmd_index[1]),
        .I4(\resp_type_out_reg[5] ),
        .I5(cmd_index[2]),
        .O(\cmd_index_reg[3] ));
  LUT6 #(
    .INIT(64'h00000000A2222222)) 
    \rca[15]_i_3 
       (.I0(\card_status_resp[31]_i_4_n_0 ),
        .I1(\card_status_resp[31]_i_5_n_0 ),
        .I2(validator_done),
        .I3(last_cmd_valid),
        .I4(Q[1]),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(update_1));
  LUT1 #(
    .INIT(2'h1)) 
    \resp_cur[0]_i_1 
       (.I0(\resp_cur[0]_i_2_n_0 ),
        .O(acmd_defined_reg_2[0]));
  LUT6 #(
    .INIT(64'h4044010101114141)) 
    \resp_cur[0]_i_2 
       (.I0(\resp_cur[0]_i_3_n_0 ),
        .I1(cmd_index[0]),
        .I2(cmd_index[5]),
        .I3(rca_match),
        .I4(cmd_index[2]),
        .I5(cmd_index[1]),
        .O(\resp_cur[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD8F8)) 
    \resp_cur[0]_i_3 
       (.I0(cmd_index[3]),
        .I1(cmd_index[2]),
        .I2(cmd_index[5]),
        .I3(acmd_defined_reg_0),
        .I4(cmd_index[4]),
        .O(\resp_cur[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007F00)) 
    \resp_cur[2]_i_1 
       (.I0(Q[1]),
        .I1(last_cmd_valid),
        .I2(validator_done),
        .I3(\card_status_resp[31]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .I5(\card_status_resp[31]_i_4_n_0 ),
        .O(\FSM_onehot_state_reg[1] ));
  LUT6 #(
    .INIT(64'h000000C080300000)) 
    \resp_cur[2]_i_2 
       (.I0(acmd_defined_reg_0),
        .I1(cmd_index[0]),
        .I2(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I3(cmd_index[5]),
        .I4(cmd_index[3]),
        .I5(cmd_index[1]),
        .O(acmd_defined_reg_2[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \resp_len[0]_i_1 
       (.I0(cmd_index[1]),
        .I1(cmd_index[5]),
        .I2(cmd_index[3]),
        .I3(cmd_index[0]),
        .I4(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I5(acmd_defined_reg_0),
        .O(\cmd_index_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \resp_len[1]_i_1 
       (.I0(acmd_defined_reg_0),
        .I1(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I2(cmd_index[0]),
        .I3(cmd_index[3]),
        .I4(cmd_index[5]),
        .I5(cmd_index[1]),
        .O(\cmd_index_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hFFDFDFDFFFFFDFFF)) 
    \resp_len[2]_i_1 
       (.I0(\resp_len[4]_i_2_n_0 ),
        .I1(cmd_index[2]),
        .I2(\resp_type_out_reg[5] ),
        .I3(cmd_index[1]),
        .I4(cmd_index[0]),
        .I5(cmd_index[3]),
        .O(\cmd_index_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h00003A0000000000)) 
    \resp_len[4]_i_1 
       (.I0(cmd_index[3]),
        .I1(cmd_index[0]),
        .I2(cmd_index[1]),
        .I3(\resp_type_out_reg[5] ),
        .I4(cmd_index[2]),
        .I5(\resp_len[4]_i_2_n_0 ),
        .O(\cmd_index_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hBDFFFBFFFDFFFBFF)) 
    \resp_len[4]_i_2 
       (.I0(cmd_index[1]),
        .I1(cmd_index[3]),
        .I2(cmd_index[5]),
        .I3(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I4(cmd_index[0]),
        .I5(acmd_defined_reg_0),
        .O(\resp_len[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    resp_no_crc_i_1
       (.I0(\cmd_index_reg[3]_0 [1]),
        .I1(\cmd_index_reg[3]_0 [3]),
        .O(resp_no_crc_next));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \resp_type_out[1]_i_1 
       (.I0(\resp_type_out_reg[1] ),
        .I1(\resp_cur[0]_i_2_n_0 ),
        .I2(\resp_len[4]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg[1] ),
        .I4(resetn_0),
        .O(resetn_out_reg_2));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \resp_type_out[5]_i_1 
       (.I0(\resp_type_out_reg[5]_0 ),
        .I1(cmd_index[1]),
        .I2(\resp_type_out_reg[5] ),
        .I3(cmd_index[2]),
        .I4(\FSM_onehot_state_reg[1] ),
        .I5(resetn_0),
        .O(\cmd_index_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \save_block_limit_vars[0].save_i_1 
       (.I0(cmd_index[0]),
        .I1(cmd_index[3]),
        .I2(\card_status_resp_reg[5] ),
        .I3(acmd_defined_reg_0),
        .I4(cmd_index[4]),
        .I5(cmd_index[5]),
        .O(\cmd_index_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \save_block_limit_vars[1].save_i_1 
       (.I0(cmd_index[0]),
        .I1(cmd_index[3]),
        .I2(\card_status_resp_reg[5] ),
        .I3(acmd_defined_reg_0),
        .I4(cmd_index[5]),
        .I5(cmd_index[4]),
        .O(\cmd_index_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \save_erase_vars[0].erase_vars[0][31]_i_1 
       (.I0(update_1),
        .I1(cmd_index[5]),
        .I2(cmd_index[1]),
        .I3(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I4(cmd_index[3]),
        .I5(cmd_index[0]),
        .O(\cmd_index_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \save_erase_vars[1].erase_vars[1][31]_i_1 
       (.I0(update_1),
        .I1(cmd_index[0]),
        .I2(cmd_index[5]),
        .I3(cmd_index[1]),
        .I4(\save_erase_vars[0].erase_vars_reg[0][31] ),
        .I5(cmd_index[3]),
        .O(\cmd_index_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    sd_dat3_pullup_off_i_1
       (.I0(cmd_index[4]),
        .I1(cmd_index[2]),
        .I2(acmd_defined_reg_0),
        .I3(sd_dat3_pullup_off_reg),
        .I4(update_1),
        .I5(sd_dat3_pullup_off),
        .O(\cmd_index_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h40FF4040)) 
    send_no_resp_i_1
       (.I0(last_cmd_valid),
        .I1(validator_done),
        .I2(Q[1]),
        .I3(resp_start),
        .I4(Q[4]),
        .O(send_no_resp0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hDF000000)) 
    send_resp_o_i_1
       (.I0(\resp_len[4]_i_2_n_0 ),
        .I1(\resp_type_out_reg[1] ),
        .I2(\resp_cur[0]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg[1] ),
        .I4(resetn_0),
        .O(resetn_out_reg_1));
  FDRE \update_phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cmd_received_good),
        .Q(\update_phase_reg_n_0_[0] ),
        .R(SR));
  FDRE \update_phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\update_phase_reg_n_0_[0] ),
        .Q(validator_done),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE68F)) 
    valid_i_12
       (.I0(cmd_index[1]),
        .I1(cmd_index[0]),
        .I2(cmd_index[3]),
        .I3(cmd_index[2]),
        .I4(cmd_index[5]),
        .I5(cmd_index[4]),
        .O(\cmd_index_reg[1] ));
  LUT6 #(
    .INIT(64'hFDFDFFFCFDF5FEFD)) 
    valid_i_14
       (.I0(cmd_index[3]),
        .I1(cmd_index[5]),
        .I2(cmd_index[4]),
        .I3(cmd_index[2]),
        .I4(cmd_index[0]),
        .I5(cmd_index[1]),
        .O(\cmd_index_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h53050203211336B7)) 
    valid_i_2
       (.I0(cmd_index[3]),
        .I1(cmd_index[5]),
        .I2(cmd_index[4]),
        .I3(cmd_index[0]),
        .I4(cmd_index[1]),
        .I5(cmd_index[2]),
        .O(\cmd_index_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEFFEEFEE)) 
    valid_i_5
       (.I0(cmd_index[5]),
        .I1(cmd_index[4]),
        .I2(cmd_index[1]),
        .I3(cmd_index[0]),
        .I4(cmd_index[2]),
        .I5(cmd_index[3]),
        .O(\cmd_index_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFF27FF7FFFDFFFA)) 
    valid_i_7
       (.I0(cmd_index[1]),
        .I1(cmd_index[2]),
        .I2(cmd_index[5]),
        .I3(cmd_index[4]),
        .I4(cmd_index[3]),
        .I5(cmd_index[0]),
        .O(\cmd_index_reg[1]_0 ));
  FDRE valid_reg
       (.C(clk),
        .CE(\update_phase_reg_n_0_[0] ),
        .D(valid_c1_out),
        .Q(last_cmd_valid),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dat_controller" *) 
module block_design_sd_card_0_dat_controller
   (dat_read_mode,
    dat_resetn,
    fifo_out_resetn,
    busy_in,
    ready_for_data_reg_0,
    fifo_in_resetn,
    \cmd_index_reg[2] ,
    \cmd_index_reg[1] ,
    \cmd_index_reg[3] ,
    fifo_out_tready_masked,
    fifo_out_tvalid_masked,
    \reg_saved_reg[11][13] ,
    Q,
    \block_size_exp_reg[2]_0 ,
    SR,
    \reg_saved_in[9]_6 ,
    clk,
    dev_resetn_reg_0,
    writing_reg_0,
    reading_reg_0,
    busy_out_reg_0,
    ready_for_data_reg_1,
    cmd_index,
    D,
    fifo_out_tready_in,
    fifo_out_tvalid_in,
    \reg_clear_always[21]_13 ,
    got_start_read_reg_0,
    new_cmd_saved,
    resetn_0,
    \assign_reg_mux[2].reg_needed.mux_reg[13] ,
    \assign_reg_mux[2].reg_needed.mux_reg[13]_0 ,
    s_axi_araddr,
    \assign_reg_mux[2].reg_needed.mux_reg[13]_1 ,
    E);
  output dat_read_mode;
  output dat_resetn;
  output fifo_out_resetn;
  output busy_in;
  output [0:0]ready_for_data_reg_0;
  output fifo_in_resetn;
  output \cmd_index_reg[2] ;
  output \cmd_index_reg[1] ;
  output \cmd_index_reg[3] ;
  output fifo_out_tready_masked;
  output fifo_out_tvalid_masked;
  output [1:0]\reg_saved_reg[11][13] ;
  output [1:0]Q;
  output [2:0]\block_size_exp_reg[2]_0 ;
  input [0:0]SR;
  input [0:0]\reg_saved_in[9]_6 ;
  input clk;
  input dev_resetn_reg_0;
  input writing_reg_0;
  input reading_reg_0;
  input busy_out_reg_0;
  input ready_for_data_reg_1;
  input [5:0]cmd_index;
  input [0:0]D;
  input fifo_out_tready_in;
  input fifo_out_tvalid_in;
  input [1:0]\reg_clear_always[21]_13 ;
  input [0:0]got_start_read_reg_0;
  input new_cmd_saved;
  input resetn_0;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[13] ;
  input [0:0]\assign_reg_mux[2].reg_needed.mux_reg[13]_0 ;
  input [1:0]s_axi_araddr;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[13]_1 ;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[13] ;
  wire [0:0]\assign_reg_mux[2].reg_needed.mux_reg[13]_0 ;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[13]_1 ;
  wire [2:1]block_size_exp_next;
  wire [2:0]\block_size_exp_reg[2]_0 ;
  wire [1:1]block_type_next;
  wire busy_in;
  wire busy_out_reg_0;
  wire clk;
  wire [5:0]cmd_index;
  wire \cmd_index_reg[1] ;
  wire \cmd_index_reg[2] ;
  wire \cmd_index_reg[3] ;
  wire dat_read_mode;
  wire dat_resetn;
  wire dev_resetn_reg_0;
  wire fifo_in_resetn;
  wire fifo_out_resetn;
  wire fifo_out_tready_in;
  wire fifo_out_tready_masked;
  wire fifo_out_tvalid_in;
  wire fifo_out_tvalid_masked;
  wire got_start_read;
  wire got_start_read_i_1_n_0;
  wire [0:0]got_start_read_reg_0;
  wire got_start_write_i_1_n_0;
  wire new_cmd_saved;
  wire reading_reg_0;
  wire [0:0]ready_for_data_reg_0;
  wire ready_for_data_reg_1;
  wire [1:0]\reg_clear_always[21]_13 ;
  wire [0:0]\reg_saved_in[9]_6 ;
  wire [1:0]\reg_saved_reg[11][13] ;
  wire resetn_0;
  wire [1:0]s_axi_araddr;
  wire writing;
  wire writing_reg_0;

  LUT5 #(
    .INIT(32'hB833B800)) 
    \assign_reg_mux[2].reg_needed.mux[12]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[13] [0]),
        .I1(s_axi_araddr[0]),
        .I2(\assign_reg_mux[2].reg_needed.mux_reg[13]_1 [0]),
        .I3(s_axi_araddr[1]),
        .I4(fifo_in_resetn),
        .O(\reg_saved_reg[11][13] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[13]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[13] [1]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[13]_0 ),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[13]_1 [1]),
        .I4(s_axi_araddr[1]),
        .I5(got_start_read),
        .O(\reg_saved_reg[11][13] [1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \block_size_exp[1]_i_1 
       (.I0(cmd_index[2]),
        .I1(cmd_index[1]),
        .I2(cmd_index[3]),
        .O(block_size_exp_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \block_size_exp[2]_i_1 
       (.I0(cmd_index[2]),
        .I1(cmd_index[5]),
        .I2(cmd_index[1]),
        .I3(cmd_index[4]),
        .O(block_size_exp_next[2]));
  FDRE \block_size_exp_reg[0] 
       (.C(clk),
        .CE(E),
        .D(cmd_index[5]),
        .Q(\block_size_exp_reg[2]_0 [0]),
        .R(SR));
  FDRE \block_size_exp_reg[1] 
       (.C(clk),
        .CE(E),
        .D(block_size_exp_next[1]),
        .Q(\block_size_exp_reg[2]_0 [1]),
        .R(SR));
  FDRE \block_size_exp_reg[2] 
       (.C(clk),
        .CE(E),
        .D(block_size_exp_next[2]),
        .Q(\block_size_exp_reg[2]_0 [2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h40455555)) 
    \block_type[0]_i_2 
       (.I0(cmd_index[2]),
        .I1(cmd_index[5]),
        .I2(cmd_index[3]),
        .I3(cmd_index[0]),
        .I4(cmd_index[1]),
        .O(\cmd_index_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000A8082008)) 
    \block_type[1]_i_2 
       (.I0(cmd_index[4]),
        .I1(cmd_index[1]),
        .I2(cmd_index[0]),
        .I3(cmd_index[3]),
        .I4(cmd_index[5]),
        .I5(cmd_index[2]),
        .O(block_type_next));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \block_type[1]_i_4 
       (.I0(cmd_index[3]),
        .I1(cmd_index[5]),
        .O(\cmd_index_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \block_type[1]_i_5 
       (.I0(cmd_index[1]),
        .I1(cmd_index[0]),
        .O(\cmd_index_reg[1] ));
  FDRE \block_type_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE \block_type_reg[1] 
       (.C(clk),
        .CE(E),
        .D(block_type_next),
        .Q(Q[1]),
        .R(SR));
  FDRE busy_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_out_reg_0),
        .Q(busy_in),
        .R(SR));
  FDRE dev_read_mode_reg
       (.C(clk),
        .CE(1'b1),
        .D(\reg_saved_in[9]_6 ),
        .Q(dat_read_mode),
        .R(SR));
  FDRE dev_resetn_reg
       (.C(clk),
        .CE(1'b1),
        .D(dev_resetn_reg_0),
        .Q(dat_resetn),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_out_tready_masked_INST_0
       (.I0(fifo_out_tready_in),
        .I1(got_start_read),
        .O(fifo_out_tready_masked));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_out_tvalid_masked_INST_0
       (.I0(got_start_read),
        .I1(fifo_out_tvalid_in),
        .O(fifo_out_tvalid_masked));
  LUT6 #(
    .INIT(64'hAAAE000000000000)) 
    got_start_read_i_1
       (.I0(got_start_read),
        .I1(\reg_clear_always[21]_13 [1]),
        .I2(got_start_read_reg_0),
        .I3(new_cmd_saved),
        .I4(fifo_out_resetn),
        .I5(resetn_0),
        .O(got_start_read_i_1_n_0));
  FDRE got_start_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_start_read_i_1_n_0),
        .Q(got_start_read),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAE000000000000)) 
    got_start_write_i_1
       (.I0(fifo_in_resetn),
        .I1(\reg_clear_always[21]_13 [0]),
        .I2(got_start_read_reg_0),
        .I3(new_cmd_saved),
        .I4(writing),
        .I5(resetn_0),
        .O(got_start_write_i_1_n_0));
  FDRE got_start_write_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_start_write_i_1_n_0),
        .Q(fifo_in_resetn),
        .R(1'b0));
  FDRE reading_reg
       (.C(clk),
        .CE(1'b1),
        .D(reading_reg_0),
        .Q(fifo_out_resetn),
        .R(SR));
  FDSE ready_for_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_for_data_reg_1),
        .Q(ready_for_data_reg_0),
        .S(SR));
  FDRE writing_reg
       (.C(clk),
        .CE(1'b1),
        .D(writing_reg_0),
        .Q(writing),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dat_interface" *) 
module block_design_sd_card_0_dat_interface
   (new_sd_clk,
    out_tlast,
    cc_error_out,
    dat_done_new,
    D,
    \block_count_done_reg[0]_0 ,
    dat_block_count_done,
    out_tvalid_reg_0,
    dat_block_done,
    \sd_dat_o_sys_reg[3]_0 ,
    in_tready,
    out_tdata,
    dat_error_code,
    dat_done,
    clk,
    SS,
    dat_resetn,
    in_tvalid,
    dat_width_4,
    Q,
    fifo_out_almostfull,
    good_reg,
    in_tdata,
    busy_in,
    dat_read_mode,
    dat_block_limit,
    out_tready,
    resetn,
    in_tlast,
    dat_block_size_exp,
    dat_block_type);
  output new_sd_clk;
  output out_tlast;
  output cc_error_out;
  output dat_done_new;
  output [0:0]D;
  output \block_count_done_reg[0]_0 ;
  output [30:0]dat_block_count_done;
  output out_tvalid_reg_0;
  output dat_block_done;
  output [3:0]\sd_dat_o_sys_reg[3]_0 ;
  output in_tready;
  output [7:0]out_tdata;
  output [2:0]dat_error_code;
  output dat_done;
  input clk;
  input [0:0]SS;
  input dat_resetn;
  input in_tvalid;
  input dat_width_4;
  input [3:0]Q;
  input fifo_out_almostfull;
  input [1:0]good_reg;
  input [7:0]in_tdata;
  input busy_in;
  input dat_read_mode;
  input [31:0]dat_block_limit;
  input out_tready;
  input resetn;
  input in_tlast;
  input [2:0]dat_block_size_exp;
  input [1:0]dat_block_type;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire [3:0]Q;
  wire [0:0]SS;
  wire \block_count_done[31]_i_1_n_0 ;
  wire \block_count_done[3]_i_2_n_0 ;
  wire \block_count_done_reg[0]_0 ;
  wire \block_count_done_reg[11]_i_1_n_0 ;
  wire \block_count_done_reg[11]_i_1_n_1 ;
  wire \block_count_done_reg[11]_i_1_n_2 ;
  wire \block_count_done_reg[11]_i_1_n_3 ;
  wire \block_count_done_reg[11]_i_1_n_4 ;
  wire \block_count_done_reg[11]_i_1_n_5 ;
  wire \block_count_done_reg[11]_i_1_n_6 ;
  wire \block_count_done_reg[11]_i_1_n_7 ;
  wire \block_count_done_reg[15]_i_1_n_0 ;
  wire \block_count_done_reg[15]_i_1_n_1 ;
  wire \block_count_done_reg[15]_i_1_n_2 ;
  wire \block_count_done_reg[15]_i_1_n_3 ;
  wire \block_count_done_reg[15]_i_1_n_4 ;
  wire \block_count_done_reg[15]_i_1_n_5 ;
  wire \block_count_done_reg[15]_i_1_n_6 ;
  wire \block_count_done_reg[15]_i_1_n_7 ;
  wire \block_count_done_reg[19]_i_1_n_0 ;
  wire \block_count_done_reg[19]_i_1_n_1 ;
  wire \block_count_done_reg[19]_i_1_n_2 ;
  wire \block_count_done_reg[19]_i_1_n_3 ;
  wire \block_count_done_reg[19]_i_1_n_4 ;
  wire \block_count_done_reg[19]_i_1_n_5 ;
  wire \block_count_done_reg[19]_i_1_n_6 ;
  wire \block_count_done_reg[19]_i_1_n_7 ;
  wire \block_count_done_reg[23]_i_1_n_0 ;
  wire \block_count_done_reg[23]_i_1_n_1 ;
  wire \block_count_done_reg[23]_i_1_n_2 ;
  wire \block_count_done_reg[23]_i_1_n_3 ;
  wire \block_count_done_reg[23]_i_1_n_4 ;
  wire \block_count_done_reg[23]_i_1_n_5 ;
  wire \block_count_done_reg[23]_i_1_n_6 ;
  wire \block_count_done_reg[23]_i_1_n_7 ;
  wire \block_count_done_reg[27]_i_1_n_0 ;
  wire \block_count_done_reg[27]_i_1_n_1 ;
  wire \block_count_done_reg[27]_i_1_n_2 ;
  wire \block_count_done_reg[27]_i_1_n_3 ;
  wire \block_count_done_reg[27]_i_1_n_4 ;
  wire \block_count_done_reg[27]_i_1_n_5 ;
  wire \block_count_done_reg[27]_i_1_n_6 ;
  wire \block_count_done_reg[27]_i_1_n_7 ;
  wire \block_count_done_reg[31]_i_2_n_1 ;
  wire \block_count_done_reg[31]_i_2_n_2 ;
  wire \block_count_done_reg[31]_i_2_n_3 ;
  wire \block_count_done_reg[31]_i_2_n_4 ;
  wire \block_count_done_reg[31]_i_2_n_5 ;
  wire \block_count_done_reg[31]_i_2_n_6 ;
  wire \block_count_done_reg[31]_i_2_n_7 ;
  wire \block_count_done_reg[3]_i_1_n_0 ;
  wire \block_count_done_reg[3]_i_1_n_1 ;
  wire \block_count_done_reg[3]_i_1_n_2 ;
  wire \block_count_done_reg[3]_i_1_n_3 ;
  wire \block_count_done_reg[3]_i_1_n_4 ;
  wire \block_count_done_reg[3]_i_1_n_5 ;
  wire \block_count_done_reg[3]_i_1_n_6 ;
  wire \block_count_done_reg[3]_i_1_n_7 ;
  wire \block_count_done_reg[7]_i_1_n_0 ;
  wire \block_count_done_reg[7]_i_1_n_1 ;
  wire \block_count_done_reg[7]_i_1_n_2 ;
  wire \block_count_done_reg[7]_i_1_n_3 ;
  wire \block_count_done_reg[7]_i_1_n_4 ;
  wire \block_count_done_reg[7]_i_1_n_5 ;
  wire \block_count_done_reg[7]_i_1_n_6 ;
  wire \block_count_done_reg[7]_i_1_n_7 ;
  wire block_data_done;
  wire block_done;
  wire block_done0;
  wire block_done_out_i_1_n_0;
  wire [2:0]block_size_exp;
  wire block_size_exp_0;
  wire [1:0]block_type;
  wire [7:0]buffer;
  wire [7:0]buffer_next;
  wire busy_in;
  wire cc_error_out;
  wire cc_error_out_i_2_n_0;
  wire cc_error_out_i_3_n_0;
  wire cc_error_out_i_4_n_0;
  wire cc_error_out_i_5_n_0;
  wire cc_error_out_i_6_n_0;
  wire cc_error_out_i_7_n_0;
  wire clk;
  wire [6:1]counter;
  wire counter0;
  wire counter1;
  wire [11:0]counter_inc;
  wire [12:12]counter_inc__0;
  wire \counter_passed[64]_i_2_n_0 ;
  wire \counter_passed[64]_i_3_n_0 ;
  wire \counter_passed[64]_i_4_n_0 ;
  wire \counter_passed[64]_i_5_n_0 ;
  wire \counter_passed[64]_i_6_n_0 ;
  wire \counter_passed[64]_i_7_n_0 ;
  wire \counter_passed[64]_i_8_n_0 ;
  wire \counter_passed_reg[64]__0 ;
  wire \counter_reg[11]_i_1_n_2 ;
  wire \counter_reg[11]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [30:0]dat_block_count_done;
  wire dat_block_done;
  wire [31:0]dat_block_limit;
  wire [2:0]dat_block_size_exp;
  wire [1:0]dat_block_type;
  wire dat_done;
  wire dat_done_new;
  wire [2:0]dat_error_code;
  wire dat_read_mode;
  wire dat_resetn;
  wire dat_width_4;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_next;
  wire \error_code[0]_i_1_n_0 ;
  wire \error_code[0]_i_3_n_0 ;
  wire \error_code[1]_i_1_n_0 ;
  wire \error_code[1]_i_2_n_0 ;
  wire \error_code[2]_i_1_n_0 ;
  wire \error_code[2]_i_3_n_0 ;
  wire \error_code[2]_i_4_n_0 ;
  wire \error_code[2]_i_5_n_0 ;
  wire \error_code[2]_i_6_n_0 ;
  wire \error_code[2]_i_7_n_0 ;
  wire \error_code[2]_i_8_n_0 ;
  wire \error_code[2]_i_9_n_0 ;
  wire [2:0]error_code_next;
  wire fifo_out_almostfull;
  wire [1:0]good_reg;
  wire [7:0]in_tdata;
  wire in_tlast;
  wire in_tlast_saved;
  wire in_tlast_saved_i_1_n_0;
  wire in_tready;
  wire in_tready_INST_0_i_1_n_0;
  wire in_tready_INST_0_i_3_n_0;
  wire in_tready_INST_0_i_4_n_0;
  wire in_tready_INST_0_i_5_n_0;
  wire in_tready_INST_0_i_6_n_0;
  wire in_tvalid;
  wire \line_crc[0].line_crc_n_1 ;
  wire \line_crc[1].line_crc_n_0 ;
  wire \line_crc[1].line_crc_n_1 ;
  wire \line_crc[2].line_crc_n_0 ;
  wire \line_crc[2].line_crc_n_1 ;
  wire \line_crc[2].line_crc_n_2 ;
  wire \line_crc[3].line_crc_n_0 ;
  wire \line_crc[3].line_crc_n_2 ;
  wire new_sd_clk;
  wire no_more_blocks;
  wire no_more_blocks0_carry__0_i_1_n_0;
  wire no_more_blocks0_carry__0_i_2_n_0;
  wire no_more_blocks0_carry__0_i_3_n_0;
  wire no_more_blocks0_carry__0_i_4_n_0;
  wire no_more_blocks0_carry__0_i_5_n_0;
  wire no_more_blocks0_carry__0_i_6_n_0;
  wire no_more_blocks0_carry__0_i_7_n_0;
  wire no_more_blocks0_carry__0_i_8_n_0;
  wire no_more_blocks0_carry__0_n_0;
  wire no_more_blocks0_carry__0_n_1;
  wire no_more_blocks0_carry__0_n_2;
  wire no_more_blocks0_carry__0_n_3;
  wire no_more_blocks0_carry__1_i_1_n_0;
  wire no_more_blocks0_carry__1_i_2_n_0;
  wire no_more_blocks0_carry__1_i_3_n_0;
  wire no_more_blocks0_carry__1_i_4_n_0;
  wire no_more_blocks0_carry__1_i_5_n_0;
  wire no_more_blocks0_carry__1_i_6_n_0;
  wire no_more_blocks0_carry__1_i_7_n_0;
  wire no_more_blocks0_carry__1_i_8_n_0;
  wire no_more_blocks0_carry__1_n_0;
  wire no_more_blocks0_carry__1_n_1;
  wire no_more_blocks0_carry__1_n_2;
  wire no_more_blocks0_carry__1_n_3;
  wire no_more_blocks0_carry__2_i_1_n_0;
  wire no_more_blocks0_carry__2_i_2_n_0;
  wire no_more_blocks0_carry__2_i_3_n_0;
  wire no_more_blocks0_carry__2_i_4_n_0;
  wire no_more_blocks0_carry__2_i_5_n_0;
  wire no_more_blocks0_carry__2_i_6_n_0;
  wire no_more_blocks0_carry__2_i_7_n_0;
  wire no_more_blocks0_carry__2_i_8_n_0;
  wire no_more_blocks0_carry__2_n_0;
  wire no_more_blocks0_carry__2_n_1;
  wire no_more_blocks0_carry__2_n_2;
  wire no_more_blocks0_carry__2_n_3;
  wire no_more_blocks0_carry_i_1_n_0;
  wire no_more_blocks0_carry_i_2_n_0;
  wire no_more_blocks0_carry_i_3_n_0;
  wire no_more_blocks0_carry_i_4_n_0;
  wire no_more_blocks0_carry_i_5_n_0;
  wire no_more_blocks0_carry_i_6_n_0;
  wire no_more_blocks0_carry_i_7_n_0;
  wire no_more_blocks0_carry_i_8_n_0;
  wire no_more_blocks0_carry_n_0;
  wire no_more_blocks0_carry_n_1;
  wire no_more_blocks0_carry_n_2;
  wire no_more_blocks0_carry_n_3;
  wire no_more_blocks_i_1_n_0;
  wire [7:0]out_tdata;
  wire out_tdata0;
  wire \out_tdata[7]_i_3_n_0 ;
  wire out_tlast;
  wire out_tlast_i_10_n_0;
  wire out_tlast_i_11_n_0;
  wire out_tlast_i_12_n_0;
  wire out_tlast_i_3_n_0;
  wire out_tlast_i_4_n_0;
  wire out_tlast_i_5_n_0;
  wire out_tlast_i_6_n_0;
  wire out_tlast_i_7_n_0;
  wire out_tlast_i_8_n_0;
  wire out_tlast_i_9_n_0;
  wire out_tlast_reg_i_2_n_0;
  wire out_tready;
  wire out_tvalid_i_1_n_0;
  wire out_tvalid_i_3_n_0;
  wire out_tvalid_reg_0;
  wire read_crc_err;
  wire read_crc_err_i_3_n_0;
  wire resetn;
  wire resetn_d;
  wire \sd_dat_o_sys[0]_i_2_n_0 ;
  wire \sd_dat_o_sys[1]_i_1_n_0 ;
  wire \sd_dat_o_sys[2]_i_1_n_0 ;
  wire \sd_dat_o_sys[3]_i_1_n_0 ;
  wire \sd_dat_o_sys[3]_i_3_n_0 ;
  wire [0:0]sd_dat_o_sys_next;
  wire [3:0]\sd_dat_o_sys_reg[3]_0 ;
  wire \sd_dat_t_sys[3]_i_2_n_0 ;
  wire [3:3]sd_dat_t_sys_next;
  wire set_cc_error;
  wire set_out_tvalid;
  wire [3:0]state;
  wire [3:0]state_next__0;
  wire [3:3]\NLW_block_count_done_reg[31]_i_2_CO_UNCONNECTED ;
  wire [2:2]\NLW_counter_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_no_more_blocks0_carry_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(state_next__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454745)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(dat_read_mode),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h88808080)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(out_tvalid_reg_0),
        .I1(\counter_reg_n_0_[0] ),
        .I2(dat_width_4),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7C004000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(no_more_blocks),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(in_tlast_saved),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state[2]),
        .I4(state[3]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(state_next__0[1]));
  LUT5 #(
    .INIT(32'h0F0F1F0F)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(in_tready_INST_0_i_6_n_0),
        .I1(state[2]),
        .I2(block_data_done),
        .I3(new_sd_clk),
        .I4(in_tvalid),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hAAFABBBA)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111110100001101)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(dat_read_mode),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state[1]),
        .I1(no_more_blocks),
        .I2(out_tvalid_reg_0),
        .I3(read_crc_err),
        .I4(state[2]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDD1DD1D1D111D1D1)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(no_more_blocks),
        .I4(state[1]),
        .I5(state[0]),
        .O(state_next__0[2]));
  LUT6 #(
    .INIT(64'h01010000FF00FFFF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(read_crc_err),
        .I1(out_tvalid_reg_0),
        .I2(no_more_blocks),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFF4FFF4)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(cc_error_out_i_4_n_0),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4400440040000000)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(in_tvalid),
        .I3(new_sd_clk),
        .I4(\counter_passed_reg[64]__0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAEAAAAAEAAAAA)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(new_sd_clk),
        .I2(cc_error_out_i_3_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(counter_inc[4]),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0444044004040400)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(\FSM_sequential_state[3]_i_13_n_0 ),
        .I1(new_sd_clk),
        .I2(state[1]),
        .I3(state[0]),
        .I4(counter_inc[4]),
        .I5(counter[2]),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEAE0EAE0EAEAEAEF)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[3]),
        .I1(\FSM_sequential_state[3]_i_8_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(dat_read_mode),
        .I5(state[0]),
        .O(state_next__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020000)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[3]_i_10_n_0 ),
        .I4(state[3]),
        .I5(\FSM_sequential_state[3]_i_11_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000010FF)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state[1]),
        .I1(Q[0]),
        .I2(new_sd_clk),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state[1]),
        .I1(new_sd_clk),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(new_sd_clk),
        .I1(block_data_done),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(read_crc_err),
        .I1(out_tvalid_reg_0),
        .I2(no_more_blocks),
        .I3(state[1]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8B008800)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(counter[1]),
        .I1(state[0]),
        .I2(fifo_out_almostfull),
        .I3(new_sd_clk),
        .I4(\counter_passed_reg[64]__0 ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state_next__0[0]),
        .Q(state[0]),
        .R(counter1));
  (* FSM_ENCODED_STATES = "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state_next__0[1]),
        .Q(state[1]),
        .R(counter1));
  (* FSM_ENCODED_STATES = "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state_next__0[2]),
        .Q(state[2]),
        .R(counter1));
  (* FSM_ENCODED_STATES = "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state_next__0[3]),
        .Q(state[3]),
        .R(counter1));
  LUT3 #(
    .INIT(8'h4F)) 
    \block_count_done[31]_i_1 
       (.I0(resetn_d),
        .I1(dat_resetn),
        .I2(resetn),
        .O(\block_count_done[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_count_done[3]_i_2 
       (.I0(\block_count_done_reg[0]_0 ),
        .O(\block_count_done[3]_i_2_n_0 ));
  FDRE \block_count_done_reg[0] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[3]_i_1_n_7 ),
        .Q(\block_count_done_reg[0]_0 ),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[10] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[11]_i_1_n_5 ),
        .Q(dat_block_count_done[9]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[11] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[11]_i_1_n_4 ),
        .Q(dat_block_count_done[10]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[11]_i_1 
       (.CI(\block_count_done_reg[7]_i_1_n_0 ),
        .CO({\block_count_done_reg[11]_i_1_n_0 ,\block_count_done_reg[11]_i_1_n_1 ,\block_count_done_reg[11]_i_1_n_2 ,\block_count_done_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[11]_i_1_n_4 ,\block_count_done_reg[11]_i_1_n_5 ,\block_count_done_reg[11]_i_1_n_6 ,\block_count_done_reg[11]_i_1_n_7 }),
        .S(dat_block_count_done[10:7]));
  FDRE \block_count_done_reg[12] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[15]_i_1_n_7 ),
        .Q(dat_block_count_done[11]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[13] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[15]_i_1_n_6 ),
        .Q(dat_block_count_done[12]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[14] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[15]_i_1_n_5 ),
        .Q(dat_block_count_done[13]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[15] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[15]_i_1_n_4 ),
        .Q(dat_block_count_done[14]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[15]_i_1 
       (.CI(\block_count_done_reg[11]_i_1_n_0 ),
        .CO({\block_count_done_reg[15]_i_1_n_0 ,\block_count_done_reg[15]_i_1_n_1 ,\block_count_done_reg[15]_i_1_n_2 ,\block_count_done_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[15]_i_1_n_4 ,\block_count_done_reg[15]_i_1_n_5 ,\block_count_done_reg[15]_i_1_n_6 ,\block_count_done_reg[15]_i_1_n_7 }),
        .S(dat_block_count_done[14:11]));
  FDRE \block_count_done_reg[16] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[19]_i_1_n_7 ),
        .Q(dat_block_count_done[15]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[17] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[19]_i_1_n_6 ),
        .Q(dat_block_count_done[16]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[18] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[19]_i_1_n_5 ),
        .Q(dat_block_count_done[17]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[19] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[19]_i_1_n_4 ),
        .Q(dat_block_count_done[18]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[19]_i_1 
       (.CI(\block_count_done_reg[15]_i_1_n_0 ),
        .CO({\block_count_done_reg[19]_i_1_n_0 ,\block_count_done_reg[19]_i_1_n_1 ,\block_count_done_reg[19]_i_1_n_2 ,\block_count_done_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[19]_i_1_n_4 ,\block_count_done_reg[19]_i_1_n_5 ,\block_count_done_reg[19]_i_1_n_6 ,\block_count_done_reg[19]_i_1_n_7 }),
        .S(dat_block_count_done[18:15]));
  FDRE \block_count_done_reg[1] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[3]_i_1_n_6 ),
        .Q(dat_block_count_done[0]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[20] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[23]_i_1_n_7 ),
        .Q(dat_block_count_done[19]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[21] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[23]_i_1_n_6 ),
        .Q(dat_block_count_done[20]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[22] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[23]_i_1_n_5 ),
        .Q(dat_block_count_done[21]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[23] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[23]_i_1_n_4 ),
        .Q(dat_block_count_done[22]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[23]_i_1 
       (.CI(\block_count_done_reg[19]_i_1_n_0 ),
        .CO({\block_count_done_reg[23]_i_1_n_0 ,\block_count_done_reg[23]_i_1_n_1 ,\block_count_done_reg[23]_i_1_n_2 ,\block_count_done_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[23]_i_1_n_4 ,\block_count_done_reg[23]_i_1_n_5 ,\block_count_done_reg[23]_i_1_n_6 ,\block_count_done_reg[23]_i_1_n_7 }),
        .S(dat_block_count_done[22:19]));
  FDRE \block_count_done_reg[24] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[27]_i_1_n_7 ),
        .Q(dat_block_count_done[23]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[25] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[27]_i_1_n_6 ),
        .Q(dat_block_count_done[24]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[26] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[27]_i_1_n_5 ),
        .Q(dat_block_count_done[25]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[27] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[27]_i_1_n_4 ),
        .Q(dat_block_count_done[26]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[27]_i_1 
       (.CI(\block_count_done_reg[23]_i_1_n_0 ),
        .CO({\block_count_done_reg[27]_i_1_n_0 ,\block_count_done_reg[27]_i_1_n_1 ,\block_count_done_reg[27]_i_1_n_2 ,\block_count_done_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[27]_i_1_n_4 ,\block_count_done_reg[27]_i_1_n_5 ,\block_count_done_reg[27]_i_1_n_6 ,\block_count_done_reg[27]_i_1_n_7 }),
        .S(dat_block_count_done[26:23]));
  FDRE \block_count_done_reg[28] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[31]_i_2_n_7 ),
        .Q(dat_block_count_done[27]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[29] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[31]_i_2_n_6 ),
        .Q(dat_block_count_done[28]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[2] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[3]_i_1_n_5 ),
        .Q(dat_block_count_done[1]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[30] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[31]_i_2_n_5 ),
        .Q(dat_block_count_done[29]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[31] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[31]_i_2_n_4 ),
        .Q(dat_block_count_done[30]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[31]_i_2 
       (.CI(\block_count_done_reg[27]_i_1_n_0 ),
        .CO({\NLW_block_count_done_reg[31]_i_2_CO_UNCONNECTED [3],\block_count_done_reg[31]_i_2_n_1 ,\block_count_done_reg[31]_i_2_n_2 ,\block_count_done_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[31]_i_2_n_4 ,\block_count_done_reg[31]_i_2_n_5 ,\block_count_done_reg[31]_i_2_n_6 ,\block_count_done_reg[31]_i_2_n_7 }),
        .S(dat_block_count_done[30:27]));
  FDRE \block_count_done_reg[3] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[3]_i_1_n_4 ),
        .Q(dat_block_count_done[2]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\block_count_done_reg[3]_i_1_n_0 ,\block_count_done_reg[3]_i_1_n_1 ,\block_count_done_reg[3]_i_1_n_2 ,\block_count_done_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\block_count_done_reg[3]_i_1_n_4 ,\block_count_done_reg[3]_i_1_n_5 ,\block_count_done_reg[3]_i_1_n_6 ,\block_count_done_reg[3]_i_1_n_7 }),
        .S({dat_block_count_done[2:0],\block_count_done[3]_i_2_n_0 }));
  FDRE \block_count_done_reg[4] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[7]_i_1_n_7 ),
        .Q(dat_block_count_done[3]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[5] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[7]_i_1_n_6 ),
        .Q(dat_block_count_done[4]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[6] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[7]_i_1_n_5 ),
        .Q(dat_block_count_done[5]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[7] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[7]_i_1_n_4 ),
        .Q(dat_block_count_done[6]),
        .R(\block_count_done[31]_i_1_n_0 ));
  CARRY4 \block_count_done_reg[7]_i_1 
       (.CI(\block_count_done_reg[3]_i_1_n_0 ),
        .CO({\block_count_done_reg[7]_i_1_n_0 ,\block_count_done_reg[7]_i_1_n_1 ,\block_count_done_reg[7]_i_1_n_2 ,\block_count_done_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_done_reg[7]_i_1_n_4 ,\block_count_done_reg[7]_i_1_n_5 ,\block_count_done_reg[7]_i_1_n_6 ,\block_count_done_reg[7]_i_1_n_7 }),
        .S(dat_block_count_done[6:3]));
  FDRE \block_count_done_reg[8] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[11]_i_1_n_7 ),
        .Q(dat_block_count_done[7]),
        .R(\block_count_done[31]_i_1_n_0 ));
  FDRE \block_count_done_reg[9] 
       (.C(clk),
        .CE(block_done),
        .D(\block_count_done_reg[11]_i_1_n_6 ),
        .Q(dat_block_count_done[8]),
        .R(\block_count_done[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00001004)) 
    block_done_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(block_done0));
  LUT4 #(
    .INIT(16'h8808)) 
    block_done_out_i_1
       (.I0(block_done),
        .I1(resetn),
        .I2(dat_resetn),
        .I3(resetn_d),
        .O(block_done_out_i_1_n_0));
  FDRE block_done_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(block_done_out_i_1_n_0),
        .Q(dat_block_done),
        .R(1'b0));
  FDRE block_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(block_done0),
        .Q(block_done),
        .R(counter1));
  LUT4 #(
    .INIT(16'h0001)) 
    \block_size_exp[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(block_size_exp_0));
  FDRE \block_size_exp_reg[0] 
       (.C(clk),
        .CE(block_size_exp_0),
        .D(dat_block_size_exp[0]),
        .Q(block_size_exp[0]),
        .R(counter1));
  FDRE \block_size_exp_reg[1] 
       (.C(clk),
        .CE(block_size_exp_0),
        .D(dat_block_size_exp[1]),
        .Q(block_size_exp[1]),
        .R(counter1));
  FDRE \block_size_exp_reg[2] 
       (.C(clk),
        .CE(block_size_exp_0),
        .D(dat_block_size_exp[2]),
        .Q(block_size_exp[2]),
        .R(counter1));
  FDRE \block_type_reg[0] 
       (.C(clk),
        .CE(block_size_exp_0),
        .D(dat_block_type[0]),
        .Q(block_type[0]),
        .R(counter1));
  FDRE \block_type_reg[1] 
       (.C(clk),
        .CE(block_size_exp_0),
        .D(dat_block_type[1]),
        .Q(block_type[1]),
        .R(counter1));
  FDRE \buffer_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[0]),
        .Q(buffer[0]),
        .R(counter1));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[1]),
        .Q(buffer[1]),
        .R(counter1));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[2]),
        .Q(buffer[2]),
        .R(counter1));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[3]),
        .Q(buffer[3]),
        .R(counter1));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[4]),
        .Q(buffer[4]),
        .R(counter1));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[5]),
        .Q(buffer[5]),
        .R(counter1));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[6]),
        .Q(buffer[6]),
        .R(counter1));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(buffer_next[7]),
        .Q(buffer[7]),
        .R(counter1));
  LUT6 #(
    .INIT(64'h0000000033330020)) 
    cc_error_out_i_1
       (.I0(cc_error_out_i_2_n_0),
        .I1(state[0]),
        .I2(cc_error_out_i_3_n_0),
        .I3(cc_error_out_i_4_n_0),
        .I4(state[1]),
        .I5(cc_error_out_i_5_n_0),
        .O(set_cc_error));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h04FFFFFF)) 
    cc_error_out_i_2
       (.I0(in_tvalid),
        .I1(new_sd_clk),
        .I2(in_tready_INST_0_i_1_n_0),
        .I3(block_data_done),
        .I4(in_tlast_saved),
        .O(cc_error_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cc_error_out_i_3
       (.I0(state[2]),
        .I1(state[3]),
        .O(cc_error_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFEE0EFFFF)) 
    cc_error_out_i_4
       (.I0(in_tready_INST_0_i_1_n_0),
        .I1(in_tvalid),
        .I2(in_tlast_saved),
        .I3(in_tready_INST_0_i_5_n_0),
        .I4(new_sd_clk),
        .I5(block_data_done),
        .O(cc_error_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    cc_error_out_i_5
       (.I0(cc_error_out_i_6_n_0),
        .I1(state[3]),
        .I2(out_tvalid_reg_0),
        .I3(cc_error_out_i_7_n_0),
        .I4(state[2]),
        .I5(read_crc_err),
        .O(cc_error_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFF70000)) 
    cc_error_out_i_6
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(new_sd_clk),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .O(cc_error_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cc_error_out_i_7
       (.I0(counter[2]),
        .I1(new_sd_clk),
        .O(cc_error_out_i_7_n_0));
  FDRE cc_error_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_cc_error),
        .Q(cc_error_out),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter_inc[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007747)) 
    \counter_passed[64]_i_1 
       (.I0(\counter_passed[64]_i_3_n_0 ),
        .I1(state[2]),
        .I2(\counter_passed[64]_i_4_n_0 ),
        .I3(\counter_passed[64]_i_5_n_0 ),
        .I4(state[0]),
        .I5(\counter_passed[64]_i_6_n_0 ),
        .O(counter0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_passed[64]_i_2 
       (.I0(counter[6]),
        .I1(\counter_passed_reg[64]__0 ),
        .O(\counter_passed[64]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7FFF)) 
    \counter_passed[64]_i_3 
       (.I0(state[3]),
        .I1(block_data_done),
        .I2(new_sd_clk),
        .I3(in_tvalid),
        .I4(in_tready_INST_0_i_1_n_0),
        .I5(\counter_passed[64]_i_7_n_0 ),
        .O(\counter_passed[64]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter_passed[64]_i_4 
       (.I0(block_data_done),
        .I1(new_sd_clk),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state[3]),
        .O(\counter_passed[64]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10005555)) 
    \counter_passed[64]_i_5 
       (.I0(state[1]),
        .I1(fifo_out_almostfull),
        .I2(new_sd_clk),
        .I3(\counter_passed_reg[64]__0 ),
        .I4(state[3]),
        .O(\counter_passed[64]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABAAAFFFFFFFF)) 
    \counter_passed[64]_i_6 
       (.I0(\counter_passed[64]_i_8_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(dat_resetn),
        .O(\counter_passed[64]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \counter_passed[64]_i_7 
       (.I0(state[1]),
        .I1(counter[2]),
        .I2(new_sd_clk),
        .I3(state[3]),
        .O(\counter_passed[64]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter_passed[64]_i_8 
       (.I0(new_sd_clk),
        .I1(Q[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .O(\counter_passed[64]_i_8_n_0 ));
  FDRE \counter_passed_reg[64] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter_passed[64]_i_2_n_0 ),
        .Q(\counter_passed_reg[64]__0 ),
        .R(counter0));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(counter0));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(counter0));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(counter0));
  CARRY4 \counter_reg[11]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({counter_inc__0,\NLW_counter_reg[11]_i_1_CO_UNCONNECTED [2],\counter_reg[11]_i_1_n_2 ,\counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_1_O_UNCONNECTED [3],counter_inc[11:9]}),
        .S({1'b1,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[1]),
        .Q(counter[1]),
        .R(counter0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[2]),
        .Q(counter[2]),
        .R(counter0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(counter0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(counter0));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,counter[2:1]}));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(counter0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[6]),
        .Q(counter[6]),
        .R(counter0));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(counter0));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(counter0));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,counter[6],\counter_reg_n_0_[5] }));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(counter0));
  LUT1 #(
    .INIT(2'h1)) 
    done_i_1
       (.I0(dat_resetn),
        .O(counter1));
  LUT6 #(
    .INIT(64'hFFFFFFFF44454444)) 
    done_i_2
       (.I0(\error_code[2]_i_5_n_0 ),
        .I1(\error_code[2]_i_4_n_0 ),
        .I2(cc_error_out_i_4_n_0),
        .I3(done_i_3_n_0),
        .I4(cc_error_out_i_2_n_0),
        .I5(dat_done),
        .O(done_i_2_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    done_i_3
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000033330020)) 
    done_new_i_1
       (.I0(cc_error_out_i_2_n_0),
        .I1(state[0]),
        .I2(cc_error_out_i_3_n_0),
        .I3(cc_error_out_i_4_n_0),
        .I4(state[1]),
        .I5(\error_code[2]_i_5_n_0 ),
        .O(done_next));
  FDRE done_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_next),
        .Q(dat_done_new),
        .R(SS));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_2_n_0),
        .Q(dat_done),
        .R(counter1));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \error_code[0]_i_1 
       (.I0(error_code_next[0]),
        .I1(cc_error_out_i_2_n_0),
        .I2(\error_code[2]_i_3_n_0 ),
        .I3(\error_code[2]_i_4_n_0 ),
        .I4(\error_code[2]_i_5_n_0 ),
        .I5(dat_error_code[0]),
        .O(\error_code[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AA8A)) 
    \error_code[0]_i_2 
       (.I0(block_data_done),
        .I1(in_tready_INST_0_i_1_n_0),
        .I2(new_sd_clk),
        .I3(in_tvalid),
        .I4(state[1]),
        .I5(\error_code[0]_i_3_n_0 ),
        .O(error_code_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0EFF)) 
    \error_code[0]_i_3 
       (.I0(out_tvalid_reg_0),
        .I1(read_crc_err),
        .I2(state[3]),
        .I3(state[2]),
        .O(\error_code[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \error_code[1]_i_1 
       (.I0(\error_code[1]_i_2_n_0 ),
        .I1(cc_error_out_i_2_n_0),
        .I2(\error_code[2]_i_3_n_0 ),
        .I3(\error_code[2]_i_4_n_0 ),
        .I4(\error_code[2]_i_5_n_0 ),
        .I5(dat_error_code[1]),
        .O(\error_code[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h44444544)) 
    \error_code[1]_i_2 
       (.I0(state[1]),
        .I1(block_data_done),
        .I2(in_tvalid),
        .I3(new_sd_clk),
        .I4(in_tready_INST_0_i_1_n_0),
        .O(\error_code[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \error_code[2]_i_1 
       (.I0(error_code_next[2]),
        .I1(cc_error_out_i_2_n_0),
        .I2(\error_code[2]_i_3_n_0 ),
        .I3(\error_code[2]_i_4_n_0 ),
        .I4(\error_code[2]_i_5_n_0 ),
        .I5(dat_error_code[2]),
        .O(\error_code[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00005545)) 
    \error_code[2]_i_2 
       (.I0(state[1]),
        .I1(in_tready_INST_0_i_1_n_0),
        .I2(new_sd_clk),
        .I3(in_tvalid),
        .I4(block_data_done),
        .I5(\error_code[2]_i_6_n_0 ),
        .O(error_code_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF70707030)) 
    \error_code[2]_i_3 
       (.I0(block_data_done),
        .I1(new_sd_clk),
        .I2(\error_code[2]_i_7_n_0 ),
        .I3(in_tvalid),
        .I4(in_tready_INST_0_i_1_n_0),
        .I5(done_i_3_n_0),
        .O(\error_code[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \error_code[2]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\error_code[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8AAAAAA)) 
    \error_code[2]_i_5 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(new_sd_clk),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\error_code[2]_i_8_n_0 ),
        .O(\error_code[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \error_code[2]_i_6 
       (.I0(state[3]),
        .I1(out_tvalid_reg_0),
        .I2(read_crc_err),
        .I3(state[2]),
        .O(\error_code[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h557FFFFFFFFFFFFF)) 
    \error_code[2]_i_7 
       (.I0(in_tlast_saved),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(dat_width_4),
        .I4(\counter_reg_n_0_[0] ),
        .I5(new_sd_clk),
        .O(\error_code[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000C4000000)) 
    \error_code[2]_i_8 
       (.I0(\error_code[2]_i_9_n_0 ),
        .I1(counter[2]),
        .I2(no_more_blocks),
        .I3(new_sd_clk),
        .I4(state[2]),
        .I5(state[3]),
        .O(\error_code[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \error_code[2]_i_9 
       (.I0(out_tvalid_reg_0),
        .I1(read_crc_err),
        .O(\error_code[2]_i_9_n_0 ));
  FDRE \error_code_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\error_code[0]_i_1_n_0 ),
        .Q(dat_error_code[0]),
        .R(SS));
  FDRE \error_code_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\error_code[1]_i_1_n_0 ),
        .Q(dat_error_code[1]),
        .R(SS));
  FDRE \error_code_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\error_code[2]_i_1_n_0 ),
        .Q(dat_error_code[2]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    in_tlast_saved_i_1
       (.I0(in_tready_INST_0_i_1_n_0),
        .I1(new_sd_clk),
        .I2(in_tlast_saved),
        .I3(in_tlast),
        .O(in_tlast_saved_i_1_n_0));
  FDRE in_tlast_saved_reg
       (.C(clk),
        .CE(1'b1),
        .D(in_tlast_saved_i_1_n_0),
        .Q(in_tlast_saved),
        .R(counter1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h4)) 
    in_tready_INST_0
       (.I0(in_tready_INST_0_i_1_n_0),
        .I1(new_sd_clk),
        .O(in_tready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE20000)) 
    in_tready_INST_0_i_1
       (.I0(out_tlast_reg_i_2_n_0),
        .I1(in_tready_INST_0_i_3_n_0),
        .I2(in_tready_INST_0_i_4_n_0),
        .I3(in_tready_INST_0_i_5_n_0),
        .I4(state[2]),
        .I5(in_tready_INST_0_i_6_n_0),
        .O(in_tready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    in_tready_INST_0_i_3
       (.I0(block_type[1]),
        .I1(block_type[0]),
        .O(in_tready_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    in_tready_INST_0_i_4
       (.I0(counter_inc[10]),
        .I1(dat_width_4),
        .I2(counter_inc__0),
        .O(in_tready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    in_tready_INST_0_i_5
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(dat_width_4),
        .I3(\counter_reg_n_0_[0] ),
        .O(in_tready_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFD7F)) 
    in_tready_INST_0_i_6
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(in_tready_INST_0_i_6_n_0));
  block_design_sd_card_0_line_crc__parameterized0 \line_crc[0].line_crc 
       (.D(sd_dat_o_sys_next),
        .E(new_sd_clk),
        .Q(Q),
        .busy_in(busy_in),
        .clk(clk),
        .\crc_reg[0]_0 (state),
        .dat_resetn(dat_resetn),
        .dat_width_4(dat_width_4),
        .\sd_dat_d_reg[2][3] (\line_crc[0].line_crc_n_1 ),
        .\sd_dat_o_sys_reg[0] (\sd_dat_o_sys[0]_i_2_n_0 ),
        .\sd_dat_o_sys_reg[0]_0 ({buffer[7],buffer[4]}));
  block_design_sd_card_0_line_crc__parameterized0_0 \line_crc[1].line_crc 
       (.E(new_sd_clk),
        .\FSM_sequential_state_reg[3] (\line_crc[1].line_crc_n_1 ),
        .Q(buffer[5]),
        .SR(\line_crc[2].line_crc_n_1 ),
        .clk(clk),
        .\crc_reg[0]_0 (Q[1]),
        .\crc_reg[15]_0 (\line_crc[1].line_crc_n_0 ),
        .dat_width_4(dat_width_4),
        .read_crc_err(read_crc_err),
        .read_crc_err_reg(state),
        .read_crc_err_reg_0(\line_crc[2].line_crc_n_0 ),
        .read_crc_err_reg_1(\line_crc[3].line_crc_n_0 ),
        .read_crc_err_reg_2(\line_crc[0].line_crc_n_1 ),
        .read_crc_err_reg_3(read_crc_err_i_3_n_0));
  block_design_sd_card_0_line_crc__parameterized0_1 \line_crc[2].line_crc 
       (.E(new_sd_clk),
        .Q(state),
        .SR(\line_crc[2].line_crc_n_1 ),
        .clk(clk),
        .\crc_reg[0]_0 (buffer[6]),
        .\crc_reg[0]_1 (Q[2]),
        .\crc_reg[15]_0 (\line_crc[2].line_crc_n_2 ),
        .dat_resetn(dat_resetn),
        .dat_width_4(dat_width_4),
        .good_reg_0(\line_crc[2].line_crc_n_0 ));
  block_design_sd_card_0_line_crc__parameterized0_2 \line_crc[3].line_crc 
       (.E(new_sd_clk),
        .Q(buffer[7]),
        .SR(\line_crc[2].line_crc_n_1 ),
        .clk(clk),
        .\crc_reg[0]_0 ({state[3],state[1:0]}),
        .\crc_reg[0]_1 (Q[3]),
        .\crc_reg[15]_0 (\line_crc[3].line_crc_n_2 ),
        .dat_width_4(dat_width_4),
        .good_reg_0(\line_crc[3].line_crc_n_0 ),
        .good_reg_1(good_reg));
  CARRY4 no_more_blocks0_carry
       (.CI(1'b0),
        .CO({no_more_blocks0_carry_n_0,no_more_blocks0_carry_n_1,no_more_blocks0_carry_n_2,no_more_blocks0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({no_more_blocks0_carry_i_1_n_0,no_more_blocks0_carry_i_2_n_0,no_more_blocks0_carry_i_3_n_0,no_more_blocks0_carry_i_4_n_0}),
        .O(NLW_no_more_blocks0_carry_O_UNCONNECTED[3:0]),
        .S({no_more_blocks0_carry_i_5_n_0,no_more_blocks0_carry_i_6_n_0,no_more_blocks0_carry_i_7_n_0,no_more_blocks0_carry_i_8_n_0}));
  CARRY4 no_more_blocks0_carry__0
       (.CI(no_more_blocks0_carry_n_0),
        .CO({no_more_blocks0_carry__0_n_0,no_more_blocks0_carry__0_n_1,no_more_blocks0_carry__0_n_2,no_more_blocks0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks0_carry__0_i_1_n_0,no_more_blocks0_carry__0_i_2_n_0,no_more_blocks0_carry__0_i_3_n_0,no_more_blocks0_carry__0_i_4_n_0}),
        .O(NLW_no_more_blocks0_carry__0_O_UNCONNECTED[3:0]),
        .S({no_more_blocks0_carry__0_i_5_n_0,no_more_blocks0_carry__0_i_6_n_0,no_more_blocks0_carry__0_i_7_n_0,no_more_blocks0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__0_i_1
       (.I0(dat_block_count_done[14]),
        .I1(dat_block_limit[15]),
        .I2(dat_block_count_done[13]),
        .I3(dat_block_limit[14]),
        .O(no_more_blocks0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__0_i_2
       (.I0(dat_block_count_done[12]),
        .I1(dat_block_limit[13]),
        .I2(dat_block_count_done[11]),
        .I3(dat_block_limit[12]),
        .O(no_more_blocks0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__0_i_3
       (.I0(dat_block_count_done[10]),
        .I1(dat_block_limit[11]),
        .I2(dat_block_count_done[9]),
        .I3(dat_block_limit[10]),
        .O(no_more_blocks0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__0_i_4
       (.I0(dat_block_count_done[8]),
        .I1(dat_block_limit[9]),
        .I2(dat_block_count_done[7]),
        .I3(dat_block_limit[8]),
        .O(no_more_blocks0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__0_i_5
       (.I0(dat_block_limit[15]),
        .I1(dat_block_count_done[14]),
        .I2(dat_block_limit[14]),
        .I3(dat_block_count_done[13]),
        .O(no_more_blocks0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__0_i_6
       (.I0(dat_block_limit[13]),
        .I1(dat_block_count_done[12]),
        .I2(dat_block_limit[12]),
        .I3(dat_block_count_done[11]),
        .O(no_more_blocks0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__0_i_7
       (.I0(dat_block_limit[11]),
        .I1(dat_block_count_done[10]),
        .I2(dat_block_limit[10]),
        .I3(dat_block_count_done[9]),
        .O(no_more_blocks0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__0_i_8
       (.I0(dat_block_limit[9]),
        .I1(dat_block_count_done[8]),
        .I2(dat_block_limit[8]),
        .I3(dat_block_count_done[7]),
        .O(no_more_blocks0_carry__0_i_8_n_0));
  CARRY4 no_more_blocks0_carry__1
       (.CI(no_more_blocks0_carry__0_n_0),
        .CO({no_more_blocks0_carry__1_n_0,no_more_blocks0_carry__1_n_1,no_more_blocks0_carry__1_n_2,no_more_blocks0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks0_carry__1_i_1_n_0,no_more_blocks0_carry__1_i_2_n_0,no_more_blocks0_carry__1_i_3_n_0,no_more_blocks0_carry__1_i_4_n_0}),
        .O(NLW_no_more_blocks0_carry__1_O_UNCONNECTED[3:0]),
        .S({no_more_blocks0_carry__1_i_5_n_0,no_more_blocks0_carry__1_i_6_n_0,no_more_blocks0_carry__1_i_7_n_0,no_more_blocks0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__1_i_1
       (.I0(dat_block_count_done[22]),
        .I1(dat_block_limit[23]),
        .I2(dat_block_count_done[21]),
        .I3(dat_block_limit[22]),
        .O(no_more_blocks0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__1_i_2
       (.I0(dat_block_count_done[20]),
        .I1(dat_block_limit[21]),
        .I2(dat_block_count_done[19]),
        .I3(dat_block_limit[20]),
        .O(no_more_blocks0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__1_i_3
       (.I0(dat_block_count_done[18]),
        .I1(dat_block_limit[19]),
        .I2(dat_block_count_done[17]),
        .I3(dat_block_limit[18]),
        .O(no_more_blocks0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__1_i_4
       (.I0(dat_block_count_done[16]),
        .I1(dat_block_limit[17]),
        .I2(dat_block_count_done[15]),
        .I3(dat_block_limit[16]),
        .O(no_more_blocks0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__1_i_5
       (.I0(dat_block_limit[23]),
        .I1(dat_block_count_done[22]),
        .I2(dat_block_limit[22]),
        .I3(dat_block_count_done[21]),
        .O(no_more_blocks0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__1_i_6
       (.I0(dat_block_limit[21]),
        .I1(dat_block_count_done[20]),
        .I2(dat_block_limit[20]),
        .I3(dat_block_count_done[19]),
        .O(no_more_blocks0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__1_i_7
       (.I0(dat_block_limit[19]),
        .I1(dat_block_count_done[18]),
        .I2(dat_block_limit[18]),
        .I3(dat_block_count_done[17]),
        .O(no_more_blocks0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__1_i_8
       (.I0(dat_block_limit[17]),
        .I1(dat_block_count_done[16]),
        .I2(dat_block_limit[16]),
        .I3(dat_block_count_done[15]),
        .O(no_more_blocks0_carry__1_i_8_n_0));
  CARRY4 no_more_blocks0_carry__2
       (.CI(no_more_blocks0_carry__1_n_0),
        .CO({no_more_blocks0_carry__2_n_0,no_more_blocks0_carry__2_n_1,no_more_blocks0_carry__2_n_2,no_more_blocks0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks0_carry__2_i_1_n_0,no_more_blocks0_carry__2_i_2_n_0,no_more_blocks0_carry__2_i_3_n_0,no_more_blocks0_carry__2_i_4_n_0}),
        .O(NLW_no_more_blocks0_carry__2_O_UNCONNECTED[3:0]),
        .S({no_more_blocks0_carry__2_i_5_n_0,no_more_blocks0_carry__2_i_6_n_0,no_more_blocks0_carry__2_i_7_n_0,no_more_blocks0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__2_i_1
       (.I0(dat_block_count_done[30]),
        .I1(dat_block_limit[31]),
        .I2(dat_block_count_done[29]),
        .I3(dat_block_limit[30]),
        .O(no_more_blocks0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__2_i_2
       (.I0(dat_block_count_done[28]),
        .I1(dat_block_limit[29]),
        .I2(dat_block_count_done[27]),
        .I3(dat_block_limit[28]),
        .O(no_more_blocks0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__2_i_3
       (.I0(dat_block_count_done[26]),
        .I1(dat_block_limit[27]),
        .I2(dat_block_count_done[25]),
        .I3(dat_block_limit[26]),
        .O(no_more_blocks0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry__2_i_4
       (.I0(dat_block_count_done[24]),
        .I1(dat_block_limit[25]),
        .I2(dat_block_count_done[23]),
        .I3(dat_block_limit[24]),
        .O(no_more_blocks0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__2_i_5
       (.I0(dat_block_limit[31]),
        .I1(dat_block_count_done[30]),
        .I2(dat_block_limit[30]),
        .I3(dat_block_count_done[29]),
        .O(no_more_blocks0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__2_i_6
       (.I0(dat_block_limit[29]),
        .I1(dat_block_count_done[28]),
        .I2(dat_block_limit[28]),
        .I3(dat_block_count_done[27]),
        .O(no_more_blocks0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__2_i_7
       (.I0(dat_block_limit[27]),
        .I1(dat_block_count_done[26]),
        .I2(dat_block_limit[26]),
        .I3(dat_block_count_done[25]),
        .O(no_more_blocks0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry__2_i_8
       (.I0(dat_block_limit[25]),
        .I1(dat_block_count_done[24]),
        .I2(dat_block_limit[24]),
        .I3(dat_block_count_done[23]),
        .O(no_more_blocks0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry_i_1
       (.I0(dat_block_count_done[6]),
        .I1(dat_block_limit[7]),
        .I2(dat_block_count_done[5]),
        .I3(dat_block_limit[6]),
        .O(no_more_blocks0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry_i_2
       (.I0(dat_block_count_done[4]),
        .I1(dat_block_limit[5]),
        .I2(dat_block_count_done[3]),
        .I3(dat_block_limit[4]),
        .O(no_more_blocks0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry_i_3
       (.I0(dat_block_count_done[2]),
        .I1(dat_block_limit[3]),
        .I2(dat_block_count_done[1]),
        .I3(dat_block_limit[2]),
        .O(no_more_blocks0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks0_carry_i_4
       (.I0(dat_block_count_done[0]),
        .I1(dat_block_limit[1]),
        .I2(\block_count_done_reg[0]_0 ),
        .I3(dat_block_limit[0]),
        .O(no_more_blocks0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry_i_5
       (.I0(dat_block_limit[7]),
        .I1(dat_block_count_done[6]),
        .I2(dat_block_limit[6]),
        .I3(dat_block_count_done[5]),
        .O(no_more_blocks0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry_i_6
       (.I0(dat_block_limit[5]),
        .I1(dat_block_count_done[4]),
        .I2(dat_block_limit[4]),
        .I3(dat_block_count_done[3]),
        .O(no_more_blocks0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry_i_7
       (.I0(dat_block_limit[3]),
        .I1(dat_block_count_done[2]),
        .I2(dat_block_limit[2]),
        .I3(dat_block_count_done[1]),
        .O(no_more_blocks0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks0_carry_i_8
       (.I0(dat_block_limit[1]),
        .I1(dat_block_count_done[0]),
        .I2(dat_block_limit[0]),
        .I3(\block_count_done_reg[0]_0 ),
        .O(no_more_blocks0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    no_more_blocks_i_1
       (.I0(block_type[1]),
        .I1(no_more_blocks0_carry__2_n_0),
        .I2(block_type[0]),
        .O(no_more_blocks_i_1_n_0));
  FDRE no_more_blocks_reg
       (.C(clk),
        .CE(1'b1),
        .D(no_more_blocks_i_1_n_0),
        .Q(no_more_blocks),
        .R(counter1));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_tdata[0]_i_1 
       (.I0(Q[0]),
        .I1(in_tready_INST_0_i_1_n_0),
        .I2(in_tdata[0]),
        .O(buffer_next[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[1]_i_1 
       (.I0(Q[1]),
        .I1(dat_width_4),
        .I2(buffer[0]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[1]),
        .O(buffer_next[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[2]_i_1 
       (.I0(Q[2]),
        .I1(dat_width_4),
        .I2(buffer[1]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[2]),
        .O(buffer_next[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[3]_i_1 
       (.I0(Q[3]),
        .I1(dat_width_4),
        .I2(buffer[2]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[3]),
        .O(buffer_next[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[4]_i_1 
       (.I0(buffer[0]),
        .I1(dat_width_4),
        .I2(buffer[3]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[4]),
        .O(buffer_next[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[5]_i_1 
       (.I0(buffer[1]),
        .I1(dat_width_4),
        .I2(buffer[4]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[5]),
        .O(buffer_next[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[6]_i_1 
       (.I0(buffer[2]),
        .I1(dat_width_4),
        .I2(buffer[5]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[6]),
        .O(buffer_next[6]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out_tdata[7]_i_1 
       (.I0(\out_tdata[7]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .O(out_tdata0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_tdata[7]_i_2 
       (.I0(buffer[3]),
        .I1(dat_width_4),
        .I2(buffer[6]),
        .I3(in_tready_INST_0_i_1_n_0),
        .I4(in_tdata[7]),
        .O(buffer_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h88808080)) 
    \out_tdata[7]_i_3 
       (.I0(new_sd_clk),
        .I1(\counter_reg_n_0_[0] ),
        .I2(dat_width_4),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(\out_tdata[7]_i_3_n_0 ));
  FDRE \out_tdata_reg[0] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[0]),
        .Q(out_tdata[0]),
        .R(SS));
  FDRE \out_tdata_reg[1] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[1]),
        .Q(out_tdata[1]),
        .R(SS));
  FDRE \out_tdata_reg[2] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[2]),
        .Q(out_tdata[2]),
        .R(SS));
  FDRE \out_tdata_reg[3] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[3]),
        .Q(out_tdata[3]),
        .R(SS));
  FDRE \out_tdata_reg[4] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[4]),
        .Q(out_tdata[4]),
        .R(SS));
  FDRE \out_tdata_reg[5] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[5]),
        .Q(out_tdata[5]),
        .R(SS));
  FDRE \out_tdata_reg[6] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[6]),
        .Q(out_tdata[6]),
        .R(SS));
  FDRE \out_tdata_reg[7] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[7]),
        .Q(out_tdata[7]),
        .R(SS));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    out_tlast_i_1
       (.I0(counter_inc[10]),
        .I1(dat_width_4),
        .I2(counter_inc__0),
        .I3(block_type[1]),
        .I4(block_type[0]),
        .I5(out_tlast_reg_i_2_n_0),
        .O(block_data_done));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    out_tlast_i_10
       (.I0(block_size_exp[1]),
        .I1(block_size_exp[0]),
        .O(out_tlast_i_10_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    out_tlast_i_11
       (.I0(counter_inc[6]),
        .I1(counter_inc[7]),
        .I2(block_size_exp[1]),
        .I3(block_size_exp[0]),
        .I4(counter_inc[4]),
        .I5(counter_inc[5]),
        .O(out_tlast_i_11_n_0));
  LUT6 #(
    .INIT(64'h0ACF0AC0FACFFAC0)) 
    out_tlast_i_12
       (.I0(counter_inc[2]),
        .I1(counter_inc[3]),
        .I2(block_size_exp[1]),
        .I3(block_size_exp[0]),
        .I4(counter_inc[1]),
        .I5(\counter_reg_n_0_[0] ),
        .O(out_tlast_i_12_n_0));
  LUT6 #(
    .INIT(64'h10FF101010FF10FF)) 
    out_tlast_i_3
       (.I0(out_tlast_i_5_n_0),
        .I1(out_tlast_i_6_n_0),
        .I2(out_tlast_i_7_n_0),
        .I3(out_tlast_i_8_n_0),
        .I4(out_tlast_i_9_n_0),
        .I5(out_tlast_i_10_n_0),
        .O(out_tlast_i_3_n_0));
  LUT6 #(
    .INIT(64'hBFFF803FBFC08000)) 
    out_tlast_i_4
       (.I0(out_tlast_i_9_n_0),
        .I1(block_size_exp[0]),
        .I2(block_size_exp[1]),
        .I3(block_size_exp[2]),
        .I4(out_tlast_i_11_n_0),
        .I5(out_tlast_i_12_n_0),
        .O(out_tlast_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    out_tlast_i_5
       (.I0(block_size_exp[2]),
        .I1(block_size_exp[1]),
        .I2(counter_inc[3]),
        .I3(block_size_exp[0]),
        .O(out_tlast_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hA8B8ACBC)) 
    out_tlast_i_6
       (.I0(block_size_exp[2]),
        .I1(block_size_exp[1]),
        .I2(block_size_exp[0]),
        .I3(counter_inc[4]),
        .I4(counter_inc[5]),
        .O(out_tlast_i_6_n_0));
  LUT5 #(
    .INIT(32'hBBBBFCFF)) 
    out_tlast_i_7
       (.I0(counter_inc[6]),
        .I1(block_size_exp[0]),
        .I2(counter_inc[7]),
        .I3(block_size_exp[2]),
        .I4(block_size_exp[1]),
        .O(out_tlast_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h755F)) 
    out_tlast_i_8
       (.I0(block_size_exp[2]),
        .I1(counter_inc[10]),
        .I2(block_size_exp[0]),
        .I3(block_size_exp[1]),
        .O(out_tlast_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    out_tlast_i_9
       (.I0(counter_inc[8]),
        .I1(block_size_exp[0]),
        .I2(counter_inc[9]),
        .O(out_tlast_i_9_n_0));
  FDRE out_tlast_reg
       (.C(clk),
        .CE(out_tdata0),
        .D(block_data_done),
        .Q(out_tlast),
        .R(SS));
  MUXF7 out_tlast_reg_i_2
       (.I0(out_tlast_i_3_n_0),
        .I1(out_tlast_i_4_n_0),
        .O(out_tlast_reg_i_2_n_0),
        .S(dat_width_4));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    out_tvalid_i_1
       (.I0(out_tready),
        .I1(set_out_tvalid),
        .I2(out_tvalid_reg_0),
        .O(out_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF040000)) 
    out_tvalid_i_2
       (.I0(state[2]),
        .I1(\out_tdata[7]_i_3_n_0 ),
        .I2(block_data_done),
        .I3(out_tvalid_i_3_n_0),
        .I4(\error_code[2]_i_4_n_0 ),
        .I5(state[3]),
        .O(set_out_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    out_tvalid_i_3
       (.I0(new_sd_clk),
        .I1(counter[2]),
        .I2(state[2]),
        .I3(read_crc_err),
        .O(out_tvalid_i_3_n_0));
  FDRE out_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_tvalid_i_1_n_0),
        .Q(out_tvalid_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    read_crc_err_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .O(read_crc_err_i_3_n_0));
  FDRE read_crc_err_reg
       (.C(clk),
        .CE(1'b1),
        .D(\line_crc[1].line_crc_n_1 ),
        .Q(read_crc_err),
        .R(counter1));
  FDRE resetn_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(dat_resetn),
        .Q(resetn_d),
        .R(SS));
  LUT5 #(
    .INIT(32'hA2A2A80A)) 
    \sd_dat_o_sys[0]_i_2 
       (.I0(state[2]),
        .I1(read_crc_err),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\counter_reg_n_0_[0] ),
        .O(\sd_dat_o_sys[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAFFFFFFAAFF)) 
    \sd_dat_o_sys[1]_i_1 
       (.I0(\sd_dat_o_sys_reg[3]_0 [1]),
        .I1(\line_crc[1].line_crc_n_0 ),
        .I2(\sd_dat_o_sys[3]_i_3_n_0 ),
        .I3(resetn),
        .I4(new_sd_clk),
        .I5(dat_width_4),
        .O(\sd_dat_o_sys[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAFFFFFFAAFF)) 
    \sd_dat_o_sys[2]_i_1 
       (.I0(\sd_dat_o_sys_reg[3]_0 [2]),
        .I1(\line_crc[2].line_crc_n_2 ),
        .I2(\sd_dat_o_sys[3]_i_3_n_0 ),
        .I3(resetn),
        .I4(new_sd_clk),
        .I5(dat_width_4),
        .O(\sd_dat_o_sys[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAFFFFFFAAFF)) 
    \sd_dat_o_sys[3]_i_1 
       (.I0(\sd_dat_o_sys_reg[3]_0 [3]),
        .I1(\line_crc[3].line_crc_n_2 ),
        .I2(\sd_dat_o_sys[3]_i_3_n_0 ),
        .I3(resetn),
        .I4(new_sd_clk),
        .I5(dat_width_4),
        .O(\sd_dat_o_sys[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \sd_dat_o_sys[3]_i_3 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\sd_dat_o_sys[3]_i_3_n_0 ));
  FDSE \sd_dat_o_sys_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(sd_dat_o_sys_next),
        .Q(\sd_dat_o_sys_reg[3]_0 [0]),
        .S(SS));
  FDRE \sd_dat_o_sys_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_o_sys[1]_i_1_n_0 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \sd_dat_o_sys_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_o_sys[2]_i_1_n_0 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \sd_dat_o_sys_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_o_sys[3]_i_1_n_0 ),
        .Q(\sd_dat_o_sys_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA0000A0A0A0AAA02)) 
    \sd_dat_t_sys[3]_i_1 
       (.I0(\sd_dat_t_sys[3]_i_2_n_0 ),
        .I1(busy_in),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(sd_dat_t_sys_next));
  LUT4 #(
    .INIT(16'h8000)) 
    \sd_dat_t_sys[3]_i_2 
       (.I0(\sd_dat_o_sys_reg[3]_0 [0]),
        .I1(\sd_dat_o_sys_reg[3]_0 [3]),
        .I2(\sd_dat_o_sys_reg[3]_0 [1]),
        .I3(\sd_dat_o_sys_reg[3]_0 [2]),
        .O(\sd_dat_t_sys[3]_i_2_n_0 ));
  FDSE \sd_dat_t_sys_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(sd_dat_t_sys_next),
        .Q(D),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "device" *) 
module block_design_sd_card_0_device
   (\reg_saved_in[10]_5 ,
    cmd_arg,
    out_tdata,
    out_tlast,
    out_tvalid,
    in_tready,
    D,
    sd_cmd_o,
    sd_cmd_t,
    sd_dat_o,
    sd_dat_t,
    Q,
    E,
    \reg_saved_in[9]_6 ,
    fifo_out_resetn,
    fifo_in_resetn,
    sd_dat3_pullup_off,
    ram_addr,
    \got_cmd0_reg[0] ,
    fifo_out_tready_masked,
    fifo_out_tvalid_masked,
    interrupt,
    \reg_saved_reg[11][18] ,
    \latched_status_bits_reg[15] ,
    \saved_cmd_arg_reg[31] ,
    \save_erase_vars[0].erase_vars_reg[0][31] ,
    \save_erase_vars[1].erase_vars_reg[1][31] ,
    \save_block_limit_vars[1].block_limit_vars_reg[1][22] ,
    fifo_out_almostfull,
    out_tready,
    in_tdata,
    in_tlast,
    in_tvalid,
    sd_clk,
    sd_cmd_i,
    sd_dat_i,
    clk,
    SR,
    resetn,
    \card_status_reg[31] ,
    \card_status_reg[31]_0 ,
    \reg_clear_always[21]_13 ,
    fifo_out_tready_in,
    fifo_out_tvalid_in,
    \assign_reg_mux[2].reg_needed.mux_reg[15] ,
    dev_ram_data,
    interrupt_INST_0_i_2,
    \assign_reg_mux[2].reg_needed.mux_reg[18] ,
    \assign_reg_mux[2].reg_needed.mux_reg[18]_0 ,
    s_axi_araddr,
    \assign_reg_mux[2].reg_needed.mux_reg[14] ,
    \ocr_high_byte_reg[31]_0 ,
    \size_reg[31]_0 );
  output [13:0]\reg_saved_in[10]_5 ;
  output [31:0]cmd_arg;
  output [7:0]out_tdata;
  output out_tlast;
  output out_tvalid;
  output in_tready;
  output [31:0]D;
  output sd_cmd_o;
  output sd_cmd_t;
  output [3:0]sd_dat_o;
  output [3:0]sd_dat_t;
  output [31:0]Q;
  output [0:0]E;
  output [30:0]\reg_saved_in[9]_6 ;
  output fifo_out_resetn;
  output fifo_in_resetn;
  output sd_dat3_pullup_off;
  output [4:0]ram_addr;
  output [0:0]\got_cmd0_reg[0] ;
  output fifo_out_tready_masked;
  output fifo_out_tvalid_masked;
  output interrupt;
  output [18:0]\reg_saved_reg[11][18] ;
  output [7:0]\latched_status_bits_reg[15] ;
  output [31:0]\saved_cmd_arg_reg[31] ;
  output [31:0]\save_erase_vars[0].erase_vars_reg[0][31] ;
  output [31:0]\save_erase_vars[1].erase_vars_reg[1][31] ;
  output [22:0]\save_block_limit_vars[1].block_limit_vars_reg[1][22] ;
  input fifo_out_almostfull;
  input out_tready;
  input [7:0]in_tdata;
  input in_tlast;
  input in_tvalid;
  input sd_clk;
  input sd_cmd_i;
  input [3:0]sd_dat_i;
  input clk;
  input [0:0]SR;
  input resetn;
  input [26:0]\card_status_reg[31] ;
  input [26:0]\card_status_reg[31]_0 ;
  input [2:0]\reg_clear_always[21]_13 ;
  input fifo_out_tready_in;
  input fifo_out_tvalid_in;
  input [7:0]\assign_reg_mux[2].reg_needed.mux_reg[15] ;
  input [7:0]dev_ram_data;
  input [8:0]interrupt_INST_0_i_2;
  input [18:0]\assign_reg_mux[2].reg_needed.mux_reg[18] ;
  input [17:0]\assign_reg_mux[2].reg_needed.mux_reg[18]_0 ;
  input [1:0]s_axi_araddr;
  input [13:0]\assign_reg_mux[2].reg_needed.mux_reg[14] ;
  input [7:0]\ocr_high_byte_reg[31]_0 ;
  input [31:0]\size_reg[31]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire acmd_defined_c;
  wire \assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0 ;
  wire \assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0 ;
  wire [13:0]\assign_reg_mux[2].reg_needed.mux_reg[14] ;
  wire [7:0]\assign_reg_mux[2].reg_needed.mux_reg[15] ;
  wire [18:0]\assign_reg_mux[2].reg_needed.mux_reg[18] ;
  wire [17:0]\assign_reg_mux[2].reg_needed.mux_reg[18]_0 ;
  wire block_size_exp0;
  wire [0:0]block_type_next;
  wire card_status_keeper_n_27;
  wire card_status_keeper_n_45;
  wire card_status_keeper_n_47;
  wire card_status_keeper_n_48;
  wire card_status_keeper_n_49;
  wire card_status_keeper_n_50;
  wire card_status_keeper_n_51;
  wire card_status_keeper_n_52;
  wire card_status_keeper_n_53;
  wire card_status_keeper_n_54;
  wire card_status_keeper_n_55;
  wire card_status_keeper_n_56;
  wire card_status_keeper_n_57;
  wire card_status_keeper_n_58;
  wire card_status_keeper_n_59;
  wire card_status_keeper_n_60;
  wire card_status_keeper_n_61;
  wire card_status_keeper_n_62;
  wire card_status_keeper_n_63;
  wire [23:0]card_status_next2_out;
  wire [26:0]\card_status_reg[31] ;
  wire [26:0]\card_status_reg[31]_0 ;
  wire [23:0]card_status_resp;
  wire [28:5]card_status_resp_next;
  wire cc_error;
  wire clk;
  wire cmd8_vhs_match;
  wire [31:0]cmd_arg;
  wire cmd_crc_err_stb;
  wire cmd_crc_err_stb0;
  wire cmd_ignored_stb;
  wire cmd_ignored_stb0;
  wire cmd_illegal_stb;
  wire cmd_illegal_stb0;
  wire cmd_info_keeper_n_14;
  wire cmd_info_keeper_n_15;
  wire cmd_info_keeper_n_18;
  wire cmd_info_keeper_n_19;
  wire cmd_info_keeper_n_20;
  wire cmd_info_keeper_n_21;
  wire cmd_info_keeper_n_22;
  wire cmd_info_keeper_n_23;
  wire cmd_info_keeper_n_33;
  wire cmd_read_crc_err;
  wire cmd_received;
  wire cmd_received_good;
  wire command_validator_n_13;
  wire command_validator_n_2;
  wire command_validator_n_24;
  wire command_validator_n_27;
  wire command_validator_n_28;
  wire command_validator_n_29;
  wire command_validator_n_3;
  wire command_validator_n_30;
  wire command_validator_n_32;
  wire command_validator_n_33;
  wire command_validator_n_34;
  wire command_validator_n_35;
  wire command_validator_n_36;
  wire command_validator_n_37;
  wire command_validator_n_38;
  wire command_validator_n_39;
  wire command_validator_n_4;
  wire command_validator_n_40;
  wire command_validator_n_41;
  wire command_validator_n_47;
  wire command_validator_n_48;
  wire command_validator_n_49;
  wire command_validator_n_50;
  wire command_validator_n_51;
  wire command_validator_n_52;
  wire command_validator_n_53;
  wire command_validator_n_6;
  wire command_validator_n_7;
  wire dat_block_done;
  wire [2:0]dat_block_size_exp;
  wire [1:0]dat_block_type;
  wire dat_busy_out;
  wire dat_controller_n_6;
  wire dat_controller_n_7;
  wire dat_controller_n_8;
  wire dat_done;
  wire dat_done_new;
  wire [2:0]dat_error_code;
  wire dat_read_mode;
  wire dat_resetn;
  wire dat_width_4;
  wire [7:0]dev_ram_data;
  wire erase_reset;
  wire erase_seq_error;
  wire fifo_in_resetn;
  wire fifo_out_almostfull;
  wire fifo_out_resetn;
  wire fifo_out_tready_in;
  wire fifo_out_tready_masked;
  wire fifo_out_tvalid_in;
  wire fifo_out_tvalid_masked;
  wire [0:0]\got_cmd0_reg[0] ;
  wire got_cmd8;
  wire got_new_cmd12;
  wire ignored_c;
  wire [7:0]in_tdata;
  wire in_tlast;
  wire in_tready;
  wire in_tvalid;
  wire inactive_keeper_n_1;
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
  wire inactive_keeper_n_3;
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
  wire inactive_keeper_n_40;
  wire inactive_keeper_n_41;
  wire inactive_keeper_n_42;
  wire inactive_keeper_n_43;
  wire inactive_keeper_n_44;
  wire inactive_keeper_n_45;
  wire inactive_keeper_n_46;
  wire inactive_keeper_n_47;
  wire inactive_keeper_n_48;
  wire inactive_keeper_n_49;
  wire inactive_keeper_n_5;
  wire inactive_keeper_n_50;
  wire inactive_keeper_n_6;
  wire inactive_keeper_n_7;
  wire inactive_keeper_n_8;
  wire initialization_done;
  wire interrupt;
  wire interrupt_INST_0_i_1_n_0;
  wire [8:0]interrupt_INST_0_i_2;
  wire invalid_dat_width;
  wire is_inactive;
  wire [7:0]\latched_status_bits_reg[15] ;
  wire new_cmd;
  wire new_cmd_saved;
  wire [7:0]\ocr_high_byte_reg[31]_0 ;
  wire \ocr_high_byte_reg_n_0_[24] ;
  wire \ocr_high_byte_reg_n_0_[25] ;
  wire \ocr_high_byte_reg_n_0_[26] ;
  wire \ocr_high_byte_reg_n_0_[27] ;
  wire \ocr_high_byte_reg_n_0_[28] ;
  wire \ocr_high_byte_reg_n_0_[29] ;
  wire \ocr_high_byte_reg_n_0_[30] ;
  wire out_of_range;
  wire [7:0]out_tdata;
  wire out_tlast;
  wire out_tready;
  wire out_tvalid;
  wire p_0_in;
  wire p_1_in;
  wire p_8_out;
  wire p_9_out;
  wire [4:0]ram_addr;
  wire range_check_n_2;
  wire rca_keeper_n_1;
  wire rca_keeper_n_2;
  wire rca_keeper_n_3;
  wire rca_keeper_n_4;
  wire rca_keeper_n_5;
  wire rca_keeper_n_6;
  wire rca_keeper_n_7;
  wire rca_keeper_n_8;
  wire rca_keeper_n_9;
  wire rca_match;
  wire [2:0]\reg_clear_always[21]_13 ;
  wire [13:0]\reg_saved_in[10]_5 ;
  wire [30:0]\reg_saved_in[9]_6 ;
  wire [18:0]\reg_saved_reg[11][18] ;
  wire resetn;
  wire resetn_0;
  wire [7:0]resp_byte;
  wire [1:1]resp_cur;
  wire [4:0]resp_len_bytes;
  wire [4:0]resp_len_next;
  wire [2:0]resp_next;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire [4:0]resp_pos;
  wire responder_n_10;
  wire responder_n_20;
  wire responder_n_21;
  wire responder_n_6;
  wire responder_n_8;
  wire responder_n_9;
  wire [1:0]s_axi_araddr;
  wire [22:0]\save_block_limit_vars[1].block_limit_vars_reg[1][22] ;
  wire [31:0]\save_erase_vars[0].erase_vars_reg[0][31] ;
  wire [31:0]\save_erase_vars[1].erase_vars_reg[1][31] ;
  wire [31:0]\saved_cmd_arg_reg[31] ;
  wire sd_clk;
  wire sd_cmd_i;
  wire sd_cmd_o;
  wire sd_cmd_t;
  wire sd_dat3_pullup_off;
  wire [3:0]sd_dat_i;
  wire [3:0]sd_dat_o;
  wire [3:0]sd_dat_t;
  wire send_no_resp;
  wire send_no_resp0;
  wire send_resp;
  wire sent_r1;
  wire set_dat3_pullup_n_1;
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
  wire update_1;
  wire update_2;
  wire valid_c1_out;
  wire NLW_sd_bus_interface_cmd_resp_done_UNCONNECTED;
  wire NLW_sd_bus_interface_cmd_resp_timeout_UNCONNECTED;

  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state_next__0[0]),
        .Q(state[0]),
        .S(p_0_in));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(state_next__0[1]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(p_0_in));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(state_next__0[2]),
        .Q(state[2]),
        .R(p_0_in));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(state_next__0[3]),
        .Q(state[3]),
        .R(p_0_in));
  (* FSM_ENCODED_STATES = "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(state_next__0[4]),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \assign_reg_mux[2].reg_needed.mux[14]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [14]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [13]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[14] [13]),
        .I4(s_axi_araddr[1]),
        .I5(\assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0 ),
        .O(\reg_saved_reg[11][18] [14]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \assign_reg_mux[2].reg_needed.mux[14]_i_2 
       (.I0(dat_done_new),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[15] [6]),
        .O(\assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFA0CFA0CFA0C0)) 
    \assign_reg_mux[2].reg_needed.mux[15]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [15]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [14]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\assign_reg_mux[2].reg_needed.mux_reg[15] [7]),
        .I5(dat_block_done),
        .O(\reg_saved_reg[11][18] [15]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \assign_reg_mux[2].reg_needed.mux[16]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [16]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [15]),
        .I2(s_axi_araddr[0]),
        .I3(dat_error_code[0]),
        .I4(s_axi_araddr[1]),
        .O(\reg_saved_reg[11][18] [16]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \assign_reg_mux[2].reg_needed.mux[17]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [17]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [16]),
        .I2(s_axi_araddr[0]),
        .I3(dat_error_code[1]),
        .I4(s_axi_araddr[1]),
        .O(\reg_saved_reg[11][18] [17]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \assign_reg_mux[2].reg_needed.mux[18]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [18]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [17]),
        .I2(s_axi_araddr[0]),
        .I3(dat_error_code[2]),
        .I4(s_axi_araddr[1]),
        .O(\reg_saved_reg[11][18] [18]));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \assign_reg_mux[2].reg_needed.mux[4]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [4]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [4]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[14] [4]),
        .I4(s_axi_araddr[1]),
        .I5(\assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0 ),
        .O(\reg_saved_reg[11][18] [4]));
  LUT2 #(
    .INIT(4'h1)) 
    \assign_reg_mux[2].reg_needed.mux[4]_i_2 
       (.I0(new_cmd),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[15] [2]),
        .O(\assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \assign_reg_mux[2].reg_needed.mux[5]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[18] [5]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [5]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[14] [5]),
        .I4(s_axi_araddr[1]),
        .I5(\latched_status_bits_reg[15] [3]),
        .O(\reg_saved_reg[11][18] [5]));
  block_design_sd_card_0_card_status_keeper card_status_keeper
       (.D(\reg_saved_in[10]_5 [12:7]),
        .Q({\reg_saved_in[9]_6 [30:12],\reg_saved_in[9]_6 [7:0]}),
        .SR(p_0_in),
        .acmd_defined_c(acmd_defined_c),
        .acmd_defined_reg(command_validator_n_28),
        .\card_status[10]_i_2_0 (cmd_arg[0]),
        .\card_status_reg[10]_0 (card_status_keeper_n_47),
        .\card_status_reg[10]_1 (card_status_keeper_n_61),
        .\card_status_reg[10]_2 (card_status_keeper_n_62),
        .\card_status_reg[10]_3 (cmd_info_keeper_n_23),
        .\card_status_reg[10]_4 (command_validator_n_2),
        .\card_status_reg[10]_5 (command_validator_n_7),
        .\card_status_reg[11]_0 (\reg_saved_in[9]_6 [11:9]),
        .\card_status_reg[11]_1 (card_status_keeper_n_63),
        .\card_status_reg[11]_2 (rca_keeper_n_1),
        .\card_status_reg[11]_3 (cmd_info_keeper_n_15),
        .\card_status_reg[23]_0 ({card_status_next2_out[23:22],card_status_next2_out[19],card_status_next2_out[7],card_status_next2_out[5:0]}),
        .\card_status_reg[31]_0 ({\card_status_reg[31] [26:19],\card_status_reg[31] [16:15],\card_status_reg[31] [13:8],\card_status_reg[31] [6]}),
        .\card_status_reg[31]_1 (range_check_n_2),
        .\card_status_reg[31]_2 ({\card_status_reg[31]_0 [26:19],\card_status_reg[31]_0 [16:15],\card_status_reg[31]_0 [13:8],\card_status_reg[31]_0 [6]}),
        .\card_status_reg[5]_0 (card_status_keeper_n_45),
        .\card_status_reg[9]_0 (card_status_keeper_n_48),
        .\card_status_reg[9]_1 (inactive_keeper_n_5),
        .\card_status_reg[9]_2 (cmd_info_keeper_n_33),
        .\card_status_resp_reg[23]_0 ({card_status_resp[23:22],card_status_resp[19],card_status_resp[11:6],card_status_resp[3],card_status_resp[1:0]}),
        .\card_status_resp_reg[28]_0 ({card_status_resp_next[28],card_status_resp_next[13],\reg_saved_in[9]_6 [8],card_status_resp_next[5]}),
        .\card_status_resp_reg[2]_0 (card_status_keeper_n_59),
        .\card_status_resp_reg[5]_0 (card_status_keeper_n_60),
        .cc_error_out(cc_error),
        .clk(clk),
        .cmd8_vhs_match(cmd8_vhs_match),
        .cmd_crc_err_stb(cmd_crc_err_stb),
        .cmd_ignored_stb(cmd_ignored_stb),
        .cmd_illegal_stb(cmd_illegal_stb),
        .cmd_illegal_stb_reg(card_status_keeper_n_58),
        .\cmd_index_reg[0] (card_status_keeper_n_27),
        .\cmd_index_reg[4] (card_status_keeper_n_50),
        .cmd_resp_pos(resp_pos[2:0]),
        .dat_done(dat_done),
        .dat_resetn(dat_resetn),
        .dev_ram_data(dev_ram_data),
        .\dev_ram_data_reg[0] (card_status_keeper_n_51),
        .\dev_ram_data_reg[1] (card_status_keeper_n_52),
        .\dev_ram_data_reg[2] (card_status_keeper_n_53),
        .\dev_ram_data_reg[3] (card_status_keeper_n_54),
        .\dev_ram_data_reg[4] (card_status_keeper_n_49),
        .\dev_ram_data_reg[5] (card_status_keeper_n_55),
        .\dev_ram_data_reg[6] (card_status_keeper_n_56),
        .\dev_ram_data_reg[7] (card_status_keeper_n_57),
        .erase_reset(erase_reset),
        .erase_seq_error(erase_seq_error),
        .fifo_out_almostfull(fifo_out_almostfull),
        .ignored_c(ignored_c),
        .ignored_reg(command_validator_n_39),
        .ignored_reg_0(command_validator_n_37),
        .ignored_reg_1(command_validator_n_34),
        .illegal_reg(command_validator_n_24),
        .illegal_reg_0(command_validator_n_35),
        .initialization_done(initialization_done),
        .invalid_dat_width(invalid_dat_width),
        .out_of_range(out_of_range),
        .rca_match(rca_match),
        .\reg_clear_always[21]_13 (\reg_clear_always[21]_13 [0]),
        .\resp_byte_reg[2] (rca_keeper_n_7),
        .\resp_byte_reg[2]_0 (responder_n_20),
        .\resp_byte_reg[4] (responder_n_10),
        .\resp_byte_reg[4]_0 ({resp_cur,ram_addr[4]}),
        .\resp_byte_reg[5] (rca_keeper_n_5),
        .\resp_byte_reg[5]_0 (responder_n_21),
        .sent_r1(sent_r1),
        .update_2(update_2),
        .valid_c1_out(valid_c1_out),
        .valid_reg(command_validator_n_30),
        .valid_reg_0(command_validator_n_38),
        .valid_reg_i_4_0(command_validator_n_27),
        .valid_reg_i_4_1(cmd_info_keeper_n_20));
  LUT2 #(
    .INIT(4'h8)) 
    cmd_crc_err_stb_i_1
       (.I0(cmd_read_crc_err),
        .I1(cmd_received),
        .O(cmd_crc_err_stb0));
  FDRE cmd_crc_err_stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_crc_err_stb0),
        .Q(cmd_crc_err_stb),
        .R(p_0_in));
  FDRE cmd_ignored_stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_ignored_stb0),
        .Q(cmd_ignored_stb),
        .R(p_0_in));
  FDRE cmd_illegal_stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_illegal_stb0),
        .Q(cmd_illegal_stb),
        .R(p_0_in));
  block_design_sd_card_0_cmd_info_keeper cmd_info_keeper
       (.D(\reg_saved_in[10]_5 [12:7]),
        .E(p_9_out),
        .Q(Q),
        .SR(p_0_in),
        .\assign_reg_mux[2].reg_needed.mux_reg[11] ({\assign_reg_mux[2].reg_needed.mux_reg[18] [11:9],\assign_reg_mux[2].reg_needed.mux_reg[18] [6],\assign_reg_mux[2].reg_needed.mux_reg[18] [3:2]}),
        .\assign_reg_mux[2].reg_needed.mux_reg[11]_0 ({\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [11:9],\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [6],\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [3:2]}),
        .\assign_reg_mux[2].reg_needed.mux_reg[11]_1 ({\assign_reg_mux[2].reg_needed.mux_reg[14] [10:8],\assign_reg_mux[2].reg_needed.mux_reg[14] [6],\assign_reg_mux[2].reg_needed.mux_reg[14] [3:2]}),
        .\block_type_reg[0] (dat_controller_n_6),
        .\block_type_reg[0]_0 (responder_n_6),
        .cc_error_out(cc_error),
        .clk(clk),
        .cmd_crc_err(cmd_read_crc_err),
        .cmd_discard_block_limit_reg_0(command_validator_n_29),
        .\cmd_index_reg[0] (cmd_info_keeper_n_14),
        .\cmd_index_reg[0]_0 (cmd_info_keeper_n_20),
        .\cmd_index_reg[0]_1 (cmd_info_keeper_n_22),
        .\cmd_index_reg[2] (cmd_info_keeper_n_19),
        .\cmd_index_reg[3] (cmd_info_keeper_n_21),
        .\cmd_index_reg[4] (cmd_info_keeper_n_18),
        .cmd_received_good(cmd_received_good),
        .dat_width_4(dat_width_4),
        .dat_width_4_reg_0(range_check_n_2),
        .dat_width_4_reg_1(command_validator_n_2),
        .dat_width_4_reg_2(command_validator_n_7),
        .erase_reset(erase_reset),
        .erase_reset_reg_0(command_validator_n_36),
        .erase_seq_error(erase_seq_error),
        .erase_seq_error_reg_0(cmd_info_keeper_n_15),
        .erase_seq_error_reg_1({card_status_resp_next[28],card_status_resp_next[13]}),
        .erase_seq_error_reg_2(command_validator_n_3),
        .\erase_step_reg[1]_0 (command_validator_n_4),
        .got_cmd8(got_cmd8),
        .got_cmd8_reg_0(command_validator_n_50),
        .got_new_cmd(cmd_received),
        .got_new_cmd12(got_new_cmd12),
        .interrupt(interrupt),
        .interrupt_0(interrupt_INST_0_i_1_n_0),
        .interrupt_1({interrupt_INST_0_i_2[3],interrupt_INST_0_i_2[1:0]}),
        .interrupt_2(inactive_keeper_n_50),
        .invalid_dat_width(invalid_dat_width),
        .invalid_dat_width_reg_0(cmd_info_keeper_n_23),
        .invalid_dat_width_reg_1(command_validator_n_40),
        .\latched_status_bits_reg[6] ({\latched_status_bits_reg[15] [4],\latched_status_bits_reg[15] [1:0]}),
        .\latched_status_bits_reg[6]_0 (\assign_reg_mux[2].reg_needed.mux_reg[15] [4:0]),
        .new_cmd(new_cmd),
        .new_cmd_saved(new_cmd_saved),
        .new_cmd_saved_reg_0(cmd_info_keeper_n_33),
        .out_of_range(out_of_range),
        .\reg_saved_in[10]_5 (\reg_saved_in[10]_5 [6:0]),
        .\reg_saved_in[9]_6 ({\reg_saved_in[9]_6 [27],\reg_saved_in[9]_6 [12]}),
        .\reg_saved_reg[11][11] ({\reg_saved_reg[11][18] [11:9],\reg_saved_reg[11][18] [6],\reg_saved_reg[11][18] [3:2]}),
        .resetn_0(resetn_0),
        .s_axi_araddr(s_axi_araddr),
        .\save_block_limit_vars[0].block_limit_vars_reg[0][31]_0 (cmd_arg),
        .\save_block_limit_vars[0].block_limit_vars_used_reg[0]_0 (block_type_next),
        .\save_block_limit_vars[0].save_reg_0 (command_validator_n_33),
        .\save_block_limit_vars[1].block_limit_vars_reg[1][22]_0 (\save_block_limit_vars[1].block_limit_vars_reg[1][22] ),
        .\save_block_limit_vars[1].save_reg_0 (command_validator_n_32),
        .\save_erase_vars[0].erase_vars_reg[0][31]_0 (\save_erase_vars[0].erase_vars_reg[0][31] ),
        .\save_erase_vars[1].erase_vars_reg[1][31]_0 (\save_erase_vars[1].erase_vars_reg[1][31] ),
        .\save_erase_vars[1].erase_vars_reg[1][31]_1 (p_8_out),
        .\saved_cmd_arg_reg[31]_0 (\saved_cmd_arg_reg[31] ),
        .saved_cmd_is_acmd_reg_0(\reg_saved_in[10]_5 [13]),
        .update_1(update_1));
  block_design_sd_card_0_command_validator command_validator
       (.D(state_next__0),
        .E(block_size_exp0),
        .\FSM_onehot_state_reg[1] (command_validator_n_6),
        .\FSM_onehot_state_reg[1]_0 (command_validator_n_7),
        .\FSM_onehot_state_reg[2] (command_validator_n_2),
        .Q({\FSM_onehot_state_reg_n_0_[4] ,state[3:2],\FSM_onehot_state_reg_n_0_[1] ,state[0]}),
        .SR(p_0_in),
        .acmd_defined_c(acmd_defined_c),
        .acmd_defined_reg_0(\reg_saved_in[10]_5 [13]),
        .acmd_defined_reg_1(command_validator_n_4),
        .acmd_defined_reg_2({resp_next[2],resp_next[0]}),
        .acmd_defined_reg_3(card_status_resp_next[5]),
        .acmd_defined_reg_4(command_validator_n_36),
        .acmd_defined_reg_5(command_validator_n_40),
        .\assign_reg_mux[2].reg_needed.mux_reg[1] (\assign_reg_mux[2].reg_needed.mux_reg[18] [1:0]),
        .\assign_reg_mux[2].reg_needed.mux_reg[1]_0 (\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [1:0]),
        .\assign_reg_mux[2].reg_needed.mux_reg[1]_1 (\assign_reg_mux[2].reg_needed.mux_reg[14] [1:0]),
        .\block_type_reg[1] (dat_controller_n_8),
        .\block_type_reg[1]_0 (dat_controller_n_7),
        .\card_status_reg[5] (card_status_keeper_n_27),
        .\card_status_reg[5]_0 (card_status_keeper_n_58),
        .\card_status_reg[5]_1 (\card_status_reg[31] [5]),
        .\card_status_reg[5]_2 (\card_status_reg[31]_0 [5]),
        .\card_status_resp_reg[5] (cmd_info_keeper_n_19),
        .clk(clk),
        .cmd8_vhs_match(cmd8_vhs_match),
        .cmd_arg(cmd_arg[11:8]),
        .cmd_crc_err(cmd_read_crc_err),
        .cmd_ignored_stb0(cmd_ignored_stb0),
        .cmd_illegal_stb0(cmd_illegal_stb0),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .\cmd_index_reg[0] (p_8_out),
        .\cmd_index_reg[0]_0 (command_validator_n_28),
        .\cmd_index_reg[0]_1 (command_validator_n_32),
        .\cmd_index_reg[0]_2 (command_validator_n_33),
        .\cmd_index_reg[0]_3 (command_validator_n_37),
        .\cmd_index_reg[1] (command_validator_n_24),
        .\cmd_index_reg[1]_0 (command_validator_n_35),
        .\cmd_index_reg[1]_1 (command_validator_n_52),
        .\cmd_index_reg[3] (command_validator_n_13),
        .\cmd_index_reg[3]_0 ({resp_len_next[4],resp_len_next[2:0]}),
        .\cmd_index_reg[3]_1 (command_validator_n_27),
        .\cmd_index_reg[3]_2 (command_validator_n_30),
        .\cmd_index_reg[3]_3 (command_validator_n_41),
        .\cmd_index_reg[3]_4 (command_validator_n_50),
        .\cmd_index_reg[4] (command_validator_n_34),
        .\cmd_index_reg[4]_0 (command_validator_n_51),
        .\cmd_index_reg[5] (p_9_out),
        .\cmd_index_reg[5]_0 (command_validator_n_38),
        .\cmd_index_reg[5]_1 (command_validator_n_39),
        .cmd_received_good(cmd_received_good),
        .erase_reset_reg(cmd_info_keeper_n_20),
        .erase_seq_error(erase_seq_error),
        .erase_seq_error_reg(cmd_info_keeper_n_18),
        .erase_seq_error_reg_0(cmd_info_keeper_n_21),
        .got_acmd41_non_query_reg(command_validator_n_49),
        .got_acmd41_non_query_reg_0(inactive_keeper_n_5),
        .got_acmd41_non_query_reg_1(inactive_keeper_n_1),
        .got_cmd8(got_cmd8),
        .got_cmd8_reg(cmd_info_keeper_n_22),
        .got_new_cmd(cmd_received),
        .ignored_c(ignored_c),
        .illegal_reg_0(card_status_keeper_n_45),
        .invalid_dat_width_reg(cmd_info_keeper_n_14),
        .is_inactive(is_inactive),
        .is_inactive_reg(command_validator_n_48),
        .is_inactive_reg_0(inactive_keeper_n_6),
        .is_inactive_reg_1(inactive_keeper_n_7),
        .out_of_range_reg(inactive_keeper_n_8),
        .rca_match(rca_match),
        .\reg_saved_reg[11][1] (\reg_saved_reg[11][18] [1:0]),
        .resetn_0(resetn_0),
        .resetn_out_reg(command_validator_n_3),
        .resetn_out_reg_0(command_validator_n_29),
        .resetn_out_reg_1(command_validator_n_47),
        .resetn_out_reg_2(command_validator_n_53),
        .resp_no_crc_next(resp_no_crc_next),
        .resp_start(send_resp),
        .\resp_type_out_reg[1] (resp_next[1]),
        .\resp_type_out_reg[5] (responder_n_9),
        .\resp_type_out_reg[5]_0 (responder_n_8),
        .s_axi_araddr(s_axi_araddr),
        .\save_erase_vars[0].erase_vars_reg[0][31] (responder_n_6),
        .sd_dat3_pullup_off(sd_dat3_pullup_off),
        .sd_dat3_pullup_off_reg(set_dat3_pullup_n_1),
        .send_no_resp0(send_no_resp0),
        .\set_reg_clear_always[22].reg_clear_always_reg[22][5] (card_status_next2_out[5]),
        .update_1(update_1),
        .update_2(update_2),
        .valid_c1_out(valid_c1_out));
  block_design_sd_card_0_dat_controller dat_controller
       (.D(block_type_next),
        .E(block_size_exp0),
        .Q(dat_block_type),
        .SR(p_0_in),
        .\assign_reg_mux[2].reg_needed.mux_reg[13] (\assign_reg_mux[2].reg_needed.mux_reg[18] [13:12]),
        .\assign_reg_mux[2].reg_needed.mux_reg[13]_0 (\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [12]),
        .\assign_reg_mux[2].reg_needed.mux_reg[13]_1 (\assign_reg_mux[2].reg_needed.mux_reg[14] [12:11]),
        .\block_size_exp_reg[2]_0 (dat_block_size_exp),
        .busy_in(dat_busy_out),
        .busy_out_reg_0(card_status_keeper_n_61),
        .clk(clk),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .\cmd_index_reg[1] (dat_controller_n_7),
        .\cmd_index_reg[2] (dat_controller_n_6),
        .\cmd_index_reg[3] (dat_controller_n_8),
        .dat_read_mode(dat_read_mode),
        .dat_resetn(dat_resetn),
        .dev_resetn_reg_0(card_status_keeper_n_47),
        .fifo_in_resetn(fifo_in_resetn),
        .fifo_out_resetn(fifo_out_resetn),
        .fifo_out_tready_in(fifo_out_tready_in),
        .fifo_out_tready_masked(fifo_out_tready_masked),
        .fifo_out_tvalid_in(fifo_out_tvalid_in),
        .fifo_out_tvalid_masked(fifo_out_tvalid_masked),
        .got_start_read_reg_0(\assign_reg_mux[2].reg_needed.mux_reg[15] [0]),
        .new_cmd_saved(new_cmd_saved),
        .reading_reg_0(card_status_keeper_n_63),
        .ready_for_data_reg_0(\reg_saved_in[9]_6 [8]),
        .ready_for_data_reg_1(card_status_keeper_n_62),
        .\reg_clear_always[21]_13 (\reg_clear_always[21]_13 [2:1]),
        .\reg_saved_in[9]_6 (\reg_saved_in[9]_6 [10]),
        .\reg_saved_reg[11][13] (\reg_saved_reg[11][18] [13:12]),
        .resetn_0(resetn_0),
        .s_axi_araddr(s_axi_araddr),
        .writing_reg_0(card_status_keeper_n_48));
  FDRE got_new_cmd_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(update_2),
        .Q(new_cmd),
        .R(p_0_in));
  block_design_sd_card_0_inactive_keeper inactive_keeper
       (.CO(p_1_in),
        .SR(SR),
        .\assign_reg_mux[2].reg_needed.mux_reg[8] (\assign_reg_mux[2].reg_needed.mux_reg[18] [8:7]),
        .\assign_reg_mux[2].reg_needed.mux_reg[8]_0 (\assign_reg_mux[2].reg_needed.mux_reg[18]_0 [8:7]),
        .\assign_reg_mux[2].reg_needed.mux_reg[8]_1 (\assign_reg_mux[2].reg_needed.mux_reg[14] [7]),
        .clk(clk),
        .cmd_arg(cmd_arg[23:8]),
        .\cmd_arg_reg[19] (inactive_keeper_n_6),
        .\cmd_arg_reg[23] (inactive_keeper_n_5),
        .cmd_crc_err(cmd_read_crc_err),
        .cmd_crc_err_reg(inactive_keeper_n_3),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .\cmd_index_reg[2] (inactive_keeper_n_8),
        .\cmd_index_reg[4] (inactive_keeper_n_7),
        .dat_block_done(dat_block_done),
        .got_acmd41_non_query_reg_0(inactive_keeper_n_1),
        .got_acmd41_non_query_reg_1(command_validator_n_49),
        .\got_cmd0_reg[0]_0 (\got_cmd0_reg[0] ),
        .got_new_cmd(cmd_received),
        .got_new_cmd12(got_new_cmd12),
        .interrupt_INST_0_i_2_0({interrupt_INST_0_i_2[8],interrupt_INST_0_i_2[6:4]}),
        .interrupt_INST_0_i_2_1({\assign_reg_mux[2].reg_needed.mux_reg[15] [7],\assign_reg_mux[2].reg_needed.mux_reg[15] [5:4]}),
        .is_inactive(is_inactive),
        .is_inactive_reg_0(command_validator_n_48),
        .\latched_status_bits_reg[8] (\latched_status_bits_reg[15] [5]),
        .\ocr_high_byte_reg[31] (\ocr_high_byte_reg[31]_0 ),
        .\reg_saved_reg[11][8] (\reg_saved_reg[11][18] [8:7]),
        .resetn(resetn),
        .resetn_0(resetn_0),
        .resetn_out_reg_0(p_0_in),
        .resetn_out_reg_1(inactive_keeper_n_10),
        .resetn_out_reg_10(inactive_keeper_n_19),
        .resetn_out_reg_11(inactive_keeper_n_20),
        .resetn_out_reg_12(inactive_keeper_n_21),
        .resetn_out_reg_13(inactive_keeper_n_22),
        .resetn_out_reg_14(inactive_keeper_n_23),
        .resetn_out_reg_15(inactive_keeper_n_24),
        .resetn_out_reg_16(inactive_keeper_n_25),
        .resetn_out_reg_17(inactive_keeper_n_26),
        .resetn_out_reg_18(inactive_keeper_n_27),
        .resetn_out_reg_19(inactive_keeper_n_28),
        .resetn_out_reg_2(inactive_keeper_n_11),
        .resetn_out_reg_20(inactive_keeper_n_29),
        .resetn_out_reg_21(inactive_keeper_n_30),
        .resetn_out_reg_22(inactive_keeper_n_31),
        .resetn_out_reg_23(inactive_keeper_n_32),
        .resetn_out_reg_24(inactive_keeper_n_33),
        .resetn_out_reg_25(inactive_keeper_n_34),
        .resetn_out_reg_26(inactive_keeper_n_35),
        .resetn_out_reg_27(inactive_keeper_n_36),
        .resetn_out_reg_28(inactive_keeper_n_37),
        .resetn_out_reg_29(inactive_keeper_n_38),
        .resetn_out_reg_3(inactive_keeper_n_12),
        .resetn_out_reg_30(inactive_keeper_n_39),
        .resetn_out_reg_31(inactive_keeper_n_40),
        .resetn_out_reg_32(inactive_keeper_n_41),
        .resetn_out_reg_33(inactive_keeper_n_42),
        .resetn_out_reg_34(inactive_keeper_n_43),
        .resetn_out_reg_35(inactive_keeper_n_44),
        .resetn_out_reg_36(inactive_keeper_n_45),
        .resetn_out_reg_37(inactive_keeper_n_46),
        .resetn_out_reg_38(inactive_keeper_n_47),
        .resetn_out_reg_39(inactive_keeper_n_48),
        .resetn_out_reg_4(inactive_keeper_n_13),
        .resetn_out_reg_40(inactive_keeper_n_49),
        .resetn_out_reg_5(inactive_keeper_n_14),
        .resetn_out_reg_6(inactive_keeper_n_15),
        .resetn_out_reg_7(inactive_keeper_n_16),
        .resetn_out_reg_8(inactive_keeper_n_17),
        .resetn_out_reg_9(inactive_keeper_n_18),
        .s_axi_araddr(s_axi_araddr),
        .\set_reg[20].reg_written_reg[20][6] (inactive_keeper_n_50),
        .\size_reg[31] (\size_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    interrupt_INST_0_i_1
       (.I0(dat_done_new),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[15] [6]),
        .I2(interrupt_INST_0_i_2[7]),
        .I3(new_cmd),
        .I4(\assign_reg_mux[2].reg_needed.mux_reg[15] [2]),
        .I5(interrupt_INST_0_i_2[2]),
        .O(interrupt_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[14]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[15] [6]),
        .I1(dat_done_new),
        .O(\latched_status_bits_reg[15] [6]));
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[15]_i_2 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[15] [7]),
        .I1(dat_block_done),
        .O(\latched_status_bits_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[4]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[15] [2]),
        .I1(new_cmd),
        .O(\latched_status_bits_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \latched_status_bits[5]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[15] [3]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[15] [2]),
        .I2(new_cmd),
        .O(\latched_status_bits_reg[15] [3]));
  FDRE \ocr_high_byte_reg[24] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_17),
        .Q(\ocr_high_byte_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[25] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_16),
        .Q(\ocr_high_byte_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[26] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_15),
        .Q(\ocr_high_byte_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[27] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_14),
        .Q(\ocr_high_byte_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[28] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_13),
        .Q(\ocr_high_byte_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[29] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_12),
        .Q(\ocr_high_byte_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[30] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_11),
        .Q(\ocr_high_byte_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \ocr_high_byte_reg[31] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_10),
        .Q(initialization_done),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE01)) 
    ram_reg_r2_0_31_0_5_i_1
       (.I0(resp_pos[2]),
        .I1(resp_pos[0]),
        .I2(resp_pos[1]),
        .I3(resp_pos[3]),
        .O(ram_addr[3]));
  LUT3 #(
    .INIT(8'hA9)) 
    ram_reg_r2_0_31_0_5_i_2
       (.I0(resp_pos[2]),
        .I1(resp_pos[0]),
        .I2(resp_pos[1]),
        .O(ram_addr[2]));
  LUT2 #(
    .INIT(4'h9)) 
    ram_reg_r2_0_31_0_5_i_3
       (.I0(resp_pos[1]),
        .I1(resp_pos[0]),
        .O(ram_addr[1]));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_r2_0_31_0_5_i_4
       (.I0(resp_pos[0]),
        .O(ram_addr[0]));
  block_design_sd_card_0_range_check range_check
       (.CO(p_1_in),
        .clk(clk),
        .cmd_arg(cmd_arg),
        .invalid_dat_width(invalid_dat_width),
        .out_of_range(out_of_range),
        .\out_of_range0_inferred__0/i__carry_0 (\size_reg_n_0_[1] ),
        .\out_of_range0_inferred__0/i__carry_1 (\size_reg_n_0_[0] ),
        .\out_of_range0_inferred__0/i__carry_2 (\size_reg_n_0_[3] ),
        .\out_of_range0_inferred__0/i__carry_3 (\size_reg_n_0_[2] ),
        .\out_of_range0_inferred__0/i__carry_4 (\size_reg_n_0_[5] ),
        .\out_of_range0_inferred__0/i__carry_5 (\size_reg_n_0_[4] ),
        .\out_of_range0_inferred__0/i__carry_6 (\size_reg_n_0_[7] ),
        .\out_of_range0_inferred__0/i__carry_7 (\size_reg_n_0_[6] ),
        .\out_of_range0_inferred__0/i__carry__0_0 (\size_reg_n_0_[9] ),
        .\out_of_range0_inferred__0/i__carry__0_1 (\size_reg_n_0_[8] ),
        .\out_of_range0_inferred__0/i__carry__0_2 (\size_reg_n_0_[11] ),
        .\out_of_range0_inferred__0/i__carry__0_3 (\size_reg_n_0_[10] ),
        .\out_of_range0_inferred__0/i__carry__0_4 (\size_reg_n_0_[13] ),
        .\out_of_range0_inferred__0/i__carry__0_5 (\size_reg_n_0_[12] ),
        .\out_of_range0_inferred__0/i__carry__0_6 (\size_reg_n_0_[15] ),
        .\out_of_range0_inferred__0/i__carry__0_7 (\size_reg_n_0_[14] ),
        .\out_of_range0_inferred__0/i__carry__1_0 (\size_reg_n_0_[17] ),
        .\out_of_range0_inferred__0/i__carry__1_1 (\size_reg_n_0_[16] ),
        .\out_of_range0_inferred__0/i__carry__1_2 (\size_reg_n_0_[19] ),
        .\out_of_range0_inferred__0/i__carry__1_3 (\size_reg_n_0_[18] ),
        .\out_of_range0_inferred__0/i__carry__1_4 (\size_reg_n_0_[21] ),
        .\out_of_range0_inferred__0/i__carry__1_5 (\size_reg_n_0_[20] ),
        .\out_of_range0_inferred__0/i__carry__1_6 (\size_reg_n_0_[23] ),
        .\out_of_range0_inferred__0/i__carry__1_7 (\size_reg_n_0_[22] ),
        .\out_of_range0_inferred__0/i__carry__2_0 (\size_reg_n_0_[25] ),
        .\out_of_range0_inferred__0/i__carry__2_1 (\size_reg_n_0_[24] ),
        .\out_of_range0_inferred__0/i__carry__2_2 (\size_reg_n_0_[27] ),
        .\out_of_range0_inferred__0/i__carry__2_3 (\size_reg_n_0_[26] ),
        .\out_of_range0_inferred__0/i__carry__2_4 (\size_reg_n_0_[29] ),
        .\out_of_range0_inferred__0/i__carry__2_5 (\size_reg_n_0_[28] ),
        .\out_of_range0_inferred__0/i__carry__2_6 (\size_reg_n_0_[31] ),
        .\out_of_range0_inferred__0/i__carry__2_7 (\size_reg_n_0_[30] ),
        .out_of_range_reg_0(range_check_n_2),
        .out_of_range_reg_1(command_validator_n_41));
  block_design_sd_card_0_rca_keeper rca_keeper
       (.E(command_validator_n_13),
        .\card_status_resp_reg[10] (rca_keeper_n_7),
        .\card_status_resp_reg[11] (rca_keeper_n_6),
        .\card_status_resp_reg[19] (rca_keeper_n_5),
        .\card_status_resp_reg[8] (rca_keeper_n_9),
        .\card_status_resp_reg[9] (rca_keeper_n_8),
        .clk(clk),
        .cmd_arg(cmd_arg[31:16]),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .\cmd_index_reg[3] (rca_keeper_n_1),
        .cmd_resp_pos(resp_pos[2:0]),
        .rca_match(rca_match),
        .\rca_reg[0]_0 (p_0_in),
        .\rca_reg[14]_0 (rca_keeper_n_4),
        .\rca_reg[15]_0 (rca_keeper_n_3),
        .\rca_reg[4]_0 (rca_keeper_n_2),
        .\resp_byte[7]_i_6 ({card_status_resp[23:22],card_status_resp[19],card_status_resp[11:8]}),
        .\resp_byte_reg[4] (card_status_keeper_n_50));
  block_design_sd_card_0_responder responder
       (.D(resp_next[1]),
        .E(command_validator_n_6),
        .Q({resp_cur,ram_addr[4]}),
        .\card_status_reg[23] ({card_status_next2_out[23:22],card_status_next2_out[19],card_status_next2_out[7],card_status_next2_out[4:0]}),
        .\card_status_reg[23]_0 ({\card_status_reg[31] [18:17],\card_status_reg[31] [14],\card_status_reg[31] [7],\card_status_reg[31] [4:0]}),
        .\card_status_reg[23]_1 ({\card_status_reg[31]_0 [18:17],\card_status_reg[31]_0 [14],\card_status_reg[31]_0 [7],\card_status_reg[31]_0 [4:0]}),
        .clk(clk),
        .cmd_arg(cmd_arg[7:0]),
        .cmd_crc_err_stb(cmd_crc_err_stb),
        .cmd_illegal_stb(cmd_illegal_stb),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .\cmd_index_reg[0] (responder_n_8),
        .\cmd_index_reg[4] (responder_n_6),
        .\cmd_index_reg[5] (responder_n_9),
        .cmd_resp_pos(resp_pos),
        .initialization_done(initialization_done),
        .\ocr_high_byte_reg[26] (responder_n_20),
        .\ocr_high_byte_reg[29] (responder_n_21),
        .ram_read_en_reg_0(E),
        .ram_read_en_reg_1(p_0_in),
        .\reg_saved_in[9]_6 ({\reg_saved_in[9]_6 [22:21],\reg_saved_in[9]_6 [18],\reg_saved_in[9]_6 [7],\reg_saved_in[9]_6 [4:0]}),
        .resetn_0(resetn_0),
        .\resp_byte[0]_i_3_0 (\ocr_high_byte_reg_n_0_[24] ),
        .\resp_byte[1]_i_3_0 (rca_keeper_n_8),
        .\resp_byte[1]_i_5_0 (\ocr_high_byte_reg_n_0_[25] ),
        .\resp_byte[2]_i_3 (\ocr_high_byte_reg_n_0_[26] ),
        .\resp_byte[3]_i_3_0 (rca_keeper_n_6),
        .\resp_byte[3]_i_6_0 (\ocr_high_byte_reg_n_0_[27] ),
        .\resp_byte[5]_i_3 (\ocr_high_byte_reg_n_0_[29] ),
        .\resp_byte[6]_i_3_0 (\ocr_high_byte_reg_n_0_[30] ),
        .\resp_byte[7]_i_3_0 ({card_status_resp[7:6],card_status_resp[3],card_status_resp[1:0]}),
        .\resp_byte[7]_i_3_1 (rca_keeper_n_3),
        .\resp_byte_reg[0]_0 (card_status_keeper_n_51),
        .\resp_byte_reg[0]_1 (rca_keeper_n_9),
        .\resp_byte_reg[1]_0 (card_status_keeper_n_52),
        .\resp_byte_reg[2]_0 (card_status_keeper_n_59),
        .\resp_byte_reg[2]_1 (card_status_keeper_n_53),
        .\resp_byte_reg[3]_0 (card_status_keeper_n_54),
        .\resp_byte_reg[4]_0 (rca_keeper_n_2),
        .\resp_byte_reg[4]_1 (card_status_keeper_n_49),
        .\resp_byte_reg[4]_2 (\ocr_high_byte_reg_n_0_[28] ),
        .\resp_byte_reg[5]_0 (card_status_keeper_n_60),
        .\resp_byte_reg[5]_1 (card_status_keeper_n_55),
        .\resp_byte_reg[6]_0 (card_status_keeper_n_56),
        .\resp_byte_reg[6]_1 (rca_keeper_n_4),
        .\resp_byte_reg[7]_0 (resp_byte),
        .\resp_byte_reg[7]_1 (card_status_keeper_n_57),
        .\resp_cur_reg[2]_0 ({resp_next[2],resp_next[0]}),
        .\resp_len_reg[4]_0 ({resp_len_bytes[4],resp_len_bytes[2:0]}),
        .\resp_len_reg[4]_1 ({resp_len_next[4],resp_len_next[2:0]}),
        .resp_no_crc(resp_no_crc),
        .resp_no_crc_next(resp_no_crc_next),
        .resp_start(send_resp),
        .\resp_type_out_reg[1]_0 (command_validator_n_53),
        .\resp_type_out_reg[5]_0 (command_validator_n_52),
        .send_resp_o_reg_0(command_validator_n_47),
        .sent_r1(sent_r1),
        .\state_reg[4] (responder_n_10));
  (* cmd_resp_len_max = "17" *) 
  (* dat_word_size = "8" *) 
  block_design_sd_card_0_sd_bus_interface sd_bus_interface
       (.busy_in(dat_busy_out),
        .cc_error_out(cc_error),
        .clk(clk),
        .cmd_arg(cmd_arg),
        .cmd_crc_err(cmd_read_crc_err),
        .cmd_index(\reg_saved_in[10]_5 [12:7]),
        .cmd_resp_byte(resp_byte),
        .cmd_resp_done(NLW_sd_bus_interface_cmd_resp_done_UNCONNECTED),
        .cmd_resp_len({resp_len_bytes[4],1'b0,resp_len_bytes[2:0]}),
        .cmd_resp_pos(resp_pos),
        .cmd_resp_timeout(NLW_sd_bus_interface_cmd_resp_timeout_UNCONNECTED),
        .dat_block_count_done(D),
        .dat_block_done(dat_block_done),
        .dat_block_limit(Q),
        .dat_block_size_exp(dat_block_size_exp),
        .dat_block_type(dat_block_type),
        .dat_done(dat_done),
        .dat_done_new(dat_done_new),
        .dat_error_code(dat_error_code),
        .dat_read_mode(dat_read_mode),
        .dat_resetn(dat_resetn),
        .dat_width_4(dat_width_4),
        .fifo_out_almostfull(fifo_out_almostfull),
        .got_new_cmd(cmd_received),
        .in_tdata(in_tdata),
        .in_tlast(in_tlast),
        .in_tready(in_tready),
        .in_tvalid(in_tvalid),
        .out_tdata(out_tdata),
        .out_tlast(out_tlast),
        .out_tready(out_tready),
        .out_tvalid(out_tvalid),
        .resetn(resetn_0),
        .resp_no_crc(resp_no_crc),
        .resp_none(send_no_resp),
        .resp_start(send_resp),
        .sd_clk_i(sd_clk),
        .sd_cmd_i(sd_cmd_i),
        .sd_cmd_o(sd_cmd_o),
        .sd_cmd_t(sd_cmd_t),
        .sd_dat_i(sd_dat_i),
        .sd_dat_o(sd_dat_o),
        .sd_dat_t(sd_dat_t));
  FDRE send_no_resp_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_no_resp0),
        .Q(send_no_resp),
        .R(p_0_in));
  block_design_sd_card_0_set_dat3_pullup set_dat3_pullup
       (.clk(clk),
        .cmd_index({\reg_saved_in[10]_5 [12],\reg_saved_in[10]_5 [10],\reg_saved_in[10]_5 [8:7]}),
        .\cmd_index_reg[1] (set_dat3_pullup_n_1),
        .sd_dat3_pullup_off(sd_dat3_pullup_off),
        .sd_dat3_pullup_off_reg_0(p_0_in),
        .sd_dat3_pullup_off_reg_1(command_validator_n_51));
  FDRE \size_reg[0] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_49),
        .Q(\size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \size_reg[10] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_39),
        .Q(\size_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \size_reg[11] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_38),
        .Q(\size_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \size_reg[12] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_37),
        .Q(\size_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \size_reg[13] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_36),
        .Q(\size_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \size_reg[14] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_35),
        .Q(\size_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \size_reg[15] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_34),
        .Q(\size_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \size_reg[16] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_33),
        .Q(\size_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \size_reg[17] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_32),
        .Q(\size_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \size_reg[18] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_31),
        .Q(\size_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \size_reg[19] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_30),
        .Q(\size_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \size_reg[1] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_48),
        .Q(\size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \size_reg[20] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_29),
        .Q(\size_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \size_reg[21] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_28),
        .Q(\size_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \size_reg[22] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_27),
        .Q(\size_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \size_reg[23] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_26),
        .Q(\size_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \size_reg[24] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_25),
        .Q(\size_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \size_reg[25] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_24),
        .Q(\size_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \size_reg[26] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_23),
        .Q(\size_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \size_reg[27] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_22),
        .Q(\size_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \size_reg[28] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_21),
        .Q(\size_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \size_reg[29] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_20),
        .Q(\size_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \size_reg[2] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_47),
        .Q(\size_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \size_reg[30] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_19),
        .Q(\size_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \size_reg[31] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_18),
        .Q(\size_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \size_reg[3] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_46),
        .Q(\size_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \size_reg[4] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_45),
        .Q(\size_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \size_reg[5] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_44),
        .Q(\size_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \size_reg[6] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_43),
        .Q(\size_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \size_reg[7] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_42),
        .Q(\size_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \size_reg[8] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_41),
        .Q(\size_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \size_reg[9] 
       (.C(clk),
        .CE(inactive_keeper_n_3),
        .D(inactive_keeper_n_40),
        .Q(\size_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "inactive_keeper" *) 
module block_design_sd_card_0_inactive_keeper
   (resetn_0,
    got_acmd41_non_query_reg_0,
    is_inactive,
    cmd_crc_err_reg,
    \got_cmd0_reg[0]_0 ,
    \cmd_arg_reg[23] ,
    \cmd_arg_reg[19] ,
    \cmd_index_reg[4] ,
    \cmd_index_reg[2] ,
    resetn_out_reg_0,
    resetn_out_reg_1,
    resetn_out_reg_2,
    resetn_out_reg_3,
    resetn_out_reg_4,
    resetn_out_reg_5,
    resetn_out_reg_6,
    resetn_out_reg_7,
    resetn_out_reg_8,
    resetn_out_reg_9,
    resetn_out_reg_10,
    resetn_out_reg_11,
    resetn_out_reg_12,
    resetn_out_reg_13,
    resetn_out_reg_14,
    resetn_out_reg_15,
    resetn_out_reg_16,
    resetn_out_reg_17,
    resetn_out_reg_18,
    resetn_out_reg_19,
    resetn_out_reg_20,
    resetn_out_reg_21,
    resetn_out_reg_22,
    resetn_out_reg_23,
    resetn_out_reg_24,
    resetn_out_reg_25,
    resetn_out_reg_26,
    resetn_out_reg_27,
    resetn_out_reg_28,
    resetn_out_reg_29,
    resetn_out_reg_30,
    resetn_out_reg_31,
    resetn_out_reg_32,
    resetn_out_reg_33,
    resetn_out_reg_34,
    resetn_out_reg_35,
    resetn_out_reg_36,
    resetn_out_reg_37,
    resetn_out_reg_38,
    resetn_out_reg_39,
    resetn_out_reg_40,
    \set_reg[20].reg_written_reg[20][6] ,
    \reg_saved_reg[11][8] ,
    \latched_status_bits_reg[8] ,
    SR,
    clk,
    got_acmd41_non_query_reg_1,
    is_inactive_reg_0,
    cmd_crc_err,
    got_new_cmd,
    resetn,
    cmd_index,
    cmd_arg,
    CO,
    \ocr_high_byte_reg[31] ,
    \size_reg[31] ,
    interrupt_INST_0_i_2_0,
    interrupt_INST_0_i_2_1,
    got_new_cmd12,
    dat_block_done,
    \assign_reg_mux[2].reg_needed.mux_reg[8] ,
    \assign_reg_mux[2].reg_needed.mux_reg[8]_0 ,
    s_axi_araddr,
    \assign_reg_mux[2].reg_needed.mux_reg[8]_1 );
  output resetn_0;
  output got_acmd41_non_query_reg_0;
  output is_inactive;
  output cmd_crc_err_reg;
  output [0:0]\got_cmd0_reg[0]_0 ;
  output \cmd_arg_reg[23] ;
  output \cmd_arg_reg[19] ;
  output \cmd_index_reg[4] ;
  output \cmd_index_reg[2] ;
  output [0:0]resetn_out_reg_0;
  output resetn_out_reg_1;
  output resetn_out_reg_2;
  output resetn_out_reg_3;
  output resetn_out_reg_4;
  output resetn_out_reg_5;
  output resetn_out_reg_6;
  output resetn_out_reg_7;
  output resetn_out_reg_8;
  output resetn_out_reg_9;
  output resetn_out_reg_10;
  output resetn_out_reg_11;
  output resetn_out_reg_12;
  output resetn_out_reg_13;
  output resetn_out_reg_14;
  output resetn_out_reg_15;
  output resetn_out_reg_16;
  output resetn_out_reg_17;
  output resetn_out_reg_18;
  output resetn_out_reg_19;
  output resetn_out_reg_20;
  output resetn_out_reg_21;
  output resetn_out_reg_22;
  output resetn_out_reg_23;
  output resetn_out_reg_24;
  output resetn_out_reg_25;
  output resetn_out_reg_26;
  output resetn_out_reg_27;
  output resetn_out_reg_28;
  output resetn_out_reg_29;
  output resetn_out_reg_30;
  output resetn_out_reg_31;
  output resetn_out_reg_32;
  output resetn_out_reg_33;
  output resetn_out_reg_34;
  output resetn_out_reg_35;
  output resetn_out_reg_36;
  output resetn_out_reg_37;
  output resetn_out_reg_38;
  output resetn_out_reg_39;
  output resetn_out_reg_40;
  output \set_reg[20].reg_written_reg[20][6] ;
  output [1:0]\reg_saved_reg[11][8] ;
  output [0:0]\latched_status_bits_reg[8] ;
  input [0:0]SR;
  input clk;
  input got_acmd41_non_query_reg_1;
  input is_inactive_reg_0;
  input cmd_crc_err;
  input got_new_cmd;
  input resetn;
  input [5:0]cmd_index;
  input [15:0]cmd_arg;
  input [0:0]CO;
  input [7:0]\ocr_high_byte_reg[31] ;
  input [31:0]\size_reg[31] ;
  input [3:0]interrupt_INST_0_i_2_0;
  input [2:0]interrupt_INST_0_i_2_1;
  input got_new_cmd12;
  input dat_block_done;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[8] ;
  input [1:0]\assign_reg_mux[2].reg_needed.mux_reg[8]_0 ;
  input [1:0]s_axi_araddr;
  input [0:0]\assign_reg_mux[2].reg_needed.mux_reg[8]_1 ;

  wire [0:0]CO;
  wire [0:0]SR;
  wire \assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0 ;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[8] ;
  wire [1:0]\assign_reg_mux[2].reg_needed.mux_reg[8]_0 ;
  wire [0:0]\assign_reg_mux[2].reg_needed.mux_reg[8]_1 ;
  wire \card_status[11]_i_17_n_0 ;
  wire \card_status[11]_i_18_n_0 ;
  wire clk;
  wire [15:0]cmd_arg;
  wire \cmd_arg_reg[19] ;
  wire \cmd_arg_reg[23] ;
  wire cmd_crc_err;
  wire cmd_crc_err_reg;
  wire [5:0]cmd_index;
  wire \cmd_index_reg[2] ;
  wire \cmd_index_reg[4] ;
  wire dat_block_done;
  wire got_acmd41_non_query_reg_0;
  wire got_acmd41_non_query_reg_1;
  wire got_cmd00;
  wire \got_cmd0[0]_i_2_n_0 ;
  wire [0:0]\got_cmd0_reg[0]_0 ;
  wire got_new_cmd;
  wire got_new_cmd12;
  wire got_reset_cmd;
  wire [3:0]interrupt_INST_0_i_2_0;
  wire [2:0]interrupt_INST_0_i_2_1;
  wire interrupt_INST_0_i_4_n_0;
  wire is_inactive;
  wire is_inactive_i_4_n_0;
  wire is_inactive_reg_0;
  wire [0:0]\latched_status_bits_reg[8] ;
  wire [7:0]\ocr_high_byte_reg[31] ;
  wire [1:0]\reg_saved_reg[11][8] ;
  wire resetn;
  wire resetn_0;
  wire resetn_out_i_1_n_0;
  wire [0:0]resetn_out_reg_0;
  wire resetn_out_reg_1;
  wire resetn_out_reg_10;
  wire resetn_out_reg_11;
  wire resetn_out_reg_12;
  wire resetn_out_reg_13;
  wire resetn_out_reg_14;
  wire resetn_out_reg_15;
  wire resetn_out_reg_16;
  wire resetn_out_reg_17;
  wire resetn_out_reg_18;
  wire resetn_out_reg_19;
  wire resetn_out_reg_2;
  wire resetn_out_reg_20;
  wire resetn_out_reg_21;
  wire resetn_out_reg_22;
  wire resetn_out_reg_23;
  wire resetn_out_reg_24;
  wire resetn_out_reg_25;
  wire resetn_out_reg_26;
  wire resetn_out_reg_27;
  wire resetn_out_reg_28;
  wire resetn_out_reg_29;
  wire resetn_out_reg_3;
  wire resetn_out_reg_30;
  wire resetn_out_reg_31;
  wire resetn_out_reg_32;
  wire resetn_out_reg_33;
  wire resetn_out_reg_34;
  wire resetn_out_reg_35;
  wire resetn_out_reg_36;
  wire resetn_out_reg_37;
  wire resetn_out_reg_38;
  wire resetn_out_reg_39;
  wire resetn_out_reg_4;
  wire resetn_out_reg_40;
  wire resetn_out_reg_5;
  wire resetn_out_reg_6;
  wire resetn_out_reg_7;
  wire resetn_out_reg_8;
  wire resetn_out_reg_9;
  wire [1:0]s_axi_araddr;
  wire \set_reg[20].reg_written_reg[20][6] ;
  wire [31:0]\size_reg[31] ;

  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \assign_reg_mux[2].reg_needed.mux[7]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[8] [0]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[8]_0 [0]),
        .I2(s_axi_araddr[0]),
        .I3(is_inactive),
        .I4(s_axi_araddr[1]),
        .O(\reg_saved_reg[11][8] [0]));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \assign_reg_mux[2].reg_needed.mux[8]_i_1 
       (.I0(\assign_reg_mux[2].reg_needed.mux_reg[8] [1]),
        .I1(\assign_reg_mux[2].reg_needed.mux_reg[8]_0 [1]),
        .I2(s_axi_araddr[0]),
        .I3(\assign_reg_mux[2].reg_needed.mux_reg[8]_1 ),
        .I4(s_axi_araddr[1]),
        .I5(\assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0 ),
        .O(\reg_saved_reg[11][8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \assign_reg_mux[2].reg_needed.mux[8]_i_2 
       (.I0(got_reset_cmd),
        .I1(interrupt_INST_0_i_2_1[1]),
        .O(\assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \card_status[11]_i_13 
       (.I0(is_inactive_i_4_n_0),
        .I1(cmd_arg[15]),
        .I2(cmd_arg[13]),
        .I3(cmd_arg[11]),
        .I4(\card_status[11]_i_17_n_0 ),
        .I5(\card_status[11]_i_18_n_0 ),
        .O(\cmd_arg_reg[23] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \card_status[11]_i_17 
       (.I0(cmd_arg[3]),
        .I1(cmd_arg[2]),
        .I2(cmd_arg[5]),
        .I3(cmd_arg[0]),
        .O(\card_status[11]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \card_status[11]_i_18 
       (.I0(cmd_arg[6]),
        .I1(cmd_arg[4]),
        .I2(cmd_arg[1]),
        .O(\card_status[11]_i_18_n_0 ));
  FDRE got_acmd41_non_query_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_acmd41_non_query_reg_1),
        .Q(got_acmd41_non_query_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \got_cmd0[0]_i_1 
       (.I0(cmd_index[2]),
        .I1(cmd_index[1]),
        .I2(cmd_index[0]),
        .I3(got_new_cmd),
        .I4(cmd_crc_err),
        .I5(\got_cmd0[0]_i_2_n_0 ),
        .O(got_cmd00));
  LUT3 #(
    .INIT(8'hFE)) 
    \got_cmd0[0]_i_2 
       (.I0(cmd_index[4]),
        .I1(cmd_index[3]),
        .I2(cmd_index[5]),
        .O(\got_cmd0[0]_i_2_n_0 ));
  FDRE \got_cmd0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(got_cmd00),
        .Q(got_reset_cmd),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8A8A8)) 
    interrupt_INST_0_i_2
       (.I0(interrupt_INST_0_i_2_0[0]),
        .I1(interrupt_INST_0_i_2_1[0]),
        .I2(got_new_cmd12),
        .I3(is_inactive),
        .I4(interrupt_INST_0_i_2_0[1]),
        .I5(interrupt_INST_0_i_4_n_0),
        .O(\set_reg[20].reg_written_reg[20][6] ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    interrupt_INST_0_i_4
       (.I0(got_reset_cmd),
        .I1(interrupt_INST_0_i_2_1[1]),
        .I2(interrupt_INST_0_i_2_0[2]),
        .I3(dat_block_done),
        .I4(interrupt_INST_0_i_2_1[2]),
        .I5(interrupt_INST_0_i_2_0[3]),
        .O(interrupt_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_inactive_i_2
       (.I0(cmd_arg[11]),
        .I1(cmd_arg[13]),
        .I2(cmd_arg[15]),
        .I3(is_inactive_i_4_n_0),
        .O(\cmd_arg_reg[19] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    is_inactive_i_3
       (.I0(cmd_index[4]),
        .I1(cmd_index[3]),
        .I2(cmd_index[5]),
        .I3(cmd_index[2]),
        .I4(cmd_index[0]),
        .I5(cmd_index[1]),
        .O(\cmd_index_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_inactive_i_4
       (.I0(cmd_arg[12]),
        .I1(cmd_arg[9]),
        .I2(cmd_arg[10]),
        .I3(cmd_arg[14]),
        .I4(cmd_arg[8]),
        .I5(cmd_arg[7]),
        .O(is_inactive_i_4_n_0));
  FDRE is_inactive_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_inactive_reg_0),
        .Q(is_inactive),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \latched_status_bits[8]_i_1 
       (.I0(interrupt_INST_0_i_2_1[1]),
        .I1(got_reset_cmd),
        .O(\latched_status_bits_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[24]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [0]),
        .O(resetn_out_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[25]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [1]),
        .O(resetn_out_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[26]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [2]),
        .O(resetn_out_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[27]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [3]),
        .O(resetn_out_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[28]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [4]),
        .O(resetn_out_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[29]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [5]),
        .O(resetn_out_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[30]_i_1 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [6]),
        .O(resetn_out_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \ocr_high_byte[31]_i_1 
       (.I0(cmd_crc_err),
        .I1(got_new_cmd),
        .I2(resetn_0),
        .O(cmd_crc_err_reg));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ocr_high_byte[31]_i_2 
       (.I0(resetn_0),
        .I1(\ocr_high_byte_reg[31] [7]),
        .O(resetn_out_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    out_of_range_i_2
       (.I0(cmd_index[2]),
        .I1(cmd_index[5]),
        .I2(resetn_0),
        .I3(CO),
        .O(\cmd_index_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    reading_i_1
       (.I0(resetn_0),
        .O(resetn_out_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    resetn_out_i_1
       (.I0(is_inactive),
        .I1(got_reset_cmd),
        .O(resetn_out_i_1_n_0));
  FDRE resetn_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(resetn_out_i_1_n_0),
        .Q(resetn_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \set_reg[18].reg_written[18][31]_i_1 
       (.I0(got_reset_cmd),
        .I1(resetn),
        .O(\got_cmd0_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \size[0]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [0]),
        .O(resetn_out_reg_40));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[10]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [10]),
        .O(resetn_out_reg_30));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[11]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [11]),
        .O(resetn_out_reg_29));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[12]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [12]),
        .O(resetn_out_reg_28));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[13]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [13]),
        .O(resetn_out_reg_27));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[14]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [14]),
        .O(resetn_out_reg_26));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[15]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [15]),
        .O(resetn_out_reg_25));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[16]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [16]),
        .O(resetn_out_reg_24));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[17]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [17]),
        .O(resetn_out_reg_23));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[18]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [18]),
        .O(resetn_out_reg_22));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[19]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [19]),
        .O(resetn_out_reg_21));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[1]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [1]),
        .O(resetn_out_reg_39));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[20]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [20]),
        .O(resetn_out_reg_20));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[21]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [21]),
        .O(resetn_out_reg_19));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[22]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [22]),
        .O(resetn_out_reg_18));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[23]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [23]),
        .O(resetn_out_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[24]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [24]),
        .O(resetn_out_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[25]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [25]),
        .O(resetn_out_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[26]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [26]),
        .O(resetn_out_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[27]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [27]),
        .O(resetn_out_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[28]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [28]),
        .O(resetn_out_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[29]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [29]),
        .O(resetn_out_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[2]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [2]),
        .O(resetn_out_reg_38));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[30]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [30]),
        .O(resetn_out_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[31]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [31]),
        .O(resetn_out_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[3]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [3]),
        .O(resetn_out_reg_37));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[4]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [4]),
        .O(resetn_out_reg_36));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[5]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [5]),
        .O(resetn_out_reg_35));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[6]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [6]),
        .O(resetn_out_reg_34));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[7]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [7]),
        .O(resetn_out_reg_33));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[8]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [8]),
        .O(resetn_out_reg_32));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \size[9]_i_1 
       (.I0(resetn_0),
        .I1(\size_reg[31] [9]),
        .O(resetn_out_reg_31));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_card_0_line_crc
   (\state_reg[0] ,
    D,
    sd_cmd_o_sys0,
    \state_reg[4] ,
    \state_reg[5] ,
    \crc_reg[5]_0 ,
    \counter_reg[2] ,
    \state_reg[2] ,
    \state_reg[4]_0 ,
    resp_no_crc_reg,
    \counter_reg[7] ,
    \counter_reg[4] ,
    E,
    cmd_crc_err_next,
    \state_reg[1] ,
    \state_reg[3] ,
    \counter_reg[6] ,
    SR,
    \state_reg[5]_0 ,
    Q,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    sd_cmd_o_sys_reg,
    sd_cmd_o_sys_reg_0,
    \state_reg[1]_0 ,
    \crc_reg[0]_0 ,
    cmd_resp_byte,
    new_sd_clk,
    resp_no_crc,
    cmd_resp_len,
    \counter_reg[7]_0 ,
    \cmd_arg_reg[0] ,
    \cmd_arg_reg[0]_0 ,
    resp_none,
    write_stb_received_r,
    resp_start,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    \counter_reg[7]_3 ,
    resetn,
    clk);
  output \state_reg[0] ;
  output [2:0]D;
  output sd_cmd_o_sys0;
  output \state_reg[4] ;
  output \state_reg[5] ;
  output [5:0]\crc_reg[5]_0 ;
  output \counter_reg[2] ;
  output \state_reg[2] ;
  output \state_reg[4]_0 ;
  output resp_no_crc_reg;
  output [2:0]\counter_reg[7] ;
  output \counter_reg[4] ;
  output [0:0]E;
  output cmd_crc_err_next;
  output \state_reg[1] ;
  output \state_reg[3] ;
  output \counter_reg[6] ;
  output [0:0]SR;
  output \state_reg[5]_0 ;
  input [5:0]Q;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input sd_cmd_o_sys_reg;
  input [0:0]sd_cmd_o_sys_reg_0;
  input [0:0]\state_reg[1]_0 ;
  input [6:0]\crc_reg[0]_0 ;
  input [6:0]cmd_resp_byte;
  input new_sd_clk;
  input resp_no_crc;
  input [3:0]cmd_resp_len;
  input [7:0]\counter_reg[7]_0 ;
  input \cmd_arg_reg[0] ;
  input [0:0]\cmd_arg_reg[0]_0 ;
  input resp_none;
  input write_stb_received_r;
  input resp_start;
  input \counter_reg[7]_1 ;
  input \counter_reg[7]_2 ;
  input \counter_reg[7]_3 ;
  input resetn;
  input clk;

  wire [2:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \cmd_arg_reg[0] ;
  wire [0:0]\cmd_arg_reg[0]_0 ;
  wire cmd_crc_err_i_2_n_0;
  wire cmd_crc_err_next;
  wire [6:0]cmd_resp_byte;
  wire [3:0]cmd_resp_len;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire \counter_reg[2] ;
  wire \counter_reg[4] ;
  wire \counter_reg[6] ;
  wire [2:0]\counter_reg[7] ;
  wire [7:0]\counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[7]_2 ;
  wire \counter_reg[7]_3 ;
  wire \crc[3]_i_3_n_0 ;
  wire \crc[6]_i_1_n_0 ;
  wire \crc[6]_i_4_n_0 ;
  wire [3:3]crc_next;
  wire [0:0]crc_next1;
  wire [6:0]\crc_reg[0]_0 ;
  wire [5:0]\crc_reg[5]_0 ;
  wire [6:0]crc_result;
  wire new_sd_clk;
  wire resetn;
  wire resp_no_crc;
  wire resp_no_crc_reg;
  wire resp_none;
  wire resp_start;
  wire sd_cmd_o_sys0;
  wire sd_cmd_o_sys_reg;
  wire [0:0]sd_cmd_o_sys_reg_0;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[5]_i_10_n_0 ;
  wire \state[5]_i_11_n_0 ;
  wire \state[5]_i_6_n_0 ;
  wire \state[5]_i_7_n_0 ;
  wire \state[5]_i_8_n_0 ;
  wire \state[5]_i_9_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire \state_reg[4] ;
  wire \state_reg[4]_0 ;
  wire \state_reg[5] ;
  wire \state_reg[5]_0 ;
  wire write_stb_received_r;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[1]_i_1 
       (.I0(crc_result[0]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [0]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[0]),
        .O(\crc_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[2]_i_1 
       (.I0(crc_result[1]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [1]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[1]),
        .O(\crc_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[3]_i_1 
       (.I0(crc_result[2]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [2]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[2]),
        .O(\crc_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[4]_i_1 
       (.I0(crc_result[3]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [3]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[3]),
        .O(\crc_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[5]_i_1 
       (.I0(crc_result[4]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [4]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[4]),
        .O(\crc_reg[5]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buf_write[6]_i_1 
       (.I0(crc_result[5]),
        .I1(\state_reg[5] ),
        .I2(\crc_reg[0]_0 [5]),
        .I3(\counter_reg[2] ),
        .I4(cmd_resp_byte[5]),
        .O(\crc_reg[5]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7F7F7F00)) 
    \buf_write[6]_i_2 
       (.I0(\counter_reg[7]_0 [2]),
        .I1(\counter_reg[7]_0 [0]),
        .I2(\counter_reg[7]_0 [1]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\counter_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cmd_crc_err_i_1
       (.I0(crc_result[2]),
        .I1(crc_result[3]),
        .I2(crc_result[6]),
        .I3(crc_result[4]),
        .I4(cmd_crc_err_i_2_n_0),
        .O(cmd_crc_err_next));
  LUT4 #(
    .INIT(16'hFFEF)) 
    cmd_crc_err_i_2
       (.I0(crc_result[5]),
        .I1(crc_result[0]),
        .I2(\state_reg[1]_0 ),
        .I3(crc_result[1]),
        .O(cmd_crc_err_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[7]_0 [3]),
        .I1(\counter_reg[7]_0 [1]),
        .I2(\counter_reg[7]_0 [0]),
        .I3(\counter_reg[7]_0 [2]),
        .O(\counter_reg[7] [0]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(\counter_reg[7]_0 [5]),
        .I1(\counter_reg[7]_0 [3]),
        .I2(\counter_reg[7]_0 [4]),
        .I3(\counter_reg[7]_0 [2]),
        .I4(\counter_reg[7]_0 [0]),
        .I5(\counter_reg[7]_0 [1]),
        .O(\counter_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \counter[7]_i_1 
       (.I0(\counter[7]_i_3_n_0 ),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(\counter_reg[7]_1 ),
        .I3(\counter_reg[7]_2 ),
        .I4(\counter_reg[7]_3 ),
        .I5(resetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \counter[7]_i_2 
       (.I0(\counter_reg[7]_0 [7]),
        .I1(\counter_reg[7]_0 [2]),
        .I2(\counter_reg[7]_0 [0]),
        .I3(\counter_reg[7]_0 [1]),
        .I4(\counter_reg[4] ),
        .I5(\counter_reg[7]_0 [6]),
        .O(\counter_reg[7] [2]));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    \counter[7]_i_3 
       (.I0(Q[0]),
        .I1(\state_reg[0]_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state_reg[0]_1 ),
        .I4(\state[0]_i_2_n_0 ),
        .I5(\state_reg[0] ),
        .O(\counter[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \counter[7]_i_4 
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(D[2]),
        .I3(Q[2]),
        .O(\counter[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[7]_i_8 
       (.I0(\counter_reg[7]_0 [4]),
        .I1(\counter_reg[7]_0 [3]),
        .I2(\counter_reg[7]_0 [5]),
        .O(\counter_reg[4] ));
  LUT5 #(
    .INIT(32'h0F12F012)) 
    \crc[0]_i_1 
       (.I0(\crc[3]_i_3_n_0 ),
        .I1(\state_reg[5] ),
        .I2(crc_result[6]),
        .I3(\state_reg[4] ),
        .I4(\state_reg[1]_0 ),
        .O(crc_next1));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[3]_i_1 
       (.I0(crc_result[2]),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[4] ),
        .I3(crc_result[6]),
        .I4(\state_reg[5] ),
        .I5(\crc[3]_i_3_n_0 ),
        .O(crc_next));
  LUT5 #(
    .INIT(32'h00750000)) 
    \crc[3]_i_2 
       (.I0(\state_reg[5]_0 ),
        .I1(\state_reg[2] ),
        .I2(Q[5]),
        .I3(\state_reg[0] ),
        .I4(Q[4]),
        .O(\state_reg[5] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \crc[3]_i_3 
       (.I0(\crc_reg[0]_0 [6]),
        .I1(\counter_reg[2] ),
        .I2(cmd_resp_byte[6]),
        .O(\crc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \crc[6]_i_1 
       (.I0(D[1]),
        .I1(\state_reg[4] ),
        .I2(resetn),
        .O(\crc[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \crc[6]_i_2 
       (.I0(Q[4]),
        .I1(\state_reg[2] ),
        .I2(\state_reg[4]_0 ),
        .I3(\state_reg[0] ),
        .O(\state_reg[4] ));
  LUT6 #(
    .INIT(64'hF131F1F1FFFFFFFF)) 
    \crc[6]_i_3 
       (.I0(\counter_reg[6] ),
        .I1(Q[4]),
        .I2(\crc[6]_i_4_n_0 ),
        .I3(Q[3]),
        .I4(\state[5]_i_8_n_0 ),
        .I5(\state[0]_i_4_n_0 ),
        .O(\state_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h000000EAFFFFFFFF)) 
    \crc[6]_i_4 
       (.I0(resp_none),
        .I1(\counter_reg[7]_0 [5]),
        .I2(new_sd_clk),
        .I3(write_stb_received_r),
        .I4(resp_start),
        .I5(Q[3]),
        .O(\crc[6]_i_4_n_0 ));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_next1),
        .Q(crc_result[0]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_result[0]),
        .Q(crc_result[1]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_result[1]),
        .Q(crc_result[2]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_next),
        .Q(crc_result[3]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_result[3]),
        .Q(crc_result[4]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_result[4]),
        .Q(crc_result[5]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_result[5]),
        .Q(crc_result[6]),
        .R(\crc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    got_new_cmd_i_2
       (.I0(\cmd_arg_reg[0] ),
        .I1(Q[1]),
        .I2(\cmd_arg_reg[0]_0 ),
        .I3(cmd_crc_err_next),
        .O(E));
  LUT6 #(
    .INIT(64'hE2FFE2FFFFFFAAFF)) 
    sd_cmd_o_sys_i_1
       (.I0(\crc[3]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(crc_result[6]),
        .I3(sd_cmd_o_sys_reg),
        .I4(\state_reg[4] ),
        .I5(sd_cmd_o_sys_reg_0),
        .O(sd_cmd_o_sys0));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \state[0]_i_1 
       (.I0(\state_reg[0] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state_reg[0]_1 ),
        .I3(\state[0]_i_4_n_0 ),
        .I4(\state_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF0FF0000F0FFEEEE)) 
    \state[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\state_reg[1]_0 ),
        .I3(new_sd_clk),
        .I4(Q[0]),
        .I5(\state[2]_i_3_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[0]_i_4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \state[1]_i_1 
       (.I0(\state_reg[1] ),
        .I1(Q[0]),
        .I2(new_sd_clk),
        .I3(\state_reg[1]_0 ),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \state[1]_i_2 
       (.I0(Q[1]),
        .I1(\counter_reg[7]_0 [3]),
        .I2(\counter_reg[7]_0 [2]),
        .I3(\counter_reg[7]_0 [1]),
        .I4(new_sd_clk),
        .I5(\counter_reg[7]_0 [5]),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hBB00BB000F0F0F00)) 
    \state[2]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(new_sd_clk),
        .I2(\state[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000F0EE0F0FFFFF)) 
    \state[2]_i_2 
       (.I0(resp_none),
        .I1(new_sd_clk),
        .I2(\cmd_arg_reg[0] ),
        .I3(Q[1]),
        .I4(\state[2]_i_3_n_0 ),
        .I5(Q[2]),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[2]_i_3 
       (.I0(Q[1]),
        .I1(\cmd_arg_reg[0]_0 ),
        .I2(cmd_crc_err_next),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040404444444)) 
    \state[3]_i_3 
       (.I0(\counter_reg[6] ),
        .I1(Q[3]),
        .I2(\state[3]_i_6_n_0 ),
        .I3(new_sd_clk),
        .I4(\counter_reg[7]_0 [5]),
        .I5(resp_none),
        .O(\state_reg[3] ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \state[3]_i_5 
       (.I0(\counter_reg[7]_0 [6]),
        .I1(\counter_reg[7]_0 [7]),
        .I2(\counter_reg[7]_0 [5]),
        .I3(\state[3]_i_7_n_0 ),
        .I4(new_sd_clk),
        .I5(\state[3]_i_6_n_0 ),
        .O(\counter_reg[6] ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_6 
       (.I0(write_stb_received_r),
        .I1(resp_start),
        .O(\state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_7 
       (.I0(\counter_reg[7]_0 [2]),
        .I1(\counter_reg[7]_0 [1]),
        .I2(\counter_reg[7]_0 [4]),
        .I3(\counter_reg[7]_0 [3]),
        .O(\state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4FF44F4F44844444)) 
    \state[5]_i_10 
       (.I0(\counter_reg[7]_0 [4]),
        .I1(cmd_resp_len[1]),
        .I2(\counter_reg[7]_0 [3]),
        .I3(\state[5]_i_11_n_0 ),
        .I4(\counter_reg[7]_0 [2]),
        .I5(cmd_resp_len[0]),
        .O(\state[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[5]_i_11 
       (.I0(\counter_reg[7]_0 [1]),
        .I1(\counter_reg[7]_0 [0]),
        .O(\state[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[5]_i_2 
       (.I0(new_sd_clk),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(resp_no_crc_reg),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFF444F00004444)) 
    \state[5]_i_3 
       (.I0(\state_reg[1] ),
        .I1(\state[5]_i_6_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\state[5]_i_7_n_0 ),
        .O(\state_reg[2] ));
  LUT6 #(
    .INIT(64'h75707575FFFFFFFF)) 
    \state[5]_i_4 
       (.I0(Q[5]),
        .I1(\state_reg[3] ),
        .I2(Q[3]),
        .I3(\state[5]_i_8_n_0 ),
        .I4(Q[4]),
        .I5(\state[0]_i_4_n_0 ),
        .O(\state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFDF0FDFFFDFFFDFF)) 
    \state[5]_i_5 
       (.I0(resp_no_crc),
        .I1(\state[5]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\counter_reg[7] [0]),
        .O(resp_no_crc_reg));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[5]_i_6 
       (.I0(new_sd_clk),
        .I1(resp_none),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\state[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \state[5]_i_7 
       (.I0(\state_reg[1]_0 ),
        .I1(new_sd_clk),
        .I2(Q[0]),
        .O(\state[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \state[5]_i_8 
       (.I0(\state[5]_i_9_n_0 ),
        .I1(new_sd_clk),
        .I2(resp_no_crc),
        .O(\state[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \state[5]_i_9 
       (.I0(\counter_reg[7] [2]),
        .I1(cmd_resp_len[3]),
        .I2(\state[5]_i_10_n_0 ),
        .I3(cmd_resp_len[2]),
        .I4(\counter_reg[7] [1]),
        .O(\state[5]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_card_0_line_crc__parameterized0
   (D,
    \sd_dat_d_reg[2][3] ,
    E,
    clk,
    Q,
    \crc_reg[0]_0 ,
    \sd_dat_o_sys_reg[0] ,
    \sd_dat_o_sys_reg[0]_0 ,
    dat_width_4,
    busy_in,
    dat_resetn);
  output [0:0]D;
  output \sd_dat_d_reg[2][3] ;
  input [0:0]E;
  input clk;
  input [3:0]Q;
  input [3:0]\crc_reg[0]_0 ;
  input \sd_dat_o_sys_reg[0] ;
  input [1:0]\sd_dat_o_sys_reg[0]_0 ;
  input dat_width_4;
  input busy_in;
  input dat_resetn;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire busy_in;
  wire clk;
  wire \crc[0]_i_2_n_0 ;
  wire \crc[15]_i_1__0_n_0 ;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [3:0]\crc_reg[0]_0 ;
  wire \crc_reg_n_0_[0] ;
  wire \crc_reg_n_0_[10] ;
  wire \crc_reg_n_0_[11] ;
  wire \crc_reg_n_0_[12] ;
  wire \crc_reg_n_0_[13] ;
  wire \crc_reg_n_0_[14] ;
  wire \crc_reg_n_0_[1] ;
  wire \crc_reg_n_0_[2] ;
  wire \crc_reg_n_0_[3] ;
  wire \crc_reg_n_0_[4] ;
  wire \crc_reg_n_0_[5] ;
  wire \crc_reg_n_0_[6] ;
  wire \crc_reg_n_0_[7] ;
  wire \crc_reg_n_0_[8] ;
  wire \crc_reg_n_0_[9] ;
  wire dat_resetn;
  wire dat_width_4;
  wire good_i_2_n_0;
  wire good_i_3_n_0;
  wire good_i_4_n_0;
  wire [0:0]p_1_in;
  wire p_2_in;
  wire p_9_out;
  wire \sd_dat_d_reg[2][3] ;
  wire \sd_dat_o_sys[0]_i_3_n_0 ;
  wire \sd_dat_o_sys_reg[0] ;
  wire [1:0]\sd_dat_o_sys_reg[0]_0 ;

  LUT5 #(
    .INIT(32'h001D00E2)) 
    \crc[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\crc_reg[0]_0 [3]),
        .I2(\crc[0]_i_2_n_0 ),
        .I3(\crc_reg[0]_0 [0]),
        .I4(p_1_in),
        .O(crc_next1));
  LUT3 #(
    .INIT(8'hB8)) 
    \crc[0]_i_2 
       (.I0(\sd_dat_o_sys_reg[0]_0 [0]),
        .I1(dat_width_4),
        .I2(\sd_dat_o_sys_reg[0]_0 [1]),
        .O(\crc[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc[12]_i_1 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(crc_next1),
        .O(crc_next[12]));
  LUT5 #(
    .INIT(32'hCCFBFFFF)) 
    \crc[15]_i_1__0 
       (.I0(\crc_reg[0]_0 [0]),
        .I1(\crc_reg[0]_0 [1]),
        .I2(\crc_reg[0]_0 [3]),
        .I3(\crc_reg[0]_0 [2]),
        .I4(dat_resetn),
        .O(\crc[15]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[5]_i_1 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(crc_next1),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(E),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(E),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_1_in),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(E),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(\crc[15]_i_1__0_n_0 ));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(\crc[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    good_i_1
       (.I0(crc_next1),
        .I1(\crc_reg_n_0_[11] ),
        .I2(good_i_2_n_0),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    good_i_2
       (.I0(good_i_3_n_0),
        .I1(good_i_4_n_0),
        .I2(\crc_reg_n_0_[1] ),
        .I3(\crc_reg_n_0_[6] ),
        .I4(\crc_reg_n_0_[10] ),
        .I5(\crc_reg_n_0_[3] ),
        .O(good_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    good_i_3
       (.I0(\crc_reg_n_0_[14] ),
        .I1(\crc_reg_n_0_[8] ),
        .I2(\crc_reg_n_0_[4] ),
        .I3(\crc_reg_n_0_[9] ),
        .I4(\crc_reg_n_0_[5] ),
        .I5(\crc_reg_n_0_[2] ),
        .O(good_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_4
       (.I0(\crc_reg_n_0_[12] ),
        .I1(\crc_reg_n_0_[7] ),
        .I2(\crc_reg_n_0_[13] ),
        .I3(\crc_reg_n_0_[0] ),
        .O(good_i_4_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(E),
        .D(p_2_in),
        .Q(p_9_out),
        .R(\crc[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    read_crc_err_i_4
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(p_9_out),
        .I4(Q[1]),
        .O(\sd_dat_d_reg[2][3] ));
  LUT6 #(
    .INIT(64'hCCCCCCCCDDFCDDCC)) 
    \sd_dat_o_sys[0]_i_1 
       (.I0(\sd_dat_o_sys_reg[0] ),
        .I1(\sd_dat_o_sys[0]_i_3_n_0 ),
        .I2(\crc[0]_i_2_n_0 ),
        .I3(\crc_reg[0]_0 [1]),
        .I4(\crc_reg[0]_0 [2]),
        .I5(\crc_reg[0]_0 [0]),
        .O(D));
  LUT6 #(
    .INIT(64'hFCCC30303333FDFD)) 
    \sd_dat_o_sys[0]_i_3 
       (.I0(busy_in),
        .I1(\crc_reg[0]_0 [1]),
        .I2(\crc_reg[0]_0 [0]),
        .I3(p_1_in),
        .I4(\crc_reg[0]_0 [2]),
        .I5(\crc_reg[0]_0 [3]),
        .O(\sd_dat_o_sys[0]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_card_0_line_crc__parameterized0_0
   (\crc_reg[15]_0 ,
    \FSM_sequential_state_reg[3] ,
    SR,
    E,
    clk,
    Q,
    dat_width_4,
    read_crc_err_reg,
    \crc_reg[0]_0 ,
    read_crc_err_reg_0,
    read_crc_err_reg_1,
    read_crc_err_reg_2,
    read_crc_err_reg_3,
    read_crc_err);
  output \crc_reg[15]_0 ;
  output \FSM_sequential_state_reg[3] ;
  input [0:0]SR;
  input [0:0]E;
  input clk;
  input [0:0]Q;
  input dat_width_4;
  input [3:0]read_crc_err_reg;
  input [0:0]\crc_reg[0]_0 ;
  input read_crc_err_reg_0;
  input read_crc_err_reg_1;
  input read_crc_err_reg_2;
  input read_crc_err_reg_3;
  input read_crc_err;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[3] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [0:0]\crc_reg[0]_0 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg_n_0_[0] ;
  wire \crc_reg_n_0_[10] ;
  wire \crc_reg_n_0_[11] ;
  wire \crc_reg_n_0_[12] ;
  wire \crc_reg_n_0_[13] ;
  wire \crc_reg_n_0_[14] ;
  wire \crc_reg_n_0_[1] ;
  wire \crc_reg_n_0_[2] ;
  wire \crc_reg_n_0_[3] ;
  wire \crc_reg_n_0_[4] ;
  wire \crc_reg_n_0_[5] ;
  wire \crc_reg_n_0_[6] ;
  wire \crc_reg_n_0_[7] ;
  wire \crc_reg_n_0_[8] ;
  wire \crc_reg_n_0_[9] ;
  wire dat_width_4;
  wire good;
  wire good_i_1__0_n_0;
  wire good_i_2__0_n_0;
  wire good_i_3__0_n_0;
  wire good_i_4__0_n_0;
  wire [1:1]p_1_in;
  wire read_crc_err;
  wire read_crc_err0;
  wire [3:0]read_crc_err_reg;
  wire read_crc_err_reg_0;
  wire read_crc_err_reg_1;
  wire read_crc_err_reg_2;
  wire read_crc_err_reg_3;

  LUT6 #(
    .INIT(64'h0000707F00008F80)) 
    \crc[0]_i_1__1 
       (.I0(Q),
        .I1(dat_width_4),
        .I2(read_crc_err_reg[3]),
        .I3(\crc_reg[0]_0 ),
        .I4(read_crc_err_reg[0]),
        .I5(p_1_in),
        .O(crc_next1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc[12]_i_1__0 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(crc_next1),
        .O(crc_next[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[5]_i_1__0 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(crc_next1),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(E),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(E),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_1_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(E),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    good_i_1__0
       (.I0(crc_next1),
        .I1(\crc_reg_n_0_[11] ),
        .I2(good_i_2__0_n_0),
        .I3(good_i_3__0_n_0),
        .I4(good_i_4__0_n_0),
        .O(good_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__0
       (.I0(\crc_reg_n_0_[1] ),
        .I1(\crc_reg_n_0_[6] ),
        .I2(\crc_reg_n_0_[10] ),
        .I3(\crc_reg_n_0_[3] ),
        .O(good_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_3__0
       (.I0(\crc_reg_n_0_[12] ),
        .I1(\crc_reg_n_0_[7] ),
        .I2(\crc_reg_n_0_[13] ),
        .I3(\crc_reg_n_0_[0] ),
        .O(good_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    good_i_4__0
       (.I0(\crc_reg_n_0_[14] ),
        .I1(\crc_reg_n_0_[8] ),
        .I2(\crc_reg_n_0_[4] ),
        .I3(\crc_reg_n_0_[9] ),
        .I4(\crc_reg_n_0_[5] ),
        .I5(\crc_reg_n_0_[2] ),
        .O(good_i_4__0_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(E),
        .D(good_i_1__0_n_0),
        .Q(good),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    read_crc_err_i_1
       (.I0(read_crc_err0),
        .I1(read_crc_err_reg[3]),
        .I2(read_crc_err_reg[2]),
        .I3(E),
        .I4(read_crc_err_reg_3),
        .I5(read_crc_err),
        .O(\FSM_sequential_state_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFF7F00)) 
    read_crc_err_i_2
       (.I0(good),
        .I1(read_crc_err_reg_0),
        .I2(read_crc_err_reg_1),
        .I3(dat_width_4),
        .I4(read_crc_err_reg_2),
        .O(read_crc_err0));
  LUT5 #(
    .INIT(32'h2F2C2C2C)) 
    \sd_dat_o_sys[1]_i_2 
       (.I0(p_1_in),
        .I1(read_crc_err_reg[1]),
        .I2(read_crc_err_reg[0]),
        .I3(dat_width_4),
        .I4(Q),
        .O(\crc_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_card_0_line_crc__parameterized0_1
   (good_reg_0,
    SR,
    \crc_reg[15]_0 ,
    E,
    clk,
    Q,
    dat_width_4,
    \crc_reg[0]_0 ,
    \crc_reg[0]_1 ,
    dat_resetn);
  output good_reg_0;
  output [0:0]SR;
  output \crc_reg[15]_0 ;
  input [0:0]E;
  input clk;
  input [3:0]Q;
  input dat_width_4;
  input [0:0]\crc_reg[0]_0 ;
  input [0:0]\crc_reg[0]_1 ;
  input dat_resetn;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [0:0]\crc_reg[0]_0 ;
  wire [0:0]\crc_reg[0]_1 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg_n_0_[0] ;
  wire \crc_reg_n_0_[10] ;
  wire \crc_reg_n_0_[11] ;
  wire \crc_reg_n_0_[12] ;
  wire \crc_reg_n_0_[13] ;
  wire \crc_reg_n_0_[14] ;
  wire \crc_reg_n_0_[1] ;
  wire \crc_reg_n_0_[2] ;
  wire \crc_reg_n_0_[3] ;
  wire \crc_reg_n_0_[4] ;
  wire \crc_reg_n_0_[5] ;
  wire \crc_reg_n_0_[6] ;
  wire \crc_reg_n_0_[7] ;
  wire \crc_reg_n_0_[8] ;
  wire \crc_reg_n_0_[9] ;
  wire dat_resetn;
  wire dat_width_4;
  wire good_i_1__1_n_0;
  wire good_i_2__1_n_0;
  wire good_i_3__1_n_0;
  wire good_i_4__1_n_0;
  wire good_reg_0;
  wire [2:2]p_1_in;

  LUT6 #(
    .INIT(64'h1500155540554000)) 
    \crc[0]_i_1__2 
       (.I0(Q[0]),
        .I1(dat_width_4),
        .I2(\crc_reg[0]_0 ),
        .I3(Q[3]),
        .I4(\crc_reg[0]_1 ),
        .I5(p_1_in),
        .O(crc_next1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc[12]_i_1__1 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(crc_next1),
        .O(crc_next[12]));
  LUT6 #(
    .INIT(64'hFF77FD77FFFFFFFF)) 
    \crc[15]_i_1 
       (.I0(dat_resetn),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(dat_width_4),
        .O(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[5]_i_1__1 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(crc_next1),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(E),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(E),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_1_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(E),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    good_i_1__1
       (.I0(crc_next1),
        .I1(\crc_reg_n_0_[11] ),
        .I2(good_i_2__1_n_0),
        .I3(good_i_3__1_n_0),
        .I4(good_i_4__1_n_0),
        .O(good_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__1
       (.I0(\crc_reg_n_0_[1] ),
        .I1(\crc_reg_n_0_[6] ),
        .I2(\crc_reg_n_0_[10] ),
        .I3(\crc_reg_n_0_[3] ),
        .O(good_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_3__1
       (.I0(\crc_reg_n_0_[12] ),
        .I1(\crc_reg_n_0_[7] ),
        .I2(\crc_reg_n_0_[13] ),
        .I3(\crc_reg_n_0_[0] ),
        .O(good_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    good_i_4__1
       (.I0(\crc_reg_n_0_[14] ),
        .I1(\crc_reg_n_0_[8] ),
        .I2(\crc_reg_n_0_[4] ),
        .I3(\crc_reg_n_0_[9] ),
        .I4(\crc_reg_n_0_[5] ),
        .I5(\crc_reg_n_0_[2] ),
        .O(good_i_4__1_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(E),
        .D(good_i_1__1_n_0),
        .Q(good_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h2F2C2C2C)) 
    \sd_dat_o_sys[2]_i_2 
       (.I0(p_1_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(dat_width_4),
        .I4(\crc_reg[0]_0 ),
        .O(\crc_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_card_0_line_crc__parameterized0_2
   (good_reg_0,
    E,
    \crc_reg[15]_0 ,
    SR,
    clk,
    good_reg_1,
    Q,
    dat_width_4,
    \crc_reg[0]_0 ,
    \crc_reg[0]_1 );
  output good_reg_0;
  output [0:0]E;
  output \crc_reg[15]_0 ;
  input [0:0]SR;
  input clk;
  input [1:0]good_reg_1;
  input [0:0]Q;
  input dat_width_4;
  input [2:0]\crc_reg[0]_0 ;
  input [0:0]\crc_reg[0]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [2:0]\crc_reg[0]_0 ;
  wire [0:0]\crc_reg[0]_1 ;
  wire \crc_reg[15]_0 ;
  wire \crc_reg_n_0_[0] ;
  wire \crc_reg_n_0_[10] ;
  wire \crc_reg_n_0_[11] ;
  wire \crc_reg_n_0_[12] ;
  wire \crc_reg_n_0_[13] ;
  wire \crc_reg_n_0_[14] ;
  wire \crc_reg_n_0_[1] ;
  wire \crc_reg_n_0_[2] ;
  wire \crc_reg_n_0_[3] ;
  wire \crc_reg_n_0_[4] ;
  wire \crc_reg_n_0_[5] ;
  wire \crc_reg_n_0_[6] ;
  wire \crc_reg_n_0_[7] ;
  wire \crc_reg_n_0_[8] ;
  wire \crc_reg_n_0_[9] ;
  wire dat_width_4;
  wire good_i_1__2_n_0;
  wire good_i_2__2_n_0;
  wire good_i_3__2_n_0;
  wire good_i_4__2_n_0;
  wire good_reg_0;
  wire [1:0]good_reg_1;
  wire [3:3]p_1_in;

  LUT6 #(
    .INIT(64'h0000707F00008F80)) 
    \crc[0]_i_1__3 
       (.I0(Q),
        .I1(dat_width_4),
        .I2(\crc_reg[0]_0 [2]),
        .I3(\crc_reg[0]_1 ),
        .I4(\crc_reg[0]_0 [0]),
        .I5(p_1_in),
        .O(crc_next1));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc[12]_i_1__2 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(crc_next1),
        .O(crc_next[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[5]_i_1__2 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(crc_next1),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(E),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(E),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_1_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(E),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    good_i_1__2
       (.I0(crc_next1),
        .I1(\crc_reg_n_0_[11] ),
        .I2(good_i_2__2_n_0),
        .I3(good_i_3__2_n_0),
        .I4(good_i_4__2_n_0),
        .O(good_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__2
       (.I0(\crc_reg_n_0_[1] ),
        .I1(\crc_reg_n_0_[6] ),
        .I2(\crc_reg_n_0_[10] ),
        .I3(\crc_reg_n_0_[3] ),
        .O(good_i_2__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_3__2
       (.I0(\crc_reg_n_0_[12] ),
        .I1(\crc_reg_n_0_[7] ),
        .I2(\crc_reg_n_0_[13] ),
        .I3(\crc_reg_n_0_[0] ),
        .O(good_i_3__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    good_i_4__2
       (.I0(\crc_reg_n_0_[14] ),
        .I1(\crc_reg_n_0_[8] ),
        .I2(\crc_reg_n_0_[4] ),
        .I3(\crc_reg_n_0_[9] ),
        .I4(\crc_reg_n_0_[5] ),
        .I5(\crc_reg_n_0_[2] ),
        .O(good_i_4__2_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(E),
        .D(good_i_1__2_n_0),
        .Q(good_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    in_tready_INST_0_i_2
       (.I0(good_reg_1[1]),
        .I1(good_reg_1[0]),
        .O(E));
  LUT5 #(
    .INIT(32'h2F2C2C2C)) 
    \sd_dat_o_sys[3]_i_2 
       (.I0(p_1_in),
        .I1(\crc_reg[0]_0 [1]),
        .I2(\crc_reg[0]_0 [0]),
        .I3(dat_width_4),
        .I4(Q),
        .O(\crc_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "range_check" *) 
module block_design_sd_card_0_range_check
   (CO,
    out_of_range,
    out_of_range_reg_0,
    out_of_range_reg_1,
    clk,
    invalid_dat_width,
    \out_of_range0_inferred__0/i__carry_0 ,
    cmd_arg,
    \out_of_range0_inferred__0/i__carry_1 ,
    \out_of_range0_inferred__0/i__carry_2 ,
    \out_of_range0_inferred__0/i__carry_3 ,
    \out_of_range0_inferred__0/i__carry_4 ,
    \out_of_range0_inferred__0/i__carry_5 ,
    \out_of_range0_inferred__0/i__carry_6 ,
    \out_of_range0_inferred__0/i__carry_7 ,
    \out_of_range0_inferred__0/i__carry__0_0 ,
    \out_of_range0_inferred__0/i__carry__0_1 ,
    \out_of_range0_inferred__0/i__carry__0_2 ,
    \out_of_range0_inferred__0/i__carry__0_3 ,
    \out_of_range0_inferred__0/i__carry__0_4 ,
    \out_of_range0_inferred__0/i__carry__0_5 ,
    \out_of_range0_inferred__0/i__carry__0_6 ,
    \out_of_range0_inferred__0/i__carry__0_7 ,
    \out_of_range0_inferred__0/i__carry__1_0 ,
    \out_of_range0_inferred__0/i__carry__1_1 ,
    \out_of_range0_inferred__0/i__carry__1_2 ,
    \out_of_range0_inferred__0/i__carry__1_3 ,
    \out_of_range0_inferred__0/i__carry__1_4 ,
    \out_of_range0_inferred__0/i__carry__1_5 ,
    \out_of_range0_inferred__0/i__carry__1_6 ,
    \out_of_range0_inferred__0/i__carry__1_7 ,
    \out_of_range0_inferred__0/i__carry__2_0 ,
    \out_of_range0_inferred__0/i__carry__2_1 ,
    \out_of_range0_inferred__0/i__carry__2_2 ,
    \out_of_range0_inferred__0/i__carry__2_3 ,
    \out_of_range0_inferred__0/i__carry__2_4 ,
    \out_of_range0_inferred__0/i__carry__2_5 ,
    \out_of_range0_inferred__0/i__carry__2_6 ,
    \out_of_range0_inferred__0/i__carry__2_7 );
  output [0:0]CO;
  output out_of_range;
  output out_of_range_reg_0;
  input out_of_range_reg_1;
  input clk;
  input invalid_dat_width;
  input \out_of_range0_inferred__0/i__carry_0 ;
  input [31:0]cmd_arg;
  input \out_of_range0_inferred__0/i__carry_1 ;
  input \out_of_range0_inferred__0/i__carry_2 ;
  input \out_of_range0_inferred__0/i__carry_3 ;
  input \out_of_range0_inferred__0/i__carry_4 ;
  input \out_of_range0_inferred__0/i__carry_5 ;
  input \out_of_range0_inferred__0/i__carry_6 ;
  input \out_of_range0_inferred__0/i__carry_7 ;
  input \out_of_range0_inferred__0/i__carry__0_0 ;
  input \out_of_range0_inferred__0/i__carry__0_1 ;
  input \out_of_range0_inferred__0/i__carry__0_2 ;
  input \out_of_range0_inferred__0/i__carry__0_3 ;
  input \out_of_range0_inferred__0/i__carry__0_4 ;
  input \out_of_range0_inferred__0/i__carry__0_5 ;
  input \out_of_range0_inferred__0/i__carry__0_6 ;
  input \out_of_range0_inferred__0/i__carry__0_7 ;
  input \out_of_range0_inferred__0/i__carry__1_0 ;
  input \out_of_range0_inferred__0/i__carry__1_1 ;
  input \out_of_range0_inferred__0/i__carry__1_2 ;
  input \out_of_range0_inferred__0/i__carry__1_3 ;
  input \out_of_range0_inferred__0/i__carry__1_4 ;
  input \out_of_range0_inferred__0/i__carry__1_5 ;
  input \out_of_range0_inferred__0/i__carry__1_6 ;
  input \out_of_range0_inferred__0/i__carry__1_7 ;
  input \out_of_range0_inferred__0/i__carry__2_0 ;
  input \out_of_range0_inferred__0/i__carry__2_1 ;
  input \out_of_range0_inferred__0/i__carry__2_2 ;
  input \out_of_range0_inferred__0/i__carry__2_3 ;
  input \out_of_range0_inferred__0/i__carry__2_4 ;
  input \out_of_range0_inferred__0/i__carry__2_5 ;
  input \out_of_range0_inferred__0/i__carry__2_6 ;
  input \out_of_range0_inferred__0/i__carry__2_7 ;

  wire [0:0]CO;
  wire clk;
  wire [31:0]cmd_arg;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire invalid_dat_width;
  wire out_of_range;
  wire \out_of_range0_inferred__0/i__carry_0 ;
  wire \out_of_range0_inferred__0/i__carry_1 ;
  wire \out_of_range0_inferred__0/i__carry_2 ;
  wire \out_of_range0_inferred__0/i__carry_3 ;
  wire \out_of_range0_inferred__0/i__carry_4 ;
  wire \out_of_range0_inferred__0/i__carry_5 ;
  wire \out_of_range0_inferred__0/i__carry_6 ;
  wire \out_of_range0_inferred__0/i__carry_7 ;
  wire \out_of_range0_inferred__0/i__carry__0_0 ;
  wire \out_of_range0_inferred__0/i__carry__0_1 ;
  wire \out_of_range0_inferred__0/i__carry__0_2 ;
  wire \out_of_range0_inferred__0/i__carry__0_3 ;
  wire \out_of_range0_inferred__0/i__carry__0_4 ;
  wire \out_of_range0_inferred__0/i__carry__0_5 ;
  wire \out_of_range0_inferred__0/i__carry__0_6 ;
  wire \out_of_range0_inferred__0/i__carry__0_7 ;
  wire \out_of_range0_inferred__0/i__carry__0_n_0 ;
  wire \out_of_range0_inferred__0/i__carry__0_n_1 ;
  wire \out_of_range0_inferred__0/i__carry__0_n_2 ;
  wire \out_of_range0_inferred__0/i__carry__0_n_3 ;
  wire \out_of_range0_inferred__0/i__carry__1_0 ;
  wire \out_of_range0_inferred__0/i__carry__1_1 ;
  wire \out_of_range0_inferred__0/i__carry__1_2 ;
  wire \out_of_range0_inferred__0/i__carry__1_3 ;
  wire \out_of_range0_inferred__0/i__carry__1_4 ;
  wire \out_of_range0_inferred__0/i__carry__1_5 ;
  wire \out_of_range0_inferred__0/i__carry__1_6 ;
  wire \out_of_range0_inferred__0/i__carry__1_7 ;
  wire \out_of_range0_inferred__0/i__carry__1_n_0 ;
  wire \out_of_range0_inferred__0/i__carry__1_n_1 ;
  wire \out_of_range0_inferred__0/i__carry__1_n_2 ;
  wire \out_of_range0_inferred__0/i__carry__1_n_3 ;
  wire \out_of_range0_inferred__0/i__carry__2_0 ;
  wire \out_of_range0_inferred__0/i__carry__2_1 ;
  wire \out_of_range0_inferred__0/i__carry__2_2 ;
  wire \out_of_range0_inferred__0/i__carry__2_3 ;
  wire \out_of_range0_inferred__0/i__carry__2_4 ;
  wire \out_of_range0_inferred__0/i__carry__2_5 ;
  wire \out_of_range0_inferred__0/i__carry__2_6 ;
  wire \out_of_range0_inferred__0/i__carry__2_7 ;
  wire \out_of_range0_inferred__0/i__carry__2_n_1 ;
  wire \out_of_range0_inferred__0/i__carry__2_n_2 ;
  wire \out_of_range0_inferred__0/i__carry__2_n_3 ;
  wire \out_of_range0_inferred__0/i__carry_n_0 ;
  wire \out_of_range0_inferred__0/i__carry_n_1 ;
  wire \out_of_range0_inferred__0/i__carry_n_2 ;
  wire \out_of_range0_inferred__0/i__carry_n_3 ;
  wire out_of_range_reg_0;
  wire out_of_range_reg_1;
  wire [3:0]\NLW_out_of_range0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_out_of_range0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_out_of_range0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_out_of_range0_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \card_status[31]_i_2 
       (.I0(out_of_range),
        .I1(invalid_dat_width),
        .O(out_of_range_reg_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(cmd_arg[15]),
        .I1(\out_of_range0_inferred__0/i__carry__0_6 ),
        .I2(cmd_arg[14]),
        .I3(\out_of_range0_inferred__0/i__carry__0_7 ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(cmd_arg[13]),
        .I1(\out_of_range0_inferred__0/i__carry__0_4 ),
        .I2(cmd_arg[12]),
        .I3(\out_of_range0_inferred__0/i__carry__0_5 ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(cmd_arg[11]),
        .I1(\out_of_range0_inferred__0/i__carry__0_2 ),
        .I2(cmd_arg[10]),
        .I3(\out_of_range0_inferred__0/i__carry__0_3 ),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(cmd_arg[9]),
        .I1(\out_of_range0_inferred__0/i__carry__0_0 ),
        .I2(cmd_arg[8]),
        .I3(\out_of_range0_inferred__0/i__carry__0_1 ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\out_of_range0_inferred__0/i__carry__0_6 ),
        .I1(cmd_arg[15]),
        .I2(\out_of_range0_inferred__0/i__carry__0_7 ),
        .I3(cmd_arg[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\out_of_range0_inferred__0/i__carry__0_4 ),
        .I1(cmd_arg[13]),
        .I2(\out_of_range0_inferred__0/i__carry__0_5 ),
        .I3(cmd_arg[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\out_of_range0_inferred__0/i__carry__0_2 ),
        .I1(cmd_arg[11]),
        .I2(\out_of_range0_inferred__0/i__carry__0_3 ),
        .I3(cmd_arg[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\out_of_range0_inferred__0/i__carry__0_0 ),
        .I1(cmd_arg[9]),
        .I2(\out_of_range0_inferred__0/i__carry__0_1 ),
        .I3(cmd_arg[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(cmd_arg[23]),
        .I1(\out_of_range0_inferred__0/i__carry__1_6 ),
        .I2(cmd_arg[22]),
        .I3(\out_of_range0_inferred__0/i__carry__1_7 ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(cmd_arg[21]),
        .I1(\out_of_range0_inferred__0/i__carry__1_4 ),
        .I2(cmd_arg[20]),
        .I3(\out_of_range0_inferred__0/i__carry__1_5 ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(cmd_arg[19]),
        .I1(\out_of_range0_inferred__0/i__carry__1_2 ),
        .I2(cmd_arg[18]),
        .I3(\out_of_range0_inferred__0/i__carry__1_3 ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(cmd_arg[17]),
        .I1(\out_of_range0_inferred__0/i__carry__1_0 ),
        .I2(cmd_arg[16]),
        .I3(\out_of_range0_inferred__0/i__carry__1_1 ),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\out_of_range0_inferred__0/i__carry__1_6 ),
        .I1(cmd_arg[23]),
        .I2(\out_of_range0_inferred__0/i__carry__1_7 ),
        .I3(cmd_arg[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\out_of_range0_inferred__0/i__carry__1_4 ),
        .I1(cmd_arg[21]),
        .I2(\out_of_range0_inferred__0/i__carry__1_5 ),
        .I3(cmd_arg[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\out_of_range0_inferred__0/i__carry__1_2 ),
        .I1(cmd_arg[19]),
        .I2(\out_of_range0_inferred__0/i__carry__1_3 ),
        .I3(cmd_arg[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\out_of_range0_inferred__0/i__carry__1_0 ),
        .I1(cmd_arg[17]),
        .I2(\out_of_range0_inferred__0/i__carry__1_1 ),
        .I3(cmd_arg[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_1
       (.I0(cmd_arg[31]),
        .I1(\out_of_range0_inferred__0/i__carry__2_6 ),
        .I2(cmd_arg[30]),
        .I3(\out_of_range0_inferred__0/i__carry__2_7 ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_2
       (.I0(cmd_arg[29]),
        .I1(\out_of_range0_inferred__0/i__carry__2_4 ),
        .I2(cmd_arg[28]),
        .I3(\out_of_range0_inferred__0/i__carry__2_5 ),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_3
       (.I0(cmd_arg[27]),
        .I1(\out_of_range0_inferred__0/i__carry__2_2 ),
        .I2(cmd_arg[26]),
        .I3(\out_of_range0_inferred__0/i__carry__2_3 ),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_4
       (.I0(cmd_arg[25]),
        .I1(\out_of_range0_inferred__0/i__carry__2_0 ),
        .I2(cmd_arg[24]),
        .I3(\out_of_range0_inferred__0/i__carry__2_1 ),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(\out_of_range0_inferred__0/i__carry__2_6 ),
        .I1(cmd_arg[31]),
        .I2(\out_of_range0_inferred__0/i__carry__2_7 ),
        .I3(cmd_arg[30]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(\out_of_range0_inferred__0/i__carry__2_4 ),
        .I1(cmd_arg[29]),
        .I2(\out_of_range0_inferred__0/i__carry__2_5 ),
        .I3(cmd_arg[28]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(\out_of_range0_inferred__0/i__carry__2_2 ),
        .I1(cmd_arg[27]),
        .I2(\out_of_range0_inferred__0/i__carry__2_3 ),
        .I3(cmd_arg[26]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(\out_of_range0_inferred__0/i__carry__2_0 ),
        .I1(cmd_arg[25]),
        .I2(\out_of_range0_inferred__0/i__carry__2_1 ),
        .I3(cmd_arg[24]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(cmd_arg[7]),
        .I1(\out_of_range0_inferred__0/i__carry_6 ),
        .I2(cmd_arg[6]),
        .I3(\out_of_range0_inferred__0/i__carry_7 ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(cmd_arg[5]),
        .I1(\out_of_range0_inferred__0/i__carry_4 ),
        .I2(cmd_arg[4]),
        .I3(\out_of_range0_inferred__0/i__carry_5 ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(cmd_arg[3]),
        .I1(\out_of_range0_inferred__0/i__carry_2 ),
        .I2(cmd_arg[2]),
        .I3(\out_of_range0_inferred__0/i__carry_3 ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(cmd_arg[1]),
        .I1(\out_of_range0_inferred__0/i__carry_0 ),
        .I2(cmd_arg[0]),
        .I3(\out_of_range0_inferred__0/i__carry_1 ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\out_of_range0_inferred__0/i__carry_6 ),
        .I1(cmd_arg[7]),
        .I2(\out_of_range0_inferred__0/i__carry_7 ),
        .I3(cmd_arg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\out_of_range0_inferred__0/i__carry_4 ),
        .I1(cmd_arg[5]),
        .I2(\out_of_range0_inferred__0/i__carry_5 ),
        .I3(cmd_arg[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\out_of_range0_inferred__0/i__carry_2 ),
        .I1(cmd_arg[3]),
        .I2(\out_of_range0_inferred__0/i__carry_3 ),
        .I3(cmd_arg[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\out_of_range0_inferred__0/i__carry_0 ),
        .I1(cmd_arg[1]),
        .I2(\out_of_range0_inferred__0/i__carry_1 ),
        .I3(cmd_arg[0]),
        .O(i__carry_i_8_n_0));
  CARRY4 \out_of_range0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\out_of_range0_inferred__0/i__carry_n_0 ,\out_of_range0_inferred__0/i__carry_n_1 ,\out_of_range0_inferred__0/i__carry_n_2 ,\out_of_range0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_out_of_range0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \out_of_range0_inferred__0/i__carry__0 
       (.CI(\out_of_range0_inferred__0/i__carry_n_0 ),
        .CO({\out_of_range0_inferred__0/i__carry__0_n_0 ,\out_of_range0_inferred__0/i__carry__0_n_1 ,\out_of_range0_inferred__0/i__carry__0_n_2 ,\out_of_range0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_out_of_range0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \out_of_range0_inferred__0/i__carry__1 
       (.CI(\out_of_range0_inferred__0/i__carry__0_n_0 ),
        .CO({\out_of_range0_inferred__0/i__carry__1_n_0 ,\out_of_range0_inferred__0/i__carry__1_n_1 ,\out_of_range0_inferred__0/i__carry__1_n_2 ,\out_of_range0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_out_of_range0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \out_of_range0_inferred__0/i__carry__2 
       (.CI(\out_of_range0_inferred__0/i__carry__1_n_0 ),
        .CO({CO,\out_of_range0_inferred__0/i__carry__2_n_1 ,\out_of_range0_inferred__0/i__carry__2_n_2 ,\out_of_range0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_out_of_range0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  FDRE out_of_range_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_of_range_reg_1),
        .Q(out_of_range),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rca_keeper" *) 
module block_design_sd_card_0_rca_keeper
   (rca_match,
    \cmd_index_reg[3] ,
    \rca_reg[4]_0 ,
    \rca_reg[15]_0 ,
    \rca_reg[14]_0 ,
    \card_status_resp_reg[19] ,
    \card_status_resp_reg[11] ,
    \card_status_resp_reg[10] ,
    \card_status_resp_reg[9] ,
    \card_status_resp_reg[8] ,
    \rca_reg[0]_0 ,
    clk,
    cmd_arg,
    cmd_index,
    cmd_resp_pos,
    \resp_byte_reg[4] ,
    \resp_byte[7]_i_6 ,
    E);
  output rca_match;
  output \cmd_index_reg[3] ;
  output \rca_reg[4]_0 ;
  output \rca_reg[15]_0 ;
  output \rca_reg[14]_0 ;
  output \card_status_resp_reg[19] ;
  output \card_status_resp_reg[11] ;
  output \card_status_resp_reg[10] ;
  output \card_status_resp_reg[9] ;
  output \card_status_resp_reg[8] ;
  input [0:0]\rca_reg[0]_0 ;
  input clk;
  input [15:0]cmd_arg;
  input [5:0]cmd_index;
  input [2:0]cmd_resp_pos;
  input \resp_byte_reg[4] ;
  input [6:0]\resp_byte[7]_i_6 ;
  input [0:0]E;

  wire [0:0]E;
  wire \card_status_resp_reg[10] ;
  wire \card_status_resp_reg[11] ;
  wire \card_status_resp_reg[19] ;
  wire \card_status_resp_reg[8] ;
  wire \card_status_resp_reg[9] ;
  wire clk;
  wire [15:0]cmd_arg;
  wire [5:0]cmd_index;
  wire \cmd_index_reg[3] ;
  wire [2:0]cmd_resp_pos;
  wire [16:1]p_0_in;
  wire p_1_in;
  wire [15:0]rca;
  wire \rca[0]_i_1_n_0 ;
  wire \rca[10]_i_1_n_0 ;
  wire \rca[11]_i_1_n_0 ;
  wire \rca[12]_i_1_n_0 ;
  wire \rca[13]_i_1_n_0 ;
  wire \rca[14]_i_1_n_0 ;
  wire \rca[15]_i_2_n_0 ;
  wire \rca[15]_i_6_n_0 ;
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
  wire rca_match;
  wire rca_match0_carry__0_i_1_n_0;
  wire rca_match0_carry__0_i_2_n_0;
  wire rca_match0_carry__0_n_3;
  wire rca_match0_carry_i_1_n_0;
  wire rca_match0_carry_i_2_n_0;
  wire rca_match0_carry_i_3_n_0;
  wire rca_match0_carry_i_4_n_0;
  wire rca_match0_carry_n_0;
  wire rca_match0_carry_n_1;
  wire rca_match0_carry_n_2;
  wire rca_match0_carry_n_3;
  wire [0:0]\rca_reg[0]_0 ;
  wire \rca_reg[12]_i_2_n_0 ;
  wire \rca_reg[12]_i_2_n_1 ;
  wire \rca_reg[12]_i_2_n_2 ;
  wire \rca_reg[12]_i_2_n_3 ;
  wire \rca_reg[14]_0 ;
  wire \rca_reg[15]_0 ;
  wire \rca_reg[15]_i_5_n_2 ;
  wire \rca_reg[15]_i_5_n_3 ;
  wire \rca_reg[4]_0 ;
  wire \rca_reg[4]_i_2_n_0 ;
  wire \rca_reg[4]_i_2_n_1 ;
  wire \rca_reg[4]_i_2_n_2 ;
  wire \rca_reg[4]_i_2_n_3 ;
  wire \rca_reg[8]_i_2_n_0 ;
  wire \rca_reg[8]_i_2_n_1 ;
  wire \rca_reg[8]_i_2_n_2 ;
  wire \rca_reg[8]_i_2_n_3 ;
  wire [6:0]\resp_byte[7]_i_6 ;
  wire \resp_byte_reg[4] ;
  wire [3:0]NLW_rca_match0_carry_O_UNCONNECTED;
  wire [3:2]NLW_rca_match0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rca_match0_carry__0_O_UNCONNECTED;
  wire [2:2]\NLW_rca_reg[15]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_rca_reg[15]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFF0FAFFFF30FA)) 
    \card_status[11]_i_2 
       (.I0(cmd_index[3]),
        .I1(cmd_index[1]),
        .I2(cmd_index[2]),
        .I3(cmd_index[0]),
        .I4(cmd_index[4]),
        .I5(rca_match),
        .O(\cmd_index_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \rca[0]_i_1 
       (.I0(rca[0]),
        .I1(p_0_in[16]),
        .I2(\rca[15]_i_6_n_0 ),
        .O(\rca[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[11]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[11]),
        .O(\rca[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[13]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[13]),
        .O(\rca[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \rca[15]_i_2 
       (.I0(p_0_in[16]),
        .I1(p_0_in[15]),
        .I2(\rca[15]_i_6_n_0 ),
        .O(\rca[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rca[15]_i_6 
       (.I0(rca[12]),
        .I1(rca[9]),
        .I2(rca[15]),
        .I3(rca[5]),
        .I4(\rca[15]_i_7_n_0 ),
        .I5(\rca[15]_i_8_n_0 ),
        .O(\rca[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rca[15]_i_7 
       (.I0(rca[10]),
        .I1(rca[2]),
        .I2(rca[4]),
        .I3(rca[13]),
        .O(\rca[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rca[15]_i_8 
       (.I0(rca[3]),
        .I1(rca[14]),
        .I2(rca[1]),
        .I3(rca[0]),
        .I4(\rca[15]_i_9_n_0 ),
        .O(\rca[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rca[15]_i_9 
       (.I0(rca[11]),
        .I1(rca[8]),
        .I2(rca[7]),
        .I3(rca[6]),
        .O(\rca[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[1]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[1]),
        .O(\rca[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[3]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[3]),
        .O(\rca[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[5]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[5]),
        .O(\rca[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[7]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[7]),
        .O(\rca[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rca[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(\rca[15]_i_6_n_0 ),
        .I2(p_0_in[16]),
        .O(\rca[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rca[9]_i_1 
       (.I0(\rca[15]_i_6_n_0 ),
        .I1(p_0_in[16]),
        .I2(p_0_in[9]),
        .O(\rca[9]_i_1_n_0 ));
  CARRY4 rca_match0_carry
       (.CI(1'b0),
        .CO({rca_match0_carry_n_0,rca_match0_carry_n_1,rca_match0_carry_n_2,rca_match0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rca_match0_carry_O_UNCONNECTED[3:0]),
        .S({rca_match0_carry_i_1_n_0,rca_match0_carry_i_2_n_0,rca_match0_carry_i_3_n_0,rca_match0_carry_i_4_n_0}));
  CARRY4 rca_match0_carry__0
       (.CI(rca_match0_carry_n_0),
        .CO({NLW_rca_match0_carry__0_CO_UNCONNECTED[3:2],p_1_in,rca_match0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rca_match0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rca_match0_carry__0_i_1_n_0,rca_match0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rca_match0_carry__0_i_1
       (.I0(rca[15]),
        .I1(cmd_arg[15]),
        .O(rca_match0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match0_carry__0_i_2
       (.I0(cmd_arg[14]),
        .I1(rca[14]),
        .I2(cmd_arg[12]),
        .I3(rca[12]),
        .I4(rca[13]),
        .I5(cmd_arg[13]),
        .O(rca_match0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match0_carry_i_1
       (.I0(cmd_arg[11]),
        .I1(rca[11]),
        .I2(cmd_arg[9]),
        .I3(rca[9]),
        .I4(rca[10]),
        .I5(cmd_arg[10]),
        .O(rca_match0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match0_carry_i_2
       (.I0(cmd_arg[8]),
        .I1(rca[8]),
        .I2(cmd_arg[6]),
        .I3(rca[6]),
        .I4(rca[7]),
        .I5(cmd_arg[7]),
        .O(rca_match0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match0_carry_i_3
       (.I0(cmd_arg[5]),
        .I1(rca[5]),
        .I2(cmd_arg[3]),
        .I3(rca[3]),
        .I4(rca[4]),
        .I5(cmd_arg[4]),
        .O(rca_match0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rca_match0_carry_i_4
       (.I0(cmd_arg[2]),
        .I1(rca[2]),
        .I2(cmd_arg[1]),
        .I3(rca[1]),
        .I4(rca[0]),
        .I5(cmd_arg[0]),
        .O(rca_match0_carry_i_4_n_0));
  FDRE rca_match_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(rca_match),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\rca[0]_i_1_n_0 ),
        .Q(rca[0]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\rca[10]_i_1_n_0 ),
        .Q(rca[10]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\rca[11]_i_1_n_0 ),
        .Q(rca[11]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\rca[12]_i_1_n_0 ),
        .Q(rca[12]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[12]_i_2 
       (.CI(\rca_reg[8]_i_2_n_0 ),
        .CO({\rca_reg[12]_i_2_n_0 ,\rca_reg[12]_i_2_n_1 ,\rca_reg[12]_i_2_n_2 ,\rca_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(rca[12:9]));
  FDRE \rca_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\rca[13]_i_1_n_0 ),
        .Q(rca[13]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\rca[14]_i_1_n_0 ),
        .Q(rca[14]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\rca[15]_i_2_n_0 ),
        .Q(rca[15]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[15]_i_5 
       (.CI(\rca_reg[12]_i_2_n_0 ),
        .CO({p_0_in[16],\NLW_rca_reg[15]_i_5_CO_UNCONNECTED [2],\rca_reg[15]_i_5_n_2 ,\rca_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rca_reg[15]_i_5_O_UNCONNECTED [3],p_0_in[15:13]}),
        .S({1'b1,rca[15:13]}));
  FDRE \rca_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\rca[1]_i_1_n_0 ),
        .Q(rca[1]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\rca[2]_i_1_n_0 ),
        .Q(rca[2]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\rca[3]_i_1_n_0 ),
        .Q(rca[3]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\rca[4]_i_1_n_0 ),
        .Q(rca[4]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\rca_reg[4]_i_2_n_0 ,\rca_reg[4]_i_2_n_1 ,\rca_reg[4]_i_2_n_2 ,\rca_reg[4]_i_2_n_3 }),
        .CYINIT(rca[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(rca[4:1]));
  FDRE \rca_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\rca[5]_i_1_n_0 ),
        .Q(rca[5]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\rca[6]_i_1_n_0 ),
        .Q(rca[6]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\rca[7]_i_1_n_0 ),
        .Q(rca[7]),
        .R(\rca_reg[0]_0 ));
  FDRE \rca_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\rca[8]_i_1_n_0 ),
        .Q(rca[8]),
        .R(\rca_reg[0]_0 ));
  CARRY4 \rca_reg[8]_i_2 
       (.CI(\rca_reg[4]_i_2_n_0 ),
        .CO({\rca_reg[8]_i_2_n_0 ,\rca_reg[8]_i_2_n_1 ,\rca_reg[8]_i_2_n_2 ,\rca_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(rca[8:5]));
  FDRE \rca_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\rca[9]_i_1_n_0 ),
        .Q(rca[9]),
        .R(\rca_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[0]_i_6 
       (.I0(\resp_byte[7]_i_6 [0]),
        .I1(rca[0]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[8]),
        .I4(cmd_resp_pos[0]),
        .I5(cmd_index[0]),
        .O(\card_status_resp_reg[8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[1]_i_7 
       (.I0(\resp_byte[7]_i_6 [1]),
        .I1(rca[1]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[9]),
        .I4(cmd_resp_pos[0]),
        .I5(cmd_index[1]),
        .O(\card_status_resp_reg[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[2]_i_5 
       (.I0(\resp_byte[7]_i_6 [2]),
        .I1(rca[2]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[10]),
        .I4(cmd_resp_pos[0]),
        .I5(cmd_index[2]),
        .O(\card_status_resp_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[3]_i_8 
       (.I0(\resp_byte[7]_i_6 [3]),
        .I1(rca[3]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[11]),
        .I4(cmd_resp_pos[0]),
        .I5(cmd_index[3]),
        .O(\card_status_resp_reg[11] ));
  LUT6 #(
    .INIT(64'h00000000FFFFC7F7)) 
    \resp_byte[4]_i_4 
       (.I0(rca[4]),
        .I1(cmd_resp_pos[1]),
        .I2(cmd_resp_pos[0]),
        .I3(rca[12]),
        .I4(cmd_resp_pos[2]),
        .I5(\resp_byte_reg[4] ),
        .O(\rca_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \resp_byte[5]_i_5 
       (.I0(\resp_byte[7]_i_6 [4]),
        .I1(rca[5]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[13]),
        .I4(cmd_resp_pos[0]),
        .I5(cmd_index[5]),
        .O(\card_status_resp_reg[19] ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \resp_byte[6]_i_6 
       (.I0(cmd_resp_pos[0]),
        .I1(rca[14]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[6]),
        .I4(\resp_byte[7]_i_6 [5]),
        .I5(cmd_resp_pos[2]),
        .O(\rca_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \resp_byte[7]_i_8 
       (.I0(cmd_resp_pos[0]),
        .I1(rca[15]),
        .I2(cmd_resp_pos[1]),
        .I3(rca[7]),
        .I4(\resp_byte[7]_i_6 [6]),
        .I5(cmd_resp_pos[2]),
        .O(\rca_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "responder" *) 
module block_design_sd_card_0_responder
   (resp_no_crc,
    ram_read_en_reg_0,
    resp_start,
    sent_r1,
    Q,
    \cmd_index_reg[4] ,
    D,
    \cmd_index_reg[0] ,
    \cmd_index_reg[5] ,
    \state_reg[4] ,
    \card_status_reg[23] ,
    \ocr_high_byte_reg[26] ,
    \ocr_high_byte_reg[29] ,
    \resp_byte_reg[7]_0 ,
    \resp_len_reg[4]_0 ,
    ram_read_en_reg_1,
    E,
    resp_no_crc_next,
    clk,
    send_resp_o_reg_0,
    \resp_type_out_reg[5]_0 ,
    \resp_type_out_reg[1]_0 ,
    cmd_resp_pos,
    \resp_byte[7]_i_3_0 ,
    \resp_byte[7]_i_3_1 ,
    cmd_index,
    \resp_byte_reg[7]_1 ,
    cmd_arg,
    \resp_byte_reg[6]_0 ,
    \resp_byte_reg[6]_1 ,
    \resp_byte_reg[4]_0 ,
    \resp_byte_reg[4]_1 ,
    \resp_byte_reg[1]_0 ,
    \resp_byte_reg[2]_0 ,
    \resp_byte_reg[2]_1 ,
    \resp_byte_reg[3]_0 ,
    \resp_byte_reg[5]_0 ,
    \resp_byte_reg[5]_1 ,
    \resp_byte_reg[0]_0 ,
    \card_status_reg[23]_0 ,
    \reg_saved_in[9]_6 ,
    \card_status_reg[23]_1 ,
    cmd_illegal_stb,
    cmd_crc_err_stb,
    \resp_byte[6]_i_3_0 ,
    initialization_done,
    \resp_byte_reg[0]_1 ,
    \resp_byte[0]_i_3_0 ,
    \resp_byte[1]_i_3_0 ,
    \resp_byte[1]_i_5_0 ,
    \resp_byte[2]_i_3 ,
    \resp_byte[3]_i_3_0 ,
    \resp_byte[3]_i_6_0 ,
    \resp_byte_reg[4]_2 ,
    \resp_byte[5]_i_3 ,
    \resp_cur_reg[2]_0 ,
    resetn_0,
    \resp_len_reg[4]_1 );
  output resp_no_crc;
  output [0:0]ram_read_en_reg_0;
  output resp_start;
  output sent_r1;
  output [1:0]Q;
  output \cmd_index_reg[4] ;
  output [0:0]D;
  output \cmd_index_reg[0] ;
  output \cmd_index_reg[5] ;
  output \state_reg[4] ;
  output [8:0]\card_status_reg[23] ;
  output \ocr_high_byte_reg[26] ;
  output \ocr_high_byte_reg[29] ;
  output [7:0]\resp_byte_reg[7]_0 ;
  output [3:0]\resp_len_reg[4]_0 ;
  input [0:0]ram_read_en_reg_1;
  input [0:0]E;
  input resp_no_crc_next;
  input clk;
  input send_resp_o_reg_0;
  input \resp_type_out_reg[5]_0 ;
  input \resp_type_out_reg[1]_0 ;
  input [4:0]cmd_resp_pos;
  input [4:0]\resp_byte[7]_i_3_0 ;
  input \resp_byte[7]_i_3_1 ;
  input [5:0]cmd_index;
  input \resp_byte_reg[7]_1 ;
  input [7:0]cmd_arg;
  input \resp_byte_reg[6]_0 ;
  input \resp_byte_reg[6]_1 ;
  input \resp_byte_reg[4]_0 ;
  input \resp_byte_reg[4]_1 ;
  input \resp_byte_reg[1]_0 ;
  input \resp_byte_reg[2]_0 ;
  input \resp_byte_reg[2]_1 ;
  input \resp_byte_reg[3]_0 ;
  input \resp_byte_reg[5]_0 ;
  input \resp_byte_reg[5]_1 ;
  input \resp_byte_reg[0]_0 ;
  input [8:0]\card_status_reg[23]_0 ;
  input [8:0]\reg_saved_in[9]_6 ;
  input [8:0]\card_status_reg[23]_1 ;
  input cmd_illegal_stb;
  input cmd_crc_err_stb;
  input \resp_byte[6]_i_3_0 ;
  input initialization_done;
  input \resp_byte_reg[0]_1 ;
  input \resp_byte[0]_i_3_0 ;
  input \resp_byte[1]_i_3_0 ;
  input \resp_byte[1]_i_5_0 ;
  input \resp_byte[2]_i_3 ;
  input \resp_byte[3]_i_3_0 ;
  input \resp_byte[3]_i_6_0 ;
  input \resp_byte_reg[4]_2 ;
  input \resp_byte[5]_i_3 ;
  input [1:0]\resp_cur_reg[2]_0 ;
  input resetn_0;
  input [3:0]\resp_len_reg[4]_1 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [8:0]\card_status_reg[23] ;
  wire [8:0]\card_status_reg[23]_0 ;
  wire [8:0]\card_status_reg[23]_1 ;
  wire clk;
  wire [7:0]cmd_arg;
  wire cmd_crc_err_stb;
  wire cmd_illegal_stb;
  wire [5:0]cmd_index;
  wire \cmd_index_reg[0] ;
  wire \cmd_index_reg[4] ;
  wire \cmd_index_reg[5] ;
  wire [4:0]cmd_resp_pos;
  wire initialization_done;
  wire \ocr_high_byte_reg[26] ;
  wire \ocr_high_byte_reg[29] ;
  wire ram_read_en0;
  wire [0:0]ram_read_en_reg_0;
  wire [0:0]ram_read_en_reg_1;
  wire [8:0]\reg_saved_in[9]_6 ;
  wire resetn_0;
  wire \resp_byte[0]_i_1_n_0 ;
  wire \resp_byte[0]_i_2_n_0 ;
  wire \resp_byte[0]_i_3_0 ;
  wire \resp_byte[0]_i_3_n_0 ;
  wire \resp_byte[0]_i_5_n_0 ;
  wire \resp_byte[1]_i_3_0 ;
  wire \resp_byte[1]_i_3_n_0 ;
  wire \resp_byte[1]_i_5_0 ;
  wire \resp_byte[1]_i_5_n_0 ;
  wire \resp_byte[1]_i_6_n_0 ;
  wire \resp_byte[2]_i_1_n_0 ;
  wire \resp_byte[2]_i_2_n_0 ;
  wire \resp_byte[2]_i_3 ;
  wire \resp_byte[3]_i_3_0 ;
  wire \resp_byte[3]_i_3_n_0 ;
  wire \resp_byte[3]_i_5_n_0 ;
  wire \resp_byte[3]_i_6_0 ;
  wire \resp_byte[3]_i_6_n_0 ;
  wire \resp_byte[3]_i_7_n_0 ;
  wire \resp_byte[4]_i_1_n_0 ;
  wire \resp_byte[4]_i_2_n_0 ;
  wire \resp_byte[4]_i_3_n_0 ;
  wire \resp_byte[5]_i_1_n_0 ;
  wire \resp_byte[5]_i_2_n_0 ;
  wire \resp_byte[5]_i_3 ;
  wire \resp_byte[6]_i_3_0 ;
  wire \resp_byte[6]_i_3_n_0 ;
  wire \resp_byte[6]_i_5_n_0 ;
  wire \resp_byte[6]_i_7_n_0 ;
  wire [4:0]\resp_byte[7]_i_3_0 ;
  wire \resp_byte[7]_i_3_1 ;
  wire \resp_byte[7]_i_3_n_0 ;
  wire \resp_byte[7]_i_6_n_0 ;
  wire \resp_byte[7]_i_7_n_0 ;
  wire \resp_byte_reg[0]_0 ;
  wire \resp_byte_reg[0]_1 ;
  wire \resp_byte_reg[1]_0 ;
  wire \resp_byte_reg[1]_i_1_n_0 ;
  wire \resp_byte_reg[2]_0 ;
  wire \resp_byte_reg[2]_1 ;
  wire \resp_byte_reg[3]_0 ;
  wire \resp_byte_reg[3]_i_1_n_0 ;
  wire \resp_byte_reg[4]_0 ;
  wire \resp_byte_reg[4]_1 ;
  wire \resp_byte_reg[4]_2 ;
  wire \resp_byte_reg[5]_0 ;
  wire \resp_byte_reg[5]_1 ;
  wire \resp_byte_reg[6]_0 ;
  wire \resp_byte_reg[6]_1 ;
  wire \resp_byte_reg[6]_i_1_n_0 ;
  wire [7:0]\resp_byte_reg[7]_0 ;
  wire \resp_byte_reg[7]_1 ;
  wire \resp_byte_reg[7]_i_1_n_0 ;
  wire [2:2]resp_cur;
  wire [1:0]\resp_cur_reg[2]_0 ;
  wire [3:0]\resp_len_reg[4]_0 ;
  wire [3:0]\resp_len_reg[4]_1 ;
  wire resp_no_crc;
  wire resp_no_crc_next;
  wire resp_start;
  wire \resp_type_out_reg[1]_0 ;
  wire \resp_type_out_reg[5]_0 ;
  wire send_resp_o_reg_0;
  wire sent_r1;
  wire sent_r6;
  wire \state_reg[4] ;

  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[0]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [0]),
        .I3(\reg_saved_in[9]_6 [0]),
        .I4(\card_status_reg[23]_1 [0]),
        .O(\card_status_reg[23] [0]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[19]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [6]),
        .I3(\reg_saved_in[9]_6 [6]),
        .I4(\card_status_reg[23]_1 [6]),
        .O(\card_status_reg[23] [6]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[1]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [1]),
        .I3(\reg_saved_in[9]_6 [1]),
        .I4(\card_status_reg[23]_1 [1]),
        .O(\card_status_reg[23] [1]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \card_status[22]_i_1 
       (.I0(\reg_saved_in[9]_6 [7]),
        .I1(\card_status_reg[23]_0 [7]),
        .I2(cmd_illegal_stb),
        .I3(sent_r6),
        .I4(sent_r1),
        .I5(\card_status_reg[23]_1 [7]),
        .O(\card_status_reg[23] [7]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \card_status[23]_i_1 
       (.I0(\reg_saved_in[9]_6 [8]),
        .I1(\card_status_reg[23]_0 [8]),
        .I2(cmd_crc_err_stb),
        .I3(sent_r6),
        .I4(sent_r1),
        .I5(\card_status_reg[23]_1 [8]),
        .O(\card_status_reg[23] [8]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[2]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [2]),
        .I3(\reg_saved_in[9]_6 [2]),
        .I4(\card_status_reg[23]_1 [2]),
        .O(\card_status_reg[23] [2]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[3]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [3]),
        .I3(\reg_saved_in[9]_6 [3]),
        .I4(\card_status_reg[23]_1 [3]),
        .O(\card_status_reg[23] [3]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[4]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [4]),
        .I3(\reg_saved_in[9]_6 [4]),
        .I4(\card_status_reg[23]_1 [4]),
        .O(\card_status_reg[23] [4]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \card_status[7]_i_1 
       (.I0(sent_r1),
        .I1(sent_r6),
        .I2(\card_status_reg[23]_0 [5]),
        .I3(\reg_saved_in[9]_6 [5]),
        .I4(\card_status_reg[23]_1 [5]),
        .O(\card_status_reg[23] [5]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_read_en_i_1
       (.I0(Q[1]),
        .I1(resp_cur),
        .O(ram_read_en0));
  FDRE ram_read_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_read_en0),
        .Q(ram_read_en_reg_0),
        .R(ram_read_en_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rca[15]_i_4 
       (.I0(cmd_index[5]),
        .I1(cmd_index[4]),
        .O(\cmd_index_reg[5] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[0]_i_1 
       (.I0(\resp_byte[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\resp_byte[0]_i_3_n_0 ),
        .I3(resp_cur),
        .I4(\resp_byte_reg[0]_0 ),
        .O(\resp_byte[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A5404)) 
    \resp_byte[0]_i_2 
       (.I0(cmd_resp_pos[0]),
        .I1(cmd_index[0]),
        .I2(cmd_resp_pos[2]),
        .I3(cmd_arg[0]),
        .I4(cmd_resp_pos[1]),
        .O(\resp_byte[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA80AA)) 
    \resp_byte[0]_i_3 
       (.I0(\resp_byte[0]_i_5_n_0 ),
        .I1(\resp_byte[7]_i_3_0 [0]),
        .I2(cmd_resp_pos[2]),
        .I3(Q[0]),
        .I4(\resp_byte_reg[0]_1 ),
        .O(\resp_byte[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEBBBB)) 
    \resp_byte[0]_i_5 
       (.I0(Q[0]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte[0]_i_3_0 ),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[0]),
        .O(\resp_byte[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \resp_byte[1]_i_3 
       (.I0(cmd_index[1]),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_arg[1]),
        .I3(\resp_byte[3]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(\resp_byte[1]_i_5_n_0 ),
        .O(\resp_byte[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA80AA)) 
    \resp_byte[1]_i_5 
       (.I0(\resp_byte[1]_i_6_n_0 ),
        .I1(\resp_byte[7]_i_3_0 [1]),
        .I2(cmd_resp_pos[2]),
        .I3(Q[0]),
        .I4(\resp_byte[1]_i_3_0 ),
        .O(\resp_byte[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEBBBB)) 
    \resp_byte[1]_i_6 
       (.I0(Q[0]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte[1]_i_5_0 ),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[0]),
        .O(\resp_byte[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[2]_i_1 
       (.I0(\resp_byte[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\resp_byte_reg[2]_0 ),
        .I3(resp_cur),
        .I4(\resp_byte_reg[2]_1 ),
        .O(\resp_byte[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \resp_byte[2]_i_2 
       (.I0(cmd_index[2]),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_arg[2]),
        .I3(cmd_resp_pos[0]),
        .I4(cmd_resp_pos[1]),
        .O(\resp_byte[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h4743)) 
    \resp_byte[2]_i_6 
       (.I0(cmd_resp_pos[1]),
        .I1(cmd_resp_pos[0]),
        .I2(cmd_resp_pos[2]),
        .I3(\resp_byte[2]_i_3 ),
        .O(\ocr_high_byte_reg[26] ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \resp_byte[3]_i_3 
       (.I0(cmd_index[3]),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_arg[3]),
        .I3(\resp_byte[3]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(\resp_byte[3]_i_6_n_0 ),
        .O(\resp_byte[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \resp_byte[3]_i_5 
       (.I0(cmd_resp_pos[1]),
        .I1(cmd_resp_pos[0]),
        .O(\resp_byte[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA80AA)) 
    \resp_byte[3]_i_6 
       (.I0(\resp_byte[3]_i_7_n_0 ),
        .I1(\resp_byte[7]_i_3_0 [2]),
        .I2(cmd_resp_pos[2]),
        .I3(Q[0]),
        .I4(\resp_byte[3]_i_3_0 ),
        .O(\resp_byte[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEBBBB)) 
    \resp_byte[3]_i_7 
       (.I0(Q[0]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte[3]_i_6_0 ),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[0]),
        .O(\resp_byte[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \resp_byte[4]_i_1 
       (.I0(\resp_byte[4]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\resp_byte[4]_i_3_n_0 ),
        .I3(\resp_byte_reg[4]_0 ),
        .I4(resp_cur),
        .I5(\resp_byte_reg[4]_1 ),
        .O(\resp_byte[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \resp_byte[4]_i_2 
       (.I0(cmd_index[4]),
        .I1(cmd_resp_pos[0]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[2]),
        .I4(cmd_arg[4]),
        .O(\resp_byte[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAFEBBBB)) 
    \resp_byte[4]_i_3 
       (.I0(Q[0]),
        .I1(cmd_resp_pos[2]),
        .I2(\resp_byte_reg[4]_2 ),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[0]),
        .O(\resp_byte[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \resp_byte[5]_i_1 
       (.I0(\resp_byte[5]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\resp_byte_reg[5]_0 ),
        .I3(resp_cur),
        .I4(\resp_byte_reg[5]_1 ),
        .O(\resp_byte[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \resp_byte[5]_i_2 
       (.I0(cmd_index[5]),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_arg[5]),
        .I3(cmd_resp_pos[0]),
        .I4(cmd_resp_pos[1]),
        .O(\resp_byte[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0E55)) 
    \resp_byte[5]_i_6 
       (.I0(cmd_resp_pos[2]),
        .I1(\resp_byte[5]_i_3 ),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[0]),
        .O(\ocr_high_byte_reg[29] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454545)) 
    \resp_byte[6]_i_3 
       (.I0(\resp_byte[6]_i_5_n_0 ),
        .I1(\resp_byte_reg[6]_1 ),
        .I2(Q[0]),
        .I3(cmd_resp_pos[2]),
        .I4(\resp_byte[7]_i_3_0 [3]),
        .I5(\resp_byte[6]_i_7_n_0 ),
        .O(\resp_byte[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAFFABF)) 
    \resp_byte[6]_i_5 
       (.I0(Q[1]),
        .I1(\resp_byte[6]_i_3_0 ),
        .I2(cmd_resp_pos[0]),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[2]),
        .I5(Q[0]),
        .O(\resp_byte[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \resp_byte[6]_i_7 
       (.I0(cmd_arg[6]),
        .I1(Q[1]),
        .I2(cmd_resp_pos[0]),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[2]),
        .O(\resp_byte[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \resp_byte[7]_i_3 
       (.I0(\resp_byte[7]_i_6_n_0 ),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_resp_pos[1]),
        .I3(cmd_resp_pos[0]),
        .I4(Q[1]),
        .I5(cmd_arg[7]),
        .O(\resp_byte[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \resp_byte[7]_i_4 
       (.I0(cmd_resp_pos[4]),
        .I1(cmd_resp_pos[2]),
        .I2(cmd_resp_pos[0]),
        .I3(cmd_resp_pos[1]),
        .I4(cmd_resp_pos[3]),
        .O(\state_reg[4] ));
  LUT6 #(
    .INIT(64'h5151515151010101)) 
    \resp_byte[7]_i_6 
       (.I0(Q[1]),
        .I1(\resp_byte[7]_i_7_n_0 ),
        .I2(Q[0]),
        .I3(cmd_resp_pos[2]),
        .I4(\resp_byte[7]_i_3_0 [4]),
        .I5(\resp_byte[7]_i_3_1 ),
        .O(\resp_byte[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF037)) 
    \resp_byte[7]_i_7 
       (.I0(initialization_done),
        .I1(cmd_resp_pos[0]),
        .I2(cmd_resp_pos[2]),
        .I3(cmd_resp_pos[1]),
        .O(\resp_byte[7]_i_7_n_0 ));
  FDRE \resp_byte_reg[0] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte[0]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [0]),
        .R(ram_read_en_reg_1));
  FDRE \resp_byte_reg[1] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte_reg[1]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [1]),
        .R(ram_read_en_reg_1));
  MUXF7 \resp_byte_reg[1]_i_1 
       (.I0(\resp_byte_reg[1]_0 ),
        .I1(\resp_byte[1]_i_3_n_0 ),
        .O(\resp_byte_reg[1]_i_1_n_0 ),
        .S(resp_cur));
  FDRE \resp_byte_reg[2] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte[2]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [2]),
        .R(ram_read_en_reg_1));
  FDRE \resp_byte_reg[3] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte_reg[3]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [3]),
        .R(ram_read_en_reg_1));
  MUXF7 \resp_byte_reg[3]_i_1 
       (.I0(\resp_byte_reg[3]_0 ),
        .I1(\resp_byte[3]_i_3_n_0 ),
        .O(\resp_byte_reg[3]_i_1_n_0 ),
        .S(resp_cur));
  FDRE \resp_byte_reg[4] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte[4]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [4]),
        .R(ram_read_en_reg_1));
  FDRE \resp_byte_reg[5] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte[5]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [5]),
        .R(ram_read_en_reg_1));
  FDRE \resp_byte_reg[6] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte_reg[6]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [6]),
        .R(ram_read_en_reg_1));
  MUXF7 \resp_byte_reg[6]_i_1 
       (.I0(\resp_byte_reg[6]_0 ),
        .I1(\resp_byte[6]_i_3_n_0 ),
        .O(\resp_byte_reg[6]_i_1_n_0 ),
        .S(resp_cur));
  FDRE \resp_byte_reg[7] 
       (.C(clk),
        .CE(resetn_0),
        .D(\resp_byte_reg[7]_i_1_n_0 ),
        .Q(\resp_byte_reg[7]_0 [7]),
        .R(ram_read_en_reg_1));
  MUXF7 \resp_byte_reg[7]_i_1 
       (.I0(\resp_byte_reg[7]_1 ),
        .I1(\resp_byte[7]_i_3_n_0 ),
        .O(\resp_byte_reg[7]_i_1_n_0 ),
        .S(resp_cur));
  LUT6 #(
    .INIT(64'h0001010100000100)) 
    \resp_cur[1]_i_1 
       (.I0(cmd_index[2]),
        .I1(cmd_index[5]),
        .I2(cmd_index[4]),
        .I3(cmd_index[1]),
        .I4(cmd_index[0]),
        .I5(cmd_index[3]),
        .O(D));
  FDRE \resp_cur_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\resp_cur_reg[2]_0 [0]),
        .Q(Q[0]),
        .R(ram_read_en_reg_1));
  FDRE \resp_cur_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .R(ram_read_en_reg_1));
  FDRE \resp_cur_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\resp_cur_reg[2]_0 [1]),
        .Q(resp_cur),
        .R(ram_read_en_reg_1));
  FDRE \resp_len_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\resp_len_reg[4]_1 [0]),
        .Q(\resp_len_reg[4]_0 [0]),
        .R(ram_read_en_reg_1));
  FDRE \resp_len_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\resp_len_reg[4]_1 [1]),
        .Q(\resp_len_reg[4]_0 [1]),
        .R(ram_read_en_reg_1));
  FDRE \resp_len_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\resp_len_reg[4]_1 [2]),
        .Q(\resp_len_reg[4]_0 [2]),
        .R(ram_read_en_reg_1));
  FDRE \resp_len_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\resp_len_reg[4]_1 [3]),
        .Q(\resp_len_reg[4]_0 [3]),
        .R(ram_read_en_reg_1));
  FDRE resp_no_crc_reg
       (.C(clk),
        .CE(E),
        .D(resp_no_crc_next),
        .Q(resp_no_crc),
        .R(ram_read_en_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \resp_type_out[5]_i_2 
       (.I0(cmd_index[0]),
        .I1(cmd_index[3]),
        .O(\cmd_index_reg[0] ));
  FDRE \resp_type_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\resp_type_out_reg[1]_0 ),
        .Q(sent_r1),
        .R(1'b0));
  FDRE \resp_type_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\resp_type_out_reg[5]_0 ),
        .Q(sent_r6),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \save_erase_vars[0].erase_vars[0][31]_i_2 
       (.I0(cmd_index[4]),
        .I1(cmd_index[2]),
        .O(\cmd_index_reg[4] ));
  FDRE send_resp_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_resp_o_reg_0),
        .Q(resp_start),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sd_bus_interface" *) (* cmd_resp_len_max = "17" *) (* dat_word_size = "8" *) 
module block_design_sd_card_0_sd_bus_interface
   (got_new_cmd,
    cmd_crc_err,
    cmd_index,
    cmd_arg,
    cmd_resp_done,
    cmd_resp_timeout,
    cmd_resp_pos,
    cmd_resp_byte,
    cmd_resp_len,
    resp_no_crc,
    resp_start,
    resp_none,
    fifo_out_almostfull,
    out_tdata,
    out_tlast,
    out_tvalid,
    out_tready,
    in_tdata,
    in_tlast,
    in_tvalid,
    in_tready,
    dat_block_size_exp,
    dat_block_type,
    dat_block_limit,
    dat_block_count_done,
    dat_read_mode,
    busy_in,
    dat_width_4,
    cc_error_out,
    dat_error_code,
    dat_done,
    dat_done_new,
    dat_block_done,
    dat_resetn,
    sd_clk_i,
    sd_cmd_i,
    sd_cmd_o,
    sd_cmd_t,
    sd_dat_i,
    sd_dat_o,
    sd_dat_t,
    clk,
    resetn);
  output got_new_cmd;
  output cmd_crc_err;
  output [5:0]cmd_index;
  output [31:0]cmd_arg;
  output cmd_resp_done;
  output cmd_resp_timeout;
  output [4:0]cmd_resp_pos;
  input [7:0]cmd_resp_byte;
  input [4:0]cmd_resp_len;
  input resp_no_crc;
  input resp_start;
  input resp_none;
  input fifo_out_almostfull;
  output [7:0]out_tdata;
  output out_tlast;
  output out_tvalid;
  input out_tready;
  input [7:0]in_tdata;
  input in_tlast;
  input in_tvalid;
  output in_tready;
  input [2:0]dat_block_size_exp;
  input [1:0]dat_block_type;
  input [31:0]dat_block_limit;
  output [31:0]dat_block_count_done;
  input dat_read_mode;
  input busy_in;
  input dat_width_4;
  output cc_error_out;
  output [2:0]dat_error_code;
  output dat_done;
  output dat_done_new;
  output dat_block_done;
  input dat_resetn;
  (* mark_debug = "true" *) input sd_clk_i;
  (* mark_debug = "true" *) input sd_cmd_i;
  (* mark_debug = "true" *) output sd_cmd_o;
  (* mark_debug = "true" *) output sd_cmd_t;
  (* mark_debug = "true" *) input [3:0]sd_dat_i;
  (* mark_debug = "true" *) output [3:0]sd_dat_o;
  (* mark_debug = "true" *) output [3:0]sd_dat_t;
  input clk;
  input resetn;

  wire \<const0> ;
  wire block_count_done1;
  wire busy_in;
  wire cc_error_out;
  wire clk;
  wire [31:0]cmd_arg;
  wire cmd_crc_err;
  wire [5:0]cmd_index;
  wire [7:0]cmd_resp_byte;
  wire [4:0]cmd_resp_len;
  wire [4:0]cmd_resp_pos;
  wire [31:0]dat_block_count_done;
  wire dat_block_done;
  wire [31:0]dat_block_limit;
  wire [2:0]dat_block_size_exp;
  wire [1:0]dat_block_type;
  wire dat_done;
  wire dat_done_new;
  wire [2:0]dat_error_code;
  wire dat_read_mode;
  wire dat_resetn;
  wire dat_width_4;
  wire fifo_out_almostfull;
  wire got_new_cmd;
  wire [7:0]in_tdata;
  wire in_tlast;
  wire in_tready;
  wire in_tvalid;
  wire new_sd_clk;
  wire [7:0]out_tdata;
  wire out_tlast;
  wire out_tready;
  wire out_tvalid;
  wire p_0_in;
  wire p_0_in1_in;
  wire resetn;
  wire resp_no_crc;
  wire resp_none;
  wire resp_start;
  wire sd_clk_div_d_reg;
  wire \sd_clk_div_d_reg_n_0_[1] ;
  wire \sd_clk_div_d_reg_n_0_[3] ;
  (* MARK_DEBUG *) wire sd_clk_i;
  wire [1:0]sd_cmd_d;
  (* MARK_DEBUG *) wire sd_cmd_i;
  wire sd_cmd_i_sys;
  (* MARK_DEBUG *) wire sd_cmd_o;
  wire sd_cmd_o_sys;
  (* MARK_DEBUG *) wire sd_cmd_t;
  wire sd_cmd_t_sys;
  wire [3:0]\sd_dat_d_reg[0] ;
  wire [3:0]\sd_dat_d_reg[1] ;
  wire \sd_dat_d_reg_n_0_[2][0] ;
  wire \sd_dat_d_reg_n_0_[2][1] ;
  wire \sd_dat_d_reg_n_0_[2][2] ;
  wire \sd_dat_d_reg_n_0_[2][3] ;
  (* MARK_DEBUG *) wire [3:0]sd_dat_i;
  (* MARK_DEBUG *) wire [3:0]sd_dat_o;
  wire [3:0]sd_dat_o_sys;
  (* MARK_DEBUG *) wire [3:0]sd_dat_t;
  wire [3:3]sd_dat_t_sys;

  assign cmd_resp_done = \<const0> ;
  assign cmd_resp_timeout = \<const0> ;
  GND GND
       (.G(\<const0> ));
  block_design_sd_card_0_cmd_interface cmd_unit
       (.Q(sd_cmd_i_sys),
        .SS(block_count_done1),
        .clk(clk),
        .cmd_arg(cmd_arg),
        .cmd_crc_err(cmd_crc_err),
        .cmd_index(cmd_index),
        .cmd_resp_byte(cmd_resp_byte),
        .cmd_resp_len({cmd_resp_len[4],cmd_resp_len[2:0]}),
        .cmd_resp_pos(cmd_resp_pos),
        .got_new_cmd(got_new_cmd),
        .new_sd_clk(new_sd_clk),
        .resetn(resetn),
        .resp_no_crc(resp_no_crc),
        .resp_none(resp_none),
        .resp_start(resp_start),
        .sd_cmd_o_sys(sd_cmd_o_sys),
        .sd_cmd_t_sys(sd_cmd_t_sys));
  block_design_sd_card_0_dat_interface dat_unit
       (.D(sd_dat_t_sys),
        .Q({\sd_dat_d_reg_n_0_[2][3] ,\sd_dat_d_reg_n_0_[2][2] ,\sd_dat_d_reg_n_0_[2][1] ,\sd_dat_d_reg_n_0_[2][0] }),
        .SS(block_count_done1),
        .\block_count_done_reg[0]_0 (dat_block_count_done[0]),
        .busy_in(busy_in),
        .cc_error_out(cc_error_out),
        .clk(clk),
        .dat_block_count_done(dat_block_count_done[31:1]),
        .dat_block_done(dat_block_done),
        .dat_block_limit(dat_block_limit),
        .dat_block_size_exp(dat_block_size_exp),
        .dat_block_type(dat_block_type),
        .dat_done(dat_done),
        .dat_done_new(dat_done_new),
        .dat_error_code(dat_error_code),
        .dat_read_mode(dat_read_mode),
        .dat_resetn(dat_resetn),
        .dat_width_4(dat_width_4),
        .fifo_out_almostfull(fifo_out_almostfull),
        .good_reg({\sd_clk_div_d_reg_n_0_[3] ,p_0_in}),
        .in_tdata(in_tdata),
        .in_tlast(in_tlast),
        .in_tready(in_tready),
        .in_tvalid(in_tvalid),
        .new_sd_clk(new_sd_clk),
        .out_tdata(out_tdata),
        .out_tlast(out_tlast),
        .out_tready(out_tready),
        .out_tvalid_reg_0(out_tvalid),
        .resetn(resetn),
        .\sd_dat_o_sys_reg[3]_0 (sd_dat_o_sys));
  LUT1 #(
    .INIT(2'h1)) 
    \sd_clk_div_d[0]_i_1 
       (.I0(sd_clk_div_d_reg),
        .O(p_0_in1_in));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sd_clk_div_d_reg[0] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .CLR(block_count_done1),
        .D(p_0_in1_in),
        .Q(sd_clk_div_d_reg));
  FDRE \sd_clk_div_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sd_clk_div_d_reg),
        .Q(\sd_clk_div_d_reg_n_0_[1] ),
        .R(block_count_done1));
  FDRE \sd_clk_div_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_clk_div_d_reg_n_0_[1] ),
        .Q(p_0_in),
        .R(block_count_done1));
  FDRE \sd_clk_div_d_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\sd_clk_div_d_reg_n_0_[3] ),
        .R(block_count_done1));
  FDPE \sd_cmd_d_reg[0] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_cmd_i),
        .PRE(block_count_done1),
        .Q(sd_cmd_d[0]));
  FDSE \sd_cmd_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sd_cmd_d[0]),
        .Q(sd_cmd_d[1]),
        .S(block_count_done1));
  FDSE \sd_cmd_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sd_cmd_d[1]),
        .Q(sd_cmd_i_sys),
        .S(block_count_done1));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sd_cmd_o_reg
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_cmd_o_sys),
        .PRE(block_count_done1),
        .Q(sd_cmd_o));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sd_cmd_t_reg
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_cmd_t_sys),
        .PRE(block_count_done1),
        .Q(sd_cmd_t));
  FDPE \sd_dat_d_reg[0][0] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_i[0]),
        .PRE(block_count_done1),
        .Q(\sd_dat_d_reg[0] [0]));
  FDPE \sd_dat_d_reg[0][1] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_i[1]),
        .PRE(block_count_done1),
        .Q(\sd_dat_d_reg[0] [1]));
  FDPE \sd_dat_d_reg[0][2] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_i[2]),
        .PRE(block_count_done1),
        .Q(\sd_dat_d_reg[0] [2]));
  FDPE \sd_dat_d_reg[0][3] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_i[3]),
        .PRE(block_count_done1),
        .Q(\sd_dat_d_reg[0] [3]));
  FDSE \sd_dat_d_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0] [0]),
        .Q(\sd_dat_d_reg[1] [0]),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0] [1]),
        .Q(\sd_dat_d_reg[1] [1]),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0] [2]),
        .Q(\sd_dat_d_reg[1] [2]),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[0] [3]),
        .Q(\sd_dat_d_reg[1] [3]),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1] [0]),
        .Q(\sd_dat_d_reg_n_0_[2][0] ),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1] [1]),
        .Q(\sd_dat_d_reg_n_0_[2][1] ),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[2][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1] [2]),
        .Q(\sd_dat_d_reg_n_0_[2][2] ),
        .S(block_count_done1));
  FDSE \sd_dat_d_reg[2][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sd_dat_d_reg[1] [3]),
        .Q(\sd_dat_d_reg_n_0_[2][3] ),
        .S(block_count_done1));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[0] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_o_sys[0]),
        .PRE(block_count_done1),
        .Q(sd_dat_o[0]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[1] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_o_sys[1]),
        .PRE(block_count_done1),
        .Q(sd_dat_o[1]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[2] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_o_sys[2]),
        .PRE(block_count_done1),
        .Q(sd_dat_o[2]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_o_reg[3] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_o_sys[3]),
        .PRE(block_count_done1),
        .Q(sd_dat_o[3]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_t_reg[0] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_t_sys),
        .PRE(block_count_done1),
        .Q(sd_dat_t[0]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_t_reg[1] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_t_sys),
        .PRE(block_count_done1),
        .Q(sd_dat_t[1]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_t_reg[2] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_t_sys),
        .PRE(block_count_done1),
        .Q(sd_dat_t[2]));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDP_1" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \sd_dat_t_reg[3] 
       (.C(sd_clk_i),
        .CE(1'b1),
        .D(sd_dat_t_sys),
        .PRE(block_count_done1),
        .Q(sd_dat_t[3]));
endmodule

(* ORIG_REF_NAME = "set_dat3_pullup" *) 
module block_design_sd_card_0_set_dat3_pullup
   (sd_dat3_pullup_off,
    \cmd_index_reg[1] ,
    sd_dat3_pullup_off_reg_0,
    sd_dat3_pullup_off_reg_1,
    clk,
    cmd_index);
  output sd_dat3_pullup_off;
  output \cmd_index_reg[1] ;
  input [0:0]sd_dat3_pullup_off_reg_0;
  input sd_dat3_pullup_off_reg_1;
  input clk;
  input [3:0]cmd_index;

  wire clk;
  wire [3:0]cmd_index;
  wire \cmd_index_reg[1] ;
  wire sd_dat3_pullup_off;
  wire [0:0]sd_dat3_pullup_off_reg_0;
  wire sd_dat3_pullup_off_reg_1;

  LUT4 #(
    .INIT(16'hF7FF)) 
    sd_dat3_pullup_off_i_2
       (.I0(cmd_index[1]),
        .I1(cmd_index[2]),
        .I2(cmd_index[0]),
        .I3(cmd_index[3]),
        .O(\cmd_index_reg[1] ));
  FDRE sd_dat3_pullup_off_reg
       (.C(clk),
        .CE(1'b1),
        .D(sd_dat3_pullup_off_reg_1),
        .Q(sd_dat3_pullup_off),
        .R(sd_dat3_pullup_off_reg_0));
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
