// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat May 30 10:20:37 2020
// Host        : cd6e0f605377 running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_host_0/block_design_sd_host_0_sim_netlist.v
// Design      : block_design_sd_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_sd_host_0,axi_sd_host,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_sd_host,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module block_design_sd_host_0
   (sd_clk,
    sd_cmd,
    sd_dat,
    data_in_tready,
    data_in_tdata,
    data_in_tlast,
    data_in_tvalid,
    data_out_tvalid,
    data_out_tdata,
    data_out_tlast,
    data_out_tready,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
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
    interrupt,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CLK" *) output sd_clk;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd CMD" *) inout sd_cmd;
  (* X_INTERFACE_INFO = "acme:user:sd:1.0 sd DAT" *) inout [3:0]sd_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TREADY" *) output data_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TDATA" *) input [7:0]data_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TLAST" *) input data_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TVALID" *) output data_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TDATA" *) output [7:0]data_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TLAST" *) output data_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF S_AXI:data_in:data_out, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;

  wire \<const0> ;
  wire clk;
  wire [7:0]data_in_tdata;
  wire data_in_tlast;
  wire data_in_tready;
  wire data_in_tvalid;
  wire [7:0]data_out_tdata;
  wire data_out_tlast;
  wire data_out_tready;
  wire data_out_tvalid;
  wire interrupt;
  wire resetn;
  wire [5:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
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

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  GND GND
       (.G(\<const0> ));
  block_design_sd_host_0_axi_sd_host inst
       (.clk(clk),
        .data_in_tdata(data_in_tdata),
        .data_in_tlast(data_in_tlast),
        .data_in_tready(data_in_tready),
        .data_in_tvalid(data_in_tvalid),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tvalid(data_out_tvalid),
        .interrupt(interrupt),
        .out_tlast_reg(data_out_tlast),
        .resetn(resetn),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
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
        .sd_dat(sd_dat));
endmodule

(* ORIG_REF_NAME = "axi4_lite_intf" *) 
module block_design_sd_host_0_axi4_lite_intf
   (onwrite,
    SR,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rvalid,
    \FSM_onehot_read_state_reg[1]_0 ,
    SS,
    Q,
    \set_reg[10].reg_written_reg[10][3]_0 ,
    \raddr_saved_reg[4]_0 ,
    E,
    \set_reg[11].reg_written_reg[11][31]_0 ,
    resetn_0,
    block_data_done,
    \set_reg[10].reg_written_reg[10][7]_0 ,
    \set_reg[10].reg_written_reg[10][5]_0 ,
    \set_reg[10].reg_written_reg[10][3]_1 ,
    p_0_in_6,
    S,
    \set_reg[11].reg_written_reg[11][15]_0 ,
    \set_reg[11].reg_written_reg[11][23]_0 ,
    \set_reg[11].reg_written_reg[11][31]_1 ,
    \set_reg[12].reg_written_reg[12][31]_0 ,
    \reg_written[8]_0 ,
    \buffer_reg[6] ,
    \set_reg[13].reg_written_reg[13][8]_0 ,
    no_more_blocks0,
    s_axi_rdata,
    clk,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    resetn,
    out_tlast_reg,
    in_tready_reg,
    fifo_resetn,
    resp_out,
    \rdata_reg[17]_0 ,
    \rdata_reg[31]_0 ,
    dat_stop_clock,
    \rdata_reg[12]_0 ,
    \rdata_reg[11]_0 ,
    \rdata_reg[10]_0 ,
    \rdata_reg[5]_0 ,
    \rdata_reg[4]_0 ,
    \rdata_reg[0]_0 ,
    s_axi_rready,
    s_axi_arvalid,
    \rdata_reg[8]_0 ,
    out_tlast_reg_0,
    out_tlast_reg_1,
    out_tlast_reg_2,
    done_i_9,
    out_tlast_reg_3,
    out_tlast_i_2_0,
    CO,
    interrupt_reg,
    interrupt_reg_0,
    interrupt_bits_set,
    no_more_blocks2_carry,
    D,
    \rdata_reg[7]_0 ,
    \rdata_reg[6]_0 ,
    I16,
    no_more_blocks_reg,
    s_axi_araddr,
    out_tlast_reg_4,
    s_axi_wdata,
    s_axi_awaddr);
  output [1:0]onwrite;
  output [0:0]SR;
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output [0:0]\FSM_onehot_read_state_reg[1]_0 ;
  output [0:0]SS;
  output [5:0]Q;
  output \set_reg[10].reg_written_reg[10][3]_0 ;
  output [1:0]\raddr_saved_reg[4]_0 ;
  output [0:0]E;
  output [31:0]\set_reg[11].reg_written_reg[11][31]_0 ;
  output [0:0]resetn_0;
  output block_data_done;
  output \set_reg[10].reg_written_reg[10][7]_0 ;
  output \set_reg[10].reg_written_reg[10][5]_0 ;
  output \set_reg[10].reg_written_reg[10][3]_1 ;
  output p_0_in_6;
  output [3:0]S;
  output [3:0]\set_reg[11].reg_written_reg[11][15]_0 ;
  output [3:0]\set_reg[11].reg_written_reg[11][23]_0 ;
  output [3:0]\set_reg[11].reg_written_reg[11][31]_1 ;
  output [31:0]\set_reg[12].reg_written_reg[12][31]_0 ;
  output [1:0]\reg_written[8]_0 ;
  output \buffer_reg[6] ;
  output [6:0]\set_reg[13].reg_written_reg[13][8]_0 ;
  output no_more_blocks0;
  output [31:0]s_axi_rdata;
  input clk;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input resetn;
  input out_tlast_reg;
  input in_tready_reg;
  input fifo_resetn;
  input [30:0]resp_out;
  input [3:0]\rdata_reg[17]_0 ;
  input [30:0]\rdata_reg[31]_0 ;
  input dat_stop_clock;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[10]_0 ;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[0]_0 ;
  input s_axi_rready;
  input s_axi_arvalid;
  input \rdata_reg[8]_0 ;
  input out_tlast_reg_0;
  input [3:0]out_tlast_reg_1;
  input out_tlast_reg_2;
  input done_i_9;
  input out_tlast_reg_3;
  input out_tlast_i_2_0;
  input [0:0]CO;
  input interrupt_reg;
  input [2:0]interrupt_reg_0;
  input [2:0]interrupt_bits_set;
  input [0:0]no_more_blocks2_carry;
  input [30:0]D;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[6]_0 ;
  input [6:0]I16;
  input [0:0]no_more_blocks_reg;
  input [3:0]s_axi_araddr;
  input out_tlast_reg_4;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_awaddr;

  wire [0:0]CO;
  wire [30:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_read_state_reg[1]_0 ;
  wire [6:0]I16;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]SS;
  wire block_data_done;
  wire \buffer_reg[6] ;
  wire bvalid_i_1_n_0;
  wire clk;
  wire dat_stop_clock;
  wire done_i_9;
  wire err_index_next_i_4_n_0;
  wire err_index_next_i_5_n_0;
  wire fifo_resetn;
  wire in_tready_reg;
  wire [2:0]interrupt_bits_set;
  wire interrupt_i_3_n_0;
  wire interrupt_reg;
  wire [2:0]interrupt_reg_0;
  wire no_more_blocks0;
  wire [0:0]no_more_blocks2_carry;
  wire [0:0]no_more_blocks_reg;
  wire [1:0]onwrite;
  wire out_tlast_i_2_0;
  wire out_tlast_i_2_n_0;
  wire out_tlast_i_3_n_0;
  wire out_tlast_i_7_n_0;
  wire out_tlast_reg;
  wire out_tlast_reg_0;
  wire [3:0]out_tlast_reg_1;
  wire out_tlast_reg_2;
  wire out_tlast_reg_3;
  wire out_tlast_reg_4;
  wire p_0_in_6;
  wire [5:3]raddr_saved;
  wire [1:0]\raddr_saved_reg[4]_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[17]_i_3_n_0 ;
  wire \rdata[17]_i_4_n_0 ;
  wire \rdata[17]_i_5_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[31]_i_2_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire [31:0]rdata_next;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[10]_0 ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[12]_0 ;
  wire [3:0]\rdata_reg[17]_0 ;
  wire [30:0]\rdata_reg[31]_0 ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[8]_0 ;
  wire [0:0]read_state;
  wire [2:0]read_state_next__0;
  wire [1:0]read_state_reg;
  wire [4:1]\reg_written[10]_2 ;
  wire [1:0]\reg_written[8]_0 ;
  wire [3:0]\reg_written[9]_1 ;
  wire resetn;
  wire [0:0]resetn_0;
  wire [30:0]resp_out;
  wire rvalid_i_1_n_0;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
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
  wire \set_indicators[4].delayed.read_addr_match ;
  wire \set_indicators[4].delayed.read_addr_match_i_1_n_0 ;
  wire \set_reg[10].reg_written[10][7]_i_1_n_0 ;
  wire \set_reg[10].reg_written_reg[10][3]_0 ;
  wire \set_reg[10].reg_written_reg[10][3]_1 ;
  wire \set_reg[10].reg_written_reg[10][5]_0 ;
  wire \set_reg[10].reg_written_reg[10][7]_0 ;
  wire \set_reg[11].reg_written[11][31]_i_1_n_0 ;
  wire [3:0]\set_reg[11].reg_written_reg[11][15]_0 ;
  wire [3:0]\set_reg[11].reg_written_reg[11][23]_0 ;
  wire [31:0]\set_reg[11].reg_written_reg[11][31]_0 ;
  wire [3:0]\set_reg[11].reg_written_reg[11][31]_1 ;
  wire \set_reg[12].reg_written[12][31]_i_1_n_0 ;
  wire [31:0]\set_reg[12].reg_written_reg[12][31]_0 ;
  wire \set_reg[13].reg_written[13][8]_i_1_n_0 ;
  wire [6:0]\set_reg[13].reg_written_reg[13][8]_0 ;
  wire \set_reg[8].reg_written[8][0]_i_1_n_0 ;
  wire \set_reg[8].reg_written[8][1]_i_1_n_0 ;
  wire \set_reg[8].reg_written[8][1]_i_2_n_0 ;
  wire \set_reg[9].reg_written[9][3]_i_1_n_0 ;
  wire set_wready;
  wire [0:0]write_state;
  wire write_state_next1__0;
  wire [2:0]write_state_next__0;
  wire [1:0]write_state_reg;

  LUT4 #(
    .INIT(16'hFC44)) 
    \FSM_onehot_read_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(read_state),
        .I2(s_axi_rready),
        .I3(read_state_reg[1]),
        .O(read_state_next__0[0]));
  LUT5 #(
    .INIT(32'hCFCC8888)) 
    \FSM_onehot_read_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(read_state),
        .I2(s_axi_rready),
        .I3(read_state_reg[1]),
        .I4(read_state_reg[0]),
        .O(read_state_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF20F0)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(read_state),
        .I1(s_axi_arvalid),
        .I2(read_state_reg[1]),
        .I3(s_axi_rready),
        .I4(read_state_reg[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7F7F000)) 
    \FSM_onehot_write_state[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(write_state_reg[1]),
        .I3(s_axi_bready),
        .I4(write_state),
        .O(write_state_next__0[0]));
  LUT6 #(
    .INIT(64'hAAAA8080FFAA8080)) 
    \FSM_onehot_write_state[1]_i_1 
       (.I0(write_state),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(write_state_reg[1]),
        .I4(write_state_reg[0]),
        .I5(s_axi_bready),
        .O(write_state_next__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AFF0000)) 
    \FSM_onehot_write_state[2]_i_1 
       (.I0(write_state),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_bready),
        .I4(write_state_reg[1]),
        .I5(write_state_reg[0]),
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
  LUT3 #(
    .INIT(8'h80)) 
    awready_i_1
       (.I0(write_state),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .O(set_wready));
  FDRE awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_wready),
        .Q(s_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h552A5500007F5500)) 
    bvalid_i_1
       (.I0(write_state),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(write_state_reg[0]),
        .I4(write_state_reg[1]),
        .I5(s_axi_bready),
        .O(bvalid_i_1_n_0));
  FDRE bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \counter[3]_i_1__0 
       (.I0(resetn),
        .I1(onwrite[0]),
        .I2(Q[0]),
        .O(resetn_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0DFF)) 
    \counter[3]_i_1__2 
       (.I0(Q[0]),
        .I1(onwrite[0]),
        .I2(\reg_written[10]_2 [1]),
        .I3(resetn),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dat_block_count_success_saved[31]_i_1 
       (.I0(\set_indicators[4].delayed.read_addr_match ),
        .I1(read_state_reg[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF3F10C000)) 
    done_i_13
       (.I0(out_tlast_reg_2),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(done_i_9),
        .I4(Q[5]),
        .I5(out_tlast_i_3_n_0),
        .O(\set_reg[10].reg_written_reg[10][5]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    err_index_next_i_3
       (.I0(I16[6]),
        .I1(err_index_next_i_4_n_0),
        .I2(err_index_next_i_5_n_0),
        .O(\buffer_reg[6] ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_index_next_i_4
       (.I0(\set_reg[13].reg_written_reg[13][8]_0 [2]),
        .I1(I16[2]),
        .I2(\set_reg[13].reg_written_reg[13][8]_0 [1]),
        .I3(I16[1]),
        .I4(\set_reg[13].reg_written_reg[13][8]_0 [0]),
        .I5(I16[0]),
        .O(err_index_next_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_index_next_i_5
       (.I0(\set_reg[13].reg_written_reg[13][8]_0 [5]),
        .I1(I16[5]),
        .I2(\set_reg[13].reg_written_reg[13][8]_0 [4]),
        .I3(I16[4]),
        .I4(I16[3]),
        .I5(\set_reg[13].reg_written_reg[13][8]_0 [3]),
        .O(err_index_next_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    in_tready_i_3
       (.I0(Q[2]),
        .I1(in_tready_reg),
        .I2(fifo_resetn),
        .O(\set_reg[10].reg_written_reg[10][3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \interrupt_bits_saved[3]_i_1 
       (.I0(read_state_reg[0]),
        .I1(\set_indicators[4].delayed.read_addr_match ),
        .I2(resetn),
        .O(\FSM_onehot_read_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF4F4F4)) 
    interrupt_i_1
       (.I0(interrupt_reg),
        .I1(\reg_written[9]_1 [3]),
        .I2(interrupt_i_3_n_0),
        .I3(\reg_written[9]_1 [2]),
        .I4(interrupt_reg_0[2]),
        .I5(interrupt_bits_set[2]),
        .O(p_0_in_6));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    interrupt_i_3
       (.I0(interrupt_bits_set[1]),
        .I1(interrupt_reg_0[1]),
        .I2(\reg_written[9]_1 [1]),
        .I3(interrupt_bits_set[0]),
        .I4(interrupt_reg_0[0]),
        .I5(\reg_written[9]_1 [0]),
        .O(interrupt_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__0_i_5
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [15]),
        .I1(D[14]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [14]),
        .I3(D[13]),
        .O(\set_reg[11].reg_written_reg[11][15]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__0_i_6
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [13]),
        .I1(D[12]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [12]),
        .I3(D[11]),
        .O(\set_reg[11].reg_written_reg[11][15]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__0_i_7
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [11]),
        .I1(D[10]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [10]),
        .I3(D[9]),
        .O(\set_reg[11].reg_written_reg[11][15]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__0_i_8
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [9]),
        .I1(D[8]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [8]),
        .I3(D[7]),
        .O(\set_reg[11].reg_written_reg[11][15]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__1_i_5
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [23]),
        .I1(D[22]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [22]),
        .I3(D[21]),
        .O(\set_reg[11].reg_written_reg[11][23]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__1_i_6
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [21]),
        .I1(D[20]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [20]),
        .I3(D[19]),
        .O(\set_reg[11].reg_written_reg[11][23]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__1_i_7
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [19]),
        .I1(D[18]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [18]),
        .I3(D[17]),
        .O(\set_reg[11].reg_written_reg[11][23]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__1_i_8
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [17]),
        .I1(D[16]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [16]),
        .I3(D[15]),
        .O(\set_reg[11].reg_written_reg[11][23]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__2_i_5
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [31]),
        .I1(D[30]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [30]),
        .I3(D[29]),
        .O(\set_reg[11].reg_written_reg[11][31]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__2_i_6
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [29]),
        .I1(D[28]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [28]),
        .I3(D[27]),
        .O(\set_reg[11].reg_written_reg[11][31]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__2_i_7
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [27]),
        .I1(D[26]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [26]),
        .I3(D[25]),
        .O(\set_reg[11].reg_written_reg[11][31]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry__2_i_8
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [25]),
        .I1(D[24]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [24]),
        .I3(D[23]),
        .O(\set_reg[11].reg_written_reg[11][31]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry_i_5
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [7]),
        .I1(D[6]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [6]),
        .I3(D[5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry_i_6
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [5]),
        .I1(D[4]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [4]),
        .I3(D[3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    no_more_blocks2_carry_i_7
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [3]),
        .I1(D[2]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [2]),
        .I3(D[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6006)) 
    no_more_blocks2_carry_i_8
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [0]),
        .I1(no_more_blocks2_carry),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [1]),
        .I3(D[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    no_more_blocks_i_1
       (.I0(Q[2]),
        .I1(no_more_blocks_reg),
        .I2(\reg_written[10]_2 [4]),
        .O(no_more_blocks0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFE000000)) 
    out_tlast_i_1
       (.I0(out_tlast_i_2_n_0),
        .I1(out_tlast_i_3_n_0),
        .I2(\set_reg[10].reg_written_reg[10][7]_0 ),
        .I3(out_tlast_reg_0),
        .I4(out_tlast_reg_1[3]),
        .I5(Q[2]),
        .O(block_data_done));
  LUT6 #(
    .INIT(64'h5AAA00205AAA0A20)) 
    out_tlast_i_2
       (.I0(Q[5]),
        .I1(out_tlast_reg_3),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(out_tlast_i_7_n_0),
        .I5(out_tlast_reg_2),
        .O(out_tlast_i_2_n_0));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    out_tlast_i_3
       (.I0(out_tlast_reg),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(out_tlast_i_3_n_0));
  LUT5 #(
    .INIT(32'h80080000)) 
    out_tlast_i_4
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(out_tlast_reg_1[2]),
        .I3(out_tlast_reg_4),
        .I4(Q[3]),
        .O(\set_reg[10].reg_written_reg[10][7]_0 ));
  LUT6 #(
    .INIT(64'h10100110FF1001FF)) 
    out_tlast_i_7
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(out_tlast_reg_1[1]),
        .I3(out_tlast_reg_1[0]),
        .I4(out_tlast_i_2_0),
        .I5(Q[5]),
        .O(out_tlast_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    output_wont_overrun_i_6
       (.I0(Q[2]),
        .I1(CO),
        .O(\set_reg[10].reg_written_reg[10][3]_1 ));
  FDRE \raddr_saved_reg[2] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[0]),
        .Q(\raddr_saved_reg[4]_0 [0]),
        .R(SR));
  FDRE \raddr_saved_reg[3] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[1]),
        .Q(raddr_saved[3]),
        .R(SR));
  FDRE \raddr_saved_reg[4] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[2]),
        .Q(\raddr_saved_reg[4]_0 [1]),
        .R(SR));
  FDRE \raddr_saved_reg[5] 
       (.C(clk),
        .CE(set_arready),
        .D(s_axi_araddr[3]),
        .Q(raddr_saved[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFEFEEEEEEEFEEE)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .I2(\rdata[0]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\raddr_saved_reg[4]_0 [0]),
        .I5(\set_reg[11].reg_written_reg[11][31]_0 [0]),
        .O(rdata_next[0]));
  LUT6 #(
    .INIT(64'hEE2E222E00000000)) 
    \rdata[0]_i_2 
       (.I0(resp_out[0]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[0]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [0]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[0]_i_3 
       (.I0(\reg_written[8]_0 [0]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\reg_written[9]_1 [0]),
        .I3(raddr_saved[5]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .I5(raddr_saved[3]),
        .O(\rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rdata[0]_i_4 
       (.I0(\raddr_saved_reg[4]_0 [1]),
        .I1(raddr_saved[5]),
        .I2(raddr_saved[3]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[10]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [10]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [10]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[10]_i_2_n_0 ),
        .O(rdata_next[10]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[10]_i_2 
       (.I0(resp_out[9]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[10]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [9]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[11]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [11]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [11]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[11]_i_2_n_0 ),
        .O(rdata_next[11]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[11]_i_2 
       (.I0(resp_out[10]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[11]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [10]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[12]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [12]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [12]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[12]_i_2_n_0 ),
        .O(rdata_next[12]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[12]_i_2 
       (.I0(resp_out[11]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[12]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [11]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[13]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [13]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [13]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[13]_i_2_n_0 ),
        .O(rdata_next[13]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[13]_i_2 
       (.I0(resp_out[12]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(dat_stop_clock),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [12]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[14]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [14]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[15]_i_2_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [14]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[14]_i_2_n_0 ),
        .O(rdata_next[14]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[14]_i_2 
       (.I0(resp_out[13]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[17]_0 [0]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [13]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[15]_i_1 
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [15]),
        .I1(\rdata[15]_i_2_n_0 ),
        .I2(\rdata[17]_i_2_n_0 ),
        .I3(\set_reg[12].reg_written_reg[12][31]_0 [15]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[15]_i_3_n_0 ),
        .O(rdata_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \rdata[15]_i_2 
       (.I0(\raddr_saved_reg[4]_0 [1]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(raddr_saved[3]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[15]_i_3 
       (.I0(resp_out[14]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[17]_0 [1]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [14]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[16]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [16]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [16]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[16]_i_2_n_0 ),
        .O(rdata_next[16]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[16]_i_2 
       (.I0(resp_out[15]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[17]_0 [2]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [15]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[17]_i_1 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [17]),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [17]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[17]_i_5_n_0 ),
        .O(rdata_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \rdata[17]_i_2 
       (.I0(raddr_saved[3]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rdata[17]_i_3 
       (.I0(raddr_saved[3]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .O(\rdata[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[17]_i_4 
       (.I0(raddr_saved[5]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[17]_i_5 
       (.I0(resp_out[16]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[17]_0 [3]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [16]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [17]),
        .I5(resp_out[17]),
        .O(rdata_next[18]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[18]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [18]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [18]),
        .I5(resp_out[18]),
        .O(rdata_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[19]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [19]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0111)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(raddr_saved[5]),
        .I2(raddr_saved[3]),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(\rdata[1]_i_3_n_0 ),
        .O(rdata_next[1]));
  LUT6 #(
    .INIT(64'h3055305530553F55)) 
    \rdata[1]_i_2 
       (.I0(resp_out[1]),
        .I1(\rdata_reg[31]_0 [1]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(interrupt_reg_0[1]),
        .I5(interrupt_bits_set[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rdata[1]_i_3 
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [1]),
        .I1(raddr_saved[3]),
        .I2(\rdata[17]_i_4_n_0 ),
        .I3(\reg_written[9]_1 [1]),
        .I4(\raddr_saved_reg[4]_0 [0]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \rdata[1]_i_4 
       (.I0(\reg_written[10]_2 [1]),
        .I1(raddr_saved[3]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(raddr_saved[5]),
        .I4(\reg_written[8]_0 [1]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [19]),
        .I5(resp_out[19]),
        .O(rdata_next[20]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[20]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [20]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [20]),
        .I5(resp_out[20]),
        .O(rdata_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[21]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [21]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [21]),
        .I5(resp_out[21]),
        .O(rdata_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[22]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [22]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [22]),
        .I5(resp_out[22]),
        .O(rdata_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[23]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [23]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [23]),
        .I5(resp_out[23]),
        .O(rdata_next[24]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[24]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [24]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [24]),
        .I5(resp_out[24]),
        .O(rdata_next[25]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[25]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [25]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [25]),
        .I5(resp_out[25]),
        .O(rdata_next[26]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[26]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [26]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [26]),
        .I5(resp_out[26]),
        .O(rdata_next[27]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[27]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [27]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [27]),
        .I5(resp_out[27]),
        .O(rdata_next[28]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[28]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [28]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [28]),
        .I5(resp_out[28]),
        .O(rdata_next[29]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[29]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [29]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0003A3A3)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(\rdata[2]_i_3_n_0 ),
        .I2(raddr_saved[5]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(rdata_next[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rdata[2]_i_2 
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [2]),
        .I1(Q[1]),
        .I2(raddr_saved[3]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\reg_written[9]_1 [2]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3055305530553F55)) 
    \rdata[2]_i_3 
       (.I0(resp_out[2]),
        .I1(\rdata_reg[31]_0 [2]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(interrupt_reg_0[2]),
        .I5(interrupt_bits_set[2]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [29]),
        .I5(resp_out[29]),
        .O(rdata_next[30]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[30]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [30]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAFAAEAAAAAAA)) 
    \rdata[31]_i_1 
       (.I0(\rdata[31]_i_2_n_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\rdata_reg[31]_0 [30]),
        .I5(resp_out[30]),
        .O(rdata_next[31]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rdata[31]_i_2 
       (.I0(raddr_saved[5]),
        .I1(\set_reg[11].reg_written_reg[11][31]_0 [31]),
        .I2(\raddr_saved_reg[4]_0 [0]),
        .I3(raddr_saved[3]),
        .I4(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \rdata[31]_i_3 
       (.I0(raddr_saved[5]),
        .I1(raddr_saved[3]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF1500)) 
    \rdata[3]_i_1 
       (.I0(raddr_saved[5]),
        .I1(raddr_saved[3]),
        .I2(\raddr_saved_reg[4]_0 [1]),
        .I3(\rdata[3]_i_2_n_0 ),
        .I4(\rdata[3]_i_3_n_0 ),
        .O(rdata_next[3]));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \rdata[3]_i_2 
       (.I0(\rdata_reg[31]_0 [3]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(interrupt_reg),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(resp_out[3]),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \rdata[3]_i_3 
       (.I0(\reg_written[9]_1 [3]),
        .I1(Q[2]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [3]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(raddr_saved[3]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8000000)) 
    \rdata[4]_i_1 
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [4]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\reg_written[10]_2 [4]),
        .I3(\rdata[17]_i_4_n_0 ),
        .I4(raddr_saved[3]),
        .I5(\rdata[4]_i_2_n_0 ),
        .O(rdata_next[4]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[4]_i_2 
       (.I0(resp_out[4]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[4]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [4]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80888000)) 
    \rdata[5]_i_1 
       (.I0(\rdata[17]_i_4_n_0 ),
        .I1(raddr_saved[3]),
        .I2(\set_reg[11].reg_written_reg[11][31]_0 [5]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(Q[3]),
        .I5(\rdata[5]_i_2_n_0 ),
        .O(rdata_next[5]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[5]_i_2 
       (.I0(resp_out[5]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(\rdata_reg[5]_0 ),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [5]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03770044)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(raddr_saved[5]),
        .I2(raddr_saved[3]),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(\rdata[6]_i_3_n_0 ),
        .O(rdata_next[6]));
  LUT6 #(
    .INIT(64'h0FFF07070FFFF7F7)) 
    \rdata[6]_i_2 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [6]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(raddr_saved[3]),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [6]),
        .I4(\raddr_saved_reg[4]_0 [0]),
        .I5(Q[4]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rdata[6]_i_3 
       (.I0(\rdata_reg[31]_0 [6]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\rdata_reg[6]_0 ),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(resp_out[6]),
        .O(\rdata[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h03770044)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(raddr_saved[5]),
        .I2(raddr_saved[3]),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(\rdata[7]_i_3_n_0 ),
        .O(rdata_next[7]));
  LUT6 #(
    .INIT(64'h0FFF07070FFFF7F7)) 
    \rdata[7]_i_2 
       (.I0(\set_reg[12].reg_written_reg[12][31]_0 [7]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(raddr_saved[3]),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [7]),
        .I4(\raddr_saved_reg[4]_0 [0]),
        .I5(Q[5]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rdata[7]_i_3 
       (.I0(\rdata_reg[31]_0 [7]),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(\rdata_reg[7]_0 ),
        .I3(\raddr_saved_reg[4]_0 [1]),
        .I4(resp_out[7]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000505C0005555)) 
    \rdata[8]_i_1 
       (.I0(\rdata_reg[8]_0 ),
        .I1(\raddr_saved_reg[4]_0 [0]),
        .I2(raddr_saved[3]),
        .I3(\set_reg[11].reg_written_reg[11][31]_0 [8]),
        .I4(raddr_saved[5]),
        .I5(\raddr_saved_reg[4]_0 [1]),
        .O(rdata_next[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[9]_i_1 
       (.I0(\set_reg[11].reg_written_reg[11][31]_0 [9]),
        .I1(\rdata[15]_i_2_n_0 ),
        .I2(\rdata[17]_i_2_n_0 ),
        .I3(\set_reg[12].reg_written_reg[12][31]_0 [9]),
        .I4(\rdata[17]_i_4_n_0 ),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata_next[9]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rdata[9]_i_2 
       (.I0(resp_out[8]),
        .I1(\raddr_saved_reg[4]_0 [1]),
        .I2(Q[0]),
        .I3(\raddr_saved_reg[4]_0 [0]),
        .I4(\rdata_reg[31]_0 [8]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \rdata_reg[10] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \rdata_reg[11] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \rdata_reg[12] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \rdata_reg[13] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \rdata_reg[14] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \rdata_reg[15] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \rdata_reg[16] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \rdata_reg[17] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \rdata_reg[18] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \rdata_reg[19] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \rdata_reg[1] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \rdata_reg[20] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \rdata_reg[21] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \rdata_reg[22] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \rdata_reg[23] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \rdata_reg[24] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \rdata_reg[25] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \rdata_reg[26] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \rdata_reg[27] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \rdata_reg[28] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \rdata_reg[29] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \rdata_reg[2] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \rdata_reg[30] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \rdata_reg[31] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \rdata_reg[3] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \rdata_reg[4] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \rdata_reg[5] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \rdata_reg[6] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \rdata_reg[7] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \rdata_reg[8] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \rdata_reg[9] 
       (.C(clk),
        .CE(read_state_reg[0]),
        .D(rdata_next[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00A644A6)) 
    rvalid_i_1
       (.I0(read_state_reg[0]),
        .I1(read_state_reg[1]),
        .I2(s_axi_rready),
        .I3(read_state),
        .I4(s_axi_arvalid),
        .O(rvalid_i_1_n_0));
  FDRE rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    sd_clk_2_i_1
       (.I0(resetn),
        .O(SR));
  FDRE \set_indicators[10].onwrite_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .Q(onwrite[0]),
        .R(SR));
  FDRE \set_indicators[13].onwrite_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .Q(onwrite[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    \set_indicators[4].delayed.read_addr_match_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .O(\set_indicators[4].delayed.read_addr_match_i_1_n_0 ));
  FDRE \set_indicators[4].delayed.read_addr_match_reg 
       (.C(clk),
        .CE(set_arready),
        .D(\set_indicators[4].delayed.read_addr_match_i_1_n_0 ),
        .Q(\set_indicators[4].delayed.read_addr_match ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \set_reg[10].reg_written[10][7]_i_1 
       (.I0(write_state),
        .I1(write_state_next1__0),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[0]),
        .O(\set_reg[10].reg_written[10][7]_i_1_n_0 ));
  FDRE \set_reg[10].reg_written_reg[10][0] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][1] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_written[10]_2 [1]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][2] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][3] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][4] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\reg_written[10]_2 [4]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][5] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(Q[3]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][6] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(Q[4]),
        .R(SR));
  FDRE \set_reg[10].reg_written_reg[10][7] 
       (.C(clk),
        .CE(\set_reg[10].reg_written[10][7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(Q[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \set_reg[11].reg_written[11][31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(write_state),
        .I2(write_state_next1__0),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[1]),
        .O(\set_reg[11].reg_written[11][31]_i_1_n_0 ));
  FDRE \set_reg[11].reg_written_reg[11][0] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [0]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][10] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [10]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][11] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [11]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][12] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [12]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][13] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [13]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][14] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [14]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][15] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [15]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][16] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [16]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][17] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [17]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][18] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [18]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][19] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [19]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][1] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [1]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][20] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [20]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][21] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [21]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][22] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [22]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][23] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [23]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][24] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [24]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][25] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [25]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][26] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [26]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][27] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [27]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][28] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [28]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][29] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [29]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][2] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [2]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][30] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [30]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][31] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [31]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][3] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [3]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][4] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [4]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][5] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [5]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][6] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [6]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][7] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [7]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][8] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [8]),
        .R(SR));
  FDRE \set_reg[11].reg_written_reg[11][9] 
       (.C(clk),
        .CE(\set_reg[11].reg_written[11][31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\set_reg[11].reg_written_reg[11][31]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \set_reg[12].reg_written[12][31]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(write_state),
        .I3(write_state_next1__0),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[0]),
        .O(\set_reg[12].reg_written[12][31]_i_1_n_0 ));
  FDRE \set_reg[12].reg_written_reg[12][0] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [0]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][10] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [10]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][11] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [11]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][12] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [12]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][13] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [13]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][14] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [14]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][15] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [15]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][16] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [16]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][17] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [17]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][18] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [18]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][19] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [19]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][1] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [1]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][20] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [20]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][21] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [21]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][22] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [22]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][23] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [23]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][24] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [24]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][25] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [25]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][26] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [26]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][27] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [27]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][28] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [28]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][29] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [29]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][2] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [2]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][30] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [30]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][31] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [31]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][3] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [3]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][4] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [4]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][5] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [5]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][6] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [6]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][7] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [7]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][8] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [8]),
        .R(SR));
  FDRE \set_reg[12].reg_written_reg[12][9] 
       (.C(clk),
        .CE(\set_reg[12].reg_written[12][31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\set_reg[12].reg_written_reg[12][31]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \set_reg[13].reg_written[13][8]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(write_state),
        .I4(write_state_next1__0),
        .I5(s_axi_awaddr[3]),
        .O(\set_reg[13].reg_written[13][8]_i_1_n_0 ));
  FDRE \set_reg[13].reg_written_reg[13][0] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [0]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][1] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [1]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][2] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [2]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][3] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [3]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][4] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [4]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][5] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [5]),
        .R(SR));
  FDRE \set_reg[13].reg_written_reg[13][8] 
       (.C(clk),
        .CE(\set_reg[13].reg_written[13][8]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\set_reg[13].reg_written_reg[13][8]_0 [6]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \set_reg[8].reg_written[8][0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\set_reg[8].reg_written[8][1]_i_2_n_0 ),
        .I2(s_axi_awaddr[0]),
        .I3(\reg_written[8]_0 [0]),
        .O(\set_reg[8].reg_written[8][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \set_reg[8].reg_written[8][1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\set_reg[8].reg_written[8][1]_i_2_n_0 ),
        .I2(s_axi_awaddr[0]),
        .I3(\reg_written[8]_0 [1]),
        .O(\set_reg[8].reg_written[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \set_reg[8].reg_written[8][1]_i_2 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(write_state),
        .I5(s_axi_awaddr[1]),
        .O(\set_reg[8].reg_written[8][1]_i_2_n_0 ));
  FDRE \set_reg[8].reg_written_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg[8].reg_written[8][0]_i_1_n_0 ),
        .Q(\reg_written[8]_0 [0]),
        .R(SR));
  FDRE \set_reg[8].reg_written_reg[8][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\set_reg[8].reg_written[8][1]_i_1_n_0 ),
        .Q(\reg_written[8]_0 [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \set_reg[9].reg_written[9][3]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(write_state),
        .I3(write_state_next1__0),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[2]),
        .O(\set_reg[9].reg_written[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \set_reg[9].reg_written[9][3]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(write_state_next1__0));
  FDRE \set_reg[9].reg_written_reg[9][0] 
       (.C(clk),
        .CE(\set_reg[9].reg_written[9][3]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\reg_written[9]_1 [0]),
        .R(SR));
  FDRE \set_reg[9].reg_written_reg[9][1] 
       (.C(clk),
        .CE(\set_reg[9].reg_written[9][3]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_written[9]_1 [1]),
        .R(SR));
  FDRE \set_reg[9].reg_written_reg[9][2] 
       (.C(clk),
        .CE(\set_reg[9].reg_written[9][3]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\reg_written[9]_1 [2]),
        .R(SR));
  FDRE \set_reg[9].reg_written_reg[9][3] 
       (.C(clk),
        .CE(\set_reg[9].reg_written[9][3]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\reg_written[9]_1 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_sd_host" *) 
module block_design_sd_host_0_axi_sd_host
   (sd_clk,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rvalid,
    s_axi_rdata,
    data_out_tdata,
    interrupt,
    out_tlast_reg,
    data_in_tready,
    data_out_tvalid,
    sd_cmd,
    sd_dat,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    resetn,
    clk,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_rready,
    s_axi_arvalid,
    data_out_tready,
    data_in_tvalid,
    data_in_tlast,
    data_in_tdata);
  output sd_clk;
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  output [7:0]data_out_tdata;
  output interrupt;
  output out_tlast_reg;
  output data_in_tready;
  output data_out_tvalid;
  inout sd_cmd;
  inout [3:0]sd_dat;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input resetn;
  input clk;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_awaddr;
  input [3:0]s_axi_araddr;
  input s_axi_rready;
  input s_axi_arvalid;
  input data_out_tready;
  input data_in_tvalid;
  input data_in_tlast;
  input [7:0]data_in_tdata;

  wire [0:0]addr_out_reg;
  wire axi4_lite_intf_inst_n_107;
  wire axi4_lite_intf_inst_n_15;
  wire axi4_lite_intf_inst_n_53;
  wire axi4_lite_intf_inst_n_54;
  wire axi4_lite_intf_inst_n_55;
  wire axi4_lite_intf_inst_n_57;
  wire axi4_lite_intf_inst_n_58;
  wire axi4_lite_intf_inst_n_59;
  wire axi4_lite_intf_inst_n_60;
  wire axi4_lite_intf_inst_n_61;
  wire axi4_lite_intf_inst_n_62;
  wire axi4_lite_intf_inst_n_63;
  wire axi4_lite_intf_inst_n_64;
  wire axi4_lite_intf_inst_n_65;
  wire axi4_lite_intf_inst_n_66;
  wire axi4_lite_intf_inst_n_67;
  wire axi4_lite_intf_inst_n_68;
  wire axi4_lite_intf_inst_n_69;
  wire axi4_lite_intf_inst_n_7;
  wire axi4_lite_intf_inst_n_70;
  wire axi4_lite_intf_inst_n_71;
  wire axi4_lite_intf_inst_n_72;
  wire axi4_lite_intf_inst_n_8;
  wire block_data_done;
  wire clk;
  wire clock_gen_n_1;
  wire [31:0]cmd_resp_out;
  wire cmd_writer_n_1;
  wire cmd_writer_n_10;
  wire cmd_writer_n_11;
  wire cmd_writer_n_12;
  wire cmd_writer_n_2;
  wire cmd_writer_n_3;
  wire cmd_writer_n_4;
  wire cmd_writer_n_45;
  wire cmd_writer_n_5;
  wire cmd_writer_n_6;
  wire cmd_writer_n_7;
  wire cmd_writer_n_8;
  wire cmd_writer_n_9;
  wire [4:4]counter;
  wire counter1;
  wire [9:5]counter__0;
  wire [31:0]dat_block_count_success;
  wire [31:0]dat_block_count_success_saved;
  wire dat_resetn;
  wire dat_rw_n_10;
  wire dat_rw_n_105;
  wire dat_rw_n_106;
  wire dat_rw_n_107;
  wire dat_rw_n_108;
  wire dat_rw_n_11;
  wire dat_rw_n_12;
  wire dat_rw_n_13;
  wire dat_rw_n_14;
  wire dat_rw_n_15;
  wire dat_rw_n_16;
  wire dat_rw_n_17;
  wire dat_rw_n_18;
  wire dat_rw_n_19;
  wire dat_rw_n_2;
  wire dat_rw_n_20;
  wire dat_rw_n_21;
  wire dat_rw_n_22;
  wire dat_rw_n_23;
  wire dat_rw_n_24;
  wire dat_rw_n_25;
  wire dat_rw_n_26;
  wire dat_rw_n_27;
  wire dat_rw_n_28;
  wire dat_rw_n_29;
  wire dat_rw_n_3;
  wire dat_rw_n_30;
  wire dat_rw_n_31;
  wire dat_rw_n_32;
  wire dat_rw_n_33;
  wire dat_rw_n_34;
  wire dat_rw_n_35;
  wire dat_rw_n_36;
  wire dat_rw_n_37;
  wire dat_rw_n_38;
  wire dat_rw_n_73;
  wire dat_rw_n_74;
  wire dat_rw_n_75;
  wire dat_rw_n_8;
  wire dat_rw_n_80;
  wire dat_rw_n_81;
  wire dat_rw_n_82;
  wire dat_rw_n_83;
  wire dat_rw_n_84;
  wire dat_rw_n_85;
  wire dat_rw_n_86;
  wire dat_rw_n_87;
  wire dat_rw_n_89;
  wire dat_rw_n_9;
  wire dat_rw_n_95;
  wire dat_stop_clock;
  wire [7:0]data_in_tdata;
  wire data_in_tlast;
  wire data_in_tready;
  wire data_in_tvalid;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire fifo_almost_full;
  wire fifo_discard_block;
  wire [7:0]fifo_in_tdata;
  wire fifo_in_tready;
  wire fifo_in_tvalid;
  wire fifo_n_12;
  wire fifo_out_tvalid;
  wire fifo_resetn;
  wire fifo_resetn_gen_n_1;
  wire fifo_resetn_gen_n_2;
  wire fifo_rewind_block;
  wire got_tlast;
  wire input_block_end;
  wire interface_out_tvalid;
  wire interrupt;
  wire [3:0]interrupt_bits;
  wire [3:0]interrupt_bits_saved;
  wire [2:0]interrupt_bits_set;
  wire new_sd_clk;
  wire no_more_blocks0;
  wire no_more_blocks2;
  wire [4:4]onread;
  wire [13:10]onwrite;
  wire out_tlast_reg;
  wire output_wont_overrun2;
  wire [0:0]p_0_in;
  wire p_0_in_6;
  wire p_1_in;
  wire p_8_in;
  wire [4:2]raddr_saved;
  wire [7:0]\reg_written[10]_2 ;
  wire [31:0]\reg_written[11]_3 ;
  wire [31:0]\reg_written[12]_4 ;
  wire [8:0]\reg_written[13]_5 ;
  wire [1:0]\reg_written[8]_0 ;
  wire resetn;
  wire resetn_in2;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
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
  wire sd_clk_1;
  wire sd_cmd;
  wire [3:0]sd_dat;
  wire take_input;

  block_design_sd_host_0_axi4_lite_intf axi4_lite_intf_inst
       (.CO(output_wont_overrun2),
        .D({dat_rw_n_8,dat_rw_n_9,dat_rw_n_10,dat_rw_n_11,dat_rw_n_12,dat_rw_n_13,dat_rw_n_14,dat_rw_n_15,dat_rw_n_16,dat_rw_n_17,dat_rw_n_18,dat_rw_n_19,dat_rw_n_20,dat_rw_n_21,dat_rw_n_22,dat_rw_n_23,dat_rw_n_24,dat_rw_n_25,dat_rw_n_26,dat_rw_n_27,dat_rw_n_28,dat_rw_n_29,dat_rw_n_30,dat_rw_n_31,dat_rw_n_32,dat_rw_n_33,dat_rw_n_34,dat_rw_n_35,dat_rw_n_36,dat_rw_n_37,dat_rw_n_38}),
        .E(onread),
        .\FSM_onehot_read_state_reg[1]_0 (axi4_lite_intf_inst_n_7),
        .I16({cmd_writer_n_5,cmd_writer_n_6,cmd_writer_n_7,cmd_writer_n_8,cmd_writer_n_9,cmd_writer_n_10,cmd_writer_n_11}),
        .Q({\reg_written[10]_2 [7:5],\reg_written[10]_2 [3:2],\reg_written[10]_2 [0]}),
        .S({axi4_lite_intf_inst_n_57,axi4_lite_intf_inst_n_58,axi4_lite_intf_inst_n_59,axi4_lite_intf_inst_n_60}),
        .SR(resetn_in2),
        .SS(axi4_lite_intf_inst_n_8),
        .block_data_done(block_data_done),
        .\buffer_reg[6] (axi4_lite_intf_inst_n_107),
        .clk(clk),
        .dat_stop_clock(dat_stop_clock),
        .done_i_9(dat_rw_n_85),
        .fifo_resetn(fifo_resetn),
        .in_tready_reg(fifo_n_12),
        .interrupt_bits_set(interrupt_bits_set),
        .interrupt_reg(dat_rw_n_95),
        .interrupt_reg_0(interrupt_bits_saved[2:0]),
        .no_more_blocks0(no_more_blocks0),
        .no_more_blocks2_carry(dat_block_count_success[0]),
        .no_more_blocks_reg(no_more_blocks2),
        .onwrite({onwrite[13],onwrite[10]}),
        .out_tlast_i_2_0(dat_rw_n_81),
        .out_tlast_reg(dat_rw_n_87),
        .out_tlast_reg_0(dat_rw_n_84),
        .out_tlast_reg_1({counter__0[9:8],counter__0[5],counter}),
        .out_tlast_reg_2(dat_rw_n_80),
        .out_tlast_reg_3(dat_rw_n_75),
        .out_tlast_reg_4(dat_rw_n_86),
        .p_0_in_6(p_0_in_6),
        .\raddr_saved_reg[4]_0 ({raddr_saved[4],raddr_saved[2]}),
        .\rdata_reg[0]_0 (cmd_writer_n_45),
        .\rdata_reg[10]_0 (dat_rw_n_3),
        .\rdata_reg[11]_0 (dat_rw_n_2),
        .\rdata_reg[12]_0 (dat_rw_n_73),
        .\rdata_reg[17]_0 ({dat_rw_n_105,dat_rw_n_106,dat_rw_n_107,dat_rw_n_108}),
        .\rdata_reg[31]_0 ({dat_block_count_success_saved[31:9],dat_block_count_success_saved[7:0]}),
        .\rdata_reg[4]_0 (cmd_writer_n_1),
        .\rdata_reg[5]_0 (cmd_writer_n_2),
        .\rdata_reg[6]_0 (cmd_writer_n_3),
        .\rdata_reg[7]_0 (cmd_writer_n_4),
        .\rdata_reg[8]_0 (cmd_writer_n_12),
        .\reg_written[8]_0 (\reg_written[8]_0 ),
        .resetn(resetn),
        .resetn_0(p_1_in),
        .resp_out({cmd_resp_out[31:9],cmd_resp_out[7:0]}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\set_reg[10].reg_written_reg[10][3]_0 (axi4_lite_intf_inst_n_15),
        .\set_reg[10].reg_written_reg[10][3]_1 (axi4_lite_intf_inst_n_55),
        .\set_reg[10].reg_written_reg[10][5]_0 (axi4_lite_intf_inst_n_54),
        .\set_reg[10].reg_written_reg[10][7]_0 (axi4_lite_intf_inst_n_53),
        .\set_reg[11].reg_written_reg[11][15]_0 ({axi4_lite_intf_inst_n_61,axi4_lite_intf_inst_n_62,axi4_lite_intf_inst_n_63,axi4_lite_intf_inst_n_64}),
        .\set_reg[11].reg_written_reg[11][23]_0 ({axi4_lite_intf_inst_n_65,axi4_lite_intf_inst_n_66,axi4_lite_intf_inst_n_67,axi4_lite_intf_inst_n_68}),
        .\set_reg[11].reg_written_reg[11][31]_0 (\reg_written[11]_3 ),
        .\set_reg[11].reg_written_reg[11][31]_1 ({axi4_lite_intf_inst_n_69,axi4_lite_intf_inst_n_70,axi4_lite_intf_inst_n_71,axi4_lite_intf_inst_n_72}),
        .\set_reg[12].reg_written_reg[12][31]_0 (\reg_written[12]_4 ),
        .\set_reg[13].reg_written_reg[13][8]_0 ({\reg_written[13]_5 [8],\reg_written[13]_5 [5:0]}));
  block_design_sd_host_0_clock_divider_selector clock_gen
       (.SR(resetn_in2),
        .clk(clk),
        .dat_stop_clock(dat_stop_clock),
        .out_t_r_reg(sd_clk),
        .\reg_written[8]_0 (\reg_written[8]_0 ),
        .sd_clk_1(sd_clk_1),
        .sd_clk_2_reg(clock_gen_n_1));
  block_design_sd_host_0_cmd_writer cmd_writer
       (.D(interrupt_bits[0]),
        .I16({cmd_writer_n_5,cmd_writer_n_6,cmd_writer_n_7,cmd_writer_n_8,cmd_writer_n_9,cmd_writer_n_10,cmd_writer_n_11}),
        .Q({cmd_resp_out[31:9],cmd_resp_out[7:0]}),
        .SR(resetn_in2),
        .\buffer_reg[31]_0 (\reg_written[12]_4 ),
        .clk(clk),
        .err_crc_reg_0(cmd_writer_n_2),
        .err_end_bit_reg_0(cmd_writer_n_3),
        .err_index_next_reg_0(axi4_lite_intf_inst_n_107),
        .err_index_reg_0(cmd_writer_n_1),
        .err_timeout_reg_0(cmd_writer_n_4),
        .exp_r2_reg_0({\reg_written[13]_5 [8],\reg_written[13]_5 [5:0]}),
        .\interrupt_bits_saved_reg[0] (interrupt_bits_saved[0]),
        .interrupt_bits_set(interrupt_bits_set[0]),
        .new_sd_clk(new_sd_clk),
        .onwrite(onwrite[13]),
        .out_d_r_reg(clock_gen_n_1),
        .\rdata_reg[8] (dat_block_count_success_saved[8]),
        .\rdata_reg[8]_0 ({raddr_saved[4],raddr_saved[2]}),
        .resetn(resetn),
        .resp_done_reg_0(cmd_writer_n_45),
        .\resp_out_reg[8]_0 (cmd_writer_n_12),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .sd_cmd(sd_cmd));
  FDRE \dat_block_count_success_saved_reg[0] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[0]),
        .Q(dat_block_count_success_saved[0]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[10] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[10]),
        .Q(dat_block_count_success_saved[10]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[11] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[11]),
        .Q(dat_block_count_success_saved[11]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[12] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[12]),
        .Q(dat_block_count_success_saved[12]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[13] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[13]),
        .Q(dat_block_count_success_saved[13]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[14] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[14]),
        .Q(dat_block_count_success_saved[14]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[15] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[15]),
        .Q(dat_block_count_success_saved[15]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[16] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[16]),
        .Q(dat_block_count_success_saved[16]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[17] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[17]),
        .Q(dat_block_count_success_saved[17]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[18] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[18]),
        .Q(dat_block_count_success_saved[18]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[19] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[19]),
        .Q(dat_block_count_success_saved[19]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[1] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[1]),
        .Q(dat_block_count_success_saved[1]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[20] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[20]),
        .Q(dat_block_count_success_saved[20]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[21] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[21]),
        .Q(dat_block_count_success_saved[21]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[22] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[22]),
        .Q(dat_block_count_success_saved[22]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[23] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[23]),
        .Q(dat_block_count_success_saved[23]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[24] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[24]),
        .Q(dat_block_count_success_saved[24]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[25] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[25]),
        .Q(dat_block_count_success_saved[25]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[26] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[26]),
        .Q(dat_block_count_success_saved[26]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[27] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[27]),
        .Q(dat_block_count_success_saved[27]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[28] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[28]),
        .Q(dat_block_count_success_saved[28]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[29] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[29]),
        .Q(dat_block_count_success_saved[29]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[2] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[2]),
        .Q(dat_block_count_success_saved[2]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[30] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[30]),
        .Q(dat_block_count_success_saved[30]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[31] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[31]),
        .Q(dat_block_count_success_saved[31]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[3] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[3]),
        .Q(dat_block_count_success_saved[3]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[4] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[4]),
        .Q(dat_block_count_success_saved[4]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[5] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[5]),
        .Q(dat_block_count_success_saved[5]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[6] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[6]),
        .Q(dat_block_count_success_saved[6]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[7] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[7]),
        .Q(dat_block_count_success_saved[7]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[8] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[8]),
        .Q(dat_block_count_success_saved[8]),
        .R(resetn_in2));
  FDRE \dat_block_count_success_saved_reg[9] 
       (.C(clk),
        .CE(onread),
        .D(dat_block_count_success[9]),
        .Q(dat_block_count_success_saved[9]),
        .R(resetn_in2));
  block_design_sd_host_0_reset_gen dat_reset_gen
       (.Q(\reg_written[10]_2 [0]),
        .SS(counter1),
        .clk(clk),
        .\counter_reg[3]_0 (p_1_in),
        .dat_resetn(dat_resetn),
        .onwrite(onwrite[10]),
        .resetn(resetn));
  block_design_sd_host_0_dat_rw dat_rw
       (.D({dat_rw_n_8,dat_rw_n_9,dat_rw_n_10,dat_rw_n_11,dat_rw_n_12,dat_rw_n_13,dat_rw_n_14,dat_rw_n_15,dat_rw_n_16,dat_rw_n_17,dat_rw_n_18,dat_rw_n_19,dat_rw_n_20,dat_rw_n_21,dat_rw_n_22,dat_rw_n_23,dat_rw_n_24,dat_rw_n_25,dat_rw_n_26,dat_rw_n_27,dat_rw_n_28,dat_rw_n_29,dat_rw_n_30,dat_rw_n_31,dat_rw_n_32,dat_rw_n_33,dat_rw_n_34,dat_rw_n_35,dat_rw_n_36,dat_rw_n_37,dat_rw_n_38}),
        .DIADI(fifo_in_tdata),
        .E(dat_rw_n_82),
        .\FSM_sequential_state_reg[2]_0 (interrupt_bits[3:1]),
        .Q(dat_block_count_success),
        .S({axi4_lite_intf_inst_n_57,axi4_lite_intf_inst_n_58,axi4_lite_intf_inst_n_59,axi4_lite_intf_inst_n_60}),
        .SR(resetn_in2),
        .SS(counter1),
        .\addr_out_reg[0] (addr_out_reg),
        .\addr_tlast_reg[0] (take_input),
        .\addr_tlast_reg[0]_0 (fifo_n_12),
        .block_count_success_overflow_reg_0(dat_rw_n_73),
        .block_data_done(block_data_done),
        .busy_cleared_reg_0(dat_rw_n_2),
        .clk(clk),
        .clk_bus_d_reg(sd_clk),
        .\counter_reg[0]_0 (dat_rw_n_74),
        .\counter_reg[2]_0 (dat_rw_n_81),
        .\counter_reg[3]_0 (dat_rw_n_87),
        .\counter_reg[6]_0 (dat_rw_n_75),
        .\counter_reg[6]_1 (dat_rw_n_85),
        .\counter_reg[7]_0 (dat_rw_n_80),
        .\counter_reg[7]_1 (dat_rw_n_86),
        .\counter_reg[8]_0 (dat_rw_n_84),
        .\counter_reg[9]_0 ({counter__0[9:8],counter__0[5],counter}),
        .dat_resetn(dat_resetn),
        .dat_stop_clock(dat_stop_clock),
        .data_in_tdata(data_in_tdata),
        .data_in_tlast(data_in_tlast),
        .data_in_tvalid(data_in_tvalid),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tready_0(dat_rw_n_83),
        .done_i_15_0({\reg_written[10]_2 [7:5],\reg_written[10]_2 [3:2]}),
        .done_i_2(axi4_lite_intf_inst_n_53),
        .done_i_2_0(axi4_lite_intf_inst_n_54),
        .done_reg_0(dat_rw_n_3),
        .\error_code_reg[3]_0 ({dat_rw_n_105,dat_rw_n_106,dat_rw_n_107,dat_rw_n_108}),
        .fifo_almost_full(fifo_almost_full),
        .fifo_discard_block(fifo_discard_block),
        .fifo_in_rewind_block_reg_0(p_0_in),
        .fifo_in_tready(fifo_in_tready),
        .fifo_in_tvalid(fifo_in_tvalid),
        .fifo_out_discard_block_reg_0(got_tlast),
        .fifo_out_discard_block_reg_1(input_block_end),
        .fifo_out_tvalid(fifo_out_tvalid),
        .fifo_resetn(fifo_resetn),
        .fifo_rewind_block(fifo_rewind_block),
        .in_tlast_saved_reg_0(out_tlast_reg),
        .interface_out_tvalid(interface_out_tvalid),
        .\interrupt_bits_saved_reg[3] (dat_rw_n_95),
        .\interrupt_bits_saved_reg[3]_0 (interrupt_bits_saved[3:1]),
        .interrupt_bits_set(interrupt_bits_set[2:1]),
        .new_sd_clk(new_sd_clk),
        .no_more_blocks0(no_more_blocks0),
        .no_more_blocks2_carry__1_0({axi4_lite_intf_inst_n_61,axi4_lite_intf_inst_n_62,axi4_lite_intf_inst_n_63,axi4_lite_intf_inst_n_64}),
        .no_more_blocks2_carry__2_0({axi4_lite_intf_inst_n_65,axi4_lite_intf_inst_n_66,axi4_lite_intf_inst_n_67,axi4_lite_intf_inst_n_68}),
        .no_more_blocks2_carry__2_1(\reg_written[11]_3 ),
        .no_more_blocks_reg_0({axi4_lite_intf_inst_n_69,axi4_lite_intf_inst_n_70,axi4_lite_intf_inst_n_71,axi4_lite_intf_inst_n_72}),
        .out_t_r_reg(clock_gen_n_1),
        .out_tvalid_reg_0(dat_rw_n_89),
        .p_8_in(p_8_in),
        .sd_dat(sd_dat),
        .\set_reg[11].reg_written_reg[11][31] (no_more_blocks2));
  block_design_sd_host_0_block_mode_fifo fifo
       (.CO(output_wont_overrun2),
        .D(p_0_in),
        .DIADI(fifo_in_tdata),
        .E(take_input),
        .Q(addr_out_reg),
        .SR({fifo_resetn_gen_n_1,input_block_end}),
        .\addr_in_reg[9]_0 (dat_rw_n_89),
        .\addr_out_reg[10]_0 (dat_rw_n_82),
        .\addr_tlast_reg[0]_0 (got_tlast),
        .clk(clk),
        .data_in_tready(data_in_tready),
        .data_in_tvalid(data_in_tvalid),
        .data_out_tdata(data_out_tdata),
        .data_out_tready(data_out_tready),
        .data_out_tvalid(data_out_tvalid),
        .fifo_almost_full(fifo_almost_full),
        .fifo_discard_block(fifo_discard_block),
        .fifo_in_tready(fifo_in_tready),
        .fifo_in_tvalid(fifo_in_tvalid),
        .fifo_out_tvalid(fifo_out_tvalid),
        .fifo_resetn(fifo_resetn),
        .fifo_rewind_block(fifo_rewind_block),
        .got_tlast_reg_0(fifo_n_12),
        .in_tready_reg_0(axi4_lite_intf_inst_n_15),
        .interface_out_tvalid(interface_out_tvalid),
        .new_sd_clk(new_sd_clk),
        .out_tlast_reg_0(out_tlast_reg),
        .out_tlast_reg_1(\reg_written[10]_2 [3:2]),
        .\output_block_reg[10]_0 (dat_rw_n_83),
        .output_block_second_to_end_reg_0(dat_rw_n_74),
        .output_wont_overrun_reg_0(fifo_resetn_gen_n_2),
        .output_wont_overrun_reg_1(axi4_lite_intf_inst_n_55),
        .p_8_in(p_8_in));
  block_design_sd_host_0_reset_gen_0 fifo_resetn_gen
       (.Q(\reg_written[10]_2 [3]),
        .SR(fifo_resetn_gen_n_1),
        .SS(axi4_lite_intf_inst_n_8),
        .clk(clk),
        .fifo_resetn(fifo_resetn),
        .fifo_rewind_block(fifo_rewind_block),
        .output_wont_overrun_reg(out_tlast_reg),
        .resetn_out_reg_0(fifo_resetn_gen_n_2));
  FDRE \interrupt_bits_saved_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_bits[0]),
        .Q(interrupt_bits_saved[0]),
        .R(axi4_lite_intf_inst_n_7));
  FDRE \interrupt_bits_saved_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_bits[1]),
        .Q(interrupt_bits_saved[1]),
        .R(axi4_lite_intf_inst_n_7));
  FDRE \interrupt_bits_saved_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_bits[2]),
        .Q(interrupt_bits_saved[2]),
        .R(axi4_lite_intf_inst_n_7));
  FDRE \interrupt_bits_saved_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_bits[3]),
        .Q(interrupt_bits_saved[3]),
        .R(axi4_lite_intf_inst_n_7));
  (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *) 
  FDRE interrupt_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_6),
        .Q(interrupt),
        .R(resetn_in2));
  FDRE sd_clk_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sd_clk_1),
        .Q(sd_clk),
        .R(resetn_in2));
endmodule

(* ORIG_REF_NAME = "block_mode_fifo" *) 
module block_design_sd_host_0_block_mode_fifo
   (data_out_tdata,
    Q,
    fifo_in_tready,
    E,
    CO,
    got_tlast_reg_0,
    out_tlast_reg_0,
    fifo_out_tvalid,
    fifo_almost_full,
    p_8_in,
    data_in_tready,
    data_out_tvalid,
    clk,
    fifo_in_tvalid,
    SR,
    DIADI,
    fifo_resetn,
    fifo_rewind_block,
    output_wont_overrun_reg_0,
    output_wont_overrun_reg_1,
    data_out_tready,
    out_tlast_reg_1,
    new_sd_clk,
    output_block_second_to_end_reg_0,
    interface_out_tvalid,
    data_in_tvalid,
    D,
    \output_block_reg[10]_0 ,
    in_tready_reg_0,
    \addr_tlast_reg[0]_0 ,
    \addr_in_reg[9]_0 ,
    fifo_discard_block,
    \addr_out_reg[10]_0 );
  output [7:0]data_out_tdata;
  output [0:0]Q;
  output fifo_in_tready;
  output [0:0]E;
  output [0:0]CO;
  output got_tlast_reg_0;
  output out_tlast_reg_0;
  output fifo_out_tvalid;
  output fifo_almost_full;
  output p_8_in;
  output data_in_tready;
  output data_out_tvalid;
  input clk;
  input fifo_in_tvalid;
  input [1:0]SR;
  input [7:0]DIADI;
  input fifo_resetn;
  input fifo_rewind_block;
  input output_wont_overrun_reg_0;
  input output_wont_overrun_reg_1;
  input data_out_tready;
  input [1:0]out_tlast_reg_1;
  input new_sd_clk;
  input output_block_second_to_end_reg_0;
  input interface_out_tvalid;
  input data_in_tvalid;
  input [0:0]D;
  input \output_block_reg[10]_0 ;
  input in_tready_reg_0;
  input [0:0]\addr_tlast_reg[0]_0 ;
  input [0:0]\addr_in_reg[9]_0 ;
  input fifo_discard_block;
  input [0:0]\addr_out_reg[10]_0 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [7:0]DIADI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]SR;
  wire [10:0]addr_in;
  wire \addr_in[0]_i_1_n_0 ;
  wire \addr_in[10]_i_1_n_0 ;
  wire \addr_in[1]_i_1_n_0 ;
  wire \addr_in[2]_i_1_n_0 ;
  wire \addr_in[3]_i_1_n_0 ;
  wire \addr_in[4]_i_1_n_0 ;
  wire \addr_in[5]_i_1_n_0 ;
  wire \addr_in[6]_i_1_n_0 ;
  wire \addr_in[7]_i_1_n_0 ;
  wire \addr_in[8]_i_3_n_0 ;
  wire \addr_in[9]_i_2_n_0 ;
  wire \addr_in[9]_i_3_n_0 ;
  wire [0:0]\addr_in_reg[9]_0 ;
  wire \addr_out[10]_i_3_n_0 ;
  wire \addr_out[2]_i_1_n_0 ;
  wire \addr_out[4]_i_1_n_0 ;
  wire \addr_out[5]_i_1_n_0 ;
  wire \addr_out[5]_i_2_n_0 ;
  wire \addr_out[6]_i_1_n_0 ;
  wire \addr_out[7]_i_1_n_0 ;
  wire \addr_out[8]_i_1_n_0 ;
  wire \addr_out[8]_i_2_n_0 ;
  wire [9:1]addr_out_reg;
  wire [0:0]\addr_out_reg[10]_0 ;
  wire [10:10]addr_out_reg__0;
  wire [0:0]\addr_tlast_reg[0]_0 ;
  wire \addr_tlast_reg_n_0_[0] ;
  wire \addr_tlast_reg_n_0_[1] ;
  wire \addr_tlast_reg_n_0_[2] ;
  wire \addr_tlast_reg_n_0_[3] ;
  wire \addr_tlast_reg_n_0_[4] ;
  wire \addr_tlast_reg_n_0_[5] ;
  wire \addr_tlast_reg_n_0_[6] ;
  wire \addr_tlast_reg_n_0_[7] ;
  wire \addr_tlast_reg_n_0_[8] ;
  wire \addr_tlast_reg_n_0_[9] ;
  wire almost_full_i_1_n_0;
  wire almost_full_i_3_n_0;
  wire almost_full_next;
  wire clk;
  wire data_in_tready;
  wire data_in_tvalid;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tvalid;
  wire fifo_almost_full;
  wire fifo_discard_block;
  wire fifo_in_tready;
  wire fifo_in_tvalid;
  wire fifo_out_tvalid;
  wire fifo_resetn;
  wire fifo_rewind_block;
  wire got_tlast_i_1_n_0;
  wire got_tlast_reg_0;
  wire in_tready_i_1_n_0;
  wire in_tready_i_2_n_0;
  wire in_tready_reg_0;
  wire input_block_end_i_1_n_0;
  wire input_block_end_i_2_n_0;
  wire input_block_end_reg_n_0;
  wire input_block_start;
  wire input_block_start_i_1_n_0;
  wire interface_out_tvalid;
  wire mem_reg_i_2_n_0;
  wire new_sd_clk;
  wire out_tlast_i_1__0_n_0;
  wire out_tlast_reg_0;
  wire [1:0]out_tlast_reg_1;
  wire out_tvalid_i_1_n_0;
  wire [10:9]output_block;
  wire \output_block[10]_i_1_n_0 ;
  wire \output_block[9]_i_1_n_0 ;
  wire \output_block_reg[10]_0 ;
  wire output_block_second_to_end;
  wire output_block_second_to_end_i_1_n_0;
  wire output_block_second_to_end_i_2_n_0;
  wire output_block_second_to_end_i_3_n_0;
  wire output_block_second_to_end_reg_0;
  wire output_block_start;
  wire output_block_start_i_1_n_0;
  wire output_block_start_i_2_n_0;
  wire output_block_start_i_3_n_0;
  wire output_wont_overrun2_carry_i_1_n_0;
  wire output_wont_overrun2_carry_i_2_n_0;
  wire output_wont_overrun2_carry_i_3_n_0;
  wire output_wont_overrun2_carry_i_4_n_0;
  wire output_wont_overrun2_carry_n_1;
  wire output_wont_overrun2_carry_n_2;
  wire output_wont_overrun2_carry_n_3;
  wire output_wont_overrun_i_1_n_0;
  wire output_wont_overrun_i_2_n_0;
  wire output_wont_overrun_i_3_n_0;
  wire output_wont_overrun_i_4_n_0;
  wire output_wont_overrun_reg_0;
  wire output_wont_overrun_reg_1;
  wire output_wont_overrun_reg_n_0;
  wire [10:1]p_0_in;
  wire p_8_in;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]NLW_output_wont_overrun2_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addr_in[0]_i_1 
       (.I0(addr_in[0]),
        .O(\addr_in[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAA00000000)) 
    \addr_in[10]_i_1 
       (.I0(addr_in[10]),
        .I1(fifo_discard_block),
        .I2(E),
        .I3(addr_in[9]),
        .I4(input_block_start_i_1_n_0),
        .I5(fifo_resetn),
        .O(\addr_in[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr_in[1]_i_1 
       (.I0(addr_in[0]),
        .I1(addr_in[1]),
        .O(\addr_in[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_in[2]_i_1 
       (.I0(addr_in[2]),
        .I1(addr_in[1]),
        .I2(addr_in[0]),
        .O(\addr_in[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_in[3]_i_1 
       (.I0(addr_in[3]),
        .I1(addr_in[0]),
        .I2(addr_in[1]),
        .I3(addr_in[2]),
        .O(\addr_in[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_in[4]_i_1 
       (.I0(addr_in[4]),
        .I1(addr_in[2]),
        .I2(addr_in[1]),
        .I3(addr_in[0]),
        .I4(addr_in[3]),
        .O(\addr_in[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addr_in[5]_i_1 
       (.I0(addr_in[5]),
        .I1(addr_in[3]),
        .I2(addr_in[0]),
        .I3(addr_in[1]),
        .I4(addr_in[2]),
        .I5(addr_in[4]),
        .O(\addr_in[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr_in[6]_i_1 
       (.I0(addr_in[6]),
        .I1(\addr_in[9]_i_3_n_0 ),
        .I2(addr_in[5]),
        .O(\addr_in[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr_in[7]_i_1 
       (.I0(addr_in[7]),
        .I1(addr_in[5]),
        .I2(addr_in[6]),
        .I3(\addr_in[9]_i_3_n_0 ),
        .O(\addr_in[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \addr_in[8]_i_2 
       (.I0(fifo_in_tready),
        .I1(data_in_tvalid),
        .I2(out_tlast_reg_1[0]),
        .I3(interface_out_tvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_in[8]_i_3 
       (.I0(addr_in[8]),
        .I1(\addr_in[9]_i_3_n_0 ),
        .I2(addr_in[6]),
        .I3(addr_in[5]),
        .I4(addr_in[7]),
        .O(\addr_in[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addr_in[9]_i_2 
       (.I0(addr_in[9]),
        .I1(addr_in[7]),
        .I2(addr_in[5]),
        .I3(addr_in[6]),
        .I4(\addr_in[9]_i_3_n_0 ),
        .I5(addr_in[8]),
        .O(\addr_in[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_in[9]_i_3 
       (.I0(addr_in[4]),
        .I1(addr_in[2]),
        .I2(addr_in[1]),
        .I3(addr_in[0]),
        .I4(addr_in[3]),
        .O(\addr_in[9]_i_3_n_0 ));
  FDRE \addr_in_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[0]_i_1_n_0 ),
        .Q(addr_in[0]),
        .R(SR[0]));
  FDRE \addr_in_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\addr_in[10]_i_1_n_0 ),
        .Q(addr_in[10]),
        .R(1'b0));
  FDRE \addr_in_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[1]_i_1_n_0 ),
        .Q(addr_in[1]),
        .R(SR[0]));
  FDRE \addr_in_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[2]_i_1_n_0 ),
        .Q(addr_in[2]),
        .R(SR[0]));
  FDRE \addr_in_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[3]_i_1_n_0 ),
        .Q(addr_in[3]),
        .R(SR[0]));
  FDRE \addr_in_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[4]_i_1_n_0 ),
        .Q(addr_in[4]),
        .R(SR[0]));
  FDRE \addr_in_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[5]_i_1_n_0 ),
        .Q(addr_in[5]),
        .R(SR[0]));
  FDRE \addr_in_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[6]_i_1_n_0 ),
        .Q(addr_in[6]),
        .R(SR[0]));
  FDRE \addr_in_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[7]_i_1_n_0 ),
        .Q(addr_in[7]),
        .R(SR[0]));
  FDRE \addr_in_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\addr_in[8]_i_3_n_0 ),
        .Q(addr_in[8]),
        .R(SR[0]));
  FDRE \addr_in_reg[9] 
       (.C(clk),
        .CE(\addr_in_reg[9]_0 ),
        .D(\addr_in[9]_i_2_n_0 ),
        .Q(addr_in[9]),
        .R(SR[1]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \addr_out[10]_i_2 
       (.I0(output_block[10]),
        .I1(fifo_rewind_block),
        .I2(addr_out_reg__0),
        .I3(\addr_out[10]_i_3_n_0 ),
        .I4(addr_out_reg[9]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_out[10]_i_3 
       (.I0(addr_out_reg[7]),
        .I1(\addr_out[8]_i_2_n_0 ),
        .I2(addr_out_reg[6]),
        .I3(addr_out_reg[8]),
        .O(\addr_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \addr_out[1]_i_1 
       (.I0(addr_out_reg[1]),
        .I1(Q),
        .I2(fifo_rewind_block),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \addr_out[2]_i_1 
       (.I0(fifo_rewind_block),
        .I1(Q),
        .I2(addr_out_reg[1]),
        .I3(addr_out_reg[2]),
        .O(\addr_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \addr_out[3]_i_1 
       (.I0(addr_out_reg[1]),
        .I1(Q),
        .I2(addr_out_reg[2]),
        .I3(addr_out_reg[3]),
        .I4(fifo_rewind_block),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \addr_out[4]_i_1 
       (.I0(fifo_rewind_block),
        .I1(addr_out_reg[3]),
        .I2(addr_out_reg[2]),
        .I3(Q),
        .I4(addr_out_reg[1]),
        .I5(addr_out_reg[4]),
        .O(\addr_out[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \addr_out[5]_i_1 
       (.I0(fifo_rewind_block),
        .I1(\addr_out[5]_i_2_n_0 ),
        .I2(addr_out_reg[5]),
        .O(\addr_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_out[5]_i_2 
       (.I0(addr_out_reg[4]),
        .I1(addr_out_reg[1]),
        .I2(Q),
        .I3(addr_out_reg[2]),
        .I4(addr_out_reg[3]),
        .O(\addr_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \addr_out[6]_i_1 
       (.I0(fifo_rewind_block),
        .I1(\addr_out[8]_i_2_n_0 ),
        .I2(addr_out_reg[6]),
        .O(\addr_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \addr_out[7]_i_1 
       (.I0(fifo_rewind_block),
        .I1(\addr_out[8]_i_2_n_0 ),
        .I2(addr_out_reg[6]),
        .I3(addr_out_reg[7]),
        .O(\addr_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \addr_out[8]_i_1 
       (.I0(fifo_rewind_block),
        .I1(addr_out_reg[6]),
        .I2(\addr_out[8]_i_2_n_0 ),
        .I3(addr_out_reg[7]),
        .I4(addr_out_reg[8]),
        .O(\addr_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_out[8]_i_2 
       (.I0(addr_out_reg[3]),
        .I1(addr_out_reg[2]),
        .I2(Q),
        .I3(addr_out_reg[1]),
        .I4(addr_out_reg[4]),
        .I5(addr_out_reg[5]),
        .O(\addr_out[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \addr_out[9]_i_1 
       (.I0(output_block[9]),
        .I1(fifo_rewind_block),
        .I2(addr_out_reg[9]),
        .I3(\addr_out[10]_i_3_n_0 ),
        .O(p_0_in[9]));
  FDRE \addr_out_reg[0] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(D),
        .Q(Q),
        .R(SR[1]));
  FDRE \addr_out_reg[10] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(p_0_in[10]),
        .Q(addr_out_reg__0),
        .R(SR[1]));
  FDRE \addr_out_reg[1] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(p_0_in[1]),
        .Q(addr_out_reg[1]),
        .R(SR[1]));
  FDRE \addr_out_reg[2] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[2]_i_1_n_0 ),
        .Q(addr_out_reg[2]),
        .R(SR[1]));
  FDRE \addr_out_reg[3] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(p_0_in[3]),
        .Q(addr_out_reg[3]),
        .R(SR[1]));
  FDRE \addr_out_reg[4] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[4]_i_1_n_0 ),
        .Q(addr_out_reg[4]),
        .R(SR[1]));
  FDRE \addr_out_reg[5] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[5]_i_1_n_0 ),
        .Q(addr_out_reg[5]),
        .R(SR[1]));
  FDRE \addr_out_reg[6] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[6]_i_1_n_0 ),
        .Q(addr_out_reg[6]),
        .R(SR[1]));
  FDRE \addr_out_reg[7] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[7]_i_1_n_0 ),
        .Q(addr_out_reg[7]),
        .R(SR[1]));
  FDRE \addr_out_reg[8] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(\addr_out[8]_i_1_n_0 ),
        .Q(addr_out_reg[8]),
        .R(SR[1]));
  FDRE \addr_out_reg[9] 
       (.C(clk),
        .CE(\addr_out_reg[10]_0 ),
        .D(p_0_in[9]),
        .Q(addr_out_reg[9]),
        .R(SR[1]));
  FDRE \addr_tlast_reg[0] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[0]),
        .Q(\addr_tlast_reg_n_0_[0] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[1] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[1]),
        .Q(\addr_tlast_reg_n_0_[1] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[2] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[2]),
        .Q(\addr_tlast_reg_n_0_[2] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[3] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[3]),
        .Q(\addr_tlast_reg_n_0_[3] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[4] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[4]),
        .Q(\addr_tlast_reg_n_0_[4] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[5] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[5]),
        .Q(\addr_tlast_reg_n_0_[5] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[6] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[6]),
        .Q(\addr_tlast_reg_n_0_[6] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[7] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[7]),
        .Q(\addr_tlast_reg_n_0_[7] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[8] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[8]),
        .Q(\addr_tlast_reg_n_0_[8] ),
        .R(SR[1]));
  FDRE \addr_tlast_reg[9] 
       (.C(clk),
        .CE(\addr_tlast_reg[0]_0 ),
        .D(addr_in[9]),
        .Q(\addr_tlast_reg_n_0_[9] ),
        .R(SR[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    almost_full_i_1
       (.I0(almost_full_next),
        .I1(fifo_resetn),
        .I2(got_tlast_reg_0),
        .I3(out_tlast_reg_1[1]),
        .O(almost_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h03300EE0C00C8330)) 
    almost_full_i_2
       (.I0(almost_full_i_3_n_0),
        .I1(addr_in[9]),
        .I2(addr_in[10]),
        .I3(output_block[10]),
        .I4(in_tready_i_2_n_0),
        .I5(output_block[9]),
        .O(almost_full_next));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    almost_full_i_3
       (.I0(interface_out_tvalid),
        .I1(out_tlast_reg_1[0]),
        .I2(data_in_tvalid),
        .I3(fifo_in_tready),
        .I4(input_block_start),
        .O(almost_full_i_3_n_0));
  FDRE almost_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(almost_full_i_1_n_0),
        .Q(fifo_almost_full),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_in_tready_INST_0
       (.I0(fifo_in_tready),
        .I1(out_tlast_reg_1[0]),
        .O(data_in_tready));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_tvalid_INST_0
       (.I0(fifo_out_tvalid),
        .I1(out_tlast_reg_1[0]),
        .O(data_out_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    got_tlast_i_1
       (.I0(got_tlast_reg_0),
        .I1(\addr_tlast_reg[0]_0 ),
        .I2(fifo_resetn),
        .O(got_tlast_i_1_n_0));
  FDRE got_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(got_tlast_i_1_n_0),
        .Q(got_tlast_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F99F7EE7)) 
    in_tready_i_1
       (.I0(in_tready_i_2_n_0),
        .I1(addr_in[9]),
        .I2(addr_in[10]),
        .I3(output_block[10]),
        .I4(output_block[9]),
        .I5(in_tready_reg_0),
        .O(in_tready_i_1_n_0));
  LUT5 #(
    .INIT(32'h8A800000)) 
    in_tready_i_2
       (.I0(input_block_end_reg_n_0),
        .I1(interface_out_tvalid),
        .I2(out_tlast_reg_1[0]),
        .I3(data_in_tvalid),
        .I4(fifo_in_tready),
        .O(in_tready_i_2_n_0));
  FDRE in_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(in_tready_i_1_n_0),
        .Q(fifo_in_tready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    input_block_end_i_1
       (.I0(addr_in[7]),
        .I1(addr_in[8]),
        .I2(addr_in[2]),
        .I3(input_block_end_i_2_n_0),
        .O(input_block_end_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    input_block_end_i_2
       (.I0(addr_in[1]),
        .I1(addr_in[0]),
        .I2(addr_in[3]),
        .I3(addr_in[4]),
        .I4(addr_in[5]),
        .I5(addr_in[6]),
        .O(input_block_end_i_2_n_0));
  FDRE input_block_end_reg
       (.C(clk),
        .CE(E),
        .D(input_block_end_i_1_n_0),
        .Q(input_block_end_reg_n_0),
        .R(SR[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    input_block_start_i_1
       (.I0(addr_in[8]),
        .I1(\addr_in[9]_i_3_n_0 ),
        .I2(addr_in[6]),
        .I3(addr_in[5]),
        .I4(addr_in[7]),
        .O(input_block_start_i_1_n_0));
  FDSE input_block_start_reg
       (.C(clk),
        .CE(E),
        .D(input_block_start_i_1_n_0),
        .Q(input_block_start),
        .S(SR[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/fifo/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({addr_in[9:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addr_out_reg,Q,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],data_out_tdata}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(fifo_in_tvalid),
        .ENBWREN(mem_reg_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(SR[1]),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({fifo_in_tready,fifo_in_tready}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h80808A80AAAAAAAA)) 
    mem_reg_i_12
       (.I0(output_wont_overrun_reg_n_0),
        .I1(data_out_tready),
        .I2(out_tlast_reg_1[0]),
        .I3(new_sd_clk),
        .I4(output_block_second_to_end_reg_0),
        .I5(fifo_out_tvalid),
        .O(p_8_in));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_2
       (.I0(p_8_in),
        .I1(fifo_resetn),
        .O(mem_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    out_tlast_i_1__0
       (.I0(out_tlast_reg_0),
        .I1(p_8_in),
        .I2(output_block_second_to_end),
        .I3(out_tlast_reg_1[1]),
        .I4(CO),
        .I5(fifo_resetn),
        .O(out_tlast_i_1__0_n_0));
  FDRE out_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_tlast_i_1__0_n_0),
        .Q(out_tlast_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000BA00)) 
    out_tvalid_i_1
       (.I0(output_wont_overrun_reg_n_0),
        .I1(\output_block_reg[10]_0 ),
        .I2(fifo_out_tvalid),
        .I3(fifo_resetn),
        .I4(fifo_rewind_block),
        .O(out_tvalid_i_1_n_0));
  FDRE out_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_tvalid_i_1_n_0),
        .Q(fifo_out_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAAA2AAA00000000)) 
    \output_block[10]_i_1 
       (.I0(output_block[10]),
        .I1(fifo_out_tvalid),
        .I2(output_block_start),
        .I3(\output_block_reg[10]_0 ),
        .I4(addr_out_reg__0),
        .I5(fifo_resetn),
        .O(\output_block[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA2AAA00000000)) 
    \output_block[9]_i_1 
       (.I0(output_block[9]),
        .I1(fifo_out_tvalid),
        .I2(output_block_start),
        .I3(\output_block_reg[10]_0 ),
        .I4(addr_out_reg[9]),
        .I5(fifo_resetn),
        .O(\output_block[9]_i_1_n_0 ));
  FDRE \output_block_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\output_block[10]_i_1_n_0 ),
        .Q(output_block[10]),
        .R(1'b0));
  FDRE \output_block_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\output_block[9]_i_1_n_0 ),
        .Q(output_block[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    output_block_second_to_end_i_1
       (.I0(output_block_second_to_end),
        .I1(p_8_in),
        .I2(output_block_second_to_end_i_2_n_0),
        .I3(fifo_resetn),
        .I4(fifo_rewind_block),
        .O(output_block_second_to_end_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    output_block_second_to_end_i_2
       (.I0(addr_out_reg[4]),
        .I1(addr_out_reg[6]),
        .I2(addr_out_reg[1]),
        .I3(output_block_second_to_end_i_3_n_0),
        .O(output_block_second_to_end_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    output_block_second_to_end_i_3
       (.I0(addr_out_reg[8]),
        .I1(addr_out_reg[5]),
        .I2(addr_out_reg[2]),
        .I3(addr_out_reg[7]),
        .I4(Q),
        .I5(addr_out_reg[3]),
        .O(output_block_second_to_end_i_3_n_0));
  FDRE output_block_second_to_end_reg
       (.C(clk),
        .CE(1'b1),
        .D(output_block_second_to_end_i_1_n_0),
        .Q(output_block_second_to_end),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    output_block_start_i_1
       (.I0(output_block_start),
        .I1(p_8_in),
        .I2(output_block_start_i_2_n_0),
        .I3(fifo_resetn),
        .I4(fifo_rewind_block),
        .O(output_block_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    output_block_start_i_2
       (.I0(addr_out_reg[7]),
        .I1(addr_out_reg[8]),
        .I2(addr_out_reg[6]),
        .I3(output_block_start_i_3_n_0),
        .O(output_block_start_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    output_block_start_i_3
       (.I0(addr_out_reg[1]),
        .I1(Q),
        .I2(addr_out_reg[4]),
        .I3(addr_out_reg[5]),
        .I4(addr_out_reg[2]),
        .I5(addr_out_reg[3]),
        .O(output_block_start_i_3_n_0));
  FDRE output_block_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(output_block_start_i_1_n_0),
        .Q(output_block_start),
        .R(1'b0));
  CARRY4 output_wont_overrun2_carry
       (.CI(1'b0),
        .CO({CO,output_wont_overrun2_carry_n_1,output_wont_overrun2_carry_n_2,output_wont_overrun2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_output_wont_overrun2_carry_O_UNCONNECTED[3:0]),
        .S({output_wont_overrun2_carry_i_1_n_0,output_wont_overrun2_carry_i_2_n_0,output_wont_overrun2_carry_i_3_n_0,output_wont_overrun2_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    output_wont_overrun2_carry_i_1
       (.I0(\addr_tlast_reg_n_0_[9] ),
        .I1(addr_out_reg[9]),
        .O(output_wont_overrun2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_wont_overrun2_carry_i_2
       (.I0(\addr_tlast_reg_n_0_[8] ),
        .I1(addr_out_reg[8]),
        .I2(addr_out_reg[6]),
        .I3(\addr_tlast_reg_n_0_[6] ),
        .I4(addr_out_reg[7]),
        .I5(\addr_tlast_reg_n_0_[7] ),
        .O(output_wont_overrun2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_wont_overrun2_carry_i_3
       (.I0(\addr_tlast_reg_n_0_[5] ),
        .I1(addr_out_reg[5]),
        .I2(addr_out_reg[3]),
        .I3(\addr_tlast_reg_n_0_[3] ),
        .I4(addr_out_reg[4]),
        .I5(\addr_tlast_reg_n_0_[4] ),
        .O(output_wont_overrun2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_wont_overrun2_carry_i_4
       (.I0(\addr_tlast_reg_n_0_[2] ),
        .I1(addr_out_reg[2]),
        .I2(Q),
        .I3(\addr_tlast_reg_n_0_[0] ),
        .I4(addr_out_reg[1]),
        .I5(\addr_tlast_reg_n_0_[1] ),
        .O(output_wont_overrun2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00F200F3000000F3)) 
    output_wont_overrun_i_1
       (.I0(output_wont_overrun_i_2_n_0),
        .I1(output_wont_overrun_i_3_n_0),
        .I2(output_wont_overrun_i_4_n_0),
        .I3(output_wont_overrun_reg_0),
        .I4(p_8_in),
        .I5(output_wont_overrun_reg_1),
        .O(output_wont_overrun_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF7DD7FF)) 
    output_wont_overrun_i_2
       (.I0(output_block_second_to_end),
        .I1(addr_in[10]),
        .I2(addr_out_reg__0),
        .I3(addr_out_reg[9]),
        .I4(addr_in[9]),
        .O(output_wont_overrun_i_2_n_0));
  LUT5 #(
    .INIT(32'hEBAAAAEB)) 
    output_wont_overrun_i_3
       (.I0(out_tlast_reg_1[1]),
        .I1(addr_out_reg[9]),
        .I2(addr_in[9]),
        .I3(addr_out_reg__0),
        .I4(addr_in[10]),
        .O(output_wont_overrun_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    output_wont_overrun_i_4
       (.I0(got_tlast_reg_0),
        .I1(out_tlast_reg_1[1]),
        .O(output_wont_overrun_i_4_n_0));
  FDRE output_wont_overrun_reg
       (.C(clk),
        .CE(1'b1),
        .D(output_wont_overrun_i_1_n_0),
        .Q(output_wont_overrun_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module block_design_sd_host_0_clock_divider
   (Q,
    SR,
    E,
    clk);
  output [0:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \divide.ctr[6]_i_3_n_0 ;
  wire \divide.ctr_reg_n_0_[0] ;
  wire \divide.ctr_reg_n_0_[1] ;
  wire \divide.ctr_reg_n_0_[2] ;
  wire \divide.ctr_reg_n_0_[3] ;
  wire \divide.ctr_reg_n_0_[4] ;
  wire \divide.ctr_reg_n_0_[5] ;
  wire [6:0]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divide.ctr[0]_i_1 
       (.I0(\divide.ctr_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \divide.ctr[1]_i_1 
       (.I0(\divide.ctr_reg_n_0_[0] ),
        .I1(\divide.ctr_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \divide.ctr[2]_i_1 
       (.I0(\divide.ctr_reg_n_0_[2] ),
        .I1(\divide.ctr_reg_n_0_[1] ),
        .I2(\divide.ctr_reg_n_0_[0] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \divide.ctr[3]_i_1 
       (.I0(\divide.ctr_reg_n_0_[3] ),
        .I1(\divide.ctr_reg_n_0_[0] ),
        .I2(\divide.ctr_reg_n_0_[1] ),
        .I3(\divide.ctr_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \divide.ctr[4]_i_1 
       (.I0(\divide.ctr_reg_n_0_[4] ),
        .I1(\divide.ctr_reg_n_0_[2] ),
        .I2(\divide.ctr_reg_n_0_[1] ),
        .I3(\divide.ctr_reg_n_0_[0] ),
        .I4(\divide.ctr_reg_n_0_[3] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \divide.ctr[5]_i_1 
       (.I0(\divide.ctr_reg_n_0_[5] ),
        .I1(\divide.ctr_reg_n_0_[3] ),
        .I2(\divide.ctr_reg_n_0_[0] ),
        .I3(\divide.ctr_reg_n_0_[1] ),
        .I4(\divide.ctr_reg_n_0_[2] ),
        .I5(\divide.ctr_reg_n_0_[4] ),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \divide.ctr[6]_i_2 
       (.I0(Q),
        .I1(\divide.ctr[6]_i_3_n_0 ),
        .I2(\divide.ctr_reg_n_0_[5] ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \divide.ctr[6]_i_3 
       (.I0(\divide.ctr_reg_n_0_[4] ),
        .I1(\divide.ctr_reg_n_0_[2] ),
        .I2(\divide.ctr_reg_n_0_[1] ),
        .I3(\divide.ctr_reg_n_0_[0] ),
        .I4(\divide.ctr_reg_n_0_[3] ),
        .O(\divide.ctr[6]_i_3_n_0 ));
  FDRE \divide.ctr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(\divide.ctr_reg_n_0_[0] ),
        .R(SR));
  FDRE \divide.ctr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(\divide.ctr_reg_n_0_[1] ),
        .R(SR));
  FDRE \divide.ctr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(\divide.ctr_reg_n_0_[2] ),
        .R(SR));
  FDRE \divide.ctr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(\divide.ctr_reg_n_0_[3] ),
        .R(SR));
  FDRE \divide.ctr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(\divide.ctr_reg_n_0_[4] ),
        .R(SR));
  FDRE \divide.ctr_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(\divide.ctr_reg_n_0_[5] ),
        .R(SR));
  FDRE \divide.ctr_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[6]),
        .Q(Q),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module block_design_sd_host_0_clock_divider__parameterized0
   (\divide.ctr_reg[1]_0 ,
    E,
    \divide.ctr_reg[1]_1 ,
    SR,
    clk,
    select_cur,
    Q,
    dat_stop_clock);
  output \divide.ctr_reg[1]_0 ;
  output [0:0]E;
  output \divide.ctr_reg[1]_1 ;
  input [0:0]SR;
  input clk;
  input [1:0]select_cur;
  input [0:0]Q;
  input dat_stop_clock;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire clk_divided_d;
  wire dat_stop_clock;
  wire [0:0]\divide.ctr ;
  wire \divide.ctr[0]_i_1_n_0 ;
  wire \divide.ctr[1]_i_1_n_0 ;
  wire \divide.ctr_reg[1]_0 ;
  wire \divide.ctr_reg[1]_1 ;
  wire [1:0]select_cur;

  FDRE clk_divided_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(\divide.ctr_reg[1]_0 ),
        .Q(clk_divided_d),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    clk_out_i_1
       (.I0(\divide.ctr_reg[1]_0 ),
        .I1(select_cur[1]),
        .I2(Q),
        .I3(select_cur[0]),
        .O(\divide.ctr_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \divide.ctr[0]_i_1 
       (.I0(dat_stop_clock),
        .I1(\divide.ctr ),
        .O(\divide.ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \divide.ctr[1]_i_1 
       (.I0(\divide.ctr ),
        .I1(dat_stop_clock),
        .I2(\divide.ctr_reg[1]_0 ),
        .O(\divide.ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \divide.ctr[6]_i_1 
       (.I0(\divide.ctr_reg[1]_0 ),
        .I1(clk_divided_d),
        .O(E));
  FDRE \divide.ctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide.ctr[0]_i_1_n_0 ),
        .Q(\divide.ctr ),
        .R(SR));
  FDRE \divide.ctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\divide.ctr[1]_i_1_n_0 ),
        .Q(\divide.ctr_reg[1]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "clock_divider_cascaded" *) 
module block_design_sd_host_0_clock_divider_cascaded
   (\divide.ctr_reg[1] ,
    Q,
    \divide.ctr_reg[1]_0 ,
    SR,
    clk,
    select_cur,
    dat_stop_clock);
  output [0:0]\divide.ctr_reg[1] ;
  output [0:0]Q;
  output \divide.ctr_reg[1]_0 ;
  input [0:0]SR;
  input clk;
  input [1:0]select_cur;
  input dat_stop_clock;

  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire dat_stop_clock;
  wire [0:0]\divide.ctr_reg[1] ;
  wire \divide.ctr_reg[1]_0 ;
  wire sel;
  wire [1:0]select_cur;

  block_design_sd_host_0_clock_divider__parameterized0 first_divider
       (.E(sel),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .dat_stop_clock(dat_stop_clock),
        .\divide.ctr_reg[1]_0 (\divide.ctr_reg[1] ),
        .\divide.ctr_reg[1]_1 (\divide.ctr_reg[1]_0 ),
        .select_cur(select_cur));
  block_design_sd_host_0_clock_divider_cascaded__parameterized0 rest_dividers
       (.E(sel),
        .Q(Q),
        .SR(SR),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "clock_divider_cascaded" *) 
module block_design_sd_host_0_clock_divider_cascaded__parameterized0
   (Q,
    SR,
    E,
    clk);
  output [0:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;

  block_design_sd_host_0_clock_divider first_divider
       (.E(E),
        .Q(Q),
        .SR(SR),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "clock_divider_selector" *) 
module block_design_sd_host_0_clock_divider_selector
   (sd_clk_1,
    sd_clk_2_reg,
    SR,
    clk,
    out_t_r_reg,
    dat_stop_clock,
    \reg_written[8]_0 );
  output sd_clk_1;
  output sd_clk_2_reg;
  input [0:0]SR;
  input clk;
  input out_t_r_reg;
  input dat_stop_clock;
  input [1:0]\reg_written[8]_0 ;

  wire [0:0]SR;
  wire clk;
  wire dat_stop_clock;
  wire [1:1]\divide.ctr ;
  wire divider_n_2;
  wire out_t_r_reg;
  wire [1:0]\reg_written[8]_0 ;
  wire sd_clk_1;
  wire sd_clk_2_reg;
  wire [1:0]select_cur;
  wire \select_cur[0]_i_1_n_0 ;
  wire \select_cur[1]_i_1_n_0 ;
  wire taps0;

  FDRE clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(divider_n_2),
        .Q(sd_clk_1),
        .R(SR));
  block_design_sd_host_0_clock_divider_cascaded divider
       (.Q(taps0),
        .SR(SR),
        .clk(clk),
        .dat_stop_clock(dat_stop_clock),
        .\divide.ctr_reg[1] (\divide.ctr ),
        .\divide.ctr_reg[1]_0 (divider_n_2),
        .select_cur(select_cur));
  LUT2 #(
    .INIT(4'h2)) 
    out_d_r_i_1__3
       (.I0(out_t_r_reg),
        .I1(sd_clk_1),
        .O(sd_clk_2_reg));
  LUT6 #(
    .INIT(64'hEE0AEB28FA22FF00)) 
    \select_cur[0]_i_1 
       (.I0(select_cur[0]),
        .I1(select_cur[1]),
        .I2(\reg_written[8]_0 [1]),
        .I3(\reg_written[8]_0 [0]),
        .I4(taps0),
        .I5(\divide.ctr ),
        .O(\select_cur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0ECCCCCDCD0F0F0)) 
    \select_cur[1]_i_1 
       (.I0(select_cur[0]),
        .I1(select_cur[1]),
        .I2(\reg_written[8]_0 [1]),
        .I3(\reg_written[8]_0 [0]),
        .I4(taps0),
        .I5(\divide.ctr ),
        .O(\select_cur[1]_i_1_n_0 ));
  FDRE \select_cur_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\select_cur[0]_i_1_n_0 ),
        .Q(select_cur[0]),
        .R(SR));
  FDRE \select_cur_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\select_cur[1]_i_1_n_0 ),
        .Q(select_cur[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "cmd_writer" *) 
module block_design_sd_host_0_cmd_writer
   (interrupt_bits_set,
    err_index_reg_0,
    err_crc_reg_0,
    err_end_bit_reg_0,
    err_timeout_reg_0,
    I16,
    \resp_out_reg[8]_0 ,
    Q,
    D,
    resp_done_reg_0,
    sd_cmd,
    SR,
    out_d_r_reg,
    clk,
    new_sd_clk,
    resetn,
    err_index_next_reg_0,
    onwrite,
    exp_r2_reg_0,
    \buffer_reg[31]_0 ,
    \rdata_reg[8] ,
    \rdata_reg[8]_0 ,
    \interrupt_bits_saved_reg[0] ,
    s_axi_araddr,
    s_axi_arvalid);
  output [0:0]interrupt_bits_set;
  output err_index_reg_0;
  output err_crc_reg_0;
  output err_end_bit_reg_0;
  output err_timeout_reg_0;
  output [6:0]I16;
  output \resp_out_reg[8]_0 ;
  output [30:0]Q;
  output [0:0]D;
  output resp_done_reg_0;
  inout sd_cmd;
  input [0:0]SR;
  input out_d_r_reg;
  input clk;
  input new_sd_clk;
  input resetn;
  input err_index_next_reg_0;
  input [0:0]onwrite;
  input [6:0]exp_r2_reg_0;
  input [31:0]\buffer_reg[31]_0 ;
  input [0:0]\rdata_reg[8] ;
  input [1:0]\rdata_reg[8]_0 ;
  input [0:0]\interrupt_bits_saved_reg[0] ;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;

  wire [0:0]D;
  wire [6:0]I16;
  wire [30:0]Q;
  wire [0:0]SR;
  wire \buffer[10]_i_1_n_0 ;
  wire \buffer[11]_i_1_n_0 ;
  wire \buffer[12]_i_1_n_0 ;
  wire \buffer[13]_i_1_n_0 ;
  wire \buffer[14]_i_1_n_0 ;
  wire \buffer[15]_i_1_n_0 ;
  wire \buffer[16]_i_1_n_0 ;
  wire \buffer[17]_i_1_n_0 ;
  wire \buffer[18]_i_1_n_0 ;
  wire \buffer[19]_i_1_n_0 ;
  wire \buffer[1]_i_1_n_0 ;
  wire \buffer[20]_i_1_n_0 ;
  wire \buffer[21]_i_1_n_0 ;
  wire \buffer[22]_i_1_n_0 ;
  wire \buffer[23]_i_1_n_0 ;
  wire \buffer[24]_i_1_n_0 ;
  wire \buffer[25]_i_1_n_0 ;
  wire \buffer[26]_i_1_n_0 ;
  wire \buffer[27]_i_1_n_0 ;
  wire \buffer[28]_i_1_n_0 ;
  wire \buffer[29]_i_1_n_0 ;
  wire \buffer[2]_i_1_n_0 ;
  wire \buffer[30]_i_1_n_0 ;
  wire \buffer[31]_i_1_n_0 ;
  wire \buffer[32]_i_1_n_0 ;
  wire \buffer[33]_i_1_n_0 ;
  wire \buffer[34]_i_1_n_0 ;
  wire \buffer[35]_i_1_n_0 ;
  wire \buffer[36]_i_1_n_0 ;
  wire \buffer[37]_i_1_n_0 ;
  wire \buffer[38]_i_1_n_0 ;
  wire \buffer[38]_i_2_n_0 ;
  wire \buffer[38]_i_3_n_0 ;
  wire \buffer[39]_i_1_n_0 ;
  wire \buffer[39]_i_2_n_0 ;
  wire \buffer[3]_i_1_n_0 ;
  wire \buffer[4]_i_1_n_0 ;
  wire \buffer[5]_i_1_n_0 ;
  wire \buffer[6]_i_1_n_0 ;
  wire \buffer[7]_i_1_n_0 ;
  wire \buffer[8]_i_1_n_0 ;
  wire \buffer[9]_i_1_n_0 ;
  wire [31:0]\buffer_reg[31]_0 ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[16] ;
  wire \buffer_reg_n_0_[17] ;
  wire \buffer_reg_n_0_[18] ;
  wire \buffer_reg_n_0_[19] ;
  wire \buffer_reg_n_0_[20] ;
  wire \buffer_reg_n_0_[21] ;
  wire \buffer_reg_n_0_[22] ;
  wire \buffer_reg_n_0_[23] ;
  wire \buffer_reg_n_0_[24] ;
  wire \buffer_reg_n_0_[25] ;
  wire \buffer_reg_n_0_[26] ;
  wire \buffer_reg_n_0_[27] ;
  wire \buffer_reg_n_0_[28] ;
  wire \buffer_reg_n_0_[29] ;
  wire \buffer_reg_n_0_[30] ;
  wire \buffer_reg_n_0_[31] ;
  wire \buffer_reg_n_0_[32] ;
  wire \buffer_reg_n_0_[33] ;
  wire \buffer_reg_n_0_[34] ;
  wire \buffer_reg_n_0_[35] ;
  wire \buffer_reg_n_0_[36] ;
  wire \buffer_reg_n_0_[37] ;
  wire \buffer_reg_n_0_[38] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire clk;
  wire [8:8]cmd_resp_out;
  wire [6:0]counter;
  wire counter0;
  wire counter1;
  wire counter1_carry_n_3;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[6]_i_3_n_0 ;
  wire [5:0]counter_inc;
  wire [6:6]crc;
  wire crc_gen_n_1;
  wire crc_gen_n_3;
  wire [0:0]crc_next1;
  wire err_crc_reg_0;
  wire err_end_bit_i_1_n_0;
  wire err_end_bit_reg_0;
  wire err_index_i_1_n_0;
  wire err_index_next;
  wire err_index_next_i_1_n_0;
  wire err_index_next_i_2_n_0;
  wire err_index_next_reg_0;
  wire err_index_reg_0;
  wire err_timeout_i_1_n_0;
  wire err_timeout_reg_0;
  wire exp_r2_i_1_n_0;
  wire [6:0]exp_r2_reg_0;
  wire exp_r2_reg_n_0;
  wire [0:0]\interrupt_bits_saved_reg[0] ;
  wire [0:0]interrupt_bits_set;
  wire io_raw_n_1;
  wire io_raw_n_2;
  wire io_raw_n_3;
  wire io_raw_n_4;
  wire io_raw_n_5;
  wire io_raw_n_6;
  wire io_raw_n_8;
  wire line_in;
  wire new_sd_clk;
  wire [0:0]onwrite;
  wire out_d_r_reg;
  wire out_d_r_reg0;
  wire p_1_in;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire [0:0]\rdata_reg[8] ;
  wire [1:0]\rdata_reg[8]_0 ;
  wire resetn;
  wire resp_done_i_1_n_0;
  wire resp_done_reg_0;
  wire [31:0]resp_out0;
  wire resp_out_change0;
  wire \resp_out_reg[8]_0 ;
  wire resp_saved_reg_0_3_0_5_i_1_n_0;
  wire resp_saved_reg_0_3_0_5_i_2_n_0;
  wire resp_saved_reg_0_3_0_5_i_3_n_0;
  wire [3:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire sd_cmd;
  wire set_resp_timeout_d;
  wire set_resp_timeout_d_i_1_n_0;
  wire [3:0]state;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire [3:2]NLW_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_resp_saved_reg_0_3_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[10]_i_1 
       (.I0(\buffer_reg[31]_0 [10]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[9] ),
        .O(\buffer[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[11]_i_1 
       (.I0(\buffer_reg[31]_0 [11]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[10] ),
        .O(\buffer[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[12]_i_1 
       (.I0(\buffer_reg[31]_0 [12]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[11] ),
        .O(\buffer[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[13]_i_1 
       (.I0(\buffer_reg[31]_0 [13]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[12] ),
        .O(\buffer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[14]_i_1 
       (.I0(\buffer_reg[31]_0 [14]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[13] ),
        .O(\buffer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[15]_i_1 
       (.I0(\buffer_reg[31]_0 [15]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[14] ),
        .O(\buffer[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[16]_i_1 
       (.I0(\buffer_reg[31]_0 [16]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[15] ),
        .O(\buffer[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[17]_i_1 
       (.I0(\buffer_reg[31]_0 [17]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[16] ),
        .O(\buffer[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[18]_i_1 
       (.I0(\buffer_reg[31]_0 [18]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[17] ),
        .O(\buffer[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[19]_i_1 
       (.I0(\buffer_reg[31]_0 [19]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[18] ),
        .O(\buffer[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[1]_i_1 
       (.I0(\buffer_reg[31]_0 [1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[0]),
        .O(\buffer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[20]_i_1 
       (.I0(\buffer_reg[31]_0 [20]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[19] ),
        .O(\buffer[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[21]_i_1 
       (.I0(\buffer_reg[31]_0 [21]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[20] ),
        .O(\buffer[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[22]_i_1 
       (.I0(\buffer_reg[31]_0 [22]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[21] ),
        .O(\buffer[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[23]_i_1 
       (.I0(\buffer_reg[31]_0 [23]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[22] ),
        .O(\buffer[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[24]_i_1 
       (.I0(\buffer_reg[31]_0 [24]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[23] ),
        .O(\buffer[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[25]_i_1 
       (.I0(\buffer_reg[31]_0 [25]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[24] ),
        .O(\buffer[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[26]_i_1 
       (.I0(\buffer_reg[31]_0 [26]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[25] ),
        .O(\buffer[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[27]_i_1 
       (.I0(\buffer_reg[31]_0 [27]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[26] ),
        .O(\buffer[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[28]_i_1 
       (.I0(\buffer_reg[31]_0 [28]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[27] ),
        .O(\buffer[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[29]_i_1 
       (.I0(\buffer_reg[31]_0 [29]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[28] ),
        .O(\buffer[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[2]_i_1 
       (.I0(\buffer_reg[31]_0 [2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[1]),
        .O(\buffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[30]_i_1 
       (.I0(\buffer_reg[31]_0 [30]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[29] ),
        .O(\buffer[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[31]_i_1 
       (.I0(\buffer_reg[31]_0 [31]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[30] ),
        .O(\buffer[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[32]_i_1 
       (.I0(exp_r2_reg_0[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[31] ),
        .O(\buffer[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[33]_i_1 
       (.I0(exp_r2_reg_0[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[32] ),
        .O(\buffer[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[34]_i_1 
       (.I0(exp_r2_reg_0[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[33] ),
        .O(\buffer[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[35]_i_1 
       (.I0(exp_r2_reg_0[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[34] ),
        .O(\buffer[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[36]_i_1 
       (.I0(exp_r2_reg_0[4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[35] ),
        .O(\buffer[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[37]_i_1 
       (.I0(exp_r2_reg_0[5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[36] ),
        .O(\buffer[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFD57)) 
    \buffer[38]_i_1 
       (.I0(resetn),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\buffer[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAF)) 
    \buffer[38]_i_2 
       (.I0(new_sd_clk),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\buffer[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \buffer[38]_i_3 
       (.I0(\buffer_reg_n_0_[37] ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\buffer[38]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0B08)) 
    \buffer[39]_i_1 
       (.I0(\buffer_reg_n_0_[38] ),
        .I1(new_sd_clk),
        .I2(\buffer[39]_i_2_n_0 ),
        .I3(p_1_in),
        .O(\buffer[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFDFFFD5F)) 
    \buffer[39]_i_2 
       (.I0(resetn),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\buffer[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[3]_i_1 
       (.I0(\buffer_reg[31]_0 [3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[2]),
        .O(\buffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[4]_i_1 
       (.I0(\buffer_reg[31]_0 [4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[3]),
        .O(\buffer[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[5]_i_1 
       (.I0(\buffer_reg[31]_0 [5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[4]),
        .O(\buffer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[6]_i_1 
       (.I0(\buffer_reg[31]_0 [6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[5]),
        .O(\buffer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[7]_i_1 
       (.I0(\buffer_reg[31]_0 [7]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(I16[6]),
        .O(\buffer[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[8]_i_1 
       (.I0(\buffer_reg[31]_0 [8]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[7] ),
        .O(\buffer[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[9]_i_1 
       (.I0(\buffer_reg[31]_0 [9]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\buffer_reg_n_0_[8] ),
        .O(\buffer[9]_i_1_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(io_raw_n_8),
        .Q(I16[0]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[10]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[10] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[11]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[11] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[12]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[12] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[13]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[13] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[14]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[14] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[15]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[15] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[16]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[16] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[17]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[17] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[18]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[18] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[19]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[19] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[1]_i_1_n_0 ),
        .Q(I16[1]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[20]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[20] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[21]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[21] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[22]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[22] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[23]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[23] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[24]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[24] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[25]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[25] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[26]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[26] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[27]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[27] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[28]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[28] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[29]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[29] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[2]_i_1_n_0 ),
        .Q(I16[2]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[30]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[30] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[31]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[31] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[32]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[32] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[33]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[33] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[34]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[34] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[35]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[35] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[36]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[36] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[37]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[37] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[38]_i_3_n_0 ),
        .Q(\buffer_reg_n_0_[38] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\buffer[39]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[3]_i_1_n_0 ),
        .Q(I16[3]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[4]_i_1_n_0 ),
        .Q(I16[4]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[5]_i_1_n_0 ),
        .Q(I16[5]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[6]_i_1_n_0 ),
        .Q(I16[6]),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[7]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[7] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[8]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[8] ),
        .R(\buffer[38]_i_1_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(clk),
        .CE(\buffer[38]_i_2_n_0 ),
        .D(\buffer[9]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[9] ),
        .R(\buffer[38]_i_1_n_0 ));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({NLW_counter1_carry_CO_UNCONNECTED[3:2],counter1,counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,io_raw_n_1,io_raw_n_2}));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(counter_inc[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(counter_inc[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(counter_inc[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(counter_inc[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(counter[4]),
        .O(counter_inc[5]));
  LUT2 #(
    .INIT(4'hB)) 
    \counter[6]_i_1 
       (.I0(counter1),
        .I1(resetn),
        .O(counter0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[6]_i_2 
       (.I0(counter[6]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(\counter[6]_i_3_n_0 ),
        .I4(counter[5]),
        .O(\counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[6]_i_3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[6]_i_3_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[0]),
        .Q(counter[0]),
        .R(counter0));
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
        .Q(counter[3]),
        .R(counter0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(counter0));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[5]),
        .Q(counter[5]),
        .R(counter0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\counter[6]_i_2_n_0 ),
        .Q(counter[6]),
        .R(counter0));
  block_design_sd_host_0_line_crc crc_gen
       (.D(crc_next1),
        .Q(state),
        .clk(clk),
        .\crc_reg[6]_0 (crc),
        .err_crc_reg(crc_gen_n_3),
        .err_crc_reg_0(err_crc_reg_0),
        .err_crc_reg_1(resp_done_i_1_n_0),
        .line_in(line_in),
        .new_sd_clk(new_sd_clk),
        .out_d_r_reg0(out_d_r_reg0),
        .p_1_in(p_1_in),
        .resetn(resetn),
        .set_resp_timeout_d(set_resp_timeout_d),
        .\state_reg[1] (crc_gen_n_1));
  FDRE err_crc_reg
       (.C(clk),
        .CE(1'b1),
        .D(crc_gen_n_3),
        .Q(err_crc_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0030A0A0)) 
    err_end_bit_i_1
       (.I0(err_end_bit_reg_0),
        .I1(I16[0]),
        .I2(resetn),
        .I3(set_resp_timeout_d),
        .I4(resp_done_i_1_n_0),
        .O(err_end_bit_i_1_n_0));
  FDRE err_end_bit_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_end_bit_i_1_n_0),
        .Q(err_end_bit_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00C0A0A0)) 
    err_index_i_1
       (.I0(err_index_reg_0),
        .I1(err_index_next),
        .I2(resetn),
        .I3(set_resp_timeout_d),
        .I4(resp_done_i_1_n_0),
        .O(err_index_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAA2AAAA)) 
    err_index_next_i_1
       (.I0(err_index_next_i_2_n_0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .O(err_index_next_i_1_n_0));
  LUT6 #(
    .INIT(64'hABAAA8AA00000000)) 
    err_index_next_i_2
       (.I0(err_index_next),
        .I1(counter[6]),
        .I2(counter[5]),
        .I3(resp_saved_reg_0_3_0_5_i_2_n_0),
        .I4(err_index_next_reg_0),
        .I5(resetn),
        .O(err_index_next_i_2_n_0));
  FDRE err_index_next_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_index_next_i_1_n_0),
        .Q(err_index_next),
        .R(1'b0));
  FDRE err_index_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_index_i_1_n_0),
        .Q(err_index_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    err_timeout_i_1
       (.I0(set_resp_timeout_d),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(err_timeout_reg_0),
        .O(err_timeout_i_1_n_0));
  FDRE err_timeout_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_timeout_i_1_n_0),
        .Q(err_timeout_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    exp_r2_i_1
       (.I0(exp_r2_reg_0[6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(exp_r2_reg_n_0),
        .O(exp_r2_i_1_n_0));
  FDRE exp_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(exp_r2_i_1_n_0),
        .Q(exp_r2_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \interrupt_bits_saved[0]_i_1 
       (.I0(\interrupt_bits_saved_reg[0] ),
        .I1(interrupt_bits_set),
        .O(D));
  block_design_sd_host_0_sd_io_raw_7 io_raw
       (.D({io_raw_n_3,io_raw_n_4,io_raw_n_5,io_raw_n_6}),
        .Q(state),
        .S({io_raw_n_1,io_raw_n_2}),
        .SR(SR),
        .\buffer_reg[0] (\buffer_reg[31]_0 [0]),
        .clk(clk),
        .\crc_reg[0] (crc_gen_n_1),
        .\crc_reg[0]_0 (crc),
        .in_d_reg_0(crc_next1),
        .line_in(line_in),
        .new_sd_clk(new_sd_clk),
        .out_d_r_reg0(out_d_r_reg0),
        .out_d_r_reg_0(out_d_r_reg),
        .p_1_in(p_1_in),
        .sd_cmd(sd_cmd),
        .\set_reg[12].reg_written_reg[12][0] (io_raw_n_8),
        .\state[0]_i_2_0 (\state[1]_i_5_n_0 ),
        .\state[0]_i_2_1 (\state[0]_i_6_n_0 ),
        .\state[2]_i_2_0 (\state[2]_i_4_n_0 ),
        .\state_reg[0] (\state[0]_i_4_n_0 ),
        .\state_reg[0]_0 (\state[0]_i_5_n_0 ),
        .\state_reg[3] (exp_r2_reg_n_0),
        .\state_reg[3]_0 (\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[0]_i_5 
       (.I0(interrupt_bits_set),
        .I1(\interrupt_bits_saved_reg[0] ),
        .O(resp_done_reg_0));
  LUT6 #(
    .INIT(64'h3F55305530553055)) 
    \rdata[8]_i_2 
       (.I0(cmd_resp_out),
        .I1(\rdata_reg[8] ),
        .I2(\rdata_reg[8]_0 [0]),
        .I3(\rdata_reg[8]_0 [1]),
        .I4(\rdata[8]_i_3_n_0 ),
        .I5(\rdata[8]_i_4_n_0 ),
        .O(\resp_out_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[8]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\rdata[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[8]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\rdata[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    resp_done_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[0]),
        .O(resp_done_i_1_n_0));
  FDRE resp_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(resp_done_i_1_n_0),
        .Q(interrupt_bits_set),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \resp_out[31]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[2]),
        .O(resp_out_change0));
  FDRE \resp_out_reg[0] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \resp_out_reg[10] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[10]),
        .Q(Q[9]),
        .R(SR));
  FDRE \resp_out_reg[11] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[11]),
        .Q(Q[10]),
        .R(SR));
  FDRE \resp_out_reg[12] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[12]),
        .Q(Q[11]),
        .R(SR));
  FDRE \resp_out_reg[13] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[13]),
        .Q(Q[12]),
        .R(SR));
  FDRE \resp_out_reg[14] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[14]),
        .Q(Q[13]),
        .R(SR));
  FDRE \resp_out_reg[15] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[15]),
        .Q(Q[14]),
        .R(SR));
  FDRE \resp_out_reg[16] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[16]),
        .Q(Q[15]),
        .R(SR));
  FDRE \resp_out_reg[17] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[17]),
        .Q(Q[16]),
        .R(SR));
  FDRE \resp_out_reg[18] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[18]),
        .Q(Q[17]),
        .R(SR));
  FDRE \resp_out_reg[19] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[19]),
        .Q(Q[18]),
        .R(SR));
  FDRE \resp_out_reg[1] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \resp_out_reg[20] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[20]),
        .Q(Q[19]),
        .R(SR));
  FDRE \resp_out_reg[21] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[21]),
        .Q(Q[20]),
        .R(SR));
  FDRE \resp_out_reg[22] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[22]),
        .Q(Q[21]),
        .R(SR));
  FDRE \resp_out_reg[23] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[23]),
        .Q(Q[22]),
        .R(SR));
  FDRE \resp_out_reg[24] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[24]),
        .Q(Q[23]),
        .R(SR));
  FDRE \resp_out_reg[25] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[25]),
        .Q(Q[24]),
        .R(SR));
  FDRE \resp_out_reg[26] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[26]),
        .Q(Q[25]),
        .R(SR));
  FDRE \resp_out_reg[27] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[27]),
        .Q(Q[26]),
        .R(SR));
  FDRE \resp_out_reg[28] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[28]),
        .Q(Q[27]),
        .R(SR));
  FDRE \resp_out_reg[29] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[29]),
        .Q(Q[28]),
        .R(SR));
  FDRE \resp_out_reg[2] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \resp_out_reg[30] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[30]),
        .Q(Q[29]),
        .R(SR));
  FDRE \resp_out_reg[31] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[31]),
        .Q(Q[30]),
        .R(SR));
  FDRE \resp_out_reg[3] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \resp_out_reg[4] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \resp_out_reg[5] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \resp_out_reg[6] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \resp_out_reg[7] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \resp_out_reg[8] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[8]),
        .Q(cmd_resp_out),
        .R(SR));
  FDRE \resp_out_reg[9] 
       (.C(clk),
        .CE(resp_out_change0),
        .D(resp_out0[9]),
        .Q(Q[8]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M resp_saved_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA(I16[1:0]),
        .DIB(I16[3:2]),
        .DIC(I16[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[1:0]),
        .DOB(resp_out0[3:2]),
        .DOC(resp_out0[5:4]),
        .DOD(NLW_resp_saved_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    resp_saved_reg_0_3_0_5_i_1
       (.I0(resp_saved_reg_0_3_0_5_i_2_n_0),
        .I1(resp_saved_reg_0_3_0_5_i_3_n_0),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(resp_saved_reg_0_3_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    resp_saved_reg_0_3_0_5_i_2
       (.I0(\counter[6]_i_3_n_0 ),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(counter[3]),
        .I3(counter[4]),
        .I4(state[1]),
        .I5(state[2]),
        .O(resp_saved_reg_0_3_0_5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    resp_saved_reg_0_3_0_5_i_3
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[4]),
        .I3(counter[3]),
        .I4(counter[1]),
        .O(resp_saved_reg_0_3_0_5_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M resp_saved_reg_0_3_12_17
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA({\buffer_reg_n_0_[13] ,\buffer_reg_n_0_[12] }),
        .DIB({\buffer_reg_n_0_[15] ,\buffer_reg_n_0_[14] }),
        .DIC({\buffer_reg_n_0_[17] ,\buffer_reg_n_0_[16] }),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[13:12]),
        .DOB(resp_out0[15:14]),
        .DOC(resp_out0[17:16]),
        .DOD(NLW_resp_saved_reg_0_3_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M resp_saved_reg_0_3_18_23
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA({\buffer_reg_n_0_[19] ,\buffer_reg_n_0_[18] }),
        .DIB({\buffer_reg_n_0_[21] ,\buffer_reg_n_0_[20] }),
        .DIC({\buffer_reg_n_0_[23] ,\buffer_reg_n_0_[22] }),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[19:18]),
        .DOB(resp_out0[21:20]),
        .DOC(resp_out0[23:22]),
        .DOD(NLW_resp_saved_reg_0_3_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M resp_saved_reg_0_3_24_29
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA({\buffer_reg_n_0_[25] ,\buffer_reg_n_0_[24] }),
        .DIB({\buffer_reg_n_0_[27] ,\buffer_reg_n_0_[26] }),
        .DIC({\buffer_reg_n_0_[29] ,\buffer_reg_n_0_[28] }),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[25:24]),
        .DOB(resp_out0[27:26]),
        .DOC(resp_out0[29:28]),
        .DOD(NLW_resp_saved_reg_0_3_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M resp_saved_reg_0_3_30_31
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA({\buffer_reg_n_0_[31] ,\buffer_reg_n_0_[30] }),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[31:30]),
        .DOB(NLW_resp_saved_reg_0_3_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_resp_saved_reg_0_3_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_resp_saved_reg_0_3_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/cmd_writer/resp_saved" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M resp_saved_reg_0_3_6_11
       (.ADDRA({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRB({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRC({1'b0,1'b0,1'b0,s_axi_araddr[1:0]}),
        .ADDRD({1'b0,1'b0,1'b0,counter[6:5]}),
        .DIA({\buffer_reg_n_0_[7] ,I16[6]}),
        .DIB({\buffer_reg_n_0_[9] ,\buffer_reg_n_0_[8] }),
        .DIC({\buffer_reg_n_0_[11] ,\buffer_reg_n_0_[10] }),
        .DID({1'b0,1'b0}),
        .DOA(resp_out0[7:6]),
        .DOB(resp_out0[9:8]),
        .DOC(resp_out0[11:10]),
        .DOD(NLW_resp_saved_reg_0_3_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(resp_saved_reg_0_3_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    set_resp_timeout_d_i_1
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\state[3]_i_3_n_0 ),
        .O(set_resp_timeout_d_i_1_n_0));
  FDRE set_resp_timeout_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(set_resp_timeout_d_i_1_n_0),
        .Q(set_resp_timeout_d),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFF8F8F808A808A8)) 
    \state[0]_i_4 
       (.I0(\rdata[8]_i_4_n_0 ),
        .I1(onwrite),
        .I2(state[0]),
        .I3(new_sd_clk),
        .I4(\state[0]_i_6_n_0 ),
        .I5(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0008000A)) 
    \state[0]_i_5 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\state[1]_i_5_n_0 ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \state[0]_i_6 
       (.I0(counter[5]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[3]),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAAA)) 
    \state[0]_i_7 
       (.I0(crc_gen_n_1),
        .I1(new_sd_clk),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(state[0]),
        .O(\state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[1]_i_5 
       (.I0(new_sd_clk),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \state[2]_i_4 
       (.I0(state[2]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(new_sd_clk),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[3]_i_3 
       (.I0(new_sd_clk),
        .I1(counter[5]),
        .I2(\counter[6]_i_3_n_0 ),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(counter[6]),
        .O(\state[3]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(io_raw_n_6),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(io_raw_n_5),
        .Q(state[1]),
        .R(SR));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(io_raw_n_4),
        .Q(state[2]),
        .R(SR));
  FDRE \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(io_raw_n_3),
        .Q(state[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dat_rw" *) 
module block_design_sd_host_0_dat_rw
   (new_sd_clk,
    dat_stop_clock,
    busy_cleared_reg_0,
    done_reg_0,
    interrupt_bits_set,
    fifo_rewind_block,
    fifo_discard_block,
    D,
    Q,
    \set_reg[11].reg_written_reg[11][31] ,
    interface_out_tvalid,
    block_count_success_overflow_reg_0,
    \counter_reg[0]_0 ,
    \counter_reg[6]_0 ,
    \counter_reg[9]_0 ,
    \counter_reg[7]_0 ,
    \counter_reg[2]_0 ,
    E,
    data_out_tready_0,
    \counter_reg[8]_0 ,
    \counter_reg[6]_1 ,
    \counter_reg[7]_1 ,
    \counter_reg[3]_0 ,
    fifo_out_discard_block_reg_0,
    out_tvalid_reg_0,
    fifo_in_tvalid,
    fifo_in_rewind_block_reg_0,
    \FSM_sequential_state_reg[2]_0 ,
    \interrupt_bits_saved_reg[3] ,
    fifo_out_discard_block_reg_1,
    DIADI,
    \error_code_reg[3]_0 ,
    sd_dat,
    SR,
    out_t_r_reg,
    clk,
    SS,
    no_more_blocks0,
    block_data_done,
    clk_bus_d_reg,
    S,
    no_more_blocks2_carry__1_0,
    no_more_blocks2_carry__2_0,
    no_more_blocks_reg_0,
    fifo_out_tvalid,
    dat_resetn,
    done_i_15_0,
    data_out_tdata,
    p_8_in,
    data_out_tready,
    fifo_almost_full,
    done_i_2,
    done_i_2_0,
    \addr_tlast_reg[0] ,
    data_in_tlast,
    \addr_tlast_reg[0]_0 ,
    data_in_tvalid,
    fifo_in_tready,
    \addr_out_reg[0] ,
    \interrupt_bits_saved_reg[3]_0 ,
    no_more_blocks2_carry__2_1,
    fifo_resetn,
    data_in_tdata,
    in_tlast_saved_reg_0);
  output new_sd_clk;
  output dat_stop_clock;
  output busy_cleared_reg_0;
  output done_reg_0;
  output [1:0]interrupt_bits_set;
  output fifo_rewind_block;
  output fifo_discard_block;
  output [30:0]D;
  output [31:0]Q;
  output [0:0]\set_reg[11].reg_written_reg[11][31] ;
  output interface_out_tvalid;
  output block_count_success_overflow_reg_0;
  output \counter_reg[0]_0 ;
  output \counter_reg[6]_0 ;
  output [3:0]\counter_reg[9]_0 ;
  output \counter_reg[7]_0 ;
  output \counter_reg[2]_0 ;
  output [0:0]E;
  output data_out_tready_0;
  output \counter_reg[8]_0 ;
  output \counter_reg[6]_1 ;
  output \counter_reg[7]_1 ;
  output \counter_reg[3]_0 ;
  output [0:0]fifo_out_discard_block_reg_0;
  output [0:0]out_tvalid_reg_0;
  output fifo_in_tvalid;
  output [0:0]fifo_in_rewind_block_reg_0;
  output [2:0]\FSM_sequential_state_reg[2]_0 ;
  output \interrupt_bits_saved_reg[3] ;
  output [0:0]fifo_out_discard_block_reg_1;
  output [7:0]DIADI;
  output [3:0]\error_code_reg[3]_0 ;
  inout [3:0]sd_dat;
  input [0:0]SR;
  input out_t_r_reg;
  input clk;
  input [0:0]SS;
  input no_more_blocks0;
  input block_data_done;
  input clk_bus_d_reg;
  input [3:0]S;
  input [3:0]no_more_blocks2_carry__1_0;
  input [3:0]no_more_blocks2_carry__2_0;
  input [3:0]no_more_blocks_reg_0;
  input fifo_out_tvalid;
  input dat_resetn;
  input [4:0]done_i_15_0;
  input [7:0]data_out_tdata;
  input p_8_in;
  input data_out_tready;
  input fifo_almost_full;
  input done_i_2;
  input done_i_2_0;
  input [0:0]\addr_tlast_reg[0] ;
  input data_in_tlast;
  input \addr_tlast_reg[0]_0 ;
  input data_in_tvalid;
  input fifo_in_tready;
  input [0:0]\addr_out_reg[0] ;
  input [2:0]\interrupt_bits_saved_reg[3]_0 ;
  input [31:0]no_more_blocks2_carry__2_1;
  input fifo_resetn;
  input [7:0]data_in_tdata;
  input in_tlast_saved_reg_0;

  wire [30:0]D;
  wire [7:0]DIADI;
  wire [0:0]E;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_15_n_0 ;
  wire \FSM_sequential_state[3]_i_17_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire [2:0]\FSM_sequential_state_reg[2]_0 ;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [0:0]\addr_out_reg[0] ;
  wire [0:0]\addr_tlast_reg[0] ;
  wire \addr_tlast_reg[0]_0 ;
  wire \block_count_success[0]_i_1_n_0 ;
  wire \block_count_success[31]_i_2_n_0 ;
  wire \block_count_success[31]_i_4_n_0 ;
  wire block_count_success_inc_carry__0_n_0;
  wire block_count_success_inc_carry__0_n_1;
  wire block_count_success_inc_carry__0_n_2;
  wire block_count_success_inc_carry__0_n_3;
  wire block_count_success_inc_carry__1_n_0;
  wire block_count_success_inc_carry__1_n_1;
  wire block_count_success_inc_carry__1_n_2;
  wire block_count_success_inc_carry__1_n_3;
  wire block_count_success_inc_carry__2_n_0;
  wire block_count_success_inc_carry__2_n_1;
  wire block_count_success_inc_carry__2_n_2;
  wire block_count_success_inc_carry__2_n_3;
  wire block_count_success_inc_carry__3_n_0;
  wire block_count_success_inc_carry__3_n_1;
  wire block_count_success_inc_carry__3_n_2;
  wire block_count_success_inc_carry__3_n_3;
  wire block_count_success_inc_carry__4_n_0;
  wire block_count_success_inc_carry__4_n_1;
  wire block_count_success_inc_carry__4_n_2;
  wire block_count_success_inc_carry__4_n_3;
  wire block_count_success_inc_carry__5_n_0;
  wire block_count_success_inc_carry__5_n_1;
  wire block_count_success_inc_carry__5_n_2;
  wire block_count_success_inc_carry__5_n_3;
  wire block_count_success_inc_carry__6_n_0;
  wire block_count_success_inc_carry__6_n_2;
  wire block_count_success_inc_carry__6_n_3;
  wire block_count_success_inc_carry_n_0;
  wire block_count_success_inc_carry_n_1;
  wire block_count_success_inc_carry_n_2;
  wire block_count_success_inc_carry_n_3;
  wire block_count_success_overflow_reg_0;
  wire block_data_done;
  wire buffer0;
  wire \buffer[5]_i_1__0_n_0 ;
  wire \buffer[6]_i_1__0_n_0 ;
  wire \buffer[7]_i_1__0_n_0 ;
  wire [2:0]buffer_line_0;
  wire \buffer_line_0[1]_i_2_n_0 ;
  wire [7:5]buffer_next;
  wire busy_cleared_reg_0;
  wire clk;
  wire clk_bus_d_reg;
  wire [0:0]counter;
  wire counter0;
  wire \counter[9]_i_5_n_0 ;
  wire \counter[9]_i_6_n_0 ;
  wire [7:1]counter__0;
  wire [9:0]counter_inc;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[6]_0 ;
  wire \counter_reg[6]_1 ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[8]_0 ;
  wire [3:0]\counter_reg[9]_0 ;
  wire [3:1]crc_good_line;
  wire dat_resetn;
  wire dat_stop_clock;
  wire [7:0]data_in_tdata;
  wire data_in_tlast;
  wire data_in_tvalid;
  wire [7:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tready_0;
  wire done_i_11_n_0;
  wire done_i_14_n_0;
  wire [4:0]done_i_15_0;
  wire done_i_16_n_0;
  wire done_i_17_n_0;
  wire done_i_2;
  wire done_i_2_0;
  wire done_i_4_n_0;
  wire done_i_6_n_0;
  wire done_i_8_n_0;
  wire done_i_9_n_0;
  wire done_new_next;
  wire done_reg_0;
  wire \error_code[1]_i_2_n_0 ;
  wire [3:2]error_code_next;
  wire [3:0]\error_code_reg[3]_0 ;
  wire fifo_almost_full;
  wire fifo_discard_block;
  wire fifo_in_rewind_block0;
  wire [0:0]fifo_in_rewind_block_reg_0;
  wire fifo_in_tready;
  wire fifo_in_tvalid;
  wire fifo_out_discard_block0;
  wire [0:0]fifo_out_discard_block_reg_0;
  wire [0:0]fifo_out_discard_block_reg_1;
  wire fifo_out_tvalid;
  wire fifo_resetn;
  wire fifo_rewind_block;
  wire \get_crc[0].crc_gen_n_1 ;
  wire \get_crc[3].crc_gen_n_1 ;
  wire good_block_transferred;
  wire in_tlast_saved;
  wire in_tlast_saved_reg_0;
  wire [7:0]interface_out_tdata;
  wire interface_out_tlast;
  wire interface_out_tvalid;
  wire \interrupt_bits_saved_reg[3] ;
  wire [2:0]\interrupt_bits_saved_reg[3]_0 ;
  wire [1:0]interrupt_bits_set;
  wire \io_raw[0].io_raw_n_11 ;
  wire \io_raw[0].io_raw_n_12 ;
  wire \io_raw[0].io_raw_n_19 ;
  wire \io_raw[0].io_raw_n_2 ;
  wire \io_raw[0].io_raw_n_20 ;
  wire \io_raw[0].io_raw_n_21 ;
  wire \io_raw[0].io_raw_n_22 ;
  wire \io_raw[0].io_raw_n_3 ;
  wire \io_raw[0].io_raw_n_4 ;
  wire \io_raw[0].io_raw_n_5 ;
  wire \io_raw[0].io_raw_n_6 ;
  wire \io_raw[0].io_raw_n_7 ;
  wire \io_raw[0].io_raw_n_9 ;
  wire \io_raw[1].io_raw_n_1 ;
  wire \io_raw[1].io_raw_n_2 ;
  wire \io_raw[2].io_raw_n_1 ;
  wire \io_raw[3].io_raw_n_1 ;
  wire line_in_0;
  wire [3:0]line_out_d;
  wire [3:0]line_out_d_next;
  wire [3:3]line_out_en;
  wire [3:3]line_out_en_next;
  wire new_sd_clk;
  wire no_more_blocks;
  wire no_more_blocks0;
  wire no_more_blocks2_carry__0_i_1_n_0;
  wire no_more_blocks2_carry__0_i_2_n_0;
  wire no_more_blocks2_carry__0_i_3_n_0;
  wire no_more_blocks2_carry__0_i_4_n_0;
  wire no_more_blocks2_carry__0_n_0;
  wire no_more_blocks2_carry__0_n_1;
  wire no_more_blocks2_carry__0_n_2;
  wire no_more_blocks2_carry__0_n_3;
  wire [3:0]no_more_blocks2_carry__1_0;
  wire no_more_blocks2_carry__1_i_1_n_0;
  wire no_more_blocks2_carry__1_i_2_n_0;
  wire no_more_blocks2_carry__1_i_3_n_0;
  wire no_more_blocks2_carry__1_i_4_n_0;
  wire no_more_blocks2_carry__1_n_0;
  wire no_more_blocks2_carry__1_n_1;
  wire no_more_blocks2_carry__1_n_2;
  wire no_more_blocks2_carry__1_n_3;
  wire [3:0]no_more_blocks2_carry__2_0;
  wire [31:0]no_more_blocks2_carry__2_1;
  wire no_more_blocks2_carry__2_i_1_n_0;
  wire no_more_blocks2_carry__2_i_2_n_0;
  wire no_more_blocks2_carry__2_i_3_n_0;
  wire no_more_blocks2_carry__2_i_4_n_0;
  wire no_more_blocks2_carry__2_n_1;
  wire no_more_blocks2_carry__2_n_2;
  wire no_more_blocks2_carry__2_n_3;
  wire no_more_blocks2_carry_i_1_n_0;
  wire no_more_blocks2_carry_i_2_n_0;
  wire no_more_blocks2_carry_i_3_n_0;
  wire no_more_blocks2_carry_i_4_n_0;
  wire no_more_blocks2_carry_n_0;
  wire no_more_blocks2_carry_n_1;
  wire no_more_blocks2_carry_n_2;
  wire no_more_blocks2_carry_n_3;
  wire [3:0]no_more_blocks_reg_0;
  wire nwr_past;
  wire out_t_r_reg;
  wire out_tdata0;
  wire [0:0]out_tvalid_reg_0;
  wire [3:1]p_1_in;
  wire p_1_out;
  wire p_24_in;
  wire p_3_out;
  wire p_5_out;
  wire p_8_in;
  wire read_check_fail;
  wire [3:0]sd_dat;
  wire [0:0]\set_reg[11].reg_written_reg[11][31] ;
  wire [3:0]state;
  wire stop_clock0;
  wire [2:2]NLW_block_count_success_inc_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_block_count_success_inc_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks2_carry_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_no_more_blocks2_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \FSM_sequential_state[3]_i_15 
       (.I0(\counter_reg[9]_0 [0]),
        .I1(counter__0[3]),
        .I2(counter__0[1]),
        .I3(counter),
        .I4(counter__0[2]),
        .O(\FSM_sequential_state[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_17 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\io_raw[0].io_raw_n_11 ),
        .D(\io_raw[0].io_raw_n_7 ),
        .Q(state[0]),
        .R(SS));
  (* FSM_ENCODED_STATES = "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\io_raw[0].io_raw_n_11 ),
        .D(\io_raw[0].io_raw_n_6 ),
        .Q(state[1]),
        .R(SS));
  (* FSM_ENCODED_STATES = "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\io_raw[0].io_raw_n_11 ),
        .D(\io_raw[0].io_raw_n_5 ),
        .Q(state[2]),
        .R(SS));
  (* FSM_ENCODED_STATES = "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\io_raw[0].io_raw_n_11 ),
        .D(\io_raw[0].io_raw_n_4 ),
        .Q(state[3]),
        .R(SS));
  LUT2 #(
    .INIT(4'hB)) 
    \addr_in[8]_i_1 
       (.I0(fifo_discard_block),
        .I1(fifo_resetn),
        .O(fifo_out_discard_block_reg_1));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \addr_in[9]_i_1 
       (.I0(interface_out_tvalid),
        .I1(done_i_15_0[0]),
        .I2(data_in_tvalid),
        .I3(fifo_in_tready),
        .I4(fifo_discard_block),
        .O(out_tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \addr_out[0]_i_1 
       (.I0(fifo_rewind_block),
        .I1(\addr_out_reg[0] ),
        .O(fifo_in_rewind_block_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr_out[10]_i_1 
       (.I0(fifo_rewind_block),
        .I1(p_8_in),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000040444000)) 
    \addr_tlast[9]_i_1 
       (.I0(fifo_discard_block),
        .I1(\addr_tlast_reg[0] ),
        .I2(interface_out_tlast),
        .I3(done_i_15_0[0]),
        .I4(data_in_tlast),
        .I5(\addr_tlast_reg[0]_0 ),
        .O(fifo_out_discard_block_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \block_count_success[0]_i_1 
       (.I0(Q[0]),
        .O(\block_count_success[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \block_count_success[31]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .O(\block_count_success[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \block_count_success[31]_i_4 
       (.I0(counter__0[2]),
        .I1(counter__0[1]),
        .I2(counter),
        .O(\block_count_success[31]_i_4_n_0 ));
  CARRY4 block_count_success_inc_carry
       (.CI(1'b0),
        .CO({block_count_success_inc_carry_n_0,block_count_success_inc_carry_n_1,block_count_success_inc_carry_n_2,block_count_success_inc_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[3:0]),
        .S(Q[4:1]));
  CARRY4 block_count_success_inc_carry__0
       (.CI(block_count_success_inc_carry_n_0),
        .CO({block_count_success_inc_carry__0_n_0,block_count_success_inc_carry__0_n_1,block_count_success_inc_carry__0_n_2,block_count_success_inc_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S(Q[8:5]));
  CARRY4 block_count_success_inc_carry__1
       (.CI(block_count_success_inc_carry__0_n_0),
        .CO({block_count_success_inc_carry__1_n_0,block_count_success_inc_carry__1_n_1,block_count_success_inc_carry__1_n_2,block_count_success_inc_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[11:8]),
        .S(Q[12:9]));
  CARRY4 block_count_success_inc_carry__2
       (.CI(block_count_success_inc_carry__1_n_0),
        .CO({block_count_success_inc_carry__2_n_0,block_count_success_inc_carry__2_n_1,block_count_success_inc_carry__2_n_2,block_count_success_inc_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[15:12]),
        .S(Q[16:13]));
  CARRY4 block_count_success_inc_carry__3
       (.CI(block_count_success_inc_carry__2_n_0),
        .CO({block_count_success_inc_carry__3_n_0,block_count_success_inc_carry__3_n_1,block_count_success_inc_carry__3_n_2,block_count_success_inc_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[19:16]),
        .S(Q[20:17]));
  CARRY4 block_count_success_inc_carry__4
       (.CI(block_count_success_inc_carry__3_n_0),
        .CO({block_count_success_inc_carry__4_n_0,block_count_success_inc_carry__4_n_1,block_count_success_inc_carry__4_n_2,block_count_success_inc_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[23:20]),
        .S(Q[24:21]));
  CARRY4 block_count_success_inc_carry__5
       (.CI(block_count_success_inc_carry__4_n_0),
        .CO({block_count_success_inc_carry__5_n_0,block_count_success_inc_carry__5_n_1,block_count_success_inc_carry__5_n_2,block_count_success_inc_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[27:24]),
        .S(Q[28:25]));
  CARRY4 block_count_success_inc_carry__6
       (.CI(block_count_success_inc_carry__5_n_0),
        .CO({block_count_success_inc_carry__6_n_0,NLW_block_count_success_inc_carry__6_CO_UNCONNECTED[2],block_count_success_inc_carry__6_n_2,block_count_success_inc_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_block_count_success_inc_carry__6_O_UNCONNECTED[3],D[30:28]}),
        .S({1'b1,Q[31:29]}));
  FDRE block_count_success_overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(\io_raw[0].io_raw_n_21 ),
        .Q(block_count_success_overflow_reg_0),
        .R(SS));
  FDRE \block_count_success_reg[0] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(\block_count_success[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SS));
  FDRE \block_count_success_reg[10] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[9]),
        .Q(Q[10]),
        .R(SS));
  FDRE \block_count_success_reg[11] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[10]),
        .Q(Q[11]),
        .R(SS));
  FDRE \block_count_success_reg[12] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[11]),
        .Q(Q[12]),
        .R(SS));
  FDRE \block_count_success_reg[13] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[12]),
        .Q(Q[13]),
        .R(SS));
  FDRE \block_count_success_reg[14] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[13]),
        .Q(Q[14]),
        .R(SS));
  FDRE \block_count_success_reg[15] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[14]),
        .Q(Q[15]),
        .R(SS));
  FDRE \block_count_success_reg[16] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[15]),
        .Q(Q[16]),
        .R(SS));
  FDRE \block_count_success_reg[17] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[16]),
        .Q(Q[17]),
        .R(SS));
  FDRE \block_count_success_reg[18] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[17]),
        .Q(Q[18]),
        .R(SS));
  FDRE \block_count_success_reg[19] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[18]),
        .Q(Q[19]),
        .R(SS));
  FDRE \block_count_success_reg[1] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[0]),
        .Q(Q[1]),
        .R(SS));
  FDRE \block_count_success_reg[20] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[19]),
        .Q(Q[20]),
        .R(SS));
  FDRE \block_count_success_reg[21] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[20]),
        .Q(Q[21]),
        .R(SS));
  FDRE \block_count_success_reg[22] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[21]),
        .Q(Q[22]),
        .R(SS));
  FDRE \block_count_success_reg[23] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[22]),
        .Q(Q[23]),
        .R(SS));
  FDRE \block_count_success_reg[24] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[23]),
        .Q(Q[24]),
        .R(SS));
  FDRE \block_count_success_reg[25] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[24]),
        .Q(Q[25]),
        .R(SS));
  FDRE \block_count_success_reg[26] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[25]),
        .Q(Q[26]),
        .R(SS));
  FDRE \block_count_success_reg[27] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[26]),
        .Q(Q[27]),
        .R(SS));
  FDRE \block_count_success_reg[28] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[27]),
        .Q(Q[28]),
        .R(SS));
  FDRE \block_count_success_reg[29] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[28]),
        .Q(Q[29]),
        .R(SS));
  FDRE \block_count_success_reg[2] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[1]),
        .Q(Q[2]),
        .R(SS));
  FDRE \block_count_success_reg[30] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[29]),
        .Q(Q[30]),
        .R(SS));
  FDRE \block_count_success_reg[31] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[30]),
        .Q(Q[31]),
        .R(SS));
  FDRE \block_count_success_reg[3] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[2]),
        .Q(Q[3]),
        .R(SS));
  FDRE \block_count_success_reg[4] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[3]),
        .Q(Q[4]),
        .R(SS));
  FDRE \block_count_success_reg[5] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[4]),
        .Q(Q[5]),
        .R(SS));
  FDRE \block_count_success_reg[6] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[5]),
        .Q(Q[6]),
        .R(SS));
  FDRE \block_count_success_reg[7] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[6]),
        .Q(Q[7]),
        .R(SS));
  FDRE \block_count_success_reg[8] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[7]),
        .Q(Q[8]),
        .R(SS));
  FDRE \block_count_success_reg[9] 
       (.C(clk),
        .CE(good_block_transferred),
        .D(D[8]),
        .Q(Q[9]),
        .R(SS));
  FDRE block_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(good_block_transferred),
        .Q(interrupt_bits_set[1]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[5]_i_1__0 
       (.I0(buffer_next[5]),
        .I1(\counter_reg[0]_0 ),
        .I2(data_out_tdata[5]),
        .O(\buffer[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[6]_i_1__0 
       (.I0(buffer_next[6]),
        .I1(\counter_reg[0]_0 ),
        .I2(data_out_tdata[6]),
        .O(\buffer[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[7]_i_1__0 
       (.I0(buffer_next[7]),
        .I1(\counter_reg[0]_0 ),
        .I2(data_out_tdata[7]),
        .O(\buffer[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FBB77)) 
    \buffer_line_0[1]_i_1 
       (.I0(state[1]),
        .I1(dat_resetn),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(buffer0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer_line_0[1]_i_2 
       (.I0(buffer_line_0[0]),
        .I1(\counter_reg[0]_0 ),
        .I2(data_out_tdata[4]),
        .O(\buffer_line_0[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFFFFFFFFBF)) 
    \buffer_line_0[1]_i_3 
       (.I0(block_data_done),
        .I1(counter),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\counter_reg[0]_0 ));
  FDRE \buffer_line_0_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\io_raw[0].io_raw_n_12 ),
        .Q(buffer_line_0[0]),
        .R(buffer0));
  FDRE \buffer_line_0_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buffer_line_0[1]_i_2_n_0 ),
        .Q(buffer_line_0[1]),
        .R(buffer0));
  FDRE \buffer_line_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\io_raw[0].io_raw_n_9 ),
        .Q(buffer_line_0[2]),
        .R(1'b0));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\io_raw[1].io_raw_n_1 ),
        .Q(buffer_next[5]),
        .R(buffer0));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\io_raw[2].io_raw_n_1 ),
        .Q(buffer_next[6]),
        .R(buffer0));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\io_raw[3].io_raw_n_1 ),
        .Q(buffer_next[7]),
        .R(buffer0));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buffer[5]_i_1__0_n_0 ),
        .Q(p_1_in[1]),
        .R(buffer0));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buffer[6]_i_1__0_n_0 ),
        .Q(p_1_in[2]),
        .R(buffer0));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(\buffer[7]_i_1__0_n_0 ),
        .Q(p_1_in[3]),
        .R(buffer0));
  FDRE busy_cleared_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_24_in),
        .Q(busy_cleared_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter),
        .O(counter_inc[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter),
        .I1(counter__0[1]),
        .O(counter_inc[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(counter),
        .I1(counter__0[1]),
        .I2(counter__0[2]),
        .O(counter_inc[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__1 
       (.I0(counter__0[1]),
        .I1(counter),
        .I2(counter__0[2]),
        .I3(counter__0[3]),
        .O(counter_inc[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1__0 
       (.I0(counter__0[2]),
        .I1(counter),
        .I2(counter__0[1]),
        .I3(counter__0[3]),
        .I4(\counter_reg[9]_0 [0]),
        .O(counter_inc[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1__0 
       (.I0(\counter_reg[9]_0 [1]),
        .I1(counter__0[2]),
        .I2(counter),
        .I3(counter__0[1]),
        .I4(counter__0[3]),
        .I5(\counter_reg[9]_0 [0]),
        .O(counter_inc[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1__0 
       (.I0(\counter[9]_i_6_n_0 ),
        .I1(counter__0[6]),
        .O(counter_inc[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter__0[6]),
        .I1(\counter[9]_i_6_n_0 ),
        .I2(counter__0[7]),
        .O(counter_inc[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \counter[8]_i_1 
       (.I0(counter__0[7]),
        .I1(\counter[9]_i_6_n_0 ),
        .I2(counter__0[6]),
        .I3(\counter_reg[9]_0 [2]),
        .O(counter_inc[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \counter[9]_i_2 
       (.I0(\counter_reg[9]_0 [2]),
        .I1(counter__0[6]),
        .I2(\counter[9]_i_6_n_0 ),
        .I3(counter__0[7]),
        .I4(\counter_reg[9]_0 [3]),
        .O(counter_inc[9]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h4404FFFF)) 
    \counter[9]_i_5 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(dat_resetn),
        .O(\counter[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_6 
       (.I0(\counter_reg[9]_0 [1]),
        .I1(counter__0[2]),
        .I2(counter),
        .I3(counter__0[1]),
        .I4(counter__0[3]),
        .I5(\counter_reg[9]_0 [0]),
        .O(\counter[9]_i_6_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[0]),
        .Q(counter),
        .R(counter0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[1]),
        .Q(counter__0[1]),
        .R(counter0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[2]),
        .Q(counter__0[2]),
        .R(counter0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[3]),
        .Q(counter__0[3]),
        .R(counter0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[4]),
        .Q(\counter_reg[9]_0 [0]),
        .R(counter0));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[5]),
        .Q(\counter_reg[9]_0 [1]),
        .R(counter0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[6]),
        .Q(counter__0[6]),
        .R(counter0));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[7]),
        .Q(counter__0[7]),
        .R(counter0));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[8]),
        .Q(\counter_reg[9]_0 [2]),
        .R(counter0));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(counter_inc[9]),
        .Q(\counter_reg[9]_0 [3]),
        .R(counter0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    done_i_11
       (.I0(buffer_line_0[2]),
        .I1(buffer_line_0[1]),
        .I2(buffer_line_0[0]),
        .O(done_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    done_i_14
       (.I0(counter__0[3]),
        .I1(counter__0[2]),
        .I2(counter),
        .I3(counter__0[1]),
        .O(done_i_14_n_0));
  LUT6 #(
    .INIT(64'hCCCCDEEECCCCCFFC)) 
    done_i_15
       (.I0(counter__0[6]),
        .I1(done_i_16_n_0),
        .I2(done_i_17_n_0),
        .I3(\counter_reg[9]_0 [1]),
        .I4(done_i_15_0[3]),
        .I5(done_i_15_0[2]),
        .O(\counter_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    done_i_16
       (.I0(done_i_15_0[4]),
        .I1(counter__0[2]),
        .I2(counter),
        .I3(counter__0[1]),
        .I4(counter__0[3]),
        .I5(\counter_reg[9]_0 [0]),
        .O(done_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    done_i_17
       (.I0(\counter_reg[9]_0 [0]),
        .I1(counter__0[3]),
        .I2(counter__0[1]),
        .I3(counter),
        .I4(counter__0[2]),
        .O(done_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    done_i_4
       (.I0(state[3]),
        .I1(state[2]),
        .O(done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_i_6
       (.I0(state[0]),
        .I1(state[1]),
        .O(done_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    done_i_8
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(done_i_8_n_0));
  LUT6 #(
    .INIT(64'h022202220222AAAA)) 
    done_i_9
       (.I0(counter),
        .I1(done_i_15_0[1]),
        .I2(\counter_reg[9]_0 [3]),
        .I3(\counter_reg[8]_0 ),
        .I4(done_i_2),
        .I5(done_i_2_0),
        .O(done_i_9_n_0));
  FDRE done_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_new_next),
        .Q(interrupt_bits_set[0]),
        .R(SS));
  FDRE done_reg
       (.C(clk),
        .CE(done_new_next),
        .D(done_new_next),
        .Q(done_reg_0),
        .R(SS));
  LUT2 #(
    .INIT(4'h1)) 
    \error_code[1]_i_2 
       (.I0(read_check_fail),
        .I1(state[3]),
        .O(\error_code[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h0FFFF100)) 
    \error_code[2]_i_1 
       (.I0(read_check_fail),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(error_code_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \error_code[3]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(read_check_fail),
        .O(error_code_next[3]));
  FDRE \error_code_reg[0] 
       (.C(clk),
        .CE(done_new_next),
        .D(\io_raw[0].io_raw_n_3 ),
        .Q(\error_code_reg[3]_0 [0]),
        .R(SS));
  FDRE \error_code_reg[1] 
       (.C(clk),
        .CE(done_new_next),
        .D(\io_raw[0].io_raw_n_2 ),
        .Q(\error_code_reg[3]_0 [1]),
        .R(SS));
  FDRE \error_code_reg[2] 
       (.C(clk),
        .CE(done_new_next),
        .D(error_code_next[2]),
        .Q(\error_code_reg[3]_0 [2]),
        .R(SS));
  FDRE \error_code_reg[3] 
       (.C(clk),
        .CE(done_new_next),
        .D(error_code_next[3]),
        .Q(\error_code_reg[3]_0 [3]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    fifo_in_rewind_block_i_1
       (.I0(done_i_15_0[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .O(fifo_in_rewind_block0));
  FDRE fifo_in_rewind_block_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_in_rewind_block0),
        .Q(fifo_rewind_block),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    fifo_out_discard_block_i_1
       (.I0(done_i_15_0[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .O(fifo_out_discard_block0));
  FDRE fifo_out_discard_block_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_out_discard_block0),
        .Q(fifo_discard_block),
        .R(SS));
  block_design_sd_host_0_line_crc__parameterized0 \get_crc[0].crc_gen 
       (.D(line_out_d_next[0]),
        .Q(state[1:0]),
        .SR(\get_crc[3].crc_gen_n_1 ),
        .buffer_line_0(buffer_line_0[1]),
        .clk(clk),
        .good_reg_0(new_sd_clk),
        .line_in_0(line_in_0),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .read_check_fail(read_check_fail),
        .read_check_fail_reg(crc_good_line[1]),
        .read_check_fail_reg_0(\io_raw[1].io_raw_n_2 ),
        .read_line_reg(\get_crc[0].crc_gen_n_1 ));
  block_design_sd_host_0_line_crc__parameterized0_1 \get_crc[1].crc_gen 
       (.D(line_out_d_next[1]),
        .Q(state[1:0]),
        .SR(\get_crc[3].crc_gen_n_1 ),
        .clk(clk),
        .\crc_reg[12]_0 (p_1_in[1]),
        .good_reg_0(crc_good_line[1]),
        .good_reg_1(new_sd_clk),
        .p_5_out(p_5_out));
  block_design_sd_host_0_line_crc__parameterized0_2 \get_crc[2].crc_gen 
       (.D(line_out_d_next[2]),
        .Q(state[1:0]),
        .SR(\get_crc[3].crc_gen_n_1 ),
        .clk(clk),
        .crc_good_line(crc_good_line[2]),
        .\crc_reg[12]_0 (p_1_in[2]),
        .good_reg_0(new_sd_clk),
        .p_3_out(p_3_out));
  block_design_sd_host_0_line_crc__parameterized0_3 \get_crc[3].crc_gen 
       (.D(line_out_d_next[3]),
        .Q(state),
        .SR(\get_crc[3].crc_gen_n_1 ),
        .clk(clk),
        .crc_good_line(crc_good_line[3]),
        .\crc_reg[12]_0 (p_1_in[3]),
        .dat_resetn(dat_resetn),
        .good_reg_0(new_sd_clk),
        .p_1_out(p_1_out));
  FDRE in_tlast_saved_reg
       (.C(clk),
        .CE(1'b1),
        .D(\io_raw[0].io_raw_n_20 ),
        .Q(in_tlast_saved),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \interrupt_bits_saved[1]_i_1 
       (.I0(\interrupt_bits_saved_reg[3]_0 [0]),
        .I1(interrupt_bits_set[0]),
        .O(\FSM_sequential_state_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \interrupt_bits_saved[2]_i_1 
       (.I0(\interrupt_bits_saved_reg[3]_0 [1]),
        .I1(interrupt_bits_set[1]),
        .O(\FSM_sequential_state_reg[2]_0 [1]));
  block_design_sd_host_0_sd_io_raw \io_raw[0].io_raw 
       (.CO(block_count_success_inc_carry__6_n_0),
        .D({\io_raw[0].io_raw_n_2 ,\io_raw[0].io_raw_n_3 }),
        .E(\io_raw[0].io_raw_n_11 ),
        .\FSM_sequential_state[3]_i_4_0 (\FSM_sequential_state[3]_i_15_n_0 ),
        .\FSM_sequential_state[3]_i_7_0 (\FSM_sequential_state[3]_i_17_n_0 ),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[3]_i_5_n_0 ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[3]_i_11_n_0 ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2]_0 [2]),
        .\FSM_sequential_state_reg[2]_0 (\io_raw[0].io_raw_n_22 ),
        .\FSM_sequential_state_reg[2]_1 (done_i_15_0[0]),
        .\FSM_sequential_state_reg[3] ({\io_raw[0].io_raw_n_4 ,\io_raw[0].io_raw_n_5 ,\io_raw[0].io_raw_n_6 ,\io_raw[0].io_raw_n_7 }),
        .\FSM_sequential_state_reg[3]_0 (out_tdata0),
        .Q(state),
        .SR(SR),
        .block_count_success_overflow_reg(\io_raw[0].io_raw_n_21 ),
        .block_count_success_overflow_reg_0(block_count_success_overflow_reg_0),
        .block_data_done(block_data_done),
        .block_done_reg(\block_count_success[31]_i_2_n_0 ),
        .block_done_reg_0(interface_out_tvalid),
        .block_done_reg_1(\block_count_success[31]_i_4_n_0 ),
        .buffer0(buffer0),
        .buffer_line_0(buffer_line_0),
        .\buffer_line_0_reg[1] (\io_raw[0].io_raw_n_9 ),
        .clk(clk),
        .clk_bus_d_reg_0(clk_bus_d_reg),
        .data_out_tdata(data_out_tdata[0]),
        .data_out_tready(data_out_tready),
        .data_out_tready_0(data_out_tready_0),
        .done_i_7_0(done_i_14_n_0),
        .done_new_next(done_new_next),
        .done_reg(done_i_4_n_0),
        .done_reg_0(done_i_6_n_0),
        .done_reg_1(done_i_8_n_0),
        .done_reg_2(done_i_9_n_0),
        .done_reg_3(done_i_11_n_0),
        .\error_code_reg[1] (\counter_reg[0]_0 ),
        .\error_code_reg[1]_0 (\error_code[1]_i_2_n_0 ),
        .fifo_in_tready(fifo_in_tready),
        .fifo_out_tvalid(fifo_out_tvalid),
        .good_block_transferred(good_block_transferred),
        .in_d_reg_0(\io_raw[0].io_raw_n_12 ),
        .in_tlast_saved(in_tlast_saved),
        .in_tlast_saved_reg(\io_raw[0].io_raw_n_20 ),
        .in_tlast_saved_reg_0(in_tlast_saved_reg_0),
        .in_tready_reg(\io_raw[0].io_raw_n_19 ),
        .\interrupt_bits_saved_reg[3] (\interrupt_bits_saved_reg[3] ),
        .\interrupt_bits_saved_reg[3]_0 (busy_cleared_reg_0),
        .\interrupt_bits_saved_reg[3]_1 (\interrupt_bits_saved_reg[3]_0 [2]),
        .line_in_0(line_in_0),
        .line_out_en(line_out_en),
        .no_more_blocks(no_more_blocks),
        .nwr_past(nwr_past),
        .nwr_past_reg({counter__0[6],\counter_reg[9]_0 [0],counter__0[2:1],counter}),
        .nwr_past_reg_0(\counter[9]_i_5_n_0 ),
        .nwr_past_reg_1(\counter[9]_i_6_n_0 ),
        .out_d_r_reg_0(line_out_d[0]),
        .out_t_r_reg_0(out_t_r_reg),
        .p_24_in(p_24_in),
        .read_check_fail(read_check_fail),
        .read_line_reg_0(new_sd_clk),
        .read_line_reg_1(counter0),
        .sd_dat(sd_dat[0]));
  block_design_sd_host_0_sd_io_raw_4 \io_raw[1].io_raw 
       (.D(\io_raw[1].io_raw_n_1 ),
        .Q(line_out_d[1]),
        .SR(SR),
        .\buffer_reg[1] (\counter_reg[0]_0 ),
        .clk(clk),
        .crc_good_line(crc_good_line[3:2]),
        .data_out_tdata(data_out_tdata[1]),
        .in_d_reg_0(\io_raw[1].io_raw_n_2 ),
        .in_d_reg_1(new_sd_clk),
        .line_out_en(line_out_en),
        .out_t_r_reg_0(out_t_r_reg),
        .p_5_out(p_5_out),
        .read_check_fail_reg(line_in_0),
        .sd_dat(sd_dat[1]));
  block_design_sd_host_0_sd_io_raw_5 \io_raw[2].io_raw 
       (.D(\io_raw[2].io_raw_n_1 ),
        .Q(line_out_d[2]),
        .SR(SR),
        .\buffer_reg[2] (\counter_reg[0]_0 ),
        .clk(clk),
        .data_out_tdata(data_out_tdata[2]),
        .in_d_reg_0(new_sd_clk),
        .line_out_en(line_out_en),
        .out_t_r_reg_0(out_t_r_reg),
        .p_3_out(p_3_out),
        .sd_dat(sd_dat[2]));
  block_design_sd_host_0_sd_io_raw_6 \io_raw[3].io_raw 
       (.D(\io_raw[3].io_raw_n_1 ),
        .Q(line_out_d[3]),
        .SR(SR),
        .\buffer_reg[3] (\counter_reg[0]_0 ),
        .clk(clk),
        .data_out_tdata(data_out_tdata[3]),
        .in_d_reg_0(new_sd_clk),
        .line_out_en(line_out_en),
        .out_t_r_reg_0(out_t_r_reg),
        .p_1_out(p_1_out),
        .sd_dat(sd_dat[3]));
  FDSE \line_out_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_out_d_next[0]),
        .Q(line_out_d[0]),
        .S(SS));
  FDSE \line_out_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(line_out_d_next[1]),
        .Q(line_out_d[1]),
        .S(SS));
  FDSE \line_out_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(line_out_d_next[2]),
        .Q(line_out_d[2]),
        .S(SS));
  FDSE \line_out_d_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(line_out_d_next[3]),
        .Q(line_out_d[3]),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0C70)) 
    \line_out_en[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(line_out_en_next));
  FDRE \line_out_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(line_out_en_next),
        .Q(line_out_en),
        .R(SS));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_1
       (.I0(interface_out_tvalid),
        .I1(done_i_15_0[0]),
        .I2(data_in_tvalid),
        .O(fifo_in_tvalid));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_10
       (.I0(interface_out_tdata[1]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[1]),
        .O(DIADI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_11
       (.I0(interface_out_tdata[0]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[0]),
        .O(DIADI[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_4
       (.I0(interface_out_tdata[7]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[7]),
        .O(DIADI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_5
       (.I0(interface_out_tdata[6]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[6]),
        .O(DIADI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_6
       (.I0(interface_out_tdata[5]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[5]),
        .O(DIADI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_7
       (.I0(interface_out_tdata[4]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[4]),
        .O(DIADI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_8
       (.I0(interface_out_tdata[3]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[3]),
        .O(DIADI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_9
       (.I0(interface_out_tdata[2]),
        .I1(done_i_15_0[0]),
        .I2(data_in_tdata[2]),
        .O(DIADI[2]));
  CARRY4 no_more_blocks2_carry
       (.CI(1'b0),
        .CO({no_more_blocks2_carry_n_0,no_more_blocks2_carry_n_1,no_more_blocks2_carry_n_2,no_more_blocks2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({no_more_blocks2_carry_i_1_n_0,no_more_blocks2_carry_i_2_n_0,no_more_blocks2_carry_i_3_n_0,no_more_blocks2_carry_i_4_n_0}),
        .O(NLW_no_more_blocks2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 no_more_blocks2_carry__0
       (.CI(no_more_blocks2_carry_n_0),
        .CO({no_more_blocks2_carry__0_n_0,no_more_blocks2_carry__0_n_1,no_more_blocks2_carry__0_n_2,no_more_blocks2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks2_carry__0_i_1_n_0,no_more_blocks2_carry__0_i_2_n_0,no_more_blocks2_carry__0_i_3_n_0,no_more_blocks2_carry__0_i_4_n_0}),
        .O(NLW_no_more_blocks2_carry__0_O_UNCONNECTED[3:0]),
        .S(no_more_blocks2_carry__1_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__0_i_1
       (.I0(D[14]),
        .I1(no_more_blocks2_carry__2_1[15]),
        .I2(D[13]),
        .I3(no_more_blocks2_carry__2_1[14]),
        .O(no_more_blocks2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__0_i_2
       (.I0(D[12]),
        .I1(no_more_blocks2_carry__2_1[13]),
        .I2(D[11]),
        .I3(no_more_blocks2_carry__2_1[12]),
        .O(no_more_blocks2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__0_i_3
       (.I0(D[10]),
        .I1(no_more_blocks2_carry__2_1[11]),
        .I2(D[9]),
        .I3(no_more_blocks2_carry__2_1[10]),
        .O(no_more_blocks2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__0_i_4
       (.I0(D[8]),
        .I1(no_more_blocks2_carry__2_1[9]),
        .I2(D[7]),
        .I3(no_more_blocks2_carry__2_1[8]),
        .O(no_more_blocks2_carry__0_i_4_n_0));
  CARRY4 no_more_blocks2_carry__1
       (.CI(no_more_blocks2_carry__0_n_0),
        .CO({no_more_blocks2_carry__1_n_0,no_more_blocks2_carry__1_n_1,no_more_blocks2_carry__1_n_2,no_more_blocks2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks2_carry__1_i_1_n_0,no_more_blocks2_carry__1_i_2_n_0,no_more_blocks2_carry__1_i_3_n_0,no_more_blocks2_carry__1_i_4_n_0}),
        .O(NLW_no_more_blocks2_carry__1_O_UNCONNECTED[3:0]),
        .S(no_more_blocks2_carry__2_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__1_i_1
       (.I0(D[22]),
        .I1(no_more_blocks2_carry__2_1[23]),
        .I2(D[21]),
        .I3(no_more_blocks2_carry__2_1[22]),
        .O(no_more_blocks2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__1_i_2
       (.I0(D[20]),
        .I1(no_more_blocks2_carry__2_1[21]),
        .I2(D[19]),
        .I3(no_more_blocks2_carry__2_1[20]),
        .O(no_more_blocks2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__1_i_3
       (.I0(D[18]),
        .I1(no_more_blocks2_carry__2_1[19]),
        .I2(D[17]),
        .I3(no_more_blocks2_carry__2_1[18]),
        .O(no_more_blocks2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__1_i_4
       (.I0(D[16]),
        .I1(no_more_blocks2_carry__2_1[17]),
        .I2(D[15]),
        .I3(no_more_blocks2_carry__2_1[16]),
        .O(no_more_blocks2_carry__1_i_4_n_0));
  CARRY4 no_more_blocks2_carry__2
       (.CI(no_more_blocks2_carry__1_n_0),
        .CO({\set_reg[11].reg_written_reg[11][31] ,no_more_blocks2_carry__2_n_1,no_more_blocks2_carry__2_n_2,no_more_blocks2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({no_more_blocks2_carry__2_i_1_n_0,no_more_blocks2_carry__2_i_2_n_0,no_more_blocks2_carry__2_i_3_n_0,no_more_blocks2_carry__2_i_4_n_0}),
        .O(NLW_no_more_blocks2_carry__2_O_UNCONNECTED[3:0]),
        .S(no_more_blocks_reg_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__2_i_1
       (.I0(D[30]),
        .I1(no_more_blocks2_carry__2_1[31]),
        .I2(D[29]),
        .I3(no_more_blocks2_carry__2_1[30]),
        .O(no_more_blocks2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__2_i_2
       (.I0(D[28]),
        .I1(no_more_blocks2_carry__2_1[29]),
        .I2(D[27]),
        .I3(no_more_blocks2_carry__2_1[28]),
        .O(no_more_blocks2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__2_i_3
       (.I0(D[26]),
        .I1(no_more_blocks2_carry__2_1[27]),
        .I2(D[25]),
        .I3(no_more_blocks2_carry__2_1[26]),
        .O(no_more_blocks2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry__2_i_4
       (.I0(D[24]),
        .I1(no_more_blocks2_carry__2_1[25]),
        .I2(D[23]),
        .I3(no_more_blocks2_carry__2_1[24]),
        .O(no_more_blocks2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry_i_1
       (.I0(D[6]),
        .I1(no_more_blocks2_carry__2_1[7]),
        .I2(D[5]),
        .I3(no_more_blocks2_carry__2_1[6]),
        .O(no_more_blocks2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry_i_2
       (.I0(D[4]),
        .I1(no_more_blocks2_carry__2_1[5]),
        .I2(D[3]),
        .I3(no_more_blocks2_carry__2_1[4]),
        .O(no_more_blocks2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    no_more_blocks2_carry_i_3
       (.I0(D[2]),
        .I1(no_more_blocks2_carry__2_1[3]),
        .I2(D[1]),
        .I3(no_more_blocks2_carry__2_1[2]),
        .O(no_more_blocks2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    no_more_blocks2_carry_i_4
       (.I0(D[0]),
        .I1(no_more_blocks2_carry__2_1[1]),
        .I2(Q[0]),
        .I3(no_more_blocks2_carry__2_1[0]),
        .O(no_more_blocks2_carry_i_4_n_0));
  FDRE no_more_blocks_reg
       (.C(clk),
        .CE(good_block_transferred),
        .D(no_more_blocks0),
        .Q(no_more_blocks),
        .R(SS));
  FDRE nwr_past_reg
       (.C(clk),
        .CE(1'b1),
        .D(\io_raw[0].io_raw_n_22 ),
        .Q(nwr_past),
        .R(1'b0));
  FDRE \out_tdata_reg[0] 
       (.C(clk),
        .CE(out_tdata0),
        .D(line_in_0),
        .Q(interface_out_tdata[0]),
        .R(SS));
  FDRE \out_tdata_reg[1] 
       (.C(clk),
        .CE(out_tdata0),
        .D(p_5_out),
        .Q(interface_out_tdata[1]),
        .R(SS));
  FDRE \out_tdata_reg[2] 
       (.C(clk),
        .CE(out_tdata0),
        .D(p_3_out),
        .Q(interface_out_tdata[2]),
        .R(SS));
  FDRE \out_tdata_reg[3] 
       (.C(clk),
        .CE(out_tdata0),
        .D(p_1_out),
        .Q(interface_out_tdata[3]),
        .R(SS));
  FDRE \out_tdata_reg[4] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_line_0[0]),
        .Q(interface_out_tdata[4]),
        .R(SS));
  FDRE \out_tdata_reg[5] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[5]),
        .Q(interface_out_tdata[5]),
        .R(SS));
  FDRE \out_tdata_reg[6] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[6]),
        .Q(interface_out_tdata[6]),
        .R(SS));
  FDRE \out_tdata_reg[7] 
       (.C(clk),
        .CE(out_tdata0),
        .D(buffer_next[7]),
        .Q(interface_out_tdata[7]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    out_tlast_i_10
       (.I0(counter__0[7]),
        .I1(\counter[9]_i_6_n_0 ),
        .I2(counter__0[6]),
        .O(\counter_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    out_tlast_i_11
       (.I0(counter__0[2]),
        .I1(counter),
        .I2(counter__0[1]),
        .I3(counter__0[3]),
        .O(\counter_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    out_tlast_i_5
       (.I0(\counter_reg[9]_0 [2]),
        .I1(counter__0[6]),
        .I2(\counter[9]_i_6_n_0 ),
        .I3(counter__0[7]),
        .O(\counter_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    out_tlast_i_6
       (.I0(counter__0[6]),
        .I1(\counter[9]_i_6_n_0 ),
        .O(\counter_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h65)) 
    out_tlast_i_8
       (.I0(counter__0[7]),
        .I1(\counter[9]_i_6_n_0 ),
        .I2(counter__0[6]),
        .O(\counter_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFC095C3FF3F55C3)) 
    out_tlast_i_9
       (.I0(counter__0[3]),
        .I1(counter__0[1]),
        .I2(counter),
        .I3(done_i_15_0[3]),
        .I4(done_i_15_0[2]),
        .I5(counter__0[2]),
        .O(\counter_reg[3]_0 ));
  FDRE out_tlast_reg
       (.C(clk),
        .CE(out_tdata0),
        .D(block_data_done),
        .Q(interface_out_tlast),
        .R(SS));
  FDRE out_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\io_raw[0].io_raw_n_19 ),
        .Q(interface_out_tvalid),
        .R(SS));
  FDRE read_check_fail_reg
       (.C(clk),
        .CE(1'b1),
        .D(\get_crc[0].crc_gen_n_1 ),
        .Q(read_check_fail),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    stop_clock_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(fifo_almost_full),
        .I3(state[3]),
        .I4(state[2]),
        .O(stop_clock0));
  FDRE stop_clock_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_clock0),
        .Q(dat_stop_clock),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_host_0_line_crc
   (\crc_reg[6]_0 ,
    \state_reg[1] ,
    out_d_r_reg0,
    err_crc_reg,
    Q,
    resetn,
    p_1_in,
    line_in,
    err_crc_reg_0,
    set_resp_timeout_d,
    err_crc_reg_1,
    new_sd_clk,
    clk,
    D);
  output [0:0]\crc_reg[6]_0 ;
  output \state_reg[1] ;
  output out_d_r_reg0;
  output err_crc_reg;
  input [3:0]Q;
  input resetn;
  input p_1_in;
  input line_in;
  input err_crc_reg_0;
  input set_resp_timeout_d;
  input err_crc_reg_1;
  input new_sd_clk;
  input clk;
  input [0:0]D;

  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire [5:0]crc;
  wire \crc[3]_i_2_n_0 ;
  wire \crc[6]_i_1_n_0 ;
  wire [3:3]crc_next;
  wire [0:0]\crc_reg[6]_0 ;
  wire err_crc_i_2_n_0;
  wire err_crc_i_3_n_0;
  wire err_crc_reg;
  wire err_crc_reg_0;
  wire err_crc_reg_1;
  wire line_in;
  wire new_sd_clk;
  wire out_d_r_reg0;
  wire p_1_in;
  wire resetn;
  wire set_resp_timeout_d;
  wire \state_reg[1] ;

  LUT6 #(
    .INIT(64'hA9A69999A9A66666)) 
    \crc[3]_i_1 
       (.I0(crc[2]),
        .I1(\crc_reg[6]_0 ),
        .I2(\crc[3]_i_2_n_0 ),
        .I3(p_1_in),
        .I4(\state_reg[1] ),
        .I5(line_in),
        .O(crc_next));
  LUT2 #(
    .INIT(4'h2)) 
    \crc[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(\crc[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \crc[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'hF9BBFFFF)) 
    \crc[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(resetn),
        .O(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(D),
        .Q(crc[0]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc[0]),
        .Q(crc[1]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc[1]),
        .Q(crc[2]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc_next),
        .Q(crc[3]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc[3]),
        .Q(crc[4]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc[4]),
        .Q(crc[5]),
        .R(\crc[6]_i_1_n_0 ));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(new_sd_clk),
        .D(crc[5]),
        .Q(\crc_reg[6]_0 ),
        .R(\crc[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FC00AA00AA00)) 
    err_crc_i_1
       (.I0(err_crc_reg_0),
        .I1(err_crc_i_2_n_0),
        .I2(err_crc_i_3_n_0),
        .I3(resetn),
        .I4(set_resp_timeout_d),
        .I5(err_crc_reg_1),
        .O(err_crc_reg));
  LUT4 #(
    .INIT(16'hFFFD)) 
    err_crc_i_2
       (.I0(crc[0]),
        .I1(crc[1]),
        .I2(crc[2]),
        .I3(\crc_reg[6]_0 ),
        .O(err_crc_i_2_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    err_crc_i_3
       (.I0(crc[4]),
        .I1(crc[3]),
        .I2(crc[5]),
        .O(err_crc_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFBFBFB)) 
    out_d_r_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\crc_reg[6]_0 ),
        .I4(Q[0]),
        .I5(p_1_in),
        .O(out_d_r_reg0));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_host_0_line_crc__parameterized0
   (D,
    read_line_reg,
    read_check_fail_reg,
    SR,
    good_reg_0,
    clk,
    line_in_0,
    Q,
    buffer_line_0,
    p_1_out,
    p_3_out,
    read_check_fail_reg_0,
    read_check_fail);
  output [0:0]D;
  output read_line_reg;
  input [0:0]read_check_fail_reg;
  input [0:0]SR;
  input good_reg_0;
  input clk;
  input line_in_0;
  input [1:0]Q;
  input [0:0]buffer_line_0;
  input p_1_out;
  input p_3_out;
  input read_check_fail_reg_0;
  input read_check_fail;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]buffer_line_0;
  wire clk;
  wire [0:0]crc_good_line;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
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
  wire good_i_2_n_0;
  wire good_i_3_n_0;
  wire good_i_4_n_0;
  wire good_reg_0;
  wire line_in_0;
  wire [0:0]p_0_in;
  wire p_1_out;
  wire p_2_in;
  wire p_3_out;
  wire read_check_fail;
  wire read_check_fail_i_2_n_0;
  wire [0:0]read_check_fail_reg;
  wire read_check_fail_reg_0;
  wire read_line_reg;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0F12F012)) 
    \crc[0]_i_1__0 
       (.I0(buffer_line_0),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(Q[1]),
        .I4(line_in_0),
        .O(crc_next1));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[12]_i_1 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(line_in_0),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(buffer_line_0),
        .O(crc_next[12]));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[5]_i_1 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(line_in_0),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(buffer_line_0),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_0_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    good_i_1
       (.I0(\crc_reg_n_0_[10] ),
        .I1(\crc_reg_n_0_[9] ),
        .I2(\crc_reg_n_0_[6] ),
        .I3(good_i_2_n_0),
        .I4(good_i_3_n_0),
        .I5(crc_next1),
        .O(p_2_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2
       (.I0(\crc_reg_n_0_[13] ),
        .I1(\crc_reg_n_0_[12] ),
        .I2(\crc_reg_n_0_[14] ),
        .I3(\crc_reg_n_0_[8] ),
        .O(good_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_i_3
       (.I0(\crc_reg_n_0_[3] ),
        .I1(\crc_reg_n_0_[1] ),
        .I2(\crc_reg_n_0_[0] ),
        .I3(\crc_reg_n_0_[2] ),
        .I4(good_i_4_n_0),
        .O(good_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_4
       (.I0(\crc_reg_n_0_[5] ),
        .I1(\crc_reg_n_0_[4] ),
        .I2(\crc_reg_n_0_[7] ),
        .I3(\crc_reg_n_0_[11] ),
        .O(good_i_4_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(good_reg_0),
        .D(p_2_in),
        .Q(crc_good_line),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \line_out_d[0]_i_1 
       (.I0(p_0_in),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(buffer_line_0),
        .O(D));
  LUT4 #(
    .INIT(16'hEFE0)) 
    read_check_fail_i_1
       (.I0(read_check_fail_i_2_n_0),
        .I1(read_check_fail_reg_0),
        .I2(good_reg_0),
        .I3(read_check_fail),
        .O(read_line_reg));
  LUT4 #(
    .INIT(16'h7FFF)) 
    read_check_fail_i_2
       (.I0(crc_good_line),
        .I1(read_check_fail_reg),
        .I2(p_1_out),
        .I3(p_3_out),
        .O(read_check_fail_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_host_0_line_crc__parameterized0_1
   (good_reg_0,
    D,
    SR,
    good_reg_1,
    clk,
    p_5_out,
    Q,
    \crc_reg[12]_0 );
  output [0:0]good_reg_0;
  output [0:0]D;
  input [0:0]SR;
  input good_reg_1;
  input clk;
  input p_5_out;
  input [1:0]Q;
  input [0:0]\crc_reg[12]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [0:0]\crc_reg[12]_0 ;
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
  wire good_i_1__0_n_0;
  wire good_i_2__0_n_0;
  wire good_i_3__0_n_0;
  wire good_i_4__0_n_0;
  wire [0:0]good_reg_0;
  wire good_reg_1;
  wire [1:1]p_0_in;
  wire p_5_out;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0F12F012)) 
    \crc[0]_i_1__1 
       (.I0(\crc_reg[12]_0 ),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(Q[1]),
        .I4(p_5_out),
        .O(crc_next1));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[12]_i_1__0 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(p_5_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[12]));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[5]_i_1__0 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(p_5_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(good_reg_1),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(good_reg_1),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_0_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(good_reg_1),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(good_reg_1),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    good_i_1__0
       (.I0(\crc_reg_n_0_[3] ),
        .I1(\crc_reg_n_0_[13] ),
        .I2(\crc_reg_n_0_[12] ),
        .I3(good_i_2__0_n_0),
        .I4(good_i_3__0_n_0),
        .I5(crc_next1),
        .O(good_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__0
       (.I0(\crc_reg_n_0_[9] ),
        .I1(\crc_reg_n_0_[1] ),
        .I2(\crc_reg_n_0_[14] ),
        .I3(\crc_reg_n_0_[8] ),
        .O(good_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_i_3__0
       (.I0(\crc_reg_n_0_[6] ),
        .I1(\crc_reg_n_0_[10] ),
        .I2(\crc_reg_n_0_[0] ),
        .I3(\crc_reg_n_0_[2] ),
        .I4(good_i_4__0_n_0),
        .O(good_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_4__0
       (.I0(\crc_reg_n_0_[5] ),
        .I1(\crc_reg_n_0_[4] ),
        .I2(\crc_reg_n_0_[7] ),
        .I3(\crc_reg_n_0_[11] ),
        .O(good_i_4__0_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(good_reg_1),
        .D(good_i_1__0_n_0),
        .Q(good_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \line_out_d[1]_i_1 
       (.I0(p_0_in),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\crc_reg[12]_0 ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_host_0_line_crc__parameterized0_2
   (crc_good_line,
    D,
    SR,
    good_reg_0,
    clk,
    p_3_out,
    Q,
    \crc_reg[12]_0 );
  output [0:0]crc_good_line;
  output [0:0]D;
  input [0:0]SR;
  input good_reg_0;
  input clk;
  input p_3_out;
  input [1:0]Q;
  input [0:0]\crc_reg[12]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]crc_good_line;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [0:0]\crc_reg[12]_0 ;
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
  wire good_i_1__1_n_0;
  wire good_i_2__1_n_0;
  wire good_i_3__1_n_0;
  wire good_i_4__1_n_0;
  wire good_reg_0;
  wire [2:2]p_0_in;
  wire p_3_out;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0F12F012)) 
    \crc[0]_i_1__2 
       (.I0(\crc_reg[12]_0 ),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(Q[1]),
        .I4(p_3_out),
        .O(crc_next1));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[12]_i_1__1 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(p_3_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[12]));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[5]_i_1__1 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(p_3_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_0_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    good_i_1__1
       (.I0(\crc_reg_n_0_[3] ),
        .I1(\crc_reg_n_0_[13] ),
        .I2(\crc_reg_n_0_[12] ),
        .I3(good_i_2__1_n_0),
        .I4(good_i_3__1_n_0),
        .I5(crc_next1),
        .O(good_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__1
       (.I0(\crc_reg_n_0_[9] ),
        .I1(\crc_reg_n_0_[1] ),
        .I2(\crc_reg_n_0_[14] ),
        .I3(\crc_reg_n_0_[8] ),
        .O(good_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_i_3__1
       (.I0(\crc_reg_n_0_[6] ),
        .I1(\crc_reg_n_0_[10] ),
        .I2(\crc_reg_n_0_[0] ),
        .I3(\crc_reg_n_0_[2] ),
        .I4(good_i_4__1_n_0),
        .O(good_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_4__1
       (.I0(\crc_reg_n_0_[5] ),
        .I1(\crc_reg_n_0_[4] ),
        .I2(\crc_reg_n_0_[7] ),
        .I3(\crc_reg_n_0_[11] ),
        .O(good_i_4__1_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(good_reg_0),
        .D(good_i_1__1_n_0),
        .Q(crc_good_line),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \line_out_d[2]_i_1 
       (.I0(p_0_in),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\crc_reg[12]_0 ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "line_crc" *) 
module block_design_sd_host_0_line_crc__parameterized0_3
   (crc_good_line,
    SR,
    D,
    good_reg_0,
    clk,
    p_1_out,
    Q,
    \crc_reg[12]_0 ,
    dat_resetn);
  output [0:0]crc_good_line;
  output [0:0]SR;
  output [0:0]D;
  input good_reg_0;
  input clk;
  input p_1_out;
  input [3:0]Q;
  input [0:0]\crc_reg[12]_0 ;
  input dat_resetn;

  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [0:0]crc_good_line;
  wire [12:5]crc_next;
  wire [0:0]crc_next1;
  wire [0:0]\crc_reg[12]_0 ;
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
  wire good_i_1__2_n_0;
  wire good_i_2__2_n_0;
  wire good_i_3__2_n_0;
  wire good_i_4__2_n_0;
  wire good_reg_0;
  wire [3:3]p_0_in;
  wire p_1_out;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0F12F012)) 
    \crc[0]_i_1__3 
       (.I0(\crc_reg[12]_0 ),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(Q[1]),
        .I4(p_1_out),
        .O(crc_next1));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[12]_i_1__2 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(p_1_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[12]));
  LUT4 #(
    .INIT(16'hEBFF)) 
    \crc[15]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(dat_resetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h9A6A9A659A6A956A)) 
    \crc[5]_i_1__2 
       (.I0(\crc_reg_n_0_[4] ),
        .I1(p_1_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(Q[0]),
        .I5(\crc_reg[12]_0 ),
        .O(crc_next[5]));
  FDRE \crc_reg[0] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next1),
        .Q(\crc_reg_n_0_[0] ),
        .R(SR));
  FDRE \crc_reg[10] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[9] ),
        .Q(\crc_reg_n_0_[10] ),
        .R(SR));
  FDRE \crc_reg[11] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[10] ),
        .Q(\crc_reg_n_0_[11] ),
        .R(SR));
  FDRE \crc_reg[12] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[12]),
        .Q(\crc_reg_n_0_[12] ),
        .R(SR));
  FDRE \crc_reg[13] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[12] ),
        .Q(\crc_reg_n_0_[13] ),
        .R(SR));
  FDRE \crc_reg[14] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[13] ),
        .Q(\crc_reg_n_0_[14] ),
        .R(SR));
  FDRE \crc_reg[15] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[14] ),
        .Q(p_0_in),
        .R(SR));
  FDRE \crc_reg[1] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[0] ),
        .Q(\crc_reg_n_0_[1] ),
        .R(SR));
  FDRE \crc_reg[2] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[1] ),
        .Q(\crc_reg_n_0_[2] ),
        .R(SR));
  FDRE \crc_reg[3] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[2] ),
        .Q(\crc_reg_n_0_[3] ),
        .R(SR));
  FDRE \crc_reg[4] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[3] ),
        .Q(\crc_reg_n_0_[4] ),
        .R(SR));
  FDRE \crc_reg[5] 
       (.C(clk),
        .CE(good_reg_0),
        .D(crc_next[5]),
        .Q(\crc_reg_n_0_[5] ),
        .R(SR));
  FDRE \crc_reg[6] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .R(SR));
  FDRE \crc_reg[7] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[6] ),
        .Q(\crc_reg_n_0_[7] ),
        .R(SR));
  FDRE \crc_reg[8] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[7] ),
        .Q(\crc_reg_n_0_[8] ),
        .R(SR));
  FDRE \crc_reg[9] 
       (.C(clk),
        .CE(good_reg_0),
        .D(\crc_reg_n_0_[8] ),
        .Q(\crc_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    good_i_1__2
       (.I0(\crc_reg_n_0_[3] ),
        .I1(\crc_reg_n_0_[13] ),
        .I2(\crc_reg_n_0_[12] ),
        .I3(good_i_2__2_n_0),
        .I4(good_i_3__2_n_0),
        .I5(crc_next1),
        .O(good_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_2__2
       (.I0(\crc_reg_n_0_[9] ),
        .I1(\crc_reg_n_0_[1] ),
        .I2(\crc_reg_n_0_[14] ),
        .I3(\crc_reg_n_0_[8] ),
        .O(good_i_2__2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_i_3__2
       (.I0(\crc_reg_n_0_[6] ),
        .I1(\crc_reg_n_0_[10] ),
        .I2(\crc_reg_n_0_[0] ),
        .I3(\crc_reg_n_0_[2] ),
        .I4(good_i_4__2_n_0),
        .O(good_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_i_4__2
       (.I0(\crc_reg_n_0_[5] ),
        .I1(\crc_reg_n_0_[4] ),
        .I2(\crc_reg_n_0_[7] ),
        .I3(\crc_reg_n_0_[11] ),
        .O(good_i_4__2_n_0));
  FDRE good_reg
       (.C(clk),
        .CE(good_reg_0),
        .D(good_i_1__2_n_0),
        .Q(crc_good_line),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \line_out_d[3]_i_1 
       (.I0(p_0_in),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\crc_reg[12]_0 ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "reset_gen" *) 
module block_design_sd_host_0_reset_gen
   (dat_resetn,
    SS,
    clk,
    Q,
    onwrite,
    resetn,
    \counter_reg[3]_0 );
  output dat_resetn;
  output [0:0]SS;
  input clk;
  input [0:0]Q;
  input [0:0]onwrite;
  input resetn;
  input [0:0]\counter_reg[3]_0 ;

  wire [0:0]Q;
  wire [0:0]SS;
  wire clk;
  wire [3:0]counter;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire [0:0]counter_dec;
  wire [0:0]\counter_reg[3]_0 ;
  wire dat_resetn;
  wire [0:0]onwrite;
  wire p_1_in0_in;
  wire resetn;
  wire resetn_out_i_1__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(dat_resetn),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_dec));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[1]_i_1__1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \counter[2]_i_1__1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[3]_i_2 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(p_1_in0_in));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \counter[3]_i_3 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(\counter[3]_i_3_n_0 ));
  FDSE \counter_reg[0] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(counter_dec),
        .Q(counter[0]),
        .S(\counter_reg[3]_0 ));
  FDSE \counter_reg[1] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(counter[1]),
        .S(\counter_reg[3]_0 ));
  FDSE \counter_reg[2] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(counter[2]),
        .S(\counter_reg[3]_0 ));
  FDSE \counter_reg[3] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[3]_i_3_n_0 ),
        .Q(counter[3]),
        .S(\counter_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    resetn_out_i_1__0
       (.I0(p_1_in0_in),
        .I1(dat_resetn),
        .I2(Q),
        .I3(onwrite),
        .I4(resetn),
        .O(resetn_out_i_1__0_n_0));
  FDRE resetn_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(resetn_out_i_1__0_n_0),
        .Q(dat_resetn),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reset_gen" *) 
module block_design_sd_host_0_reset_gen_0
   (fifo_resetn,
    SR,
    resetn_out_reg_0,
    clk,
    fifo_rewind_block,
    output_wont_overrun_reg,
    Q,
    SS);
  output fifo_resetn;
  output [0:0]SR;
  output resetn_out_reg_0;
  input clk;
  input fifo_rewind_block;
  input output_wont_overrun_reg;
  input [0:0]Q;
  input [0:0]SS;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire clk;
  wire [3:0]counter;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter[3]_i_3__0_n_0 ;
  wire [0:0]counter_dec;
  wire fifo_resetn;
  wire fifo_rewind_block;
  wire output_wont_overrun_reg;
  wire p_1_in0_in;
  wire resetn_out_i_1_n_0;
  wire resetn_out_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_dec));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[1]_i_1__2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \counter[2]_i_1__2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[3]_i_2 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(p_1_in0_in));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \counter[3]_i_3__0 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(\counter[3]_i_3__0_n_0 ));
  FDSE \counter_reg[0] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(counter_dec),
        .Q(counter[0]),
        .S(SS));
  FDSE \counter_reg[1] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(counter[1]),
        .S(SS));
  FDSE \counter_reg[2] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(counter[2]),
        .S(SS));
  FDSE \counter_reg[3] 
       (.C(clk),
        .CE(p_1_in0_in),
        .D(\counter[3]_i_3__0_n_0 ),
        .Q(counter[3]),
        .S(SS));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_3
       (.I0(fifo_resetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hFDDD)) 
    output_wont_overrun_i_5
       (.I0(fifo_resetn),
        .I1(fifo_rewind_block),
        .I2(output_wont_overrun_reg),
        .I3(Q),
        .O(resetn_out_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    resetn_out_i_1
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(fifo_resetn),
        .I5(SS),
        .O(resetn_out_i_1_n_0));
  FDRE resetn_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(resetn_out_i_1_n_0),
        .Q(fifo_resetn),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sd_io_raw" *) 
module block_design_sd_host_0_sd_io_raw
   (line_in_0,
    read_line_reg_0,
    D,
    \FSM_sequential_state_reg[3] ,
    done_new_next,
    \buffer_line_0_reg[1] ,
    good_block_transferred,
    E,
    in_d_reg_0,
    read_line_reg_1,
    data_out_tready_0,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[2] ,
    \interrupt_bits_saved_reg[3] ,
    p_24_in,
    in_tready_reg,
    in_tlast_saved_reg,
    block_count_success_overflow_reg,
    \FSM_sequential_state_reg[2]_0 ,
    sd_dat,
    SR,
    out_t_r_reg_0,
    clk,
    clk_bus_d_reg_0,
    Q,
    \error_code_reg[1] ,
    fifo_out_tvalid,
    \error_code_reg[1]_0 ,
    read_check_fail,
    nwr_past_reg,
    buffer_line_0,
    buffer0,
    block_done_reg,
    block_done_reg_0,
    \FSM_sequential_state_reg[0] ,
    data_out_tdata,
    \FSM_sequential_state_reg[2]_1 ,
    done_reg,
    done_reg_0,
    block_data_done,
    nwr_past_reg_0,
    done_reg_1,
    done_reg_2,
    data_out_tready,
    no_more_blocks,
    \FSM_sequential_state_reg[0]_0 ,
    nwr_past,
    \FSM_sequential_state[3]_i_7_0 ,
    done_i_7_0,
    in_tlast_saved,
    \FSM_sequential_state[3]_i_4_0 ,
    done_reg_3,
    block_done_reg_1,
    \interrupt_bits_saved_reg[3]_0 ,
    \interrupt_bits_saved_reg[3]_1 ,
    fifo_in_tready,
    in_tlast_saved_reg_0,
    CO,
    block_count_success_overflow_reg_0,
    nwr_past_reg_1,
    out_d_r_reg_0,
    line_out_en);
  output line_in_0;
  output read_line_reg_0;
  output [1:0]D;
  output [3:0]\FSM_sequential_state_reg[3] ;
  output done_new_next;
  output \buffer_line_0_reg[1] ;
  output good_block_transferred;
  output [0:0]E;
  output in_d_reg_0;
  output [0:0]read_line_reg_1;
  output data_out_tready_0;
  output [0:0]\FSM_sequential_state_reg[3]_0 ;
  output [0:0]\FSM_sequential_state_reg[2] ;
  output \interrupt_bits_saved_reg[3] ;
  output p_24_in;
  output in_tready_reg;
  output in_tlast_saved_reg;
  output block_count_success_overflow_reg;
  output \FSM_sequential_state_reg[2]_0 ;
  inout [0:0]sd_dat;
  input [0:0]SR;
  input out_t_r_reg_0;
  input clk;
  input clk_bus_d_reg_0;
  input [3:0]Q;
  input \error_code_reg[1] ;
  input fifo_out_tvalid;
  input \error_code_reg[1]_0 ;
  input read_check_fail;
  input [4:0]nwr_past_reg;
  input [2:0]buffer_line_0;
  input buffer0;
  input block_done_reg;
  input block_done_reg_0;
  input \FSM_sequential_state_reg[0] ;
  input [0:0]data_out_tdata;
  input [0:0]\FSM_sequential_state_reg[2]_1 ;
  input done_reg;
  input done_reg_0;
  input block_data_done;
  input nwr_past_reg_0;
  input done_reg_1;
  input done_reg_2;
  input data_out_tready;
  input no_more_blocks;
  input \FSM_sequential_state_reg[0]_0 ;
  input nwr_past;
  input \FSM_sequential_state[3]_i_7_0 ;
  input done_i_7_0;
  input in_tlast_saved;
  input \FSM_sequential_state[3]_i_4_0 ;
  input done_reg_3;
  input block_done_reg_1;
  input \interrupt_bits_saved_reg[3]_0 ;
  input [0:0]\interrupt_bits_saved_reg[3]_1 ;
  input fifo_in_tready;
  input in_tlast_saved_reg_0;
  input [0:0]CO;
  input block_count_success_overflow_reg_0;
  input nwr_past_reg_1;
  input [0:0]out_d_r_reg_0;
  input [0:0]line_out_en;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_14_n_0 ;
  wire \FSM_sequential_state[3]_i_16_n_0 ;
  wire \FSM_sequential_state[3]_i_18_n_0 ;
  wire \FSM_sequential_state[3]_i_4_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_1 ;
  wire [3:0]\FSM_sequential_state_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg[3]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \block_count_success[31]_i_3_n_0 ;
  wire block_count_success_overflow_reg;
  wire block_count_success_overflow_reg_0;
  wire block_data_done;
  wire block_done_reg;
  wire block_done_reg_0;
  wire block_done_reg_1;
  wire buffer0;
  wire [2:0]buffer_line_0;
  wire \buffer_line_0_reg[1] ;
  wire busy_cleared_i_2_n_0;
  wire clk;
  wire clk_bus_d;
  wire clk_bus_d_reg_0;
  wire \counter[9]_i_3_n_0 ;
  wire \counter[9]_i_4_n_0 ;
  wire [0:0]data_out_tdata;
  wire data_out_tready;
  wire data_out_tready_0;
  wire done_i_10_n_0;
  wire done_i_12_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_5_n_0;
  wire done_i_7_0;
  wire done_i_7_n_0;
  wire done_new_next;
  wire done_reg;
  wire done_reg_0;
  wire done_reg_1;
  wire done_reg_2;
  wire done_reg_3;
  wire \error_code_reg[1] ;
  wire \error_code_reg[1]_0 ;
  wire fifo_in_tready;
  wire fifo_out_tvalid;
  wire good_block_transferred;
  wire in_d0;
  wire in_d_reg_0;
  wire in_tlast_saved;
  wire in_tlast_saved_reg;
  wire in_tlast_saved_reg_0;
  wire in_tready_reg;
  wire \interrupt_bits_saved_reg[3] ;
  wire \interrupt_bits_saved_reg[3]_0 ;
  wire [0:0]\interrupt_bits_saved_reg[3]_1 ;
  wire line_i;
  wire \line_i_d_reg_n_0_[0] ;
  wire line_in_0;
  wire [0:0]line_out_en;
  wire \line_out_t_d_reg_n_0_[0] ;
  wire no_more_blocks;
  wire nwr_past;
  wire nwr_past_i_2_n_0;
  wire nwr_past_i_3_n_0;
  wire [4:0]nwr_past_reg;
  wire nwr_past_reg_0;
  wire nwr_past_reg_1;
  wire out_d_r;
  wire out_d_r_reg0;
  wire [0:0]out_d_r_reg_0;
  wire out_t_r;
  wire out_t_r_i_1__0_n_0;
  wire out_t_r_reg_0;
  wire out_tvalid_i_2_n_0;
  wire out_tvalid_i_3_n_0;
  wire p_0_in__0;
  wire p_1_in;
  wire p_24_in;
  wire read_check_fail;
  wire read_line_i_1_n_0;
  wire read_line_reg_0;
  wire [0:0]read_line_reg_1;
  wire [0:0]sd_dat;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(done_new_next),
        .I1(Q[0]),
        .O(\FSM_sequential_state_reg[3] [0]));
  LUT5 #(
    .INIT(32'h0505F030)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(no_more_blocks),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\FSM_sequential_state_reg[3] [1]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(block_done_reg_0),
        .I1(nwr_past_reg[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(read_line_reg_0),
        .I5(Q[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFEFEEEEEAAAB)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(done_new_next),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[3] [2]));
  LUT6 #(
    .INIT(64'h0000000015FFFFFF)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(Q[0]),
        .I1(nwr_past),
        .I2(fifo_out_tvalid),
        .I3(read_line_reg_0),
        .I4(Q[1]),
        .I5(\FSM_sequential_state[3]_i_16_n_0 ),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFEEEEEEEE)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(line_in_0),
        .I3(read_line_reg_0),
        .I4(no_more_blocks),
        .I5(\FSM_sequential_state[3]_i_7_0 ),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(block_data_done),
        .I1(read_line_reg_0),
        .I2(nwr_past_reg[0]),
        .I3(block_done_reg_0),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hD555)) 
    \FSM_sequential_state[3]_i_14 
       (.I0(Q[1]),
        .I1(nwr_past_reg[3]),
        .I2(read_line_reg_0),
        .I3(Q[0]),
        .O(\FSM_sequential_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F1111)) 
    \FSM_sequential_state[3]_i_16 
       (.I0(block_done_reg_0),
        .I1(read_check_fail),
        .I2(no_more_blocks),
        .I3(\FSM_sequential_state[3]_i_18_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_state[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[3]_i_18 
       (.I0(read_line_reg_0),
        .I1(line_in_0),
        .O(\FSM_sequential_state[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF100)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(Q[3]),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .I5(done_new_next),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFEAEAEAE)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(done_new_next),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_sequential_state_reg[3] [3]));
  LUT6 #(
    .INIT(64'h8A8A8A8A8AAA8A8A)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(\FSM_sequential_state[3]_i_9_n_0 ),
        .I2(block_data_done),
        .I3(\error_code_reg[1] ),
        .I4(read_line_reg_0),
        .I5(fifo_out_tvalid),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111111113F000000)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\block_count_success[31]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(line_in_0),
        .I3(read_line_reg_0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\FSM_sequential_state[3]_i_10_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\FSM_sequential_state[3]_i_12_n_0 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_state[3]_i_13_n_0 ),
        .I5(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\FSM_sequential_state[3]_i_4_0 ),
        .I1(Q[0]),
        .I2(read_line_reg_0),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(in_tlast_saved),
        .I1(Q[0]),
        .I2(read_line_reg_0),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000440404044)) 
    \block_count_success[31]_i_1 
       (.I0(Q[1]),
        .I1(block_done_reg),
        .I2(Q[3]),
        .I3(read_check_fail),
        .I4(block_done_reg_0),
        .I5(\block_count_success[31]_i_3_n_0 ),
        .O(good_block_transferred));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \block_count_success[31]_i_3 
       (.I0(buffer_line_0[0]),
        .I1(buffer_line_0[1]),
        .I2(buffer_line_0[2]),
        .I3(read_line_reg_0),
        .I4(block_done_reg_1),
        .O(\block_count_success[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    block_count_success_overflow_i_1
       (.I0(good_block_transferred),
        .I1(CO),
        .I2(block_count_success_overflow_reg_0),
        .O(block_count_success_overflow_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer_line_0[0]_i_1 
       (.I0(line_in_0),
        .I1(\error_code_reg[1] ),
        .I2(data_out_tdata),
        .O(in_d_reg_0));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \buffer_line_0[2]_i_1 
       (.I0(buffer_line_0[1]),
        .I1(\error_code_reg[1] ),
        .I2(read_line_reg_0),
        .I3(buffer_line_0[2]),
        .I4(buffer0),
        .O(\buffer_line_0_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h09)) 
    busy_cleared_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(busy_cleared_i_2_n_0),
        .O(p_24_in));
  LUT6 #(
    .INIT(64'hFFFF1DFFFFFF1D1D)) 
    busy_cleared_i_2
       (.I0(\interrupt_bits_saved_reg[3]_0 ),
        .I1(read_line_reg_0),
        .I2(line_in_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(busy_cleared_i_2_n_0));
  FDRE clk_bus_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_bus_d_reg_0),
        .Q(clk_bus_d),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF20)) 
    \counter[9]_i_1 
       (.I0(read_line_reg_0),
        .I1(Q[0]),
        .I2(\counter[9]_i_3_n_0 ),
        .I3(\counter[9]_i_4_n_0 ),
        .I4(Q[2]),
        .I5(nwr_past_reg_0),
        .O(read_line_reg_1));
  LUT5 #(
    .INIT(32'hAA8A0000)) 
    \counter[9]_i_3 
       (.I0(Q[3]),
        .I1(fifo_out_tvalid),
        .I2(read_line_reg_0),
        .I3(\error_code_reg[1] ),
        .I4(block_data_done),
        .O(\counter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20200000FFF00000)) 
    \counter[9]_i_4 
       (.I0(read_line_reg_0),
        .I1(line_in_0),
        .I2(Q[3]),
        .I3(\FSM_sequential_state[3]_i_13_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\counter[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD00000)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(done_i_3_n_0),
        .I2(done_reg),
        .I3(done_i_5_n_0),
        .I4(done_reg_0),
        .I5(done_i_7_n_0),
        .O(done_new_next));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h87FF)) 
    done_i_10
       (.I0(nwr_past_reg[0]),
        .I1(nwr_past_reg[1]),
        .I2(nwr_past_reg[2]),
        .I3(read_line_reg_0),
        .O(done_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    done_i_12
       (.I0(line_in_0),
        .I1(read_line_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(done_reg),
        .I5(done_i_7_0),
        .O(done_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFBFBFFFFFBFFFF)) 
    done_i_2
       (.I0(fifo_out_tvalid),
        .I1(read_line_reg_0),
        .I2(done_reg_1),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(done_reg_2),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2280)) 
    done_i_3
       (.I0(read_line_reg_0),
        .I1(in_tlast_saved),
        .I2(nwr_past_reg[0]),
        .I3(block_data_done),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'h40F040F040F04000)) 
    done_i_5
       (.I0(done_i_10_n_0),
        .I1(done_reg_3),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(read_check_fail),
        .I5(block_done_reg_0),
        .O(done_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFBAAAAAAABAAA)) 
    done_i_7
       (.I0(done_i_12_n_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(no_more_blocks),
        .I4(Q[1]),
        .I5(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(done_i_7_n_0));
  LUT6 #(
    .INIT(64'h0101510101555155)) 
    \error_code[0]_i_1 
       (.I0(Q[0]),
        .I1(read_check_fail),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\counter[9]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5555555500005545)) 
    \error_code[1]_i_1 
       (.I0(Q[0]),
        .I1(\error_code_reg[1] ),
        .I2(read_line_reg_0),
        .I3(fifo_out_tvalid),
        .I4(Q[2]),
        .I5(\error_code_reg[1]_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    in_d_i_1__0
       (.I0(p_1_in),
        .I1(p_0_in__0),
        .O(in_d0));
  FDSE in_d_reg
       (.C(clk),
        .CE(read_line_reg_0),
        .D(in_d0),
        .Q(line_in_0),
        .S(SR));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    in_tlast_saved_i_1
       (.I0(in_tlast_saved),
        .I1(\error_code_reg[1] ),
        .I2(read_line_reg_0),
        .I3(in_tlast_saved_reg_0),
        .I4(buffer0),
        .O(in_tlast_saved_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFF0041)) 
    \interrupt_bits_saved[3]_i_2 
       (.I0(busy_cleared_i_2_n_0),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\interrupt_bits_saved_reg[3]_0 ),
        .I4(\interrupt_bits_saved_reg[3]_1 ),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h55554554)) 
    interrupt_i_2
       (.I0(\interrupt_bits_saved_reg[3]_1 ),
        .I1(\interrupt_bits_saved_reg[3]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(busy_cleared_i_2_n_0),
        .O(\interrupt_bits_saved_reg[3] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    iobuf
       (.I(out_d_r),
        .IO(sd_dat),
        .O(line_i),
        .T(out_t_r));
  FDSE \line_i_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_i),
        .Q(\line_i_d_reg_n_0_[0] ),
        .S(SR));
  FDSE \line_i_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_i_d_reg_n_0_[0] ),
        .Q(p_1_in),
        .S(SR));
  FDRE \line_out_t_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_t_r),
        .Q(\line_out_t_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \line_out_t_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_out_t_d_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2020202220222022)) 
    nwr_past_i_1
       (.I0(nwr_past_i_2_n_0),
        .I1(nwr_past_reg_0),
        .I2(Q[2]),
        .I3(\counter[9]_i_4_n_0 ),
        .I4(\counter[9]_i_3_n_0 ),
        .I5(nwr_past_i_3_n_0),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFF90)) 
    nwr_past_i_2
       (.I0(nwr_past_reg[4]),
        .I1(nwr_past_reg_1),
        .I2(read_line_reg_0),
        .I3(nwr_past),
        .O(nwr_past_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    nwr_past_i_3
       (.I0(read_line_reg_0),
        .I1(Q[0]),
        .O(nwr_past_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out_d_r_i_1
       (.I0(out_d_r_reg_0),
        .I1(line_out_en),
        .O(out_d_r_reg0));
  FDSE out_d_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_d_r_reg0),
        .Q(out_d_r),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_t_r_i_1__0
       (.I0(out_d_r),
        .I1(line_out_en),
        .O(out_t_r_i_1__0_n_0));
  FDSE out_t_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_t_r_i_1__0_n_0),
        .Q(out_t_r),
        .S(SR));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \out_tdata[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(read_line_reg_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(nwr_past_reg[0]),
        .O(\FSM_sequential_state_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    out_tvalid_i_1__0
       (.I0(fifo_in_tready),
        .I1(out_tvalid_i_2_n_0),
        .I2(block_done_reg_0),
        .O(in_tready_reg));
  LUT6 #(
    .INIT(64'h4444444544444444)) 
    out_tvalid_i_2
       (.I0(Q[0]),
        .I1(out_tvalid_i_3_n_0),
        .I2(Q[3]),
        .I3(read_check_fail),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(out_tvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    out_tvalid_i_3
       (.I0(block_data_done),
        .I1(nwr_past_reg[0]),
        .I2(read_line_reg_0),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(out_tvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \output_block[10]_i_2 
       (.I0(data_out_tready),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(read_line_reg_0),
        .I3(\error_code_reg[1] ),
        .O(data_out_tready_0));
  LUT2 #(
    .INIT(4'h2)) 
    read_line_i_1
       (.I0(clk_bus_d),
        .I1(clk_bus_d_reg_0),
        .O(read_line_i_1_n_0));
  FDRE read_line_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_line_i_1_n_0),
        .Q(read_line_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "sd_io_raw" *) 
module block_design_sd_host_0_sd_io_raw_4
   (p_5_out,
    D,
    in_d_reg_0,
    sd_dat,
    SR,
    in_d_reg_1,
    clk,
    out_t_r_reg_0,
    \buffer_reg[1] ,
    data_out_tdata,
    read_check_fail_reg,
    crc_good_line,
    Q,
    line_out_en);
  output p_5_out;
  output [0:0]D;
  output in_d_reg_0;
  inout [0:0]sd_dat;
  input [0:0]SR;
  input in_d_reg_1;
  input clk;
  input out_t_r_reg_0;
  input \buffer_reg[1] ;
  input [0:0]data_out_tdata;
  input [0:0]read_check_fail_reg;
  input [1:0]crc_good_line;
  input [0:0]Q;
  input [0:0]line_out_en;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \buffer_reg[1] ;
  wire clk;
  wire [1:0]crc_good_line;
  wire [0:0]data_out_tdata;
  wire in_d0;
  wire in_d_reg_0;
  wire in_d_reg_1;
  wire line_i;
  wire \line_i_d_reg_n_0_[0] ;
  wire [0:0]line_out_en;
  wire \line_out_t_d_reg_n_0_[0] ;
  wire out_d_r;
  wire out_d_r_reg0;
  wire out_t_r;
  wire out_t_r_i_1__1_n_0;
  wire out_t_r_reg_0;
  wire p_0_in__0;
  wire p_1_in;
  wire p_5_out;
  wire [0:0]read_check_fail_reg;
  wire [0:0]sd_dat;

  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[1]_i_1__0 
       (.I0(p_5_out),
        .I1(\buffer_reg[1] ),
        .I2(data_out_tdata),
        .O(D));
  LUT2 #(
    .INIT(4'hB)) 
    in_d_i_1__1
       (.I0(p_1_in),
        .I1(p_0_in__0),
        .O(in_d0));
  FDSE in_d_reg
       (.C(clk),
        .CE(in_d_reg_1),
        .D(in_d0),
        .Q(p_5_out),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    iobuf
       (.I(out_d_r),
        .IO(sd_dat),
        .O(line_i),
        .T(out_t_r));
  FDSE \line_i_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_i),
        .Q(\line_i_d_reg_n_0_[0] ),
        .S(SR));
  FDSE \line_i_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_i_d_reg_n_0_[0] ),
        .Q(p_1_in),
        .S(SR));
  FDRE \line_out_t_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_t_r),
        .Q(\line_out_t_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \line_out_t_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_out_t_d_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out_d_r_i_1__0
       (.I0(Q),
        .I1(line_out_en),
        .O(out_d_r_reg0));
  FDSE out_d_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_d_r_reg0),
        .Q(out_d_r),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_t_r_i_1__1
       (.I0(out_d_r),
        .I1(line_out_en),
        .O(out_t_r_i_1__1_n_0));
  FDSE out_t_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_t_r_i_1__1_n_0),
        .Q(out_t_r),
        .S(SR));
  LUT4 #(
    .INIT(16'h7FFF)) 
    read_check_fail_i_3
       (.I0(p_5_out),
        .I1(read_check_fail_reg),
        .I2(crc_good_line[0]),
        .I3(crc_good_line[1]),
        .O(in_d_reg_0));
endmodule

(* ORIG_REF_NAME = "sd_io_raw" *) 
module block_design_sd_host_0_sd_io_raw_5
   (p_3_out,
    D,
    sd_dat,
    SR,
    in_d_reg_0,
    clk,
    out_t_r_reg_0,
    \buffer_reg[2] ,
    data_out_tdata,
    Q,
    line_out_en);
  output p_3_out;
  output [0:0]D;
  inout [0:0]sd_dat;
  input [0:0]SR;
  input in_d_reg_0;
  input clk;
  input out_t_r_reg_0;
  input \buffer_reg[2] ;
  input [0:0]data_out_tdata;
  input [0:0]Q;
  input [0:0]line_out_en;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \buffer_reg[2] ;
  wire clk;
  wire [0:0]data_out_tdata;
  wire in_d0;
  wire in_d_reg_0;
  wire line_i;
  wire \line_i_d_reg_n_0_[0] ;
  wire [0:0]line_out_en;
  wire \line_out_t_d_reg_n_0_[0] ;
  wire out_d_r;
  wire out_d_r_reg0;
  wire out_t_r;
  wire out_t_r_i_1__2_n_0;
  wire out_t_r_reg_0;
  wire p_0_in__0;
  wire p_1_in;
  wire p_3_out;
  wire [0:0]sd_dat;

  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[2]_i_1__0 
       (.I0(p_3_out),
        .I1(\buffer_reg[2] ),
        .I2(data_out_tdata),
        .O(D));
  LUT2 #(
    .INIT(4'hB)) 
    in_d_i_1__2
       (.I0(p_1_in),
        .I1(p_0_in__0),
        .O(in_d0));
  FDSE in_d_reg
       (.C(clk),
        .CE(in_d_reg_0),
        .D(in_d0),
        .Q(p_3_out),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    iobuf
       (.I(out_d_r),
        .IO(sd_dat),
        .O(line_i),
        .T(out_t_r));
  FDSE \line_i_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_i),
        .Q(\line_i_d_reg_n_0_[0] ),
        .S(SR));
  FDSE \line_i_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_i_d_reg_n_0_[0] ),
        .Q(p_1_in),
        .S(SR));
  FDRE \line_out_t_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_t_r),
        .Q(\line_out_t_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \line_out_t_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_out_t_d_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out_d_r_i_1__1
       (.I0(Q),
        .I1(line_out_en),
        .O(out_d_r_reg0));
  FDSE out_d_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_d_r_reg0),
        .Q(out_d_r),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_t_r_i_1__2
       (.I0(out_d_r),
        .I1(line_out_en),
        .O(out_t_r_i_1__2_n_0));
  FDSE out_t_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_t_r_i_1__2_n_0),
        .Q(out_t_r),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "sd_io_raw" *) 
module block_design_sd_host_0_sd_io_raw_6
   (p_1_out,
    D,
    sd_dat,
    SR,
    in_d_reg_0,
    clk,
    out_t_r_reg_0,
    \buffer_reg[3] ,
    data_out_tdata,
    Q,
    line_out_en);
  output p_1_out;
  output [0:0]D;
  inout [0:0]sd_dat;
  input [0:0]SR;
  input in_d_reg_0;
  input clk;
  input out_t_r_reg_0;
  input \buffer_reg[3] ;
  input [0:0]data_out_tdata;
  input [0:0]Q;
  input [0:0]line_out_en;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \buffer_reg[3] ;
  wire clk;
  wire [0:0]data_out_tdata;
  wire in_d0;
  wire in_d_reg_0;
  wire line_i;
  wire \line_i_d_reg_n_0_[0] ;
  wire [0:0]line_out_en;
  wire \line_out_t_d_reg_n_0_[0] ;
  wire out_d_r;
  wire out_d_r_reg0;
  wire out_t_r;
  wire out_t_r_i_1__3_n_0;
  wire out_t_r_reg_0;
  wire p_0_in__0;
  wire p_1_in;
  wire p_1_out;
  wire [0:0]sd_dat;

  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[3]_i_1__0 
       (.I0(p_1_out),
        .I1(\buffer_reg[3] ),
        .I2(data_out_tdata),
        .O(D));
  LUT2 #(
    .INIT(4'hB)) 
    in_d_i_1__3
       (.I0(p_1_in),
        .I1(p_0_in__0),
        .O(in_d0));
  FDSE in_d_reg
       (.C(clk),
        .CE(in_d_reg_0),
        .D(in_d0),
        .Q(p_1_out),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    iobuf
       (.I(out_d_r),
        .IO(sd_dat),
        .O(line_i),
        .T(out_t_r));
  FDSE \line_i_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_i),
        .Q(\line_i_d_reg_n_0_[0] ),
        .S(SR));
  FDSE \line_i_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_i_d_reg_n_0_[0] ),
        .Q(p_1_in),
        .S(SR));
  FDRE \line_out_t_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_t_r),
        .Q(\line_out_t_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \line_out_t_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_out_t_d_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out_d_r_i_1__2
       (.I0(Q),
        .I1(line_out_en),
        .O(out_d_r_reg0));
  FDSE out_d_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_d_r_reg0),
        .Q(out_d_r),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_t_r_i_1__3
       (.I0(out_d_r),
        .I1(line_out_en),
        .O(out_t_r_i_1__3_n_0));
  FDSE out_t_r_reg
       (.C(clk),
        .CE(out_t_r_reg_0),
        .D(out_t_r_i_1__3_n_0),
        .Q(out_t_r),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "sd_io_raw" *) 
module block_design_sd_host_0_sd_io_raw_7
   (line_in,
    S,
    D,
    in_d_reg_0,
    \set_reg[12].reg_written_reg[12][0] ,
    sd_cmd,
    SR,
    out_d_r_reg_0,
    out_d_r_reg0,
    clk,
    new_sd_clk,
    Q,
    \state_reg[3] ,
    \state_reg[3]_0 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state[0]_i_2_0 ,
    \crc_reg[0] ,
    p_1_in,
    \crc_reg[0]_0 ,
    \buffer_reg[0] ,
    \state[0]_i_2_1 ,
    \state[2]_i_2_0 );
  output line_in;
  output [1:0]S;
  output [3:0]D;
  output [0:0]in_d_reg_0;
  output \set_reg[12].reg_written_reg[12][0] ;
  inout sd_cmd;
  input [0:0]SR;
  input out_d_r_reg_0;
  input out_d_r_reg0;
  input clk;
  input new_sd_clk;
  input [3:0]Q;
  input \state_reg[3] ;
  input \state_reg[3]_0 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input \state[0]_i_2_0 ;
  input \crc_reg[0] ;
  input p_1_in;
  input [0:0]\crc_reg[0]_0 ;
  input [0:0]\buffer_reg[0] ;
  input \state[0]_i_2_1 ;
  input \state[2]_i_2_0 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [0:0]\buffer_reg[0] ;
  wire clk;
  wire \crc_reg[0] ;
  wire [0:0]\crc_reg[0]_0 ;
  wire in_d0;
  wire [0:0]in_d_reg_0;
  wire line_i;
  wire \line_i_d_reg_n_0_[0] ;
  wire line_in;
  wire \line_out_t_d_reg_n_0_[0] ;
  wire new_sd_clk;
  wire out_d_r;
  wire out_d_r_reg0;
  wire out_d_r_reg_0;
  wire out_t_r;
  wire out_t_r_i_1_n_0;
  wire p_0_in__0;
  wire p_1_in;
  wire p_1_in_0;
  wire sd_cmd;
  wire \set_reg[12].reg_written_reg[12][0] ;
  wire \state[0]_i_2_0 ;
  wire \state[0]_i_2_1 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_2_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[3] ;
  wire \state_reg[3]_0 ;

  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \buffer[0]_i_1 
       (.I0(\buffer_reg[0] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(line_in),
        .O(\set_reg[12].reg_written_reg[12][0] ));
  LUT6 #(
    .INIT(64'h00030303DFDFDFDF)) 
    counter1_carry_i_1
       (.I0(\state[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\state_reg[3]_0 ),
        .I5(Q[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    counter1_carry_i_2
       (.I0(\state[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state[1]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(\state[2]_i_2_n_0 ),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h1D111D1DE222E2E2)) 
    \crc[0]_i_1 
       (.I0(line_in),
        .I1(\crc_reg[0] ),
        .I2(p_1_in),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\crc_reg[0]_0 ),
        .O(in_d_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    in_d_i_1
       (.I0(p_1_in_0),
        .I1(p_0_in__0),
        .O(in_d0));
  FDSE in_d_reg
       (.C(clk),
        .CE(new_sd_clk),
        .D(in_d0),
        .Q(line_in),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    iobuf
       (.I(out_d_r),
        .IO(sd_cmd),
        .O(line_i),
        .T(out_t_r));
  FDSE \line_i_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(line_i),
        .Q(\line_i_d_reg_n_0_[0] ),
        .S(SR));
  FDSE \line_i_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_i_d_reg_n_0_[0] ),
        .Q(p_1_in_0),
        .S(SR));
  FDRE \line_out_t_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_t_r),
        .Q(\line_out_t_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \line_out_t_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\line_out_t_d_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(SR));
  FDSE out_d_r_reg
       (.C(clk),
        .CE(out_d_r_reg_0),
        .D(out_d_r_reg0),
        .Q(out_d_r),
        .S(SR));
  LUT5 #(
    .INIT(32'hAAA2AA82)) 
    out_t_r_i_1
       (.I0(out_d_r),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(out_t_r_i_1_n_0));
  FDSE out_t_r_reg
       (.C(clk),
        .CE(out_d_r_reg_0),
        .D(out_t_r_i_1_n_0),
        .Q(out_t_r),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h0000FF0D)) 
    \state[0]_i_2 
       (.I0(Q[2]),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state_reg[0] ),
        .I3(Q[3]),
        .I4(\state_reg[0]_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF02255FFFF2255)) 
    \state[0]_i_3 
       (.I0(new_sd_clk),
        .I1(line_in),
        .I2(\state[0]_i_2_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\state[0]_i_2_1 ),
        .O(\state[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFDFFFDFFFFFF0000)) 
    \state[1]_i_2 
       (.I0(\state_reg[3]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\state[1]_i_3_n_0 ),
        .I5(Q[3]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B88B8B8BBB8B8B)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\state[0]_i_2_0 ),
        .I4(Q[0]),
        .I5(new_sd_clk),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99D99999DDDDDD9D)) 
    \state[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(new_sd_clk),
        .I3(line_in),
        .I4(\state_reg[3] ),
        .I5(\state_reg[3]_0 ),
        .O(\state[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCCCCF7FFFFFFF7F)) 
    \state[2]_i_2 
       (.I0(\state_reg[3]_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\state[2]_i_3_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77775777)) 
    \state[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg[3] ),
        .I3(new_sd_clk),
        .I4(line_in),
        .I5(\state[2]_i_2_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0200023002300230)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\state_reg[3]_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h0080)) 
    \state[3]_i_2 
       (.I0(\state_reg[3] ),
        .I1(Q[0]),
        .I2(new_sd_clk),
        .I3(line_in),
        .O(\state[3]_i_2_n_0 ));
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
