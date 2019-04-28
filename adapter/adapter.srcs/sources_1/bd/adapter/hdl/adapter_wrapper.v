//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Apr 28 13:53:19 2019
//Host        : db17480ec9ff running 64-bit unknown
//Command     : generate_target adapter_wrapper.bd
//Design      : adapter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adapter_wrapper
   (reset,
    sd_host_if_clk,
    sd_host_if_cmd,
    sd_host_if_dat,
    sd_host_if_dat3_pullup,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input reset;
  input sd_host_if_clk;
  inout sd_host_if_cmd;
  inout [3:0]sd_host_if_dat;
  output sd_host_if_dat3_pullup;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire reset;
  wire sd_host_if_clk;
  wire sd_host_if_cmd;
  wire [3:0]sd_host_if_dat;
  wire sd_host_if_dat3_pullup;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  adapter adapter_i
       (.reset(reset),
        .sd_host_if_clk(sd_host_if_clk),
        .sd_host_if_cmd(sd_host_if_cmd),
        .sd_host_if_dat(sd_host_if_dat),
        .sd_host_if_dat3_pullup(sd_host_if_dat3_pullup),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
