-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat Jun  6 05:11:43 2020
-- Host        : ff48e243dfe3 running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_card_0/block_design_sd_card_0_sim_netlist.vhdl
-- Design      : block_design_sd_card_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_axi4_lite_intf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \s_axi_awaddr[6]\ : out STD_LOGIC;
    resetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \set_reg[20].reg_written_reg[20][15]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \set_reg[19].reg_written_reg[19][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \set_reg[18].reg_written_reg[18][31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \waddr_saved_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    resetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_write : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ram_read : in STD_LOGIC;
    \rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \rdata[31]_i_4_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata[31]_i_4_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata[31]_i_4_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_word_out_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_byte_index_write : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \set_reg[18].reg_written_reg[18][31]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_axi4_lite_intf : entity is "axi4_lite_intf";
end block_design_sd_card_0_axi4_lite_intf;

architecture STRUCTURE of block_design_sd_card_0_axi4_lite_intf is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_read_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal awready_i_2_n_0 : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal bvalid_i_2_n_0 : STD_LOGIC;
  signal raddr_saved : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal rdata_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_delay_needed : STD_LOGIC;
  signal read_delay_needed_i_1_n_0 : STD_LOGIC;
  signal read_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \read_state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal rvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_awaddr[6]\ : STD_LOGIC;
  signal set_arready : STD_LOGIC;
  signal set_rdata : STD_LOGIC;
  signal \set_reg[18].reg_written[18][31]_i_2_n_0\ : STD_LOGIC;
  signal \^set_reg[18].reg_written_reg[18][31]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \set_reg[19].reg_written[19][31]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[19].reg_written_reg[19][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \set_reg[20].reg_written[20][15]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[20].reg_written_reg[20][15]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \wdata_saved_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[15]\ : STD_LOGIC;
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
  signal \wdata_saved_reg_n_0_[8]\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[9]\ : STD_LOGIC;
  signal write_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \write_state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_read_state[1]_i_2\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[0]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[1]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[2]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[0]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[1]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[2]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute SOFT_HLUTNM of bvalid_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[14]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[23]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[23]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[23]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rvalid_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \set_reg[18].reg_written[18][31]_i_3\ : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  SR(0) <= \^sr\(0);
  \s_axi_awaddr[6]\ <= \^s_axi_awaddr[6]\;
  \set_reg[18].reg_written_reg[18][31]_0\(7 downto 0) <= \^set_reg[18].reg_written_reg[18][31]_0\(7 downto 0);
  \set_reg[19].reg_written_reg[19][31]_0\(31 downto 0) <= \^set_reg[19].reg_written_reg[19][31]_0\(31 downto 0);
  \set_reg[20].reg_written_reg[20][15]_0\(8 downto 0) <= \^set_reg[20].reg_written_reg[20][15]_0\(8 downto 0);
\FSM_onehot_read_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEC0FFC0"
    )
        port map (
      I0 => \FSM_onehot_read_state[1]_i_2_n_0\,
      I1 => read_state_reg(1),
      I2 => s_axi_rready,
      I3 => read_state(0),
      I4 => s_axi_arvalid,
      O => \read_state_next__0\(0)
    );
\FSM_onehot_read_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FF20FF20"
    )
        port map (
      I0 => read_state_reg(1),
      I1 => s_axi_rready,
      I2 => read_state_reg(0),
      I3 => \FSM_onehot_read_state[1]_i_2_n_0\,
      I4 => s_axi_arvalid,
      I5 => read_state(0),
      O => \read_state_next__0\(1)
    );
\FSM_onehot_read_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_state_reg(0),
      I1 => read_delay_needed,
      I2 => ram_read,
      O => \FSM_onehot_read_state[1]_i_2_n_0\
    );
\FSM_onehot_read_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00E0EEEE"
    )
        port map (
      I0 => set_rdata,
      I1 => read_state_reg(1),
      I2 => read_state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_rready,
      I5 => read_state_reg(0),
      O => \read_state_next__0\(2)
    );
\FSM_onehot_read_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \read_state_next__0\(0),
      Q => read_state(0),
      S => \^sr\(0)
    );
\FSM_onehot_read_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \read_state_next__0\(1),
      Q => read_state_reg(0),
      R => \^sr\(0)
    );
\FSM_onehot_read_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \read_state_next__0\(2),
      Q => read_state_reg(1),
      R => \^sr\(0)
    );
\FSM_onehot_write_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F000FFFFF000"
    )
        port map (
      I0 => ram_write,
      I1 => write_state_reg(0),
      I2 => write_state_reg(1),
      I3 => s_axi_bready,
      I4 => write_state(0),
      I5 => bvalid_i_2_n_0,
      O => \write_state_next__0\(0)
    );
\FSM_onehot_write_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA08FF0CAA08"
    )
        port map (
      I0 => awready_i_2_n_0,
      I1 => write_state_reg(1),
      I2 => s_axi_bready,
      I3 => write_state(0),
      I4 => write_state_reg(0),
      I5 => ram_write,
      O => \write_state_next__0\(1)
    );
\FSM_onehot_write_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F020F0FFFF20F0"
    )
        port map (
      I0 => write_state(0),
      I1 => bvalid_i_2_n_0,
      I2 => write_state_reg(1),
      I3 => s_axi_bready,
      I4 => write_state_reg(0),
      I5 => ram_write,
      O => \write_state_next__0\(2)
    );
\FSM_onehot_write_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \write_state_next__0\(0),
      Q => write_state(0),
      S => \^sr\(0)
    );
\FSM_onehot_write_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \write_state_next__0\(1),
      Q => write_state_reg(0),
      R => \^sr\(0)
    );
\FSM_onehot_write_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \write_state_next__0\(2),
      Q => write_state_reg(1),
      R => \^sr\(0)
    );
arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => read_state(0),
      O => set_arready
    );
arready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_arready,
      Q => s_axi_arready,
      R => \^sr\(0)
    );
awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^sr\(0)
    );
awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => write_state(0),
      O => awready_i_2_n_0
    );
awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => awready_i_2_n_0,
      Q => s_axi_awready,
      R => \^sr\(0)
    );
bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0403040434330404"
    )
        port map (
      I0 => ram_write,
      I1 => write_state_reg(0),
      I2 => write_state(0),
      I3 => s_axi_bready,
      I4 => write_state_reg(1),
      I5 => bvalid_i_2_n_0,
      O => bvalid_i_1_n_0
    );
bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => bvalid_i_2_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => s_axi_bvalid,
      R => \^sr\(0)
    );
\latched_status_bits[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^e\(0),
      I1 => resetn,
      O => resetn_0(0)
    );
\raddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\raddr_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\raddr_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\raddr_saved_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(3),
      Q => raddr_saved(5),
      R => \^sr\(0)
    );
\raddr_saved_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(4),
      Q => raddr_saved(6),
      R => \^sr\(0)
    );
ram_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[17]\,
      I1 => \wdata_saved_reg_n_0_[9]\,
      I2 => \wdata_saved_reg_n_0_[25]\,
      I3 => ram_byte_index_write(0),
      I4 => ram_byte_index_write(1),
      I5 => \wdata_saved_reg_n_0_[1]\,
      O => p_1_in(1)
    );
ram_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[24]\,
      I1 => \wdata_saved_reg_n_0_[16]\,
      I2 => \wdata_saved_reg_n_0_[8]\,
      I3 => ram_byte_index_write(1),
      I4 => ram_byte_index_write(0),
      I5 => \wdata_saved_reg_n_0_[0]\,
      O => p_1_in(0)
    );
ram_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[27]\,
      I1 => \wdata_saved_reg_n_0_[19]\,
      I2 => \wdata_saved_reg_n_0_[3]\,
      I3 => ram_byte_index_write(0),
      I4 => ram_byte_index_write(1),
      I5 => \wdata_saved_reg_n_0_[11]\,
      O => p_1_in(3)
    );
ram_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[26]\,
      I1 => \wdata_saved_reg_n_0_[18]\,
      I2 => \wdata_saved_reg_n_0_[10]\,
      I3 => ram_byte_index_write(1),
      I4 => ram_byte_index_write(0),
      I5 => \wdata_saved_reg_n_0_[2]\,
      O => p_1_in(2)
    );
ram_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[21]\,
      I1 => \wdata_saved_reg_n_0_[13]\,
      I2 => \wdata_saved_reg_n_0_[29]\,
      I3 => ram_byte_index_write(0),
      I4 => ram_byte_index_write(1),
      I5 => \wdata_saved_reg_n_0_[5]\,
      O => p_1_in(5)
    );
ram_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[28]\,
      I1 => \wdata_saved_reg_n_0_[20]\,
      I2 => \wdata_saved_reg_n_0_[12]\,
      I3 => ram_byte_index_write(1),
      I4 => ram_byte_index_write(0),
      I5 => \wdata_saved_reg_n_0_[4]\,
      O => p_1_in(4)
    );
ram_reg_r1_0_31_6_7_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[31]\,
      I1 => \wdata_saved_reg_n_0_[23]\,
      I2 => \wdata_saved_reg_n_0_[7]\,
      I3 => ram_byte_index_write(0),
      I4 => ram_byte_index_write(1),
      I5 => \wdata_saved_reg_n_0_[15]\,
      O => p_1_in(7)
    );
ram_reg_r1_0_31_6_7_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[30]\,
      I1 => \wdata_saved_reg_n_0_[22]\,
      I2 => \wdata_saved_reg_n_0_[14]\,
      I3 => ram_byte_index_write(1),
      I4 => ram_byte_index_write(0),
      I5 => \wdata_saved_reg_n_0_[6]\,
      O => p_1_in(6)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(0),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[0]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => ram_word_out_reg(0),
      O => rdata_next(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(0),
      I1 => \rdata[31]_i_4_0\(0),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(0),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(10),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[10]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(2),
      O => rdata_next(10)
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(10),
      I1 => \rdata[31]_i_4_1\(10),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(10),
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(11),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[11]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(3),
      O => rdata_next(11)
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(11),
      I1 => \rdata[31]_i_4_1\(11),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(11),
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(12),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[12]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(4),
      O => rdata_next(12)
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(12),
      I1 => \rdata[31]_i_4_1\(12),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(12),
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(13),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[13]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(5),
      O => rdata_next(13)
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(13),
      I1 => \rdata[31]_i_4_0\(13),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(13),
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[14]_i_2_n_0\,
      I2 => \rdata[14]_i_3_n_0\,
      I3 => \rdata[14]_i_4_n_0\,
      O => rdata_next(14)
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(7),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[14]_i_2_n_0\
    );
\rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(14),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(14),
      O => \rdata[14]_i_3_n_0\
    );
\rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => \rdata_reg[31]_0\(6),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(14),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(14),
      O => \rdata[14]_i_4_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[15]_i_2_n_0\,
      I2 => \rdata[15]_i_3_n_0\,
      I3 => \rdata[15]_i_4_n_0\,
      O => rdata_next(15)
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(8),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[15]_i_2_n_0\
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(15),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(15),
      O => \rdata[15]_i_3_n_0\
    );
\rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => \rdata_reg[31]_0\(7),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(15),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(15),
      O => \rdata[15]_i_4_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(16),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[16]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(8),
      O => rdata_next(16)
    );
\rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(16),
      I1 => \rdata[31]_i_4_0\(16),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(16),
      O => \rdata[16]_i_2_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(17),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[17]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(9),
      O => rdata_next(17)
    );
\rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(17),
      I1 => \rdata[31]_i_4_0\(17),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(17),
      O => \rdata[17]_i_2_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(18),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[18]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(10),
      O => rdata_next(18)
    );
\rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(18),
      I1 => \rdata[31]_i_4_0\(18),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(18),
      O => \rdata[18]_i_2_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(19),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[19]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(11),
      O => rdata_next(19)
    );
\rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(19),
      I1 => \rdata[31]_i_4_0\(19),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(19),
      O => \rdata[19]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(1),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[1]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => ram_word_out_reg(1),
      O => rdata_next(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(1),
      I1 => \rdata[31]_i_4_1\(1),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(1),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(20),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[20]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(12),
      O => rdata_next(20)
    );
\rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(20),
      I1 => \rdata[31]_i_4_1\(20),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(20),
      O => \rdata[20]_i_2_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(21),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[21]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(13),
      O => rdata_next(21)
    );
\rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(21),
      I1 => \rdata[31]_i_4_0\(21),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(21),
      O => \rdata[21]_i_2_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(22),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[22]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(14),
      O => rdata_next(22)
    );
\rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(22),
      I1 => \rdata[31]_i_4_1\(22),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(22),
      O => \rdata[22]_i_2_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(23),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[23]_i_4_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(15),
      O => rdata_next(23)
    );
\rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => raddr_saved(5),
      I3 => raddr_saved(6),
      I4 => \^q\(0),
      O => \rdata[23]_i_2_n_0\
    );
\rdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => raddr_saved(5),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \rdata[23]_i_3_n_0\
    );
\rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000AC000000AC0"
    )
        port map (
      I0 => \rdata[31]_i_4_2\(23),
      I1 => \rdata[31]_i_4_1\(23),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_0\(23),
      O => \rdata[23]_i_4_n_0\
    );
\rdata[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => raddr_saved(6),
      O => \rdata[23]_i_5_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(24),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(0),
      I5 => \rdata[24]_i_2_n_0\,
      O => rdata_next(24)
    );
\rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[24]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(16),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[24]_i_2_n_0\
    );
\rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0F0FCF0A0F00CF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(24),
      I1 => \rdata[31]_i_4_1\(24),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_2\(24),
      O => \rdata[24]_i_3_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(25),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(1),
      I5 => \rdata[25]_i_2_n_0\,
      O => rdata_next(25)
    );
\rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[25]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(17),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[25]_i_2_n_0\
    );
\rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF00F0CCFF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(25),
      I1 => \rdata[31]_i_4_1\(25),
      I2 => \rdata[31]_i_4_2\(25),
      I3 => raddr_saved(6),
      I4 => raddr_saved(5),
      I5 => \^q\(2),
      O => \rdata[25]_i_3_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(26),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(2),
      I5 => \rdata[26]_i_2_n_0\,
      O => rdata_next(26)
    );
\rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[26]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(18),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[26]_i_2_n_0\
    );
\rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF00F0CCFF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(26),
      I1 => \rdata[31]_i_4_1\(26),
      I2 => \rdata[31]_i_4_2\(26),
      I3 => raddr_saved(6),
      I4 => raddr_saved(5),
      I5 => \^q\(2),
      O => \rdata[26]_i_3_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(27),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(3),
      I5 => \rdata[27]_i_2_n_0\,
      O => rdata_next(27)
    );
\rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[27]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(19),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[27]_i_2_n_0\
    );
\rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"233F2333230F2303"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(27),
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(27),
      I5 => \rdata[31]_i_4_2\(27),
      O => \rdata[27]_i_3_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(28),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(4),
      I5 => \rdata[28]_i_2_n_0\,
      O => rdata_next(28)
    );
\rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[28]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(20),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[28]_i_2_n_0\
    );
\rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF00F0CCFF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(28),
      I1 => \rdata[31]_i_4_1\(28),
      I2 => \rdata[31]_i_4_2\(28),
      I3 => raddr_saved(6),
      I4 => raddr_saved(5),
      I5 => \^q\(2),
      O => \rdata[28]_i_3_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(29),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(5),
      I5 => \rdata[29]_i_2_n_0\,
      O => rdata_next(29)
    );
\rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[29]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(21),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[29]_i_2_n_0\
    );
\rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0F0FCF0A0F00CF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(29),
      I1 => \rdata[31]_i_4_1\(29),
      I2 => raddr_saved(6),
      I3 => raddr_saved(5),
      I4 => \^q\(2),
      I5 => \rdata[31]_i_4_2\(29),
      O => \rdata[29]_i_3_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555555FD"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[31]_i_4_1\(2),
      I2 => \rdata[2]_i_2_n_0\,
      I3 => raddr_saved(5),
      I4 => \rdata[2]_i_3_n_0\,
      I5 => \rdata[2]_i_4_n_0\,
      O => rdata_next(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCF44CC"
    )
        port map (
      I0 => \^set_reg[19].reg_written_reg[19][31]_0\(2),
      I1 => \^q\(1),
      I2 => \^set_reg[20].reg_written_reg[20][15]_0\(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \rdata[2]_i_3_n_0\
    );
\rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(2),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(2),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(2),
      O => \rdata[2]_i_4_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(30),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(6),
      I5 => \rdata[30]_i_2_n_0\,
      O => rdata_next(30)
    );
\rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022202A28"
    )
        port map (
      I0 => \rdata[30]_i_3_n_0\,
      I1 => raddr_saved(6),
      I2 => raddr_saved(5),
      I3 => \rdata_reg[31]_0\(22),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \rdata[30]_i_2_n_0\
    );
\rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF00F0CCFF"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(30),
      I1 => \rdata[31]_i_4_1\(30),
      I2 => \rdata[31]_i_4_2\(30),
      I3 => raddr_saved(6),
      I4 => raddr_saved(5),
      I5 => \^q\(2),
      O => \rdata[30]_i_3_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => read_state_reg(0),
      I1 => read_delay_needed,
      I2 => ram_read,
      O => set_rdata
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^set_reg[19].reg_written_reg[19][31]_0\(31),
      I3 => \^q\(0),
      I4 => \^set_reg[18].reg_written_reg[18][31]_0\(7),
      I5 => \rdata[31]_i_4_n_0\,
      O => rdata_next(31)
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => raddr_saved(5),
      I2 => raddr_saved(6),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000CCCCCEEEE"
    )
        port map (
      I0 => \rdata_reg[31]_0\(23),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => raddr_saved(6),
      O => \rdata[31]_i_4_n_0\
    );
\rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CAF00000CA000"
    )
        port map (
      I0 => \rdata[31]_i_4_0\(31),
      I1 => \rdata[31]_i_4_1\(31),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(31),
      O => \rdata[31]_i_5_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[3]_i_2_n_0\,
      I2 => \rdata[3]_i_3_n_0\,
      I3 => \rdata[3]_i_4_n_0\,
      O => rdata_next(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(3),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(3),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(3),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(3),
      O => \rdata[3]_i_4_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[4]_i_2_n_0\,
      I2 => \rdata[4]_i_3_n_0\,
      I3 => \rdata[4]_i_4_n_0\,
      O => rdata_next(4)
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(2),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[4]_i_2_n_0\
    );
\rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(4),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(4),
      O => \rdata[4]_i_3_n_0\
    );
\rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(4),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(4),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(4),
      O => \rdata[4]_i_4_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[5]_i_2_n_0\,
      I2 => \rdata[5]_i_3_n_0\,
      I3 => \rdata[5]_i_4_n_0\,
      O => rdata_next(5)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[5]_i_2_n_0\
    );
\rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(5),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(5),
      O => \rdata[5]_i_3_n_0\
    );
\rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(5),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(5),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(5),
      O => \rdata[5]_i_4_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[6]_i_2_n_0\,
      I2 => \rdata[6]_i_3_n_0\,
      I3 => \rdata[6]_i_4_n_0\,
      O => rdata_next(6)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(4),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(6),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(6),
      O => \rdata[6]_i_3_n_0\
    );
\rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(6),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(6),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(6),
      O => \rdata[6]_i_4_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[7]_i_2_n_0\,
      I2 => \rdata[7]_i_3_n_0\,
      I3 => \rdata[7]_i_4_n_0\,
      O => rdata_next(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(5),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(7),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(7),
      O => \rdata[7]_i_3_n_0\
    );
\rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => ram_word_out_reg(7),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(7),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(7),
      O => \rdata[7]_i_4_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => raddr_saved(6),
      I1 => \rdata[8]_i_2_n_0\,
      I2 => \rdata[8]_i_3_n_0\,
      I3 => \rdata[8]_i_4_n_0\,
      O => rdata_next(8)
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[20].reg_written_reg[20][15]_0\(6),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \rdata[8]_i_2_n_0\
    );
\rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070707F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(8),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \rdata[31]_i_4_1\(8),
      O => \rdata[8]_i_3_n_0\
    );
\rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110FFF1111"
    )
        port map (
      I0 => \rdata_reg[31]_0\(0),
      I1 => raddr_saved(6),
      I2 => \rdata[31]_i_4_0\(8),
      I3 => \^q\(2),
      I4 => raddr_saved(5),
      I5 => \rdata[31]_i_4_2\(8),
      O => \rdata[8]_i_4_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F444F444F44"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^set_reg[19].reg_written_reg[19][31]_0\(9),
      I2 => \rdata[23]_i_3_n_0\,
      I3 => \rdata[9]_i_2_n_0\,
      I4 => \rdata[23]_i_5_n_0\,
      I5 => \rdata_reg[31]_0\(1),
      O => rdata_next(9)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000ACF00000AC000"
    )
        port map (
      I0 => \rdata[31]_i_4_1\(9),
      I1 => \rdata[31]_i_4_0\(9),
      I2 => \^q\(2),
      I3 => raddr_saved(5),
      I4 => raddr_saved(6),
      I5 => \rdata[31]_i_4_2\(9),
      O => \rdata[9]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(15),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(16),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(17),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(18),
      Q => s_axi_rdata(18),
      R => \^sr\(0)
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(19),
      Q => s_axi_rdata(19),
      R => \^sr\(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(20),
      Q => s_axi_rdata(20),
      R => \^sr\(0)
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(21),
      Q => s_axi_rdata(21),
      R => \^sr\(0)
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(22),
      Q => s_axi_rdata(22),
      R => \^sr\(0)
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(23),
      Q => s_axi_rdata(23),
      R => \^sr\(0)
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(24),
      Q => s_axi_rdata(24),
      R => \^sr\(0)
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(25),
      Q => s_axi_rdata(25),
      R => \^sr\(0)
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(26),
      Q => s_axi_rdata(26),
      R => \^sr\(0)
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(27),
      Q => s_axi_rdata(27),
      R => \^sr\(0)
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(28),
      Q => s_axi_rdata(28),
      R => \^sr\(0)
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(29),
      Q => s_axi_rdata(29),
      R => \^sr\(0)
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(30),
      Q => s_axi_rdata(30),
      R => \^sr\(0)
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(31),
      Q => s_axi_rdata(31),
      R => \^sr\(0)
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_rdata,
      D => rdata_next(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
read_delay_needed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(4),
      O => read_delay_needed_i_1_n_0
    );
read_delay_needed_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => read_delay_needed_i_1_n_0,
      Q => read_delay_needed,
      R => \^sr\(0)
    );
\reg_saved[9][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(4),
      I3 => set_arready,
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(2),
      O => \^e\(0)
    );
rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0522007705000500"
    )
        port map (
      I0 => read_state(0),
      I1 => s_axi_arvalid,
      I2 => rvalid_i_2_n_0,
      I3 => read_state_reg(0),
      I4 => s_axi_rready,
      I5 => read_state_reg(1),
      O => rvalid_i_1_n_0
    );
rvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_read,
      I1 => read_delay_needed,
      O => rvalid_i_2_n_0
    );
rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rvalid_i_1_n_0,
      Q => s_axi_rvalid,
      R => \^sr\(0)
    );
\set_reg[18].reg_written[18][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(2),
      I3 => \^s_axi_awaddr[6]\,
      I4 => write_state(0),
      I5 => s_axi_awaddr(3),
      O => \set_reg[18].reg_written[18][31]_i_2_n_0\
    );
\set_reg[18].reg_written[18][31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \^s_axi_awaddr[6]\
    );
\set_reg[18].reg_written_reg[18][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(24),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(0),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(25),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(1),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(26),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(2),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(27),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(3),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(28),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(4),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(29),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(5),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(30),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(6),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[18].reg_written_reg[18][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[18].reg_written[18][31]_i_2_n_0\,
      D => s_axi_wdata(31),
      Q => \^set_reg[18].reg_written_reg[18][31]_0\(7),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written[19][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(2),
      I3 => \^s_axi_awaddr[6]\,
      I4 => write_state(0),
      I5 => s_axi_awaddr(3),
      O => \set_reg[19].reg_written[19][31]_i_1_n_0\
    );
\set_reg[19].reg_written_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(0),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(10),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(11),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(12),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(13),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(14),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(15),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(16),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(17),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(18),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(19),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(1),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(20),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(21),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(22),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(23),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(24),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(25),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(26),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(27),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(28),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(29),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(2),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(30),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(31),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(3),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(4),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(5),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(6),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(7),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(8),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[19].reg_written_reg[19][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[19].reg_written[19][31]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^set_reg[19].reg_written_reg[19][31]_0\(9),
      R => \set_reg[18].reg_written_reg[18][31]_1\(0)
    );
\set_reg[20].reg_written[20][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => write_state(0),
      I2 => \^s_axi_awaddr[6]\,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_awaddr(0),
      O => \set_reg[20].reg_written[20][15]_i_1_n_0\
    );
\set_reg[20].reg_written_reg[20][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(7),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(8),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(0),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(1),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(2),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(3),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(4),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(5),
      R => \^sr\(0)
    );
\set_reg[20].reg_written_reg[20][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[20].reg_written[20][15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^set_reg[20].reg_written_reg[20][15]_0\(6),
      R => \^sr\(0)
    );
\waddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_awaddr(0),
      Q => \waddr_saved_reg[4]_0\(0),
      R => \^sr\(0)
    );
\waddr_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_awaddr(1),
      Q => \waddr_saved_reg[4]_0\(1),
      R => \^sr\(0)
    );
\waddr_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_awaddr(2),
      Q => \waddr_saved_reg[4]_0\(2),
      R => \^sr\(0)
    );
\wdata_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => \wdata_saved_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => \wdata_saved_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => \wdata_saved_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => \wdata_saved_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => \wdata_saved_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => \wdata_saved_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => \wdata_saved_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => \wdata_saved_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => \wdata_saved_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => \wdata_saved_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => \wdata_saved_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => \wdata_saved_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(20),
      Q => \wdata_saved_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(21),
      Q => \wdata_saved_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(22),
      Q => \wdata_saved_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(23),
      Q => \wdata_saved_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(24),
      Q => \wdata_saved_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(25),
      Q => \wdata_saved_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(26),
      Q => \wdata_saved_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(27),
      Q => \wdata_saved_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(28),
      Q => \wdata_saved_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(29),
      Q => \wdata_saved_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => \wdata_saved_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(30),
      Q => \wdata_saved_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(31),
      Q => \wdata_saved_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => \wdata_saved_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => \wdata_saved_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => \wdata_saved_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => \wdata_saved_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => \wdata_saved_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => \wdata_saved_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\wdata_saved_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => \wdata_saved_reg_n_0_[9]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_card_status_keeper is
  port (
    Q : out STD_LOGIC_VECTOR ( 26 downto 0 );
    \cmd_index_reg[0]\ : out STD_LOGIC;
    \card_status_resp_reg[23]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \card_status_reg[11]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    valid_c1_out : out STD_LOGIC;
    ignored_c : out STD_LOGIC;
    \card_status_reg[5]_0\ : out STD_LOGIC;
    acmd_defined_c : out STD_LOGIC;
    \card_status_reg[10]_0\ : out STD_LOGIC;
    \card_status_reg[9]_0\ : out STD_LOGIC;
    \dev_ram_data_reg[4]\ : out STD_LOGIC;
    \cmd_index_reg[4]\ : out STD_LOGIC;
    \dev_ram_data_reg[0]\ : out STD_LOGIC;
    \dev_ram_data_reg[1]\ : out STD_LOGIC;
    \dev_ram_data_reg[2]\ : out STD_LOGIC;
    \dev_ram_data_reg[3]\ : out STD_LOGIC;
    \dev_ram_data_reg[5]\ : out STD_LOGIC;
    \dev_ram_data_reg[6]\ : out STD_LOGIC;
    \dev_ram_data_reg[7]\ : out STD_LOGIC;
    cmd_illegal_stb_reg : out STD_LOGIC;
    \card_status_resp_reg[2]_0\ : out STD_LOGIC;
    \card_status_resp_reg[5]_0\ : out STD_LOGIC;
    \card_status_reg[10]_1\ : out STD_LOGIC;
    \card_status_reg[10]_2\ : out STD_LOGIC;
    \card_status_reg[11]_1\ : out STD_LOGIC;
    acmd_defined_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_resp_pos : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \card_status_reg[23]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \card_status_reg[10]_3\ : in STD_LOGIC;
    \card_status_reg[10]_4\ : in STD_LOGIC;
    \card_status_reg[10]_5\ : in STD_LOGIC;
    \card_status_reg[31]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    update_2 : in STD_LOGIC;
    \card_status_reg[31]_1\ : in STD_LOGIC;
    \card_status_reg[31]_2\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sent_r1 : in STD_LOGIC;
    erase_seq_error : in STD_LOGIC;
    cc_error_out : in STD_LOGIC;
    erase_reset : in STD_LOGIC;
    \card_status_reg[9]_1\ : in STD_LOGIC;
    initialization_done : in STD_LOGIC;
    valid_reg : in STD_LOGIC;
    valid_reg_0 : in STD_LOGIC;
    illegal_reg : in STD_LOGIC;
    rca_match : in STD_LOGIC;
    \card_status[10]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_reg_i_4_0 : in STD_LOGIC;
    illegal_reg_0 : in STD_LOGIC;
    cmd8_vhs_match : in STD_LOGIC;
    valid_reg_i_4_1 : in STD_LOGIC;
    ignored_reg : in STD_LOGIC;
    ignored_reg_0 : in STD_LOGIC;
    ignored_reg_1 : in STD_LOGIC;
    \card_status_resp_reg[28]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    invalid_dat_width : in STD_LOGIC;
    out_of_range : in STD_LOGIC;
    dat_done : in STD_LOGIC;
    \card_status_reg[9]_2\ : in STD_LOGIC;
    \reg_clear_always[21]_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    dev_ram_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \resp_byte_reg[4]\ : in STD_LOGIC;
    \resp_byte_reg[4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cmd_illegal_stb : in STD_LOGIC;
    cmd_crc_err_stb : in STD_LOGIC;
    cmd_ignored_stb : in STD_LOGIC;
    \resp_byte_reg[2]\ : in STD_LOGIC;
    \resp_byte_reg[2]_0\ : in STD_LOGIC;
    \resp_byte_reg[5]\ : in STD_LOGIC;
    \resp_byte_reg[5]_0\ : in STD_LOGIC;
    dat_resetn : in STD_LOGIC;
    fifo_out_almostfull : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \card_status_reg[11]_2\ : in STD_LOGIC;
    \card_status_reg[11]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_card_status_keeper : entity is "card_status_keeper";
end block_design_sd_card_0_card_status_keeper;

architecture STRUCTURE of block_design_sd_card_0_card_status_keeper is
  signal \^q\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \card_status[10]_i_1_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_4_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_5_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_6_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_7_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_10_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_11_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_12_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_14_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_1_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_3_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_5_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_6_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_8_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_9_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_1_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_2_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_3_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_4_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_5_n_0\ : STD_LOGIC;
  signal card_status_next2_out : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \^card_status_reg[11]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal card_status_resp : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal card_status_resp_next : STD_LOGIC_VECTOR ( 31 downto 20 );
  signal \^card_status_resp_reg[23]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^ignored_c\ : STD_LOGIC;
  signal ignored_i_3_n_0 : STD_LOGIC;
  signal \resp_byte[0]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_5_n_0\ : STD_LOGIC;
  signal valid_i_10_n_0 : STD_LOGIC;
  signal valid_i_11_n_0 : STD_LOGIC;
  signal valid_i_13_n_0 : STD_LOGIC;
  signal valid_i_3_n_0 : STD_LOGIC;
  signal valid_i_6_n_0 : STD_LOGIC;
  signal valid_i_8_n_0 : STD_LOGIC;
  signal valid_i_9_n_0 : STD_LOGIC;
  signal valid_reg_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_out_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \card_status[10]_i_6\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \card_status[11]_i_12\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \card_status[11]_i_14\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \card_status[11]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \card_status[11]_i_9\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \card_status[5]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of dev_resetn_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of ignored_i_3 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of reading_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of ready_for_data_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of valid_i_13 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of valid_i_3 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of writing_i_1 : label is "soft_lutpair47";
begin
  Q(26 downto 0) <= \^q\(26 downto 0);
  \card_status_reg[11]_0\(2 downto 0) <= \^card_status_reg[11]_0\(2 downto 0);
  \card_status_resp_reg[23]_0\(11 downto 0) <= \^card_status_resp_reg[23]_0\(11 downto 0);
  ignored_c <= \^ignored_c\;
acmd_defined_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => acmd_defined_reg,
      O => acmd_defined_c
    );
busy_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(1),
      I1 => \^card_status_reg[11]_0\(2),
      I2 => dat_resetn,
      I3 => \^card_status_reg[11]_0\(0),
      O => \card_status_reg[10]_1\
    );
\card_status[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF202A2020"
    )
        port map (
      I0 => card_status_next2_out(10),
      I1 => \card_status[11]_i_3_n_0\,
      I2 => \card_status_reg[11]_3\,
      I3 => \card_status[11]_i_5_n_0\,
      I4 => \card_status[11]_i_6_n_0\,
      I5 => \^card_status_reg[11]_0\(1),
      O => \card_status[10]_i_1_n_0\
    );
\card_status[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5755575557555455"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(0),
      I1 => \card_status_reg[10]_3\,
      I2 => \card_status_reg[10]_4\,
      I3 => \card_status_reg[10]_5\,
      I4 => \card_status[10]_i_4_n_0\,
      I5 => \card_status[10]_i_5_n_0\,
      O => card_status_next2_out(10)
    );
\card_status[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A22280008000"
    )
        port map (
      I0 => D(0),
      I1 => D(1),
      I2 => D(2),
      I3 => \card_status[10]_i_6_n_0\,
      I4 => D(3),
      I5 => D(5),
      O => \card_status[10]_i_4_n_0\
    );
\card_status[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0055BA00"
    )
        port map (
      I0 => D(2),
      I1 => \card_status[10]_i_2_0\(0),
      I2 => D(3),
      I3 => D(4),
      I4 => D(1),
      I5 => \card_status[10]_i_7_n_0\,
      O => \card_status[10]_i_5_n_0\
    );
\card_status[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(2),
      I1 => \^card_status_reg[11]_0\(1),
      I2 => rca_match,
      O => \card_status[10]_i_6_n_0\
    );
\card_status[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA4444AFAA4444"
    )
        port map (
      I0 => D(5),
      I1 => D(3),
      I2 => D(0),
      I3 => \^card_status_reg[11]_0\(1),
      I4 => D(2),
      I5 => D(1),
      O => \card_status[10]_i_7_n_0\
    );
\card_status[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFFF303A3030"
    )
        port map (
      I0 => \card_status_reg[11]_2\,
      I1 => \card_status[11]_i_3_n_0\,
      I2 => \card_status_reg[11]_3\,
      I3 => \card_status[11]_i_5_n_0\,
      I4 => \card_status[11]_i_6_n_0\,
      I5 => \^card_status_reg[11]_0\(2),
      O => \card_status[11]_i_1_n_0\
    );
\card_status[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDEFFDFFFFDF"
    )
        port map (
      I0 => D(3),
      I1 => D(4),
      I2 => D(2),
      I3 => D(5),
      I4 => D(0),
      I5 => D(1),
      O => \card_status[11]_i_10_n_0\
    );
\card_status[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CD0A4C1C8D0EE9"
    )
        port map (
      I0 => D(3),
      I1 => D(4),
      I2 => D(5),
      I3 => D(2),
      I4 => D(1),
      I5 => D(0),
      O => \card_status[11]_i_11_n_0\
    );
\card_status[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \card_status[11]_i_10_n_0\,
      I1 => \^q\(5),
      O => \card_status[11]_i_12_n_0\
    );
\card_status[11]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \^q\(5),
      I1 => \card_status[11]_i_10_n_0\,
      I2 => \^card_status_reg[11]_0\(1),
      I3 => \^card_status_reg[11]_0\(0),
      I4 => \^card_status_reg[11]_0\(2),
      O => \card_status[11]_i_14_n_0\
    );
\card_status[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFF55FF55FFFFFF"
    )
        port map (
      I0 => dat_done,
      I1 => \card_status_reg[9]_2\,
      I2 => \reg_clear_always[21]_13\(0),
      I3 => \^card_status_reg[11]_0\(2),
      I4 => \^card_status_reg[11]_0\(1),
      I5 => \^card_status_reg[11]_0\(0),
      O => \card_status[11]_i_3_n_0\
    );
\card_status[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A20"
    )
        port map (
      I0 => \card_status[11]_i_8_n_0\,
      I1 => \card_status[11]_i_9_n_0\,
      I2 => \card_status[11]_i_10_n_0\,
      I3 => \^q\(5),
      I4 => \card_status[11]_i_11_n_0\,
      O => \card_status[11]_i_5_n_0\
    );
\card_status[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABAAAAAAABAA"
    )
        port map (
      I0 => \card_status[11]_i_8_n_0\,
      I1 => \card_status[11]_i_12_n_0\,
      I2 => \card_status_reg[9]_1\,
      I3 => initialization_done,
      I4 => \card_status[11]_i_11_n_0\,
      I5 => \card_status[11]_i_14_n_0\,
      O => \card_status[11]_i_6_n_0\
    );
\card_status[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B0700223F160CA3"
    )
        port map (
      I0 => D(1),
      I1 => D(5),
      I2 => D(2),
      I3 => D(3),
      I4 => D(4),
      I5 => D(0),
      O => \card_status[11]_i_8_n_0\
    );
\card_status[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0838"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(0),
      I1 => \^card_status_reg[11]_0\(1),
      I2 => \^card_status_reg[11]_0\(2),
      I3 => rca_match,
      O => \card_status[11]_i_9_n_0\
    );
\card_status[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEEE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \card_status_reg[31]_0\(1),
      I2 => erase_reset,
      I3 => update_2,
      I4 => \card_status_reg[31]_2\(1),
      I5 => sent_r1,
      O => card_status_next2_out(13)
    );
\card_status[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(9),
      I1 => \card_status_reg[31]_0\(2),
      I2 => \card_status_reg[31]_2\(2),
      I3 => sent_r1,
      O => card_status_next2_out(14)
    );
\card_status[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \card_status_reg[31]_0\(3),
      I2 => \card_status_reg[31]_2\(3),
      I3 => sent_r1,
      O => card_status_next2_out(15)
    );
\card_status[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(11),
      I1 => \card_status_reg[31]_0\(4),
      I2 => \card_status_reg[31]_2\(4),
      I3 => sent_r1,
      O => card_status_next2_out(16)
    );
\card_status[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(12),
      I1 => \card_status_reg[31]_0\(5),
      I2 => \card_status_reg[31]_2\(5),
      I3 => sent_r1,
      O => card_status_next2_out(17)
    );
\card_status[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(13),
      I1 => \card_status_reg[31]_0\(6),
      I2 => \card_status_reg[31]_2\(6),
      I3 => sent_r1,
      O => card_status_next2_out(18)
    );
\card_status[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEEE"
    )
        port map (
      I0 => \^q\(15),
      I1 => \card_status_reg[31]_0\(7),
      I2 => cc_error_out,
      I3 => update_2,
      I4 => \card_status_reg[31]_2\(7),
      I5 => sent_r1,
      O => card_status_next2_out(20)
    );
\card_status[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(16),
      I1 => \card_status_reg[31]_0\(8),
      I2 => \card_status_reg[31]_2\(8),
      I3 => sent_r1,
      O => card_status_next2_out(21)
    );
\card_status[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(19),
      I1 => \card_status_reg[31]_0\(9),
      I2 => \card_status_reg[31]_2\(9),
      I3 => sent_r1,
      O => card_status_next2_out(24)
    );
\card_status[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^q\(20),
      I1 => \card_status_reg[31]_0\(10),
      I2 => \card_status_reg[31]_2\(10),
      O => card_status_next2_out(25)
    );
\card_status[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(21),
      I1 => \card_status_reg[31]_0\(11),
      I2 => \card_status_reg[31]_2\(11),
      I3 => sent_r1,
      O => card_status_next2_out(26)
    );
\card_status[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(22),
      I1 => \card_status_reg[31]_0\(12),
      I2 => \card_status_reg[31]_2\(12),
      I3 => sent_r1,
      O => card_status_next2_out(27)
    );
\card_status[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEEE"
    )
        port map (
      I0 => \^q\(23),
      I1 => \card_status_reg[31]_0\(13),
      I2 => erase_seq_error,
      I3 => update_2,
      I4 => \card_status_reg[31]_2\(13),
      I5 => sent_r1,
      O => card_status_next2_out(28)
    );
\card_status[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(24),
      I1 => \card_status_reg[31]_0\(14),
      I2 => \card_status_reg[31]_2\(14),
      I3 => sent_r1,
      O => card_status_next2_out(29)
    );
\card_status[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^q\(25),
      I1 => \card_status_reg[31]_0\(15),
      I2 => \card_status_reg[31]_2\(15),
      I3 => sent_r1,
      O => card_status_next2_out(30)
    );
\card_status[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EEFE"
    )
        port map (
      I0 => \^q\(26),
      I1 => \card_status_reg[31]_0\(16),
      I2 => update_2,
      I3 => \card_status_reg[31]_1\,
      I4 => \card_status_reg[31]_2\(16),
      I5 => sent_r1,
      O => card_status_next2_out(31)
    );
\card_status[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => D(0),
      I1 => D(3),
      I2 => D(2),
      I3 => D(1),
      I4 => D(4),
      I5 => D(5),
      O => \cmd_index_reg[0]\
    );
\card_status[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cmd_illegal_stb,
      I1 => cmd_crc_err_stb,
      I2 => \^q\(5),
      I3 => cmd_ignored_stb,
      O => cmd_illegal_stb_reg
    );
\card_status[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^q\(6),
      I1 => \card_status_reg[31]_0\(0),
      I2 => \card_status_reg[31]_2\(0),
      O => card_status_next2_out(6)
    );
\card_status[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCACFCF303A3030"
    )
        port map (
      I0 => \card_status[9]_i_2_n_0\,
      I1 => \card_status[11]_i_3_n_0\,
      I2 => \card_status_reg[11]_3\,
      I3 => \card_status[11]_i_5_n_0\,
      I4 => \card_status[11]_i_6_n_0\,
      I5 => \^card_status_reg[11]_0\(0),
      O => \card_status[9]_i_1_n_0\
    );
\card_status[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBE0000"
    )
        port map (
      I0 => D(3),
      I1 => rca_match,
      I2 => \^card_status_reg[11]_0\(1),
      I3 => \^card_status_reg[11]_0\(2),
      I4 => \card_status[9]_i_3_n_0\,
      I5 => \card_status[9]_i_4_n_0\,
      O => \card_status[9]_i_2_n_0\
    );
\card_status[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAB9AA00"
    )
        port map (
      I0 => D(2),
      I1 => D(4),
      I2 => \^card_status_reg[11]_0\(1),
      I3 => D(1),
      I4 => D(3),
      O => \card_status[9]_i_3_n_0\
    );
\card_status[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFAAFEFAFAAAFE"
    )
        port map (
      I0 => \card_status[9]_i_5_n_0\,
      I1 => D(4),
      I2 => D(2),
      I3 => D(3),
      I4 => D(0),
      I5 => D(1),
      O => \card_status[9]_i_4_n_0\
    );
\card_status[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3E00000000003E00"
    )
        port map (
      I0 => \card_status[10]_i_2_0\(0),
      I1 => D(1),
      I2 => D(0),
      I3 => D(4),
      I4 => D(5),
      I5 => D(3),
      O => \card_status[9]_i_5_n_0\
    );
\card_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\card_status_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status[10]_i_1_n_0\,
      Q => \^card_status_reg[11]_0\(1),
      R => SR(0)
    );
\card_status_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status[11]_i_1_n_0\,
      Q => \^card_status_reg[11]_0\(2),
      R => SR(0)
    );
\card_status_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(13),
      Q => \^q\(8),
      R => SR(0)
    );
\card_status_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(14),
      Q => \^q\(9),
      R => SR(0)
    );
\card_status_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(15),
      Q => \^q\(10),
      R => SR(0)
    );
\card_status_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(16),
      Q => \^q\(11),
      R => SR(0)
    );
\card_status_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(17),
      Q => \^q\(12),
      R => SR(0)
    );
\card_status_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(18),
      Q => \^q\(13),
      R => SR(0)
    );
\card_status_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(7),
      Q => \^q\(14),
      R => SR(0)
    );
\card_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\card_status_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(20),
      Q => \^q\(15),
      R => SR(0)
    );
\card_status_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(21),
      Q => \^q\(16),
      R => SR(0)
    );
\card_status_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(8),
      Q => \^q\(17),
      R => SR(0)
    );
\card_status_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(9),
      Q => \^q\(18),
      R => SR(0)
    );
\card_status_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(24),
      Q => \^q\(19),
      R => SR(0)
    );
\card_status_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(25),
      Q => \^q\(20),
      R => SR(0)
    );
\card_status_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(26),
      Q => \^q\(21),
      R => SR(0)
    );
\card_status_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(27),
      Q => \^q\(22),
      R => SR(0)
    );
\card_status_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(28),
      Q => \^q\(23),
      R => SR(0)
    );
\card_status_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(29),
      Q => \^q\(24),
      R => SR(0)
    );
\card_status_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\card_status_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(30),
      Q => \^q\(25),
      R => SR(0)
    );
\card_status_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(31),
      Q => \^q\(26),
      R => SR(0)
    );
\card_status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\card_status_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(4),
      Q => \^q\(4),
      R => SR(0)
    );
\card_status_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(5),
      Q => \^q\(5),
      R => SR(0)
    );
\card_status_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => card_status_next2_out(6),
      Q => \^q\(6),
      R => SR(0)
    );
\card_status_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status_reg[23]_0\(6),
      Q => \^q\(7),
      R => SR(0)
    );
\card_status_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \card_status[9]_i_1_n_0\,
      Q => \^card_status_reg[11]_0\(0),
      R => SR(0)
    );
\card_status_resp[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cc_error_out,
      I1 => \^q\(15),
      O => card_status_resp_next(20)
    );
\card_status_resp[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(26),
      I1 => invalid_dat_width,
      I2 => out_of_range,
      O => card_status_resp_next(31)
    );
\card_status_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(0),
      Q => \^card_status_resp_reg[23]_0\(0),
      R => SR(0)
    );
\card_status_resp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^card_status_reg[11]_0\(1),
      Q => \^card_status_resp_reg[23]_0\(7),
      R => SR(0)
    );
\card_status_resp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^card_status_reg[11]_0\(2),
      Q => \^card_status_resp_reg[23]_0\(8),
      R => SR(0)
    );
\card_status_resp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \card_status_resp_reg[28]_0\(2),
      Q => card_status_resp(13),
      R => SR(0)
    );
\card_status_resp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(9),
      Q => card_status_resp(14),
      R => SR(0)
    );
\card_status_resp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(10),
      Q => card_status_resp(15),
      R => SR(0)
    );
\card_status_resp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(11),
      Q => card_status_resp(16),
      R => SR(0)
    );
\card_status_resp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(12),
      Q => card_status_resp(17),
      R => SR(0)
    );
\card_status_resp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(13),
      Q => card_status_resp(18),
      R => SR(0)
    );
\card_status_resp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(14),
      Q => \^card_status_resp_reg[23]_0\(9),
      R => SR(0)
    );
\card_status_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(1),
      Q => \^card_status_resp_reg[23]_0\(1),
      R => SR(0)
    );
\card_status_resp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => card_status_resp_next(20),
      Q => card_status_resp(20),
      R => SR(0)
    );
\card_status_resp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(16),
      Q => card_status_resp(21),
      R => SR(0)
    );
\card_status_resp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(17),
      Q => \^card_status_resp_reg[23]_0\(10),
      R => SR(0)
    );
\card_status_resp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(18),
      Q => \^card_status_resp_reg[23]_0\(11),
      R => SR(0)
    );
\card_status_resp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(19),
      Q => card_status_resp(24),
      R => SR(0)
    );
\card_status_resp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(20),
      Q => card_status_resp(25),
      R => SR(0)
    );
\card_status_resp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(21),
      Q => card_status_resp(26),
      R => SR(0)
    );
\card_status_resp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(22),
      Q => card_status_resp(27),
      R => SR(0)
    );
\card_status_resp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \card_status_resp_reg[28]_0\(3),
      Q => card_status_resp(28),
      R => SR(0)
    );
\card_status_resp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(24),
      Q => card_status_resp(29),
      R => SR(0)
    );
\card_status_resp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(2),
      Q => card_status_resp(2),
      R => SR(0)
    );
\card_status_resp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(25),
      Q => card_status_resp(30),
      R => SR(0)
    );
\card_status_resp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => card_status_resp_next(31),
      Q => card_status_resp(31),
      R => SR(0)
    );
\card_status_resp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(3),
      Q => \^card_status_resp_reg[23]_0\(2),
      R => SR(0)
    );
\card_status_resp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(4),
      Q => card_status_resp(4),
      R => SR(0)
    );
\card_status_resp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \card_status_resp_reg[28]_0\(0),
      Q => card_status_resp(5),
      R => SR(0)
    );
\card_status_resp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(6),
      Q => \^card_status_resp_reg[23]_0\(3),
      R => SR(0)
    );
\card_status_resp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^q\(7),
      Q => \^card_status_resp_reg[23]_0\(4),
      R => SR(0)
    );
\card_status_resp_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => update_2,
      D => \card_status_resp_reg[28]_0\(1),
      Q => \^card_status_resp_reg[23]_0\(5),
      S => SR(0)
    );
\card_status_resp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_2,
      D => \^card_status_reg[11]_0\(0),
      Q => \^card_status_resp_reg[23]_0\(6),
      R => SR(0)
    );
dev_resetn_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(1),
      I1 => \^card_status_reg[11]_0\(0),
      I2 => \^card_status_reg[11]_0\(2),
      O => \card_status_reg[10]_0\
    );
ignored_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050D0507FF3F0507"
    )
        port map (
      I0 => ignored_reg,
      I1 => \^q\(5),
      I2 => ignored_i_3_n_0,
      I3 => ignored_reg_0,
      I4 => ignored_reg_1,
      I5 => rca_match,
      O => \^ignored_c\
    );
ignored_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(2),
      I1 => \^card_status_reg[11]_0\(0),
      I2 => \^card_status_reg[11]_0\(1),
      O => ignored_i_3_n_0
    );
illegal_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510101055555555"
    )
        port map (
      I0 => \^ignored_c\,
      I1 => valid_reg,
      I2 => valid_i_3_n_0,
      I3 => valid_reg_i_4_n_0,
      I4 => valid_reg_0,
      I5 => valid_i_6_n_0,
      O => \card_status_reg[5]_0\
    );
reading_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(2),
      I1 => \^card_status_reg[11]_0\(1),
      O => \card_status_reg[11]_1\
    );
ready_for_data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(1),
      I1 => \^card_status_reg[11]_0\(2),
      I2 => \^card_status_reg[11]_0\(0),
      I3 => fifo_out_almostfull,
      O => \card_status_reg[10]_2\
    );
\resp_byte[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => dev_ram_data(0),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => \^card_status_resp_reg[23]_0\(0),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[0]_i_7_n_0\,
      O => \dev_ram_data_reg[0]\
    );
\resp_byte[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^card_status_resp_reg[23]_0\(5),
      I1 => card_status_resp(16),
      I2 => cmd_resp_pos(1),
      I3 => card_status_resp(24),
      I4 => cmd_resp_pos(0),
      I5 => D(0),
      O => \resp_byte[0]_i_7_n_0\
    );
\resp_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => dev_ram_data(1),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => \^card_status_resp_reg[23]_0\(1),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[1]_i_4_n_0\,
      O => \dev_ram_data_reg[1]\
    );
\resp_byte[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^card_status_resp_reg[23]_0\(6),
      I1 => card_status_resp(17),
      I2 => cmd_resp_pos(1),
      I3 => card_status_resp(25),
      I4 => cmd_resp_pos(0),
      I5 => D(1),
      O => \resp_byte[1]_i_4_n_0\
    );
\resp_byte[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => card_status_resp(2),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte_reg[2]\,
      I3 => \resp_byte_reg[4]_0\(0),
      I4 => \resp_byte_reg[2]_0\,
      O => \card_status_resp_reg[2]_0\
    );
\resp_byte[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => dev_ram_data(2),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => card_status_resp(2),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[2]_i_7_n_0\,
      O => \dev_ram_data_reg[2]\
    );
\resp_byte[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^card_status_resp_reg[23]_0\(7),
      I1 => card_status_resp(18),
      I2 => cmd_resp_pos(1),
      I3 => card_status_resp(26),
      I4 => cmd_resp_pos(0),
      I5 => D(2),
      O => \resp_byte[2]_i_7_n_0\
    );
\resp_byte[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => dev_ram_data(3),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => \^card_status_resp_reg[23]_0\(2),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[3]_i_4_n_0\,
      O => \dev_ram_data_reg[3]\
    );
\resp_byte[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^card_status_resp_reg[23]_0\(8),
      I1 => \^card_status_resp_reg[23]_0\(9),
      I2 => cmd_resp_pos(1),
      I3 => card_status_resp(27),
      I4 => cmd_resp_pos(0),
      I5 => D(3),
      O => \resp_byte[3]_i_4_n_0\
    );
\resp_byte[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0E0E0EFEFEFEF"
    )
        port map (
      I0 => dev_ram_data(4),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => card_status_resp(4),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[4]_i_7_n_0\,
      O => \dev_ram_data_reg[4]\
    );
\resp_byte[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020002FFFFFFFF"
    )
        port map (
      I0 => D(4),
      I1 => cmd_resp_pos(0),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(2),
      I4 => card_status_resp(4),
      I5 => \resp_byte_reg[4]_0\(0),
      O => \cmd_index_reg[4]\
    );
\resp_byte[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFFBAFABFFFBF"
    )
        port map (
      I0 => cmd_resp_pos(2),
      I1 => card_status_resp(20),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(0),
      I4 => card_status_resp(28),
      I5 => D(4),
      O => \resp_byte[4]_i_7_n_0\
    );
\resp_byte[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => card_status_resp(5),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte_reg[5]\,
      I3 => \resp_byte_reg[4]_0\(0),
      I4 => \resp_byte_reg[5]_0\,
      O => \card_status_resp_reg[5]_0\
    );
\resp_byte[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => dev_ram_data(5),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => card_status_resp(5),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[5]_i_7_n_0\,
      O => \dev_ram_data_reg[5]\
    );
\resp_byte[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => card_status_resp(13),
      I1 => card_status_resp(21),
      I2 => cmd_resp_pos(1),
      I3 => card_status_resp(29),
      I4 => cmd_resp_pos(0),
      I5 => D(5),
      O => \resp_byte[5]_i_7_n_0\
    );
\resp_byte[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => dev_ram_data(6),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => \^card_status_resp_reg[23]_0\(3),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[6]_i_4_n_0\,
      O => \dev_ram_data_reg[6]\
    );
\resp_byte[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => card_status_resp(14),
      I1 => \^card_status_resp_reg[23]_0\(10),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(0),
      I4 => card_status_resp(30),
      O => \resp_byte[6]_i_4_n_0\
    );
\resp_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => dev_ram_data(7),
      I1 => \resp_byte_reg[4]\,
      I2 => \resp_byte_reg[4]_0\(1),
      I3 => \^card_status_resp_reg[23]_0\(4),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte[7]_i_5_n_0\,
      O => \dev_ram_data_reg[7]\
    );
\resp_byte[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => card_status_resp(15),
      I1 => \^card_status_resp_reg[23]_0\(11),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(0),
      I4 => card_status_resp(31),
      O => \resp_byte[7]_i_5_n_0\
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000BBB0000"
    )
        port map (
      I0 => valid_reg,
      I1 => valid_i_3_n_0,
      I2 => valid_reg_i_4_n_0,
      I3 => valid_reg_0,
      I4 => valid_i_6_n_0,
      I5 => \^ignored_c\,
      O => valid_c1_out
    );
valid_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0C0CCCCCCCCCC4"
    )
        port map (
      I0 => cmd8_vhs_match,
      I1 => illegal_reg_0,
      I2 => valid_reg_i_4_0,
      I3 => \^card_status_reg[11]_0\(1),
      I4 => \^card_status_reg[11]_0\(0),
      I5 => \^card_status_reg[11]_0\(2),
      O => valid_i_10_n_0
    );
valid_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF74043000"
    )
        port map (
      I0 => rca_match,
      I1 => \^card_status_reg[11]_0\(2),
      I2 => \^card_status_reg[11]_0\(1),
      I3 => \^card_status_reg[11]_0\(0),
      I4 => valid_reg_i_4_0,
      I5 => illegal_reg_0,
      O => valid_i_11_n_0
    );
valid_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0CC4"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(0),
      I1 => illegal_reg_0,
      I2 => valid_reg_i_4_0,
      I3 => \^card_status_reg[11]_0\(1),
      I4 => \^card_status_reg[11]_0\(2),
      O => valid_i_13_n_0
    );
valid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => acmd_defined_reg,
      I1 => \^q\(5),
      O => valid_i_3_n_0
    );
valid_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF04F4"
    )
        port map (
      I0 => valid_i_10_n_0,
      I1 => valid_i_11_n_0,
      I2 => illegal_reg,
      I3 => valid_i_13_n_0,
      I4 => valid_reg_0,
      O => valid_i_6_n_0
    );
valid_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44404FF500000FF5"
    )
        port map (
      I0 => valid_reg_i_4_0,
      I1 => valid_reg_i_4_1,
      I2 => \^card_status_reg[11]_0\(0),
      I3 => \^card_status_reg[11]_0\(1),
      I4 => \^card_status_reg[11]_0\(2),
      I5 => \^q\(5),
      O => valid_i_8_n_0
    );
valid_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFFB"
    )
        port map (
      I0 => valid_reg_i_4_0,
      I1 => \^q\(5),
      I2 => \^card_status_reg[11]_0\(0),
      I3 => \^card_status_reg[11]_0\(1),
      I4 => \^card_status_reg[11]_0\(2),
      O => valid_i_9_n_0
    );
valid_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => valid_i_8_n_0,
      I1 => valid_i_9_n_0,
      O => valid_reg_i_4_n_0,
      S => illegal_reg_0
    );
writing_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^card_status_reg[11]_0\(0),
      I1 => \^card_status_reg[11]_0\(2),
      I2 => \^card_status_reg[11]_0\(1),
      O => \card_status_reg[9]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_cmd_info_keeper is
  port (
    \reg_saved_in[10]_5\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    new_cmd_saved : out STD_LOGIC;
    got_new_cmd12 : out STD_LOGIC;
    erase_seq_error : out STD_LOGIC;
    erase_reset : out STD_LOGIC;
    got_cmd8 : out STD_LOGIC;
    dat_width_4 : out STD_LOGIC;
    invalid_dat_width : out STD_LOGIC;
    \cmd_index_reg[0]\ : out STD_LOGIC;
    erase_seq_error_reg_0 : out STD_LOGIC;
    cmd_received_good : out STD_LOGIC;
    \save_block_limit_vars[0].block_limit_vars_used_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[4]\ : out STD_LOGIC;
    \cmd_index_reg[2]\ : out STD_LOGIC;
    \cmd_index_reg[0]_0\ : out STD_LOGIC;
    \cmd_index_reg[3]\ : out STD_LOGIC;
    \cmd_index_reg[0]_1\ : out STD_LOGIC;
    invalid_dat_width_reg_0 : out STD_LOGIC;
    erase_seq_error_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC;
    \reg_saved_reg[11][11]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    new_cmd_saved_reg_0 : out STD_LOGIC;
    \latched_status_bits_reg[6]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \saved_cmd_arg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_erase_vars[0].erase_vars_reg[0][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_erase_vars[1].erase_vars_reg[1][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    saved_cmd_is_acmd_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \save_block_limit_vars[0].save_reg_0\ : in STD_LOGIC;
    \save_block_limit_vars[1].save_reg_0\ : in STD_LOGIC;
    erase_seq_error_reg_2 : in STD_LOGIC;
    cmd_discard_block_limit_reg_0 : in STD_LOGIC;
    got_cmd8_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    erase_reset_reg_0 : in STD_LOGIC;
    resetn_0 : in STD_LOGIC;
    update_1 : in STD_LOGIC;
    \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    invalid_dat_width_reg_1 : in STD_LOGIC;
    cc_error_out : in STD_LOGIC;
    dat_width_4_reg_0 : in STD_LOGIC;
    dat_width_4_reg_1 : in STD_LOGIC;
    dat_width_4_reg_2 : in STD_LOGIC;
    got_new_cmd : in STD_LOGIC;
    cmd_crc_err : in STD_LOGIC;
    \block_type_reg[0]\ : in STD_LOGIC;
    \block_type_reg[0]_0\ : in STD_LOGIC;
    out_of_range : in STD_LOGIC;
    \reg_saved_in[9]_6\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_0 : in STD_LOGIC;
    interrupt_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \latched_status_bits_reg[6]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    interrupt_2 : in STD_LOGIC;
    \assign_reg_mux[2].reg_needed.mux_reg[11]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[11]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[11]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    new_cmd : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \save_erase_vars[1].erase_vars_reg[1][31]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \erase_step_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_cmd_info_keeper : entity is "cmd_info_keeper";
end block_design_sd_card_0_cmd_info_keeper;

architecture STRUCTURE of block_design_sd_card_0_cmd_info_keeper is
  signal \assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0\ : STD_LOGIC;
  signal block_limit_used : STD_LOGIC;
  signal cmd_discard_block_limit : STD_LOGIC;
  signal \^cmd_index_reg[4]\ : STD_LOGIC;
  signal \^dat_width_4\ : STD_LOGIC;
  signal dat_width_4_i_1_n_0 : STD_LOGIC;
  signal dat_width_4_i_2_n_0 : STD_LOGIC;
  signal \^erase_reset\ : STD_LOGIC;
  signal erase_reset_i_1_n_0 : STD_LOGIC;
  signal \^erase_seq_error\ : STD_LOGIC;
  signal \^erase_seq_error_reg_0\ : STD_LOGIC;
  signal \erase_step[0]_i_1_n_0\ : STD_LOGIC;
  signal \erase_step[1]_i_1_n_0\ : STD_LOGIC;
  signal \erase_step[1]_i_5_n_0\ : STD_LOGIC;
  signal \erase_step_reg_n_0_[0]\ : STD_LOGIC;
  signal \erase_step_reg_n_0_[1]\ : STD_LOGIC;
  signal \^got_cmd8\ : STD_LOGIC;
  signal \^got_new_cmd12\ : STD_LOGIC;
  signal got_new_cmd120 : STD_LOGIC;
  signal got_new_cmd12_i_2_n_0 : STD_LOGIC;
  signal interrupt_INST_0_i_3_n_0 : STD_LOGIC;
  signal \^invalid_dat_width\ : STD_LOGIC;
  signal invalid_dat_width_i_1_n_0 : STD_LOGIC;
  signal \^latched_status_bits_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^new_cmd_saved\ : STD_LOGIC;
  signal \^new_cmd_saved_reg_0\ : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal pre_erase_count_used : STD_LOGIC;
  signal \save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0\ : STD_LOGIC;
  signal \save_block_limit_vars[0].save\ : STD_LOGIC;
  signal \save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0\ : STD_LOGIC;
  signal \save_block_limit_vars[1].save\ : STD_LOGIC;
  signal save_current_cmd : STD_LOGIC;
  signal \saved_cmd_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \assign_reg_mux[2].reg_needed.mux[6]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \card_status_resp[5]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \erase_step[1]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of got_cmd8_i_2 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of invalid_dat_width_i_3 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \latched_status_bits[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \latched_status_bits[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \latched_status_bits[6]_i_1\ : label is "soft_lutpair53";
begin
  \cmd_index_reg[4]\ <= \^cmd_index_reg[4]\;
  dat_width_4 <= \^dat_width_4\;
  erase_reset <= \^erase_reset\;
  erase_seq_error <= \^erase_seq_error\;
  erase_seq_error_reg_0 <= \^erase_seq_error_reg_0\;
  got_cmd8 <= \^got_cmd8\;
  got_new_cmd12 <= \^got_new_cmd12\;
  invalid_dat_width <= \^invalid_dat_width\;
  \latched_status_bits_reg[6]\(2 downto 0) <= \^latched_status_bits_reg[6]\(2 downto 0);
  new_cmd_saved <= \^new_cmd_saved\;
  new_cmd_saved_reg_0 <= \^new_cmd_saved_reg_0\;
\assign_reg_mux[2].reg_needed.mux[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(4),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(4),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(4),
      I4 => s_axi_araddr(1),
      I5 => block_limit_used,
      O => \reg_saved_reg[11][11]\(4)
    );
\assign_reg_mux[2].reg_needed.mux[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(5),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(5),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(5),
      I4 => s_axi_araddr(1),
      I5 => pre_erase_count_used,
      O => \reg_saved_reg[11][11]\(5)
    );
\assign_reg_mux[2].reg_needed.mux[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(0),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(0),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(0),
      I4 => s_axi_araddr(1),
      I5 => \^new_cmd_saved_reg_0\,
      O => \reg_saved_reg[11][11]\(0)
    );
\assign_reg_mux[2].reg_needed.mux[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^new_cmd_saved\,
      I1 => \latched_status_bits_reg[6]_0\(0),
      O => \^new_cmd_saved_reg_0\
    );
\assign_reg_mux[2].reg_needed.mux[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(1),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(1),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(1),
      I4 => s_axi_araddr(1),
      I5 => \^latched_status_bits_reg[6]\(1),
      O => \reg_saved_reg[11][11]\(1)
    );
\assign_reg_mux[2].reg_needed.mux[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(2),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(2),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(2),
      I4 => s_axi_araddr(1),
      I5 => \assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0\,
      O => \reg_saved_reg[11][11]\(2)
    );
\assign_reg_mux[2].reg_needed.mux[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^got_new_cmd12\,
      I1 => \latched_status_bits_reg[6]_0\(4),
      O => \assign_reg_mux[2].reg_needed.mux[6]_i_2_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[11]\(3),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(3),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(3),
      I4 => s_axi_araddr(1),
      I5 => \^got_cmd8\,
      O => \reg_saved_reg[11][11]\(3)
    );
\block_type[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888AAA"
    )
        port map (
      I0 => \block_type_reg[0]\,
      I1 => block_limit_used,
      I2 => D(3),
      I3 => D(0),
      I4 => D(1),
      I5 => \block_type_reg[0]_0\,
      O => \save_block_limit_vars[0].block_limit_vars_used_reg[0]_0\(0)
    );
\card_status[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^invalid_dat_width\,
      I1 => out_of_range,
      I2 => cc_error_out,
      I3 => \^erase_reset\,
      I4 => \^erase_seq_error\,
      O => invalid_dat_width_reg_0
    );
\card_status[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \^erase_seq_error\,
      I1 => \^erase_reset\,
      I2 => cc_error_out,
      I3 => dat_width_4_reg_0,
      I4 => dat_width_4_reg_1,
      I5 => dat_width_4_reg_2,
      O => \^erase_seq_error_reg_0\
    );
\card_status_resp[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^erase_reset\,
      I1 => \reg_saved_in[9]_6\(0),
      O => erase_seq_error_reg_1(0)
    );
\card_status_resp[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^erase_seq_error\,
      I1 => \reg_saved_in[9]_6\(1),
      O => erase_seq_error_reg_1(1)
    );
\card_status_resp[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D(2),
      I1 => D(1),
      O => \cmd_index_reg[2]\
    );
cmd_discard_block_limit_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_discard_block_limit_reg_0,
      Q => cmd_discard_block_limit,
      R => '0'
    );
dat_width_4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      I1 => saved_cmd_is_acmd_reg_0,
      I2 => dat_width_4_i_2_n_0,
      I3 => \^erase_seq_error_reg_0\,
      I4 => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      I5 => \^dat_width_4\,
      O => dat_width_4_i_1_n_0
    );
dat_width_4_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => D(2),
      I1 => D(1),
      I2 => D(0),
      I3 => D(5),
      I4 => D(3),
      I5 => D(4),
      O => dat_width_4_i_2_n_0
    );
dat_width_4_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dat_width_4_i_1_n_0,
      Q => \^dat_width_4\,
      R => SR(0)
    );
erase_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440CCCC44400000"
    )
        port map (
      I0 => erase_reset_reg_0,
      I1 => resetn_0,
      I2 => \erase_step_reg_n_0_[0]\,
      I3 => \erase_step_reg_n_0_[1]\,
      I4 => update_1,
      I5 => \^erase_reset\,
      O => erase_reset_i_1_n_0
    );
erase_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => erase_reset_i_1_n_0,
      Q => \^erase_reset\,
      R => '0'
    );
erase_seq_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000404000004"
    )
        port map (
      I0 => D(3),
      I1 => D(5),
      I2 => D(4),
      I3 => D(2),
      I4 => D(1),
      I5 => D(0),
      O => \cmd_index_reg[3]\
    );
erase_seq_error_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => erase_seq_error_reg_2,
      Q => \^erase_seq_error\,
      R => '0'
    );
\erase_step[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088808880888488"
    )
        port map (
      I0 => \erase_step_reg_n_0_[0]\,
      I1 => resetn_0,
      I2 => \erase_step_reg[1]_0\,
      I3 => update_1,
      I4 => \^cmd_index_reg[4]\,
      I5 => \erase_step_reg_n_0_[1]\,
      O => \erase_step[0]_i_1_n_0\
    );
\erase_step[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CCC0CC00000800"
    )
        port map (
      I0 => \erase_step_reg_n_0_[0]\,
      I1 => resetn_0,
      I2 => \erase_step_reg[1]_0\,
      I3 => update_1,
      I4 => \^cmd_index_reg[4]\,
      I5 => \erase_step_reg_n_0_[1]\,
      O => \erase_step[1]_i_1_n_0\
    );
\erase_step[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEABF"
    )
        port map (
      I0 => D(4),
      I1 => \erase_step_reg_n_0_[0]\,
      I2 => \erase_step_reg_n_0_[1]\,
      I3 => D(5),
      I4 => D(3),
      I5 => \erase_step[1]_i_5_n_0\,
      O => \^cmd_index_reg[4]\
    );
\erase_step[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => D(0),
      I1 => D(2),
      I2 => D(1),
      I3 => D(5),
      I4 => D(3),
      I5 => D(4),
      O => \cmd_index_reg[0]_0\
    );
\erase_step[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFE7FE"
    )
        port map (
      I0 => D(1),
      I1 => D(2),
      I2 => \erase_step_reg_n_0_[0]\,
      I3 => \erase_step_reg_n_0_[1]\,
      I4 => D(0),
      O => \erase_step[1]_i_5_n_0\
    );
\erase_step_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \erase_step[0]_i_1_n_0\,
      Q => \erase_step_reg_n_0_[0]\,
      R => '0'
    );
\erase_step_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \erase_step[1]_i_1_n_0\,
      Q => \erase_step_reg_n_0_[1]\,
      R => '0'
    );
got_cmd8_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D(0),
      I1 => D(1),
      O => \cmd_index_reg[0]_1\
    );
got_cmd8_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_cmd8_reg_0,
      Q => \^got_cmd8\,
      R => SR(0)
    );
got_new_cmd12_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^erase_seq_error_reg_0\,
      I1 => D(4),
      I2 => D(3),
      I3 => D(5),
      I4 => got_new_cmd12_i_2_n_0,
      I5 => D(0),
      O => got_new_cmd120
    );
got_new_cmd12_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D(2),
      I1 => D(1),
      O => got_new_cmd12_i_2_n_0
    );
got_new_cmd12_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_new_cmd120,
      Q => \^got_new_cmd12\,
      R => SR(0)
    );
interrupt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEA"
    )
        port map (
      I0 => interrupt_0,
      I1 => interrupt_1(0),
      I2 => \latched_status_bits_reg[6]_0\(0),
      I3 => \^new_cmd_saved\,
      I4 => interrupt_2,
      I5 => interrupt_INST_0_i_3_n_0,
      O => interrupt
    );
interrupt_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA00EA00EA00"
    )
        port map (
      I0 => \latched_status_bits_reg[6]_0\(3),
      I1 => \latched_status_bits_reg[6]_0\(2),
      I2 => new_cmd,
      I3 => interrupt_1(2),
      I4 => \^latched_status_bits_reg[6]\(1),
      I5 => interrupt_1(1),
      O => interrupt_INST_0_i_3_n_0
    );
invalid_dat_width_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80008"
    )
        port map (
      I0 => resetn_0,
      I1 => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      I2 => \^erase_seq_error_reg_0\,
      I3 => invalid_dat_width_reg_1,
      I4 => \^invalid_dat_width\,
      I5 => update_1,
      O => invalid_dat_width_i_1_n_0
    );
invalid_dat_width_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => D(0),
      I1 => D(1),
      I2 => D(2),
      O => \cmd_index_reg[0]\
    );
invalid_dat_width_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => invalid_dat_width_i_1_n_0,
      Q => \^invalid_dat_width\,
      R => '0'
    );
\latched_status_bits[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \latched_status_bits_reg[6]_0\(0),
      I1 => \^new_cmd_saved\,
      O => \^latched_status_bits_reg[6]\(0)
    );
\latched_status_bits[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \latched_status_bits_reg[6]_0\(1),
      I1 => \latched_status_bits_reg[6]_0\(0),
      I2 => \^new_cmd_saved\,
      O => \^latched_status_bits_reg[6]\(1)
    );
\latched_status_bits[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \latched_status_bits_reg[6]_0\(4),
      I1 => \^got_new_cmd12\,
      O => \^latched_status_bits_reg[6]\(2)
    );
new_cmd_saved_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => save_current_cmd,
      Q => \^new_cmd_saved\,
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \save_block_limit_vars[0].save\,
      I1 => update_1,
      O => p_6_out
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      Q => Q(0),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(10),
      Q => Q(10),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(11),
      Q => Q(11),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(12),
      Q => Q(12),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(13),
      Q => Q(13),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(14),
      Q => Q(14),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(15),
      Q => Q(15),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(16),
      Q => Q(16),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(17),
      Q => Q(17),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(18),
      Q => Q(18),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(19),
      Q => Q(19),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      Q => Q(1),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(20),
      Q => Q(20),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(21),
      Q => Q(21),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(22),
      Q => Q(22),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(23),
      Q => Q(23),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(24),
      Q => Q(24),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(25),
      Q => Q(25),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(26),
      Q => Q(26),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(27),
      Q => Q(27),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(28),
      Q => Q(28),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(29),
      Q => Q(29),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(2),
      Q => Q(2),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(30),
      Q => Q(30),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(31),
      Q => Q(31),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(3),
      Q => Q(3),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(4),
      Q => Q(4),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(5),
      Q => Q(5),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(6),
      Q => Q(6),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(7),
      Q => Q(7),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(8),
      Q => Q(8),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_6_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(9),
      Q => Q(9),
      R => SR(0)
    );
\save_block_limit_vars[0].block_limit_vars_used[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0A0A0"
    )
        port map (
      I0 => block_limit_used,
      I1 => \save_block_limit_vars[0].save\,
      I2 => resetn_0,
      I3 => cmd_discard_block_limit,
      I4 => update_1,
      O => \save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0\
    );
\save_block_limit_vars[0].block_limit_vars_used_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \save_block_limit_vars[0].block_limit_vars_used[0]_i_1_n_0\,
      Q => block_limit_used,
      R => '0'
    );
\save_block_limit_vars[0].save_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \save_block_limit_vars[0].save_reg_0\,
      Q => \save_block_limit_vars[0].save\,
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars[1][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \save_block_limit_vars[1].save\,
      I1 => update_1,
      O => p_4_out
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(0),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(10),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(10),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(11),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(11),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(12),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(12),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(13),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(13),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(14),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(14),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(15),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(15),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(16),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(16),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(17),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(17),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(18),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(18),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(19),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(19),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(1),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(20),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(20),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(21),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(21),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(22),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(22),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(2),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(2),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(3),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(3),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(4),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(4),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(5),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(5),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(6),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(6),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(7),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(7),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(8),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(8),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_4_out,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(9),
      Q => \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(9),
      R => SR(0)
    );
\save_block_limit_vars[1].block_limit_vars_used[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0A0A0"
    )
        port map (
      I0 => pre_erase_count_used,
      I1 => \save_block_limit_vars[1].save\,
      I2 => resetn_0,
      I3 => cmd_discard_block_limit,
      I4 => update_1,
      O => \save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0\
    );
\save_block_limit_vars[1].block_limit_vars_used_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \save_block_limit_vars[1].block_limit_vars_used[1]_i_1_n_0\,
      Q => pre_erase_count_used,
      R => '0'
    );
\save_block_limit_vars[1].save_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \save_block_limit_vars[1].save_reg_0\,
      Q => \save_block_limit_vars[1].save\,
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(10),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(10),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(11),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(11),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(12),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(12),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(13),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(13),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(14),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(14),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(15),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(15),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(16),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(16),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(17),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(17),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(18),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(18),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(19),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(19),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(1),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(20),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(20),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(21),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(21),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(22),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(22),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(23),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(23),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(24),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(24),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(25),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(25),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(26),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(26),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(27),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(27),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(28),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(28),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(29),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(29),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(2),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(2),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(30),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(30),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(31),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(31),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(3),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(3),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(4),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(4),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(5),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(5),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(6),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(6),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(7),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(7),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(8),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(8),
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(9),
      Q => \save_erase_vars[0].erase_vars_reg[0][31]_0\(9),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(10),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(11),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(12),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(13),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(14),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(15),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(16),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(17),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(18),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(19),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(20),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(21),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(22),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(23),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(23),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(24),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(24),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(25),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(25),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(26),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(26),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(27),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(27),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(28),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(28),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(29),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(29),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(2),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(30),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(30),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(31),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(31),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(3),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(4),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(5),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(6),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(7),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(8),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      R => SR(0)
    );
\save_erase_vars[1].erase_vars_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(9),
      Q => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      R => SR(0)
    );
\saved_cmd_arg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(0),
      Q => \saved_cmd_arg_reg[31]_0\(0),
      R => SR(0)
    );
\saved_cmd_arg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(10),
      Q => \saved_cmd_arg_reg[31]_0\(10),
      R => SR(0)
    );
\saved_cmd_arg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(11),
      Q => \saved_cmd_arg_reg[31]_0\(11),
      R => SR(0)
    );
\saved_cmd_arg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(12),
      Q => \saved_cmd_arg_reg[31]_0\(12),
      R => SR(0)
    );
\saved_cmd_arg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(13),
      Q => \saved_cmd_arg_reg[31]_0\(13),
      R => SR(0)
    );
\saved_cmd_arg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(14),
      Q => \saved_cmd_arg_reg[31]_0\(14),
      R => SR(0)
    );
\saved_cmd_arg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(15),
      Q => \saved_cmd_arg_reg[31]_0\(15),
      R => SR(0)
    );
\saved_cmd_arg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(16),
      Q => \saved_cmd_arg_reg[31]_0\(16),
      R => SR(0)
    );
\saved_cmd_arg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(17),
      Q => \saved_cmd_arg_reg[31]_0\(17),
      R => SR(0)
    );
\saved_cmd_arg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(18),
      Q => \saved_cmd_arg_reg[31]_0\(18),
      R => SR(0)
    );
\saved_cmd_arg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(19),
      Q => \saved_cmd_arg_reg[31]_0\(19),
      R => SR(0)
    );
\saved_cmd_arg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(1),
      Q => \saved_cmd_arg_reg[31]_0\(1),
      R => SR(0)
    );
\saved_cmd_arg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(20),
      Q => \saved_cmd_arg_reg[31]_0\(20),
      R => SR(0)
    );
\saved_cmd_arg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(21),
      Q => \saved_cmd_arg_reg[31]_0\(21),
      R => SR(0)
    );
\saved_cmd_arg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(22),
      Q => \saved_cmd_arg_reg[31]_0\(22),
      R => SR(0)
    );
\saved_cmd_arg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(23),
      Q => \saved_cmd_arg_reg[31]_0\(23),
      R => SR(0)
    );
\saved_cmd_arg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(24),
      Q => \saved_cmd_arg_reg[31]_0\(24),
      R => SR(0)
    );
\saved_cmd_arg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(25),
      Q => \saved_cmd_arg_reg[31]_0\(25),
      R => SR(0)
    );
\saved_cmd_arg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(26),
      Q => \saved_cmd_arg_reg[31]_0\(26),
      R => SR(0)
    );
\saved_cmd_arg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(27),
      Q => \saved_cmd_arg_reg[31]_0\(27),
      R => SR(0)
    );
\saved_cmd_arg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(28),
      Q => \saved_cmd_arg_reg[31]_0\(28),
      R => SR(0)
    );
\saved_cmd_arg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(29),
      Q => \saved_cmd_arg_reg[31]_0\(29),
      R => SR(0)
    );
\saved_cmd_arg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(2),
      Q => \saved_cmd_arg_reg[31]_0\(2),
      R => SR(0)
    );
\saved_cmd_arg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(30),
      Q => \saved_cmd_arg_reg[31]_0\(30),
      R => SR(0)
    );
\saved_cmd_arg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(31),
      Q => \saved_cmd_arg_reg[31]_0\(31),
      R => SR(0)
    );
\saved_cmd_arg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(3),
      Q => \saved_cmd_arg_reg[31]_0\(3),
      R => SR(0)
    );
\saved_cmd_arg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(4),
      Q => \saved_cmd_arg_reg[31]_0\(4),
      R => SR(0)
    );
\saved_cmd_arg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(5),
      Q => \saved_cmd_arg_reg[31]_0\(5),
      R => SR(0)
    );
\saved_cmd_arg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(6),
      Q => \saved_cmd_arg_reg[31]_0\(6),
      R => SR(0)
    );
\saved_cmd_arg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(7),
      Q => \saved_cmd_arg_reg[31]_0\(7),
      R => SR(0)
    );
\saved_cmd_arg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(8),
      Q => \saved_cmd_arg_reg[31]_0\(8),
      R => SR(0)
    );
\saved_cmd_arg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(9),
      Q => \saved_cmd_arg_reg[31]_0\(9),
      R => SR(0)
    );
\saved_cmd_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => \^erase_seq_error_reg_0\,
      I1 => \saved_cmd_index[5]_i_2_n_0\,
      I2 => saved_cmd_is_acmd_reg_0,
      I3 => \saved_cmd_index[5]_i_3_n_0\,
      O => save_current_cmd
    );
\saved_cmd_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFDECD7BFE"
    )
        port map (
      I0 => D(3),
      I1 => D(2),
      I2 => D(0),
      I3 => D(1),
      I4 => D(4),
      I5 => D(5),
      O => \saved_cmd_index[5]_i_2_n_0\
    );
\saved_cmd_index[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFDFFDFFFFFBFFF"
    )
        port map (
      I0 => D(3),
      I1 => D(1),
      I2 => D(2),
      I3 => D(4),
      I4 => D(5),
      I5 => D(0),
      O => \saved_cmd_index[5]_i_3_n_0\
    );
\saved_cmd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(0),
      Q => \reg_saved_in[10]_5\(0),
      R => SR(0)
    );
\saved_cmd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(1),
      Q => \reg_saved_in[10]_5\(1),
      R => SR(0)
    );
\saved_cmd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(2),
      Q => \reg_saved_in[10]_5\(2),
      R => SR(0)
    );
\saved_cmd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(3),
      Q => \reg_saved_in[10]_5\(3),
      R => SR(0)
    );
\saved_cmd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(4),
      Q => \reg_saved_in[10]_5\(4),
      R => SR(0)
    );
\saved_cmd_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => D(5),
      Q => \reg_saved_in[10]_5\(5),
      R => SR(0)
    );
saved_cmd_is_acmd_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => save_current_cmd,
      D => saved_cmd_is_acmd_reg_0,
      Q => \reg_saved_in[10]_5\(6),
      R => SR(0)
    );
\update_phase[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => got_new_cmd,
      I1 => cmd_crc_err,
      O => cmd_received_good
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_command_validator is
  port (
    cmd8_vhs_match : out STD_LOGIC;
    acmd_defined_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    resetn_out_reg : out STD_LOGIC;
    acmd_defined_reg_1 : out STD_LOGIC;
    update_1 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    update_2 : out STD_LOGIC;
    \set_reg_clear_always[22].reg_clear_always_reg[22][5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cmd_index_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resp_no_crc_next : out STD_LOGIC;
    \cmd_index_reg[1]\ : out STD_LOGIC;
    acmd_defined_reg_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_index_reg[3]_1\ : out STD_LOGIC;
    \cmd_index_reg[0]_0\ : out STD_LOGIC;
    resetn_out_reg_0 : out STD_LOGIC;
    \cmd_index_reg[3]_2\ : out STD_LOGIC;
    acmd_defined_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[0]_1\ : out STD_LOGIC;
    \cmd_index_reg[0]_2\ : out STD_LOGIC;
    \cmd_index_reg[4]\ : out STD_LOGIC;
    \cmd_index_reg[1]_0\ : out STD_LOGIC;
    acmd_defined_reg_4 : out STD_LOGIC;
    \cmd_index_reg[0]_3\ : out STD_LOGIC;
    \cmd_index_reg[5]_0\ : out STD_LOGIC;
    \cmd_index_reg[5]_1\ : out STD_LOGIC;
    acmd_defined_reg_5 : out STD_LOGIC;
    \cmd_index_reg[3]_3\ : out STD_LOGIC;
    cmd_illegal_stb0 : out STD_LOGIC;
    cmd_ignored_stb0 : out STD_LOGIC;
    send_no_resp0 : out STD_LOGIC;
    \reg_saved_reg[11][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn_out_reg_1 : out STD_LOGIC;
    is_inactive_reg : out STD_LOGIC;
    got_acmd41_non_query_reg : out STD_LOGIC;
    \cmd_index_reg[3]_4\ : out STD_LOGIC;
    \cmd_index_reg[4]_0\ : out STD_LOGIC;
    \cmd_index_reg[1]_1\ : out STD_LOGIC;
    resetn_out_reg_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    valid_c1_out : in STD_LOGIC;
    ignored_c : in STD_LOGIC;
    illegal_reg_0 : in STD_LOGIC;
    acmd_defined_c : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    erase_seq_error_reg : in STD_LOGIC;
    resetn_0 : in STD_LOGIC;
    erase_seq_error_reg_0 : in STD_LOGIC;
    erase_seq_error : in STD_LOGIC;
    cmd_index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \block_type_reg[1]\ : in STD_LOGIC;
    \block_type_reg[1]_0\ : in STD_LOGIC;
    \card_status_reg[5]\ : in STD_LOGIC;
    \card_status_reg[5]_0\ : in STD_LOGIC;
    \card_status_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \save_erase_vars[0].erase_vars_reg[0][31]\ : in STD_LOGIC;
    \resp_type_out_reg[5]\ : in STD_LOGIC;
    cmd_received_good : in STD_LOGIC;
    cmd_crc_err : in STD_LOGIC;
    got_new_cmd : in STD_LOGIC;
    got_acmd41_non_query_reg_0 : in STD_LOGIC;
    got_acmd41_non_query_reg_1 : in STD_LOGIC;
    cmd_arg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \card_status_resp_reg[5]\ : in STD_LOGIC;
    erase_reset_reg : in STD_LOGIC;
    rca_match : in STD_LOGIC;
    invalid_dat_width_reg : in STD_LOGIC;
    out_of_range_reg : in STD_LOGIC;
    resp_start : in STD_LOGIC;
    \assign_reg_mux[2].reg_needed.mux_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \resp_type_out_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_inactive_reg_0 : in STD_LOGIC;
    is_inactive_reg_1 : in STD_LOGIC;
    is_inactive : in STD_LOGIC;
    got_cmd8_reg : in STD_LOGIC;
    got_cmd8 : in STD_LOGIC;
    sd_dat3_pullup_off_reg : in STD_LOGIC;
    sd_dat3_pullup_off : in STD_LOGIC;
    \resp_type_out_reg[5]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_command_validator : entity is "command_validator";
end block_design_sd_card_0_command_validator;

architecture STRUCTURE of block_design_sd_card_0_command_validator is
  signal \^fsm_onehot_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \^acmd_defined_reg_0\ : STD_LOGIC;
  signal \^acmd_defined_reg_1\ : STD_LOGIC;
  signal \block_type[1]_i_3_n_0\ : STD_LOGIC;
  signal \block_type[1]_i_6_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_15_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_16_n_0\ : STD_LOGIC;
  signal \card_status_resp[31]_i_4_n_0\ : STD_LOGIC;
  signal \card_status_resp[31]_i_5_n_0\ : STD_LOGIC;
  signal cmd_discard_block_limit_i_2_n_0 : STD_LOGIC;
  signal cmd_discard_block_limit_i_3_n_0 : STD_LOGIC;
  signal cmd_discard_block_limit_i_4_n_0 : STD_LOGIC;
  signal cmd_illegal : STD_LOGIC;
  signal \^cmd_index_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal got_acmd41_non_query_i_2_n_0 : STD_LOGIC;
  signal last_cmd_ignored : STD_LOGIC;
  signal last_cmd_valid : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC;
  signal \resp_cur[0]_i_2_n_0\ : STD_LOGIC;
  signal \resp_cur[0]_i_3_n_0\ : STD_LOGIC;
  signal \resp_len[4]_i_2_n_0\ : STD_LOGIC;
  signal \^update_1\ : STD_LOGIC;
  signal \^update_2\ : STD_LOGIC;
  signal \update_phase_reg_n_0_[0]\ : STD_LOGIC;
  signal validator_done : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \card_status[11]_i_15\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \card_status[11]_i_16\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of cmd_ignored_stb_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of cmd_illegal_stb_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of erase_reset_i_2 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \erase_step[1]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of got_acmd41_non_query_i_2 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of resp_no_crc_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \resp_type_out[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of send_no_resp_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of send_resp_o_i_1 : label is "soft_lutpair56";
begin
  \FSM_onehot_state_reg[1]\ <= \^fsm_onehot_state_reg[1]\;
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  acmd_defined_reg_0 <= \^acmd_defined_reg_0\;
  acmd_defined_reg_1 <= \^acmd_defined_reg_1\;
  \cmd_index_reg[3]_0\(3 downto 0) <= \^cmd_index_reg[3]_0\(3 downto 0);
  update_1 <= \^update_1\;
  update_2 <= \^update_2\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCCFCCCFDFCFCFC"
    )
        port map (
      I0 => last_cmd_valid,
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(1),
      I4 => validator_done,
      I5 => cmd_received_good,
      O => D(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DCD0D0"
    )
        port map (
      I0 => validator_done,
      I1 => Q(0),
      I2 => Q(1),
      I3 => cmd_crc_err,
      I4 => got_new_cmd,
      O => D(1)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F2F2F0000000"
    )
        port map (
      I0 => Q(0),
      I1 => cmd_received_good,
      I2 => Q(1),
      I3 => last_cmd_valid,
      I4 => validator_done,
      I5 => Q(2),
      O => D(2)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08AA0808"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => cmd_received_good,
      I3 => validator_done,
      I4 => Q(1),
      I5 => Q(2),
      O => D(3)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08AA0808"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => cmd_received_good,
      I3 => validator_done,
      I4 => Q(1),
      I5 => Q(3),
      O => D(4)
    );
acmd_defined_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFB7CFFFE7FF"
    )
        port map (
      I0 => cmd_index(0),
      I1 => cmd_index(3),
      I2 => cmd_index(1),
      I3 => cmd_index(2),
      I4 => cmd_index(4),
      I5 => cmd_index(5),
      O => \cmd_index_reg[0]_0\
    );
acmd_defined_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \update_phase_reg_n_0_[0]\,
      D => acmd_defined_c,
      Q => \^acmd_defined_reg_0\,
      R => SR(0)
    );
\assign_reg_mux[2].reg_needed.mux[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[1]\(0),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[1]_0\(0),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[1]_1\(0),
      I4 => s_axi_araddr(1),
      I5 => last_cmd_ignored,
      O => \reg_saved_reg[11][1]\(0)
    );
\assign_reg_mux[2].reg_needed.mux[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[1]\(1),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[1]_0\(1),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[1]_1\(1),
      I4 => s_axi_araddr(1),
      I5 => last_cmd_valid,
      O => \reg_saved_reg[11][1]\(1)
    );
\block_type[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202020222A2A2A2"
    )
        port map (
      I0 => \^update_2\,
      I1 => \block_type[1]_i_3_n_0\,
      I2 => cmd_index(2),
      I3 => \block_type_reg[1]\,
      I4 => \block_type_reg[1]_0\,
      I5 => \block_type[1]_i_6_n_0\,
      O => E(0)
    );
\block_type[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB7BABFBFBBBBBBF"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => cmd_index(4),
      I2 => cmd_index(5),
      I3 => cmd_index(3),
      I4 => cmd_index(0),
      I5 => cmd_index(1),
      O => \block_type[1]_i_3_n_0\
    );
\block_type[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFFFFFFDEFF"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(5),
      I2 => \^acmd_defined_reg_0\,
      I3 => cmd_index(1),
      I4 => cmd_index(0),
      I5 => cmd_index(3),
      O => \block_type[1]_i_6_n_0\
    );
\card_status[11]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(1),
      I1 => last_cmd_valid,
      I2 => validator_done,
      O => \card_status[11]_i_15_n_0\
    );
\card_status[11]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0DDDD"
    )
        port map (
      I0 => Q(1),
      I1 => validator_done,
      I2 => got_new_cmd,
      I3 => cmd_crc_err,
      I4 => Q(0),
      O => \card_status[11]_i_16_n_0\
    );
\card_status[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF11F1"
    )
        port map (
      I0 => \card_status[11]_i_15_n_0\,
      I1 => Q(2),
      I2 => Q(4),
      I3 => \card_status[11]_i_16_n_0\,
      I4 => Q(3),
      O => \FSM_onehot_state_reg[2]\
    );
\card_status[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => \card_status_reg[5]\,
      I1 => \^update_2\,
      I2 => \card_status_reg[5]_0\,
      I3 => \card_status_reg[5]_1\(0),
      I4 => \card_status_reg[5]_2\(0),
      O => \set_reg_clear_always[22].reg_clear_always_reg[22][5]\(0)
    );
\card_status_resp[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808080808080808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \card_status_resp[31]_i_4_n_0\,
      I2 => \card_status_resp[31]_i_5_n_0\,
      I3 => validator_done,
      I4 => last_cmd_valid,
      I5 => Q(1),
      O => \^update_2\
    );
\card_status_resp[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF0CEE0C"
    )
        port map (
      I0 => cmd_received_good,
      I1 => Q(1),
      I2 => validator_done,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(2),
      O => \^fsm_onehot_state_reg[1]_0\
    );
\card_status_resp[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5100515155555555"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => validator_done,
      I3 => cmd_received_good,
      I4 => Q(0),
      I5 => Q(4),
      O => \card_status_resp[31]_i_4_n_0\
    );
\card_status_resp[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5100515155555555"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => validator_done,
      I3 => cmd_received_good,
      I4 => Q(0),
      I5 => Q(3),
      O => \card_status_resp[31]_i_5_n_0\
    );
\card_status_resp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => cmd_index(5),
      I2 => cmd_index(4),
      I3 => \card_status_resp_reg[5]\,
      I4 => cmd_index(3),
      I5 => cmd_index(0),
      O => acmd_defined_reg_3(0)
    );
cmd8_vhs_match_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cmd_arg(3),
      I1 => cmd_arg(2),
      I2 => cmd_arg(0),
      I3 => cmd_arg(1),
      O => \p_1_in__0\
    );
cmd8_vhs_match_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\,
      Q => cmd8_vhs_match,
      R => SR(0)
    );
cmd_discard_block_limit_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800A8A"
    )
        port map (
      I0 => resetn_0,
      I1 => cmd_discard_block_limit_i_2_n_0,
      I2 => cmd_index(0),
      I3 => cmd_discard_block_limit_i_3_n_0,
      I4 => cmd_discard_block_limit_i_4_n_0,
      O => resetn_out_reg_0
    );
cmd_discard_block_limit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFF7FFF7FF"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(1),
      I2 => cmd_index(3),
      I3 => cmd_index(4),
      I4 => \^acmd_defined_reg_0\,
      I5 => cmd_index(5),
      O => cmd_discard_block_limit_i_2_n_0
    );
cmd_discard_block_limit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000060"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(4),
      I2 => cmd_index(3),
      I3 => \^acmd_defined_reg_0\,
      I4 => cmd_index(5),
      I5 => cmd_index(1),
      O => cmd_discard_block_limit_i_3_n_0
    );
cmd_discard_block_limit_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => cmd_index(4),
      I2 => cmd_index(5),
      I3 => cmd_index(2),
      I4 => cmd_index(1),
      I5 => cmd_index(3),
      O => cmd_discard_block_limit_i_4_n_0
    );
cmd_ignored_stb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => last_cmd_ignored,
      O => cmd_ignored_stb0
    );
cmd_illegal_stb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cmd_illegal,
      I1 => Q(1),
      O => cmd_illegal_stb0
    );
erase_reset_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => erase_reset_reg,
      I2 => erase_seq_error_reg_0,
      O => acmd_defined_reg_4
    );
erase_seq_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000F0F040000000"
    )
        port map (
      I0 => \^acmd_defined_reg_1\,
      I1 => erase_seq_error_reg,
      I2 => resetn_0,
      I3 => erase_seq_error_reg_0,
      I4 => \^update_1\,
      I5 => erase_seq_error,
      O => resetn_out_reg
    );
\erase_step[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => erase_reset_reg,
      I1 => \^acmd_defined_reg_0\,
      O => \^acmd_defined_reg_1\
    );
got_acmd41_non_query_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^update_1\,
      I1 => got_acmd41_non_query_i_2_n_0,
      I2 => got_acmd41_non_query_reg_1,
      O => got_acmd41_non_query_reg
    );
got_acmd41_non_query_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^cmd_index_reg[3]_0\(1),
      I1 => got_acmd41_non_query_reg_0,
      I2 => got_acmd41_non_query_reg_1,
      O => got_acmd41_non_query_i_2_n_0
    );
got_cmd8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => \^update_1\,
      I1 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I2 => cmd_index(3),
      I3 => cmd_index(5),
      I4 => got_cmd8_reg,
      I5 => got_cmd8,
      O => \cmd_index_reg[3]_4\
    );
ignored_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1090100101113101"
    )
        port map (
      I0 => cmd_index(5),
      I1 => cmd_index(4),
      I2 => cmd_index(0),
      I3 => cmd_index(3),
      I4 => cmd_index(1),
      I5 => cmd_index(2),
      O => \cmd_index_reg[5]_1\
    );
ignored_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDDFFFFFFFFF"
    )
        port map (
      I0 => cmd_index(0),
      I1 => cmd_index(4),
      I2 => cmd_index(5),
      I3 => cmd_index(2),
      I4 => cmd_index(1),
      I5 => cmd_index(3),
      O => \cmd_index_reg[0]_3\
    );
ignored_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810001000001000"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(5),
      I2 => cmd_index(3),
      I3 => cmd_index(1),
      I4 => cmd_index(2),
      I5 => cmd_index(0),
      O => \cmd_index_reg[4]\
    );
ignored_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \update_phase_reg_n_0_[0]\,
      D => ignored_c,
      Q => last_cmd_ignored,
      R => SR(0)
    );
illegal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \update_phase_reg_n_0_[0]\,
      D => illegal_reg_0,
      Q => cmd_illegal,
      R => SR(0)
    );
invalid_dat_width_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => cmd_index(4),
      I2 => cmd_index(3),
      I3 => cmd_index(5),
      I4 => invalid_dat_width_reg,
      O => acmd_defined_reg_5
    );
is_inactive_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => got_acmd41_non_query_i_2_n_0,
      I1 => is_inactive_reg_0,
      I2 => is_inactive_reg_1,
      I3 => \^update_1\,
      I4 => is_inactive,
      O => is_inactive_reg
    );
out_of_range_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000360000"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(1),
      I2 => cmd_index(0),
      I3 => \^acmd_defined_reg_0\,
      I4 => cmd_index(4),
      I5 => out_of_range_reg,
      O => \cmd_index_reg[3]_3\
    );
\rca[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \^update_1\,
      I1 => cmd_index(3),
      I2 => cmd_index(0),
      I3 => cmd_index(1),
      I4 => \resp_type_out_reg[5]\,
      I5 => cmd_index(2),
      O => \cmd_index_reg[3]\(0)
    );
\rca[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2222222"
    )
        port map (
      I0 => \card_status_resp[31]_i_4_n_0\,
      I1 => \card_status_resp[31]_i_5_n_0\,
      I2 => validator_done,
      I3 => last_cmd_valid,
      I4 => Q(1),
      I5 => \^fsm_onehot_state_reg[1]_0\,
      O => \^update_1\
    );
\resp_cur[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \resp_cur[0]_i_2_n_0\,
      O => acmd_defined_reg_2(0)
    );
\resp_cur[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044010101114141"
    )
        port map (
      I0 => \resp_cur[0]_i_3_n_0\,
      I1 => cmd_index(0),
      I2 => cmd_index(5),
      I3 => rca_match,
      I4 => cmd_index(2),
      I5 => cmd_index(1),
      O => \resp_cur[0]_i_2_n_0\
    );
\resp_cur[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD8F8"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(2),
      I2 => cmd_index(5),
      I3 => \^acmd_defined_reg_0\,
      I4 => cmd_index(4),
      O => \resp_cur[0]_i_3_n_0\
    );
\resp_cur[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F00"
    )
        port map (
      I0 => Q(1),
      I1 => last_cmd_valid,
      I2 => validator_done,
      I3 => \card_status_resp[31]_i_5_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      I5 => \card_status_resp[31]_i_4_n_0\,
      O => \^fsm_onehot_state_reg[1]\
    );
\resp_cur[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C080300000"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => cmd_index(0),
      I2 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I3 => cmd_index(5),
      I4 => cmd_index(3),
      I5 => cmd_index(1),
      O => acmd_defined_reg_2(1)
    );
\resp_len[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(5),
      I2 => cmd_index(3),
      I3 => cmd_index(0),
      I4 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I5 => \^acmd_defined_reg_0\,
      O => \^cmd_index_reg[3]_0\(0)
    );
\resp_len[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^acmd_defined_reg_0\,
      I1 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I2 => cmd_index(0),
      I3 => cmd_index(3),
      I4 => cmd_index(5),
      I5 => cmd_index(1),
      O => \^cmd_index_reg[3]_0\(1)
    );
\resp_len[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDFDFFFFFDFFF"
    )
        port map (
      I0 => \resp_len[4]_i_2_n_0\,
      I1 => cmd_index(2),
      I2 => \resp_type_out_reg[5]\,
      I3 => cmd_index(1),
      I4 => cmd_index(0),
      I5 => cmd_index(3),
      O => \^cmd_index_reg[3]_0\(2)
    );
\resp_len[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003A0000000000"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(0),
      I2 => cmd_index(1),
      I3 => \resp_type_out_reg[5]\,
      I4 => cmd_index(2),
      I5 => \resp_len[4]_i_2_n_0\,
      O => \^cmd_index_reg[3]_0\(3)
    );
\resp_len[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDFFFBFFFDFFFBFF"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(3),
      I2 => cmd_index(5),
      I3 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I4 => cmd_index(0),
      I5 => \^acmd_defined_reg_0\,
      O => \resp_len[4]_i_2_n_0\
    );
resp_no_crc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^cmd_index_reg[3]_0\(1),
      I1 => \^cmd_index_reg[3]_0\(3),
      O => resp_no_crc_next
    );
\resp_type_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \resp_type_out_reg[1]\(0),
      I1 => \resp_cur[0]_i_2_n_0\,
      I2 => \resp_len[4]_i_2_n_0\,
      I3 => \^fsm_onehot_state_reg[1]\,
      I4 => resetn_0,
      O => resetn_out_reg_2
    );
\resp_type_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \resp_type_out_reg[5]_0\,
      I1 => cmd_index(1),
      I2 => \resp_type_out_reg[5]\,
      I3 => cmd_index(2),
      I4 => \^fsm_onehot_state_reg[1]\,
      I5 => resetn_0,
      O => \cmd_index_reg[1]_1\
    );
\save_block_limit_vars[0].save_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cmd_index(0),
      I1 => cmd_index(3),
      I2 => \card_status_resp_reg[5]\,
      I3 => \^acmd_defined_reg_0\,
      I4 => cmd_index(4),
      I5 => cmd_index(5),
      O => \cmd_index_reg[0]_2\
    );
\save_block_limit_vars[1].save_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => cmd_index(0),
      I1 => cmd_index(3),
      I2 => \card_status_resp_reg[5]\,
      I3 => \^acmd_defined_reg_0\,
      I4 => cmd_index(5),
      I5 => cmd_index(4),
      O => \cmd_index_reg[0]_1\
    );
\save_erase_vars[0].erase_vars[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \^update_1\,
      I1 => cmd_index(5),
      I2 => cmd_index(1),
      I3 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I4 => cmd_index(3),
      I5 => cmd_index(0),
      O => \cmd_index_reg[5]\(0)
    );
\save_erase_vars[1].erase_vars[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^update_1\,
      I1 => cmd_index(0),
      I2 => cmd_index(5),
      I3 => cmd_index(1),
      I4 => \save_erase_vars[0].erase_vars_reg[0][31]\,
      I5 => cmd_index(3),
      O => \cmd_index_reg[0]\(0)
    );
sd_dat3_pullup_off_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(2),
      I2 => \^acmd_defined_reg_0\,
      I3 => sd_dat3_pullup_off_reg,
      I4 => \^update_1\,
      I5 => sd_dat3_pullup_off,
      O => \cmd_index_reg[4]_0\
    );
send_no_resp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => last_cmd_valid,
      I1 => validator_done,
      I2 => Q(1),
      I3 => resp_start,
      I4 => Q(4),
      O => send_no_resp0
    );
send_resp_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF000000"
    )
        port map (
      I0 => \resp_len[4]_i_2_n_0\,
      I1 => \resp_type_out_reg[1]\(0),
      I2 => \resp_cur[0]_i_2_n_0\,
      I3 => \^fsm_onehot_state_reg[1]\,
      I4 => resetn_0,
      O => resetn_out_reg_1
    );
\update_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_received_good,
      Q => \update_phase_reg_n_0_[0]\,
      R => SR(0)
    );
\update_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \update_phase_reg_n_0_[0]\,
      Q => validator_done,
      R => SR(0)
    );
valid_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE68F"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(0),
      I2 => cmd_index(3),
      I3 => cmd_index(2),
      I4 => cmd_index(5),
      I5 => cmd_index(4),
      O => \cmd_index_reg[1]\
    );
valid_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFFFCFDF5FEFD"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(5),
      I2 => cmd_index(4),
      I3 => cmd_index(2),
      I4 => cmd_index(0),
      I5 => cmd_index(1),
      O => \cmd_index_reg[3]_1\
    );
valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53050203211336B7"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(5),
      I2 => cmd_index(4),
      I3 => cmd_index(0),
      I4 => cmd_index(1),
      I5 => cmd_index(2),
      O => \cmd_index_reg[3]_2\
    );
valid_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEFFEEFEE"
    )
        port map (
      I0 => cmd_index(5),
      I1 => cmd_index(4),
      I2 => cmd_index(1),
      I3 => cmd_index(0),
      I4 => cmd_index(2),
      I5 => cmd_index(3),
      O => \cmd_index_reg[5]_0\
    );
valid_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF27FF7FFFDFFFA"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(2),
      I2 => cmd_index(5),
      I3 => cmd_index(4),
      I4 => cmd_index(3),
      I5 => cmd_index(0),
      O => \cmd_index_reg[1]_0\
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \update_phase_reg_n_0_[0]\,
      D => valid_c1_out,
      Q => last_cmd_valid,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_dat_controller is
  port (
    dat_read_mode : out STD_LOGIC;
    dat_resetn : out STD_LOGIC;
    fifo_out_resetn : out STD_LOGIC;
    busy_in : out STD_LOGIC;
    ready_for_data_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_in_resetn : out STD_LOGIC;
    \cmd_index_reg[2]\ : out STD_LOGIC;
    \cmd_index_reg[1]\ : out STD_LOGIC;
    \cmd_index_reg[3]\ : out STD_LOGIC;
    fifo_out_tready_masked : out STD_LOGIC;
    fifo_out_tvalid_masked : out STD_LOGIC;
    \reg_saved_reg[11][13]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \block_size_exp_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_saved_in[9]_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    dev_resetn_reg_0 : in STD_LOGIC;
    writing_reg_0 : in STD_LOGIC;
    reading_reg_0 : in STD_LOGIC;
    busy_out_reg_0 : in STD_LOGIC;
    ready_for_data_reg_1 : in STD_LOGIC;
    cmd_index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_out_tready_in : in STD_LOGIC;
    fifo_out_tvalid_in : in STD_LOGIC;
    \reg_clear_always[21]_13\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    got_start_read_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    new_cmd_saved : in STD_LOGIC;
    resetn_0 : in STD_LOGIC;
    \assign_reg_mux[2].reg_needed.mux_reg[13]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[13]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_dat_controller : entity is "dat_controller";
end block_design_sd_card_0_dat_controller;

architecture STRUCTURE of block_design_sd_card_0_dat_controller is
  signal block_size_exp_next : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal block_type_next : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^fifo_in_resetn\ : STD_LOGIC;
  signal \^fifo_out_resetn\ : STD_LOGIC;
  signal got_start_read : STD_LOGIC;
  signal got_start_read_i_1_n_0 : STD_LOGIC;
  signal got_start_write_i_1_n_0 : STD_LOGIC;
  signal writing : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \block_size_exp[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \block_size_exp[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \block_type[0]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \block_type[1]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of fifo_out_tready_masked_INST_0 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of fifo_out_tvalid_masked_INST_0 : label is "soft_lutpair63";
begin
  fifo_in_resetn <= \^fifo_in_resetn\;
  fifo_out_resetn <= \^fifo_out_resetn\;
\assign_reg_mux[2].reg_needed.mux[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[13]\(0),
      I1 => s_axi_araddr(0),
      I2 => \assign_reg_mux[2].reg_needed.mux_reg[13]_1\(0),
      I3 => s_axi_araddr(1),
      I4 => \^fifo_in_resetn\,
      O => \reg_saved_reg[11][13]\(0)
    );
\assign_reg_mux[2].reg_needed.mux[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[13]\(1),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[13]_0\(0),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[13]_1\(1),
      I4 => s_axi_araddr(1),
      I5 => got_start_read,
      O => \reg_saved_reg[11][13]\(1)
    );
\block_size_exp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(1),
      I2 => cmd_index(3),
      O => block_size_exp_next(1)
    );
\block_size_exp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(5),
      I2 => cmd_index(1),
      I3 => cmd_index(4),
      O => block_size_exp_next(2)
    );
\block_size_exp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => cmd_index(5),
      Q => \block_size_exp_reg[2]_0\(0),
      R => SR(0)
    );
\block_size_exp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => block_size_exp_next(1),
      Q => \block_size_exp_reg[2]_0\(1),
      R => SR(0)
    );
\block_size_exp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => block_size_exp_next(2),
      Q => \block_size_exp_reg[2]_0\(2),
      R => SR(0)
    );
\block_type[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40455555"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(5),
      I2 => cmd_index(3),
      I3 => cmd_index(0),
      I4 => cmd_index(1),
      O => \cmd_index_reg[2]\
    );
\block_type[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8082008"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(1),
      I2 => cmd_index(0),
      I3 => cmd_index(3),
      I4 => cmd_index(5),
      I5 => cmd_index(2),
      O => block_type_next(1)
    );
\block_type[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(5),
      O => \cmd_index_reg[3]\
    );
\block_type[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(0),
      O => \cmd_index_reg[1]\
    );
\block_type_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\block_type_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => block_type_next(1),
      Q => Q(1),
      R => SR(0)
    );
busy_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => busy_out_reg_0,
      Q => busy_in,
      R => SR(0)
    );
dev_read_mode_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_saved_in[9]_6\(0),
      Q => dat_read_mode,
      R => SR(0)
    );
dev_resetn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dev_resetn_reg_0,
      Q => dat_resetn,
      R => SR(0)
    );
fifo_out_tready_masked_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_out_tready_in,
      I1 => got_start_read,
      O => fifo_out_tready_masked
    );
fifo_out_tvalid_masked_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => got_start_read,
      I1 => fifo_out_tvalid_in,
      O => fifo_out_tvalid_masked
    );
got_start_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAE000000000000"
    )
        port map (
      I0 => got_start_read,
      I1 => \reg_clear_always[21]_13\(1),
      I2 => got_start_read_reg_0(0),
      I3 => new_cmd_saved,
      I4 => \^fifo_out_resetn\,
      I5 => resetn_0,
      O => got_start_read_i_1_n_0
    );
got_start_read_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_start_read_i_1_n_0,
      Q => got_start_read,
      R => '0'
    );
got_start_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAE000000000000"
    )
        port map (
      I0 => \^fifo_in_resetn\,
      I1 => \reg_clear_always[21]_13\(0),
      I2 => got_start_read_reg_0(0),
      I3 => new_cmd_saved,
      I4 => writing,
      I5 => resetn_0,
      O => got_start_write_i_1_n_0
    );
got_start_write_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_start_write_i_1_n_0,
      Q => \^fifo_in_resetn\,
      R => '0'
    );
reading_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reading_reg_0,
      Q => \^fifo_out_resetn\,
      R => SR(0)
    );
ready_for_data_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => ready_for_data_reg_1,
      Q => ready_for_data_reg_0(0),
      S => SR(0)
    );
writing_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => writing_reg_0,
      Q => writing,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_inactive_keeper is
  port (
    resetn_0 : out STD_LOGIC;
    got_acmd41_non_query_reg_0 : out STD_LOGIC;
    is_inactive : out STD_LOGIC;
    cmd_crc_err_reg : out STD_LOGIC;
    \got_cmd0_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_arg_reg[23]\ : out STD_LOGIC;
    \cmd_arg_reg[19]\ : out STD_LOGIC;
    \cmd_index_reg[4]\ : out STD_LOGIC;
    \cmd_index_reg[2]\ : out STD_LOGIC;
    resetn_out_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_out_reg_1 : out STD_LOGIC;
    resetn_out_reg_2 : out STD_LOGIC;
    resetn_out_reg_3 : out STD_LOGIC;
    resetn_out_reg_4 : out STD_LOGIC;
    resetn_out_reg_5 : out STD_LOGIC;
    resetn_out_reg_6 : out STD_LOGIC;
    resetn_out_reg_7 : out STD_LOGIC;
    resetn_out_reg_8 : out STD_LOGIC;
    resetn_out_reg_9 : out STD_LOGIC;
    resetn_out_reg_10 : out STD_LOGIC;
    resetn_out_reg_11 : out STD_LOGIC;
    resetn_out_reg_12 : out STD_LOGIC;
    resetn_out_reg_13 : out STD_LOGIC;
    resetn_out_reg_14 : out STD_LOGIC;
    resetn_out_reg_15 : out STD_LOGIC;
    resetn_out_reg_16 : out STD_LOGIC;
    resetn_out_reg_17 : out STD_LOGIC;
    resetn_out_reg_18 : out STD_LOGIC;
    resetn_out_reg_19 : out STD_LOGIC;
    resetn_out_reg_20 : out STD_LOGIC;
    resetn_out_reg_21 : out STD_LOGIC;
    resetn_out_reg_22 : out STD_LOGIC;
    resetn_out_reg_23 : out STD_LOGIC;
    resetn_out_reg_24 : out STD_LOGIC;
    resetn_out_reg_25 : out STD_LOGIC;
    resetn_out_reg_26 : out STD_LOGIC;
    resetn_out_reg_27 : out STD_LOGIC;
    resetn_out_reg_28 : out STD_LOGIC;
    resetn_out_reg_29 : out STD_LOGIC;
    resetn_out_reg_30 : out STD_LOGIC;
    resetn_out_reg_31 : out STD_LOGIC;
    resetn_out_reg_32 : out STD_LOGIC;
    resetn_out_reg_33 : out STD_LOGIC;
    resetn_out_reg_34 : out STD_LOGIC;
    resetn_out_reg_35 : out STD_LOGIC;
    resetn_out_reg_36 : out STD_LOGIC;
    resetn_out_reg_37 : out STD_LOGIC;
    resetn_out_reg_38 : out STD_LOGIC;
    resetn_out_reg_39 : out STD_LOGIC;
    resetn_out_reg_40 : out STD_LOGIC;
    \set_reg[20].reg_written_reg[20][6]\ : out STD_LOGIC;
    \reg_saved_reg[11][8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \latched_status_bits_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    got_acmd41_non_query_reg_1 : in STD_LOGIC;
    is_inactive_reg_0 : in STD_LOGIC;
    cmd_crc_err : in STD_LOGIC;
    got_new_cmd : in STD_LOGIC;
    resetn : in STD_LOGIC;
    cmd_index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_arg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ocr_high_byte_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \size_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt_INST_0_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    interrupt_INST_0_i_2_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    got_new_cmd12 : in STD_LOGIC;
    dat_block_done : in STD_LOGIC;
    \assign_reg_mux[2].reg_needed.mux_reg[8]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_inactive_keeper : entity is "inactive_keeper";
end block_design_sd_card_0_inactive_keeper;

architecture STRUCTURE of block_design_sd_card_0_inactive_keeper is
  signal \assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_17_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_18_n_0\ : STD_LOGIC;
  signal got_cmd00 : STD_LOGIC;
  signal \got_cmd0[0]_i_2_n_0\ : STD_LOGIC;
  signal got_reset_cmd : STD_LOGIC;
  signal interrupt_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^is_inactive\ : STD_LOGIC;
  signal is_inactive_i_4_n_0 : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC;
  signal resetn_out_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \assign_reg_mux[2].reg_needed.mux[8]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \latched_status_bits[8]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ocr_high_byte[24]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ocr_high_byte[25]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ocr_high_byte[26]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ocr_high_byte[27]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ocr_high_byte[28]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \ocr_high_byte[29]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ocr_high_byte[30]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \ocr_high_byte[31]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \ocr_high_byte[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of out_of_range_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of reading_i_1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of resetn_out_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \set_reg[18].reg_written[18][31]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \size[10]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \size[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \size[12]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \size[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \size[14]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \size[15]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \size[16]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \size[17]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \size[18]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \size[19]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \size[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \size[20]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \size[21]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \size[22]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \size[23]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \size[24]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \size[25]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \size[26]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \size[27]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \size[28]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \size[29]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \size[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \size[30]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \size[31]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \size[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \size[4]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \size[5]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \size[6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \size[7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \size[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \size[9]_i_1\ : label is "soft_lutpair80";
begin
  is_inactive <= \^is_inactive\;
  resetn_0 <= \^resetn_0\;
\assign_reg_mux[2].reg_needed.mux[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[8]\(0),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[8]_0\(0),
      I2 => s_axi_araddr(0),
      I3 => \^is_inactive\,
      I4 => s_axi_araddr(1),
      O => \reg_saved_reg[11][8]\(0)
    );
\assign_reg_mux[2].reg_needed.mux[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[8]\(1),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[8]_0\(1),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[8]_1\(0),
      I4 => s_axi_araddr(1),
      I5 => \assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0\,
      O => \reg_saved_reg[11][8]\(1)
    );
\assign_reg_mux[2].reg_needed.mux[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => got_reset_cmd,
      I1 => interrupt_INST_0_i_2_1(1),
      O => \assign_reg_mux[2].reg_needed.mux[8]_i_2_n_0\
    );
\card_status[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => is_inactive_i_4_n_0,
      I1 => cmd_arg(15),
      I2 => cmd_arg(13),
      I3 => cmd_arg(11),
      I4 => \card_status[11]_i_17_n_0\,
      I5 => \card_status[11]_i_18_n_0\,
      O => \cmd_arg_reg[23]\
    );
\card_status[11]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_arg(3),
      I1 => cmd_arg(2),
      I2 => cmd_arg(5),
      I3 => cmd_arg(0),
      O => \card_status[11]_i_17_n_0\
    );
\card_status[11]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cmd_arg(6),
      I1 => cmd_arg(4),
      I2 => cmd_arg(1),
      O => \card_status[11]_i_18_n_0\
    );
got_acmd41_non_query_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_acmd41_non_query_reg_1,
      Q => got_acmd41_non_query_reg_0,
      R => SR(0)
    );
\got_cmd0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(1),
      I2 => cmd_index(0),
      I3 => got_new_cmd,
      I4 => cmd_crc_err,
      I5 => \got_cmd0[0]_i_2_n_0\,
      O => got_cmd00
    );
\got_cmd0[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(3),
      I2 => cmd_index(5),
      O => \got_cmd0[0]_i_2_n_0\
    );
\got_cmd0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_cmd00,
      Q => got_reset_cmd,
      R => SR(0)
    );
interrupt_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => interrupt_INST_0_i_2_0(0),
      I1 => interrupt_INST_0_i_2_1(0),
      I2 => got_new_cmd12,
      I3 => \^is_inactive\,
      I4 => interrupt_INST_0_i_2_0(1),
      I5 => interrupt_INST_0_i_4_n_0,
      O => \set_reg[20].reg_written_reg[20][6]\
    );
interrupt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => got_reset_cmd,
      I1 => interrupt_INST_0_i_2_1(1),
      I2 => interrupt_INST_0_i_2_0(2),
      I3 => dat_block_done,
      I4 => interrupt_INST_0_i_2_1(2),
      I5 => interrupt_INST_0_i_2_0(3),
      O => interrupt_INST_0_i_4_n_0
    );
is_inactive_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cmd_arg(11),
      I1 => cmd_arg(13),
      I2 => cmd_arg(15),
      I3 => is_inactive_i_4_n_0,
      O => \cmd_arg_reg[19]\
    );
is_inactive_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(3),
      I2 => cmd_index(5),
      I3 => cmd_index(2),
      I4 => cmd_index(0),
      I5 => cmd_index(1),
      O => \cmd_index_reg[4]\
    );
is_inactive_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cmd_arg(12),
      I1 => cmd_arg(9),
      I2 => cmd_arg(10),
      I3 => cmd_arg(14),
      I4 => cmd_arg(8),
      I5 => cmd_arg(7),
      O => is_inactive_i_4_n_0
    );
is_inactive_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_inactive_reg_0,
      Q => \^is_inactive\,
      R => SR(0)
    );
\latched_status_bits[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => interrupt_INST_0_i_2_1(1),
      I1 => got_reset_cmd,
      O => \latched_status_bits_reg[8]\(0)
    );
\ocr_high_byte[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(0),
      O => resetn_out_reg_8
    );
\ocr_high_byte[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(1),
      O => resetn_out_reg_7
    );
\ocr_high_byte[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(2),
      O => resetn_out_reg_6
    );
\ocr_high_byte[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(3),
      O => resetn_out_reg_5
    );
\ocr_high_byte[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(4),
      O => resetn_out_reg_4
    );
\ocr_high_byte[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(5),
      O => resetn_out_reg_3
    );
\ocr_high_byte[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(6),
      O => resetn_out_reg_2
    );
\ocr_high_byte[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => cmd_crc_err,
      I1 => got_new_cmd,
      I2 => \^resetn_0\,
      O => cmd_crc_err_reg
    );
\ocr_high_byte[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \ocr_high_byte_reg[31]\(7),
      O => resetn_out_reg_1
    );
out_of_range_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(5),
      I2 => \^resetn_0\,
      I3 => CO(0),
      O => \cmd_index_reg[2]\
    );
reading_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^resetn_0\,
      O => resetn_out_reg_0(0)
    );
resetn_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^is_inactive\,
      I1 => got_reset_cmd,
      O => resetn_out_i_1_n_0
    );
resetn_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => resetn_out_i_1_n_0,
      Q => \^resetn_0\,
      R => SR(0)
    );
\set_reg[18].reg_written[18][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => got_reset_cmd,
      I1 => resetn,
      O => \got_cmd0_reg[0]_0\(0)
    );
\size[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(0),
      O => resetn_out_reg_40
    );
\size[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(10),
      O => resetn_out_reg_30
    );
\size[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(11),
      O => resetn_out_reg_29
    );
\size[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(12),
      O => resetn_out_reg_28
    );
\size[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(13),
      O => resetn_out_reg_27
    );
\size[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(14),
      O => resetn_out_reg_26
    );
\size[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(15),
      O => resetn_out_reg_25
    );
\size[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(16),
      O => resetn_out_reg_24
    );
\size[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(17),
      O => resetn_out_reg_23
    );
\size[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(18),
      O => resetn_out_reg_22
    );
\size[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(19),
      O => resetn_out_reg_21
    );
\size[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(1),
      O => resetn_out_reg_39
    );
\size[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(20),
      O => resetn_out_reg_20
    );
\size[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(21),
      O => resetn_out_reg_19
    );
\size[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(22),
      O => resetn_out_reg_18
    );
\size[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(23),
      O => resetn_out_reg_17
    );
\size[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(24),
      O => resetn_out_reg_16
    );
\size[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(25),
      O => resetn_out_reg_15
    );
\size[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(26),
      O => resetn_out_reg_14
    );
\size[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(27),
      O => resetn_out_reg_13
    );
\size[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(28),
      O => resetn_out_reg_12
    );
\size[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(29),
      O => resetn_out_reg_11
    );
\size[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(2),
      O => resetn_out_reg_38
    );
\size[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(30),
      O => resetn_out_reg_10
    );
\size[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(31),
      O => resetn_out_reg_9
    );
\size[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(3),
      O => resetn_out_reg_37
    );
\size[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(4),
      O => resetn_out_reg_36
    );
\size[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(5),
      O => resetn_out_reg_35
    );
\size[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(6),
      O => resetn_out_reg_34
    );
\size[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(7),
      O => resetn_out_reg_33
    );
\size[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(8),
      O => resetn_out_reg_32
    );
\size[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^resetn_0\,
      I1 => \size_reg[31]\(9),
      O => resetn_out_reg_31
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_line_crc is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sd_cmd_o_sys0 : out STD_LOGIC;
    \state_reg[4]\ : out STD_LOGIC;
    \state_reg[5]\ : out STD_LOGIC;
    \crc_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \counter_reg[2]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    \state_reg[4]_0\ : out STD_LOGIC;
    resp_no_crc_reg : out STD_LOGIC;
    \counter_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_reg[4]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_crc_err_next : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    \counter_reg[6]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[5]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    sd_cmd_o_sys_reg : in STD_LOGIC;
    sd_cmd_o_sys_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    cmd_resp_byte : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_sd_clk : in STD_LOGIC;
    resp_no_crc : in STD_LOGIC;
    cmd_resp_len : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cmd_arg_reg[0]\ : in STD_LOGIC;
    \cmd_arg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    resp_none : in STD_LOGIC;
    write_stb_received_r : in STD_LOGIC;
    resp_start : in STD_LOGIC;
    \counter_reg[7]_1\ : in STD_LOGIC;
    \counter_reg[7]_2\ : in STD_LOGIC;
    \counter_reg[7]_3\ : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_line_crc : entity is "line_crc";
end block_design_sd_card_0_line_crc;

architecture STRUCTURE of block_design_sd_card_0_line_crc is
  signal \^d\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_crc_err_i_2_n_0 : STD_LOGIC;
  signal \^cmd_crc_err_next\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \^counter_reg[2]\ : STD_LOGIC;
  signal \^counter_reg[4]\ : STD_LOGIC;
  signal \^counter_reg[6]\ : STD_LOGIC;
  signal \^counter_reg[7]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \crc[3]_i_3_n_0\ : STD_LOGIC;
  signal \crc[6]_i_1_n_0\ : STD_LOGIC;
  signal \crc[6]_i_4_n_0\ : STD_LOGIC;
  signal crc_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc_result : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^resp_no_crc_reg\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[5]_i_10_n_0\ : STD_LOGIC;
  signal \state[5]_i_11_n_0\ : STD_LOGIC;
  signal \state[5]_i_6_n_0\ : STD_LOGIC;
  signal \state[5]_i_7_n_0\ : STD_LOGIC;
  signal \state[5]_i_8_n_0\ : STD_LOGIC;
  signal \state[5]_i_9_n_0\ : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
  signal \^state_reg[2]\ : STD_LOGIC;
  signal \^state_reg[3]\ : STD_LOGIC;
  signal \^state_reg[4]\ : STD_LOGIC;
  signal \^state_reg[4]_0\ : STD_LOGIC;
  signal \^state_reg[5]\ : STD_LOGIC;
  signal \^state_reg[5]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_write[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of got_new_cmd_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[3]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[5]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[5]_i_7\ : label is "soft_lutpair10";
begin
  D(2 downto 0) <= \^d\(2 downto 0);
  cmd_crc_err_next <= \^cmd_crc_err_next\;
  \counter_reg[2]\ <= \^counter_reg[2]\;
  \counter_reg[4]\ <= \^counter_reg[4]\;
  \counter_reg[6]\ <= \^counter_reg[6]\;
  \counter_reg[7]\(2 downto 0) <= \^counter_reg[7]\(2 downto 0);
  resp_no_crc_reg <= \^resp_no_crc_reg\;
  \state_reg[0]\ <= \^state_reg[0]\;
  \state_reg[1]\ <= \^state_reg[1]\;
  \state_reg[2]\ <= \^state_reg[2]\;
  \state_reg[3]\ <= \^state_reg[3]\;
  \state_reg[4]\ <= \^state_reg[4]\;
  \state_reg[4]_0\ <= \^state_reg[4]_0\;
  \state_reg[5]\ <= \^state_reg[5]\;
  \state_reg[5]_0\ <= \^state_reg[5]_0\;
\buf_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(0),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(0),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(0),
      O => \crc_reg[5]_0\(0)
    );
\buf_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(1),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(1),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(1),
      O => \crc_reg[5]_0\(1)
    );
\buf_write[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(2),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(2),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(2),
      O => \crc_reg[5]_0\(2)
    );
\buf_write[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(3),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(3),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(3),
      O => \crc_reg[5]_0\(3)
    );
\buf_write[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(4),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(4),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(4),
      O => \crc_reg[5]_0\(4)
    );
\buf_write[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(5),
      I1 => \^state_reg[5]\,
      I2 => \crc_reg[0]_0\(5),
      I3 => \^counter_reg[2]\,
      I4 => cmd_resp_byte(5),
      O => \crc_reg[5]_0\(5)
    );
\buf_write[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7F00"
    )
        port map (
      I0 => \counter_reg[7]_0\(2),
      I1 => \counter_reg[7]_0\(0),
      I2 => \counter_reg[7]_0\(1),
      I3 => Q(5),
      I4 => Q(4),
      O => \^counter_reg[2]\
    );
cmd_crc_err_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => crc_result(2),
      I1 => crc_result(3),
      I2 => crc_result(6),
      I3 => crc_result(4),
      I4 => cmd_crc_err_i_2_n_0,
      O => \^cmd_crc_err_next\
    );
cmd_crc_err_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => crc_result(5),
      I1 => crc_result(0),
      I2 => \state_reg[1]_0\(0),
      I3 => crc_result(1),
      O => cmd_crc_err_i_2_n_0
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_reg[7]_0\(3),
      I1 => \counter_reg[7]_0\(1),
      I2 => \counter_reg[7]_0\(0),
      I3 => \counter_reg[7]_0\(2),
      O => \^counter_reg[7]\(0)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg[7]_0\(5),
      I1 => \counter_reg[7]_0\(3),
      I2 => \counter_reg[7]_0\(4),
      I3 => \counter_reg[7]_0\(2),
      I4 => \counter_reg[7]_0\(0),
      I5 => \counter_reg[7]_0\(1),
      O => \^counter_reg[7]\(1)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \counter[7]_i_3_n_0\,
      I1 => \counter[7]_i_4_n_0\,
      I2 => \counter_reg[7]_1\,
      I3 => \counter_reg[7]_2\,
      I4 => \counter_reg[7]_3\,
      I5 => resetn,
      O => SR(0)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg[7]_0\(7),
      I1 => \counter_reg[7]_0\(2),
      I2 => \counter_reg[7]_0\(0),
      I3 => \counter_reg[7]_0\(1),
      I4 => \^counter_reg[4]\,
      I5 => \counter_reg[7]_0\(6),
      O => \^counter_reg[7]\(2)
    );
\counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555559A559A9A"
    )
        port map (
      I0 => Q(0),
      I1 => \state_reg[0]_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => \state_reg[0]_1\,
      I4 => \state[0]_i_2_n_0\,
      I5 => \^state_reg[0]\,
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^d\(1),
      I1 => Q(1),
      I2 => \^d\(2),
      I3 => Q(2),
      O => \counter[7]_i_4_n_0\
    );
\counter[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \counter_reg[7]_0\(4),
      I1 => \counter_reg[7]_0\(3),
      I2 => \counter_reg[7]_0\(5),
      O => \^counter_reg[4]\
    );
\crc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F12F012"
    )
        port map (
      I0 => \crc[3]_i_3_n_0\,
      I1 => \^state_reg[5]\,
      I2 => crc_result(6),
      I3 => \^state_reg[4]\,
      I4 => \state_reg[1]_0\(0),
      O => crc_next1(0)
    );
\crc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => crc_result(2),
      I1 => \state_reg[1]_0\(0),
      I2 => \^state_reg[4]\,
      I3 => crc_result(6),
      I4 => \^state_reg[5]\,
      I5 => \crc[3]_i_3_n_0\,
      O => crc_next(3)
    );
\crc[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00750000"
    )
        port map (
      I0 => \^state_reg[5]_0\,
      I1 => \^state_reg[2]\,
      I2 => Q(5),
      I3 => \^state_reg[0]\,
      I4 => Q(4),
      O => \^state_reg[5]\
    );
\crc[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]_0\(6),
      I1 => \^counter_reg[2]\,
      I2 => cmd_resp_byte(6),
      O => \crc[3]_i_3_n_0\
    );
\crc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^state_reg[4]\,
      I2 => resetn,
      O => \crc[6]_i_1_n_0\
    );
\crc[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => Q(4),
      I1 => \^state_reg[2]\,
      I2 => \^state_reg[4]_0\,
      I3 => \^state_reg[0]\,
      O => \^state_reg[4]\
    );
\crc[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F131F1F1FFFFFFFF"
    )
        port map (
      I0 => \^counter_reg[6]\,
      I1 => Q(4),
      I2 => \crc[6]_i_4_n_0\,
      I3 => Q(3),
      I4 => \state[5]_i_8_n_0\,
      I5 => \state[0]_i_4_n_0\,
      O => \^state_reg[4]_0\
    );
\crc[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000EAFFFFFFFF"
    )
        port map (
      I0 => resp_none,
      I1 => \counter_reg[7]_0\(5),
      I2 => new_sd_clk,
      I3 => write_stb_received_r,
      I4 => resp_start,
      I5 => Q(3),
      O => \crc[6]_i_4_n_0\
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_next1(0),
      Q => crc_result(0),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_result(0),
      Q => crc_result(1),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_result(1),
      Q => crc_result(2),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_next(3),
      Q => crc_result(3),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_result(3),
      Q => crc_result(4),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_result(4),
      Q => crc_result(5),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_result(5),
      Q => crc_result(6),
      R => \crc[6]_i_1_n_0\
    );
got_new_cmd_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \cmd_arg_reg[0]\,
      I1 => Q(1),
      I2 => \cmd_arg_reg[0]_0\(0),
      I3 => \^cmd_crc_err_next\,
      O => E(0)
    );
sd_cmd_o_sys_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE2FFFFFFAAFF"
    )
        port map (
      I0 => \crc[3]_i_3_n_0\,
      I1 => Q(4),
      I2 => crc_result(6),
      I3 => sd_cmd_o_sys_reg,
      I4 => \^state_reg[4]\,
      I5 => sd_cmd_o_sys_reg_0(0),
      O => sd_cmd_o_sys0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \^state_reg[0]\,
      I1 => \state[0]_i_2_n_0\,
      I2 => \state_reg[0]_1\,
      I3 => \state[0]_i_4_n_0\,
      I4 => \state_reg[0]_0\,
      O => \^d\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0000F0FFEEEE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \state_reg[1]_0\(0),
      I3 => new_sd_clk,
      I4 => Q(0),
      I5 => \state[2]_i_3_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      O => \state[0]_i_4_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \^state_reg[1]\,
      I1 => Q(0),
      I2 => new_sd_clk,
      I3 => \state_reg[1]_0\(0),
      I4 => Q(1),
      O => \^d\(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \counter_reg[7]_0\(3),
      I2 => \counter_reg[7]_0\(2),
      I3 => \counter_reg[7]_0\(1),
      I4 => new_sd_clk,
      I5 => \counter_reg[7]_0\(5),
      O => \^state_reg[1]\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00BB000F0F0F00"
    )
        port map (
      I0 => \state_reg[1]_0\(0),
      I1 => new_sd_clk,
      I2 => \state[2]_i_2_n_0\,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \^d\(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0EE0F0FFFFF"
    )
        port map (
      I0 => resp_none,
      I1 => new_sd_clk,
      I2 => \cmd_arg_reg[0]\,
      I3 => Q(1),
      I4 => \state[2]_i_3_n_0\,
      I5 => Q(2),
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(1),
      I1 => \cmd_arg_reg[0]_0\(0),
      I2 => \^cmd_crc_err_next\,
      O => \state[2]_i_3_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404444444"
    )
        port map (
      I0 => \^counter_reg[6]\,
      I1 => Q(3),
      I2 => \state[3]_i_6_n_0\,
      I3 => new_sd_clk,
      I4 => \counter_reg[7]_0\(5),
      I5 => resp_none,
      O => \^state_reg[3]\
    );
\state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \counter_reg[7]_0\(6),
      I1 => \counter_reg[7]_0\(7),
      I2 => \counter_reg[7]_0\(5),
      I3 => \state[3]_i_7_n_0\,
      I4 => new_sd_clk,
      I5 => \state[3]_i_6_n_0\,
      O => \^counter_reg[6]\
    );
\state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_stb_received_r,
      I1 => resp_start,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg[7]_0\(2),
      I1 => \counter_reg[7]_0\(1),
      I2 => \counter_reg[7]_0\(4),
      I3 => \counter_reg[7]_0\(3),
      O => \state[3]_i_7_n_0\
    );
\state[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF44F4F44844444"
    )
        port map (
      I0 => \counter_reg[7]_0\(4),
      I1 => cmd_resp_len(1),
      I2 => \counter_reg[7]_0\(3),
      I3 => \state[5]_i_11_n_0\,
      I4 => \counter_reg[7]_0\(2),
      I5 => cmd_resp_len(0),
      O => \state[5]_i_10_n_0\
    );
\state[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter_reg[7]_0\(1),
      I1 => \counter_reg[7]_0\(0),
      O => \state[5]_i_11_n_0\
    );
\state[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => new_sd_clk,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \^resp_no_crc_reg\,
      O => \^state_reg[0]\
    );
\state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F00004444"
    )
        port map (
      I0 => \^state_reg[1]\,
      I1 => \state[5]_i_6_n_0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \state[5]_i_7_n_0\,
      O => \^state_reg[2]\
    );
\state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75707575FFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => \^state_reg[3]\,
      I2 => Q(3),
      I3 => \state[5]_i_8_n_0\,
      I4 => Q(4),
      I5 => \state[0]_i_4_n_0\,
      O => \^state_reg[5]_0\
    );
\state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF0FDFFFDFFFDFF"
    )
        port map (
      I0 => resp_no_crc,
      I1 => \state[5]_i_9_n_0\,
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(5),
      I5 => \^counter_reg[7]\(0),
      O => \^resp_no_crc_reg\
    );
\state[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => new_sd_clk,
      I1 => resp_none,
      I2 => Q(2),
      I3 => Q(1),
      O => \state[5]_i_6_n_0\
    );
\state[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \state_reg[1]_0\(0),
      I1 => new_sd_clk,
      I2 => Q(0),
      O => \state[5]_i_7_n_0\
    );
\state[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \state[5]_i_9_n_0\,
      I1 => new_sd_clk,
      I2 => resp_no_crc,
      O => \state[5]_i_8_n_0\
    );
\state[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \^counter_reg[7]\(2),
      I1 => cmd_resp_len(3),
      I2 => \state[5]_i_10_n_0\,
      I3 => cmd_resp_len(2),
      I4 => \^counter_reg[7]\(1),
      O => \state[5]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_card_0_line_crc__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sd_dat_d_reg[2][3]\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sd_dat_o_sys_reg[0]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dat_width_4 : in STD_LOGIC;
    busy_in : in STD_LOGIC;
    dat_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_card_0_line_crc__parameterized0\ : entity is "line_crc";
end \block_design_sd_card_0_line_crc__parameterized0\;

architecture STRUCTURE of \block_design_sd_card_0_line_crc__parameterized0\ is
  signal \crc[0]_i_2_n_0\ : STD_LOGIC;
  signal \crc[15]_i_1__0_n_0\ : STD_LOGIC;
  signal crc_next : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_reg_n_0_[0]\ : STD_LOGIC;
  signal \crc_reg_n_0_[10]\ : STD_LOGIC;
  signal \crc_reg_n_0_[11]\ : STD_LOGIC;
  signal \crc_reg_n_0_[12]\ : STD_LOGIC;
  signal \crc_reg_n_0_[13]\ : STD_LOGIC;
  signal \crc_reg_n_0_[14]\ : STD_LOGIC;
  signal \crc_reg_n_0_[1]\ : STD_LOGIC;
  signal \crc_reg_n_0_[2]\ : STD_LOGIC;
  signal \crc_reg_n_0_[3]\ : STD_LOGIC;
  signal \crc_reg_n_0_[4]\ : STD_LOGIC;
  signal \crc_reg_n_0_[5]\ : STD_LOGIC;
  signal \crc_reg_n_0_[6]\ : STD_LOGIC;
  signal \crc_reg_n_0_[7]\ : STD_LOGIC;
  signal \crc_reg_n_0_[8]\ : STD_LOGIC;
  signal \crc_reg_n_0_[9]\ : STD_LOGIC;
  signal good_i_2_n_0 : STD_LOGIC;
  signal good_i_3_n_0 : STD_LOGIC;
  signal good_i_4_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \sd_dat_o_sys[0]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of good_i_1 : label is "soft_lutpair21";
begin
\crc[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D00E2"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_reg[0]_0\(3),
      I2 => \crc[0]_i_2_n_0\,
      I3 => \crc_reg[0]_0\(0),
      I4 => p_1_in(0),
      O => crc_next1(0)
    );
\crc[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]_0\(0),
      I1 => dat_width_4,
      I2 => \sd_dat_o_sys_reg[0]_0\(1),
      O => \crc[0]_i_2_n_0\
    );
\crc[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => crc_next1(0),
      O => crc_next(12)
    );
\crc[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFBFFFF"
    )
        port map (
      I0 => \crc_reg[0]_0\(0),
      I1 => \crc_reg[0]_0\(1),
      I2 => \crc_reg[0]_0\(3),
      I3 => \crc_reg[0]_0\(2),
      I4 => dat_resetn,
      O => \crc[15]_i_1__0_n_0\
    );
\crc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => crc_next1(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[14]\,
      Q => p_1_in(0),
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => \crc[15]_i_1__0_n_0\
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => \crc[15]_i_1__0_n_0\
    );
good_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => crc_next1(0),
      I1 => \crc_reg_n_0_[11]\,
      I2 => good_i_2_n_0,
      O => p_2_in
    );
good_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => good_i_3_n_0,
      I1 => good_i_4_n_0,
      I2 => \crc_reg_n_0_[1]\,
      I3 => \crc_reg_n_0_[6]\,
      I4 => \crc_reg_n_0_[10]\,
      I5 => \crc_reg_n_0_[3]\,
      O => good_i_2_n_0
    );
good_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[14]\,
      I1 => \crc_reg_n_0_[8]\,
      I2 => \crc_reg_n_0_[4]\,
      I3 => \crc_reg_n_0_[9]\,
      I4 => \crc_reg_n_0_[5]\,
      I5 => \crc_reg_n_0_[2]\,
      O => good_i_3_n_0
    );
good_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[12]\,
      I1 => \crc_reg_n_0_[7]\,
      I2 => \crc_reg_n_0_[13]\,
      I3 => \crc_reg_n_0_[0]\,
      O => good_i_4_n_0
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_2_in,
      Q => p_9_out,
      R => \crc[15]_i_1__0_n_0\
    );
read_crc_err_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => p_9_out,
      I4 => Q(1),
      O => \sd_dat_d_reg[2][3]\
    );
\sd_dat_o_sys[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCDDFCDDCC"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]\,
      I1 => \sd_dat_o_sys[0]_i_3_n_0\,
      I2 => \crc[0]_i_2_n_0\,
      I3 => \crc_reg[0]_0\(1),
      I4 => \crc_reg[0]_0\(2),
      I5 => \crc_reg[0]_0\(0),
      O => D(0)
    );
\sd_dat_o_sys[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCC30303333FDFD"
    )
        port map (
      I0 => busy_in,
      I1 => \crc_reg[0]_0\(1),
      I2 => \crc_reg[0]_0\(0),
      I3 => p_1_in(0),
      I4 => \crc_reg[0]_0\(2),
      I5 => \crc_reg[0]_0\(3),
      O => \sd_dat_o_sys[0]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_card_0_line_crc__parameterized0_0\ is
  port (
    \crc_reg[15]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_width_4 : in STD_LOGIC;
    read_crc_err_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    read_crc_err_reg_0 : in STD_LOGIC;
    read_crc_err_reg_1 : in STD_LOGIC;
    read_crc_err_reg_2 : in STD_LOGIC;
    read_crc_err_reg_3 : in STD_LOGIC;
    read_crc_err : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_card_0_line_crc__parameterized0_0\ : entity is "line_crc";
end \block_design_sd_card_0_line_crc__parameterized0_0\;

architecture STRUCTURE of \block_design_sd_card_0_line_crc__parameterized0_0\ is
  signal crc_next : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_reg_n_0_[0]\ : STD_LOGIC;
  signal \crc_reg_n_0_[10]\ : STD_LOGIC;
  signal \crc_reg_n_0_[11]\ : STD_LOGIC;
  signal \crc_reg_n_0_[12]\ : STD_LOGIC;
  signal \crc_reg_n_0_[13]\ : STD_LOGIC;
  signal \crc_reg_n_0_[14]\ : STD_LOGIC;
  signal \crc_reg_n_0_[1]\ : STD_LOGIC;
  signal \crc_reg_n_0_[2]\ : STD_LOGIC;
  signal \crc_reg_n_0_[3]\ : STD_LOGIC;
  signal \crc_reg_n_0_[4]\ : STD_LOGIC;
  signal \crc_reg_n_0_[5]\ : STD_LOGIC;
  signal \crc_reg_n_0_[6]\ : STD_LOGIC;
  signal \crc_reg_n_0_[7]\ : STD_LOGIC;
  signal \crc_reg_n_0_[8]\ : STD_LOGIC;
  signal \crc_reg_n_0_[9]\ : STD_LOGIC;
  signal good : STD_LOGIC;
  signal \good_i_1__0_n_0\ : STD_LOGIC;
  signal \good_i_2__0_n_0\ : STD_LOGIC;
  signal \good_i_3__0_n_0\ : STD_LOGIC;
  signal \good_i_4__0_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal read_crc_err0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[12]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \good_i_1__0\ : label is "soft_lutpair22";
begin
\crc[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000707F00008F80"
    )
        port map (
      I0 => Q(0),
      I1 => dat_width_4,
      I2 => read_crc_err_reg(3),
      I3 => \crc_reg[0]_0\(0),
      I4 => read_crc_err_reg(0),
      I5 => p_1_in(1),
      O => crc_next1(0)
    );
\crc[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => crc_next1(0),
      O => crc_next(12)
    );
\crc[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => crc_next1(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[14]\,
      Q => p_1_in(1),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => SR(0)
    );
\good_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => crc_next1(0),
      I1 => \crc_reg_n_0_[11]\,
      I2 => \good_i_2__0_n_0\,
      I3 => \good_i_3__0_n_0\,
      I4 => \good_i_4__0_n_0\,
      O => \good_i_1__0_n_0\
    );
\good_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[1]\,
      I1 => \crc_reg_n_0_[6]\,
      I2 => \crc_reg_n_0_[10]\,
      I3 => \crc_reg_n_0_[3]\,
      O => \good_i_2__0_n_0\
    );
\good_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[12]\,
      I1 => \crc_reg_n_0_[7]\,
      I2 => \crc_reg_n_0_[13]\,
      I3 => \crc_reg_n_0_[0]\,
      O => \good_i_3__0_n_0\
    );
\good_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[14]\,
      I1 => \crc_reg_n_0_[8]\,
      I2 => \crc_reg_n_0_[4]\,
      I3 => \crc_reg_n_0_[9]\,
      I4 => \crc_reg_n_0_[5]\,
      I5 => \crc_reg_n_0_[2]\,
      O => \good_i_4__0_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \good_i_1__0_n_0\,
      Q => good,
      R => SR(0)
    );
read_crc_err_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => read_crc_err0,
      I1 => read_crc_err_reg(3),
      I2 => read_crc_err_reg(2),
      I3 => E(0),
      I4 => read_crc_err_reg_3,
      I5 => read_crc_err,
      O => \FSM_sequential_state_reg[3]\
    );
read_crc_err_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7F00"
    )
        port map (
      I0 => good,
      I1 => read_crc_err_reg_0,
      I2 => read_crc_err_reg_1,
      I3 => dat_width_4,
      I4 => read_crc_err_reg_2,
      O => read_crc_err0
    );
\sd_dat_o_sys[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2C2C2C"
    )
        port map (
      I0 => p_1_in(1),
      I1 => read_crc_err_reg(1),
      I2 => read_crc_err_reg(0),
      I3 => dat_width_4,
      I4 => Q(0),
      O => \crc_reg[15]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_card_0_line_crc__parameterized0_1\ is
  port (
    good_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[15]_0\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dat_width_4 : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_card_0_line_crc__parameterized0_1\ : entity is "line_crc";
end \block_design_sd_card_0_line_crc__parameterized0_1\;

architecture STRUCTURE of \block_design_sd_card_0_line_crc__parameterized0_1\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc_next : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_reg_n_0_[0]\ : STD_LOGIC;
  signal \crc_reg_n_0_[10]\ : STD_LOGIC;
  signal \crc_reg_n_0_[11]\ : STD_LOGIC;
  signal \crc_reg_n_0_[12]\ : STD_LOGIC;
  signal \crc_reg_n_0_[13]\ : STD_LOGIC;
  signal \crc_reg_n_0_[14]\ : STD_LOGIC;
  signal \crc_reg_n_0_[1]\ : STD_LOGIC;
  signal \crc_reg_n_0_[2]\ : STD_LOGIC;
  signal \crc_reg_n_0_[3]\ : STD_LOGIC;
  signal \crc_reg_n_0_[4]\ : STD_LOGIC;
  signal \crc_reg_n_0_[5]\ : STD_LOGIC;
  signal \crc_reg_n_0_[6]\ : STD_LOGIC;
  signal \crc_reg_n_0_[7]\ : STD_LOGIC;
  signal \crc_reg_n_0_[8]\ : STD_LOGIC;
  signal \crc_reg_n_0_[9]\ : STD_LOGIC;
  signal \good_i_1__1_n_0\ : STD_LOGIC;
  signal \good_i_2__1_n_0\ : STD_LOGIC;
  signal \good_i_3__1_n_0\ : STD_LOGIC;
  signal \good_i_4__1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[12]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \good_i_1__1\ : label is "soft_lutpair23";
begin
  SR(0) <= \^sr\(0);
\crc[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500155540554000"
    )
        port map (
      I0 => Q(0),
      I1 => dat_width_4,
      I2 => \crc_reg[0]_0\(0),
      I3 => Q(3),
      I4 => \crc_reg[0]_1\(0),
      I5 => p_1_in(2),
      O => crc_next1(0)
    );
\crc[12]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => crc_next1(0),
      O => crc_next(12)
    );
\crc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FD77FFFFFFFF"
    )
        port map (
      I0 => dat_resetn,
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => dat_width_4,
      O => \^sr\(0)
    );
\crc[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => crc_next1(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[14]\,
      Q => p_1_in(2),
      R => \^sr\(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\good_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => crc_next1(0),
      I1 => \crc_reg_n_0_[11]\,
      I2 => \good_i_2__1_n_0\,
      I3 => \good_i_3__1_n_0\,
      I4 => \good_i_4__1_n_0\,
      O => \good_i_1__1_n_0\
    );
\good_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[1]\,
      I1 => \crc_reg_n_0_[6]\,
      I2 => \crc_reg_n_0_[10]\,
      I3 => \crc_reg_n_0_[3]\,
      O => \good_i_2__1_n_0\
    );
\good_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[12]\,
      I1 => \crc_reg_n_0_[7]\,
      I2 => \crc_reg_n_0_[13]\,
      I3 => \crc_reg_n_0_[0]\,
      O => \good_i_3__1_n_0\
    );
\good_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[14]\,
      I1 => \crc_reg_n_0_[8]\,
      I2 => \crc_reg_n_0_[4]\,
      I3 => \crc_reg_n_0_[9]\,
      I4 => \crc_reg_n_0_[5]\,
      I5 => \crc_reg_n_0_[2]\,
      O => \good_i_4__1_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \good_i_1__1_n_0\,
      Q => good_reg_0,
      R => \^sr\(0)
    );
\sd_dat_o_sys[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2C2C2C"
    )
        port map (
      I0 => p_1_in(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => dat_width_4,
      I4 => \crc_reg[0]_0\(0),
      O => \crc_reg[15]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_card_0_line_crc__parameterized0_2\ is
  port (
    good_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[15]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    good_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_width_4 : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \crc_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_card_0_line_crc__parameterized0_2\ : entity is "line_crc";
end \block_design_sd_card_0_line_crc__parameterized0_2\;

architecture STRUCTURE of \block_design_sd_card_0_line_crc__parameterized0_2\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc_next : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_reg_n_0_[0]\ : STD_LOGIC;
  signal \crc_reg_n_0_[10]\ : STD_LOGIC;
  signal \crc_reg_n_0_[11]\ : STD_LOGIC;
  signal \crc_reg_n_0_[12]\ : STD_LOGIC;
  signal \crc_reg_n_0_[13]\ : STD_LOGIC;
  signal \crc_reg_n_0_[14]\ : STD_LOGIC;
  signal \crc_reg_n_0_[1]\ : STD_LOGIC;
  signal \crc_reg_n_0_[2]\ : STD_LOGIC;
  signal \crc_reg_n_0_[3]\ : STD_LOGIC;
  signal \crc_reg_n_0_[4]\ : STD_LOGIC;
  signal \crc_reg_n_0_[5]\ : STD_LOGIC;
  signal \crc_reg_n_0_[6]\ : STD_LOGIC;
  signal \crc_reg_n_0_[7]\ : STD_LOGIC;
  signal \crc_reg_n_0_[8]\ : STD_LOGIC;
  signal \crc_reg_n_0_[9]\ : STD_LOGIC;
  signal \good_i_1__2_n_0\ : STD_LOGIC;
  signal \good_i_2__2_n_0\ : STD_LOGIC;
  signal \good_i_3__2_n_0\ : STD_LOGIC;
  signal \good_i_4__2_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[12]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \good_i_1__2\ : label is "soft_lutpair24";
begin
  E(0) <= \^e\(0);
\crc[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000707F00008F80"
    )
        port map (
      I0 => Q(0),
      I1 => dat_width_4,
      I2 => \crc_reg[0]_0\(2),
      I3 => \crc_reg[0]_1\(0),
      I4 => \crc_reg[0]_0\(0),
      I5 => p_1_in(3),
      O => crc_next1(0)
    );
\crc[12]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => crc_next1(0),
      O => crc_next(12)
    );
\crc[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => crc_next1(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[14]\,
      Q => p_1_in(3),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => SR(0)
    );
\good_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => crc_next1(0),
      I1 => \crc_reg_n_0_[11]\,
      I2 => \good_i_2__2_n_0\,
      I3 => \good_i_3__2_n_0\,
      I4 => \good_i_4__2_n_0\,
      O => \good_i_1__2_n_0\
    );
\good_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[1]\,
      I1 => \crc_reg_n_0_[6]\,
      I2 => \crc_reg_n_0_[10]\,
      I3 => \crc_reg_n_0_[3]\,
      O => \good_i_2__2_n_0\
    );
\good_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[12]\,
      I1 => \crc_reg_n_0_[7]\,
      I2 => \crc_reg_n_0_[13]\,
      I3 => \crc_reg_n_0_[0]\,
      O => \good_i_3__2_n_0\
    );
\good_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[14]\,
      I1 => \crc_reg_n_0_[8]\,
      I2 => \crc_reg_n_0_[4]\,
      I3 => \crc_reg_n_0_[9]\,
      I4 => \crc_reg_n_0_[5]\,
      I5 => \crc_reg_n_0_[2]\,
      O => \good_i_4__2_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \good_i_1__2_n_0\,
      Q => good_reg_0,
      R => SR(0)
    );
in_tready_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => good_reg_1(1),
      I1 => good_reg_1(0),
      O => \^e\(0)
    );
\sd_dat_o_sys[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2C2C2C"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \crc_reg[0]_0\(1),
      I2 => \crc_reg[0]_0\(0),
      I3 => dat_width_4,
      I4 => Q(0),
      O => \crc_reg[15]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_range_check is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_of_range : out STD_LOGIC;
    out_of_range_reg_0 : out STD_LOGIC;
    out_of_range_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    invalid_dat_width : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_0\ : in STD_LOGIC;
    cmd_arg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \out_of_range0_inferred__0/i__carry_1\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_2\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_3\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_4\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_5\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_6\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry_7\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_0\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_1\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_2\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_3\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_4\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_5\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_6\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__0_7\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_0\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_1\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_2\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_3\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_4\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_5\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_6\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__1_7\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_0\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_1\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_2\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_3\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_4\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_5\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_6\ : in STD_LOGIC;
    \out_of_range0_inferred__0/i__carry__2_7\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_range_check : entity is "range_check";
end block_design_sd_card_0_range_check;

architecture STRUCTURE of block_design_sd_card_0_range_check is
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \^out_of_range\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \out_of_range0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_out_of_range0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  out_of_range <= \^out_of_range\;
\card_status[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out_of_range\,
      I1 => invalid_dat_width,
      O => out_of_range_reg_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(15),
      I1 => \out_of_range0_inferred__0/i__carry__0_6\,
      I2 => cmd_arg(14),
      I3 => \out_of_range0_inferred__0/i__carry__0_7\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(13),
      I1 => \out_of_range0_inferred__0/i__carry__0_4\,
      I2 => cmd_arg(12),
      I3 => \out_of_range0_inferred__0/i__carry__0_5\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(11),
      I1 => \out_of_range0_inferred__0/i__carry__0_2\,
      I2 => cmd_arg(10),
      I3 => \out_of_range0_inferred__0/i__carry__0_3\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(9),
      I1 => \out_of_range0_inferred__0/i__carry__0_0\,
      I2 => cmd_arg(8),
      I3 => \out_of_range0_inferred__0/i__carry__0_1\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__0_6\,
      I1 => cmd_arg(15),
      I2 => \out_of_range0_inferred__0/i__carry__0_7\,
      I3 => cmd_arg(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__0_4\,
      I1 => cmd_arg(13),
      I2 => \out_of_range0_inferred__0/i__carry__0_5\,
      I3 => cmd_arg(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__0_2\,
      I1 => cmd_arg(11),
      I2 => \out_of_range0_inferred__0/i__carry__0_3\,
      I3 => cmd_arg(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__0_0\,
      I1 => cmd_arg(9),
      I2 => \out_of_range0_inferred__0/i__carry__0_1\,
      I3 => cmd_arg(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(23),
      I1 => \out_of_range0_inferred__0/i__carry__1_6\,
      I2 => cmd_arg(22),
      I3 => \out_of_range0_inferred__0/i__carry__1_7\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(21),
      I1 => \out_of_range0_inferred__0/i__carry__1_4\,
      I2 => cmd_arg(20),
      I3 => \out_of_range0_inferred__0/i__carry__1_5\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(19),
      I1 => \out_of_range0_inferred__0/i__carry__1_2\,
      I2 => cmd_arg(18),
      I3 => \out_of_range0_inferred__0/i__carry__1_3\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(17),
      I1 => \out_of_range0_inferred__0/i__carry__1_0\,
      I2 => cmd_arg(16),
      I3 => \out_of_range0_inferred__0/i__carry__1_1\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__1_6\,
      I1 => cmd_arg(23),
      I2 => \out_of_range0_inferred__0/i__carry__1_7\,
      I3 => cmd_arg(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__1_4\,
      I1 => cmd_arg(21),
      I2 => \out_of_range0_inferred__0/i__carry__1_5\,
      I3 => cmd_arg(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__1_2\,
      I1 => cmd_arg(19),
      I2 => \out_of_range0_inferred__0/i__carry__1_3\,
      I3 => cmd_arg(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__1_0\,
      I1 => cmd_arg(17),
      I2 => \out_of_range0_inferred__0/i__carry__1_1\,
      I3 => cmd_arg(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(31),
      I1 => \out_of_range0_inferred__0/i__carry__2_6\,
      I2 => cmd_arg(30),
      I3 => \out_of_range0_inferred__0/i__carry__2_7\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(29),
      I1 => \out_of_range0_inferred__0/i__carry__2_4\,
      I2 => cmd_arg(28),
      I3 => \out_of_range0_inferred__0/i__carry__2_5\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(27),
      I1 => \out_of_range0_inferred__0/i__carry__2_2\,
      I2 => cmd_arg(26),
      I3 => \out_of_range0_inferred__0/i__carry__2_3\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(25),
      I1 => \out_of_range0_inferred__0/i__carry__2_0\,
      I2 => cmd_arg(24),
      I3 => \out_of_range0_inferred__0/i__carry__2_1\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__2_6\,
      I1 => cmd_arg(31),
      I2 => \out_of_range0_inferred__0/i__carry__2_7\,
      I3 => cmd_arg(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__2_4\,
      I1 => cmd_arg(29),
      I2 => \out_of_range0_inferred__0/i__carry__2_5\,
      I3 => cmd_arg(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__2_2\,
      I1 => cmd_arg(27),
      I2 => \out_of_range0_inferred__0/i__carry__2_3\,
      I3 => cmd_arg(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry__2_0\,
      I1 => cmd_arg(25),
      I2 => \out_of_range0_inferred__0/i__carry__2_1\,
      I3 => cmd_arg(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(7),
      I1 => \out_of_range0_inferred__0/i__carry_6\,
      I2 => cmd_arg(6),
      I3 => \out_of_range0_inferred__0/i__carry_7\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(5),
      I1 => \out_of_range0_inferred__0/i__carry_4\,
      I2 => cmd_arg(4),
      I3 => \out_of_range0_inferred__0/i__carry_5\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(3),
      I1 => \out_of_range0_inferred__0/i__carry_2\,
      I2 => cmd_arg(2),
      I3 => \out_of_range0_inferred__0/i__carry_3\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cmd_arg(1),
      I1 => \out_of_range0_inferred__0/i__carry_0\,
      I2 => cmd_arg(0),
      I3 => \out_of_range0_inferred__0/i__carry_1\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry_6\,
      I1 => cmd_arg(7),
      I2 => \out_of_range0_inferred__0/i__carry_7\,
      I3 => cmd_arg(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry_4\,
      I1 => cmd_arg(5),
      I2 => \out_of_range0_inferred__0/i__carry_5\,
      I3 => cmd_arg(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry_2\,
      I1 => cmd_arg(3),
      I2 => \out_of_range0_inferred__0/i__carry_3\,
      I3 => cmd_arg(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_inferred__0/i__carry_0\,
      I1 => cmd_arg(1),
      I2 => \out_of_range0_inferred__0/i__carry_1\,
      I3 => cmd_arg(0),
      O => \i__carry_i_8_n_0\
    );
\out_of_range0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_of_range0_inferred__0/i__carry_n_0\,
      CO(2) => \out_of_range0_inferred__0/i__carry_n_1\,
      CO(1) => \out_of_range0_inferred__0/i__carry_n_2\,
      CO(0) => \out_of_range0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_out_of_range0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\out_of_range0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_of_range0_inferred__0/i__carry_n_0\,
      CO(3) => \out_of_range0_inferred__0/i__carry__0_n_0\,
      CO(2) => \out_of_range0_inferred__0/i__carry__0_n_1\,
      CO(1) => \out_of_range0_inferred__0/i__carry__0_n_2\,
      CO(0) => \out_of_range0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_out_of_range0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\out_of_range0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_of_range0_inferred__0/i__carry__0_n_0\,
      CO(3) => \out_of_range0_inferred__0/i__carry__1_n_0\,
      CO(2) => \out_of_range0_inferred__0/i__carry__1_n_1\,
      CO(1) => \out_of_range0_inferred__0/i__carry__1_n_2\,
      CO(0) => \out_of_range0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_out_of_range0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\out_of_range0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_of_range0_inferred__0/i__carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \out_of_range0_inferred__0/i__carry__2_n_1\,
      CO(1) => \out_of_range0_inferred__0/i__carry__2_n_2\,
      CO(0) => \out_of_range0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_out_of_range0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
out_of_range_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_of_range_reg_1,
      Q => \^out_of_range\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_rca_keeper is
  port (
    rca_match : out STD_LOGIC;
    \cmd_index_reg[3]\ : out STD_LOGIC;
    \rca_reg[4]_0\ : out STD_LOGIC;
    \rca_reg[15]_0\ : out STD_LOGIC;
    \rca_reg[14]_0\ : out STD_LOGIC;
    \card_status_resp_reg[19]\ : out STD_LOGIC;
    \card_status_resp_reg[11]\ : out STD_LOGIC;
    \card_status_resp_reg[10]\ : out STD_LOGIC;
    \card_status_resp_reg[9]\ : out STD_LOGIC;
    \card_status_resp_reg[8]\ : out STD_LOGIC;
    \rca_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    cmd_arg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cmd_index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_resp_pos : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \resp_byte_reg[4]\ : in STD_LOGIC;
    \resp_byte[7]_i_6\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_rca_keeper : entity is "rca_keeper";
end block_design_sd_card_0_rca_keeper;

architecture STRUCTURE of block_design_sd_card_0_rca_keeper is
  signal p_0_in : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal rca : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rca[0]_i_1_n_0\ : STD_LOGIC;
  signal \rca[10]_i_1_n_0\ : STD_LOGIC;
  signal \rca[11]_i_1_n_0\ : STD_LOGIC;
  signal \rca[12]_i_1_n_0\ : STD_LOGIC;
  signal \rca[13]_i_1_n_0\ : STD_LOGIC;
  signal \rca[14]_i_1_n_0\ : STD_LOGIC;
  signal \rca[15]_i_2_n_0\ : STD_LOGIC;
  signal \rca[15]_i_6_n_0\ : STD_LOGIC;
  signal \rca[15]_i_7_n_0\ : STD_LOGIC;
  signal \rca[15]_i_8_n_0\ : STD_LOGIC;
  signal \rca[15]_i_9_n_0\ : STD_LOGIC;
  signal \rca[1]_i_1_n_0\ : STD_LOGIC;
  signal \rca[2]_i_1_n_0\ : STD_LOGIC;
  signal \rca[3]_i_1_n_0\ : STD_LOGIC;
  signal \rca[4]_i_1_n_0\ : STD_LOGIC;
  signal \rca[5]_i_1_n_0\ : STD_LOGIC;
  signal \rca[6]_i_1_n_0\ : STD_LOGIC;
  signal \rca[7]_i_1_n_0\ : STD_LOGIC;
  signal \rca[8]_i_1_n_0\ : STD_LOGIC;
  signal \rca[9]_i_1_n_0\ : STD_LOGIC;
  signal \^rca_match\ : STD_LOGIC;
  signal \rca_match0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rca_match0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rca_match0_carry__0_n_3\ : STD_LOGIC;
  signal rca_match0_carry_i_1_n_0 : STD_LOGIC;
  signal rca_match0_carry_i_2_n_0 : STD_LOGIC;
  signal rca_match0_carry_i_3_n_0 : STD_LOGIC;
  signal rca_match0_carry_i_4_n_0 : STD_LOGIC;
  signal rca_match0_carry_n_0 : STD_LOGIC;
  signal rca_match0_carry_n_1 : STD_LOGIC;
  signal rca_match0_carry_n_2 : STD_LOGIC;
  signal rca_match0_carry_n_3 : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \rca_reg[15]_i_5_n_2\ : STD_LOGIC;
  signal \rca_reg[15]_i_5_n_3\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal NLW_rca_match0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rca_match0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rca_match0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rca_reg[15]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_rca_reg[15]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rca[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rca[10]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rca[11]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rca[12]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rca[13]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rca[14]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \rca[15]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rca[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rca[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \rca[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rca[4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \rca[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \rca[6]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rca[7]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \rca[8]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rca[9]_i_1\ : label is "soft_lutpair92";
begin
  rca_match <= \^rca_match\;
\card_status[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FAFFFF30FA"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_index(1),
      I2 => cmd_index(2),
      I3 => cmd_index(0),
      I4 => cmd_index(4),
      I5 => \^rca_match\,
      O => \cmd_index_reg[3]\
    );
\rca[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => rca(0),
      I1 => p_0_in(16),
      I2 => \rca[15]_i_6_n_0\,
      O => \rca[0]_i_1_n_0\
    );
\rca[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[10]_i_1_n_0\
    );
\rca[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(11),
      O => \rca[11]_i_1_n_0\
    );
\rca[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[12]_i_1_n_0\
    );
\rca[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(13),
      O => \rca[13]_i_1_n_0\
    );
\rca[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[14]_i_1_n_0\
    );
\rca[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_0_in(16),
      I1 => p_0_in(15),
      I2 => \rca[15]_i_6_n_0\,
      O => \rca[15]_i_2_n_0\
    );
\rca[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rca(12),
      I1 => rca(9),
      I2 => rca(15),
      I3 => rca(5),
      I4 => \rca[15]_i_7_n_0\,
      I5 => \rca[15]_i_8_n_0\,
      O => \rca[15]_i_6_n_0\
    );
\rca[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rca(10),
      I1 => rca(2),
      I2 => rca(4),
      I3 => rca(13),
      O => \rca[15]_i_7_n_0\
    );
\rca[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rca(3),
      I1 => rca(14),
      I2 => rca(1),
      I3 => rca(0),
      I4 => \rca[15]_i_9_n_0\,
      O => \rca[15]_i_8_n_0\
    );
\rca[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rca(11),
      I1 => rca(8),
      I2 => rca(7),
      I3 => rca(6),
      O => \rca[15]_i_9_n_0\
    );
\rca[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(1),
      O => \rca[1]_i_1_n_0\
    );
\rca[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[2]_i_1_n_0\
    );
\rca[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(3),
      O => \rca[3]_i_1_n_0\
    );
\rca[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[4]_i_1_n_0\
    );
\rca[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(5),
      O => \rca[5]_i_1_n_0\
    );
\rca[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[6]_i_1_n_0\
    );
\rca[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(7),
      O => \rca[7]_i_1_n_0\
    );
\rca[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \rca[15]_i_6_n_0\,
      I2 => p_0_in(16),
      O => \rca[8]_i_1_n_0\
    );
\rca[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(9),
      O => \rca[9]_i_1_n_0\
    );
rca_match0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rca_match0_carry_n_0,
      CO(2) => rca_match0_carry_n_1,
      CO(1) => rca_match0_carry_n_2,
      CO(0) => rca_match0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rca_match0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rca_match0_carry_i_1_n_0,
      S(2) => rca_match0_carry_i_2_n_0,
      S(1) => rca_match0_carry_i_3_n_0,
      S(0) => rca_match0_carry_i_4_n_0
    );
\rca_match0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rca_match0_carry_n_0,
      CO(3 downto 2) => \NLW_rca_match0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_1_in,
      CO(0) => \rca_match0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rca_match0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rca_match0_carry__0_i_1_n_0\,
      S(0) => \rca_match0_carry__0_i_2_n_0\
    );
\rca_match0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rca(15),
      I1 => cmd_arg(15),
      O => \rca_match0_carry__0_i_1_n_0\
    );
\rca_match0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_arg(14),
      I1 => rca(14),
      I2 => cmd_arg(12),
      I3 => rca(12),
      I4 => rca(13),
      I5 => cmd_arg(13),
      O => \rca_match0_carry__0_i_2_n_0\
    );
rca_match0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_arg(11),
      I1 => rca(11),
      I2 => cmd_arg(9),
      I3 => rca(9),
      I4 => rca(10),
      I5 => cmd_arg(10),
      O => rca_match0_carry_i_1_n_0
    );
rca_match0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_arg(8),
      I1 => rca(8),
      I2 => cmd_arg(6),
      I3 => rca(6),
      I4 => rca(7),
      I5 => cmd_arg(7),
      O => rca_match0_carry_i_2_n_0
    );
rca_match0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_arg(5),
      I1 => rca(5),
      I2 => cmd_arg(3),
      I3 => rca(3),
      I4 => rca(4),
      I5 => cmd_arg(4),
      O => rca_match0_carry_i_3_n_0
    );
rca_match0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_arg(2),
      I1 => rca(2),
      I2 => cmd_arg(1),
      I3 => rca(1),
      I4 => rca(0),
      I5 => cmd_arg(0),
      O => rca_match0_carry_i_4_n_0
    );
rca_match_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in,
      Q => \^rca_match\,
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[0]_i_1_n_0\,
      Q => rca(0),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[10]_i_1_n_0\,
      Q => rca(10),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[11]_i_1_n_0\,
      Q => rca(11),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[12]_i_1_n_0\,
      Q => rca(12),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rca_reg[8]_i_2_n_0\,
      CO(3) => \rca_reg[12]_i_2_n_0\,
      CO(2) => \rca_reg[12]_i_2_n_1\,
      CO(1) => \rca_reg[12]_i_2_n_2\,
      CO(0) => \rca_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => rca(12 downto 9)
    );
\rca_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[13]_i_1_n_0\,
      Q => rca(13),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[14]_i_1_n_0\,
      Q => rca(14),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[15]_i_2_n_0\,
      Q => rca(15),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[15]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rca_reg[12]_i_2_n_0\,
      CO(3) => p_0_in(16),
      CO(2) => \NLW_rca_reg[15]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \rca_reg[15]_i_5_n_2\,
      CO(0) => \rca_reg[15]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rca_reg[15]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(15 downto 13),
      S(3) => '1',
      S(2 downto 0) => rca(15 downto 13)
    );
\rca_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[1]_i_1_n_0\,
      Q => rca(1),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[2]_i_1_n_0\,
      Q => rca(2),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[3]_i_1_n_0\,
      Q => rca(3),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[4]_i_1_n_0\,
      Q => rca(4),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rca_reg[4]_i_2_n_0\,
      CO(2) => \rca_reg[4]_i_2_n_1\,
      CO(1) => \rca_reg[4]_i_2_n_2\,
      CO(0) => \rca_reg[4]_i_2_n_3\,
      CYINIT => rca(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => rca(4 downto 1)
    );
\rca_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[5]_i_1_n_0\,
      Q => rca(5),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[6]_i_1_n_0\,
      Q => rca(6),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[7]_i_1_n_0\,
      Q => rca(7),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[8]_i_1_n_0\,
      Q => rca(8),
      R => \rca_reg[0]_0\(0)
    );
\rca_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rca_reg[4]_i_2_n_0\,
      CO(3) => \rca_reg[8]_i_2_n_0\,
      CO(2) => \rca_reg[8]_i_2_n_1\,
      CO(1) => \rca_reg[8]_i_2_n_2\,
      CO(0) => \rca_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => rca(8 downto 5)
    );
\rca_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \rca[9]_i_1_n_0\,
      Q => rca(9),
      R => \rca_reg[0]_0\(0)
    );
\resp_byte[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \resp_byte[7]_i_6\(0),
      I1 => rca(0),
      I2 => cmd_resp_pos(1),
      I3 => rca(8),
      I4 => cmd_resp_pos(0),
      I5 => cmd_index(0),
      O => \card_status_resp_reg[8]\
    );
\resp_byte[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \resp_byte[7]_i_6\(1),
      I1 => rca(1),
      I2 => cmd_resp_pos(1),
      I3 => rca(9),
      I4 => cmd_resp_pos(0),
      I5 => cmd_index(1),
      O => \card_status_resp_reg[9]\
    );
\resp_byte[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \resp_byte[7]_i_6\(2),
      I1 => rca(2),
      I2 => cmd_resp_pos(1),
      I3 => rca(10),
      I4 => cmd_resp_pos(0),
      I5 => cmd_index(2),
      O => \card_status_resp_reg[10]\
    );
\resp_byte[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \resp_byte[7]_i_6\(3),
      I1 => rca(3),
      I2 => cmd_resp_pos(1),
      I3 => rca(11),
      I4 => cmd_resp_pos(0),
      I5 => cmd_index(3),
      O => \card_status_resp_reg[11]\
    );
\resp_byte[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFC7F7"
    )
        port map (
      I0 => rca(4),
      I1 => cmd_resp_pos(1),
      I2 => cmd_resp_pos(0),
      I3 => rca(12),
      I4 => cmd_resp_pos(2),
      I5 => \resp_byte_reg[4]\,
      O => \rca_reg[4]_0\
    );
\resp_byte[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \resp_byte[7]_i_6\(4),
      I1 => rca(5),
      I2 => cmd_resp_pos(1),
      I3 => rca(13),
      I4 => cmd_resp_pos(0),
      I5 => cmd_index(5),
      O => \card_status_resp_reg[19]\
    );
\resp_byte[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => cmd_resp_pos(0),
      I1 => rca(14),
      I2 => cmd_resp_pos(1),
      I3 => rca(6),
      I4 => \resp_byte[7]_i_6\(5),
      I5 => cmd_resp_pos(2),
      O => \rca_reg[14]_0\
    );
\resp_byte[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8A85808"
    )
        port map (
      I0 => cmd_resp_pos(0),
      I1 => rca(15),
      I2 => cmd_resp_pos(1),
      I3 => rca(7),
      I4 => \resp_byte[7]_i_6\(6),
      I5 => cmd_resp_pos(2),
      O => \rca_reg[15]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_responder is
  port (
    resp_no_crc : out STD_LOGIC;
    ram_read_en_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    resp_start : out STD_LOGIC;
    sent_r1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_index_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[0]\ : out STD_LOGIC;
    \cmd_index_reg[5]\ : out STD_LOGIC;
    \state_reg[4]\ : out STD_LOGIC;
    \card_status_reg[23]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ocr_high_byte_reg[26]\ : out STD_LOGIC;
    \ocr_high_byte_reg[29]\ : out STD_LOGIC;
    \resp_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \resp_len_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_read_en_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    resp_no_crc_next : in STD_LOGIC;
    clk : in STD_LOGIC;
    send_resp_o_reg_0 : in STD_LOGIC;
    \resp_type_out_reg[5]_0\ : in STD_LOGIC;
    \resp_type_out_reg[1]_0\ : in STD_LOGIC;
    cmd_resp_pos : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \resp_byte[7]_i_3_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \resp_byte[7]_i_3_1\ : in STD_LOGIC;
    cmd_index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \resp_byte_reg[7]_1\ : in STD_LOGIC;
    cmd_arg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \resp_byte_reg[6]_0\ : in STD_LOGIC;
    \resp_byte_reg[6]_1\ : in STD_LOGIC;
    \resp_byte_reg[4]_0\ : in STD_LOGIC;
    \resp_byte_reg[4]_1\ : in STD_LOGIC;
    \resp_byte_reg[1]_0\ : in STD_LOGIC;
    \resp_byte_reg[2]_0\ : in STD_LOGIC;
    \resp_byte_reg[2]_1\ : in STD_LOGIC;
    \resp_byte_reg[3]_0\ : in STD_LOGIC;
    \resp_byte_reg[5]_0\ : in STD_LOGIC;
    \resp_byte_reg[5]_1\ : in STD_LOGIC;
    \resp_byte_reg[0]_0\ : in STD_LOGIC;
    \card_status_reg[23]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \reg_saved_in[9]_6\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \card_status_reg[23]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    cmd_illegal_stb : in STD_LOGIC;
    cmd_crc_err_stb : in STD_LOGIC;
    \resp_byte[6]_i_3_0\ : in STD_LOGIC;
    initialization_done : in STD_LOGIC;
    \resp_byte_reg[0]_1\ : in STD_LOGIC;
    \resp_byte[0]_i_3_0\ : in STD_LOGIC;
    \resp_byte[1]_i_3_0\ : in STD_LOGIC;
    \resp_byte[1]_i_5_0\ : in STD_LOGIC;
    \resp_byte[2]_i_3\ : in STD_LOGIC;
    \resp_byte[3]_i_3_0\ : in STD_LOGIC;
    \resp_byte[3]_i_6_0\ : in STD_LOGIC;
    \resp_byte_reg[4]_2\ : in STD_LOGIC;
    \resp_byte[5]_i_3\ : in STD_LOGIC;
    \resp_cur_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn_0 : in STD_LOGIC;
    \resp_len_reg[4]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_responder : entity is "responder";
end block_design_sd_card_0_responder;

architecture STRUCTURE of block_design_sd_card_0_responder is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_read_en0 : STD_LOGIC;
  signal \resp_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal resp_cur : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^sent_r1\ : STD_LOGIC;
  signal sent_r6 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rca[15]_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \resp_byte[2]_i_6\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \resp_byte[3]_i_5\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \resp_byte[6]_i_7\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \resp_byte[7]_i_7\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \save_erase_vars[0].erase_vars[0][31]_i_2\ : label is "soft_lutpair97";
begin
  D(0) <= \^d\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  sent_r1 <= \^sent_r1\;
\card_status[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(0),
      I3 => \reg_saved_in[9]_6\(0),
      I4 => \card_status_reg[23]_1\(0),
      O => \card_status_reg[23]\(0)
    );
\card_status[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(6),
      I3 => \reg_saved_in[9]_6\(6),
      I4 => \card_status_reg[23]_1\(6),
      O => \card_status_reg[23]\(6)
    );
\card_status[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(1),
      I3 => \reg_saved_in[9]_6\(1),
      I4 => \card_status_reg[23]_1\(1),
      O => \card_status_reg[23]\(1)
    );
\card_status[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FE"
    )
        port map (
      I0 => \reg_saved_in[9]_6\(7),
      I1 => \card_status_reg[23]_0\(7),
      I2 => cmd_illegal_stb,
      I3 => sent_r6,
      I4 => \^sent_r1\,
      I5 => \card_status_reg[23]_1\(7),
      O => \card_status_reg[23]\(7)
    );
\card_status[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FE"
    )
        port map (
      I0 => \reg_saved_in[9]_6\(8),
      I1 => \card_status_reg[23]_0\(8),
      I2 => cmd_crc_err_stb,
      I3 => sent_r6,
      I4 => \^sent_r1\,
      I5 => \card_status_reg[23]_1\(8),
      O => \card_status_reg[23]\(8)
    );
\card_status[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(2),
      I3 => \reg_saved_in[9]_6\(2),
      I4 => \card_status_reg[23]_1\(2),
      O => \card_status_reg[23]\(2)
    );
\card_status[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(3),
      I3 => \reg_saved_in[9]_6\(3),
      I4 => \card_status_reg[23]_1\(3),
      O => \card_status_reg[23]\(3)
    );
\card_status[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(4),
      I3 => \reg_saved_in[9]_6\(4),
      I4 => \card_status_reg[23]_1\(4),
      O => \card_status_reg[23]\(4)
    );
\card_status[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(5),
      I3 => \reg_saved_in[9]_6\(5),
      I4 => \card_status_reg[23]_1\(5),
      O => \card_status_reg[23]\(5)
    );
ram_read_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => resp_cur(2),
      O => ram_read_en0
    );
ram_read_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ram_read_en0,
      Q => ram_read_en_reg_0(0),
      R => ram_read_en_reg_1(0)
    );
\rca[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_index(5),
      I1 => cmd_index(4),
      O => \cmd_index_reg[5]\
    );
\resp_byte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[0]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \resp_byte[0]_i_3_n_0\,
      I3 => resp_cur(2),
      I4 => \resp_byte_reg[0]_0\,
      O => \resp_byte[0]_i_1_n_0\
    );
\resp_byte[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A5404"
    )
        port map (
      I0 => cmd_resp_pos(0),
      I1 => cmd_index(0),
      I2 => cmd_resp_pos(2),
      I3 => cmd_arg(0),
      I4 => cmd_resp_pos(1),
      O => \resp_byte[0]_i_2_n_0\
    );
\resp_byte[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => \resp_byte[0]_i_5_n_0\,
      I1 => \resp_byte[7]_i_3_0\(0),
      I2 => cmd_resp_pos(2),
      I3 => \^q\(0),
      I4 => \resp_byte_reg[0]_1\,
      O => \resp_byte[0]_i_3_n_0\
    );
\resp_byte[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEBBBB"
    )
        port map (
      I0 => \^q\(0),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte[0]_i_3_0\,
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(0),
      O => \resp_byte[0]_i_5_n_0\
    );
\resp_byte[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_resp_pos(2),
      I2 => cmd_arg(1),
      I3 => \resp_byte[3]_i_5_n_0\,
      I4 => \^q\(1),
      I5 => \resp_byte[1]_i_5_n_0\,
      O => \resp_byte[1]_i_3_n_0\
    );
\resp_byte[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => \resp_byte[1]_i_6_n_0\,
      I1 => \resp_byte[7]_i_3_0\(1),
      I2 => cmd_resp_pos(2),
      I3 => \^q\(0),
      I4 => \resp_byte[1]_i_3_0\,
      O => \resp_byte[1]_i_5_n_0\
    );
\resp_byte[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEBBBB"
    )
        port map (
      I0 => \^q\(0),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte[1]_i_5_0\,
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(0),
      O => \resp_byte[1]_i_6_n_0\
    );
\resp_byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[2]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \resp_byte_reg[2]_0\,
      I3 => resp_cur(2),
      I4 => \resp_byte_reg[2]_1\,
      O => \resp_byte[2]_i_1_n_0\
    );
\resp_byte[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_resp_pos(2),
      I2 => cmd_arg(2),
      I3 => cmd_resp_pos(0),
      I4 => cmd_resp_pos(1),
      O => \resp_byte[2]_i_2_n_0\
    );
\resp_byte[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4743"
    )
        port map (
      I0 => cmd_resp_pos(1),
      I1 => cmd_resp_pos(0),
      I2 => cmd_resp_pos(2),
      I3 => \resp_byte[2]_i_3\,
      O => \ocr_high_byte_reg[26]\
    );
\resp_byte[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => cmd_index(3),
      I1 => cmd_resp_pos(2),
      I2 => cmd_arg(3),
      I3 => \resp_byte[3]_i_5_n_0\,
      I4 => \^q\(1),
      I5 => \resp_byte[3]_i_6_n_0\,
      O => \resp_byte[3]_i_3_n_0\
    );
\resp_byte[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cmd_resp_pos(1),
      I1 => cmd_resp_pos(0),
      O => \resp_byte[3]_i_5_n_0\
    );
\resp_byte[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => \resp_byte[3]_i_7_n_0\,
      I1 => \resp_byte[7]_i_3_0\(2),
      I2 => cmd_resp_pos(2),
      I3 => \^q\(0),
      I4 => \resp_byte[3]_i_3_0\,
      O => \resp_byte[3]_i_6_n_0\
    );
\resp_byte[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEBBBB"
    )
        port map (
      I0 => \^q\(0),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte[3]_i_6_0\,
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(0),
      O => \resp_byte[3]_i_7_n_0\
    );
\resp_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \resp_byte[4]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \resp_byte[4]_i_3_n_0\,
      I3 => \resp_byte_reg[4]_0\,
      I4 => resp_cur(2),
      I5 => \resp_byte_reg[4]_1\,
      O => \resp_byte[4]_i_1_n_0\
    );
\resp_byte[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_resp_pos(0),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(2),
      I4 => cmd_arg(4),
      O => \resp_byte[4]_i_2_n_0\
    );
\resp_byte[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEBBBB"
    )
        port map (
      I0 => \^q\(0),
      I1 => cmd_resp_pos(2),
      I2 => \resp_byte_reg[4]_2\,
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(0),
      O => \resp_byte[4]_i_3_n_0\
    );
\resp_byte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[5]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \resp_byte_reg[5]_0\,
      I3 => resp_cur(2),
      I4 => \resp_byte_reg[5]_1\,
      O => \resp_byte[5]_i_1_n_0\
    );
\resp_byte[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => cmd_index(5),
      I1 => cmd_resp_pos(2),
      I2 => cmd_arg(5),
      I3 => cmd_resp_pos(0),
      I4 => cmd_resp_pos(1),
      O => \resp_byte[5]_i_2_n_0\
    );
\resp_byte[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E55"
    )
        port map (
      I0 => cmd_resp_pos(2),
      I1 => \resp_byte[5]_i_3\,
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(0),
      O => \ocr_high_byte_reg[29]\
    );
\resp_byte[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55454545"
    )
        port map (
      I0 => \resp_byte[6]_i_5_n_0\,
      I1 => \resp_byte_reg[6]_1\,
      I2 => \^q\(0),
      I3 => cmd_resp_pos(2),
      I4 => \resp_byte[7]_i_3_0\(3),
      I5 => \resp_byte[6]_i_7_n_0\,
      O => \resp_byte[6]_i_3_n_0\
    );
\resp_byte[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAFFABF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \resp_byte[6]_i_3_0\,
      I2 => cmd_resp_pos(0),
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(2),
      I5 => \^q\(0),
      O => \resp_byte[6]_i_5_n_0\
    );
\resp_byte[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => cmd_arg(6),
      I1 => \^q\(1),
      I2 => cmd_resp_pos(0),
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(2),
      O => \resp_byte[6]_i_7_n_0\
    );
\resp_byte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \resp_byte[7]_i_6_n_0\,
      I1 => cmd_resp_pos(2),
      I2 => cmd_resp_pos(1),
      I3 => cmd_resp_pos(0),
      I4 => \^q\(1),
      I5 => cmd_arg(7),
      O => \resp_byte[7]_i_3_n_0\
    );
\resp_byte[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cmd_resp_pos(4),
      I1 => cmd_resp_pos(2),
      I2 => cmd_resp_pos(0),
      I3 => cmd_resp_pos(1),
      I4 => cmd_resp_pos(3),
      O => \state_reg[4]\
    );
\resp_byte[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5151515151010101"
    )
        port map (
      I0 => \^q\(1),
      I1 => \resp_byte[7]_i_7_n_0\,
      I2 => \^q\(0),
      I3 => cmd_resp_pos(2),
      I4 => \resp_byte[7]_i_3_0\(4),
      I5 => \resp_byte[7]_i_3_1\,
      O => \resp_byte[7]_i_6_n_0\
    );
\resp_byte[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F037"
    )
        port map (
      I0 => initialization_done,
      I1 => cmd_resp_pos(0),
      I2 => cmd_resp_pos(2),
      I3 => cmd_resp_pos(1),
      O => \resp_byte[7]_i_7_n_0\
    );
\resp_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte[0]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(0),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte_reg[1]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(1),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte_reg[1]_0\,
      I1 => \resp_byte[1]_i_3_n_0\,
      O => \resp_byte_reg[1]_i_1_n_0\,
      S => resp_cur(2)
    );
\resp_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte[2]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(2),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte_reg[3]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(3),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte_reg[3]_0\,
      I1 => \resp_byte[3]_i_3_n_0\,
      O => \resp_byte_reg[3]_i_1_n_0\,
      S => resp_cur(2)
    );
\resp_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte[4]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(4),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte[5]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(5),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte_reg[6]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(6),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte_reg[6]_0\,
      I1 => \resp_byte[6]_i_3_n_0\,
      O => \resp_byte_reg[6]_i_1_n_0\,
      S => resp_cur(2)
    );
\resp_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resetn_0,
      D => \resp_byte_reg[7]_i_1_n_0\,
      Q => \resp_byte_reg[7]_0\(7),
      R => ram_read_en_reg_1(0)
    );
\resp_byte_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte_reg[7]_1\,
      I1 => \resp_byte[7]_i_3_n_0\,
      O => \resp_byte_reg[7]_i_1_n_0\,
      S => resp_cur(2)
    );
\resp_cur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000100"
    )
        port map (
      I0 => cmd_index(2),
      I1 => cmd_index(5),
      I2 => cmd_index(4),
      I3 => cmd_index(1),
      I4 => cmd_index(0),
      I5 => cmd_index(3),
      O => \^d\(0)
    );
\resp_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_cur_reg[2]_0\(0),
      Q => \^q\(0),
      R => ram_read_en_reg_1(0)
    );
\resp_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(0),
      Q => \^q\(1),
      R => ram_read_en_reg_1(0)
    );
\resp_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_cur_reg[2]_0\(1),
      Q => resp_cur(2),
      R => ram_read_en_reg_1(0)
    );
\resp_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_len_reg[4]_1\(0),
      Q => \resp_len_reg[4]_0\(0),
      R => ram_read_en_reg_1(0)
    );
\resp_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_len_reg[4]_1\(1),
      Q => \resp_len_reg[4]_0\(1),
      R => ram_read_en_reg_1(0)
    );
\resp_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_len_reg[4]_1\(2),
      Q => \resp_len_reg[4]_0\(2),
      R => ram_read_en_reg_1(0)
    );
\resp_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \resp_len_reg[4]_1\(3),
      Q => \resp_len_reg[4]_0\(3),
      R => ram_read_en_reg_1(0)
    );
resp_no_crc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => resp_no_crc_next,
      Q => resp_no_crc,
      R => ram_read_en_reg_1(0)
    );
\resp_type_out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cmd_index(0),
      I1 => cmd_index(3),
      O => \cmd_index_reg[0]\
    );
\resp_type_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \resp_type_out_reg[1]_0\,
      Q => \^sent_r1\,
      R => '0'
    );
\resp_type_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \resp_type_out_reg[5]_0\,
      Q => sent_r6,
      R => '0'
    );
\save_erase_vars[0].erase_vars[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_index(4),
      I1 => cmd_index(2),
      O => \cmd_index_reg[4]\
    );
send_resp_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => send_resp_o_reg_0,
      Q => resp_start,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_set_dat3_pullup is
  port (
    sd_dat3_pullup_off : out STD_LOGIC;
    \cmd_index_reg[1]\ : out STD_LOGIC;
    sd_dat3_pullup_off_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sd_dat3_pullup_off_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    cmd_index : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_set_dat3_pullup : entity is "set_dat3_pullup";
end block_design_sd_card_0_set_dat3_pullup;

architecture STRUCTURE of block_design_sd_card_0_set_dat3_pullup is
begin
sd_dat3_pullup_off_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => cmd_index(1),
      I1 => cmd_index(2),
      I2 => cmd_index(0),
      I3 => cmd_index(3),
      O => \cmd_index_reg[1]\
    );
sd_dat3_pullup_off_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sd_dat3_pullup_off_reg_1,
      Q => sd_dat3_pullup_off,
      R => sd_dat3_pullup_off_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_cmd_interface is
  port (
    got_new_cmd : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_crc_err : out STD_LOGIC;
    sd_cmd_o_sys : out STD_LOGIC;
    sd_cmd_t_sys : out STD_LOGIC;
    cmd_resp_pos : out STD_LOGIC_VECTOR ( 4 downto 0 );
    cmd_index : out STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_arg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    new_sd_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_resp_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    resp_no_crc : in STD_LOGIC;
    cmd_resp_len : in STD_LOGIC_VECTOR ( 3 downto 0 );
    resp_none : in STD_LOGIC;
    resp_start : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_cmd_interface : entity is "cmd_interface";
end block_design_sd_card_0_cmd_interface;

architecture STRUCTURE of block_design_sd_card_0_cmd_interface is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buf_read_reg_n_0_[0]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[10]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[11]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[12]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[13]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[14]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[15]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[16]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[17]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[18]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[19]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[1]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[20]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[21]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[22]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[23]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[24]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[25]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[26]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[27]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[28]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[29]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[2]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[30]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[31]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[32]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[33]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[34]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[35]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[36]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[37]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[38]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[3]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[4]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[5]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[6]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[7]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[8]\ : STD_LOGIC;
  signal \buf_read_reg_n_0_[9]\ : STD_LOGIC;
  signal buf_write : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \buf_write[0]_i_1_n_0\ : STD_LOGIC;
  signal cmd_crc_err_next : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter[7]_i_6_n_0\ : STD_LOGIC;
  signal \counter[7]_i_7_n_0\ : STD_LOGIC;
  signal got_new_cmd_i_3_n_0 : STD_LOGIC;
  signal is_writing0 : STD_LOGIC;
  signal line_crc_n_0 : STD_LOGIC;
  signal line_crc_n_1 : STD_LOGIC;
  signal line_crc_n_10 : STD_LOGIC;
  signal line_crc_n_11 : STD_LOGIC;
  signal line_crc_n_12 : STD_LOGIC;
  signal line_crc_n_13 : STD_LOGIC;
  signal line_crc_n_14 : STD_LOGIC;
  signal line_crc_n_15 : STD_LOGIC;
  signal line_crc_n_16 : STD_LOGIC;
  signal line_crc_n_17 : STD_LOGIC;
  signal line_crc_n_18 : STD_LOGIC;
  signal line_crc_n_19 : STD_LOGIC;
  signal line_crc_n_2 : STD_LOGIC;
  signal line_crc_n_20 : STD_LOGIC;
  signal line_crc_n_23 : STD_LOGIC;
  signal line_crc_n_24 : STD_LOGIC;
  signal line_crc_n_25 : STD_LOGIC;
  signal line_crc_n_26 : STD_LOGIC;
  signal line_crc_n_27 : STD_LOGIC;
  signal line_crc_n_3 : STD_LOGIC;
  signal line_crc_n_5 : STD_LOGIC;
  signal line_crc_n_6 : STD_LOGIC;
  signal line_crc_n_7 : STD_LOGIC;
  signal line_crc_n_8 : STD_LOGIC;
  signal line_crc_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal p_2_in3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal sd_cmd_o_sys0 : STD_LOGIC;
  signal sd_cmd_o_sys_i_2_n_0 : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal update_read : STD_LOGIC;
  signal write_stb_received_r : STD_LOGIC;
  signal write_stb_received_r_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd_resp_pos[0]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cmd_resp_pos[2]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cmd_resp_pos[3]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[7]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[7]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[7]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of is_writing_inv_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[3]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[5]_i_1\ : label is "soft_lutpair18";
begin
  SS(0) <= \^ss\(0);
\buf_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => Q(0),
      Q => \buf_read_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\buf_read_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[9]\,
      Q => \buf_read_reg_n_0_[10]\,
      R => \^ss\(0)
    );
\buf_read_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[10]\,
      Q => \buf_read_reg_n_0_[11]\,
      R => \^ss\(0)
    );
\buf_read_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[11]\,
      Q => \buf_read_reg_n_0_[12]\,
      R => \^ss\(0)
    );
\buf_read_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[12]\,
      Q => \buf_read_reg_n_0_[13]\,
      R => \^ss\(0)
    );
\buf_read_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[13]\,
      Q => \buf_read_reg_n_0_[14]\,
      R => \^ss\(0)
    );
\buf_read_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[14]\,
      Q => \buf_read_reg_n_0_[15]\,
      R => \^ss\(0)
    );
\buf_read_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[15]\,
      Q => \buf_read_reg_n_0_[16]\,
      R => \^ss\(0)
    );
\buf_read_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[16]\,
      Q => \buf_read_reg_n_0_[17]\,
      R => \^ss\(0)
    );
\buf_read_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[17]\,
      Q => \buf_read_reg_n_0_[18]\,
      R => \^ss\(0)
    );
\buf_read_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[18]\,
      Q => \buf_read_reg_n_0_[19]\,
      R => \^ss\(0)
    );
\buf_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[0]\,
      Q => \buf_read_reg_n_0_[1]\,
      R => \^ss\(0)
    );
\buf_read_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[19]\,
      Q => \buf_read_reg_n_0_[20]\,
      R => \^ss\(0)
    );
\buf_read_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[20]\,
      Q => \buf_read_reg_n_0_[21]\,
      R => \^ss\(0)
    );
\buf_read_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[21]\,
      Q => \buf_read_reg_n_0_[22]\,
      R => \^ss\(0)
    );
\buf_read_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[22]\,
      Q => \buf_read_reg_n_0_[23]\,
      R => \^ss\(0)
    );
\buf_read_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[23]\,
      Q => \buf_read_reg_n_0_[24]\,
      R => \^ss\(0)
    );
\buf_read_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[24]\,
      Q => \buf_read_reg_n_0_[25]\,
      R => \^ss\(0)
    );
\buf_read_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[25]\,
      Q => \buf_read_reg_n_0_[26]\,
      R => \^ss\(0)
    );
\buf_read_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[26]\,
      Q => \buf_read_reg_n_0_[27]\,
      R => \^ss\(0)
    );
\buf_read_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[27]\,
      Q => \buf_read_reg_n_0_[28]\,
      R => \^ss\(0)
    );
\buf_read_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[28]\,
      Q => \buf_read_reg_n_0_[29]\,
      R => \^ss\(0)
    );
\buf_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[1]\,
      Q => \buf_read_reg_n_0_[2]\,
      R => \^ss\(0)
    );
\buf_read_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[29]\,
      Q => \buf_read_reg_n_0_[30]\,
      R => \^ss\(0)
    );
\buf_read_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[30]\,
      Q => \buf_read_reg_n_0_[31]\,
      R => \^ss\(0)
    );
\buf_read_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[31]\,
      Q => \buf_read_reg_n_0_[32]\,
      R => \^ss\(0)
    );
\buf_read_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[32]\,
      Q => \buf_read_reg_n_0_[33]\,
      R => \^ss\(0)
    );
\buf_read_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[33]\,
      Q => \buf_read_reg_n_0_[34]\,
      R => \^ss\(0)
    );
\buf_read_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[34]\,
      Q => \buf_read_reg_n_0_[35]\,
      R => \^ss\(0)
    );
\buf_read_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[35]\,
      Q => \buf_read_reg_n_0_[36]\,
      R => \^ss\(0)
    );
\buf_read_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[36]\,
      Q => \buf_read_reg_n_0_[37]\,
      R => \^ss\(0)
    );
\buf_read_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[37]\,
      Q => \buf_read_reg_n_0_[38]\,
      R => \^ss\(0)
    );
\buf_read_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[38]\,
      Q => p_1_in(0),
      R => \^ss\(0)
    );
\buf_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[2]\,
      Q => \buf_read_reg_n_0_[3]\,
      R => \^ss\(0)
    );
\buf_read_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(0),
      Q => p_1_in(1),
      R => \^ss\(0)
    );
\buf_read_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(1),
      Q => p_1_in(2),
      R => \^ss\(0)
    );
\buf_read_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(2),
      Q => p_1_in(3),
      R => \^ss\(0)
    );
\buf_read_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(3),
      Q => p_1_in(4),
      R => \^ss\(0)
    );
\buf_read_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(4),
      Q => p_1_in(5),
      R => \^ss\(0)
    );
\buf_read_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => p_1_in(5),
      Q => p_0_in,
      R => \^ss\(0)
    );
\buf_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[3]\,
      Q => \buf_read_reg_n_0_[4]\,
      R => \^ss\(0)
    );
\buf_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[4]\,
      Q => \buf_read_reg_n_0_[5]\,
      R => \^ss\(0)
    );
\buf_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[5]\,
      Q => \buf_read_reg_n_0_[6]\,
      R => \^ss\(0)
    );
\buf_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[6]\,
      Q => \buf_read_reg_n_0_[7]\,
      R => \^ss\(0)
    );
\buf_read_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[7]\,
      Q => \buf_read_reg_n_0_[8]\,
      R => \^ss\(0)
    );
\buf_read_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_read_reg_n_0_[8]\,
      Q => \buf_read_reg_n_0_[9]\,
      R => \^ss\(0)
    );
\buf_write[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => line_crc_n_6,
      I1 => line_crc_n_13,
      I2 => cmd_resp_byte(0),
      O => \buf_write[0]_i_1_n_0\
    );
\buf_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \buf_write[0]_i_1_n_0\,
      Q => buf_write(0),
      R => \^ss\(0)
    );
\buf_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_12,
      Q => buf_write(1),
      R => \^ss\(0)
    );
\buf_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_11,
      Q => buf_write(2),
      R => \^ss\(0)
    );
\buf_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_10,
      Q => buf_write(3),
      R => \^ss\(0)
    );
\buf_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_9,
      Q => buf_write(4),
      R => \^ss\(0)
    );
\buf_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_8,
      Q => buf_write(5),
      R => \^ss\(0)
    );
\buf_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_7,
      Q => buf_write(6),
      R => \^ss\(0)
    );
\cmd_arg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[7]\,
      Q => cmd_arg(0),
      R => \^ss\(0)
    );
\cmd_arg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[17]\,
      Q => cmd_arg(10),
      R => \^ss\(0)
    );
\cmd_arg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[18]\,
      Q => cmd_arg(11),
      R => \^ss\(0)
    );
\cmd_arg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[19]\,
      Q => cmd_arg(12),
      R => \^ss\(0)
    );
\cmd_arg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[20]\,
      Q => cmd_arg(13),
      R => \^ss\(0)
    );
\cmd_arg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[21]\,
      Q => cmd_arg(14),
      R => \^ss\(0)
    );
\cmd_arg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[22]\,
      Q => cmd_arg(15),
      R => \^ss\(0)
    );
\cmd_arg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[23]\,
      Q => cmd_arg(16),
      R => \^ss\(0)
    );
\cmd_arg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[24]\,
      Q => cmd_arg(17),
      R => \^ss\(0)
    );
\cmd_arg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[25]\,
      Q => cmd_arg(18),
      R => \^ss\(0)
    );
\cmd_arg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[26]\,
      Q => cmd_arg(19),
      R => \^ss\(0)
    );
\cmd_arg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[8]\,
      Q => cmd_arg(1),
      R => \^ss\(0)
    );
\cmd_arg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[27]\,
      Q => cmd_arg(20),
      R => \^ss\(0)
    );
\cmd_arg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[28]\,
      Q => cmd_arg(21),
      R => \^ss\(0)
    );
\cmd_arg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[29]\,
      Q => cmd_arg(22),
      R => \^ss\(0)
    );
\cmd_arg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[30]\,
      Q => cmd_arg(23),
      R => \^ss\(0)
    );
\cmd_arg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[31]\,
      Q => cmd_arg(24),
      R => \^ss\(0)
    );
\cmd_arg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[32]\,
      Q => cmd_arg(25),
      R => \^ss\(0)
    );
\cmd_arg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[33]\,
      Q => cmd_arg(26),
      R => \^ss\(0)
    );
\cmd_arg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[34]\,
      Q => cmd_arg(27),
      R => \^ss\(0)
    );
\cmd_arg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[35]\,
      Q => cmd_arg(28),
      R => \^ss\(0)
    );
\cmd_arg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[36]\,
      Q => cmd_arg(29),
      R => \^ss\(0)
    );
\cmd_arg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[9]\,
      Q => cmd_arg(2),
      R => \^ss\(0)
    );
\cmd_arg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[37]\,
      Q => cmd_arg(30),
      R => \^ss\(0)
    );
\cmd_arg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[38]\,
      Q => cmd_arg(31),
      R => \^ss\(0)
    );
\cmd_arg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[10]\,
      Q => cmd_arg(3),
      R => \^ss\(0)
    );
\cmd_arg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[11]\,
      Q => cmd_arg(4),
      R => \^ss\(0)
    );
\cmd_arg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[12]\,
      Q => cmd_arg(5),
      R => \^ss\(0)
    );
\cmd_arg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[13]\,
      Q => cmd_arg(6),
      R => \^ss\(0)
    );
\cmd_arg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[14]\,
      Q => cmd_arg(7),
      R => \^ss\(0)
    );
\cmd_arg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[15]\,
      Q => cmd_arg(8),
      R => \^ss\(0)
    );
\cmd_arg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => \buf_read_reg_n_0_[16]\,
      Q => cmd_arg(9),
      R => \^ss\(0)
    );
cmd_crc_err_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => cmd_crc_err_next,
      Q => cmd_crc_err,
      R => \^ss\(0)
    );
\cmd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(0),
      Q => cmd_index(0),
      R => \^ss\(0)
    );
\cmd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(1),
      Q => cmd_index(1),
      R => \^ss\(0)
    );
\cmd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(2),
      Q => cmd_index(2),
      R => \^ss\(0)
    );
\cmd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(3),
      Q => cmd_index(3),
      R => \^ss\(0)
    );
\cmd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(4),
      Q => cmd_index(4),
      R => \^ss\(0)
    );
\cmd_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => update_read,
      D => p_1_in(5),
      Q => cmd_index(5),
      R => \^ss\(0)
    );
\cmd_resp_pos[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in3_in,
      I1 => counter(3),
      O => cmd_resp_pos(0)
    );
\cmd_resp_pos[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => p_2_in3_in,
      O => cmd_resp_pos(1)
    );
\cmd_resp_pos[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => p_2_in3_in,
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(5),
      O => cmd_resp_pos(2)
    );
\cmd_resp_pos[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => p_2_in3_in,
      I1 => counter(4),
      I2 => counter(3),
      I3 => counter(5),
      I4 => counter(6),
      O => cmd_resp_pos(3)
    );
\cmd_resp_pos[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => p_2_in3_in,
      I1 => counter(5),
      I2 => counter(3),
      I3 => counter(4),
      I4 => counter(6),
      I5 => counter(7),
      O => cmd_resp_pos(4)
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      O => \counter[2]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => counter(3),
      I3 => counter(1),
      I4 => counter(0),
      O => \counter[4]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => counter(6),
      I1 => line_crc_n_20,
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(2),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \state[3]_i_1_n_0\,
      O => \counter[7]_i_5_n_0\
    );
\counter[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA11"
    )
        port map (
      I0 => line_crc_n_0,
      I1 => line_crc_n_15,
      I2 => line_crc_n_14,
      I3 => p_2_in3_in,
      O => \counter[7]_i_6_n_0\
    );
\counter[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F085"
    )
        port map (
      I0 => line_crc_n_27,
      I1 => line_crc_n_14,
      I2 => p_1_in2_in,
      I3 => line_crc_n_0,
      O => \counter[7]_i_7_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[0]_i_1__0_n_0\,
      Q => counter(0),
      R => line_crc_n_26
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => line_crc_n_26
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => line_crc_n_26
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_19,
      Q => counter(3),
      R => line_crc_n_26
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4),
      R => line_crc_n_26
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_18,
      Q => counter(5),
      R => line_crc_n_26
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6),
      R => line_crc_n_26
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => line_crc_n_17,
      Q => counter(7),
      R => line_crc_n_26
    );
got_new_cmd_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^ss\(0)
    );
got_new_cmd_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => counter(5),
      I1 => new_sd_clk,
      I2 => counter(1),
      I3 => counter(2),
      I4 => counter(3),
      O => got_new_cmd_i_3_n_0
    );
got_new_cmd_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => update_read,
      Q => got_new_cmd,
      R => \^ss\(0)
    );
is_writing_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state[3]_i_1_n_0\,
      I1 => \state[5]_i_1_n_0\,
      I2 => line_crc_n_5,
      O => is_writing0
    );
is_writing_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => is_writing0,
      Q => sd_cmd_t_sys,
      S => \^ss\(0)
    );
line_crc: entity work.block_design_sd_card_0_line_crc
     port map (
      D(2) => line_crc_n_1,
      D(1) => line_crc_n_2,
      D(0) => line_crc_n_3,
      E(0) => update_read,
      Q(5) => p_1_in2_in,
      Q(4) => p_2_in3_in,
      Q(3) => p_0_in5_in,
      Q(2) => p_1_in6_in,
      Q(1) => p_4_in,
      Q(0) => \state_reg_n_0_[0]\,
      SR(0) => line_crc_n_26,
      clk => clk,
      \cmd_arg_reg[0]\ => got_new_cmd_i_3_n_0,
      \cmd_arg_reg[0]_0\(0) => p_0_in,
      cmd_crc_err_next => cmd_crc_err_next,
      cmd_resp_byte(6 downto 0) => cmd_resp_byte(7 downto 1),
      cmd_resp_len(3 downto 0) => cmd_resp_len(3 downto 0),
      \counter_reg[2]\ => line_crc_n_13,
      \counter_reg[4]\ => line_crc_n_20,
      \counter_reg[6]\ => line_crc_n_25,
      \counter_reg[7]\(2) => line_crc_n_17,
      \counter_reg[7]\(1) => line_crc_n_18,
      \counter_reg[7]\(0) => line_crc_n_19,
      \counter_reg[7]_0\(7 downto 0) => counter(7 downto 0),
      \counter_reg[7]_1\ => \counter[7]_i_5_n_0\,
      \counter_reg[7]_2\ => \counter[7]_i_6_n_0\,
      \counter_reg[7]_3\ => \counter[7]_i_7_n_0\,
      \crc_reg[0]_0\(6 downto 0) => buf_write(6 downto 0),
      \crc_reg[5]_0\(5) => line_crc_n_7,
      \crc_reg[5]_0\(4) => line_crc_n_8,
      \crc_reg[5]_0\(3) => line_crc_n_9,
      \crc_reg[5]_0\(2) => line_crc_n_10,
      \crc_reg[5]_0\(1) => line_crc_n_11,
      \crc_reg[5]_0\(0) => line_crc_n_12,
      new_sd_clk => new_sd_clk,
      resetn => resetn,
      resp_no_crc => resp_no_crc,
      resp_no_crc_reg => line_crc_n_16,
      resp_none => resp_none,
      resp_start => resp_start,
      sd_cmd_o_sys0 => sd_cmd_o_sys0,
      sd_cmd_o_sys_reg => sd_cmd_o_sys_i_2_n_0,
      sd_cmd_o_sys_reg_0(0) => \state[5]_i_1_n_0\,
      \state_reg[0]\ => line_crc_n_0,
      \state_reg[0]_0\ => \state[0]_i_5_n_0\,
      \state_reg[0]_1\ => \state[0]_i_3_n_0\,
      \state_reg[1]\ => line_crc_n_23,
      \state_reg[1]_0\(0) => Q(0),
      \state_reg[2]\ => line_crc_n_14,
      \state_reg[3]\ => line_crc_n_24,
      \state_reg[4]\ => line_crc_n_5,
      \state_reg[4]_0\ => line_crc_n_15,
      \state_reg[5]\ => line_crc_n_6,
      \state_reg[5]_0\ => line_crc_n_27,
      write_stb_received_r => write_stb_received_r
    );
sd_cmd_o_sys_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => line_crc_n_16,
      I1 => p_4_in,
      I2 => p_1_in6_in,
      I3 => \state_reg_n_0_[0]\,
      O => sd_cmd_o_sys_i_2_n_0
    );
sd_cmd_o_sys_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => sd_cmd_o_sys0,
      Q => sd_cmd_o_sys,
      S => \^ss\(0)
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444544"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => line_crc_n_23,
      I2 => p_4_in,
      I3 => p_1_in6_in,
      I4 => resp_none,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFAB0FABFFAB00"
    )
        port map (
      I0 => line_crc_n_25,
      I1 => \state[0]_i_6_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => p_0_in5_in,
      I4 => p_2_in3_in,
      I5 => p_1_in2_in,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111000"
    )
        port map (
      I0 => resp_start,
      I1 => write_stb_received_r,
      I2 => new_sd_clk,
      I3 => counter(5),
      I4 => resp_none,
      O => \state[0]_i_6_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => p_1_in6_in,
      I3 => p_4_in,
      I4 => line_crc_n_24,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFDDDD00005500"
    )
        port map (
      I0 => \state[3]_i_4_n_0\,
      I1 => line_crc_n_23,
      I2 => Q(0),
      I3 => new_sd_clk,
      I4 => \state_reg_n_0_[0]\,
      I5 => p_0_in5_in,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => p_4_in,
      I1 => p_1_in6_in,
      I2 => resp_none,
      O => \state[3]_i_4_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_crc_n_5,
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => line_crc_n_0,
      I1 => p_1_in2_in,
      I2 => line_crc_n_14,
      I3 => line_crc_n_27,
      O => \state[5]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_crc_n_3,
      Q => \state_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_crc_n_2,
      Q => p_4_in,
      R => \^ss\(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_crc_n_1,
      Q => p_1_in6_in,
      R => \^ss\(0)
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[3]_i_1_n_0\,
      Q => p_0_in5_in,
      R => \^ss\(0)
    );
\state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[4]_i_1_n_0\,
      Q => p_2_in3_in,
      R => \^ss\(0)
    );
\state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[5]_i_1_n_0\,
      Q => p_1_in2_in,
      R => \^ss\(0)
    );
write_stb_received_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0E000"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => p_0_in5_in,
      I2 => resetn,
      I3 => resp_start,
      I4 => write_stb_received_r,
      O => write_stb_received_r_i_1_n_0
    );
write_stb_received_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => write_stb_received_r_i_1_n_0,
      Q => write_stb_received_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_dat_interface is
  port (
    new_sd_clk : out STD_LOGIC;
    out_tlast : out STD_LOGIC;
    cc_error_out : out STD_LOGIC;
    dat_done_new : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \block_count_done_reg[0]_0\ : out STD_LOGIC;
    dat_block_count_done : out STD_LOGIC_VECTOR ( 30 downto 0 );
    out_tvalid_reg_0 : out STD_LOGIC;
    dat_block_done : out STD_LOGIC;
    \sd_dat_o_sys_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_tready : out STD_LOGIC;
    out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dat_error_code : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dat_done : out STD_LOGIC;
    clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_resetn : in STD_LOGIC;
    in_tvalid : in STD_LOGIC;
    dat_width_4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_out_almostfull : in STD_LOGIC;
    good_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    busy_in : in STD_LOGIC;
    dat_read_mode : in STD_LOGIC;
    dat_block_limit : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_tready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    in_tlast : in STD_LOGIC;
    dat_block_size_exp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dat_block_type : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_dat_interface : entity is "dat_interface";
end block_design_sd_card_0_dat_interface;

architecture STRUCTURE of block_design_sd_card_0_dat_interface is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \block_count_done[31]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done[3]_i_2_n_0\ : STD_LOGIC;
  signal \^block_count_done_reg[0]_0\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \block_count_done_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal block_data_done : STD_LOGIC;
  signal block_done : STD_LOGIC;
  signal block_done0 : STD_LOGIC;
  signal block_done_out_i_1_n_0 : STD_LOGIC;
  signal block_size_exp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal block_size_exp_0 : STD_LOGIC;
  signal block_type : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buffer\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buffer_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cc_error_out_i_2_n_0 : STD_LOGIC;
  signal cc_error_out_i_3_n_0 : STD_LOGIC;
  signal cc_error_out_i_4_n_0 : STD_LOGIC;
  signal cc_error_out_i_5_n_0 : STD_LOGIC;
  signal cc_error_out_i_6_n_0 : STD_LOGIC;
  signal cc_error_out_i_7_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal counter0 : STD_LOGIC;
  signal counter1 : STD_LOGIC;
  signal counter_inc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_inc__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \counter_passed[64]_i_2_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_3_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_4_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_5_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_6_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_7_n_0\ : STD_LOGIC;
  signal \counter_passed[64]_i_8_n_0\ : STD_LOGIC;
  signal \counter_passed_reg[64]__0\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \^dat_block_count_done\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^dat_done\ : STD_LOGIC;
  signal \^dat_error_code\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_next : STD_LOGIC;
  signal \error_code[0]_i_1_n_0\ : STD_LOGIC;
  signal \error_code[0]_i_3_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_1_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_2_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_1_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_3_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_4_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_5_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_6_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_7_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_8_n_0\ : STD_LOGIC;
  signal \error_code[2]_i_9_n_0\ : STD_LOGIC;
  signal error_code_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal in_tlast_saved : STD_LOGIC;
  signal in_tlast_saved_i_1_n_0 : STD_LOGIC;
  signal in_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal in_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal in_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal in_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal in_tready_INST_0_i_6_n_0 : STD_LOGIC;
  signal \line_crc[0].line_crc_n_1\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_1\ : STD_LOGIC;
  signal \line_crc[2].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[2].line_crc_n_1\ : STD_LOGIC;
  signal \line_crc[2].line_crc_n_2\ : STD_LOGIC;
  signal \line_crc[3].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[3].line_crc_n_2\ : STD_LOGIC;
  signal \^new_sd_clk\ : STD_LOGIC;
  signal no_more_blocks : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_n_1\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_n_2\ : STD_LOGIC;
  signal \no_more_blocks0_carry__0_n_3\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_n_1\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_n_2\ : STD_LOGIC;
  signal \no_more_blocks0_carry__1_n_3\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_n_0\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_n_1\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_n_2\ : STD_LOGIC;
  signal \no_more_blocks0_carry__2_n_3\ : STD_LOGIC;
  signal no_more_blocks0_carry_i_1_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_2_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_3_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_4_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_5_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_6_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_7_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_i_8_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_n_0 : STD_LOGIC;
  signal no_more_blocks0_carry_n_1 : STD_LOGIC;
  signal no_more_blocks0_carry_n_2 : STD_LOGIC;
  signal no_more_blocks0_carry_n_3 : STD_LOGIC;
  signal no_more_blocks_i_1_n_0 : STD_LOGIC;
  signal out_tdata0 : STD_LOGIC;
  signal \out_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal out_tlast_i_10_n_0 : STD_LOGIC;
  signal out_tlast_i_11_n_0 : STD_LOGIC;
  signal out_tlast_i_12_n_0 : STD_LOGIC;
  signal out_tlast_i_3_n_0 : STD_LOGIC;
  signal out_tlast_i_4_n_0 : STD_LOGIC;
  signal out_tlast_i_5_n_0 : STD_LOGIC;
  signal out_tlast_i_6_n_0 : STD_LOGIC;
  signal out_tlast_i_7_n_0 : STD_LOGIC;
  signal out_tlast_i_8_n_0 : STD_LOGIC;
  signal out_tlast_i_9_n_0 : STD_LOGIC;
  signal out_tlast_reg_i_2_n_0 : STD_LOGIC;
  signal out_tvalid_i_1_n_0 : STD_LOGIC;
  signal out_tvalid_i_3_n_0 : STD_LOGIC;
  signal \^out_tvalid_reg_0\ : STD_LOGIC;
  signal read_crc_err : STD_LOGIC;
  signal read_crc_err_i_3_n_0 : STD_LOGIC;
  signal resetn_d : STD_LOGIC;
  signal \sd_dat_o_sys[0]_i_2_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[1]_i_1_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[2]_i_1_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_1_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_3_n_0\ : STD_LOGIC;
  signal sd_dat_o_sys_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sd_dat_o_sys_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_t_sys[3]_i_2_n_0\ : STD_LOGIC;
  signal sd_dat_t_sys_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal set_cc_error : STD_LOGIC;
  signal set_out_tvalid : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_count_done_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_counter_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_no_more_blocks0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_13\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_8\ : label is "soft_lutpair35";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "state_read_busy:1000,state_write_data:1100,state_write_start_bit:1011,state_write_delay:1010,state_idle:0000,state_read_resp:0110,state_read_end_bit:0101,state_read_awaiting_data:0001,state_write_done:1111,state_read_crc:0100,state_read_data:0010,state_write_end_bit:1110,state_write_crc:1101,state_read_done_busy:0111,state_read_done:0011,state_read_busy_end:1001";
  attribute SOFT_HLUTNM of block_done_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of cc_error_out_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of cc_error_out_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of cc_error_out_i_6 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of cc_error_out_i_7 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter_passed[64]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter_passed[64]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \counter_passed[64]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \error_code[0]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \error_code[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \error_code[2]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \error_code[2]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \error_code[2]_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of in_tlast_saved_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of in_tready_INST_0 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of in_tready_INST_0_i_3 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of in_tready_INST_0_i_5 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of in_tready_INST_0_i_6 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of no_more_blocks_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \out_tdata[7]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of out_tlast_i_10 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of out_tlast_i_5 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of out_tlast_i_6 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of out_tlast_i_8 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of out_tvalid_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of out_tvalid_i_3 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of read_crc_err_i_3 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sd_dat_o_sys[3]_i_3\ : label is "soft_lutpair25";
begin
  \block_count_done_reg[0]_0\ <= \^block_count_done_reg[0]_0\;
  dat_block_count_done(30 downto 0) <= \^dat_block_count_done\(30 downto 0);
  dat_done <= \^dat_done\;
  dat_error_code(2 downto 0) <= \^dat_error_code\(2 downto 0);
  new_sd_clk <= \^new_sd_clk\;
  out_tvalid_reg_0 <= \^out_tvalid_reg_0\;
  \sd_dat_o_sys_reg[3]_0\(3 downto 0) <= \^sd_dat_o_sys_reg[3]_0\(3 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BAAA"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => \FSM_sequential_state[0]_i_4_n_0\,
      O => \state_next__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454745"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => dat_read_mode,
      I4 => state(2),
      I5 => state(3),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \^out_tvalid_reg_0\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => dat_width_4,
      I3 => counter(1),
      I4 => counter(2),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7C004000"
    )
        port map (
      I0 => no_more_blocks,
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFB000000"
    )
        port map (
      I0 => state(0),
      I1 => in_tlast_saved,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => state(2),
      I4 => state(3),
      I5 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \state_next__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F1F0F"
    )
        port map (
      I0 => in_tready_INST_0_i_6_n_0,
      I1 => state(2),
      I2 => block_data_done,
      I3 => \^new_sd_clk\,
      I4 => in_tvalid,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFABBBA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_state[1]_i_5_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111110100001101"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => dat_read_mode,
      I3 => state(0),
      I4 => state(1),
      I5 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002FFFF"
    )
        port map (
      I0 => state(1),
      I1 => no_more_blocks,
      I2 => \^out_tvalid_reg_0\,
      I3 => read_crc_err,
      I4 => state(2),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD1DD1D1D111D1D1"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => no_more_blocks,
      I4 => state(1),
      I5 => state(0),
      O => \state_next__0\(2)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010000FF00FFFF"
    )
        port map (
      I0 => read_crc_err,
      I1 => \^out_tvalid_reg_0\,
      I2 => no_more_blocks,
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => state(1),
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FFF4FFF4"
    )
        port map (
      I0 => cc_error_out_i_4_n_0,
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      I2 => \FSM_sequential_state[3]_i_4_n_0\,
      I3 => \FSM_sequential_state[3]_i_5_n_0\,
      I4 => \FSM_sequential_state[3]_i_6_n_0\,
      I5 => \FSM_sequential_state[3]_i_7_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440040000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => in_tvalid,
      I3 => \^new_sd_clk\,
      I4 => \counter_passed_reg[64]__0\,
      I5 => state(0),
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAEAAAAAEAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_12_n_0\,
      I1 => \^new_sd_clk\,
      I2 => cc_error_out_i_3_n_0,
      I3 => state(0),
      I4 => state(1),
      I5 => counter_inc(4),
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444044004040400"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_13_n_0\,
      I1 => \^new_sd_clk\,
      I2 => state(1),
      I3 => state(0),
      I4 => counter_inc(4),
      I5 => counter(2),
      O => \FSM_sequential_state[3]_i_12_n_0\
    );
\FSM_sequential_state[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \FSM_sequential_state[3]_i_13_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAE0EAE0EAEAEAEF"
    )
        port map (
      I0 => state(3),
      I1 => \FSM_sequential_state[3]_i_8_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => dat_read_mode,
      I5 => state(0),
      O => \state_next__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF020000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_9_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => \FSM_sequential_state[3]_i_10_n_0\,
      I4 => state(3),
      I5 => \FSM_sequential_state[3]_i_11_n_0\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000010FF"
    )
        port map (
      I0 => state(1),
      I1 => Q(0),
      I2 => \^new_sd_clk\,
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => state(1),
      I1 => \^new_sd_clk\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^new_sd_clk\,
      I1 => block_data_done,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => read_crc_err,
      I1 => \^out_tvalid_reg_0\,
      I2 => no_more_blocks,
      I3 => state(1),
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B008800"
    )
        port map (
      I0 => counter(1),
      I1 => state(0),
      I2 => fifo_out_almostfull,
      I3 => \^new_sd_clk\,
      I4 => \counter_passed_reg[64]__0\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state_next__0\(0),
      Q => state(0),
      R => counter1
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state_next__0\(1),
      Q => state(1),
      R => counter1
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state_next__0\(2),
      Q => state(2),
      R => counter1
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state_next__0\(3),
      Q => state(3),
      R => counter1
    );
\block_count_done[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => resetn_d,
      I1 => dat_resetn,
      I2 => resetn,
      O => \block_count_done[31]_i_1_n_0\
    );
\block_count_done[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^block_count_done_reg[0]_0\,
      O => \block_count_done[3]_i_2_n_0\
    );
\block_count_done_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[3]_i_1_n_7\,
      Q => \^block_count_done_reg[0]_0\,
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[11]_i_1_n_5\,
      Q => \^dat_block_count_done\(9),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[11]_i_1_n_4\,
      Q => \^dat_block_count_done\(10),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[7]_i_1_n_0\,
      CO(3) => \block_count_done_reg[11]_i_1_n_0\,
      CO(2) => \block_count_done_reg[11]_i_1_n_1\,
      CO(1) => \block_count_done_reg[11]_i_1_n_2\,
      CO(0) => \block_count_done_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[11]_i_1_n_4\,
      O(2) => \block_count_done_reg[11]_i_1_n_5\,
      O(1) => \block_count_done_reg[11]_i_1_n_6\,
      O(0) => \block_count_done_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(10 downto 7)
    );
\block_count_done_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[15]_i_1_n_7\,
      Q => \^dat_block_count_done\(11),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[15]_i_1_n_6\,
      Q => \^dat_block_count_done\(12),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[15]_i_1_n_5\,
      Q => \^dat_block_count_done\(13),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[15]_i_1_n_4\,
      Q => \^dat_block_count_done\(14),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[11]_i_1_n_0\,
      CO(3) => \block_count_done_reg[15]_i_1_n_0\,
      CO(2) => \block_count_done_reg[15]_i_1_n_1\,
      CO(1) => \block_count_done_reg[15]_i_1_n_2\,
      CO(0) => \block_count_done_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[15]_i_1_n_4\,
      O(2) => \block_count_done_reg[15]_i_1_n_5\,
      O(1) => \block_count_done_reg[15]_i_1_n_6\,
      O(0) => \block_count_done_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(14 downto 11)
    );
\block_count_done_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[19]_i_1_n_7\,
      Q => \^dat_block_count_done\(15),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[19]_i_1_n_6\,
      Q => \^dat_block_count_done\(16),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[19]_i_1_n_5\,
      Q => \^dat_block_count_done\(17),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[19]_i_1_n_4\,
      Q => \^dat_block_count_done\(18),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[15]_i_1_n_0\,
      CO(3) => \block_count_done_reg[19]_i_1_n_0\,
      CO(2) => \block_count_done_reg[19]_i_1_n_1\,
      CO(1) => \block_count_done_reg[19]_i_1_n_2\,
      CO(0) => \block_count_done_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[19]_i_1_n_4\,
      O(2) => \block_count_done_reg[19]_i_1_n_5\,
      O(1) => \block_count_done_reg[19]_i_1_n_6\,
      O(0) => \block_count_done_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(18 downto 15)
    );
\block_count_done_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[3]_i_1_n_6\,
      Q => \^dat_block_count_done\(0),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[23]_i_1_n_7\,
      Q => \^dat_block_count_done\(19),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[23]_i_1_n_6\,
      Q => \^dat_block_count_done\(20),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[23]_i_1_n_5\,
      Q => \^dat_block_count_done\(21),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[23]_i_1_n_4\,
      Q => \^dat_block_count_done\(22),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[19]_i_1_n_0\,
      CO(3) => \block_count_done_reg[23]_i_1_n_0\,
      CO(2) => \block_count_done_reg[23]_i_1_n_1\,
      CO(1) => \block_count_done_reg[23]_i_1_n_2\,
      CO(0) => \block_count_done_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[23]_i_1_n_4\,
      O(2) => \block_count_done_reg[23]_i_1_n_5\,
      O(1) => \block_count_done_reg[23]_i_1_n_6\,
      O(0) => \block_count_done_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(22 downto 19)
    );
\block_count_done_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[27]_i_1_n_7\,
      Q => \^dat_block_count_done\(23),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[27]_i_1_n_6\,
      Q => \^dat_block_count_done\(24),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[27]_i_1_n_5\,
      Q => \^dat_block_count_done\(25),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[27]_i_1_n_4\,
      Q => \^dat_block_count_done\(26),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[23]_i_1_n_0\,
      CO(3) => \block_count_done_reg[27]_i_1_n_0\,
      CO(2) => \block_count_done_reg[27]_i_1_n_1\,
      CO(1) => \block_count_done_reg[27]_i_1_n_2\,
      CO(0) => \block_count_done_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[27]_i_1_n_4\,
      O(2) => \block_count_done_reg[27]_i_1_n_5\,
      O(1) => \block_count_done_reg[27]_i_1_n_6\,
      O(0) => \block_count_done_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(26 downto 23)
    );
\block_count_done_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[31]_i_2_n_7\,
      Q => \^dat_block_count_done\(27),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[31]_i_2_n_6\,
      Q => \^dat_block_count_done\(28),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[3]_i_1_n_5\,
      Q => \^dat_block_count_done\(1),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[31]_i_2_n_5\,
      Q => \^dat_block_count_done\(29),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[31]_i_2_n_4\,
      Q => \^dat_block_count_done\(30),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[27]_i_1_n_0\,
      CO(3) => \NLW_block_count_done_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \block_count_done_reg[31]_i_2_n_1\,
      CO(1) => \block_count_done_reg[31]_i_2_n_2\,
      CO(0) => \block_count_done_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[31]_i_2_n_4\,
      O(2) => \block_count_done_reg[31]_i_2_n_5\,
      O(1) => \block_count_done_reg[31]_i_2_n_6\,
      O(0) => \block_count_done_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(30 downto 27)
    );
\block_count_done_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[3]_i_1_n_4\,
      Q => \^dat_block_count_done\(2),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \block_count_done_reg[3]_i_1_n_0\,
      CO(2) => \block_count_done_reg[3]_i_1_n_1\,
      CO(1) => \block_count_done_reg[3]_i_1_n_2\,
      CO(0) => \block_count_done_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \block_count_done_reg[3]_i_1_n_4\,
      O(2) => \block_count_done_reg[3]_i_1_n_5\,
      O(1) => \block_count_done_reg[3]_i_1_n_6\,
      O(0) => \block_count_done_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^dat_block_count_done\(2 downto 0),
      S(0) => \block_count_done[3]_i_2_n_0\
    );
\block_count_done_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[7]_i_1_n_7\,
      Q => \^dat_block_count_done\(3),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[7]_i_1_n_6\,
      Q => \^dat_block_count_done\(4),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[7]_i_1_n_5\,
      Q => \^dat_block_count_done\(5),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[7]_i_1_n_4\,
      Q => \^dat_block_count_done\(6),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_done_reg[3]_i_1_n_0\,
      CO(3) => \block_count_done_reg[7]_i_1_n_0\,
      CO(2) => \block_count_done_reg[7]_i_1_n_1\,
      CO(1) => \block_count_done_reg[7]_i_1_n_2\,
      CO(0) => \block_count_done_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \block_count_done_reg[7]_i_1_n_4\,
      O(2) => \block_count_done_reg[7]_i_1_n_5\,
      O(1) => \block_count_done_reg[7]_i_1_n_6\,
      O(0) => \block_count_done_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^dat_block_count_done\(6 downto 3)
    );
\block_count_done_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[11]_i_1_n_7\,
      Q => \^dat_block_count_done\(7),
      R => \block_count_done[31]_i_1_n_0\
    );
\block_count_done_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_done,
      D => \block_count_done_reg[11]_i_1_n_6\,
      Q => \^dat_block_count_done\(8),
      R => \block_count_done[31]_i_1_n_0\
    );
block_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001004"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => \FSM_sequential_state[3]_i_7_n_0\,
      O => block_done0
    );
block_done_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => block_done,
      I1 => resetn,
      I2 => dat_resetn,
      I3 => resetn_d,
      O => block_done_out_i_1_n_0
    );
block_done_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => block_done_out_i_1_n_0,
      Q => dat_block_done,
      R => '0'
    );
block_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => block_done0,
      Q => block_done,
      R => counter1
    );
\block_size_exp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => block_size_exp_0
    );
\block_size_exp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_size_exp_0,
      D => dat_block_size_exp(0),
      Q => block_size_exp(0),
      R => counter1
    );
\block_size_exp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_size_exp_0,
      D => dat_block_size_exp(1),
      Q => block_size_exp(1),
      R => counter1
    );
\block_size_exp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_size_exp_0,
      D => dat_block_size_exp(2),
      Q => block_size_exp(2),
      R => counter1
    );
\block_type_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_size_exp_0,
      D => dat_block_type(0),
      Q => block_type(0),
      R => counter1
    );
\block_type_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => block_size_exp_0,
      D => dat_block_type(1),
      Q => block_type(1),
      R => counter1
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(0),
      Q => \buffer\(0),
      R => counter1
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(1),
      Q => \buffer\(1),
      R => counter1
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(2),
      Q => \buffer\(2),
      R => counter1
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(3),
      Q => \buffer\(3),
      R => counter1
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(4),
      Q => \buffer\(4),
      R => counter1
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(5),
      Q => \buffer\(5),
      R => counter1
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(6),
      Q => \buffer\(6),
      R => counter1
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => buffer_next(7),
      Q => \buffer\(7),
      R => counter1
    );
cc_error_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033330020"
    )
        port map (
      I0 => cc_error_out_i_2_n_0,
      I1 => state(0),
      I2 => cc_error_out_i_3_n_0,
      I3 => cc_error_out_i_4_n_0,
      I4 => state(1),
      I5 => cc_error_out_i_5_n_0,
      O => set_cc_error
    );
cc_error_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FFFFFF"
    )
        port map (
      I0 => in_tvalid,
      I1 => \^new_sd_clk\,
      I2 => in_tready_INST_0_i_1_n_0,
      I3 => block_data_done,
      I4 => in_tlast_saved,
      O => cc_error_out_i_2_n_0
    );
cc_error_out_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => cc_error_out_i_3_n_0
    );
cc_error_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFEE0EFFFF"
    )
        port map (
      I0 => in_tready_INST_0_i_1_n_0,
      I1 => in_tvalid,
      I2 => in_tlast_saved,
      I3 => in_tready_INST_0_i_5_n_0,
      I4 => \^new_sd_clk\,
      I5 => block_data_done,
      O => cc_error_out_i_4_n_0
    );
cc_error_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8AAAAAAA"
    )
        port map (
      I0 => cc_error_out_i_6_n_0,
      I1 => state(3),
      I2 => \^out_tvalid_reg_0\,
      I3 => cc_error_out_i_7_n_0,
      I4 => state(2),
      I5 => read_crc_err,
      O => cc_error_out_i_5_n_0
    );
cc_error_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \^new_sd_clk\,
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      O => cc_error_out_i_6_n_0
    );
cc_error_out_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter(2),
      I1 => \^new_sd_clk\,
      O => cc_error_out_i_7_n_0
    );
cc_error_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_cc_error,
      Q => cc_error_out,
      R => SS(0)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter_inc(0)
    );
\counter_passed[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007747"
    )
        port map (
      I0 => \counter_passed[64]_i_3_n_0\,
      I1 => state(2),
      I2 => \counter_passed[64]_i_4_n_0\,
      I3 => \counter_passed[64]_i_5_n_0\,
      I4 => state(0),
      I5 => \counter_passed[64]_i_6_n_0\,
      O => counter0
    );
\counter_passed[64]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(6),
      I1 => \counter_passed_reg[64]__0\,
      O => \counter_passed[64]_i_2_n_0\
    );
\counter_passed[64]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7FFF"
    )
        port map (
      I0 => state(3),
      I1 => block_data_done,
      I2 => \^new_sd_clk\,
      I3 => in_tvalid,
      I4 => in_tready_INST_0_i_1_n_0,
      I5 => \counter_passed[64]_i_7_n_0\,
      O => \counter_passed[64]_i_3_n_0\
    );
\counter_passed[64]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => block_data_done,
      I1 => \^new_sd_clk\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => state(3),
      O => \counter_passed[64]_i_4_n_0\
    );
\counter_passed[64]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10005555"
    )
        port map (
      I0 => state(1),
      I1 => fifo_out_almostfull,
      I2 => \^new_sd_clk\,
      I3 => \counter_passed_reg[64]__0\,
      I4 => state(3),
      O => \counter_passed[64]_i_5_n_0\
    );
\counter_passed[64]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAABAAAFFFFFFFF"
    )
        port map (
      I0 => \counter_passed[64]_i_8_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => dat_resetn,
      O => \counter_passed[64]_i_6_n_0\
    );
\counter_passed[64]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => state(1),
      I1 => counter(2),
      I2 => \^new_sd_clk\,
      I3 => state(3),
      O => \counter_passed[64]_i_7_n_0\
    );
\counter_passed[64]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^new_sd_clk\,
      I1 => Q(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      O => \counter_passed[64]_i_8_n_0\
    );
\counter_passed_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \counter_passed[64]_i_2_n_0\,
      Q => \counter_passed_reg[64]__0\,
      R => counter0
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(0),
      Q => \counter_reg_n_0_[0]\,
      R => counter0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(10),
      Q => \counter_reg_n_0_[10]\,
      R => counter0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(11),
      Q => \counter_reg_n_0_[11]\,
      R => counter0
    );
\counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_inc__0\(12),
      CO(2) => \NLW_counter_reg[11]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \counter_reg[11]_i_1_n_2\,
      CO(0) => \counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[11]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => counter_inc(11 downto 9),
      S(3) => '1',
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(1),
      Q => counter(1),
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(2),
      Q => counter(2),
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(3),
      Q => \counter_reg_n_0_[3]\,
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(4),
      Q => \counter_reg_n_0_[4]\,
      R => counter0
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_inc(4 downto 1),
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1 downto 0) => counter(2 downto 1)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(5),
      Q => \counter_reg_n_0_[5]\,
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(6),
      Q => counter(6),
      R => counter0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(7),
      Q => \counter_reg_n_0_[7]\,
      R => counter0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(8),
      Q => \counter_reg_n_0_[8]\,
      R => counter0
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_inc(8 downto 5),
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => counter(6),
      S(0) => \counter_reg_n_0_[5]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(9),
      Q => \counter_reg_n_0_[9]\,
      R => counter0
    );
done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_resetn,
      O => counter1
    );
done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44454444"
    )
        port map (
      I0 => \error_code[2]_i_5_n_0\,
      I1 => \error_code[2]_i_4_n_0\,
      I2 => cc_error_out_i_4_n_0,
      I3 => done_i_3_n_0,
      I4 => cc_error_out_i_2_n_0,
      I5 => \^dat_done\,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      O => done_i_3_n_0
    );
done_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033330020"
    )
        port map (
      I0 => cc_error_out_i_2_n_0,
      I1 => state(0),
      I2 => cc_error_out_i_3_n_0,
      I3 => cc_error_out_i_4_n_0,
      I4 => state(1),
      I5 => \error_code[2]_i_5_n_0\,
      O => done_next
    );
done_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_next,
      Q => dat_done_new,
      R => SS(0)
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_i_2_n_0,
      Q => \^dat_done\,
      R => counter1
    );
\error_code[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFB0000AA08"
    )
        port map (
      I0 => error_code_next(0),
      I1 => cc_error_out_i_2_n_0,
      I2 => \error_code[2]_i_3_n_0\,
      I3 => \error_code[2]_i_4_n_0\,
      I4 => \error_code[2]_i_5_n_0\,
      I5 => \^dat_error_code\(0),
      O => \error_code[0]_i_1_n_0\
    );
\error_code[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000AA8A"
    )
        port map (
      I0 => block_data_done,
      I1 => in_tready_INST_0_i_1_n_0,
      I2 => \^new_sd_clk\,
      I3 => in_tvalid,
      I4 => state(1),
      I5 => \error_code[0]_i_3_n_0\,
      O => error_code_next(0)
    );
\error_code[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EFF"
    )
        port map (
      I0 => \^out_tvalid_reg_0\,
      I1 => read_crc_err,
      I2 => state(3),
      I3 => state(2),
      O => \error_code[0]_i_3_n_0\
    );
\error_code[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFB0000AA08"
    )
        port map (
      I0 => \error_code[1]_i_2_n_0\,
      I1 => cc_error_out_i_2_n_0,
      I2 => \error_code[2]_i_3_n_0\,
      I3 => \error_code[2]_i_4_n_0\,
      I4 => \error_code[2]_i_5_n_0\,
      I5 => \^dat_error_code\(1),
      O => \error_code[1]_i_1_n_0\
    );
\error_code[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444544"
    )
        port map (
      I0 => state(1),
      I1 => block_data_done,
      I2 => in_tvalid,
      I3 => \^new_sd_clk\,
      I4 => in_tready_INST_0_i_1_n_0,
      O => \error_code[1]_i_2_n_0\
    );
\error_code[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFB0000AA08"
    )
        port map (
      I0 => error_code_next(2),
      I1 => cc_error_out_i_2_n_0,
      I2 => \error_code[2]_i_3_n_0\,
      I3 => \error_code[2]_i_4_n_0\,
      I4 => \error_code[2]_i_5_n_0\,
      I5 => \^dat_error_code\(2),
      O => \error_code[2]_i_1_n_0\
    );
\error_code[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00005545"
    )
        port map (
      I0 => state(1),
      I1 => in_tready_INST_0_i_1_n_0,
      I2 => \^new_sd_clk\,
      I3 => in_tvalid,
      I4 => block_data_done,
      I5 => \error_code[2]_i_6_n_0\,
      O => error_code_next(2)
    );
\error_code[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF70707030"
    )
        port map (
      I0 => block_data_done,
      I1 => \^new_sd_clk\,
      I2 => \error_code[2]_i_7_n_0\,
      I3 => in_tvalid,
      I4 => in_tready_INST_0_i_1_n_0,
      I5 => done_i_3_n_0,
      O => \error_code[2]_i_3_n_0\
    );
\error_code[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \error_code[2]_i_4_n_0\
    );
\error_code[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8AAAAAA"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => \^new_sd_clk\,
      I4 => \FSM_sequential_state[0]_i_3_n_0\,
      I5 => \error_code[2]_i_8_n_0\,
      O => \error_code[2]_i_5_n_0\
    );
\error_code[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => state(3),
      I1 => \^out_tvalid_reg_0\,
      I2 => read_crc_err,
      I3 => state(2),
      O => \error_code[2]_i_6_n_0\
    );
\error_code[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557FFFFFFFFFFFFF"
    )
        port map (
      I0 => in_tlast_saved,
      I1 => counter(2),
      I2 => counter(1),
      I3 => dat_width_4,
      I4 => \counter_reg_n_0_[0]\,
      I5 => \^new_sd_clk\,
      O => \error_code[2]_i_7_n_0\
    );
\error_code[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000000C4000000"
    )
        port map (
      I0 => \error_code[2]_i_9_n_0\,
      I1 => counter(2),
      I2 => no_more_blocks,
      I3 => \^new_sd_clk\,
      I4 => state(2),
      I5 => state(3),
      O => \error_code[2]_i_8_n_0\
    );
\error_code[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out_tvalid_reg_0\,
      I1 => read_crc_err,
      O => \error_code[2]_i_9_n_0\
    );
\error_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \error_code[0]_i_1_n_0\,
      Q => \^dat_error_code\(0),
      R => SS(0)
    );
\error_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \error_code[1]_i_1_n_0\,
      Q => \^dat_error_code\(1),
      R => SS(0)
    );
\error_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \error_code[2]_i_1_n_0\,
      Q => \^dat_error_code\(2),
      R => SS(0)
    );
in_tlast_saved_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4B0"
    )
        port map (
      I0 => in_tready_INST_0_i_1_n_0,
      I1 => \^new_sd_clk\,
      I2 => in_tlast_saved,
      I3 => in_tlast,
      O => in_tlast_saved_i_1_n_0
    );
in_tlast_saved_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => in_tlast_saved_i_1_n_0,
      Q => in_tlast_saved,
      R => counter1
    );
in_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => in_tready_INST_0_i_1_n_0,
      I1 => \^new_sd_clk\,
      O => in_tready
    );
in_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE20000"
    )
        port map (
      I0 => out_tlast_reg_i_2_n_0,
      I1 => in_tready_INST_0_i_3_n_0,
      I2 => in_tready_INST_0_i_4_n_0,
      I3 => in_tready_INST_0_i_5_n_0,
      I4 => state(2),
      I5 => in_tready_INST_0_i_6_n_0,
      O => in_tready_INST_0_i_1_n_0
    );
in_tready_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => block_type(1),
      I1 => block_type(0),
      O => in_tready_INST_0_i_3_n_0
    );
in_tready_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_inc(10),
      I1 => dat_width_4,
      I2 => \counter_inc__0\(12),
      O => in_tready_INST_0_i_4_n_0
    );
in_tready_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => dat_width_4,
      I3 => \counter_reg_n_0_[0]\,
      O => in_tready_INST_0_i_5_n_0
    );
in_tready_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD7F"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => in_tready_INST_0_i_6_n_0
    );
\line_crc[0].line_crc\: entity work.\block_design_sd_card_0_line_crc__parameterized0\
     port map (
      D(0) => sd_dat_o_sys_next(0),
      E(0) => \^new_sd_clk\,
      Q(3 downto 0) => Q(3 downto 0),
      busy_in => busy_in,
      clk => clk,
      \crc_reg[0]_0\(3 downto 0) => state(3 downto 0),
      dat_resetn => dat_resetn,
      dat_width_4 => dat_width_4,
      \sd_dat_d_reg[2][3]\ => \line_crc[0].line_crc_n_1\,
      \sd_dat_o_sys_reg[0]\ => \sd_dat_o_sys[0]_i_2_n_0\,
      \sd_dat_o_sys_reg[0]_0\(1) => \buffer\(7),
      \sd_dat_o_sys_reg[0]_0\(0) => \buffer\(4)
    );
\line_crc[1].line_crc\: entity work.\block_design_sd_card_0_line_crc__parameterized0_0\
     port map (
      E(0) => \^new_sd_clk\,
      \FSM_sequential_state_reg[3]\ => \line_crc[1].line_crc_n_1\,
      Q(0) => \buffer\(5),
      SR(0) => \line_crc[2].line_crc_n_1\,
      clk => clk,
      \crc_reg[0]_0\(0) => Q(1),
      \crc_reg[15]_0\ => \line_crc[1].line_crc_n_0\,
      dat_width_4 => dat_width_4,
      read_crc_err => read_crc_err,
      read_crc_err_reg(3 downto 0) => state(3 downto 0),
      read_crc_err_reg_0 => \line_crc[2].line_crc_n_0\,
      read_crc_err_reg_1 => \line_crc[3].line_crc_n_0\,
      read_crc_err_reg_2 => \line_crc[0].line_crc_n_1\,
      read_crc_err_reg_3 => read_crc_err_i_3_n_0
    );
\line_crc[2].line_crc\: entity work.\block_design_sd_card_0_line_crc__parameterized0_1\
     port map (
      E(0) => \^new_sd_clk\,
      Q(3 downto 0) => state(3 downto 0),
      SR(0) => \line_crc[2].line_crc_n_1\,
      clk => clk,
      \crc_reg[0]_0\(0) => \buffer\(6),
      \crc_reg[0]_1\(0) => Q(2),
      \crc_reg[15]_0\ => \line_crc[2].line_crc_n_2\,
      dat_resetn => dat_resetn,
      dat_width_4 => dat_width_4,
      good_reg_0 => \line_crc[2].line_crc_n_0\
    );
\line_crc[3].line_crc\: entity work.\block_design_sd_card_0_line_crc__parameterized0_2\
     port map (
      E(0) => \^new_sd_clk\,
      Q(0) => \buffer\(7),
      SR(0) => \line_crc[2].line_crc_n_1\,
      clk => clk,
      \crc_reg[0]_0\(2) => state(3),
      \crc_reg[0]_0\(1 downto 0) => state(1 downto 0),
      \crc_reg[0]_1\(0) => Q(3),
      \crc_reg[15]_0\ => \line_crc[3].line_crc_n_2\,
      dat_width_4 => dat_width_4,
      good_reg_0 => \line_crc[3].line_crc_n_0\,
      good_reg_1(1 downto 0) => good_reg(1 downto 0)
    );
no_more_blocks0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => no_more_blocks0_carry_n_0,
      CO(2) => no_more_blocks0_carry_n_1,
      CO(1) => no_more_blocks0_carry_n_2,
      CO(0) => no_more_blocks0_carry_n_3,
      CYINIT => '1',
      DI(3) => no_more_blocks0_carry_i_1_n_0,
      DI(2) => no_more_blocks0_carry_i_2_n_0,
      DI(1) => no_more_blocks0_carry_i_3_n_0,
      DI(0) => no_more_blocks0_carry_i_4_n_0,
      O(3 downto 0) => NLW_no_more_blocks0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => no_more_blocks0_carry_i_5_n_0,
      S(2) => no_more_blocks0_carry_i_6_n_0,
      S(1) => no_more_blocks0_carry_i_7_n_0,
      S(0) => no_more_blocks0_carry_i_8_n_0
    );
\no_more_blocks0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => no_more_blocks0_carry_n_0,
      CO(3) => \no_more_blocks0_carry__0_n_0\,
      CO(2) => \no_more_blocks0_carry__0_n_1\,
      CO(1) => \no_more_blocks0_carry__0_n_2\,
      CO(0) => \no_more_blocks0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks0_carry__0_i_1_n_0\,
      DI(2) => \no_more_blocks0_carry__0_i_2_n_0\,
      DI(1) => \no_more_blocks0_carry__0_i_3_n_0\,
      DI(0) => \no_more_blocks0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \no_more_blocks0_carry__0_i_5_n_0\,
      S(2) => \no_more_blocks0_carry__0_i_6_n_0\,
      S(1) => \no_more_blocks0_carry__0_i_7_n_0\,
      S(0) => \no_more_blocks0_carry__0_i_8_n_0\
    );
\no_more_blocks0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(14),
      I1 => dat_block_limit(15),
      I2 => \^dat_block_count_done\(13),
      I3 => dat_block_limit(14),
      O => \no_more_blocks0_carry__0_i_1_n_0\
    );
\no_more_blocks0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(12),
      I1 => dat_block_limit(13),
      I2 => \^dat_block_count_done\(11),
      I3 => dat_block_limit(12),
      O => \no_more_blocks0_carry__0_i_2_n_0\
    );
\no_more_blocks0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(10),
      I1 => dat_block_limit(11),
      I2 => \^dat_block_count_done\(9),
      I3 => dat_block_limit(10),
      O => \no_more_blocks0_carry__0_i_3_n_0\
    );
\no_more_blocks0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(8),
      I1 => dat_block_limit(9),
      I2 => \^dat_block_count_done\(7),
      I3 => dat_block_limit(8),
      O => \no_more_blocks0_carry__0_i_4_n_0\
    );
\no_more_blocks0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(15),
      I1 => \^dat_block_count_done\(14),
      I2 => dat_block_limit(14),
      I3 => \^dat_block_count_done\(13),
      O => \no_more_blocks0_carry__0_i_5_n_0\
    );
\no_more_blocks0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(13),
      I1 => \^dat_block_count_done\(12),
      I2 => dat_block_limit(12),
      I3 => \^dat_block_count_done\(11),
      O => \no_more_blocks0_carry__0_i_6_n_0\
    );
\no_more_blocks0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(11),
      I1 => \^dat_block_count_done\(10),
      I2 => dat_block_limit(10),
      I3 => \^dat_block_count_done\(9),
      O => \no_more_blocks0_carry__0_i_7_n_0\
    );
\no_more_blocks0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(9),
      I1 => \^dat_block_count_done\(8),
      I2 => dat_block_limit(8),
      I3 => \^dat_block_count_done\(7),
      O => \no_more_blocks0_carry__0_i_8_n_0\
    );
\no_more_blocks0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \no_more_blocks0_carry__0_n_0\,
      CO(3) => \no_more_blocks0_carry__1_n_0\,
      CO(2) => \no_more_blocks0_carry__1_n_1\,
      CO(1) => \no_more_blocks0_carry__1_n_2\,
      CO(0) => \no_more_blocks0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks0_carry__1_i_1_n_0\,
      DI(2) => \no_more_blocks0_carry__1_i_2_n_0\,
      DI(1) => \no_more_blocks0_carry__1_i_3_n_0\,
      DI(0) => \no_more_blocks0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \no_more_blocks0_carry__1_i_5_n_0\,
      S(2) => \no_more_blocks0_carry__1_i_6_n_0\,
      S(1) => \no_more_blocks0_carry__1_i_7_n_0\,
      S(0) => \no_more_blocks0_carry__1_i_8_n_0\
    );
\no_more_blocks0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(22),
      I1 => dat_block_limit(23),
      I2 => \^dat_block_count_done\(21),
      I3 => dat_block_limit(22),
      O => \no_more_blocks0_carry__1_i_1_n_0\
    );
\no_more_blocks0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(20),
      I1 => dat_block_limit(21),
      I2 => \^dat_block_count_done\(19),
      I3 => dat_block_limit(20),
      O => \no_more_blocks0_carry__1_i_2_n_0\
    );
\no_more_blocks0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(18),
      I1 => dat_block_limit(19),
      I2 => \^dat_block_count_done\(17),
      I3 => dat_block_limit(18),
      O => \no_more_blocks0_carry__1_i_3_n_0\
    );
\no_more_blocks0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(16),
      I1 => dat_block_limit(17),
      I2 => \^dat_block_count_done\(15),
      I3 => dat_block_limit(16),
      O => \no_more_blocks0_carry__1_i_4_n_0\
    );
\no_more_blocks0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(23),
      I1 => \^dat_block_count_done\(22),
      I2 => dat_block_limit(22),
      I3 => \^dat_block_count_done\(21),
      O => \no_more_blocks0_carry__1_i_5_n_0\
    );
\no_more_blocks0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(21),
      I1 => \^dat_block_count_done\(20),
      I2 => dat_block_limit(20),
      I3 => \^dat_block_count_done\(19),
      O => \no_more_blocks0_carry__1_i_6_n_0\
    );
\no_more_blocks0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(19),
      I1 => \^dat_block_count_done\(18),
      I2 => dat_block_limit(18),
      I3 => \^dat_block_count_done\(17),
      O => \no_more_blocks0_carry__1_i_7_n_0\
    );
\no_more_blocks0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(17),
      I1 => \^dat_block_count_done\(16),
      I2 => dat_block_limit(16),
      I3 => \^dat_block_count_done\(15),
      O => \no_more_blocks0_carry__1_i_8_n_0\
    );
\no_more_blocks0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \no_more_blocks0_carry__1_n_0\,
      CO(3) => \no_more_blocks0_carry__2_n_0\,
      CO(2) => \no_more_blocks0_carry__2_n_1\,
      CO(1) => \no_more_blocks0_carry__2_n_2\,
      CO(0) => \no_more_blocks0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks0_carry__2_i_1_n_0\,
      DI(2) => \no_more_blocks0_carry__2_i_2_n_0\,
      DI(1) => \no_more_blocks0_carry__2_i_3_n_0\,
      DI(0) => \no_more_blocks0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \no_more_blocks0_carry__2_i_5_n_0\,
      S(2) => \no_more_blocks0_carry__2_i_6_n_0\,
      S(1) => \no_more_blocks0_carry__2_i_7_n_0\,
      S(0) => \no_more_blocks0_carry__2_i_8_n_0\
    );
\no_more_blocks0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(30),
      I1 => dat_block_limit(31),
      I2 => \^dat_block_count_done\(29),
      I3 => dat_block_limit(30),
      O => \no_more_blocks0_carry__2_i_1_n_0\
    );
\no_more_blocks0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(28),
      I1 => dat_block_limit(29),
      I2 => \^dat_block_count_done\(27),
      I3 => dat_block_limit(28),
      O => \no_more_blocks0_carry__2_i_2_n_0\
    );
\no_more_blocks0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(26),
      I1 => dat_block_limit(27),
      I2 => \^dat_block_count_done\(25),
      I3 => dat_block_limit(26),
      O => \no_more_blocks0_carry__2_i_3_n_0\
    );
\no_more_blocks0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(24),
      I1 => dat_block_limit(25),
      I2 => \^dat_block_count_done\(23),
      I3 => dat_block_limit(24),
      O => \no_more_blocks0_carry__2_i_4_n_0\
    );
\no_more_blocks0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(31),
      I1 => \^dat_block_count_done\(30),
      I2 => dat_block_limit(30),
      I3 => \^dat_block_count_done\(29),
      O => \no_more_blocks0_carry__2_i_5_n_0\
    );
\no_more_blocks0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(29),
      I1 => \^dat_block_count_done\(28),
      I2 => dat_block_limit(28),
      I3 => \^dat_block_count_done\(27),
      O => \no_more_blocks0_carry__2_i_6_n_0\
    );
\no_more_blocks0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(27),
      I1 => \^dat_block_count_done\(26),
      I2 => dat_block_limit(26),
      I3 => \^dat_block_count_done\(25),
      O => \no_more_blocks0_carry__2_i_7_n_0\
    );
\no_more_blocks0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(25),
      I1 => \^dat_block_count_done\(24),
      I2 => dat_block_limit(24),
      I3 => \^dat_block_count_done\(23),
      O => \no_more_blocks0_carry__2_i_8_n_0\
    );
no_more_blocks0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(6),
      I1 => dat_block_limit(7),
      I2 => \^dat_block_count_done\(5),
      I3 => dat_block_limit(6),
      O => no_more_blocks0_carry_i_1_n_0
    );
no_more_blocks0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(4),
      I1 => dat_block_limit(5),
      I2 => \^dat_block_count_done\(3),
      I3 => dat_block_limit(4),
      O => no_more_blocks0_carry_i_2_n_0
    );
no_more_blocks0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(2),
      I1 => dat_block_limit(3),
      I2 => \^dat_block_count_done\(1),
      I3 => dat_block_limit(2),
      O => no_more_blocks0_carry_i_3_n_0
    );
no_more_blocks0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dat_block_count_done\(0),
      I1 => dat_block_limit(1),
      I2 => \^block_count_done_reg[0]_0\,
      I3 => dat_block_limit(0),
      O => no_more_blocks0_carry_i_4_n_0
    );
no_more_blocks0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(7),
      I1 => \^dat_block_count_done\(6),
      I2 => dat_block_limit(6),
      I3 => \^dat_block_count_done\(5),
      O => no_more_blocks0_carry_i_5_n_0
    );
no_more_blocks0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(5),
      I1 => \^dat_block_count_done\(4),
      I2 => dat_block_limit(4),
      I3 => \^dat_block_count_done\(3),
      O => no_more_blocks0_carry_i_6_n_0
    );
no_more_blocks0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(3),
      I1 => \^dat_block_count_done\(2),
      I2 => dat_block_limit(2),
      I3 => \^dat_block_count_done\(1),
      O => no_more_blocks0_carry_i_7_n_0
    );
no_more_blocks0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dat_block_limit(1),
      I1 => \^dat_block_count_done\(0),
      I2 => dat_block_limit(0),
      I3 => \^block_count_done_reg[0]_0\,
      O => no_more_blocks0_carry_i_8_n_0
    );
no_more_blocks_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => block_type(1),
      I1 => \no_more_blocks0_carry__2_n_0\,
      I2 => block_type(0),
      O => no_more_blocks_i_1_n_0
    );
no_more_blocks_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => no_more_blocks_i_1_n_0,
      Q => no_more_blocks,
      R => counter1
    );
\out_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => in_tready_INST_0_i_1_n_0,
      I2 => in_tdata(0),
      O => buffer_next(0)
    );
\out_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(1),
      I1 => dat_width_4,
      I2 => \buffer\(0),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(1),
      O => buffer_next(1)
    );
\out_tdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(2),
      I1 => dat_width_4,
      I2 => \buffer\(1),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(2),
      O => buffer_next(2)
    );
\out_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(3),
      I1 => dat_width_4,
      I2 => \buffer\(2),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(3),
      O => buffer_next(3)
    );
\out_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buffer\(0),
      I1 => dat_width_4,
      I2 => \buffer\(3),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(4),
      O => buffer_next(4)
    );
\out_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buffer\(1),
      I1 => dat_width_4,
      I2 => \buffer\(4),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(5),
      O => buffer_next(5)
    );
\out_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buffer\(2),
      I1 => dat_width_4,
      I2 => \buffer\(5),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(6),
      O => buffer_next(6)
    );
\out_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \out_tdata[7]_i_3_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      O => out_tdata0
    );
\out_tdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buffer\(3),
      I1 => dat_width_4,
      I2 => \buffer\(6),
      I3 => in_tready_INST_0_i_1_n_0,
      I4 => in_tdata(7),
      O => buffer_next(7)
    );
\out_tdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \^new_sd_clk\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => dat_width_4,
      I3 => counter(1),
      I4 => counter(2),
      O => \out_tdata[7]_i_3_n_0\
    );
\out_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(0),
      Q => out_tdata(0),
      R => SS(0)
    );
\out_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(1),
      Q => out_tdata(1),
      R => SS(0)
    );
\out_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(2),
      Q => out_tdata(2),
      R => SS(0)
    );
\out_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(3),
      Q => out_tdata(3),
      R => SS(0)
    );
\out_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(4),
      Q => out_tdata(4),
      R => SS(0)
    );
\out_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(5),
      Q => out_tdata(5),
      R => SS(0)
    );
\out_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(6),
      Q => out_tdata(6),
      R => SS(0)
    );
\out_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(7),
      Q => out_tdata(7),
      R => SS(0)
    );
out_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => counter_inc(10),
      I1 => dat_width_4,
      I2 => \counter_inc__0\(12),
      I3 => block_type(1),
      I4 => block_type(0),
      I5 => out_tlast_reg_i_2_n_0,
      O => block_data_done
    );
out_tlast_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => block_size_exp(1),
      I1 => block_size_exp(0),
      O => out_tlast_i_10_n_0
    );
out_tlast_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => counter_inc(6),
      I1 => counter_inc(7),
      I2 => block_size_exp(1),
      I3 => block_size_exp(0),
      I4 => counter_inc(4),
      I5 => counter_inc(5),
      O => out_tlast_i_11_n_0
    );
out_tlast_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACF0AC0FACFFAC0"
    )
        port map (
      I0 => counter_inc(2),
      I1 => counter_inc(3),
      I2 => block_size_exp(1),
      I3 => block_size_exp(0),
      I4 => counter_inc(1),
      I5 => \counter_reg_n_0_[0]\,
      O => out_tlast_i_12_n_0
    );
out_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF101010FF10FF"
    )
        port map (
      I0 => out_tlast_i_5_n_0,
      I1 => out_tlast_i_6_n_0,
      I2 => out_tlast_i_7_n_0,
      I3 => out_tlast_i_8_n_0,
      I4 => out_tlast_i_9_n_0,
      I5 => out_tlast_i_10_n_0,
      O => out_tlast_i_3_n_0
    );
out_tlast_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF803FBFC08000"
    )
        port map (
      I0 => out_tlast_i_9_n_0,
      I1 => block_size_exp(0),
      I2 => block_size_exp(1),
      I3 => block_size_exp(2),
      I4 => out_tlast_i_11_n_0,
      I5 => out_tlast_i_12_n_0,
      O => out_tlast_i_4_n_0
    );
out_tlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => block_size_exp(2),
      I1 => block_size_exp(1),
      I2 => counter_inc(3),
      I3 => block_size_exp(0),
      O => out_tlast_i_5_n_0
    );
out_tlast_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8B8ACBC"
    )
        port map (
      I0 => block_size_exp(2),
      I1 => block_size_exp(1),
      I2 => block_size_exp(0),
      I3 => counter_inc(4),
      I4 => counter_inc(5),
      O => out_tlast_i_6_n_0
    );
out_tlast_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBFCFF"
    )
        port map (
      I0 => counter_inc(6),
      I1 => block_size_exp(0),
      I2 => counter_inc(7),
      I3 => block_size_exp(2),
      I4 => block_size_exp(1),
      O => out_tlast_i_7_n_0
    );
out_tlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"755F"
    )
        port map (
      I0 => block_size_exp(2),
      I1 => counter_inc(10),
      I2 => block_size_exp(0),
      I3 => block_size_exp(1),
      O => out_tlast_i_8_n_0
    );
out_tlast_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_inc(8),
      I1 => block_size_exp(0),
      I2 => counter_inc(9),
      O => out_tlast_i_9_n_0
    );
out_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => block_data_done,
      Q => out_tlast,
      R => SS(0)
    );
out_tlast_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => out_tlast_i_3_n_0,
      I1 => out_tlast_i_4_n_0,
      O => out_tlast_reg_i_2_n_0,
      S => dat_width_4
    );
out_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => out_tready,
      I1 => set_out_tvalid,
      I2 => \^out_tvalid_reg_0\,
      O => out_tvalid_i_1_n_0
    );
out_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040000"
    )
        port map (
      I0 => state(2),
      I1 => \out_tdata[7]_i_3_n_0\,
      I2 => block_data_done,
      I3 => out_tvalid_i_3_n_0,
      I4 => \error_code[2]_i_4_n_0\,
      I5 => state(3),
      O => set_out_tvalid
    );
out_tvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^new_sd_clk\,
      I1 => counter(2),
      I2 => state(2),
      I3 => read_crc_err,
      O => out_tvalid_i_3_n_0
    );
out_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_tvalid_i_1_n_0,
      Q => \^out_tvalid_reg_0\,
      R => SS(0)
    );
read_crc_err_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => read_crc_err_i_3_n_0
    );
read_crc_err_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_crc[1].line_crc_n_1\,
      Q => read_crc_err,
      R => counter1
    );
resetn_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dat_resetn,
      Q => resetn_d,
      R => SS(0)
    );
\sd_dat_o_sys[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2A80A"
    )
        port map (
      I0 => state(2),
      I1 => read_crc_err,
      I2 => counter(2),
      I3 => counter(1),
      I4 => \counter_reg_n_0_[0]\,
      O => \sd_dat_o_sys[0]_i_2_n_0\
    );
\sd_dat_o_sys[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAFFFFFFAAFF"
    )
        port map (
      I0 => \^sd_dat_o_sys_reg[3]_0\(1),
      I1 => \line_crc[1].line_crc_n_0\,
      I2 => \sd_dat_o_sys[3]_i_3_n_0\,
      I3 => resetn,
      I4 => \^new_sd_clk\,
      I5 => dat_width_4,
      O => \sd_dat_o_sys[1]_i_1_n_0\
    );
\sd_dat_o_sys[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAFFFFFFAAFF"
    )
        port map (
      I0 => \^sd_dat_o_sys_reg[3]_0\(2),
      I1 => \line_crc[2].line_crc_n_2\,
      I2 => \sd_dat_o_sys[3]_i_3_n_0\,
      I3 => resetn,
      I4 => \^new_sd_clk\,
      I5 => dat_width_4,
      O => \sd_dat_o_sys[2]_i_1_n_0\
    );
\sd_dat_o_sys[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAFFFFFFAAFF"
    )
        port map (
      I0 => \^sd_dat_o_sys_reg[3]_0\(3),
      I1 => \line_crc[3].line_crc_n_2\,
      I2 => \sd_dat_o_sys[3]_i_3_n_0\,
      I3 => resetn,
      I4 => \^new_sd_clk\,
      I5 => dat_width_4,
      O => \sd_dat_o_sys[3]_i_1_n_0\
    );
\sd_dat_o_sys[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      O => \sd_dat_o_sys[3]_i_3_n_0\
    );
\sd_dat_o_sys_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => sd_dat_o_sys_next(0),
      Q => \^sd_dat_o_sys_reg[3]_0\(0),
      S => SS(0)
    );
\sd_dat_o_sys_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_o_sys[1]_i_1_n_0\,
      Q => \^sd_dat_o_sys_reg[3]_0\(1),
      R => '0'
    );
\sd_dat_o_sys_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_o_sys[2]_i_1_n_0\,
      Q => \^sd_dat_o_sys_reg[3]_0\(2),
      R => '0'
    );
\sd_dat_o_sys_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_o_sys[3]_i_1_n_0\,
      Q => \^sd_dat_o_sys_reg[3]_0\(3),
      R => '0'
    );
\sd_dat_t_sys[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000A0A0A0AAA02"
    )
        port map (
      I0 => \sd_dat_t_sys[3]_i_2_n_0\,
      I1 => busy_in,
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => sd_dat_t_sys_next(3)
    );
\sd_dat_t_sys[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^sd_dat_o_sys_reg[3]_0\(0),
      I1 => \^sd_dat_o_sys_reg[3]_0\(3),
      I2 => \^sd_dat_o_sys_reg[3]_0\(1),
      I3 => \^sd_dat_o_sys_reg[3]_0\(2),
      O => \sd_dat_t_sys[3]_i_2_n_0\
    );
\sd_dat_t_sys_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => sd_dat_t_sys_next(3),
      Q => D(0),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_sd_bus_interface is
  port (
    got_new_cmd : out STD_LOGIC;
    cmd_crc_err : out STD_LOGIC;
    cmd_index : out STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_arg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cmd_resp_done : out STD_LOGIC;
    cmd_resp_timeout : out STD_LOGIC;
    cmd_resp_pos : out STD_LOGIC_VECTOR ( 4 downto 0 );
    cmd_resp_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_resp_len : in STD_LOGIC_VECTOR ( 4 downto 0 );
    resp_no_crc : in STD_LOGIC;
    resp_start : in STD_LOGIC;
    resp_none : in STD_LOGIC;
    fifo_out_almostfull : in STD_LOGIC;
    out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_tlast : out STD_LOGIC;
    out_tvalid : out STD_LOGIC;
    out_tready : in STD_LOGIC;
    in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_tlast : in STD_LOGIC;
    in_tvalid : in STD_LOGIC;
    in_tready : out STD_LOGIC;
    dat_block_size_exp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dat_block_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dat_block_limit : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dat_block_count_done : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dat_read_mode : in STD_LOGIC;
    busy_in : in STD_LOGIC;
    dat_width_4 : in STD_LOGIC;
    cc_error_out : out STD_LOGIC;
    dat_error_code : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dat_done : out STD_LOGIC;
    dat_done_new : out STD_LOGIC;
    dat_block_done : out STD_LOGIC;
    dat_resetn : in STD_LOGIC;
    sd_clk_i : in STD_LOGIC;
    sd_cmd_i : in STD_LOGIC;
    sd_cmd_o : out STD_LOGIC;
    sd_cmd_t : out STD_LOGIC;
    sd_dat_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_sd_bus_interface : entity is "sd_bus_interface";
  attribute cmd_resp_len_max : integer;
  attribute cmd_resp_len_max of block_design_sd_card_0_sd_bus_interface : entity is 17;
  attribute dat_word_size : integer;
  attribute dat_word_size of block_design_sd_card_0_sd_bus_interface : entity is 8;
end block_design_sd_card_0_sd_bus_interface;

architecture STRUCTURE of block_design_sd_card_0_sd_bus_interface is
  signal \<const0>\ : STD_LOGIC;
  signal block_count_done1 : STD_LOGIC;
  signal new_sd_clk : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal sd_clk_div_d_reg : STD_LOGIC;
  signal \sd_clk_div_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \sd_clk_div_d_reg_n_0_[3]\ : STD_LOGIC;
  signal sd_cmd_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sd_cmd_i_sys : STD_LOGIC;
  signal sd_cmd_o_sys : STD_LOGIC;
  signal sd_cmd_t_sys : STD_LOGIC;
  signal \sd_dat_d_reg[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_d_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_d_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \sd_dat_d_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \sd_dat_d_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \sd_dat_d_reg_n_0_[2][3]\ : STD_LOGIC;
  signal sd_dat_o_sys : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_t_sys : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of sd_cmd_o_reg : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of sd_cmd_o_reg : label is "FDP_1";
  attribute KEEP of sd_cmd_t_reg : label is "yes";
  attribute XILINX_LEGACY_PRIM of sd_cmd_t_reg : label is "FDP_1";
  attribute KEEP of \sd_dat_o_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_o_reg[0]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_o_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_o_reg[1]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_o_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_o_reg[2]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_o_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_o_reg[3]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_t_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_t_reg[0]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_t_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_t_reg[1]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_t_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_t_reg[2]\ : label is "FDP_1";
  attribute KEEP of \sd_dat_t_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \sd_dat_t_reg[3]\ : label is "FDP_1";
  attribute mark_debug : string;
  attribute mark_debug of sd_clk_i : signal is "true";
  attribute mark_debug of sd_cmd_i : signal is "true";
  attribute mark_debug of sd_cmd_o : signal is "true";
  attribute mark_debug of sd_cmd_t : signal is "true";
  attribute mark_debug of sd_dat_i : signal is "true";
  attribute mark_debug of sd_dat_o : signal is "true";
  attribute mark_debug of sd_dat_t : signal is "true";
begin
  cmd_resp_done <= \<const0>\;
  cmd_resp_timeout <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
cmd_unit: entity work.block_design_sd_card_0_cmd_interface
     port map (
      Q(0) => sd_cmd_i_sys,
      SS(0) => block_count_done1,
      clk => clk,
      cmd_arg(31 downto 0) => cmd_arg(31 downto 0),
      cmd_crc_err => cmd_crc_err,
      cmd_index(5 downto 0) => cmd_index(5 downto 0),
      cmd_resp_byte(7 downto 0) => cmd_resp_byte(7 downto 0),
      cmd_resp_len(3) => cmd_resp_len(4),
      cmd_resp_len(2 downto 0) => cmd_resp_len(2 downto 0),
      cmd_resp_pos(4 downto 0) => cmd_resp_pos(4 downto 0),
      got_new_cmd => got_new_cmd,
      new_sd_clk => new_sd_clk,
      resetn => resetn,
      resp_no_crc => resp_no_crc,
      resp_none => resp_none,
      resp_start => resp_start,
      sd_cmd_o_sys => sd_cmd_o_sys,
      sd_cmd_t_sys => sd_cmd_t_sys
    );
dat_unit: entity work.block_design_sd_card_0_dat_interface
     port map (
      D(0) => sd_dat_t_sys(3),
      Q(3) => \sd_dat_d_reg_n_0_[2][3]\,
      Q(2) => \sd_dat_d_reg_n_0_[2][2]\,
      Q(1) => \sd_dat_d_reg_n_0_[2][1]\,
      Q(0) => \sd_dat_d_reg_n_0_[2][0]\,
      SS(0) => block_count_done1,
      \block_count_done_reg[0]_0\ => dat_block_count_done(0),
      busy_in => busy_in,
      cc_error_out => cc_error_out,
      clk => clk,
      dat_block_count_done(30 downto 0) => dat_block_count_done(31 downto 1),
      dat_block_done => dat_block_done,
      dat_block_limit(31 downto 0) => dat_block_limit(31 downto 0),
      dat_block_size_exp(2 downto 0) => dat_block_size_exp(2 downto 0),
      dat_block_type(1 downto 0) => dat_block_type(1 downto 0),
      dat_done => dat_done,
      dat_done_new => dat_done_new,
      dat_error_code(2 downto 0) => dat_error_code(2 downto 0),
      dat_read_mode => dat_read_mode,
      dat_resetn => dat_resetn,
      dat_width_4 => dat_width_4,
      fifo_out_almostfull => fifo_out_almostfull,
      good_reg(1) => \sd_clk_div_d_reg_n_0_[3]\,
      good_reg(0) => p_0_in,
      in_tdata(7 downto 0) => in_tdata(7 downto 0),
      in_tlast => in_tlast,
      in_tready => in_tready,
      in_tvalid => in_tvalid,
      new_sd_clk => new_sd_clk,
      out_tdata(7 downto 0) => out_tdata(7 downto 0),
      out_tlast => out_tlast,
      out_tready => out_tready,
      out_tvalid_reg_0 => out_tvalid,
      resetn => resetn,
      \sd_dat_o_sys_reg[3]_0\(3 downto 0) => sd_dat_o_sys(3 downto 0)
    );
\sd_clk_div_d[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sd_clk_div_d_reg,
      O => p_0_in1_in
    );
\sd_clk_div_d_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      CLR => block_count_done1,
      D => p_0_in1_in,
      Q => sd_clk_div_d_reg
    );
\sd_clk_div_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sd_clk_div_d_reg,
      Q => \sd_clk_div_d_reg_n_0_[1]\,
      R => block_count_done1
    );
\sd_clk_div_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sd_clk_div_d_reg_n_0_[1]\,
      Q => p_0_in,
      R => block_count_done1
    );
\sd_clk_div_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => \sd_clk_div_d_reg_n_0_[3]\,
      R => block_count_done1
    );
\sd_cmd_d_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_cmd_i,
      PRE => block_count_done1,
      Q => sd_cmd_d(0)
    );
\sd_cmd_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => sd_cmd_d(0),
      Q => sd_cmd_d(1),
      S => block_count_done1
    );
\sd_cmd_d_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => sd_cmd_d(1),
      Q => sd_cmd_i_sys,
      S => block_count_done1
    );
sd_cmd_o_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_cmd_o_sys,
      PRE => block_count_done1,
      Q => sd_cmd_o
    );
sd_cmd_t_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_cmd_t_sys,
      PRE => block_count_done1,
      Q => sd_cmd_t
    );
\sd_dat_d_reg[0][0]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_i(0),
      PRE => block_count_done1,
      Q => \sd_dat_d_reg[0]\(0)
    );
\sd_dat_d_reg[0][1]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_i(1),
      PRE => block_count_done1,
      Q => \sd_dat_d_reg[0]\(1)
    );
\sd_dat_d_reg[0][2]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_i(2),
      PRE => block_count_done1,
      Q => \sd_dat_d_reg[0]\(2)
    );
\sd_dat_d_reg[0][3]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_i(3),
      PRE => block_count_done1,
      Q => \sd_dat_d_reg[0]\(3)
    );
\sd_dat_d_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[0]\(0),
      Q => \sd_dat_d_reg[1]\(0),
      S => block_count_done1
    );
\sd_dat_d_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[0]\(1),
      Q => \sd_dat_d_reg[1]\(1),
      S => block_count_done1
    );
\sd_dat_d_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[0]\(2),
      Q => \sd_dat_d_reg[1]\(2),
      S => block_count_done1
    );
\sd_dat_d_reg[1][3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[0]\(3),
      Q => \sd_dat_d_reg[1]\(3),
      S => block_count_done1
    );
\sd_dat_d_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[1]\(0),
      Q => \sd_dat_d_reg_n_0_[2][0]\,
      S => block_count_done1
    );
\sd_dat_d_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[1]\(1),
      Q => \sd_dat_d_reg_n_0_[2][1]\,
      S => block_count_done1
    );
\sd_dat_d_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[1]\(2),
      Q => \sd_dat_d_reg_n_0_[2][2]\,
      S => block_count_done1
    );
\sd_dat_d_reg[2][3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sd_dat_d_reg[1]\(3),
      Q => \sd_dat_d_reg_n_0_[2][3]\,
      S => block_count_done1
    );
\sd_dat_o_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_o_sys(0),
      PRE => block_count_done1,
      Q => sd_dat_o(0)
    );
\sd_dat_o_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_o_sys(1),
      PRE => block_count_done1,
      Q => sd_dat_o(1)
    );
\sd_dat_o_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_o_sys(2),
      PRE => block_count_done1,
      Q => sd_dat_o(2)
    );
\sd_dat_o_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_o_sys(3),
      PRE => block_count_done1,
      Q => sd_dat_o(3)
    );
\sd_dat_t_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_t_sys(3),
      PRE => block_count_done1,
      Q => sd_dat_t(0)
    );
\sd_dat_t_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_t_sys(3),
      PRE => block_count_done1,
      Q => sd_dat_t(1)
    );
\sd_dat_t_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_t_sys(3),
      PRE => block_count_done1,
      Q => sd_dat_t(2)
    );
\sd_dat_t_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk_i,
      CE => '1',
      D => sd_dat_t_sys(3),
      PRE => block_count_done1,
      Q => sd_dat_t(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_device is
  port (
    \reg_saved_in[10]_5\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    cmd_arg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_tlast : out STD_LOGIC;
    out_tvalid : out STD_LOGIC;
    in_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sd_cmd_o : out STD_LOGIC;
    sd_cmd_t : out STD_LOGIC;
    sd_dat_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_saved_in[9]_6\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    fifo_out_resetn : out STD_LOGIC;
    fifo_in_resetn : out STD_LOGIC;
    sd_dat3_pullup_off : out STD_LOGIC;
    ram_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \got_cmd0_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_out_tready_masked : out STD_LOGIC;
    fifo_out_tvalid_masked : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \reg_saved_reg[11][18]\ : out STD_LOGIC_VECTOR ( 18 downto 0 );
    \latched_status_bits_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \saved_cmd_arg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_erase_vars[0].erase_vars_reg[0][31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_erase_vars[1].erase_vars_reg[1][31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_block_limit_vars[1].block_limit_vars_reg[1][22]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    fifo_out_almostfull : in STD_LOGIC;
    out_tready : in STD_LOGIC;
    in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_tlast : in STD_LOGIC;
    in_tvalid : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    sd_cmd_i : in STD_LOGIC;
    sd_dat_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    \card_status_reg[31]\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \card_status_reg[31]_0\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \reg_clear_always[21]_13\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fifo_out_tready_in : in STD_LOGIC;
    fifo_out_tvalid_in : in STD_LOGIC;
    \assign_reg_mux[2].reg_needed.mux_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dev_ram_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    interrupt_INST_0_i_2 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[18]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[18]_0\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \assign_reg_mux[2].reg_needed.mux_reg[14]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \ocr_high_byte_reg[31]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \size_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_device : entity is "device";
end block_design_sd_card_0_device;

architecture STRUCTURE of block_design_sd_card_0_device is
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal acmd_defined_c : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0\ : STD_LOGIC;
  signal block_size_exp0 : STD_LOGIC;
  signal block_type_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal card_status_keeper_n_27 : STD_LOGIC;
  signal card_status_keeper_n_45 : STD_LOGIC;
  signal card_status_keeper_n_47 : STD_LOGIC;
  signal card_status_keeper_n_48 : STD_LOGIC;
  signal card_status_keeper_n_49 : STD_LOGIC;
  signal card_status_keeper_n_50 : STD_LOGIC;
  signal card_status_keeper_n_51 : STD_LOGIC;
  signal card_status_keeper_n_52 : STD_LOGIC;
  signal card_status_keeper_n_53 : STD_LOGIC;
  signal card_status_keeper_n_54 : STD_LOGIC;
  signal card_status_keeper_n_55 : STD_LOGIC;
  signal card_status_keeper_n_56 : STD_LOGIC;
  signal card_status_keeper_n_57 : STD_LOGIC;
  signal card_status_keeper_n_58 : STD_LOGIC;
  signal card_status_keeper_n_59 : STD_LOGIC;
  signal card_status_keeper_n_60 : STD_LOGIC;
  signal card_status_keeper_n_61 : STD_LOGIC;
  signal card_status_keeper_n_62 : STD_LOGIC;
  signal card_status_keeper_n_63 : STD_LOGIC;
  signal card_status_next2_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal card_status_resp : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal card_status_resp_next : STD_LOGIC_VECTOR ( 28 downto 5 );
  signal cc_error : STD_LOGIC;
  signal cmd8_vhs_match : STD_LOGIC;
  signal \^cmd_arg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_crc_err_stb : STD_LOGIC;
  signal cmd_crc_err_stb0 : STD_LOGIC;
  signal cmd_ignored_stb : STD_LOGIC;
  signal cmd_ignored_stb0 : STD_LOGIC;
  signal cmd_illegal_stb : STD_LOGIC;
  signal cmd_illegal_stb0 : STD_LOGIC;
  signal cmd_info_keeper_n_14 : STD_LOGIC;
  signal cmd_info_keeper_n_15 : STD_LOGIC;
  signal cmd_info_keeper_n_18 : STD_LOGIC;
  signal cmd_info_keeper_n_19 : STD_LOGIC;
  signal cmd_info_keeper_n_20 : STD_LOGIC;
  signal cmd_info_keeper_n_21 : STD_LOGIC;
  signal cmd_info_keeper_n_22 : STD_LOGIC;
  signal cmd_info_keeper_n_23 : STD_LOGIC;
  signal cmd_info_keeper_n_33 : STD_LOGIC;
  signal cmd_read_crc_err : STD_LOGIC;
  signal cmd_received : STD_LOGIC;
  signal cmd_received_good : STD_LOGIC;
  signal command_validator_n_13 : STD_LOGIC;
  signal command_validator_n_2 : STD_LOGIC;
  signal command_validator_n_24 : STD_LOGIC;
  signal command_validator_n_27 : STD_LOGIC;
  signal command_validator_n_28 : STD_LOGIC;
  signal command_validator_n_29 : STD_LOGIC;
  signal command_validator_n_3 : STD_LOGIC;
  signal command_validator_n_30 : STD_LOGIC;
  signal command_validator_n_32 : STD_LOGIC;
  signal command_validator_n_33 : STD_LOGIC;
  signal command_validator_n_34 : STD_LOGIC;
  signal command_validator_n_35 : STD_LOGIC;
  signal command_validator_n_36 : STD_LOGIC;
  signal command_validator_n_37 : STD_LOGIC;
  signal command_validator_n_38 : STD_LOGIC;
  signal command_validator_n_39 : STD_LOGIC;
  signal command_validator_n_4 : STD_LOGIC;
  signal command_validator_n_40 : STD_LOGIC;
  signal command_validator_n_41 : STD_LOGIC;
  signal command_validator_n_47 : STD_LOGIC;
  signal command_validator_n_48 : STD_LOGIC;
  signal command_validator_n_49 : STD_LOGIC;
  signal command_validator_n_50 : STD_LOGIC;
  signal command_validator_n_51 : STD_LOGIC;
  signal command_validator_n_52 : STD_LOGIC;
  signal command_validator_n_53 : STD_LOGIC;
  signal command_validator_n_6 : STD_LOGIC;
  signal command_validator_n_7 : STD_LOGIC;
  signal dat_block_done : STD_LOGIC;
  signal dat_block_size_exp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dat_block_type : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dat_busy_out : STD_LOGIC;
  signal dat_controller_n_6 : STD_LOGIC;
  signal dat_controller_n_7 : STD_LOGIC;
  signal dat_controller_n_8 : STD_LOGIC;
  signal dat_done : STD_LOGIC;
  signal dat_done_new : STD_LOGIC;
  signal dat_error_code : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dat_read_mode : STD_LOGIC;
  signal dat_resetn : STD_LOGIC;
  signal dat_width_4 : STD_LOGIC;
  signal erase_reset : STD_LOGIC;
  signal erase_seq_error : STD_LOGIC;
  signal got_cmd8 : STD_LOGIC;
  signal got_new_cmd12 : STD_LOGIC;
  signal ignored_c : STD_LOGIC;
  signal inactive_keeper_n_1 : STD_LOGIC;
  signal inactive_keeper_n_10 : STD_LOGIC;
  signal inactive_keeper_n_11 : STD_LOGIC;
  signal inactive_keeper_n_12 : STD_LOGIC;
  signal inactive_keeper_n_13 : STD_LOGIC;
  signal inactive_keeper_n_14 : STD_LOGIC;
  signal inactive_keeper_n_15 : STD_LOGIC;
  signal inactive_keeper_n_16 : STD_LOGIC;
  signal inactive_keeper_n_17 : STD_LOGIC;
  signal inactive_keeper_n_18 : STD_LOGIC;
  signal inactive_keeper_n_19 : STD_LOGIC;
  signal inactive_keeper_n_20 : STD_LOGIC;
  signal inactive_keeper_n_21 : STD_LOGIC;
  signal inactive_keeper_n_22 : STD_LOGIC;
  signal inactive_keeper_n_23 : STD_LOGIC;
  signal inactive_keeper_n_24 : STD_LOGIC;
  signal inactive_keeper_n_25 : STD_LOGIC;
  signal inactive_keeper_n_26 : STD_LOGIC;
  signal inactive_keeper_n_27 : STD_LOGIC;
  signal inactive_keeper_n_28 : STD_LOGIC;
  signal inactive_keeper_n_29 : STD_LOGIC;
  signal inactive_keeper_n_3 : STD_LOGIC;
  signal inactive_keeper_n_30 : STD_LOGIC;
  signal inactive_keeper_n_31 : STD_LOGIC;
  signal inactive_keeper_n_32 : STD_LOGIC;
  signal inactive_keeper_n_33 : STD_LOGIC;
  signal inactive_keeper_n_34 : STD_LOGIC;
  signal inactive_keeper_n_35 : STD_LOGIC;
  signal inactive_keeper_n_36 : STD_LOGIC;
  signal inactive_keeper_n_37 : STD_LOGIC;
  signal inactive_keeper_n_38 : STD_LOGIC;
  signal inactive_keeper_n_39 : STD_LOGIC;
  signal inactive_keeper_n_40 : STD_LOGIC;
  signal inactive_keeper_n_41 : STD_LOGIC;
  signal inactive_keeper_n_42 : STD_LOGIC;
  signal inactive_keeper_n_43 : STD_LOGIC;
  signal inactive_keeper_n_44 : STD_LOGIC;
  signal inactive_keeper_n_45 : STD_LOGIC;
  signal inactive_keeper_n_46 : STD_LOGIC;
  signal inactive_keeper_n_47 : STD_LOGIC;
  signal inactive_keeper_n_48 : STD_LOGIC;
  signal inactive_keeper_n_49 : STD_LOGIC;
  signal inactive_keeper_n_5 : STD_LOGIC;
  signal inactive_keeper_n_50 : STD_LOGIC;
  signal inactive_keeper_n_6 : STD_LOGIC;
  signal inactive_keeper_n_7 : STD_LOGIC;
  signal inactive_keeper_n_8 : STD_LOGIC;
  signal initialization_done : STD_LOGIC;
  signal interrupt_INST_0_i_1_n_0 : STD_LOGIC;
  signal invalid_dat_width : STD_LOGIC;
  signal is_inactive : STD_LOGIC;
  signal \^latched_status_bits_reg[15]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal new_cmd : STD_LOGIC;
  signal new_cmd_saved : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[24]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[25]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[26]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[27]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[28]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[29]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[30]\ : STD_LOGIC;
  signal out_of_range : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \^ram_addr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal range_check_n_2 : STD_LOGIC;
  signal rca_keeper_n_1 : STD_LOGIC;
  signal rca_keeper_n_2 : STD_LOGIC;
  signal rca_keeper_n_3 : STD_LOGIC;
  signal rca_keeper_n_4 : STD_LOGIC;
  signal rca_keeper_n_5 : STD_LOGIC;
  signal rca_keeper_n_6 : STD_LOGIC;
  signal rca_keeper_n_7 : STD_LOGIC;
  signal rca_keeper_n_8 : STD_LOGIC;
  signal rca_keeper_n_9 : STD_LOGIC;
  signal rca_match : STD_LOGIC;
  signal \^reg_saved_in[10]_5\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^reg_saved_in[9]_6\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal resetn_0 : STD_LOGIC;
  signal resp_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal resp_cur : STD_LOGIC_VECTOR ( 1 to 1 );
  signal resp_len_bytes : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal resp_len_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal resp_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal resp_no_crc : STD_LOGIC;
  signal resp_no_crc_next : STD_LOGIC;
  signal resp_pos : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal responder_n_10 : STD_LOGIC;
  signal responder_n_20 : STD_LOGIC;
  signal responder_n_21 : STD_LOGIC;
  signal responder_n_6 : STD_LOGIC;
  signal responder_n_8 : STD_LOGIC;
  signal responder_n_9 : STD_LOGIC;
  signal \^sd_dat3_pullup_off\ : STD_LOGIC;
  signal send_no_resp : STD_LOGIC;
  signal send_no_resp0 : STD_LOGIC;
  signal send_resp : STD_LOGIC;
  signal sent_r1 : STD_LOGIC;
  signal set_dat3_pullup_n_1 : STD_LOGIC;
  signal \size_reg_n_0_[0]\ : STD_LOGIC;
  signal \size_reg_n_0_[10]\ : STD_LOGIC;
  signal \size_reg_n_0_[11]\ : STD_LOGIC;
  signal \size_reg_n_0_[12]\ : STD_LOGIC;
  signal \size_reg_n_0_[13]\ : STD_LOGIC;
  signal \size_reg_n_0_[14]\ : STD_LOGIC;
  signal \size_reg_n_0_[15]\ : STD_LOGIC;
  signal \size_reg_n_0_[16]\ : STD_LOGIC;
  signal \size_reg_n_0_[17]\ : STD_LOGIC;
  signal \size_reg_n_0_[18]\ : STD_LOGIC;
  signal \size_reg_n_0_[19]\ : STD_LOGIC;
  signal \size_reg_n_0_[1]\ : STD_LOGIC;
  signal \size_reg_n_0_[20]\ : STD_LOGIC;
  signal \size_reg_n_0_[21]\ : STD_LOGIC;
  signal \size_reg_n_0_[22]\ : STD_LOGIC;
  signal \size_reg_n_0_[23]\ : STD_LOGIC;
  signal \size_reg_n_0_[24]\ : STD_LOGIC;
  signal \size_reg_n_0_[25]\ : STD_LOGIC;
  signal \size_reg_n_0_[26]\ : STD_LOGIC;
  signal \size_reg_n_0_[27]\ : STD_LOGIC;
  signal \size_reg_n_0_[28]\ : STD_LOGIC;
  signal \size_reg_n_0_[29]\ : STD_LOGIC;
  signal \size_reg_n_0_[2]\ : STD_LOGIC;
  signal \size_reg_n_0_[30]\ : STD_LOGIC;
  signal \size_reg_n_0_[31]\ : STD_LOGIC;
  signal \size_reg_n_0_[3]\ : STD_LOGIC;
  signal \size_reg_n_0_[4]\ : STD_LOGIC;
  signal \size_reg_n_0_[5]\ : STD_LOGIC;
  signal \size_reg_n_0_[6]\ : STD_LOGIC;
  signal \size_reg_n_0_[7]\ : STD_LOGIC;
  signal \size_reg_n_0_[8]\ : STD_LOGIC;
  signal \size_reg_n_0_[9]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal update_1 : STD_LOGIC;
  signal update_2 : STD_LOGIC;
  signal valid_c1_out : STD_LOGIC;
  signal NLW_sd_bus_interface_cmd_resp_done_UNCONNECTED : STD_LOGIC;
  signal NLW_sd_bus_interface_cmd_resp_timeout_UNCONNECTED : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \assign_reg_mux[2].reg_needed.mux[14]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \latched_status_bits[14]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \latched_status_bits[4]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \latched_status_bits[5]_i_1\ : label is "soft_lutpair98";
  attribute cmd_resp_len_max : integer;
  attribute cmd_resp_len_max of sd_bus_interface : label is 17;
  attribute dat_word_size : integer;
  attribute dat_word_size of sd_bus_interface : label is 8;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  cmd_arg(31 downto 0) <= \^cmd_arg\(31 downto 0);
  \latched_status_bits_reg[15]\(7 downto 0) <= \^latched_status_bits_reg[15]\(7 downto 0);
  ram_addr(4 downto 0) <= \^ram_addr\(4 downto 0);
  \reg_saved_in[10]_5\(13 downto 0) <= \^reg_saved_in[10]_5\(13 downto 0);
  \reg_saved_in[9]_6\(30 downto 0) <= \^reg_saved_in[9]_6\(30 downto 0);
  sd_dat3_pullup_off <= \^sd_dat3_pullup_off\;
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state_next__0\(0),
      Q => state(0),
      S => p_0_in
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state_next__0\(1),
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => p_0_in
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state_next__0\(2),
      Q => state(2),
      R => p_0_in
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state_next__0\(3),
      Q => state(3),
      R => p_0_in
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state_next__0\(4),
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => p_0_in
    );
\assign_reg_mux[2].reg_needed.mux[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(14),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(13),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[14]\(13),
      I4 => s_axi_araddr(1),
      I5 => \assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0\,
      O => \reg_saved_reg[11][18]\(14)
    );
\assign_reg_mux[2].reg_needed.mux[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_done_new,
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(6),
      O => \assign_reg_mux[2].reg_needed.mux[14]_i_2_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFA0CFA0CFA0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(15),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(14),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(7),
      I5 => dat_block_done,
      O => \reg_saved_reg[11][18]\(15)
    );
\assign_reg_mux[2].reg_needed.mux[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(16),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(15),
      I2 => s_axi_araddr(0),
      I3 => dat_error_code(0),
      I4 => s_axi_araddr(1),
      O => \reg_saved_reg[11][18]\(16)
    );
\assign_reg_mux[2].reg_needed.mux[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(17),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(16),
      I2 => s_axi_araddr(0),
      I3 => dat_error_code(1),
      I4 => s_axi_araddr(1),
      O => \reg_saved_reg[11][18]\(17)
    );
\assign_reg_mux[2].reg_needed.mux[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(18),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(17),
      I2 => s_axi_araddr(0),
      I3 => dat_error_code(2),
      I4 => s_axi_araddr(1),
      O => \reg_saved_reg[11][18]\(18)
    );
\assign_reg_mux[2].reg_needed.mux[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(4),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(4),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[14]\(4),
      I4 => s_axi_araddr(1),
      I5 => \assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0\,
      O => \reg_saved_reg[11][18]\(4)
    );
\assign_reg_mux[2].reg_needed.mux[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => new_cmd,
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(2),
      O => \assign_reg_mux[2].reg_needed.mux[4]_i_2_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[18]\(5),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(5),
      I2 => s_axi_araddr(0),
      I3 => \assign_reg_mux[2].reg_needed.mux_reg[14]\(5),
      I4 => s_axi_araddr(1),
      I5 => \^latched_status_bits_reg[15]\(3),
      O => \reg_saved_reg[11][18]\(5)
    );
card_status_keeper: entity work.block_design_sd_card_0_card_status_keeper
     port map (
      D(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      Q(26 downto 8) => \^reg_saved_in[9]_6\(30 downto 12),
      Q(7 downto 0) => \^reg_saved_in[9]_6\(7 downto 0),
      SR(0) => p_0_in,
      acmd_defined_c => acmd_defined_c,
      acmd_defined_reg => command_validator_n_28,
      \card_status[10]_i_2_0\(0) => \^cmd_arg\(0),
      \card_status_reg[10]_0\ => card_status_keeper_n_47,
      \card_status_reg[10]_1\ => card_status_keeper_n_61,
      \card_status_reg[10]_2\ => card_status_keeper_n_62,
      \card_status_reg[10]_3\ => cmd_info_keeper_n_23,
      \card_status_reg[10]_4\ => command_validator_n_2,
      \card_status_reg[10]_5\ => command_validator_n_7,
      \card_status_reg[11]_0\(2 downto 0) => \^reg_saved_in[9]_6\(11 downto 9),
      \card_status_reg[11]_1\ => card_status_keeper_n_63,
      \card_status_reg[11]_2\ => rca_keeper_n_1,
      \card_status_reg[11]_3\ => cmd_info_keeper_n_15,
      \card_status_reg[23]_0\(9 downto 8) => card_status_next2_out(23 downto 22),
      \card_status_reg[23]_0\(7) => card_status_next2_out(19),
      \card_status_reg[23]_0\(6) => card_status_next2_out(7),
      \card_status_reg[23]_0\(5 downto 0) => card_status_next2_out(5 downto 0),
      \card_status_reg[31]_0\(16 downto 9) => \card_status_reg[31]\(26 downto 19),
      \card_status_reg[31]_0\(8 downto 7) => \card_status_reg[31]\(16 downto 15),
      \card_status_reg[31]_0\(6 downto 1) => \card_status_reg[31]\(13 downto 8),
      \card_status_reg[31]_0\(0) => \card_status_reg[31]\(6),
      \card_status_reg[31]_1\ => range_check_n_2,
      \card_status_reg[31]_2\(16 downto 9) => \card_status_reg[31]_0\(26 downto 19),
      \card_status_reg[31]_2\(8 downto 7) => \card_status_reg[31]_0\(16 downto 15),
      \card_status_reg[31]_2\(6 downto 1) => \card_status_reg[31]_0\(13 downto 8),
      \card_status_reg[31]_2\(0) => \card_status_reg[31]_0\(6),
      \card_status_reg[5]_0\ => card_status_keeper_n_45,
      \card_status_reg[9]_0\ => card_status_keeper_n_48,
      \card_status_reg[9]_1\ => inactive_keeper_n_5,
      \card_status_reg[9]_2\ => cmd_info_keeper_n_33,
      \card_status_resp_reg[23]_0\(11 downto 10) => card_status_resp(23 downto 22),
      \card_status_resp_reg[23]_0\(9) => card_status_resp(19),
      \card_status_resp_reg[23]_0\(8 downto 3) => card_status_resp(11 downto 6),
      \card_status_resp_reg[23]_0\(2) => card_status_resp(3),
      \card_status_resp_reg[23]_0\(1 downto 0) => card_status_resp(1 downto 0),
      \card_status_resp_reg[28]_0\(3) => card_status_resp_next(28),
      \card_status_resp_reg[28]_0\(2) => card_status_resp_next(13),
      \card_status_resp_reg[28]_0\(1) => \^reg_saved_in[9]_6\(8),
      \card_status_resp_reg[28]_0\(0) => card_status_resp_next(5),
      \card_status_resp_reg[2]_0\ => card_status_keeper_n_59,
      \card_status_resp_reg[5]_0\ => card_status_keeper_n_60,
      cc_error_out => cc_error,
      clk => clk,
      cmd8_vhs_match => cmd8_vhs_match,
      cmd_crc_err_stb => cmd_crc_err_stb,
      cmd_ignored_stb => cmd_ignored_stb,
      cmd_illegal_stb => cmd_illegal_stb,
      cmd_illegal_stb_reg => card_status_keeper_n_58,
      \cmd_index_reg[0]\ => card_status_keeper_n_27,
      \cmd_index_reg[4]\ => card_status_keeper_n_50,
      cmd_resp_pos(2 downto 0) => resp_pos(2 downto 0),
      dat_done => dat_done,
      dat_resetn => dat_resetn,
      dev_ram_data(7 downto 0) => dev_ram_data(7 downto 0),
      \dev_ram_data_reg[0]\ => card_status_keeper_n_51,
      \dev_ram_data_reg[1]\ => card_status_keeper_n_52,
      \dev_ram_data_reg[2]\ => card_status_keeper_n_53,
      \dev_ram_data_reg[3]\ => card_status_keeper_n_54,
      \dev_ram_data_reg[4]\ => card_status_keeper_n_49,
      \dev_ram_data_reg[5]\ => card_status_keeper_n_55,
      \dev_ram_data_reg[6]\ => card_status_keeper_n_56,
      \dev_ram_data_reg[7]\ => card_status_keeper_n_57,
      erase_reset => erase_reset,
      erase_seq_error => erase_seq_error,
      fifo_out_almostfull => fifo_out_almostfull,
      ignored_c => ignored_c,
      ignored_reg => command_validator_n_39,
      ignored_reg_0 => command_validator_n_37,
      ignored_reg_1 => command_validator_n_34,
      illegal_reg => command_validator_n_24,
      illegal_reg_0 => command_validator_n_35,
      initialization_done => initialization_done,
      invalid_dat_width => invalid_dat_width,
      out_of_range => out_of_range,
      rca_match => rca_match,
      \reg_clear_always[21]_13\(0) => \reg_clear_always[21]_13\(0),
      \resp_byte_reg[2]\ => rca_keeper_n_7,
      \resp_byte_reg[2]_0\ => responder_n_20,
      \resp_byte_reg[4]\ => responder_n_10,
      \resp_byte_reg[4]_0\(1) => resp_cur(1),
      \resp_byte_reg[4]_0\(0) => \^ram_addr\(4),
      \resp_byte_reg[5]\ => rca_keeper_n_5,
      \resp_byte_reg[5]_0\ => responder_n_21,
      sent_r1 => sent_r1,
      update_2 => update_2,
      valid_c1_out => valid_c1_out,
      valid_reg => command_validator_n_30,
      valid_reg_0 => command_validator_n_38,
      valid_reg_i_4_0 => command_validator_n_27,
      valid_reg_i_4_1 => cmd_info_keeper_n_20
    );
cmd_crc_err_stb_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cmd_read_crc_err,
      I1 => cmd_received,
      O => cmd_crc_err_stb0
    );
cmd_crc_err_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_crc_err_stb0,
      Q => cmd_crc_err_stb,
      R => p_0_in
    );
cmd_ignored_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_ignored_stb0,
      Q => cmd_ignored_stb,
      R => p_0_in
    );
cmd_illegal_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_illegal_stb0,
      Q => cmd_illegal_stb,
      R => p_0_in
    );
cmd_info_keeper: entity work.block_design_sd_card_0_cmd_info_keeper
     port map (
      D(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      E(0) => p_9_out,
      Q(31 downto 0) => \^q\(31 downto 0),
      SR(0) => p_0_in,
      \assign_reg_mux[2].reg_needed.mux_reg[11]\(5 downto 3) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(11 downto 9),
      \assign_reg_mux[2].reg_needed.mux_reg[11]\(2) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(6),
      \assign_reg_mux[2].reg_needed.mux_reg[11]\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(3 downto 2),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(5 downto 3) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(11 downto 9),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(2) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(6),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_0\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(3 downto 2),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(5 downto 3) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(10 downto 8),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(2) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(6),
      \assign_reg_mux[2].reg_needed.mux_reg[11]_1\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(3 downto 2),
      \block_type_reg[0]\ => dat_controller_n_6,
      \block_type_reg[0]_0\ => responder_n_6,
      cc_error_out => cc_error,
      clk => clk,
      cmd_crc_err => cmd_read_crc_err,
      cmd_discard_block_limit_reg_0 => command_validator_n_29,
      \cmd_index_reg[0]\ => cmd_info_keeper_n_14,
      \cmd_index_reg[0]_0\ => cmd_info_keeper_n_20,
      \cmd_index_reg[0]_1\ => cmd_info_keeper_n_22,
      \cmd_index_reg[2]\ => cmd_info_keeper_n_19,
      \cmd_index_reg[3]\ => cmd_info_keeper_n_21,
      \cmd_index_reg[4]\ => cmd_info_keeper_n_18,
      cmd_received_good => cmd_received_good,
      dat_width_4 => dat_width_4,
      dat_width_4_reg_0 => range_check_n_2,
      dat_width_4_reg_1 => command_validator_n_2,
      dat_width_4_reg_2 => command_validator_n_7,
      erase_reset => erase_reset,
      erase_reset_reg_0 => command_validator_n_36,
      erase_seq_error => erase_seq_error,
      erase_seq_error_reg_0 => cmd_info_keeper_n_15,
      erase_seq_error_reg_1(1) => card_status_resp_next(28),
      erase_seq_error_reg_1(0) => card_status_resp_next(13),
      erase_seq_error_reg_2 => command_validator_n_3,
      \erase_step_reg[1]_0\ => command_validator_n_4,
      got_cmd8 => got_cmd8,
      got_cmd8_reg_0 => command_validator_n_50,
      got_new_cmd => cmd_received,
      got_new_cmd12 => got_new_cmd12,
      interrupt => interrupt,
      interrupt_0 => interrupt_INST_0_i_1_n_0,
      interrupt_1(2) => interrupt_INST_0_i_2(3),
      interrupt_1(1 downto 0) => interrupt_INST_0_i_2(1 downto 0),
      interrupt_2 => inactive_keeper_n_50,
      invalid_dat_width => invalid_dat_width,
      invalid_dat_width_reg_0 => cmd_info_keeper_n_23,
      invalid_dat_width_reg_1 => command_validator_n_40,
      \latched_status_bits_reg[6]\(2) => \^latched_status_bits_reg[15]\(4),
      \latched_status_bits_reg[6]\(1 downto 0) => \^latched_status_bits_reg[15]\(1 downto 0),
      \latched_status_bits_reg[6]_0\(4 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[15]\(4 downto 0),
      new_cmd => new_cmd,
      new_cmd_saved => new_cmd_saved,
      new_cmd_saved_reg_0 => cmd_info_keeper_n_33,
      out_of_range => out_of_range,
      \reg_saved_in[10]_5\(6 downto 0) => \^reg_saved_in[10]_5\(6 downto 0),
      \reg_saved_in[9]_6\(1) => \^reg_saved_in[9]_6\(27),
      \reg_saved_in[9]_6\(0) => \^reg_saved_in[9]_6\(12),
      \reg_saved_reg[11][11]\(5 downto 3) => \reg_saved_reg[11][18]\(11 downto 9),
      \reg_saved_reg[11][11]\(2) => \reg_saved_reg[11][18]\(6),
      \reg_saved_reg[11][11]\(1 downto 0) => \reg_saved_reg[11][18]\(3 downto 2),
      resetn_0 => resetn_0,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \save_block_limit_vars[0].block_limit_vars_reg[0][31]_0\(31 downto 0) => \^cmd_arg\(31 downto 0),
      \save_block_limit_vars[0].block_limit_vars_used_reg[0]_0\(0) => block_type_next(0),
      \save_block_limit_vars[0].save_reg_0\ => command_validator_n_33,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]_0\(22 downto 0) => \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(22 downto 0),
      \save_block_limit_vars[1].save_reg_0\ => command_validator_n_32,
      \save_erase_vars[0].erase_vars_reg[0][31]_0\(31 downto 0) => \save_erase_vars[0].erase_vars_reg[0][31]\(31 downto 0),
      \save_erase_vars[1].erase_vars_reg[1][31]_0\(31 downto 0) => \save_erase_vars[1].erase_vars_reg[1][31]\(31 downto 0),
      \save_erase_vars[1].erase_vars_reg[1][31]_1\(0) => p_8_out,
      \saved_cmd_arg_reg[31]_0\(31 downto 0) => \saved_cmd_arg_reg[31]\(31 downto 0),
      saved_cmd_is_acmd_reg_0 => \^reg_saved_in[10]_5\(13),
      update_1 => update_1
    );
command_validator: entity work.block_design_sd_card_0_command_validator
     port map (
      D(4 downto 0) => \state_next__0\(4 downto 0),
      E(0) => block_size_exp0,
      \FSM_onehot_state_reg[1]\ => command_validator_n_6,
      \FSM_onehot_state_reg[1]_0\ => command_validator_n_7,
      \FSM_onehot_state_reg[2]\ => command_validator_n_2,
      Q(4) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(3 downto 2) => state(3 downto 2),
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => state(0),
      SR(0) => p_0_in,
      acmd_defined_c => acmd_defined_c,
      acmd_defined_reg_0 => \^reg_saved_in[10]_5\(13),
      acmd_defined_reg_1 => command_validator_n_4,
      acmd_defined_reg_2(1) => resp_next(2),
      acmd_defined_reg_2(0) => resp_next(0),
      acmd_defined_reg_3(0) => card_status_resp_next(5),
      acmd_defined_reg_4 => command_validator_n_36,
      acmd_defined_reg_5 => command_validator_n_40,
      \assign_reg_mux[2].reg_needed.mux_reg[1]\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(1 downto 0),
      \assign_reg_mux[2].reg_needed.mux_reg[1]_0\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(1 downto 0),
      \assign_reg_mux[2].reg_needed.mux_reg[1]_1\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(1 downto 0),
      \block_type_reg[1]\ => dat_controller_n_8,
      \block_type_reg[1]_0\ => dat_controller_n_7,
      \card_status_reg[5]\ => card_status_keeper_n_27,
      \card_status_reg[5]_0\ => card_status_keeper_n_58,
      \card_status_reg[5]_1\(0) => \card_status_reg[31]\(5),
      \card_status_reg[5]_2\(0) => \card_status_reg[31]_0\(5),
      \card_status_resp_reg[5]\ => cmd_info_keeper_n_19,
      clk => clk,
      cmd8_vhs_match => cmd8_vhs_match,
      cmd_arg(3 downto 0) => \^cmd_arg\(11 downto 8),
      cmd_crc_err => cmd_read_crc_err,
      cmd_ignored_stb0 => cmd_ignored_stb0,
      cmd_illegal_stb0 => cmd_illegal_stb0,
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      \cmd_index_reg[0]\(0) => p_8_out,
      \cmd_index_reg[0]_0\ => command_validator_n_28,
      \cmd_index_reg[0]_1\ => command_validator_n_32,
      \cmd_index_reg[0]_2\ => command_validator_n_33,
      \cmd_index_reg[0]_3\ => command_validator_n_37,
      \cmd_index_reg[1]\ => command_validator_n_24,
      \cmd_index_reg[1]_0\ => command_validator_n_35,
      \cmd_index_reg[1]_1\ => command_validator_n_52,
      \cmd_index_reg[3]\(0) => command_validator_n_13,
      \cmd_index_reg[3]_0\(3) => resp_len_next(4),
      \cmd_index_reg[3]_0\(2 downto 0) => resp_len_next(2 downto 0),
      \cmd_index_reg[3]_1\ => command_validator_n_27,
      \cmd_index_reg[3]_2\ => command_validator_n_30,
      \cmd_index_reg[3]_3\ => command_validator_n_41,
      \cmd_index_reg[3]_4\ => command_validator_n_50,
      \cmd_index_reg[4]\ => command_validator_n_34,
      \cmd_index_reg[4]_0\ => command_validator_n_51,
      \cmd_index_reg[5]\(0) => p_9_out,
      \cmd_index_reg[5]_0\ => command_validator_n_38,
      \cmd_index_reg[5]_1\ => command_validator_n_39,
      cmd_received_good => cmd_received_good,
      erase_reset_reg => cmd_info_keeper_n_20,
      erase_seq_error => erase_seq_error,
      erase_seq_error_reg => cmd_info_keeper_n_18,
      erase_seq_error_reg_0 => cmd_info_keeper_n_21,
      got_acmd41_non_query_reg => command_validator_n_49,
      got_acmd41_non_query_reg_0 => inactive_keeper_n_5,
      got_acmd41_non_query_reg_1 => inactive_keeper_n_1,
      got_cmd8 => got_cmd8,
      got_cmd8_reg => cmd_info_keeper_n_22,
      got_new_cmd => cmd_received,
      ignored_c => ignored_c,
      illegal_reg_0 => card_status_keeper_n_45,
      invalid_dat_width_reg => cmd_info_keeper_n_14,
      is_inactive => is_inactive,
      is_inactive_reg => command_validator_n_48,
      is_inactive_reg_0 => inactive_keeper_n_6,
      is_inactive_reg_1 => inactive_keeper_n_7,
      out_of_range_reg => inactive_keeper_n_8,
      rca_match => rca_match,
      \reg_saved_reg[11][1]\(1 downto 0) => \reg_saved_reg[11][18]\(1 downto 0),
      resetn_0 => resetn_0,
      resetn_out_reg => command_validator_n_3,
      resetn_out_reg_0 => command_validator_n_29,
      resetn_out_reg_1 => command_validator_n_47,
      resetn_out_reg_2 => command_validator_n_53,
      resp_no_crc_next => resp_no_crc_next,
      resp_start => send_resp,
      \resp_type_out_reg[1]\(0) => resp_next(1),
      \resp_type_out_reg[5]\ => responder_n_9,
      \resp_type_out_reg[5]_0\ => responder_n_8,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \save_erase_vars[0].erase_vars_reg[0][31]\ => responder_n_6,
      sd_dat3_pullup_off => \^sd_dat3_pullup_off\,
      sd_dat3_pullup_off_reg => set_dat3_pullup_n_1,
      send_no_resp0 => send_no_resp0,
      \set_reg_clear_always[22].reg_clear_always_reg[22][5]\(0) => card_status_next2_out(5),
      update_1 => update_1,
      update_2 => update_2,
      valid_c1_out => valid_c1_out
    );
dat_controller: entity work.block_design_sd_card_0_dat_controller
     port map (
      D(0) => block_type_next(0),
      E(0) => block_size_exp0,
      Q(1 downto 0) => dat_block_type(1 downto 0),
      SR(0) => p_0_in,
      \assign_reg_mux[2].reg_needed.mux_reg[13]\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(13 downto 12),
      \assign_reg_mux[2].reg_needed.mux_reg[13]_0\(0) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(12),
      \assign_reg_mux[2].reg_needed.mux_reg[13]_1\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(12 downto 11),
      \block_size_exp_reg[2]_0\(2 downto 0) => dat_block_size_exp(2 downto 0),
      busy_in => dat_busy_out,
      busy_out_reg_0 => card_status_keeper_n_61,
      clk => clk,
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      \cmd_index_reg[1]\ => dat_controller_n_7,
      \cmd_index_reg[2]\ => dat_controller_n_6,
      \cmd_index_reg[3]\ => dat_controller_n_8,
      dat_read_mode => dat_read_mode,
      dat_resetn => dat_resetn,
      dev_resetn_reg_0 => card_status_keeper_n_47,
      fifo_in_resetn => fifo_in_resetn,
      fifo_out_resetn => fifo_out_resetn,
      fifo_out_tready_in => fifo_out_tready_in,
      fifo_out_tready_masked => fifo_out_tready_masked,
      fifo_out_tvalid_in => fifo_out_tvalid_in,
      fifo_out_tvalid_masked => fifo_out_tvalid_masked,
      got_start_read_reg_0(0) => \assign_reg_mux[2].reg_needed.mux_reg[15]\(0),
      new_cmd_saved => new_cmd_saved,
      reading_reg_0 => card_status_keeper_n_63,
      ready_for_data_reg_0(0) => \^reg_saved_in[9]_6\(8),
      ready_for_data_reg_1 => card_status_keeper_n_62,
      \reg_clear_always[21]_13\(1 downto 0) => \reg_clear_always[21]_13\(2 downto 1),
      \reg_saved_in[9]_6\(0) => \^reg_saved_in[9]_6\(10),
      \reg_saved_reg[11][13]\(1 downto 0) => \reg_saved_reg[11][18]\(13 downto 12),
      resetn_0 => resetn_0,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      writing_reg_0 => card_status_keeper_n_48
    );
got_new_cmd_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => update_2,
      Q => new_cmd,
      R => p_0_in
    );
inactive_keeper: entity work.block_design_sd_card_0_inactive_keeper
     port map (
      CO(0) => p_1_in,
      SR(0) => SR(0),
      \assign_reg_mux[2].reg_needed.mux_reg[8]\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]\(8 downto 7),
      \assign_reg_mux[2].reg_needed.mux_reg[8]_0\(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(8 downto 7),
      \assign_reg_mux[2].reg_needed.mux_reg[8]_1\(0) => \assign_reg_mux[2].reg_needed.mux_reg[14]\(7),
      clk => clk,
      cmd_arg(15 downto 0) => \^cmd_arg\(23 downto 8),
      \cmd_arg_reg[19]\ => inactive_keeper_n_6,
      \cmd_arg_reg[23]\ => inactive_keeper_n_5,
      cmd_crc_err => cmd_read_crc_err,
      cmd_crc_err_reg => inactive_keeper_n_3,
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      \cmd_index_reg[2]\ => inactive_keeper_n_8,
      \cmd_index_reg[4]\ => inactive_keeper_n_7,
      dat_block_done => dat_block_done,
      got_acmd41_non_query_reg_0 => inactive_keeper_n_1,
      got_acmd41_non_query_reg_1 => command_validator_n_49,
      \got_cmd0_reg[0]_0\(0) => \got_cmd0_reg[0]\(0),
      got_new_cmd => cmd_received,
      got_new_cmd12 => got_new_cmd12,
      interrupt_INST_0_i_2_0(3) => interrupt_INST_0_i_2(8),
      interrupt_INST_0_i_2_0(2 downto 0) => interrupt_INST_0_i_2(6 downto 4),
      interrupt_INST_0_i_2_1(2) => \assign_reg_mux[2].reg_needed.mux_reg[15]\(7),
      interrupt_INST_0_i_2_1(1 downto 0) => \assign_reg_mux[2].reg_needed.mux_reg[15]\(5 downto 4),
      is_inactive => is_inactive,
      is_inactive_reg_0 => command_validator_n_48,
      \latched_status_bits_reg[8]\(0) => \^latched_status_bits_reg[15]\(5),
      \ocr_high_byte_reg[31]\(7 downto 0) => \ocr_high_byte_reg[31]_0\(7 downto 0),
      \reg_saved_reg[11][8]\(1 downto 0) => \reg_saved_reg[11][18]\(8 downto 7),
      resetn => resetn,
      resetn_0 => resetn_0,
      resetn_out_reg_0(0) => p_0_in,
      resetn_out_reg_1 => inactive_keeper_n_10,
      resetn_out_reg_10 => inactive_keeper_n_19,
      resetn_out_reg_11 => inactive_keeper_n_20,
      resetn_out_reg_12 => inactive_keeper_n_21,
      resetn_out_reg_13 => inactive_keeper_n_22,
      resetn_out_reg_14 => inactive_keeper_n_23,
      resetn_out_reg_15 => inactive_keeper_n_24,
      resetn_out_reg_16 => inactive_keeper_n_25,
      resetn_out_reg_17 => inactive_keeper_n_26,
      resetn_out_reg_18 => inactive_keeper_n_27,
      resetn_out_reg_19 => inactive_keeper_n_28,
      resetn_out_reg_2 => inactive_keeper_n_11,
      resetn_out_reg_20 => inactive_keeper_n_29,
      resetn_out_reg_21 => inactive_keeper_n_30,
      resetn_out_reg_22 => inactive_keeper_n_31,
      resetn_out_reg_23 => inactive_keeper_n_32,
      resetn_out_reg_24 => inactive_keeper_n_33,
      resetn_out_reg_25 => inactive_keeper_n_34,
      resetn_out_reg_26 => inactive_keeper_n_35,
      resetn_out_reg_27 => inactive_keeper_n_36,
      resetn_out_reg_28 => inactive_keeper_n_37,
      resetn_out_reg_29 => inactive_keeper_n_38,
      resetn_out_reg_3 => inactive_keeper_n_12,
      resetn_out_reg_30 => inactive_keeper_n_39,
      resetn_out_reg_31 => inactive_keeper_n_40,
      resetn_out_reg_32 => inactive_keeper_n_41,
      resetn_out_reg_33 => inactive_keeper_n_42,
      resetn_out_reg_34 => inactive_keeper_n_43,
      resetn_out_reg_35 => inactive_keeper_n_44,
      resetn_out_reg_36 => inactive_keeper_n_45,
      resetn_out_reg_37 => inactive_keeper_n_46,
      resetn_out_reg_38 => inactive_keeper_n_47,
      resetn_out_reg_39 => inactive_keeper_n_48,
      resetn_out_reg_4 => inactive_keeper_n_13,
      resetn_out_reg_40 => inactive_keeper_n_49,
      resetn_out_reg_5 => inactive_keeper_n_14,
      resetn_out_reg_6 => inactive_keeper_n_15,
      resetn_out_reg_7 => inactive_keeper_n_16,
      resetn_out_reg_8 => inactive_keeper_n_17,
      resetn_out_reg_9 => inactive_keeper_n_18,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \set_reg[20].reg_written_reg[20][6]\ => inactive_keeper_n_50,
      \size_reg[31]\(31 downto 0) => \size_reg[31]_0\(31 downto 0)
    );
interrupt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => dat_done_new,
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(6),
      I2 => interrupt_INST_0_i_2(7),
      I3 => new_cmd,
      I4 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(2),
      I5 => interrupt_INST_0_i_2(2),
      O => interrupt_INST_0_i_1_n_0
    );
\latched_status_bits[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(6),
      I1 => dat_done_new,
      O => \^latched_status_bits_reg[15]\(6)
    );
\latched_status_bits[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(7),
      I1 => dat_block_done,
      O => \^latched_status_bits_reg[15]\(7)
    );
\latched_status_bits[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(2),
      I1 => new_cmd,
      O => \^latched_status_bits_reg[15]\(2)
    );
\latched_status_bits[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(3),
      I1 => \assign_reg_mux[2].reg_needed.mux_reg[15]\(2),
      I2 => new_cmd,
      O => \^latched_status_bits_reg[15]\(3)
    );
\ocr_high_byte_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_17,
      Q => \ocr_high_byte_reg_n_0_[24]\,
      R => '0'
    );
\ocr_high_byte_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_16,
      Q => \ocr_high_byte_reg_n_0_[25]\,
      R => '0'
    );
\ocr_high_byte_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_15,
      Q => \ocr_high_byte_reg_n_0_[26]\,
      R => '0'
    );
\ocr_high_byte_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_14,
      Q => \ocr_high_byte_reg_n_0_[27]\,
      R => '0'
    );
\ocr_high_byte_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_13,
      Q => \ocr_high_byte_reg_n_0_[28]\,
      R => '0'
    );
\ocr_high_byte_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_12,
      Q => \ocr_high_byte_reg_n_0_[29]\,
      R => '0'
    );
\ocr_high_byte_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_11,
      Q => \ocr_high_byte_reg_n_0_[30]\,
      R => '0'
    );
\ocr_high_byte_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_10,
      Q => initialization_done,
      R => '0'
    );
ram_reg_r2_0_31_0_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => resp_pos(2),
      I1 => resp_pos(0),
      I2 => resp_pos(1),
      I3 => resp_pos(3),
      O => \^ram_addr\(3)
    );
ram_reg_r2_0_31_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => resp_pos(2),
      I1 => resp_pos(0),
      I2 => resp_pos(1),
      O => \^ram_addr\(2)
    );
ram_reg_r2_0_31_0_5_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => resp_pos(1),
      I1 => resp_pos(0),
      O => \^ram_addr\(1)
    );
ram_reg_r2_0_31_0_5_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resp_pos(0),
      O => \^ram_addr\(0)
    );
range_check: entity work.block_design_sd_card_0_range_check
     port map (
      CO(0) => p_1_in,
      clk => clk,
      cmd_arg(31 downto 0) => \^cmd_arg\(31 downto 0),
      invalid_dat_width => invalid_dat_width,
      out_of_range => out_of_range,
      \out_of_range0_inferred__0/i__carry_0\ => \size_reg_n_0_[1]\,
      \out_of_range0_inferred__0/i__carry_1\ => \size_reg_n_0_[0]\,
      \out_of_range0_inferred__0/i__carry_2\ => \size_reg_n_0_[3]\,
      \out_of_range0_inferred__0/i__carry_3\ => \size_reg_n_0_[2]\,
      \out_of_range0_inferred__0/i__carry_4\ => \size_reg_n_0_[5]\,
      \out_of_range0_inferred__0/i__carry_5\ => \size_reg_n_0_[4]\,
      \out_of_range0_inferred__0/i__carry_6\ => \size_reg_n_0_[7]\,
      \out_of_range0_inferred__0/i__carry_7\ => \size_reg_n_0_[6]\,
      \out_of_range0_inferred__0/i__carry__0_0\ => \size_reg_n_0_[9]\,
      \out_of_range0_inferred__0/i__carry__0_1\ => \size_reg_n_0_[8]\,
      \out_of_range0_inferred__0/i__carry__0_2\ => \size_reg_n_0_[11]\,
      \out_of_range0_inferred__0/i__carry__0_3\ => \size_reg_n_0_[10]\,
      \out_of_range0_inferred__0/i__carry__0_4\ => \size_reg_n_0_[13]\,
      \out_of_range0_inferred__0/i__carry__0_5\ => \size_reg_n_0_[12]\,
      \out_of_range0_inferred__0/i__carry__0_6\ => \size_reg_n_0_[15]\,
      \out_of_range0_inferred__0/i__carry__0_7\ => \size_reg_n_0_[14]\,
      \out_of_range0_inferred__0/i__carry__1_0\ => \size_reg_n_0_[17]\,
      \out_of_range0_inferred__0/i__carry__1_1\ => \size_reg_n_0_[16]\,
      \out_of_range0_inferred__0/i__carry__1_2\ => \size_reg_n_0_[19]\,
      \out_of_range0_inferred__0/i__carry__1_3\ => \size_reg_n_0_[18]\,
      \out_of_range0_inferred__0/i__carry__1_4\ => \size_reg_n_0_[21]\,
      \out_of_range0_inferred__0/i__carry__1_5\ => \size_reg_n_0_[20]\,
      \out_of_range0_inferred__0/i__carry__1_6\ => \size_reg_n_0_[23]\,
      \out_of_range0_inferred__0/i__carry__1_7\ => \size_reg_n_0_[22]\,
      \out_of_range0_inferred__0/i__carry__2_0\ => \size_reg_n_0_[25]\,
      \out_of_range0_inferred__0/i__carry__2_1\ => \size_reg_n_0_[24]\,
      \out_of_range0_inferred__0/i__carry__2_2\ => \size_reg_n_0_[27]\,
      \out_of_range0_inferred__0/i__carry__2_3\ => \size_reg_n_0_[26]\,
      \out_of_range0_inferred__0/i__carry__2_4\ => \size_reg_n_0_[29]\,
      \out_of_range0_inferred__0/i__carry__2_5\ => \size_reg_n_0_[28]\,
      \out_of_range0_inferred__0/i__carry__2_6\ => \size_reg_n_0_[31]\,
      \out_of_range0_inferred__0/i__carry__2_7\ => \size_reg_n_0_[30]\,
      out_of_range_reg_0 => range_check_n_2,
      out_of_range_reg_1 => command_validator_n_41
    );
rca_keeper: entity work.block_design_sd_card_0_rca_keeper
     port map (
      E(0) => command_validator_n_13,
      \card_status_resp_reg[10]\ => rca_keeper_n_7,
      \card_status_resp_reg[11]\ => rca_keeper_n_6,
      \card_status_resp_reg[19]\ => rca_keeper_n_5,
      \card_status_resp_reg[8]\ => rca_keeper_n_9,
      \card_status_resp_reg[9]\ => rca_keeper_n_8,
      clk => clk,
      cmd_arg(15 downto 0) => \^cmd_arg\(31 downto 16),
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      \cmd_index_reg[3]\ => rca_keeper_n_1,
      cmd_resp_pos(2 downto 0) => resp_pos(2 downto 0),
      rca_match => rca_match,
      \rca_reg[0]_0\(0) => p_0_in,
      \rca_reg[14]_0\ => rca_keeper_n_4,
      \rca_reg[15]_0\ => rca_keeper_n_3,
      \rca_reg[4]_0\ => rca_keeper_n_2,
      \resp_byte[7]_i_6\(6 downto 5) => card_status_resp(23 downto 22),
      \resp_byte[7]_i_6\(4) => card_status_resp(19),
      \resp_byte[7]_i_6\(3 downto 0) => card_status_resp(11 downto 8),
      \resp_byte_reg[4]\ => card_status_keeper_n_50
    );
responder: entity work.block_design_sd_card_0_responder
     port map (
      D(0) => resp_next(1),
      E(0) => command_validator_n_6,
      Q(1) => resp_cur(1),
      Q(0) => \^ram_addr\(4),
      \card_status_reg[23]\(8 downto 7) => card_status_next2_out(23 downto 22),
      \card_status_reg[23]\(6) => card_status_next2_out(19),
      \card_status_reg[23]\(5) => card_status_next2_out(7),
      \card_status_reg[23]\(4 downto 0) => card_status_next2_out(4 downto 0),
      \card_status_reg[23]_0\(8 downto 7) => \card_status_reg[31]\(18 downto 17),
      \card_status_reg[23]_0\(6) => \card_status_reg[31]\(14),
      \card_status_reg[23]_0\(5) => \card_status_reg[31]\(7),
      \card_status_reg[23]_0\(4 downto 0) => \card_status_reg[31]\(4 downto 0),
      \card_status_reg[23]_1\(8 downto 7) => \card_status_reg[31]_0\(18 downto 17),
      \card_status_reg[23]_1\(6) => \card_status_reg[31]_0\(14),
      \card_status_reg[23]_1\(5) => \card_status_reg[31]_0\(7),
      \card_status_reg[23]_1\(4 downto 0) => \card_status_reg[31]_0\(4 downto 0),
      clk => clk,
      cmd_arg(7 downto 0) => \^cmd_arg\(7 downto 0),
      cmd_crc_err_stb => cmd_crc_err_stb,
      cmd_illegal_stb => cmd_illegal_stb,
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      \cmd_index_reg[0]\ => responder_n_8,
      \cmd_index_reg[4]\ => responder_n_6,
      \cmd_index_reg[5]\ => responder_n_9,
      cmd_resp_pos(4 downto 0) => resp_pos(4 downto 0),
      initialization_done => initialization_done,
      \ocr_high_byte_reg[26]\ => responder_n_20,
      \ocr_high_byte_reg[29]\ => responder_n_21,
      ram_read_en_reg_0(0) => E(0),
      ram_read_en_reg_1(0) => p_0_in,
      \reg_saved_in[9]_6\(8 downto 7) => \^reg_saved_in[9]_6\(22 downto 21),
      \reg_saved_in[9]_6\(6) => \^reg_saved_in[9]_6\(18),
      \reg_saved_in[9]_6\(5) => \^reg_saved_in[9]_6\(7),
      \reg_saved_in[9]_6\(4 downto 0) => \^reg_saved_in[9]_6\(4 downto 0),
      resetn_0 => resetn_0,
      \resp_byte[0]_i_3_0\ => \ocr_high_byte_reg_n_0_[24]\,
      \resp_byte[1]_i_3_0\ => rca_keeper_n_8,
      \resp_byte[1]_i_5_0\ => \ocr_high_byte_reg_n_0_[25]\,
      \resp_byte[2]_i_3\ => \ocr_high_byte_reg_n_0_[26]\,
      \resp_byte[3]_i_3_0\ => rca_keeper_n_6,
      \resp_byte[3]_i_6_0\ => \ocr_high_byte_reg_n_0_[27]\,
      \resp_byte[5]_i_3\ => \ocr_high_byte_reg_n_0_[29]\,
      \resp_byte[6]_i_3_0\ => \ocr_high_byte_reg_n_0_[30]\,
      \resp_byte[7]_i_3_0\(4 downto 3) => card_status_resp(7 downto 6),
      \resp_byte[7]_i_3_0\(2) => card_status_resp(3),
      \resp_byte[7]_i_3_0\(1 downto 0) => card_status_resp(1 downto 0),
      \resp_byte[7]_i_3_1\ => rca_keeper_n_3,
      \resp_byte_reg[0]_0\ => card_status_keeper_n_51,
      \resp_byte_reg[0]_1\ => rca_keeper_n_9,
      \resp_byte_reg[1]_0\ => card_status_keeper_n_52,
      \resp_byte_reg[2]_0\ => card_status_keeper_n_59,
      \resp_byte_reg[2]_1\ => card_status_keeper_n_53,
      \resp_byte_reg[3]_0\ => card_status_keeper_n_54,
      \resp_byte_reg[4]_0\ => rca_keeper_n_2,
      \resp_byte_reg[4]_1\ => card_status_keeper_n_49,
      \resp_byte_reg[4]_2\ => \ocr_high_byte_reg_n_0_[28]\,
      \resp_byte_reg[5]_0\ => card_status_keeper_n_60,
      \resp_byte_reg[5]_1\ => card_status_keeper_n_55,
      \resp_byte_reg[6]_0\ => card_status_keeper_n_56,
      \resp_byte_reg[6]_1\ => rca_keeper_n_4,
      \resp_byte_reg[7]_0\(7 downto 0) => resp_byte(7 downto 0),
      \resp_byte_reg[7]_1\ => card_status_keeper_n_57,
      \resp_cur_reg[2]_0\(1) => resp_next(2),
      \resp_cur_reg[2]_0\(0) => resp_next(0),
      \resp_len_reg[4]_0\(3) => resp_len_bytes(4),
      \resp_len_reg[4]_0\(2 downto 0) => resp_len_bytes(2 downto 0),
      \resp_len_reg[4]_1\(3) => resp_len_next(4),
      \resp_len_reg[4]_1\(2 downto 0) => resp_len_next(2 downto 0),
      resp_no_crc => resp_no_crc,
      resp_no_crc_next => resp_no_crc_next,
      resp_start => send_resp,
      \resp_type_out_reg[1]_0\ => command_validator_n_53,
      \resp_type_out_reg[5]_0\ => command_validator_n_52,
      send_resp_o_reg_0 => command_validator_n_47,
      sent_r1 => sent_r1,
      \state_reg[4]\ => responder_n_10
    );
sd_bus_interface: entity work.block_design_sd_card_0_sd_bus_interface
     port map (
      busy_in => dat_busy_out,
      cc_error_out => cc_error,
      clk => clk,
      cmd_arg(31 downto 0) => \^cmd_arg\(31 downto 0),
      cmd_crc_err => cmd_read_crc_err,
      cmd_index(5 downto 0) => \^reg_saved_in[10]_5\(12 downto 7),
      cmd_resp_byte(7 downto 0) => resp_byte(7 downto 0),
      cmd_resp_done => NLW_sd_bus_interface_cmd_resp_done_UNCONNECTED,
      cmd_resp_len(4) => resp_len_bytes(4),
      cmd_resp_len(3) => '0',
      cmd_resp_len(2 downto 0) => resp_len_bytes(2 downto 0),
      cmd_resp_pos(4 downto 0) => resp_pos(4 downto 0),
      cmd_resp_timeout => NLW_sd_bus_interface_cmd_resp_timeout_UNCONNECTED,
      dat_block_count_done(31 downto 0) => D(31 downto 0),
      dat_block_done => dat_block_done,
      dat_block_limit(31 downto 0) => \^q\(31 downto 0),
      dat_block_size_exp(2 downto 0) => dat_block_size_exp(2 downto 0),
      dat_block_type(1 downto 0) => dat_block_type(1 downto 0),
      dat_done => dat_done,
      dat_done_new => dat_done_new,
      dat_error_code(2 downto 0) => dat_error_code(2 downto 0),
      dat_read_mode => dat_read_mode,
      dat_resetn => dat_resetn,
      dat_width_4 => dat_width_4,
      fifo_out_almostfull => fifo_out_almostfull,
      got_new_cmd => cmd_received,
      in_tdata(7 downto 0) => in_tdata(7 downto 0),
      in_tlast => in_tlast,
      in_tready => in_tready,
      in_tvalid => in_tvalid,
      out_tdata(7 downto 0) => out_tdata(7 downto 0),
      out_tlast => out_tlast,
      out_tready => out_tready,
      out_tvalid => out_tvalid,
      resetn => resetn_0,
      resp_no_crc => resp_no_crc,
      resp_none => send_no_resp,
      resp_start => send_resp,
      sd_clk_i => sd_clk,
      sd_cmd_i => sd_cmd_i,
      sd_cmd_o => sd_cmd_o,
      sd_cmd_t => sd_cmd_t,
      sd_dat_i(3 downto 0) => sd_dat_i(3 downto 0),
      sd_dat_o(3 downto 0) => sd_dat_o(3 downto 0),
      sd_dat_t(3 downto 0) => sd_dat_t(3 downto 0)
    );
send_no_resp_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => send_no_resp0,
      Q => send_no_resp,
      R => p_0_in
    );
set_dat3_pullup: entity work.block_design_sd_card_0_set_dat3_pullup
     port map (
      clk => clk,
      cmd_index(3) => \^reg_saved_in[10]_5\(12),
      cmd_index(2) => \^reg_saved_in[10]_5\(10),
      cmd_index(1 downto 0) => \^reg_saved_in[10]_5\(8 downto 7),
      \cmd_index_reg[1]\ => set_dat3_pullup_n_1,
      sd_dat3_pullup_off => \^sd_dat3_pullup_off\,
      sd_dat3_pullup_off_reg_0(0) => p_0_in,
      sd_dat3_pullup_off_reg_1 => command_validator_n_51
    );
\size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_49,
      Q => \size_reg_n_0_[0]\,
      R => '0'
    );
\size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_39,
      Q => \size_reg_n_0_[10]\,
      R => '0'
    );
\size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_38,
      Q => \size_reg_n_0_[11]\,
      R => '0'
    );
\size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_37,
      Q => \size_reg_n_0_[12]\,
      R => '0'
    );
\size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_36,
      Q => \size_reg_n_0_[13]\,
      R => '0'
    );
\size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_35,
      Q => \size_reg_n_0_[14]\,
      R => '0'
    );
\size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_34,
      Q => \size_reg_n_0_[15]\,
      R => '0'
    );
\size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_33,
      Q => \size_reg_n_0_[16]\,
      R => '0'
    );
\size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_32,
      Q => \size_reg_n_0_[17]\,
      R => '0'
    );
\size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_31,
      Q => \size_reg_n_0_[18]\,
      R => '0'
    );
\size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_30,
      Q => \size_reg_n_0_[19]\,
      R => '0'
    );
\size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_48,
      Q => \size_reg_n_0_[1]\,
      R => '0'
    );
\size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_29,
      Q => \size_reg_n_0_[20]\,
      R => '0'
    );
\size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_28,
      Q => \size_reg_n_0_[21]\,
      R => '0'
    );
\size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_27,
      Q => \size_reg_n_0_[22]\,
      R => '0'
    );
\size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_26,
      Q => \size_reg_n_0_[23]\,
      R => '0'
    );
\size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_25,
      Q => \size_reg_n_0_[24]\,
      R => '0'
    );
\size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_24,
      Q => \size_reg_n_0_[25]\,
      R => '0'
    );
\size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_23,
      Q => \size_reg_n_0_[26]\,
      R => '0'
    );
\size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_22,
      Q => \size_reg_n_0_[27]\,
      R => '0'
    );
\size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_21,
      Q => \size_reg_n_0_[28]\,
      R => '0'
    );
\size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_20,
      Q => \size_reg_n_0_[29]\,
      R => '0'
    );
\size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_47,
      Q => \size_reg_n_0_[2]\,
      R => '0'
    );
\size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_19,
      Q => \size_reg_n_0_[30]\,
      R => '0'
    );
\size_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_18,
      Q => \size_reg_n_0_[31]\,
      R => '0'
    );
\size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_46,
      Q => \size_reg_n_0_[3]\,
      R => '0'
    );
\size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_45,
      Q => \size_reg_n_0_[4]\,
      R => '0'
    );
\size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_44,
      Q => \size_reg_n_0_[5]\,
      R => '0'
    );
\size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_43,
      Q => \size_reg_n_0_[6]\,
      R => '0'
    );
\size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_42,
      Q => \size_reg_n_0_[7]\,
      R => '0'
    );
\size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_41,
      Q => \size_reg_n_0_[8]\,
      R => '0'
    );
\size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inactive_keeper_n_3,
      D => inactive_keeper_n_40,
      Q => \size_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0_axi_sd_card is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_tlast : out STD_LOGIC;
    out_tvalid : out STD_LOGIC;
    in_tready : out STD_LOGIC;
    fifo_out_resetn : out STD_LOGIC;
    sd_dat3_pullup : out STD_LOGIC;
    fifo_out_tready_masked : out STD_LOGIC;
    fifo_out_tvalid_masked : out STD_LOGIC;
    fifo_in_resetn : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    resetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_out_almostfull : in STD_LOGIC;
    out_tready : in STD_LOGIC;
    in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_tlast : in STD_LOGIC;
    in_tvalid : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    fifo_out_tready_in : in STD_LOGIC;
    fifo_out_tvalid_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_card_0_axi_sd_card : entity is "axi_sd_card";
end block_design_sd_card_0_axi_sd_card;

architecture STRUCTURE of block_design_sd_card_0_axi_sd_card is
  signal \assign_reg_mux[2].reg_needed.mux\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0\ : STD_LOGIC;
  signal \assign_reg_mux[4].reg_needed.mux\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi4_lite_intf_inst_n_0 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_5 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_6 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_60 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_61 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_62 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_63 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_64 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_65 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_66 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_67 : STD_LOGIC;
  signal dev_ram_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dev_ram_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dev_ram_data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dev_ram_read_en : STD_LOGIC;
  signal device_n_168 : STD_LOGIC;
  signal device_n_169 : STD_LOGIC;
  signal device_n_175 : STD_LOGIC;
  signal device_n_176 : STD_LOGIC;
  signal device_n_177 : STD_LOGIC;
  signal device_n_178 : STD_LOGIC;
  signal device_n_179 : STD_LOGIC;
  signal device_n_180 : STD_LOGIC;
  signal device_n_181 : STD_LOGIC;
  signal device_n_182 : STD_LOGIC;
  signal device_n_183 : STD_LOGIC;
  signal device_n_184 : STD_LOGIC;
  signal device_n_185 : STD_LOGIC;
  signal device_n_186 : STD_LOGIC;
  signal device_n_187 : STD_LOGIC;
  signal device_n_188 : STD_LOGIC;
  signal device_n_189 : STD_LOGIC;
  signal device_n_190 : STD_LOGIC;
  signal device_n_191 : STD_LOGIC;
  signal device_n_192 : STD_LOGIC;
  signal device_n_193 : STD_LOGIC;
  signal device_n_298 : STD_LOGIC;
  signal device_n_299 : STD_LOGIC;
  signal device_n_300 : STD_LOGIC;
  signal device_n_301 : STD_LOGIC;
  signal device_n_302 : STD_LOGIC;
  signal device_n_303 : STD_LOGIC;
  signal device_n_304 : STD_LOGIC;
  signal device_n_305 : STD_LOGIC;
  signal device_n_306 : STD_LOGIC;
  signal device_n_307 : STD_LOGIC;
  signal device_n_308 : STD_LOGIC;
  signal device_n_309 : STD_LOGIC;
  signal device_n_310 : STD_LOGIC;
  signal device_n_311 : STD_LOGIC;
  signal device_n_312 : STD_LOGIC;
  signal device_n_313 : STD_LOGIC;
  signal device_n_314 : STD_LOGIC;
  signal device_n_315 : STD_LOGIC;
  signal device_n_316 : STD_LOGIC;
  signal device_n_317 : STD_LOGIC;
  signal device_n_318 : STD_LOGIC;
  signal device_n_319 : STD_LOGIC;
  signal device_n_320 : STD_LOGIC;
  signal latched_status_bits : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal latched_status_bits_next : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal onread_pre : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_28_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal raddr_saved : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \ram_byte_index_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_byte_index_read[1]_i_1_n_0\ : STD_LOGIC;
  signal ram_byte_index_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ram_byte_index_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_byte_index_write[1]_i_1_n_0\ : STD_LOGIC;
  signal ram_read : STD_LOGIC;
  signal ram_read_i_1_n_0 : STD_LOGIC;
  signal ram_word_out0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_word_out_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ram_word_out_reg_n_0_[24]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[25]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[26]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[27]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[28]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[29]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[30]\ : STD_LOGIC;
  signal \ram_word_out_reg_n_0_[31]\ : STD_LOGIC;
  signal ram_write : STD_LOGIC;
  signal ram_write_i_1_n_0 : STD_LOGIC;
  signal ram_write_i_2_n_0 : STD_LOGIC;
  signal \reg_clear_always[21]_13\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \reg_clear_always[22]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_clear_always[23]_12\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_read_only : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[10]_5\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \reg_saved_in[11]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[12]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[13]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[14]_9\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[15]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[17]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_in[9]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[10]_15\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \reg_saved_reg[11]_16\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[12]_17\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[13]_18\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[14]_19\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[15]_20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[16]_21\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \reg_saved_reg[17]_22\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[9]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_written[18]_0\ : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \reg_written[19]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_written[20]_2\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal sd_cmd_i : STD_LOGIC;
  signal sd_cmd_o : STD_LOGIC;
  signal sd_cmd_t : STD_LOGIC;
  signal sd_dat3_pullup_off : STD_LOGIC;
  signal sd_dat_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_t : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0\ : STD_LOGIC;
  signal waddr_saved : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_31_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_31_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_31_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_31_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_31_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_31_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[10]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[11]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[12]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[13]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[14]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[15]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[16]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[18]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[22]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[23]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[24]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[25]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[26]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[27]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[28]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[29]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[30]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \assign_reg_mux[4].reg_needed.mux[31]_i_1\ : label is "soft_lutpair109";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of buf_cmd : label is "PRIMITIVE";
  attribute BOX_TYPE of buf_dat3_pullup : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of buf_dat3_pullup : label is "DONT_CARE";
  attribute BOX_TYPE of \buf_dat[0].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[1].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[2].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[3].buf_dat\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \ram_byte_index_read[0]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \ram_byte_index_read[1]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \ram_byte_index_write[0]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \ram_byte_index_write[1]_i_1\ : label is "soft_lutpair101";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_r1_0_31_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_r1_0_31_0_5 : label is "inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_31_6_7 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_31_6_7 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_31_6_7 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_31_6_7 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_31_6_7 : label is 31;
  attribute ram_offset of ram_reg_r1_0_31_6_7 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_31_6_7 : label is 6;
  attribute ram_slice_end of ram_reg_r1_0_31_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_31_0_5 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_31_0_5 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of ram_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of ram_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_31_6_7 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_31_6_7 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_31_6_7 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_31_6_7 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_31_6_7 : label is 31;
  attribute ram_offset of ram_reg_r2_0_31_6_7 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_31_6_7 : label is 6;
  attribute ram_slice_end of ram_reg_r2_0_31_6_7 : label is 7;
  attribute SOFT_HLUTNM of \set_reg_clear_always[21].reg_clear_always[21][0]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \set_reg_clear_always[21].reg_clear_always[21][2]_i_1\ : label is "soft_lutpair111";
begin
\assign_reg_mux[2].reg_needed.mux[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(19),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(19),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(20),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(20),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(21),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(21),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(22),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(22),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(23),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(23),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(24),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(24),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(25),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(25),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(26),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(26),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(27),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(27),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(28),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(28),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(29),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(29),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(30),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(30),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_saved_reg[9]_14\(31),
      I1 => s_axi_araddr(1),
      I2 => \reg_saved_reg[11]_16\(31),
      I3 => s_axi_araddr(0),
      O => \assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0\
    );
\assign_reg_mux[2].reg_needed.mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_193,
      Q => \assign_reg_mux[2].reg_needed.mux\(0),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_183,
      Q => \assign_reg_mux[2].reg_needed.mux\(10),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_182,
      Q => \assign_reg_mux[2].reg_needed.mux\(11),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_181,
      Q => \assign_reg_mux[2].reg_needed.mux\(12),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_180,
      Q => \assign_reg_mux[2].reg_needed.mux\(13),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_179,
      Q => \assign_reg_mux[2].reg_needed.mux\(14),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_178,
      Q => \assign_reg_mux[2].reg_needed.mux\(15),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_177,
      Q => \assign_reg_mux[2].reg_needed.mux\(16),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_176,
      Q => \assign_reg_mux[2].reg_needed.mux\(17),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_175,
      Q => \assign_reg_mux[2].reg_needed.mux\(18),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[19]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(19),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_192,
      Q => \assign_reg_mux[2].reg_needed.mux\(1),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[20]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(20),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[21]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(21),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[22]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(22),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[23]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(23),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[24]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(24),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[25]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(25),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[26]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(26),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[27]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(27),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[28]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(28),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[29]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(29),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_191,
      Q => \assign_reg_mux[2].reg_needed.mux\(2),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[30]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(30),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[2].reg_needed.mux[31]_i_1_n_0\,
      Q => \assign_reg_mux[2].reg_needed.mux\(31),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_190,
      Q => \assign_reg_mux[2].reg_needed.mux\(3),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_189,
      Q => \assign_reg_mux[2].reg_needed.mux\(4),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_188,
      Q => \assign_reg_mux[2].reg_needed.mux\(5),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_187,
      Q => \assign_reg_mux[2].reg_needed.mux\(6),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_186,
      Q => \assign_reg_mux[2].reg_needed.mux\(7),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_185,
      Q => \assign_reg_mux[2].reg_needed.mux\(8),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[2].reg_needed.mux_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => device_n_184,
      Q => \assign_reg_mux[2].reg_needed.mux\(9),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(0),
      I1 => \reg_saved_reg[13]_18\(0),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(0),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(0),
      O => \assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(10),
      I1 => \reg_saved_reg[13]_18\(10),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(10),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(10),
      O => \assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(11),
      I1 => \reg_saved_reg[13]_18\(11),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(11),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(11),
      O => \assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(12),
      I1 => \reg_saved_reg[13]_18\(12),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(12),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(12),
      O => \assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(13),
      I1 => \reg_saved_reg[13]_18\(13),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(13),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(13),
      O => \assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(14),
      I1 => \reg_saved_reg[13]_18\(14),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(14),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(14),
      O => \assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(15),
      I1 => \reg_saved_reg[13]_18\(15),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(15),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(15),
      O => \assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(16),
      I1 => \reg_saved_reg[13]_18\(16),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(16),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(16),
      O => \assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(17),
      I1 => \reg_saved_reg[13]_18\(17),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(17),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(17),
      O => \assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(18),
      I1 => \reg_saved_reg[13]_18\(18),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(18),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(18),
      O => \assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(19),
      I1 => \reg_saved_reg[13]_18\(19),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(19),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(19),
      O => \assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(1),
      I1 => \reg_saved_reg[13]_18\(1),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(1),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(1),
      O => \assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(20),
      I1 => \reg_saved_reg[13]_18\(20),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(20),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(20),
      O => \assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(21),
      I1 => \reg_saved_reg[13]_18\(21),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(21),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(21),
      O => \assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(22),
      I1 => \reg_saved_reg[13]_18\(22),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(22),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(22),
      O => \assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(23),
      I1 => \reg_saved_reg[13]_18\(23),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(23),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(23),
      O => \assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(24),
      I1 => \reg_saved_reg[13]_18\(24),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(24),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(24),
      O => \assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(25),
      I1 => \reg_saved_reg[13]_18\(25),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(25),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(25),
      O => \assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(26),
      I1 => \reg_saved_reg[13]_18\(26),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(26),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(26),
      O => \assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(27),
      I1 => \reg_saved_reg[13]_18\(27),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(27),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(27),
      O => \assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(28),
      I1 => \reg_saved_reg[13]_18\(28),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(28),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(28),
      O => \assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(29),
      I1 => \reg_saved_reg[13]_18\(29),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(29),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(29),
      O => \assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(2),
      I1 => \reg_saved_reg[13]_18\(2),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(2),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(2),
      O => \assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(30),
      I1 => \reg_saved_reg[13]_18\(30),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(30),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(30),
      O => \assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(31),
      I1 => \reg_saved_reg[13]_18\(31),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(31),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(31),
      O => \assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(3),
      I1 => \reg_saved_reg[13]_18\(3),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(3),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(3),
      O => \assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(4),
      I1 => \reg_saved_reg[13]_18\(4),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(4),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(4),
      O => \assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(5),
      I1 => \reg_saved_reg[13]_18\(5),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(5),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(5),
      O => \assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(6),
      I1 => \reg_saved_reg[13]_18\(6),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(6),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(6),
      O => \assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(7),
      I1 => \reg_saved_reg[13]_18\(7),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(7),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(7),
      O => \assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(8),
      I1 => \reg_saved_reg[13]_18\(8),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(8),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(8),
      O => \assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[15]_20\(9),
      I1 => \reg_saved_reg[13]_18\(9),
      I2 => s_axi_araddr(0),
      I3 => \reg_saved_reg[14]_19\(9),
      I4 => s_axi_araddr(1),
      I5 => \reg_saved_reg[12]_17\(9),
      O => \assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0\
    );
\assign_reg_mux[3].reg_needed.mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[0]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(0),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[10]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(10),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[11]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(11),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[12]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(12),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[13]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(13),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[14]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(14),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[15]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(15),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[16]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(16),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[17]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(17),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[18]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(18),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[19]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(19),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[1]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(1),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[20]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(20),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[21]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(21),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[22]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(22),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[23]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(23),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[24]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(24),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[25]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(25),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[26]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(26),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[27]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(27),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[28]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(28),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[29]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(29),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[2]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(2),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[30]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(30),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[31]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(31),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[3]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(3),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[4]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(4),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[5]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(5),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[6]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(6),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[7]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(7),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[8]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(8),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[3].reg_needed.mux_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \assign_reg_mux[3].reg_needed.mux[9]_i_1_n_0\,
      Q => \assign_reg_mux[3].reg_needed.mux\(9),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(0),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(0),
      I3 => s_axi_araddr(1),
      O => reg_read_only(0)
    );
\assign_reg_mux[4].reg_needed.mux[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(10),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(10),
      I3 => s_axi_araddr(1),
      O => reg_read_only(10)
    );
\assign_reg_mux[4].reg_needed.mux[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(11),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(11),
      I3 => s_axi_araddr(1),
      O => reg_read_only(11)
    );
\assign_reg_mux[4].reg_needed.mux[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(12),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(12),
      I3 => s_axi_araddr(1),
      O => reg_read_only(12)
    );
\assign_reg_mux[4].reg_needed.mux[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(13),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(13),
      I3 => s_axi_araddr(1),
      O => reg_read_only(13)
    );
\assign_reg_mux[4].reg_needed.mux[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(14),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(14),
      I3 => s_axi_araddr(1),
      O => reg_read_only(14)
    );
\assign_reg_mux[4].reg_needed.mux[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(15),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(15),
      I3 => s_axi_araddr(1),
      O => reg_read_only(15)
    );
\assign_reg_mux[4].reg_needed.mux[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(16),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(16),
      I3 => s_axi_araddr(1),
      O => reg_read_only(16)
    );
\assign_reg_mux[4].reg_needed.mux[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(17),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(17),
      I3 => s_axi_araddr(1),
      O => reg_read_only(17)
    );
\assign_reg_mux[4].reg_needed.mux[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(18),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(18),
      I3 => s_axi_araddr(1),
      O => reg_read_only(18)
    );
\assign_reg_mux[4].reg_needed.mux[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(19),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(19),
      I3 => s_axi_araddr(1),
      O => reg_read_only(19)
    );
\assign_reg_mux[4].reg_needed.mux[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(1),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(1),
      I3 => s_axi_araddr(1),
      O => reg_read_only(1)
    );
\assign_reg_mux[4].reg_needed.mux[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(20),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(20),
      I3 => s_axi_araddr(1),
      O => reg_read_only(20)
    );
\assign_reg_mux[4].reg_needed.mux[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(21),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(21),
      I3 => s_axi_araddr(1),
      O => reg_read_only(21)
    );
\assign_reg_mux[4].reg_needed.mux[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(22),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(22),
      I3 => s_axi_araddr(1),
      O => reg_read_only(22)
    );
\assign_reg_mux[4].reg_needed.mux[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(23),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(23)
    );
\assign_reg_mux[4].reg_needed.mux[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(24),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(24)
    );
\assign_reg_mux[4].reg_needed.mux[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(25),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(25)
    );
\assign_reg_mux[4].reg_needed.mux[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(26),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(26)
    );
\assign_reg_mux[4].reg_needed.mux[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(27),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(27)
    );
\assign_reg_mux[4].reg_needed.mux[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(28),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(28)
    );
\assign_reg_mux[4].reg_needed.mux[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(29),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(29)
    );
\assign_reg_mux[4].reg_needed.mux[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(2),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(2),
      I3 => s_axi_araddr(1),
      O => reg_read_only(2)
    );
\assign_reg_mux[4].reg_needed.mux[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(30),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(30)
    );
\assign_reg_mux[4].reg_needed.mux[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \reg_saved_reg[17]_22\(31),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      O => reg_read_only(31)
    );
\assign_reg_mux[4].reg_needed.mux[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(3),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(3),
      I3 => s_axi_araddr(1),
      O => reg_read_only(3)
    );
\assign_reg_mux[4].reg_needed.mux[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(4),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(4),
      I3 => s_axi_araddr(1),
      O => reg_read_only(4)
    );
\assign_reg_mux[4].reg_needed.mux[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(5),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(5),
      I3 => s_axi_araddr(1),
      O => reg_read_only(5)
    );
\assign_reg_mux[4].reg_needed.mux[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(6),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(6),
      I3 => s_axi_araddr(1),
      O => reg_read_only(6)
    );
\assign_reg_mux[4].reg_needed.mux[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(7),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(7),
      I3 => s_axi_araddr(1),
      O => reg_read_only(7)
    );
\assign_reg_mux[4].reg_needed.mux[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(8),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(8),
      I3 => s_axi_araddr(1),
      O => reg_read_only(8)
    );
\assign_reg_mux[4].reg_needed.mux[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_saved_reg[16]_21\(9),
      I1 => s_axi_araddr(0),
      I2 => \reg_saved_reg[17]_22\(9),
      I3 => s_axi_araddr(1),
      O => reg_read_only(9)
    );
\assign_reg_mux[4].reg_needed.mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(0),
      Q => \assign_reg_mux[4].reg_needed.mux\(0),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(10),
      Q => \assign_reg_mux[4].reg_needed.mux\(10),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(11),
      Q => \assign_reg_mux[4].reg_needed.mux\(11),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(12),
      Q => \assign_reg_mux[4].reg_needed.mux\(12),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(13),
      Q => \assign_reg_mux[4].reg_needed.mux\(13),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(14),
      Q => \assign_reg_mux[4].reg_needed.mux\(14),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(15),
      Q => \assign_reg_mux[4].reg_needed.mux\(15),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(16),
      Q => \assign_reg_mux[4].reg_needed.mux\(16),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(17),
      Q => \assign_reg_mux[4].reg_needed.mux\(17),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(18),
      Q => \assign_reg_mux[4].reg_needed.mux\(18),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(19),
      Q => \assign_reg_mux[4].reg_needed.mux\(19),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(1),
      Q => \assign_reg_mux[4].reg_needed.mux\(1),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(20),
      Q => \assign_reg_mux[4].reg_needed.mux\(20),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(21),
      Q => \assign_reg_mux[4].reg_needed.mux\(21),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(22),
      Q => \assign_reg_mux[4].reg_needed.mux\(22),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(23),
      Q => \assign_reg_mux[4].reg_needed.mux\(23),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(24),
      Q => \assign_reg_mux[4].reg_needed.mux\(24),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(25),
      Q => \assign_reg_mux[4].reg_needed.mux\(25),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(26),
      Q => \assign_reg_mux[4].reg_needed.mux\(26),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(27),
      Q => \assign_reg_mux[4].reg_needed.mux\(27),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(28),
      Q => \assign_reg_mux[4].reg_needed.mux\(28),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(29),
      Q => \assign_reg_mux[4].reg_needed.mux\(29),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(2),
      Q => \assign_reg_mux[4].reg_needed.mux\(2),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(30),
      Q => \assign_reg_mux[4].reg_needed.mux\(30),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(31),
      Q => \assign_reg_mux[4].reg_needed.mux\(31),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(3),
      Q => \assign_reg_mux[4].reg_needed.mux\(3),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(4),
      Q => \assign_reg_mux[4].reg_needed.mux\(4),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(5),
      Q => \assign_reg_mux[4].reg_needed.mux\(5),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(6),
      Q => \assign_reg_mux[4].reg_needed.mux\(6),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(7),
      Q => \assign_reg_mux[4].reg_needed.mux\(7),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(8),
      Q => \assign_reg_mux[4].reg_needed.mux\(8),
      R => axi4_lite_intf_inst_n_0
    );
\assign_reg_mux[4].reg_needed.mux_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_read_only(9),
      Q => \assign_reg_mux[4].reg_needed.mux\(9),
      R => axi4_lite_intf_inst_n_0
    );
axi4_lite_intf_inst: entity work.block_design_sd_card_0_axi4_lite_intf
     port map (
      E(0) => onread_pre(8),
      Q(2 downto 0) => raddr_saved(4 downto 2),
      SR(0) => axi4_lite_intf_inst_n_0,
      clk => clk,
      p_1_in(7) => axi4_lite_intf_inst_n_60,
      p_1_in(6) => axi4_lite_intf_inst_n_61,
      p_1_in(5) => axi4_lite_intf_inst_n_62,
      p_1_in(4) => axi4_lite_intf_inst_n_63,
      p_1_in(3) => axi4_lite_intf_inst_n_64,
      p_1_in(2) => axi4_lite_intf_inst_n_65,
      p_1_in(1) => axi4_lite_intf_inst_n_66,
      p_1_in(0) => axi4_lite_intf_inst_n_67,
      ram_byte_index_write(1 downto 0) => ram_byte_index_write(1 downto 0),
      ram_read => ram_read,
      ram_word_out_reg(7 downto 0) => ram_word_out_reg(7 downto 0),
      ram_write => ram_write,
      \rdata[31]_i_4_0\(31 downto 0) => \assign_reg_mux[3].reg_needed.mux\(31 downto 0),
      \rdata[31]_i_4_1\(31 downto 0) => \assign_reg_mux[4].reg_needed.mux\(31 downto 0),
      \rdata[31]_i_4_2\(31 downto 0) => \assign_reg_mux[2].reg_needed.mux\(31 downto 0),
      \rdata_reg[31]_0\(23) => \ram_word_out_reg_n_0_[31]\,
      \rdata_reg[31]_0\(22) => \ram_word_out_reg_n_0_[30]\,
      \rdata_reg[31]_0\(21) => \ram_word_out_reg_n_0_[29]\,
      \rdata_reg[31]_0\(20) => \ram_word_out_reg_n_0_[28]\,
      \rdata_reg[31]_0\(19) => \ram_word_out_reg_n_0_[27]\,
      \rdata_reg[31]_0\(18) => \ram_word_out_reg_n_0_[26]\,
      \rdata_reg[31]_0\(17) => \ram_word_out_reg_n_0_[25]\,
      \rdata_reg[31]_0\(16) => \ram_word_out_reg_n_0_[24]\,
      \rdata_reg[31]_0\(15 downto 0) => ram_word_out_reg(23 downto 8),
      resetn => resetn,
      resetn_0(0) => axi4_lite_intf_inst_n_6,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      \s_axi_awaddr[6]\ => axi4_lite_intf_inst_n_5,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \set_reg[18].reg_written_reg[18][31]_0\(7 downto 0) => \reg_written[18]_0\(31 downto 24),
      \set_reg[18].reg_written_reg[18][31]_1\(0) => p_28_out,
      \set_reg[19].reg_written_reg[19][31]_0\(31 downto 0) => \reg_written[19]_1\(31 downto 0),
      \set_reg[20].reg_written_reg[20][15]_0\(8 downto 7) => \reg_written[20]_2\(15 downto 14),
      \set_reg[20].reg_written_reg[20][15]_0\(6 downto 0) => \reg_written[20]_2\(8 downto 2),
      \waddr_saved_reg[4]_0\(2 downto 0) => waddr_saved(4 downto 2)
    );
buf_cmd: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_cmd_o,
      IO => sd_cmd,
      O => sd_cmd_i,
      T => sd_cmd_t
    );
buf_dat3_pullup: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '1',
      O => sd_dat3_pullup,
      T => sd_dat3_pullup_off
    );
\buf_dat[0].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(0),
      IO => sd_dat(0),
      O => sd_dat_i(0),
      T => sd_dat_t(0)
    );
\buf_dat[1].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(1),
      IO => sd_dat(1),
      O => sd_dat_i(1),
      T => sd_dat_t(1)
    );
\buf_dat[2].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(2),
      IO => sd_dat(2),
      O => sd_dat_i(2),
      T => sd_dat_t(2)
    );
\buf_dat[3].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(3),
      IO => sd_dat(3),
      O => sd_dat_i(3),
      T => sd_dat_t(3)
    );
\dev_ram_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(0),
      Q => dev_ram_data(0),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(1),
      Q => dev_ram_data(1),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(2),
      Q => dev_ram_data(2),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(3),
      Q => dev_ram_data(3),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(4),
      Q => dev_ram_data(4),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(5),
      Q => dev_ram_data(5),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(6),
      Q => dev_ram_data(6),
      R => axi4_lite_intf_inst_n_0
    );
\dev_ram_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dev_ram_read_en,
      D => dev_ram_data0(7),
      Q => dev_ram_data(7),
      R => axi4_lite_intf_inst_n_0
    );
device: entity work.block_design_sd_card_0_device
     port map (
      D(31 downto 0) => \reg_saved_in[17]_3\(31 downto 0),
      E(0) => dev_ram_read_en,
      Q(31 downto 0) => \reg_saved_in[15]_10\(31 downto 0),
      SR(0) => axi4_lite_intf_inst_n_0,
      \assign_reg_mux[2].reg_needed.mux_reg[14]\(13 downto 7) => \reg_saved_reg[10]_15\(14 downto 8),
      \assign_reg_mux[2].reg_needed.mux_reg[14]\(6 downto 0) => \reg_saved_reg[10]_15\(6 downto 0),
      \assign_reg_mux[2].reg_needed.mux_reg[15]\(7 downto 6) => latched_status_bits(15 downto 14),
      \assign_reg_mux[2].reg_needed.mux_reg[15]\(5) => latched_status_bits(8),
      \assign_reg_mux[2].reg_needed.mux_reg[15]\(4 downto 0) => latched_status_bits(6 downto 2),
      \assign_reg_mux[2].reg_needed.mux_reg[18]\(18 downto 0) => \reg_saved_reg[11]_16\(18 downto 0),
      \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(17 downto 12) => \reg_saved_reg[9]_14\(18 downto 13),
      \assign_reg_mux[2].reg_needed.mux_reg[18]_0\(11 downto 0) => \reg_saved_reg[9]_14\(11 downto 0),
      \card_status_reg[31]\(26 downto 8) => \reg_clear_always[22]_11\(31 downto 13),
      \card_status_reg[31]\(7 downto 0) => \reg_clear_always[22]_11\(7 downto 0),
      \card_status_reg[31]_0\(26 downto 8) => \reg_clear_always[23]_12\(31 downto 13),
      \card_status_reg[31]_0\(7 downto 0) => \reg_clear_always[23]_12\(7 downto 0),
      clk => clk,
      cmd_arg(31 downto 0) => \reg_saved_in[12]_4\(31 downto 0),
      dev_ram_data(7 downto 0) => dev_ram_data(7 downto 0),
      fifo_in_resetn => fifo_in_resetn,
      fifo_out_almostfull => fifo_out_almostfull,
      fifo_out_resetn => fifo_out_resetn,
      fifo_out_tready_in => fifo_out_tready_in,
      fifo_out_tready_masked => fifo_out_tready_masked,
      fifo_out_tvalid_in => fifo_out_tvalid_in,
      fifo_out_tvalid_masked => fifo_out_tvalid_masked,
      \got_cmd0_reg[0]\(0) => p_28_out,
      in_tdata(7 downto 0) => in_tdata(7 downto 0),
      in_tlast => in_tlast,
      in_tready => in_tready,
      in_tvalid => in_tvalid,
      interrupt => interrupt,
      interrupt_INST_0_i_2(8 downto 7) => \reg_written[20]_2\(15 downto 14),
      interrupt_INST_0_i_2(6 downto 0) => \reg_written[20]_2\(8 downto 2),
      \latched_status_bits_reg[15]\(7 downto 6) => latched_status_bits_next(15 downto 14),
      \latched_status_bits_reg[15]\(5) => latched_status_bits_next(8),
      \latched_status_bits_reg[15]\(4 downto 0) => latched_status_bits_next(6 downto 2),
      \ocr_high_byte_reg[31]_0\(7 downto 0) => \reg_written[18]_0\(31 downto 24),
      out_tdata(7 downto 0) => out_tdata(7 downto 0),
      out_tlast => out_tlast,
      out_tready => out_tready,
      out_tvalid => out_tvalid,
      ram_addr(4 downto 3) => dev_ram_addr(4 downto 3),
      ram_addr(2) => device_n_168,
      ram_addr(1) => device_n_169,
      ram_addr(0) => dev_ram_addr(0),
      \reg_clear_always[21]_13\(2 downto 0) => \reg_clear_always[21]_13\(2 downto 0),
      \reg_saved_in[10]_5\(13 downto 7) => \reg_saved_in[10]_5\(14 downto 8),
      \reg_saved_in[10]_5\(6 downto 0) => \reg_saved_in[10]_5\(6 downto 0),
      \reg_saved_in[9]_6\(30 downto 12) => \reg_saved_in[9]_6\(31 downto 13),
      \reg_saved_in[9]_6\(11 downto 0) => \reg_saved_in[9]_6\(11 downto 0),
      \reg_saved_reg[11][18]\(18) => device_n_175,
      \reg_saved_reg[11][18]\(17) => device_n_176,
      \reg_saved_reg[11][18]\(16) => device_n_177,
      \reg_saved_reg[11][18]\(15) => device_n_178,
      \reg_saved_reg[11][18]\(14) => device_n_179,
      \reg_saved_reg[11][18]\(13) => device_n_180,
      \reg_saved_reg[11][18]\(12) => device_n_181,
      \reg_saved_reg[11][18]\(11) => device_n_182,
      \reg_saved_reg[11][18]\(10) => device_n_183,
      \reg_saved_reg[11][18]\(9) => device_n_184,
      \reg_saved_reg[11][18]\(8) => device_n_185,
      \reg_saved_reg[11][18]\(7) => device_n_186,
      \reg_saved_reg[11][18]\(6) => device_n_187,
      \reg_saved_reg[11][18]\(5) => device_n_188,
      \reg_saved_reg[11][18]\(4) => device_n_189,
      \reg_saved_reg[11][18]\(3) => device_n_190,
      \reg_saved_reg[11][18]\(2) => device_n_191,
      \reg_saved_reg[11][18]\(1) => device_n_192,
      \reg_saved_reg[11][18]\(0) => device_n_193,
      resetn => resetn,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(22) => device_n_298,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(21) => device_n_299,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(20) => device_n_300,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(19) => device_n_301,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(18) => device_n_302,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(17) => device_n_303,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(16) => device_n_304,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(15) => device_n_305,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(14) => device_n_306,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(13) => device_n_307,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(12) => device_n_308,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(11) => device_n_309,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(10) => device_n_310,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(9) => device_n_311,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(8) => device_n_312,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(7) => device_n_313,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(6) => device_n_314,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(5) => device_n_315,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(4) => device_n_316,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(3) => device_n_317,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(2) => device_n_318,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(1) => device_n_319,
      \save_block_limit_vars[1].block_limit_vars_reg[1][22]\(0) => device_n_320,
      \save_erase_vars[0].erase_vars_reg[0][31]\(31 downto 0) => \reg_saved_in[13]_8\(31 downto 0),
      \save_erase_vars[1].erase_vars_reg[1][31]\(31 downto 0) => \reg_saved_in[14]_9\(31 downto 0),
      \saved_cmd_arg_reg[31]\(31 downto 0) => \reg_saved_in[11]_7\(31 downto 0),
      sd_clk => sd_clk,
      sd_cmd_i => sd_cmd_i,
      sd_cmd_o => sd_cmd_o,
      sd_cmd_t => sd_cmd_t,
      sd_dat3_pullup_off => sd_dat3_pullup_off,
      sd_dat_i(3 downto 0) => sd_dat_i(3 downto 0),
      sd_dat_o(3 downto 0) => sd_dat_o(3 downto 0),
      sd_dat_t(3 downto 0) => sd_dat_t(3 downto 0),
      \size_reg[31]_0\(31 downto 0) => \reg_written[19]_1\(31 downto 0)
    );
\latched_status_bits_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(14),
      Q => latched_status_bits(14),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(15),
      Q => latched_status_bits(15),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(2),
      Q => latched_status_bits(2),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(3),
      Q => latched_status_bits(3),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(4),
      Q => latched_status_bits(4),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(5),
      Q => latched_status_bits(5),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(6),
      Q => latched_status_bits(6),
      R => axi4_lite_intf_inst_n_6
    );
\latched_status_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_status_bits_next(8),
      Q => latched_status_bits(8),
      R => axi4_lite_intf_inst_n_6
    );
\ram_byte_index_read[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_2_in(0),
      I1 => resetn,
      I2 => ram_read,
      O => \ram_byte_index_read[0]_i_1_n_0\
    );
\ram_byte_index_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_2_in(0),
      I2 => resetn,
      I3 => ram_read,
      O => \ram_byte_index_read[1]_i_1_n_0\
    );
\ram_byte_index_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ram_byte_index_read[0]_i_1_n_0\,
      Q => p_2_in(0),
      R => '0'
    );
\ram_byte_index_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ram_byte_index_read[1]_i_1_n_0\,
      Q => p_2_in(1),
      R => '0'
    );
\ram_byte_index_write[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ram_byte_index_write(0),
      I1 => ram_write,
      I2 => resetn,
      O => \ram_byte_index_write[0]_i_1_n_0\
    );
\ram_byte_index_write[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => ram_byte_index_write(0),
      I1 => ram_byte_index_write(1),
      I2 => ram_write,
      I3 => resetn,
      O => \ram_byte_index_write[1]_i_1_n_0\
    );
\ram_byte_index_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ram_byte_index_write[0]_i_1_n_0\,
      Q => ram_byte_index_write(0),
      R => '0'
    );
\ram_byte_index_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ram_byte_index_write[1]_i_1_n_0\,
      Q => ram_byte_index_write(1),
      R => '0'
    );
ram_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF02020202"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(4),
      I3 => p_2_in(0),
      I4 => p_2_in(1),
      I5 => ram_read,
      O => ram_read_i_1_n_0
    );
ram_read_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ram_read_i_1_n_0,
      Q => ram_read,
      R => axi4_lite_intf_inst_n_0
    );
ram_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => raddr_saved(4 downto 2),
      ADDRA(1 downto 0) => p_2_in(1 downto 0),
      ADDRB(4 downto 2) => raddr_saved(4 downto 2),
      ADDRB(1 downto 0) => p_2_in(1 downto 0),
      ADDRC(4 downto 2) => raddr_saved(4 downto 2),
      ADDRC(1 downto 0) => p_2_in(1 downto 0),
      ADDRD(4 downto 2) => waddr_saved(4 downto 2),
      ADDRD(1 downto 0) => ram_byte_index_write(1 downto 0),
      DIA(1) => axi4_lite_intf_inst_n_66,
      DIA(0) => axi4_lite_intf_inst_n_67,
      DIB(1) => axi4_lite_intf_inst_n_64,
      DIB(0) => axi4_lite_intf_inst_n_65,
      DIC(1) => axi4_lite_intf_inst_n_62,
      DIC(0) => axi4_lite_intf_inst_n_63,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_word_out0(1 downto 0),
      DOB(1 downto 0) => ram_word_out0(3 downto 2),
      DOC(1 downto 0) => ram_word_out0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_write
    );
ram_reg_r1_0_31_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => raddr_saved(4 downto 2),
      ADDRA(1 downto 0) => p_2_in(1 downto 0),
      ADDRB(4 downto 2) => raddr_saved(4 downto 2),
      ADDRB(1 downto 0) => p_2_in(1 downto 0),
      ADDRC(4 downto 2) => raddr_saved(4 downto 2),
      ADDRC(1 downto 0) => p_2_in(1 downto 0),
      ADDRD(4 downto 2) => waddr_saved(4 downto 2),
      ADDRD(1 downto 0) => ram_byte_index_write(1 downto 0),
      DIA(1) => axi4_lite_intf_inst_n_60,
      DIA(0) => axi4_lite_intf_inst_n_61,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_word_out0(7 downto 6),
      DOB(1 downto 0) => NLW_ram_reg_r1_0_31_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_reg_r1_0_31_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_31_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_write
    );
ram_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRA(2) => device_n_168,
      ADDRA(1) => device_n_169,
      ADDRA(0) => dev_ram_addr(0),
      ADDRB(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRB(2) => device_n_168,
      ADDRB(1) => device_n_169,
      ADDRB(0) => dev_ram_addr(0),
      ADDRC(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRC(2) => device_n_168,
      ADDRC(1) => device_n_169,
      ADDRC(0) => dev_ram_addr(0),
      ADDRD(4 downto 2) => waddr_saved(4 downto 2),
      ADDRD(1 downto 0) => ram_byte_index_write(1 downto 0),
      DIA(1) => axi4_lite_intf_inst_n_66,
      DIA(0) => axi4_lite_intf_inst_n_67,
      DIB(1) => axi4_lite_intf_inst_n_64,
      DIB(0) => axi4_lite_intf_inst_n_65,
      DIC(1) => axi4_lite_intf_inst_n_62,
      DIC(0) => axi4_lite_intf_inst_n_63,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dev_ram_data0(1 downto 0),
      DOB(1 downto 0) => dev_ram_data0(3 downto 2),
      DOC(1 downto 0) => dev_ram_data0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_write
    );
ram_reg_r2_0_31_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRA(2) => device_n_168,
      ADDRA(1) => device_n_169,
      ADDRA(0) => dev_ram_addr(0),
      ADDRB(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRB(2) => device_n_168,
      ADDRB(1) => device_n_169,
      ADDRB(0) => dev_ram_addr(0),
      ADDRC(4 downto 3) => dev_ram_addr(4 downto 3),
      ADDRC(2) => device_n_168,
      ADDRC(1) => device_n_169,
      ADDRC(0) => dev_ram_addr(0),
      ADDRD(4 downto 2) => waddr_saved(4 downto 2),
      ADDRD(1 downto 0) => ram_byte_index_write(1 downto 0),
      DIA(1) => axi4_lite_intf_inst_n_60,
      DIA(0) => axi4_lite_intf_inst_n_61,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dev_ram_data0(7 downto 6),
      DOB(1 downto 0) => NLW_ram_reg_r2_0_31_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_reg_r2_0_31_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_31_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_write
    );
\ram_word_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(0),
      Q => ram_word_out_reg(0),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(2),
      Q => ram_word_out_reg(10),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(3),
      Q => ram_word_out_reg(11),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(4),
      Q => ram_word_out_reg(12),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(5),
      Q => ram_word_out_reg(13),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(6),
      Q => ram_word_out_reg(14),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(7),
      Q => ram_word_out_reg(15),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(8),
      Q => ram_word_out_reg(16),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(9),
      Q => ram_word_out_reg(17),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(10),
      Q => ram_word_out_reg(18),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(11),
      Q => ram_word_out_reg(19),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(1),
      Q => ram_word_out_reg(1),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(12),
      Q => ram_word_out_reg(20),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(13),
      Q => ram_word_out_reg(21),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(14),
      Q => ram_word_out_reg(22),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(15),
      Q => ram_word_out_reg(23),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(16),
      Q => \ram_word_out_reg_n_0_[24]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(17),
      Q => \ram_word_out_reg_n_0_[25]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(18),
      Q => \ram_word_out_reg_n_0_[26]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(19),
      Q => \ram_word_out_reg_n_0_[27]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(20),
      Q => \ram_word_out_reg_n_0_[28]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(21),
      Q => \ram_word_out_reg_n_0_[29]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(2),
      Q => ram_word_out_reg(2),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(22),
      Q => \ram_word_out_reg_n_0_[30]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(23),
      Q => \ram_word_out_reg_n_0_[31]\,
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(3),
      Q => ram_word_out_reg(3),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(4),
      Q => ram_word_out_reg(4),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(5),
      Q => ram_word_out_reg(5),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(6),
      Q => ram_word_out_reg(6),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out0(7),
      Q => ram_word_out_reg(7),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(0),
      Q => ram_word_out_reg(8),
      R => axi4_lite_intf_inst_n_0
    );
\ram_word_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ram_read,
      D => ram_word_out_reg(1),
      Q => ram_word_out_reg(9),
      R => axi4_lite_intf_inst_n_0
    );
ram_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444447444"
    )
        port map (
      I0 => ram_write_i_2_n_0,
      I1 => ram_write,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(4),
      O => ram_write_i_1_n_0
    );
ram_write_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_byte_index_write(1),
      I1 => ram_byte_index_write(0),
      O => ram_write_i_2_n_0
    );
ram_write_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ram_write_i_1_n_0,
      Q => ram_write,
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(0),
      Q => \reg_saved_reg[10]_15\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(10),
      Q => \reg_saved_reg[10]_15\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(11),
      Q => \reg_saved_reg[10]_15\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(12),
      Q => \reg_saved_reg[10]_15\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(13),
      Q => \reg_saved_reg[10]_15\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(14),
      Q => \reg_saved_reg[10]_15\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(1),
      Q => \reg_saved_reg[10]_15\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(2),
      Q => \reg_saved_reg[10]_15\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(3),
      Q => \reg_saved_reg[10]_15\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(4),
      Q => \reg_saved_reg[10]_15\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(5),
      Q => \reg_saved_reg[10]_15\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(6),
      Q => \reg_saved_reg[10]_15\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(8),
      Q => \reg_saved_reg[10]_15\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[10]_5\(9),
      Q => \reg_saved_reg[10]_15\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(0),
      Q => \reg_saved_reg[11]_16\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(10),
      Q => \reg_saved_reg[11]_16\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(11),
      Q => \reg_saved_reg[11]_16\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(12),
      Q => \reg_saved_reg[11]_16\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(13),
      Q => \reg_saved_reg[11]_16\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(14),
      Q => \reg_saved_reg[11]_16\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(15),
      Q => \reg_saved_reg[11]_16\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(16),
      Q => \reg_saved_reg[11]_16\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(17),
      Q => \reg_saved_reg[11]_16\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(18),
      Q => \reg_saved_reg[11]_16\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(19),
      Q => \reg_saved_reg[11]_16\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(1),
      Q => \reg_saved_reg[11]_16\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(20),
      Q => \reg_saved_reg[11]_16\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(21),
      Q => \reg_saved_reg[11]_16\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(22),
      Q => \reg_saved_reg[11]_16\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(23),
      Q => \reg_saved_reg[11]_16\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(24),
      Q => \reg_saved_reg[11]_16\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(25),
      Q => \reg_saved_reg[11]_16\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(26),
      Q => \reg_saved_reg[11]_16\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(27),
      Q => \reg_saved_reg[11]_16\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(28),
      Q => \reg_saved_reg[11]_16\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(29),
      Q => \reg_saved_reg[11]_16\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(2),
      Q => \reg_saved_reg[11]_16\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(30),
      Q => \reg_saved_reg[11]_16\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(31),
      Q => \reg_saved_reg[11]_16\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(3),
      Q => \reg_saved_reg[11]_16\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(4),
      Q => \reg_saved_reg[11]_16\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(5),
      Q => \reg_saved_reg[11]_16\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(6),
      Q => \reg_saved_reg[11]_16\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(7),
      Q => \reg_saved_reg[11]_16\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(8),
      Q => \reg_saved_reg[11]_16\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[11]_7\(9),
      Q => \reg_saved_reg[11]_16\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(0),
      Q => \reg_saved_reg[12]_17\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(10),
      Q => \reg_saved_reg[12]_17\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(11),
      Q => \reg_saved_reg[12]_17\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(12),
      Q => \reg_saved_reg[12]_17\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(13),
      Q => \reg_saved_reg[12]_17\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(14),
      Q => \reg_saved_reg[12]_17\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(15),
      Q => \reg_saved_reg[12]_17\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(16),
      Q => \reg_saved_reg[12]_17\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(17),
      Q => \reg_saved_reg[12]_17\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(18),
      Q => \reg_saved_reg[12]_17\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(19),
      Q => \reg_saved_reg[12]_17\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(1),
      Q => \reg_saved_reg[12]_17\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(20),
      Q => \reg_saved_reg[12]_17\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(21),
      Q => \reg_saved_reg[12]_17\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(22),
      Q => \reg_saved_reg[12]_17\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(23),
      Q => \reg_saved_reg[12]_17\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(24),
      Q => \reg_saved_reg[12]_17\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(25),
      Q => \reg_saved_reg[12]_17\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(26),
      Q => \reg_saved_reg[12]_17\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(27),
      Q => \reg_saved_reg[12]_17\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(28),
      Q => \reg_saved_reg[12]_17\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(29),
      Q => \reg_saved_reg[12]_17\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(2),
      Q => \reg_saved_reg[12]_17\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(30),
      Q => \reg_saved_reg[12]_17\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(31),
      Q => \reg_saved_reg[12]_17\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(3),
      Q => \reg_saved_reg[12]_17\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(4),
      Q => \reg_saved_reg[12]_17\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(5),
      Q => \reg_saved_reg[12]_17\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(6),
      Q => \reg_saved_reg[12]_17\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(7),
      Q => \reg_saved_reg[12]_17\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(8),
      Q => \reg_saved_reg[12]_17\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[12]_4\(9),
      Q => \reg_saved_reg[12]_17\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(0),
      Q => \reg_saved_reg[13]_18\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(10),
      Q => \reg_saved_reg[13]_18\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(11),
      Q => \reg_saved_reg[13]_18\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(12),
      Q => \reg_saved_reg[13]_18\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(13),
      Q => \reg_saved_reg[13]_18\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(14),
      Q => \reg_saved_reg[13]_18\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(15),
      Q => \reg_saved_reg[13]_18\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(16),
      Q => \reg_saved_reg[13]_18\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(17),
      Q => \reg_saved_reg[13]_18\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(18),
      Q => \reg_saved_reg[13]_18\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(19),
      Q => \reg_saved_reg[13]_18\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(1),
      Q => \reg_saved_reg[13]_18\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(20),
      Q => \reg_saved_reg[13]_18\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(21),
      Q => \reg_saved_reg[13]_18\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(22),
      Q => \reg_saved_reg[13]_18\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(23),
      Q => \reg_saved_reg[13]_18\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(24),
      Q => \reg_saved_reg[13]_18\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(25),
      Q => \reg_saved_reg[13]_18\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(26),
      Q => \reg_saved_reg[13]_18\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(27),
      Q => \reg_saved_reg[13]_18\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(28),
      Q => \reg_saved_reg[13]_18\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(29),
      Q => \reg_saved_reg[13]_18\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(2),
      Q => \reg_saved_reg[13]_18\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(30),
      Q => \reg_saved_reg[13]_18\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(31),
      Q => \reg_saved_reg[13]_18\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(3),
      Q => \reg_saved_reg[13]_18\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(4),
      Q => \reg_saved_reg[13]_18\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(5),
      Q => \reg_saved_reg[13]_18\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(6),
      Q => \reg_saved_reg[13]_18\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(7),
      Q => \reg_saved_reg[13]_18\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(8),
      Q => \reg_saved_reg[13]_18\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[13]_8\(9),
      Q => \reg_saved_reg[13]_18\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(0),
      Q => \reg_saved_reg[14]_19\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(10),
      Q => \reg_saved_reg[14]_19\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(11),
      Q => \reg_saved_reg[14]_19\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(12),
      Q => \reg_saved_reg[14]_19\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(13),
      Q => \reg_saved_reg[14]_19\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(14),
      Q => \reg_saved_reg[14]_19\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(15),
      Q => \reg_saved_reg[14]_19\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(16),
      Q => \reg_saved_reg[14]_19\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(17),
      Q => \reg_saved_reg[14]_19\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(18),
      Q => \reg_saved_reg[14]_19\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(19),
      Q => \reg_saved_reg[14]_19\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(1),
      Q => \reg_saved_reg[14]_19\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(20),
      Q => \reg_saved_reg[14]_19\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(21),
      Q => \reg_saved_reg[14]_19\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(22),
      Q => \reg_saved_reg[14]_19\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(23),
      Q => \reg_saved_reg[14]_19\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(24),
      Q => \reg_saved_reg[14]_19\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(25),
      Q => \reg_saved_reg[14]_19\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(26),
      Q => \reg_saved_reg[14]_19\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(27),
      Q => \reg_saved_reg[14]_19\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(28),
      Q => \reg_saved_reg[14]_19\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(29),
      Q => \reg_saved_reg[14]_19\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(2),
      Q => \reg_saved_reg[14]_19\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(30),
      Q => \reg_saved_reg[14]_19\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(31),
      Q => \reg_saved_reg[14]_19\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(3),
      Q => \reg_saved_reg[14]_19\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(4),
      Q => \reg_saved_reg[14]_19\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(5),
      Q => \reg_saved_reg[14]_19\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(6),
      Q => \reg_saved_reg[14]_19\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(7),
      Q => \reg_saved_reg[14]_19\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(8),
      Q => \reg_saved_reg[14]_19\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[14]_9\(9),
      Q => \reg_saved_reg[14]_19\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(0),
      Q => \reg_saved_reg[15]_20\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(10),
      Q => \reg_saved_reg[15]_20\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(11),
      Q => \reg_saved_reg[15]_20\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(12),
      Q => \reg_saved_reg[15]_20\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(13),
      Q => \reg_saved_reg[15]_20\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(14),
      Q => \reg_saved_reg[15]_20\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(15),
      Q => \reg_saved_reg[15]_20\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(16),
      Q => \reg_saved_reg[15]_20\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(17),
      Q => \reg_saved_reg[15]_20\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(18),
      Q => \reg_saved_reg[15]_20\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(19),
      Q => \reg_saved_reg[15]_20\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(1),
      Q => \reg_saved_reg[15]_20\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(20),
      Q => \reg_saved_reg[15]_20\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(21),
      Q => \reg_saved_reg[15]_20\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(22),
      Q => \reg_saved_reg[15]_20\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(23),
      Q => \reg_saved_reg[15]_20\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(24),
      Q => \reg_saved_reg[15]_20\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(25),
      Q => \reg_saved_reg[15]_20\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(26),
      Q => \reg_saved_reg[15]_20\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(27),
      Q => \reg_saved_reg[15]_20\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(28),
      Q => \reg_saved_reg[15]_20\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(29),
      Q => \reg_saved_reg[15]_20\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(2),
      Q => \reg_saved_reg[15]_20\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(30),
      Q => \reg_saved_reg[15]_20\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(31),
      Q => \reg_saved_reg[15]_20\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(3),
      Q => \reg_saved_reg[15]_20\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(4),
      Q => \reg_saved_reg[15]_20\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(5),
      Q => \reg_saved_reg[15]_20\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(6),
      Q => \reg_saved_reg[15]_20\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(7),
      Q => \reg_saved_reg[15]_20\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(8),
      Q => \reg_saved_reg[15]_20\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[15]_10\(9),
      Q => \reg_saved_reg[15]_20\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_320,
      Q => \reg_saved_reg[16]_21\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_310,
      Q => \reg_saved_reg[16]_21\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_309,
      Q => \reg_saved_reg[16]_21\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_308,
      Q => \reg_saved_reg[16]_21\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_307,
      Q => \reg_saved_reg[16]_21\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_306,
      Q => \reg_saved_reg[16]_21\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_305,
      Q => \reg_saved_reg[16]_21\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_304,
      Q => \reg_saved_reg[16]_21\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_303,
      Q => \reg_saved_reg[16]_21\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_302,
      Q => \reg_saved_reg[16]_21\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_301,
      Q => \reg_saved_reg[16]_21\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_319,
      Q => \reg_saved_reg[16]_21\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_300,
      Q => \reg_saved_reg[16]_21\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_299,
      Q => \reg_saved_reg[16]_21\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_298,
      Q => \reg_saved_reg[16]_21\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_318,
      Q => \reg_saved_reg[16]_21\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_317,
      Q => \reg_saved_reg[16]_21\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_316,
      Q => \reg_saved_reg[16]_21\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_315,
      Q => \reg_saved_reg[16]_21\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_314,
      Q => \reg_saved_reg[16]_21\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_313,
      Q => \reg_saved_reg[16]_21\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_312,
      Q => \reg_saved_reg[16]_21\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[16][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => device_n_311,
      Q => \reg_saved_reg[16]_21\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(0),
      Q => \reg_saved_reg[17]_22\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(10),
      Q => \reg_saved_reg[17]_22\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(11),
      Q => \reg_saved_reg[17]_22\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(12),
      Q => \reg_saved_reg[17]_22\(12),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(13),
      Q => \reg_saved_reg[17]_22\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(14),
      Q => \reg_saved_reg[17]_22\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(15),
      Q => \reg_saved_reg[17]_22\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(16),
      Q => \reg_saved_reg[17]_22\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(17),
      Q => \reg_saved_reg[17]_22\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(18),
      Q => \reg_saved_reg[17]_22\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(19),
      Q => \reg_saved_reg[17]_22\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(1),
      Q => \reg_saved_reg[17]_22\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(20),
      Q => \reg_saved_reg[17]_22\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(21),
      Q => \reg_saved_reg[17]_22\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(22),
      Q => \reg_saved_reg[17]_22\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(23),
      Q => \reg_saved_reg[17]_22\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(24),
      Q => \reg_saved_reg[17]_22\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(25),
      Q => \reg_saved_reg[17]_22\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(26),
      Q => \reg_saved_reg[17]_22\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(27),
      Q => \reg_saved_reg[17]_22\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(28),
      Q => \reg_saved_reg[17]_22\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(29),
      Q => \reg_saved_reg[17]_22\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(2),
      Q => \reg_saved_reg[17]_22\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(30),
      Q => \reg_saved_reg[17]_22\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(31),
      Q => \reg_saved_reg[17]_22\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(3),
      Q => \reg_saved_reg[17]_22\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(4),
      Q => \reg_saved_reg[17]_22\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(5),
      Q => \reg_saved_reg[17]_22\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(6),
      Q => \reg_saved_reg[17]_22\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(7),
      Q => \reg_saved_reg[17]_22\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(8),
      Q => \reg_saved_reg[17]_22\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[17][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[17]_3\(9),
      Q => \reg_saved_reg[17]_22\(9),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(0),
      Q => \reg_saved_reg[9]_14\(0),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(10),
      Q => \reg_saved_reg[9]_14\(10),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(11),
      Q => \reg_saved_reg[9]_14\(11),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(13),
      Q => \reg_saved_reg[9]_14\(13),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(14),
      Q => \reg_saved_reg[9]_14\(14),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(15),
      Q => \reg_saved_reg[9]_14\(15),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(16),
      Q => \reg_saved_reg[9]_14\(16),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(17),
      Q => \reg_saved_reg[9]_14\(17),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(18),
      Q => \reg_saved_reg[9]_14\(18),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(19),
      Q => \reg_saved_reg[9]_14\(19),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(1),
      Q => \reg_saved_reg[9]_14\(1),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(20),
      Q => \reg_saved_reg[9]_14\(20),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(21),
      Q => \reg_saved_reg[9]_14\(21),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(22),
      Q => \reg_saved_reg[9]_14\(22),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(23),
      Q => \reg_saved_reg[9]_14\(23),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(24),
      Q => \reg_saved_reg[9]_14\(24),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(25),
      Q => \reg_saved_reg[9]_14\(25),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(26),
      Q => \reg_saved_reg[9]_14\(26),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(27),
      Q => \reg_saved_reg[9]_14\(27),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(28),
      Q => \reg_saved_reg[9]_14\(28),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(29),
      Q => \reg_saved_reg[9]_14\(29),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(2),
      Q => \reg_saved_reg[9]_14\(2),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(30),
      Q => \reg_saved_reg[9]_14\(30),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(31),
      Q => \reg_saved_reg[9]_14\(31),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(3),
      Q => \reg_saved_reg[9]_14\(3),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(4),
      Q => \reg_saved_reg[9]_14\(4),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(5),
      Q => \reg_saved_reg[9]_14\(5),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(6),
      Q => \reg_saved_reg[9]_14\(6),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(7),
      Q => \reg_saved_reg[9]_14\(7),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(8),
      Q => \reg_saved_reg[9]_14\(8),
      R => axi4_lite_intf_inst_n_0
    );
\reg_saved_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread_pre(8),
      D => \reg_saved_in[9]_6\(9),
      Q => \reg_saved_reg[9]_14\(9),
      R => axi4_lite_intf_inst_n_0
    );
\set_reg_clear_always[21].reg_clear_always[21][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_6_out,
      O => \set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0\
    );
\set_reg_clear_always[21].reg_clear_always[21][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_6_out,
      O => \set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0\
    );
\set_reg_clear_always[21].reg_clear_always[21][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => p_6_out,
      O => \set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0\
    );
\set_reg_clear_always[21].reg_clear_always[21][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => axi4_lite_intf_inst_n_5,
      I1 => resetn,
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(2),
      O => p_6_out
    );
\set_reg_clear_always[21].reg_clear_always_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg_clear_always[21].reg_clear_always[21][0]_i_1_n_0\,
      Q => \reg_clear_always[21]_13\(0),
      R => '0'
    );
\set_reg_clear_always[21].reg_clear_always_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg_clear_always[21].reg_clear_always[21][1]_i_1_n_0\,
      Q => \reg_clear_always[21]_13\(1),
      R => '0'
    );
\set_reg_clear_always[21].reg_clear_always_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg_clear_always[21].reg_clear_always[21][2]_i_1_n_0\,
      Q => \reg_clear_always[21]_13\(2),
      R => '0'
    );
\set_reg_clear_always[22].reg_clear_always[22][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => axi4_lite_intf_inst_n_5,
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(3),
      I5 => resetn,
      O => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(0),
      Q => \reg_clear_always[22]_11\(0),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(13),
      Q => \reg_clear_always[22]_11\(13),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(14),
      Q => \reg_clear_always[22]_11\(14),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(15),
      Q => \reg_clear_always[22]_11\(15),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(16),
      Q => \reg_clear_always[22]_11\(16),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(17),
      Q => \reg_clear_always[22]_11\(17),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(18),
      Q => \reg_clear_always[22]_11\(18),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(19),
      Q => \reg_clear_always[22]_11\(19),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(1),
      Q => \reg_clear_always[22]_11\(1),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(20),
      Q => \reg_clear_always[22]_11\(20),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(21),
      Q => \reg_clear_always[22]_11\(21),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(22),
      Q => \reg_clear_always[22]_11\(22),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(23),
      Q => \reg_clear_always[22]_11\(23),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(24),
      Q => \reg_clear_always[22]_11\(24),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(25),
      Q => \reg_clear_always[22]_11\(25),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(26),
      Q => \reg_clear_always[22]_11\(26),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(27),
      Q => \reg_clear_always[22]_11\(27),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(28),
      Q => \reg_clear_always[22]_11\(28),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(29),
      Q => \reg_clear_always[22]_11\(29),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(2),
      Q => \reg_clear_always[22]_11\(2),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(30),
      Q => \reg_clear_always[22]_11\(30),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(31),
      Q => \reg_clear_always[22]_11\(31),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(3),
      Q => \reg_clear_always[22]_11\(3),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(4),
      Q => \reg_clear_always[22]_11\(4),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(5),
      Q => \reg_clear_always[22]_11\(5),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(6),
      Q => \reg_clear_always[22]_11\(6),
      R => p_4_out
    );
\set_reg_clear_always[22].reg_clear_always_reg[22][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(7),
      Q => \reg_clear_always[22]_11\(7),
      R => p_4_out
    );
\set_reg_clear_always[23].reg_clear_always[23][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => axi4_lite_intf_inst_n_5,
      I2 => s_axi_awaddr(1),
      I3 => resetn,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(0),
      O => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(0),
      Q => \reg_clear_always[23]_12\(0),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(13),
      Q => \reg_clear_always[23]_12\(13),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(14),
      Q => \reg_clear_always[23]_12\(14),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(15),
      Q => \reg_clear_always[23]_12\(15),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(16),
      Q => \reg_clear_always[23]_12\(16),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(17),
      Q => \reg_clear_always[23]_12\(17),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(18),
      Q => \reg_clear_always[23]_12\(18),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(19),
      Q => \reg_clear_always[23]_12\(19),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(1),
      Q => \reg_clear_always[23]_12\(1),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(20),
      Q => \reg_clear_always[23]_12\(20),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(21),
      Q => \reg_clear_always[23]_12\(21),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(22),
      Q => \reg_clear_always[23]_12\(22),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(23),
      Q => \reg_clear_always[23]_12\(23),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(24),
      Q => \reg_clear_always[23]_12\(24),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(25),
      Q => \reg_clear_always[23]_12\(25),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(26),
      Q => \reg_clear_always[23]_12\(26),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(27),
      Q => \reg_clear_always[23]_12\(27),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(28),
      Q => \reg_clear_always[23]_12\(28),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(29),
      Q => \reg_clear_always[23]_12\(29),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(2),
      Q => \reg_clear_always[23]_12\(2),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(30),
      Q => \reg_clear_always[23]_12\(30),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(31),
      Q => \reg_clear_always[23]_12\(31),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(3),
      Q => \reg_clear_always[23]_12\(3),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(4),
      Q => \reg_clear_always[23]_12\(4),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(5),
      Q => \reg_clear_always[23]_12\(5),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(6),
      Q => \reg_clear_always[23]_12\(6),
      R => p_2_out
    );
\set_reg_clear_always[23].reg_clear_always_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wdata(7),
      Q => \reg_clear_always[23]_12\(7),
      R => p_2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_card_0 is
  port (
    sd_clk : in STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat3_pullup : out STD_LOGIC;
    out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_tlast : out STD_LOGIC;
    out_tvalid : out STD_LOGIC;
    out_tready : in STD_LOGIC;
    fifo_out_resetn : out STD_LOGIC;
    fifo_out_almostfull : in STD_LOGIC;
    fifo_out_tready_masked : out STD_LOGIC;
    fifo_out_tvalid_masked : out STD_LOGIC;
    fifo_out_tready_in : in STD_LOGIC;
    fifo_out_tvalid_in : in STD_LOGIC;
    in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_tlast : in STD_LOGIC;
    in_tvalid : in STD_LOGIC;
    in_tready : out STD_LOGIC;
    fifo_in_resetn : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_design_sd_card_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_sd_card_0 : entity is "block_design_sd_card_0,axi_sd_card,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block_design_sd_card_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block_design_sd_card_0 : entity is "axi_sd_card,Vivado 2019.2";
end block_design_sd_card_0;

architecture STRUCTURE of block_design_sd_card_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI:data_out:data_in, ASSOCIATED_RESET resetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_in_resetn : signal is "xilinx.com:signal:reset:1.0 fifo_in_resetn RST";
  attribute X_INTERFACE_PARAMETER of fifo_in_resetn : signal is "XIL_INTERFACENAME fifo_in_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_out_resetn : signal is "xilinx.com:signal:reset:1.0 fifo_out_resetn RST";
  attribute X_INTERFACE_PARAMETER of fifo_out_resetn : signal is "XIL_INTERFACENAME fifo_out_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_tlast : signal is "xilinx.com:interface:axis:1.0 data_in TLAST";
  attribute X_INTERFACE_INFO of in_tready : signal is "xilinx.com:interface:axis:1.0 data_in TREADY";
  attribute X_INTERFACE_PARAMETER of in_tready : signal is "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_tvalid : signal is "xilinx.com:interface:axis:1.0 data_in TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of out_tlast : signal is "xilinx.com:interface:axis:1.0 data_out TLAST";
  attribute X_INTERFACE_INFO of out_tready : signal is "xilinx.com:interface:axis:1.0 data_out TREADY";
  attribute X_INTERFACE_PARAMETER of out_tready : signal is "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_tvalid : signal is "xilinx.com:interface:axis:1.0 data_out TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of sd_clk : signal is "acme:user:sd:1.0 sd CLK";
  attribute X_INTERFACE_INFO of sd_cmd : signal is "acme:user:sd:1.0 sd CMD";
  attribute X_INTERFACE_INFO of in_tdata : signal is "xilinx.com:interface:axis:1.0 data_in TDATA";
  attribute X_INTERFACE_INFO of out_tdata : signal is "xilinx.com:interface:axis:1.0 data_out TDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of sd_dat : signal is "acme:user:sd:1.0 sd DAT";
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.block_design_sd_card_0_axi_sd_card
     port map (
      clk => clk,
      fifo_in_resetn => fifo_in_resetn,
      fifo_out_almostfull => fifo_out_almostfull,
      fifo_out_resetn => fifo_out_resetn,
      fifo_out_tready_in => fifo_out_tready_in,
      fifo_out_tready_masked => fifo_out_tready_masked,
      fifo_out_tvalid_in => fifo_out_tvalid_in,
      fifo_out_tvalid_masked => fifo_out_tvalid_masked,
      in_tdata(7 downto 0) => in_tdata(7 downto 0),
      in_tlast => in_tlast,
      in_tready => in_tready,
      in_tvalid => in_tvalid,
      interrupt => interrupt,
      out_tdata(7 downto 0) => out_tdata(7 downto 0),
      out_tlast => out_tlast,
      out_tready => out_tready,
      out_tvalid => out_tvalid,
      resetn => resetn,
      s_axi_araddr(4 downto 0) => s_axi_araddr(6 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(6 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      sd_dat(3 downto 0) => sd_dat(3 downto 0),
      sd_dat3_pullup => sd_dat3_pullup
    );
end STRUCTURE;
