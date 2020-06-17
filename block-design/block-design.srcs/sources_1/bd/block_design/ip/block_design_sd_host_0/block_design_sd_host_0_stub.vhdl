-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 10:20:37 2020
-- Host        : cd6e0f605377 running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_host_0/block_design_sd_host_0_stub.vhdl
-- Design      : block_design_sd_host_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_design_sd_host_0 is
  Port ( 
    sd_clk : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in_tready : out STD_LOGIC;
    data_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in_tlast : in STD_LOGIC;
    data_in_tvalid : in STD_LOGIC;
    data_out_tvalid : out STD_LOGIC;
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_tlast : out STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end block_design_sd_host_0;

architecture stub of block_design_sd_host_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sd_clk,sd_cmd,sd_dat[3:0],data_in_tready,data_in_tdata[7:0],data_in_tlast,data_in_tvalid,data_out_tvalid,data_out_tdata[7:0],data_out_tlast,data_out_tready,s_axi_awaddr[5:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[5:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,interrupt,clk,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_sd_host,Vivado 2019.2";
begin
end;
