//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Jun 26 11:47:23 2019
//Host        : bca19e163b5f running 64-bit unknown
//Command     : generate_target adapter_wrapper.bd
//Design      : adapter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adapter_wrapper
   (reset,
    sd_device_if_clk,
    sd_device_if_cmd,
    sd_device_if_dat,
    sd_device_if_dat3_pullup,
    sd_device_interrupt_led,
    sd_device_interrupt_out,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input reset;
  input sd_device_if_clk;
  inout sd_device_if_cmd;
  inout [3:0]sd_device_if_dat;
  output sd_device_if_dat3_pullup;
  output sd_device_interrupt_led;
  output sd_device_interrupt_out;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire reset;
  wire sd_device_if_clk;
  wire sd_device_if_cmd;
  wire [3:0]sd_device_if_dat;
  wire sd_device_if_dat3_pullup;
  wire sd_device_interrupt_led;
  wire sd_device_interrupt_out;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  adapter adapter_i
       (.reset(reset),
        .sd_device_if_clk(sd_device_if_clk),
        .sd_device_if_cmd(sd_device_if_cmd),
        .sd_device_if_dat(sd_device_if_dat),
        .sd_device_if_dat3_pullup(sd_device_if_dat3_pullup),
        .sd_device_interrupt_led(sd_device_interrupt_led),
        .sd_device_interrupt_out(sd_device_interrupt_out),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
