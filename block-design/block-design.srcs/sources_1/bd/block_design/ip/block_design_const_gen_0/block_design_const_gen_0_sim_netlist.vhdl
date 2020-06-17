-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu May 28 08:12:17 2020
-- Host        : 267b3cf447fb running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_const_gen_0/block_design_const_gen_0_sim_netlist.vhdl
-- Design      : block_design_const_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_const_gen_0_block_design_axi4_lite_intf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    awready_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    arready_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rvalid_reg_0 : out STD_LOGIC;
    resetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[35]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[39]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_transferred_reg[40]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \write_reg[3].write_reg[1].reg_written_reg[13][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1\ : out STD_LOGIC;
    bvalid_reg_0 : out STD_LOGIC;
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out_tvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    \raddr_saved_demux_reg[16]_0\ : in STD_LOGIC;
    resetn : in STD_LOGIC;
    transfer_started : in STD_LOGIC;
    count_resetn : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    more : in STD_LOGIC;
    \count_transferred_reg[3]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_transferred_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data17 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data18 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data19 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_const_gen_0_block_design_axi4_lite_intf : entity is "block_design_axi4_lite_intf";
end block_design_const_gen_0_block_design_axi4_lite_intf;

architecture STRUCTURE of block_design_const_gen_0_block_design_axi4_lite_intf is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arready_i_1_n_0 : STD_LOGIC;
  signal \^arready_reg_0\ : STD_LOGIC;
  signal \^awready_reg_0\ : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal \^bvalid_reg_0\ : STD_LOGIC;
  signal count_target : STD_LOGIC_VECTOR ( 40 downto 0 );
  signal \count_transferred[0]_i_2_n_0\ : STD_LOGIC;
  signal count_transferred_next : STD_LOGIC_VECTOR ( 40 downto 0 );
  signal \count_transferred_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_transferred_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_transferred_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_transferred_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_transferred_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \^data_out_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \more0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \more0_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \more0_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \more0_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \more0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \more0_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \more0_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \more0_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \more0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \more0_carry__1_i_10_n_1\ : STD_LOGIC;
  signal \more0_carry__1_i_10_n_2\ : STD_LOGIC;
  signal \more0_carry__1_i_10_n_3\ : STD_LOGIC;
  signal \more0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \more0_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \more0_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \more0_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \more0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \more0_carry__2_i_10_n_1\ : STD_LOGIC;
  signal \more0_carry__2_i_10_n_2\ : STD_LOGIC;
  signal \more0_carry__2_i_10_n_3\ : STD_LOGIC;
  signal \more0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \more0_carry__2_i_9_n_1\ : STD_LOGIC;
  signal \more0_carry__2_i_9_n_2\ : STD_LOGIC;
  signal \more0_carry__2_i_9_n_3\ : STD_LOGIC;
  signal \more0_carry__3_i_10_n_0\ : STD_LOGIC;
  signal \more0_carry__3_i_10_n_1\ : STD_LOGIC;
  signal \more0_carry__3_i_10_n_2\ : STD_LOGIC;
  signal \more0_carry__3_i_10_n_3\ : STD_LOGIC;
  signal \more0_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \more0_carry__3_i_9_n_1\ : STD_LOGIC;
  signal \more0_carry__3_i_9_n_2\ : STD_LOGIC;
  signal \more0_carry__3_i_9_n_3\ : STD_LOGIC;
  signal more0_carry_i_10_n_0 : STD_LOGIC;
  signal more0_carry_i_10_n_1 : STD_LOGIC;
  signal more0_carry_i_10_n_2 : STD_LOGIC;
  signal more0_carry_i_10_n_3 : STD_LOGIC;
  signal more0_carry_i_11_n_0 : STD_LOGIC;
  signal more0_carry_i_9_n_0 : STD_LOGIC;
  signal more0_carry_i_9_n_1 : STD_LOGIC;
  signal more0_carry_i_9_n_2 : STD_LOGIC;
  signal more0_carry_i_9_n_3 : STD_LOGIC;
  signal \onwrite[0]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_37_in : STD_LOGIC;
  signal p_63_out : STD_LOGIC;
  signal raddr_saved0 : STD_LOGIC;
  signal \raddr_saved_demux_reg[16]_1\ : STD_LOGIC;
  signal read_got_addr : STD_LOGIC;
  signal read_got_addr_next1_out : STD_LOGIC;
  signal \reg_written_cleared[24]_2\ : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal \^rvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal waddr_saved0 : STD_LOGIC;
  signal \waddr_saved[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_saved[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_saved[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_saved_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_saved_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_saved_reg_n_0_[4]\ : STD_LOGIC;
  signal wdata_saved0 : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[7]\ : STD_LOGIC;
  signal wr_tran : STD_LOGIC;
  signal wr_tran_next : STD_LOGIC;
  signal wready_i_1_n_0 : STD_LOGIC;
  signal write_got_addr : STD_LOGIC;
  signal write_got_addr_next4_out : STD_LOGIC;
  signal write_got_data : STD_LOGIC;
  signal write_got_data_next3_out : STD_LOGIC;
  signal \write_reg[0].write_reg[0].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[2].write_reg[0].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[2].write_reg[1].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[2].write_reg[2].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[2].write_reg[3].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[3].write_reg[0].onwrite_ij\ : STD_LOGIC;
  signal \write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0\ : STD_LOGIC;
  signal \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0\ : STD_LOGIC;
  signal \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0\ : STD_LOGIC;
  signal \wstrb_saved_reg_n_0_[0]\ : STD_LOGIC;
  signal \wstrb_saved_reg_n_0_[1]\ : STD_LOGIC;
  signal \wstrb_saved_reg_n_0_[2]\ : STD_LOGIC;
  signal \wstrb_saved_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_count_transferred_reg[40]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_transferred_reg[40]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_more0_carry__4_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__4_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of count_resetn_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of transfer_started_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \waddr_saved[3]_i_1\ : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
  arready_reg_0 <= \^arready_reg_0\;
  awready_reg_0 <= \^awready_reg_0\;
  bvalid_reg_0 <= \^bvalid_reg_0\;
  data_out_tdata(7 downto 0) <= \^data_out_tdata\(7 downto 0);
  resetn_0(0) <= \^resetn_0\(0);
  rvalid_reg_0 <= \^rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF15FFFF"
    )
        port map (
      I0 => read_got_addr,
      I1 => s_axi_arvalid,
      I2 => \^arready_reg_0\,
      I3 => s_axi_rready,
      I4 => \^rvalid_reg_0\,
      O => arready_i_1_n_0
    );
arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arready_i_1_n_0,
      Q => \^arready_reg_0\,
      R => \^sr\(0)
    );
awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEE0EEE0EFFFF"
    )
        port map (
      I0 => write_got_data,
      I1 => wdata_saved0,
      I2 => \^bvalid_reg_0\,
      I3 => s_axi_bready,
      I4 => waddr_saved0,
      I5 => write_got_addr,
      O => p_0_in
    );
awready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^awready_reg_0\,
      I1 => s_axi_awvalid,
      O => waddr_saved0
    );
awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => \^awready_reg_0\,
      R => \^sr\(0)
    );
bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB0BBB0BBB00000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^bvalid_reg_0\,
      I2 => wdata_saved0,
      I3 => write_got_data,
      I4 => write_got_addr,
      I5 => waddr_saved0,
      O => bvalid_i_1_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => \^bvalid_reg_0\,
      R => \^sr\(0)
    );
count_resetn_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \reg_written_cleared[24]_2\,
      I1 => transfer_started,
      I2 => wr_tran,
      O => \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0\
    );
\count_transferred[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => data_out_tready,
      I1 => transfer_started,
      I2 => more,
      I3 => \onwrite[0]_0\,
      I4 => \count_transferred_reg[3]\,
      O => \count_transferred[0]_i_2_n_0\
    );
\count_transferred_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_transferred_reg[0]_i_1_n_0\,
      CO(2) => \count_transferred_reg[0]_i_1_n_1\,
      CO(1) => \count_transferred_reg[0]_i_1_n_2\,
      CO(0) => \count_transferred_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_transferred_reg[3]\,
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \count_transferred[0]_i_2_n_0\
    );
\count_transferred_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[8]_i_1_n_0\,
      CO(3) => \count_transferred_reg[12]_i_1_n_0\,
      CO(2) => \count_transferred_reg[12]_i_1_n_1\,
      CO(1) => \count_transferred_reg[12]_i_1_n_2\,
      CO(0) => \count_transferred_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[15]\(3 downto 0),
      S(3 downto 0) => data17(7 downto 4)
    );
\count_transferred_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[12]_i_1_n_0\,
      CO(3) => \count_transferred_reg[16]_i_1_n_0\,
      CO(2) => \count_transferred_reg[16]_i_1_n_1\,
      CO(1) => \count_transferred_reg[16]_i_1_n_2\,
      CO(0) => \count_transferred_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[19]\(3 downto 0),
      S(3 downto 0) => data18(3 downto 0)
    );
\count_transferred_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[16]_i_1_n_0\,
      CO(3) => \count_transferred_reg[20]_i_1_n_0\,
      CO(2) => \count_transferred_reg[20]_i_1_n_1\,
      CO(1) => \count_transferred_reg[20]_i_1_n_2\,
      CO(0) => \count_transferred_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[23]\(3 downto 0),
      S(3 downto 0) => data18(7 downto 4)
    );
\count_transferred_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[20]_i_1_n_0\,
      CO(3) => \count_transferred_reg[24]_i_1_n_0\,
      CO(2) => \count_transferred_reg[24]_i_1_n_1\,
      CO(1) => \count_transferred_reg[24]_i_1_n_2\,
      CO(0) => \count_transferred_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[27]\(3 downto 0),
      S(3 downto 0) => data19(3 downto 0)
    );
\count_transferred_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[24]_i_1_n_0\,
      CO(3) => \count_transferred_reg[28]_i_1_n_0\,
      CO(2) => \count_transferred_reg[28]_i_1_n_1\,
      CO(1) => \count_transferred_reg[28]_i_1_n_2\,
      CO(0) => \count_transferred_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[31]\(3 downto 0),
      S(3 downto 0) => data19(7 downto 4)
    );
\count_transferred_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[28]_i_1_n_0\,
      CO(3) => \count_transferred_reg[32]_i_1_n_0\,
      CO(2) => \count_transferred_reg[32]_i_1_n_1\,
      CO(1) => \count_transferred_reg[32]_i_1_n_2\,
      CO(0) => \count_transferred_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[35]\(3 downto 0),
      S(3 downto 0) => D(3 downto 0)
    );
\count_transferred_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[32]_i_1_n_0\,
      CO(3) => \count_transferred_reg[36]_i_1_n_0\,
      CO(2) => \count_transferred_reg[36]_i_1_n_1\,
      CO(1) => \count_transferred_reg[36]_i_1_n_2\,
      CO(0) => \count_transferred_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[39]\(3 downto 0),
      S(3 downto 0) => D(7 downto 4)
    );
\count_transferred_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[36]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_transferred_reg[40]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_transferred_reg[40]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_transferred_reg[40]\(0),
      S(3 downto 1) => B"000",
      S(0) => D(8)
    );
\count_transferred_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[0]_i_1_n_0\,
      CO(3) => \count_transferred_reg[4]_i_1_n_0\,
      CO(2) => \count_transferred_reg[4]_i_1_n_1\,
      CO(1) => \count_transferred_reg[4]_i_1_n_2\,
      CO(0) => \count_transferred_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[7]\(3 downto 0),
      S(3 downto 0) => \count_transferred_reg[7]_0\(3 downto 0)
    );
\count_transferred_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_transferred_reg[4]_i_1_n_0\,
      CO(3) => \count_transferred_reg[8]_i_1_n_0\,
      CO(2) => \count_transferred_reg[8]_i_1_n_1\,
      CO(1) => \count_transferred_reg[8]_i_1_n_2\,
      CO(0) => \count_transferred_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_transferred_reg[11]\(3 downto 0),
      S(3 downto 0) => data17(3 downto 0)
    );
data_out_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => transfer_started,
      I1 => more,
      I2 => \onwrite[0]_0\,
      O => data_out_tvalid
    );
\more0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(14),
      I1 => count_transferred_next(14),
      I2 => count_transferred_next(15),
      I3 => count_target(15),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(3)
    );
\more0_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => more0_carry_i_9_n_0,
      CO(3) => \more0_carry__0_i_10_n_0\,
      CO(2) => \more0_carry__0_i_10_n_1\,
      CO(1) => \more0_carry__0_i_10_n_2\,
      CO(0) => \more0_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(11 downto 8),
      S(3 downto 0) => data17(3 downto 0)
    );
\more0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(12),
      I1 => count_transferred_next(12),
      I2 => count_transferred_next(13),
      I3 => count_target(13),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(2)
    );
\more0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(10),
      I1 => count_transferred_next(10),
      I2 => count_transferred_next(11),
      I3 => count_target(11),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(1)
    );
\more0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(8),
      I1 => count_transferred_next(8),
      I2 => count_transferred_next(9),
      I3 => count_target(9),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(0)
    );
\more0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(14),
      I1 => count_transferred_next(14),
      I2 => count_target(15),
      I3 => count_transferred_next(15),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(3)
    );
\more0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(12),
      I1 => count_transferred_next(12),
      I2 => count_target(13),
      I3 => count_transferred_next(13),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(2)
    );
\more0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(10),
      I1 => count_transferred_next(10),
      I2 => count_target(11),
      I3 => count_transferred_next(11),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(1)
    );
\more0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(8),
      I1 => count_transferred_next(8),
      I2 => count_target(9),
      I3 => count_transferred_next(9),
      O => \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(0)
    );
\more0_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__0_i_10_n_0\,
      CO(3) => \more0_carry__0_i_9_n_0\,
      CO(2) => \more0_carry__0_i_9_n_1\,
      CO(1) => \more0_carry__0_i_9_n_2\,
      CO(0) => \more0_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(15 downto 12),
      S(3 downto 0) => data17(7 downto 4)
    );
\more0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(22),
      I1 => count_transferred_next(22),
      I2 => count_transferred_next(23),
      I3 => count_target(23),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(3)
    );
\more0_carry__1_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__0_i_9_n_0\,
      CO(3) => \more0_carry__1_i_10_n_0\,
      CO(2) => \more0_carry__1_i_10_n_1\,
      CO(1) => \more0_carry__1_i_10_n_2\,
      CO(0) => \more0_carry__1_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(19 downto 16),
      S(3 downto 0) => data18(3 downto 0)
    );
\more0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(20),
      I1 => count_transferred_next(20),
      I2 => count_transferred_next(21),
      I3 => count_target(21),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(2)
    );
\more0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(18),
      I1 => count_transferred_next(18),
      I2 => count_transferred_next(19),
      I3 => count_target(19),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(1)
    );
\more0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(16),
      I1 => count_transferred_next(16),
      I2 => count_transferred_next(17),
      I3 => count_target(17),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(0)
    );
\more0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(22),
      I1 => count_transferred_next(22),
      I2 => count_target(23),
      I3 => count_transferred_next(23),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(3)
    );
\more0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(20),
      I1 => count_transferred_next(20),
      I2 => count_target(21),
      I3 => count_transferred_next(21),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(2)
    );
\more0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(18),
      I1 => count_transferred_next(18),
      I2 => count_target(19),
      I3 => count_transferred_next(19),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(1)
    );
\more0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(16),
      I1 => count_transferred_next(16),
      I2 => count_target(17),
      I3 => count_transferred_next(17),
      O => \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(0)
    );
\more0_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__1_i_10_n_0\,
      CO(3) => \more0_carry__1_i_9_n_0\,
      CO(2) => \more0_carry__1_i_9_n_1\,
      CO(1) => \more0_carry__1_i_9_n_2\,
      CO(0) => \more0_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(23 downto 20),
      S(3 downto 0) => data18(7 downto 4)
    );
\more0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(30),
      I1 => count_transferred_next(30),
      I2 => count_transferred_next(31),
      I3 => count_target(31),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(3)
    );
\more0_carry__2_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__1_i_9_n_0\,
      CO(3) => \more0_carry__2_i_10_n_0\,
      CO(2) => \more0_carry__2_i_10_n_1\,
      CO(1) => \more0_carry__2_i_10_n_2\,
      CO(0) => \more0_carry__2_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(27 downto 24),
      S(3 downto 0) => data19(3 downto 0)
    );
\more0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(28),
      I1 => count_transferred_next(28),
      I2 => count_transferred_next(29),
      I3 => count_target(29),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(2)
    );
\more0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(26),
      I1 => count_transferred_next(26),
      I2 => count_transferred_next(27),
      I3 => count_target(27),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(1)
    );
\more0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(24),
      I1 => count_transferred_next(24),
      I2 => count_transferred_next(25),
      I3 => count_target(25),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(0)
    );
\more0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(30),
      I1 => count_transferred_next(30),
      I2 => count_target(31),
      I3 => count_transferred_next(31),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(3)
    );
\more0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(28),
      I1 => count_transferred_next(28),
      I2 => count_target(29),
      I3 => count_transferred_next(29),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(2)
    );
\more0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(26),
      I1 => count_transferred_next(26),
      I2 => count_target(27),
      I3 => count_transferred_next(27),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(1)
    );
\more0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(24),
      I1 => count_transferred_next(24),
      I2 => count_target(25),
      I3 => count_transferred_next(25),
      O => \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(0)
    );
\more0_carry__2_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__2_i_10_n_0\,
      CO(3) => \more0_carry__2_i_9_n_0\,
      CO(2) => \more0_carry__2_i_9_n_1\,
      CO(1) => \more0_carry__2_i_9_n_2\,
      CO(0) => \more0_carry__2_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(31 downto 28),
      S(3 downto 0) => data19(7 downto 4)
    );
\more0_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(38),
      I1 => count_transferred_next(38),
      I2 => count_transferred_next(39),
      I3 => count_target(39),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(3)
    );
\more0_carry__3_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__2_i_9_n_0\,
      CO(3) => \more0_carry__3_i_10_n_0\,
      CO(2) => \more0_carry__3_i_10_n_1\,
      CO(1) => \more0_carry__3_i_10_n_2\,
      CO(0) => \more0_carry__3_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(35 downto 32),
      S(3 downto 0) => D(3 downto 0)
    );
\more0_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(36),
      I1 => count_transferred_next(36),
      I2 => count_transferred_next(37),
      I3 => count_target(37),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(2)
    );
\more0_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(34),
      I1 => count_transferred_next(34),
      I2 => count_transferred_next(35),
      I3 => count_target(35),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(1)
    );
\more0_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(32),
      I1 => count_transferred_next(32),
      I2 => count_transferred_next(33),
      I3 => count_target(33),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(0)
    );
\more0_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(38),
      I1 => count_transferred_next(38),
      I2 => count_target(39),
      I3 => count_transferred_next(39),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(3)
    );
\more0_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(36),
      I1 => count_transferred_next(36),
      I2 => count_target(37),
      I3 => count_transferred_next(37),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(2)
    );
\more0_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(34),
      I1 => count_transferred_next(34),
      I2 => count_target(35),
      I3 => count_transferred_next(35),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(1)
    );
\more0_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(32),
      I1 => count_transferred_next(32),
      I2 => count_target(33),
      I3 => count_transferred_next(33),
      O => \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(0)
    );
\more0_carry__3_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__3_i_10_n_0\,
      CO(3) => \more0_carry__3_i_9_n_0\,
      CO(2) => \more0_carry__3_i_9_n_1\,
      CO(1) => \more0_carry__3_i_9_n_2\,
      CO(0) => \more0_carry__3_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(39 downto 36),
      S(3 downto 0) => D(7 downto 4)
    );
\more0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_target(40),
      I1 => count_transferred_next(40),
      O => DI(0)
    );
\more0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_transferred_next(40),
      I1 => count_target(40),
      O => \write_reg[3].write_reg[1].reg_written_reg[13][0]_0\(0)
    );
\more0_carry__4_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__3_i_9_n_0\,
      CO(3 downto 0) => \NLW_more0_carry__4_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_more0_carry__4_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => count_transferred_next(40),
      S(3 downto 1) => B"000",
      S(0) => D(8)
    );
more0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(6),
      I1 => count_transferred_next(6),
      I2 => count_transferred_next(7),
      I3 => count_target(7),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(3)
    );
more0_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => more0_carry_i_10_n_0,
      CO(2) => more0_carry_i_10_n_1,
      CO(1) => more0_carry_i_10_n_2,
      CO(0) => more0_carry_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_transferred_reg[3]\,
      O(3 downto 0) => count_transferred_next(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => more0_carry_i_11_n_0
    );
more0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \count_transferred_reg[3]\,
      I1 => data_out_tready,
      I2 => transfer_started,
      I3 => more,
      I4 => \onwrite[0]_0\,
      O => more0_carry_i_11_n_0
    );
more0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(4),
      I1 => count_transferred_next(4),
      I2 => count_transferred_next(5),
      I3 => count_target(5),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(2)
    );
more0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(2),
      I1 => count_transferred_next(2),
      I2 => count_transferred_next(3),
      I3 => count_target(3),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(1)
    );
more0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_target(0),
      I1 => count_transferred_next(0),
      I2 => count_transferred_next(1),
      I3 => count_target(1),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(0)
    );
more0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(6),
      I1 => count_transferred_next(6),
      I2 => count_target(7),
      I3 => count_transferred_next(7),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(3)
    );
more0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(4),
      I1 => count_transferred_next(4),
      I2 => count_target(5),
      I3 => count_transferred_next(5),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(2)
    );
more0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(2),
      I1 => count_transferred_next(2),
      I2 => count_target(3),
      I3 => count_transferred_next(3),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(1)
    );
more0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_target(0),
      I1 => count_transferred_next(0),
      I2 => count_target(1),
      I3 => count_transferred_next(1),
      O => \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(0)
    );
more0_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => more0_carry_i_10_n_0,
      CO(3) => more0_carry_i_9_n_0,
      CO(2) => more0_carry_i_9_n_1,
      CO(1) => more0_carry_i_9_n_2,
      CO(0) => more0_carry_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count_transferred_next(7 downto 4),
      S(3 downto 0) => \count_transferred_reg[7]_0\(3 downto 0)
    );
\onread[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD00000000000"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => s_axi_rready,
      I2 => \^arready_reg_0\,
      I3 => s_axi_arvalid,
      I4 => read_got_addr,
      I5 => \raddr_saved_demux_reg[16]_1\,
      O => p_63_out
    );
\onread_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_63_out,
      Q => E(0),
      R => \^sr\(0)
    );
\raddr_saved_demux[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^arready_reg_0\,
      O => raddr_saved0
    );
\raddr_saved_demux_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => raddr_saved0,
      D => \raddr_saved_demux_reg[16]_0\,
      Q => \raddr_saved_demux_reg[16]_1\,
      R => \^sr\(0)
    );
\raddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => raddr_saved0,
      D => s_axi_araddr(0),
      Q => sel0(2),
      R => \^sr\(0)
    );
\raddr_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => raddr_saved0,
      D => s_axi_araddr(1),
      Q => sel0(3),
      R => \^sr\(0)
    );
\raddr_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => raddr_saved0,
      D => s_axi_araddr(2),
      Q => sel0(4),
      R => \^sr\(0)
    );
read_got_addr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222000"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => s_axi_rready,
      I2 => \^arready_reg_0\,
      I3 => s_axi_arvalid,
      I4 => read_got_addr,
      O => read_got_addr_next1_out
    );
read_got_addr_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => read_got_addr_next1_out,
      Q => read_got_addr,
      R => \^sr\(0)
    );
rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC0FFEA"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => \^arready_reg_0\,
      I2 => s_axi_arvalid,
      I3 => read_got_addr,
      I4 => s_axi_rready,
      O => rvalid_i_1_n_0
    );
rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rvalid_i_1_n_0,
      Q => \^rvalid_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(32),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(0),
      I4 => sel0(2),
      I5 => \s_axi_rdata[0]_INST_0_i_1_n_0\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(0),
      I1 => sel0(3),
      I2 => \count_transferred_reg[3]\,
      I3 => sel0(4),
      I4 => \^data_out_tdata\(0),
      O => \s_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(2),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(3),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(4),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(5),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(6),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(7),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(0),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(1),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(2),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(18),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(3),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(19),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(33),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(1),
      I4 => sel0(2),
      I5 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(1),
      I1 => sel0(3),
      I2 => S(0),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(1),
      O => \s_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(4),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(5),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(21),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(6),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data18(7),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(23),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(0),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(24),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(1),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(25),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(2),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(26),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(3),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(27),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(4),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(28),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(5),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(29),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(34),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(2),
      I4 => sel0(2),
      I5 => \s_axi_rdata[2]_INST_0_i_1_n_0\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(2),
      I1 => sel0(3),
      I2 => S(1),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(2),
      O => \s_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(6),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(30),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data19(7),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(31),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(35),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(3),
      I4 => sel0(2),
      I5 => \s_axi_rdata[3]_INST_0_i_1_n_0\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(3),
      I1 => sel0(3),
      I2 => S(2),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(3),
      O => \s_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(36),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(4),
      I4 => sel0(2),
      I5 => \s_axi_rdata[4]_INST_0_i_1_n_0\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(4),
      I1 => sel0(3),
      I2 => \count_transferred_reg[7]_0\(0),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(4),
      O => \s_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(37),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(5),
      I4 => sel0(2),
      I5 => \s_axi_rdata[5]_INST_0_i_1_n_0\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(5),
      I1 => sel0(3),
      I2 => \count_transferred_reg[7]_0\(1),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(5),
      O => \s_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(38),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(6),
      I4 => sel0(2),
      I5 => \s_axi_rdata[6]_INST_0_i_1_n_0\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(6),
      I1 => sel0(3),
      I2 => \count_transferred_reg[7]_0\(2),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(6),
      O => \s_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => count_target(39),
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => Q(7),
      I4 => sel0(2),
      I5 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => count_target(7),
      I1 => sel0(3),
      I2 => \count_transferred_reg[7]_0\(3),
      I3 => sel0(4),
      I4 => \^data_out_tdata\(7),
      O => \s_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => \s_axi_rdata[8]_INST_0_i_1_n_0\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => count_target(40),
      I1 => Q(8),
      I2 => sel0(2),
      I3 => count_target(8),
      I4 => sel0(3),
      I5 => data17(0),
      O => \s_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05400040"
    )
        port map (
      I0 => sel0(2),
      I1 => data17(1),
      I2 => sel0(4),
      I3 => sel0(3),
      I4 => count_target(9),
      O => s_axi_rdata(9)
    );
transfer_started_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \reg_written_cleared[24]_2\,
      I1 => transfer_started,
      I2 => wr_tran,
      O => \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1\
    );
\waddr_saved[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \waddr_saved_reg_n_0_[2]\,
      O => \waddr_saved[2]_i_1_n_0\
    );
\waddr_saved[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \waddr_saved_reg_n_0_[3]\,
      O => \waddr_saved[3]_i_1_n_0\
    );
\waddr_saved[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \waddr_saved_reg_n_0_[4]\,
      O => \waddr_saved[4]_i_1_n_0\
    );
\waddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \waddr_saved[2]_i_1_n_0\,
      Q => \waddr_saved_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\waddr_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \waddr_saved[3]_i_1_n_0\,
      Q => \waddr_saved_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\waddr_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \waddr_saved[4]_i_1_n_0\,
      Q => \waddr_saved_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(0),
      Q => \wdata_saved_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(10),
      Q => p_1_in(2),
      R => \^sr\(0)
    );
\wdata_saved_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(11),
      Q => p_1_in(3),
      R => \^sr\(0)
    );
\wdata_saved_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(12),
      Q => p_1_in(4),
      R => \^sr\(0)
    );
\wdata_saved_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(13),
      Q => p_1_in(5),
      R => \^sr\(0)
    );
\wdata_saved_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(14),
      Q => p_1_in(6),
      R => \^sr\(0)
    );
\wdata_saved_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(15),
      Q => p_1_in(7),
      R => \^sr\(0)
    );
\wdata_saved_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(16),
      Q => \wdata_saved_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(17),
      Q => \wdata_saved_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(18),
      Q => \wdata_saved_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(19),
      Q => \wdata_saved_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(1),
      Q => \wdata_saved_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(20),
      Q => \wdata_saved_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(21),
      Q => \wdata_saved_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(22),
      Q => \wdata_saved_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(23),
      Q => \wdata_saved_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(24),
      Q => \wdata_saved_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(25),
      Q => \wdata_saved_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(26),
      Q => \wdata_saved_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(27),
      Q => \wdata_saved_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(28),
      Q => \wdata_saved_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(29),
      Q => \wdata_saved_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(2),
      Q => \wdata_saved_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(30),
      Q => \wdata_saved_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(31),
      Q => \wdata_saved_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(3),
      Q => \wdata_saved_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(4),
      Q => \wdata_saved_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(5),
      Q => \wdata_saved_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(6),
      Q => \wdata_saved_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(7),
      Q => \wdata_saved_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(8),
      Q => p_1_in(0),
      R => \^sr\(0)
    );
\wdata_saved_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wdata(9),
      Q => p_1_in(1),
      R => \^sr\(0)
    );
wr_tran_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEE00000EEE0"
    )
        port map (
      I0 => waddr_saved0,
      I1 => write_got_addr,
      I2 => write_got_data,
      I3 => wdata_saved0,
      I4 => \^bvalid_reg_0\,
      I5 => s_axi_bready,
      O => wr_tran_next
    );
wr_tran_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_tran_next,
      Q => wr_tran,
      R => \^sr\(0)
    );
wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1FFF1FFF1F1111"
    )
        port map (
      I0 => wdata_saved0,
      I1 => write_got_data,
      I2 => \^bvalid_reg_0\,
      I3 => s_axi_bready,
      I4 => write_got_addr,
      I5 => waddr_saved0,
      O => wready_i_1_n_0
    );
wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \^sr\(0)
    );
write_got_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E000E00EEEE"
    )
        port map (
      I0 => write_got_addr,
      I1 => waddr_saved0,
      I2 => s_axi_bready,
      I3 => \^bvalid_reg_0\,
      I4 => wdata_saved0,
      I5 => write_got_data,
      O => write_got_addr_next4_out
    );
write_got_addr_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_got_addr_next4_out,
      Q => write_got_addr,
      R => \^sr\(0)
    );
write_got_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F111F111F110000"
    )
        port map (
      I0 => waddr_saved0,
      I1 => write_got_addr,
      I2 => s_axi_bready,
      I3 => \^bvalid_reg_0\,
      I4 => write_got_data,
      I5 => wdata_saved0,
      O => write_got_data_next3_out
    );
write_got_data_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_got_data_next3_out,
      Q => write_got_data,
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].onwrite_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_reg[0].write_reg[0].onwrite_ij\,
      Q => \onwrite[0]_0\,
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written[0][7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[3]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[4]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[0]\,
      O => \write_reg[0].write_reg[0].onwrite_ij\
    );
\write_reg[0].write_reg[0].reg_written_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[0]\,
      Q => \^data_out_tdata\(0),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[1]\,
      Q => \^data_out_tdata\(1),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[2]\,
      Q => \^data_out_tdata\(2),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[3]\,
      Q => \^data_out_tdata\(3),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[4]\,
      Q => \^data_out_tdata\(4),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[5]\,
      Q => \^data_out_tdata\(5),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[6]\,
      Q => \^data_out_tdata\(6),
      R => \^sr\(0)
    );
\write_reg[0].write_reg[0].reg_written_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[0].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[7]\,
      Q => \^data_out_tdata\(7),
      R => \^sr\(0)
    );
\write_reg[2].write_reg[0].reg_written[8][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => count_resetn,
      O => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written[8][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[3]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[4]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[0]\,
      O => \write_reg[2].write_reg[0].onwrite_ij\
    );
\write_reg[2].write_reg[0].reg_written_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[0]\,
      Q => count_target(0),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[1]\,
      Q => count_target(1),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[2]\,
      Q => count_target(2),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[3]\,
      Q => count_target(3),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[4]\,
      Q => count_target(4),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[5]\,
      Q => count_target(5),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[6]\,
      Q => count_target(6),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[0].reg_written_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[7]\,
      Q => count_target(7),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written[9][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[3]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[4]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[1]\,
      O => \write_reg[2].write_reg[1].onwrite_ij\
    );
\write_reg[2].write_reg[1].reg_written_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(0),
      Q => count_target(8),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(1),
      Q => count_target(9),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(2),
      Q => count_target(10),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(3),
      Q => count_target(11),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(4),
      Q => count_target(12),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(5),
      Q => count_target(13),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(6),
      Q => count_target(14),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[1].reg_written_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[1].onwrite_ij\,
      D => p_1_in(7),
      Q => count_target(15),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written[10][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[3]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[4]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[2]\,
      O => \write_reg[2].write_reg[2].onwrite_ij\
    );
\write_reg[2].write_reg[2].reg_written_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[16]\,
      Q => count_target(16),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[17]\,
      Q => count_target(17),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[18]\,
      Q => count_target(18),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[19]\,
      Q => count_target(19),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[20]\,
      Q => count_target(20),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[21]\,
      Q => count_target(21),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[22]\,
      Q => count_target(22),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[2].reg_written_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[2].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[23]\,
      Q => count_target(23),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written[11][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[3]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[4]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[3]\,
      O => \write_reg[2].write_reg[3].onwrite_ij\
    );
\write_reg[2].write_reg[3].reg_written_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[24]\,
      Q => count_target(24),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[25]\,
      Q => count_target(25),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[26]\,
      Q => count_target(26),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[27]\,
      Q => count_target(27),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[28]\,
      Q => count_target(28),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[29]\,
      Q => count_target(29),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[30]\,
      Q => count_target(30),
      R => \^resetn_0\(0)
    );
\write_reg[2].write_reg[3].reg_written_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[2].write_reg[3].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[31]\,
      Q => count_target(31),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written[12][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \waddr_saved_reg_n_0_[4]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => \waddr_saved_reg_n_0_[3]\,
      I3 => wr_tran,
      I4 => \wstrb_saved_reg_n_0_[0]\,
      O => \write_reg[3].write_reg[0].onwrite_ij\
    );
\write_reg[3].write_reg[0].reg_written_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[0]\,
      Q => count_target(32),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[1]\,
      Q => count_target(33),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[2]\,
      Q => count_target(34),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[3]\,
      Q => count_target(35),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[4]\,
      Q => count_target(36),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[5]\,
      Q => count_target(37),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[6]\,
      Q => count_target(38),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[0].reg_written_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_reg[3].write_reg[0].onwrite_ij\,
      D => \wdata_saved_reg_n_0_[7]\,
      Q => count_target(39),
      R => \^resetn_0\(0)
    );
\write_reg[3].write_reg[1].reg_written[13][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_37_in,
      I2 => \wstrb_saved_reg_n_0_[1]\,
      I3 => count_target(40),
      O => \write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0\
    );
\write_reg[3].write_reg[1].reg_written[13][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr_tran,
      I1 => \waddr_saved_reg_n_0_[3]\,
      I2 => \waddr_saved_reg_n_0_[2]\,
      I3 => \waddr_saved_reg_n_0_[4]\,
      O => p_37_in
    );
\write_reg[3].write_reg[1].reg_written_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_reg[3].write_reg[1].reg_written[13][0]_i_1_n_0\,
      Q => count_target(40),
      R => \^resetn_0\(0)
    );
\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[0]\,
      I1 => \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0\,
      O => \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0\
    );
\write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => resetn,
      I1 => \wstrb_saved_reg_n_0_[0]\,
      I2 => wr_tran,
      I3 => \waddr_saved_reg_n_0_[3]\,
      I4 => \waddr_saved_reg_n_0_[4]\,
      I5 => \waddr_saved_reg_n_0_[2]\,
      O => \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_2_n_0\
    );
\write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_reg[6].write_reg[0].reg_written_cleared[24][0]_i_1_n_0\,
      Q => \reg_written_cleared[24]_2\,
      R => '0'
    );
\wstrb_saved[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wvalid,
      O => wdata_saved0
    );
\wstrb_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wstrb(0),
      Q => \wstrb_saved_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\wstrb_saved_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wstrb(1),
      Q => \wstrb_saved_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\wstrb_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wstrb(2),
      Q => \wstrb_saved_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\wstrb_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wdata_saved0,
      D => s_axi_wstrb(3),
      Q => \wstrb_saved_reg_n_0_[3]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_const_gen_0_axi_stream_constant_generator is
  port (
    bvalid_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arready : out STD_LOGIC;
    data_out_tvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rvalid_reg : out STD_LOGIC;
    resetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_const_gen_0_axi_stream_constant_generator : entity is "axi_stream_constant_generator";
end block_design_const_gen_0_axi_stream_constant_generator;

architecture STRUCTURE of block_design_const_gen_0_axi_stream_constant_generator is
  signal \control_intf/_n_0\ : STD_LOGIC;
  signal control_intf_n_10 : STD_LOGIC;
  signal control_intf_n_100 : STD_LOGIC;
  signal control_intf_n_11 : STD_LOGIC;
  signal control_intf_n_12 : STD_LOGIC;
  signal control_intf_n_13 : STD_LOGIC;
  signal control_intf_n_14 : STD_LOGIC;
  signal control_intf_n_15 : STD_LOGIC;
  signal control_intf_n_16 : STD_LOGIC;
  signal control_intf_n_17 : STD_LOGIC;
  signal control_intf_n_18 : STD_LOGIC;
  signal control_intf_n_19 : STD_LOGIC;
  signal control_intf_n_20 : STD_LOGIC;
  signal control_intf_n_21 : STD_LOGIC;
  signal control_intf_n_22 : STD_LOGIC;
  signal control_intf_n_23 : STD_LOGIC;
  signal control_intf_n_24 : STD_LOGIC;
  signal control_intf_n_25 : STD_LOGIC;
  signal control_intf_n_26 : STD_LOGIC;
  signal control_intf_n_27 : STD_LOGIC;
  signal control_intf_n_28 : STD_LOGIC;
  signal control_intf_n_29 : STD_LOGIC;
  signal control_intf_n_30 : STD_LOGIC;
  signal control_intf_n_31 : STD_LOGIC;
  signal control_intf_n_32 : STD_LOGIC;
  signal control_intf_n_33 : STD_LOGIC;
  signal control_intf_n_34 : STD_LOGIC;
  signal control_intf_n_35 : STD_LOGIC;
  signal control_intf_n_36 : STD_LOGIC;
  signal control_intf_n_37 : STD_LOGIC;
  signal control_intf_n_38 : STD_LOGIC;
  signal control_intf_n_39 : STD_LOGIC;
  signal control_intf_n_40 : STD_LOGIC;
  signal control_intf_n_41 : STD_LOGIC;
  signal control_intf_n_42 : STD_LOGIC;
  signal control_intf_n_43 : STD_LOGIC;
  signal control_intf_n_44 : STD_LOGIC;
  signal control_intf_n_45 : STD_LOGIC;
  signal control_intf_n_46 : STD_LOGIC;
  signal control_intf_n_47 : STD_LOGIC;
  signal control_intf_n_48 : STD_LOGIC;
  signal control_intf_n_49 : STD_LOGIC;
  signal control_intf_n_50 : STD_LOGIC;
  signal control_intf_n_51 : STD_LOGIC;
  signal control_intf_n_6 : STD_LOGIC;
  signal control_intf_n_61 : STD_LOGIC;
  signal control_intf_n_62 : STD_LOGIC;
  signal control_intf_n_63 : STD_LOGIC;
  signal control_intf_n_64 : STD_LOGIC;
  signal control_intf_n_65 : STD_LOGIC;
  signal control_intf_n_66 : STD_LOGIC;
  signal control_intf_n_67 : STD_LOGIC;
  signal control_intf_n_68 : STD_LOGIC;
  signal control_intf_n_69 : STD_LOGIC;
  signal control_intf_n_7 : STD_LOGIC;
  signal control_intf_n_70 : STD_LOGIC;
  signal control_intf_n_71 : STD_LOGIC;
  signal control_intf_n_72 : STD_LOGIC;
  signal control_intf_n_73 : STD_LOGIC;
  signal control_intf_n_74 : STD_LOGIC;
  signal control_intf_n_75 : STD_LOGIC;
  signal control_intf_n_76 : STD_LOGIC;
  signal control_intf_n_77 : STD_LOGIC;
  signal control_intf_n_78 : STD_LOGIC;
  signal control_intf_n_79 : STD_LOGIC;
  signal control_intf_n_8 : STD_LOGIC;
  signal control_intf_n_80 : STD_LOGIC;
  signal control_intf_n_81 : STD_LOGIC;
  signal control_intf_n_82 : STD_LOGIC;
  signal control_intf_n_83 : STD_LOGIC;
  signal control_intf_n_84 : STD_LOGIC;
  signal control_intf_n_85 : STD_LOGIC;
  signal control_intf_n_86 : STD_LOGIC;
  signal control_intf_n_87 : STD_LOGIC;
  signal control_intf_n_88 : STD_LOGIC;
  signal control_intf_n_89 : STD_LOGIC;
  signal control_intf_n_9 : STD_LOGIC;
  signal control_intf_n_90 : STD_LOGIC;
  signal control_intf_n_91 : STD_LOGIC;
  signal control_intf_n_92 : STD_LOGIC;
  signal control_intf_n_93 : STD_LOGIC;
  signal control_intf_n_94 : STD_LOGIC;
  signal control_intf_n_95 : STD_LOGIC;
  signal control_intf_n_96 : STD_LOGIC;
  signal control_intf_n_97 : STD_LOGIC;
  signal control_intf_n_98 : STD_LOGIC;
  signal control_intf_n_99 : STD_LOGIC;
  signal count_resetn : STD_LOGIC;
  signal \count_transferred_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[32]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[33]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[34]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[35]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[36]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[37]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[38]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[39]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[40]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_transferred_reg_n_0_[7]\ : STD_LOGIC;
  signal data17 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data18 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data19 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data20 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal more : STD_LOGIC;
  signal \more0_carry__0_n_0\ : STD_LOGIC;
  signal \more0_carry__0_n_1\ : STD_LOGIC;
  signal \more0_carry__0_n_2\ : STD_LOGIC;
  signal \more0_carry__0_n_3\ : STD_LOGIC;
  signal \more0_carry__1_n_0\ : STD_LOGIC;
  signal \more0_carry__1_n_1\ : STD_LOGIC;
  signal \more0_carry__1_n_2\ : STD_LOGIC;
  signal \more0_carry__1_n_3\ : STD_LOGIC;
  signal \more0_carry__2_n_0\ : STD_LOGIC;
  signal \more0_carry__2_n_1\ : STD_LOGIC;
  signal \more0_carry__2_n_2\ : STD_LOGIC;
  signal \more0_carry__2_n_3\ : STD_LOGIC;
  signal \more0_carry__3_n_0\ : STD_LOGIC;
  signal \more0_carry__3_n_1\ : STD_LOGIC;
  signal \more0_carry__3_n_2\ : STD_LOGIC;
  signal \more0_carry__3_n_3\ : STD_LOGIC;
  signal \more0_carry__4_n_3\ : STD_LOGIC;
  signal more0_carry_n_0 : STD_LOGIC;
  signal more0_carry_n_1 : STD_LOGIC;
  signal more0_carry_n_2 : STD_LOGIC;
  signal more0_carry_n_3 : STD_LOGIC;
  signal \onread_reg[16]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal reg_to_read0 : STD_LOGIC;
  signal transfer_started : STD_LOGIC;
  signal NLW_more0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_more0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_more0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
control_intf: entity work.block_design_const_gen_0_block_design_axi4_lite_intf
     port map (
      D(8) => \count_transferred_reg_n_0_[40]\,
      D(7) => \count_transferred_reg_n_0_[39]\,
      D(6) => \count_transferred_reg_n_0_[38]\,
      D(5) => \count_transferred_reg_n_0_[37]\,
      D(4) => \count_transferred_reg_n_0_[36]\,
      D(3) => \count_transferred_reg_n_0_[35]\,
      D(2) => \count_transferred_reg_n_0_[34]\,
      D(1) => \count_transferred_reg_n_0_[33]\,
      D(0) => \count_transferred_reg_n_0_[32]\,
      DI(0) => control_intf_n_8,
      E(0) => \onread_reg[16]\,
      O(3) => control_intf_n_9,
      O(2) => control_intf_n_10,
      O(1) => control_intf_n_11,
      O(0) => control_intf_n_12,
      Q(8) => reg_to_read0,
      Q(7 downto 0) => data20(7 downto 0),
      S(2) => \count_transferred_reg_n_0_[3]\,
      S(1) => \count_transferred_reg_n_0_[2]\,
      S(0) => \count_transferred_reg_n_0_[1]\,
      SR(0) => p_1_in,
      aclk => aclk,
      arready_reg_0 => s_axi_arready,
      awready_reg_0 => s_axi_awready,
      bvalid_reg_0 => bvalid_reg,
      count_resetn => count_resetn,
      \count_transferred_reg[11]\(3) => control_intf_n_17,
      \count_transferred_reg[11]\(2) => control_intf_n_18,
      \count_transferred_reg[11]\(1) => control_intf_n_19,
      \count_transferred_reg[11]\(0) => control_intf_n_20,
      \count_transferred_reg[15]\(3) => control_intf_n_21,
      \count_transferred_reg[15]\(2) => control_intf_n_22,
      \count_transferred_reg[15]\(1) => control_intf_n_23,
      \count_transferred_reg[15]\(0) => control_intf_n_24,
      \count_transferred_reg[19]\(3) => control_intf_n_25,
      \count_transferred_reg[19]\(2) => control_intf_n_26,
      \count_transferred_reg[19]\(1) => control_intf_n_27,
      \count_transferred_reg[19]\(0) => control_intf_n_28,
      \count_transferred_reg[23]\(3) => control_intf_n_29,
      \count_transferred_reg[23]\(2) => control_intf_n_30,
      \count_transferred_reg[23]\(1) => control_intf_n_31,
      \count_transferred_reg[23]\(0) => control_intf_n_32,
      \count_transferred_reg[27]\(3) => control_intf_n_33,
      \count_transferred_reg[27]\(2) => control_intf_n_34,
      \count_transferred_reg[27]\(1) => control_intf_n_35,
      \count_transferred_reg[27]\(0) => control_intf_n_36,
      \count_transferred_reg[31]\(3) => control_intf_n_37,
      \count_transferred_reg[31]\(2) => control_intf_n_38,
      \count_transferred_reg[31]\(1) => control_intf_n_39,
      \count_transferred_reg[31]\(0) => control_intf_n_40,
      \count_transferred_reg[35]\(3) => control_intf_n_41,
      \count_transferred_reg[35]\(2) => control_intf_n_42,
      \count_transferred_reg[35]\(1) => control_intf_n_43,
      \count_transferred_reg[35]\(0) => control_intf_n_44,
      \count_transferred_reg[39]\(3) => control_intf_n_45,
      \count_transferred_reg[39]\(2) => control_intf_n_46,
      \count_transferred_reg[39]\(1) => control_intf_n_47,
      \count_transferred_reg[39]\(0) => control_intf_n_48,
      \count_transferred_reg[3]\ => \count_transferred_reg_n_0_[0]\,
      \count_transferred_reg[40]\(0) => control_intf_n_49,
      \count_transferred_reg[7]\(3) => control_intf_n_13,
      \count_transferred_reg[7]\(2) => control_intf_n_14,
      \count_transferred_reg[7]\(1) => control_intf_n_15,
      \count_transferred_reg[7]\(0) => control_intf_n_16,
      \count_transferred_reg[7]_0\(3) => \count_transferred_reg_n_0_[7]\,
      \count_transferred_reg[7]_0\(2) => \count_transferred_reg_n_0_[6]\,
      \count_transferred_reg[7]_0\(1) => \count_transferred_reg_n_0_[5]\,
      \count_transferred_reg[7]_0\(0) => \count_transferred_reg_n_0_[4]\,
      data17(7 downto 0) => data17(7 downto 0),
      data18(7 downto 0) => data18(7 downto 0),
      data19(7 downto 0) => data19(7 downto 0),
      data_out_tdata(7 downto 0) => data_out_tdata(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tvalid => data_out_tvalid,
      more => more,
      \raddr_saved_demux_reg[16]_0\ => \control_intf/_n_0\,
      resetn => resetn,
      resetn_0(0) => control_intf_n_6,
      rvalid_reg_0 => rvalid_reg,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      transfer_started => transfer_started,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(3) => control_intf_n_61,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(2) => control_intf_n_62,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(1) => control_intf_n_63,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_0\(0) => control_intf_n_64,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(3) => control_intf_n_65,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(2) => control_intf_n_66,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(1) => control_intf_n_67,
      \write_reg[2].write_reg[0].reg_written_reg[8][6]_1\(0) => control_intf_n_68,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(3) => control_intf_n_69,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(2) => control_intf_n_70,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(1) => control_intf_n_71,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_0\(0) => control_intf_n_72,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(3) => control_intf_n_73,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(2) => control_intf_n_74,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(1) => control_intf_n_75,
      \write_reg[2].write_reg[1].reg_written_reg[9][6]_1\(0) => control_intf_n_76,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(3) => control_intf_n_77,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(2) => control_intf_n_78,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(1) => control_intf_n_79,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_0\(0) => control_intf_n_80,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(3) => control_intf_n_81,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(2) => control_intf_n_82,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(1) => control_intf_n_83,
      \write_reg[2].write_reg[2].reg_written_reg[10][6]_1\(0) => control_intf_n_84,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(3) => control_intf_n_85,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(2) => control_intf_n_86,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(1) => control_intf_n_87,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_0\(0) => control_intf_n_88,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(3) => control_intf_n_89,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(2) => control_intf_n_90,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(1) => control_intf_n_91,
      \write_reg[2].write_reg[3].reg_written_reg[11][6]_1\(0) => control_intf_n_92,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(3) => control_intf_n_93,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(2) => control_intf_n_94,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(1) => control_intf_n_95,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_0\(0) => control_intf_n_96,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(3) => control_intf_n_97,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(2) => control_intf_n_98,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(1) => control_intf_n_99,
      \write_reg[3].write_reg[0].reg_written_reg[12][6]_1\(0) => control_intf_n_100,
      \write_reg[3].write_reg[1].reg_written_reg[13][0]_0\(0) => control_intf_n_50,
      \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_0\ => control_intf_n_7,
      \write_reg[6].write_reg[0].reg_written_cleared_reg[24][0]_1\ => control_intf_n_51
    );
\control_intf/\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      O => \control_intf/_n_0\
    );
count_resetn_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_7,
      Q => count_resetn,
      R => p_1_in
    );
\count_transferred_read_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[32]\,
      Q => data20(0),
      R => control_intf_n_6
    );
\count_transferred_read_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[33]\,
      Q => data20(1),
      R => control_intf_n_6
    );
\count_transferred_read_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[34]\,
      Q => data20(2),
      R => control_intf_n_6
    );
\count_transferred_read_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[35]\,
      Q => data20(3),
      R => control_intf_n_6
    );
\count_transferred_read_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[36]\,
      Q => data20(4),
      R => control_intf_n_6
    );
\count_transferred_read_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[37]\,
      Q => data20(5),
      R => control_intf_n_6
    );
\count_transferred_read_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[38]\,
      Q => data20(6),
      R => control_intf_n_6
    );
\count_transferred_read_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[39]\,
      Q => data20(7),
      R => control_intf_n_6
    );
\count_transferred_read_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \onread_reg[16]\,
      D => \count_transferred_reg_n_0_[40]\,
      Q => reg_to_read0,
      R => control_intf_n_6
    );
\count_transferred_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_12,
      Q => \count_transferred_reg_n_0_[0]\,
      R => control_intf_n_6
    );
\count_transferred_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_18,
      Q => data17(2),
      R => control_intf_n_6
    );
\count_transferred_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_17,
      Q => data17(3),
      R => control_intf_n_6
    );
\count_transferred_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_24,
      Q => data17(4),
      R => control_intf_n_6
    );
\count_transferred_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_23,
      Q => data17(5),
      R => control_intf_n_6
    );
\count_transferred_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_22,
      Q => data17(6),
      R => control_intf_n_6
    );
\count_transferred_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_21,
      Q => data17(7),
      R => control_intf_n_6
    );
\count_transferred_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_28,
      Q => data18(0),
      R => control_intf_n_6
    );
\count_transferred_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_27,
      Q => data18(1),
      R => control_intf_n_6
    );
\count_transferred_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_26,
      Q => data18(2),
      R => control_intf_n_6
    );
\count_transferred_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_25,
      Q => data18(3),
      R => control_intf_n_6
    );
\count_transferred_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_11,
      Q => \count_transferred_reg_n_0_[1]\,
      R => control_intf_n_6
    );
\count_transferred_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_32,
      Q => data18(4),
      R => control_intf_n_6
    );
\count_transferred_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_31,
      Q => data18(5),
      R => control_intf_n_6
    );
\count_transferred_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_30,
      Q => data18(6),
      R => control_intf_n_6
    );
\count_transferred_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_29,
      Q => data18(7),
      R => control_intf_n_6
    );
\count_transferred_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_36,
      Q => data19(0),
      R => control_intf_n_6
    );
\count_transferred_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_35,
      Q => data19(1),
      R => control_intf_n_6
    );
\count_transferred_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_34,
      Q => data19(2),
      R => control_intf_n_6
    );
\count_transferred_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_33,
      Q => data19(3),
      R => control_intf_n_6
    );
\count_transferred_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_40,
      Q => data19(4),
      R => control_intf_n_6
    );
\count_transferred_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_39,
      Q => data19(5),
      R => control_intf_n_6
    );
\count_transferred_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_10,
      Q => \count_transferred_reg_n_0_[2]\,
      R => control_intf_n_6
    );
\count_transferred_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_38,
      Q => data19(6),
      R => control_intf_n_6
    );
\count_transferred_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_37,
      Q => data19(7),
      R => control_intf_n_6
    );
\count_transferred_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_44,
      Q => \count_transferred_reg_n_0_[32]\,
      R => control_intf_n_6
    );
\count_transferred_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_43,
      Q => \count_transferred_reg_n_0_[33]\,
      R => control_intf_n_6
    );
\count_transferred_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_42,
      Q => \count_transferred_reg_n_0_[34]\,
      R => control_intf_n_6
    );
\count_transferred_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_41,
      Q => \count_transferred_reg_n_0_[35]\,
      R => control_intf_n_6
    );
\count_transferred_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_48,
      Q => \count_transferred_reg_n_0_[36]\,
      R => control_intf_n_6
    );
\count_transferred_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_47,
      Q => \count_transferred_reg_n_0_[37]\,
      R => control_intf_n_6
    );
\count_transferred_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_46,
      Q => \count_transferred_reg_n_0_[38]\,
      R => control_intf_n_6
    );
\count_transferred_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_45,
      Q => \count_transferred_reg_n_0_[39]\,
      R => control_intf_n_6
    );
\count_transferred_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_9,
      Q => \count_transferred_reg_n_0_[3]\,
      R => control_intf_n_6
    );
\count_transferred_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_49,
      Q => \count_transferred_reg_n_0_[40]\,
      R => control_intf_n_6
    );
\count_transferred_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_16,
      Q => \count_transferred_reg_n_0_[4]\,
      R => control_intf_n_6
    );
\count_transferred_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_15,
      Q => \count_transferred_reg_n_0_[5]\,
      R => control_intf_n_6
    );
\count_transferred_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_14,
      Q => \count_transferred_reg_n_0_[6]\,
      R => control_intf_n_6
    );
\count_transferred_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_13,
      Q => \count_transferred_reg_n_0_[7]\,
      R => control_intf_n_6
    );
\count_transferred_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_20,
      Q => data17(0),
      R => control_intf_n_6
    );
\count_transferred_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_19,
      Q => data17(1),
      R => control_intf_n_6
    );
more0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => more0_carry_n_0,
      CO(2) => more0_carry_n_1,
      CO(1) => more0_carry_n_2,
      CO(0) => more0_carry_n_3,
      CYINIT => '0',
      DI(3) => control_intf_n_65,
      DI(2) => control_intf_n_66,
      DI(1) => control_intf_n_67,
      DI(0) => control_intf_n_68,
      O(3 downto 0) => NLW_more0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => control_intf_n_61,
      S(2) => control_intf_n_62,
      S(1) => control_intf_n_63,
      S(0) => control_intf_n_64
    );
\more0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => more0_carry_n_0,
      CO(3) => \more0_carry__0_n_0\,
      CO(2) => \more0_carry__0_n_1\,
      CO(1) => \more0_carry__0_n_2\,
      CO(0) => \more0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => control_intf_n_73,
      DI(2) => control_intf_n_74,
      DI(1) => control_intf_n_75,
      DI(0) => control_intf_n_76,
      O(3 downto 0) => \NLW_more0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => control_intf_n_69,
      S(2) => control_intf_n_70,
      S(1) => control_intf_n_71,
      S(0) => control_intf_n_72
    );
\more0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__0_n_0\,
      CO(3) => \more0_carry__1_n_0\,
      CO(2) => \more0_carry__1_n_1\,
      CO(1) => \more0_carry__1_n_2\,
      CO(0) => \more0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => control_intf_n_81,
      DI(2) => control_intf_n_82,
      DI(1) => control_intf_n_83,
      DI(0) => control_intf_n_84,
      O(3 downto 0) => \NLW_more0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => control_intf_n_77,
      S(2) => control_intf_n_78,
      S(1) => control_intf_n_79,
      S(0) => control_intf_n_80
    );
\more0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__1_n_0\,
      CO(3) => \more0_carry__2_n_0\,
      CO(2) => \more0_carry__2_n_1\,
      CO(1) => \more0_carry__2_n_2\,
      CO(0) => \more0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => control_intf_n_89,
      DI(2) => control_intf_n_90,
      DI(1) => control_intf_n_91,
      DI(0) => control_intf_n_92,
      O(3 downto 0) => \NLW_more0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => control_intf_n_85,
      S(2) => control_intf_n_86,
      S(1) => control_intf_n_87,
      S(0) => control_intf_n_88
    );
\more0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__2_n_0\,
      CO(3) => \more0_carry__3_n_0\,
      CO(2) => \more0_carry__3_n_1\,
      CO(1) => \more0_carry__3_n_2\,
      CO(0) => \more0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => control_intf_n_97,
      DI(2) => control_intf_n_98,
      DI(1) => control_intf_n_99,
      DI(0) => control_intf_n_100,
      O(3 downto 0) => \NLW_more0_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => control_intf_n_93,
      S(2) => control_intf_n_94,
      S(1) => control_intf_n_95,
      S(0) => control_intf_n_96
    );
\more0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \more0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_more0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \more0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => control_intf_n_8,
      O(3 downto 0) => \NLW_more0_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => control_intf_n_50
    );
more_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \more0_carry__4_n_3\,
      Q => more,
      R => p_1_in
    );
transfer_started_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => control_intf_n_51,
      Q => transfer_started,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_const_gen_0_axi_stream_constant_generator_wrapper is
  port (
    bvalid_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arready : out STD_LOGIC;
    data_out_tvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rvalid_reg : out STD_LOGIC;
    resetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_const_gen_0_axi_stream_constant_generator_wrapper : entity is "axi_stream_constant_generator_wrapper";
end block_design_const_gen_0_axi_stream_constant_generator_wrapper;

architecture STRUCTURE of block_design_const_gen_0_axi_stream_constant_generator_wrapper is
begin
axi_stream_constant_generator: entity work.block_design_const_gen_0_axi_stream_constant_generator
     port map (
      aclk => aclk,
      bvalid_reg => bvalid_reg,
      data_out_tdata(7 downto 0) => data_out_tdata(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tvalid => data_out_tvalid,
      resetn => resetn,
      rvalid_reg => rvalid_reg,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_const_gen_0 is
  port (
    data_out_tvalid : out STD_LOGIC;
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_tready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_design_const_gen_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_const_gen_0 : entity is "block_design_const_gen_0,axi_stream_constant_generator_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block_design_const_gen_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of block_design_const_gen_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block_design_const_gen_0 : entity is "axi_stream_constant_generator_wrapper,Vivado 2019.2";
end block_design_const_gen_0;

architecture STRUCTURE of block_design_const_gen_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF data_out:s_axi, ASSOCIATED_RESET resetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_out_tready : signal is "xilinx.com:interface:axis:1.0 data_out TREADY";
  attribute X_INTERFACE_PARAMETER of data_out_tready : signal is "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_out_tvalid : signal is "xilinx.com:interface:axis:1.0 data_out TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of data_out_tdata : signal is "xilinx.com:interface:axis:1.0 data_out TDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.block_design_const_gen_0_axi_stream_constant_generator_wrapper
     port map (
      aclk => aclk,
      bvalid_reg => s_axi_bvalid,
      data_out_tdata(7 downto 0) => data_out_tdata(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tvalid => data_out_tvalid,
      resetn => resetn,
      rvalid_reg => s_axi_rvalid,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
