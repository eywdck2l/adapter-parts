-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Mar 10 07:42:14 2019
-- Host        : a266d8ca0d83 running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/adapter/adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0_stub.vhdl
-- Design      : adapter_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adapter_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end adapter_clk_wiz_1_0;

architecture stub of adapter_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
