//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sat Jun  6 05:10:27 2020
//Host        : ff48e243dfe3 running 64-bit unknown
//Command     : generate_target block_design_wrapper.bd
//Design      : block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module block_design_wrapper
   (ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    ddr_clock,
    reset,
    sd_device_if_clk,
    sd_device_if_cmd,
    sd_device_if_dat,
    sd_device_if_dat3_pullup,
    sd_device_if_gnd,
    sd_device_interrupt_led,
    sd_device_interrupt_out,
    sd_host_if_clk,
    sd_host_if_cmd,
    sd_host_if_dat,
    sd_host_if_gnd,
    sd_host_interrupt_led,
    sd_host_interrupt_out,
    usb_uart_rxd,
    usb_uart_txd);
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [1:0]ddr3_sdram_dm;
  inout [15:0]ddr3_sdram_dq;
  inout [1:0]ddr3_sdram_dqs_n;
  inout [1:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input ddr_clock;
  input reset;
  input sd_device_if_clk;
  inout sd_device_if_cmd;
  inout [3:0]sd_device_if_dat;
  output sd_device_if_dat3_pullup;
  output [0:0]sd_device_if_gnd;
  output sd_device_interrupt_led;
  output sd_device_interrupt_out;
  output sd_host_if_clk;
  inout sd_host_if_cmd;
  inout [3:0]sd_host_if_dat;
  output [1:0]sd_host_if_gnd;
  output sd_host_interrupt_led;
  output sd_host_interrupt_out;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [13:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [1:0]ddr3_sdram_dm;
  wire [15:0]ddr3_sdram_dq;
  wire [1:0]ddr3_sdram_dqs_n;
  wire [1:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire ddr_clock;
  wire reset;
  wire sd_device_if_clk;
  wire sd_device_if_cmd;
  wire [3:0]sd_device_if_dat;
  wire sd_device_if_dat3_pullup;
  wire [0:0]sd_device_if_gnd;
  wire sd_device_interrupt_led;
  wire sd_device_interrupt_out;
  wire sd_host_if_clk;
  wire sd_host_if_cmd;
  wire [3:0]sd_host_if_dat;
  wire [1:0]sd_host_if_gnd;
  wire sd_host_interrupt_led;
  wire sd_host_interrupt_out;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  block_design block_design_i
       (.ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .ddr_clock(ddr_clock),
        .reset(reset),
        .sd_device_if_clk(sd_device_if_clk),
        .sd_device_if_cmd(sd_device_if_cmd),
        .sd_device_if_dat(sd_device_if_dat),
        .sd_device_if_dat3_pullup(sd_device_if_dat3_pullup),
        .sd_device_if_gnd(sd_device_if_gnd),
        .sd_device_interrupt_led(sd_device_interrupt_led),
        .sd_device_interrupt_out(sd_device_interrupt_out),
        .sd_host_if_clk(sd_host_if_clk),
        .sd_host_if_cmd(sd_host_if_cmd),
        .sd_host_if_dat(sd_host_if_dat),
        .sd_host_if_gnd(sd_host_if_gnd),
        .sd_host_interrupt_led(sd_host_interrupt_led),
        .sd_host_interrupt_out(sd_host_interrupt_out),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
