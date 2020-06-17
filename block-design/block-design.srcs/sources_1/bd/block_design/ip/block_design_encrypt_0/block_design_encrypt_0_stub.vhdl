-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu May 28 08:26:18 2020
-- Host        : e8bdd687b03d running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_encrypt_0/block_design_encrypt_0_stub.vhdl
-- Design      : block_design_encrypt_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_design_encrypt_0 is
  Port ( 
    awvalid : in STD_LOGIC;
    awready : out STD_LOGIC;
    awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wvalid : in STD_LOGIC;
    wready : out STD_LOGIC;
    wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bvalid : out STD_LOGIC;
    bready : in STD_LOGIC;
    bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arvalid : in STD_LOGIC;
    arready : out STD_LOGIC;
    araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rvalid : out STD_LOGIC;
    rready : in STD_LOGIC;
    rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    out_tvalid : out STD_LOGIC;
    in_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    in_tvalid : in STD_LOGIC;
    in_tready : out STD_LOGIC;
    fifo_out_almostfull : in STD_LOGIC;
    fifo_out_resetn : out STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end block_design_encrypt_0;

architecture stub of block_design_encrypt_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "awvalid,awready,awaddr[9:0],wvalid,wready,wdata[31:0],wstrb[3:0],bvalid,bready,bresp[1:0],arvalid,arready,araddr[9:0],rvalid,rready,rdata[31:0],rresp[1:0],out_tdata[127:0],out_tvalid,in_tdata[127:0],in_tvalid,in_tready,fifo_out_almostfull,fifo_out_resetn,clk,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_xts_aes,Vivado 2019.2";
begin
end;
