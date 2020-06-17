-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 10:20:37 2020
-- Host        : cd6e0f605377 running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_sd_host_0/block_design_sd_host_0_sim_netlist.vhdl
-- Design      : block_design_sd_host_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_axi4_lite_intf is
  port (
    onwrite : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \FSM_onehot_read_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \set_reg[10].reg_written_reg[10][3]_0\ : out STD_LOGIC;
    \raddr_saved_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \set_reg[11].reg_written_reg[11][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    resetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    block_data_done : out STD_LOGIC;
    \set_reg[10].reg_written_reg[10][7]_0\ : out STD_LOGIC;
    \set_reg[10].reg_written_reg[10][5]_0\ : out STD_LOGIC;
    \set_reg[10].reg_written_reg[10][3]_1\ : out STD_LOGIC;
    p_0_in_6 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \set_reg[11].reg_written_reg[11][15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \set_reg[11].reg_written_reg[11][23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \set_reg[11].reg_written_reg[11][31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \set_reg[12].reg_written_reg[12][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_written[8]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \buffer_reg[6]\ : out STD_LOGIC;
    \set_reg[13].reg_written_reg[13][8]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    no_more_blocks0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    out_tlast_reg : in STD_LOGIC;
    in_tready_reg : in STD_LOGIC;
    fifo_resetn : in STD_LOGIC;
    resp_out : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \rdata_reg[17]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    dat_stop_clock : in STD_LOGIC;
    \rdata_reg[12]_0\ : in STD_LOGIC;
    \rdata_reg[11]_0\ : in STD_LOGIC;
    \rdata_reg[10]_0\ : in STD_LOGIC;
    \rdata_reg[5]_0\ : in STD_LOGIC;
    \rdata_reg[4]_0\ : in STD_LOGIC;
    \rdata_reg[0]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \rdata_reg[8]_0\ : in STD_LOGIC;
    out_tlast_reg_0 : in STD_LOGIC;
    out_tlast_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out_tlast_reg_2 : in STD_LOGIC;
    done_i_9 : in STD_LOGIC;
    out_tlast_reg_3 : in STD_LOGIC;
    out_tlast_i_2_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt_reg : in STD_LOGIC;
    interrupt_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    interrupt_bits_set : in STD_LOGIC_VECTOR ( 2 downto 0 );
    no_more_blocks2_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \rdata_reg[7]_0\ : in STD_LOGIC;
    \rdata_reg[6]_0\ : in STD_LOGIC;
    I16 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    no_more_blocks_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out_tlast_reg_4 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_axi4_lite_intf : entity is "axi4_lite_intf";
end block_design_sd_host_0_axi4_lite_intf;

architecture STRUCTURE of block_design_sd_host_0_axi4_lite_intf is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal err_index_next_i_4_n_0 : STD_LOGIC;
  signal err_index_next_i_5_n_0 : STD_LOGIC;
  signal interrupt_i_3_n_0 : STD_LOGIC;
  signal \^onwrite\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal out_tlast_i_2_n_0 : STD_LOGIC;
  signal out_tlast_i_3_n_0 : STD_LOGIC;
  signal out_tlast_i_7_n_0 : STD_LOGIC;
  signal raddr_saved : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^raddr_saved_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal rdata_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \read_state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \reg_written[10]_2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^reg_written[8]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \reg_written[9]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal set_arready : STD_LOGIC;
  signal \set_indicators[4].delayed.read_addr_match\ : STD_LOGIC;
  signal \set_indicators[4].delayed.read_addr_match_i_1_n_0\ : STD_LOGIC;
  signal \set_reg[10].reg_written[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[10].reg_written_reg[10][7]_0\ : STD_LOGIC;
  signal \set_reg[11].reg_written[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[11].reg_written_reg[11][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \set_reg[12].reg_written[12][31]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[12].reg_written_reg[12][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \set_reg[13].reg_written[13][8]_i_1_n_0\ : STD_LOGIC;
  signal \^set_reg[13].reg_written_reg[13][8]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \set_reg[8].reg_written[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg[8].reg_written[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg[8].reg_written[8][1]_i_2_n_0\ : STD_LOGIC;
  signal \set_reg[9].reg_written[9][3]_i_1_n_0\ : STD_LOGIC;
  signal set_wready : STD_LOGIC;
  signal write_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \write_state_next1__0\ : STD_LOGIC;
  signal \write_state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_read_state[2]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[0]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[1]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_read_state_reg[2]\ : label is "read_got_req:010,read_done:100,read_idle:001";
  attribute SOFT_HLUTNM of \FSM_onehot_write_state[0]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[0]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[1]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_write_state_reg[2]\ : label is "write_got_req:010,write_done:100,write_idle:001";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[3]_i_1__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dat_block_count_success_saved[31]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of in_tready_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \interrupt_bits_saved[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of no_more_blocks_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[15]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[17]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[17]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[17]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[19]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[21]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[22]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[31]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \set_reg[9].reg_written[9][3]_i_2\ : label is "soft_lutpair1";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  SR(0) <= \^sr\(0);
  onwrite(1 downto 0) <= \^onwrite\(1 downto 0);
  \raddr_saved_reg[4]_0\(1 downto 0) <= \^raddr_saved_reg[4]_0\(1 downto 0);
  \reg_written[8]_0\(1 downto 0) <= \^reg_written[8]_0\(1 downto 0);
  \set_reg[10].reg_written_reg[10][7]_0\ <= \^set_reg[10].reg_written_reg[10][7]_0\;
  \set_reg[11].reg_written_reg[11][31]_0\(31 downto 0) <= \^set_reg[11].reg_written_reg[11][31]_0\(31 downto 0);
  \set_reg[12].reg_written_reg[12][31]_0\(31 downto 0) <= \^set_reg[12].reg_written_reg[12][31]_0\(31 downto 0);
  \set_reg[13].reg_written_reg[13][8]_0\(6 downto 0) <= \^set_reg[13].reg_written_reg[13][8]_0\(6 downto 0);
\FSM_onehot_read_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC44"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => read_state(0),
      I2 => s_axi_rready,
      I3 => read_state_reg(1),
      O => \read_state_next__0\(0)
    );
\FSM_onehot_read_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => read_state(0),
      I2 => s_axi_rready,
      I3 => read_state_reg(1),
      I4 => read_state_reg(0),
      O => \read_state_next__0\(1)
    );
\FSM_onehot_read_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF20F0"
    )
        port map (
      I0 => read_state(0),
      I1 => s_axi_arvalid,
      I2 => read_state_reg(1),
      I3 => s_axi_rready,
      I4 => read_state_reg(0),
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
\FSM_onehot_write_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => write_state_reg(1),
      I3 => s_axi_bready,
      I4 => write_state(0),
      O => \write_state_next__0\(0)
    );
\FSM_onehot_write_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8080FFAA8080"
    )
        port map (
      I0 => write_state(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => write_state_reg(1),
      I4 => write_state_reg(0),
      I5 => s_axi_bready,
      O => \write_state_next__0\(1)
    );
\FSM_onehot_write_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2AFF0000"
    )
        port map (
      I0 => write_state(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_bready,
      I4 => write_state_reg(1),
      I5 => write_state_reg(0),
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
awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => write_state(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      O => set_wready
    );
awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_wready,
      Q => s_axi_awready,
      R => \^sr\(0)
    );
bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"552A5500007F5500"
    )
        port map (
      I0 => write_state(0),
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => write_state_reg(0),
      I4 => write_state_reg(1),
      I5 => s_axi_bready,
      O => bvalid_i_1_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => s_axi_bvalid,
      R => \^sr\(0)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => resetn,
      I1 => \^onwrite\(0),
      I2 => \^q\(0),
      O => resetn_0(0)
    );
\counter[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^onwrite\(0),
      I2 => \reg_written[10]_2\(1),
      I3 => resetn,
      O => SS(0)
    );
\dat_block_count_success_saved[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \set_indicators[4].delayed.read_addr_match\,
      I1 => read_state_reg(0),
      O => E(0)
    );
done_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3F10C000"
    )
        port map (
      I0 => out_tlast_reg_2,
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => done_i_9,
      I4 => \^q\(5),
      I5 => out_tlast_i_3_n_0,
      O => \set_reg[10].reg_written_reg[10][5]_0\
    );
err_index_next_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I16(6),
      I1 => err_index_next_i_4_n_0,
      I2 => err_index_next_i_5_n_0,
      O => \buffer_reg[6]\
    );
err_index_next_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^set_reg[13].reg_written_reg[13][8]_0\(2),
      I1 => I16(2),
      I2 => \^set_reg[13].reg_written_reg[13][8]_0\(1),
      I3 => I16(1),
      I4 => \^set_reg[13].reg_written_reg[13][8]_0\(0),
      I5 => I16(0),
      O => err_index_next_i_4_n_0
    );
err_index_next_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^set_reg[13].reg_written_reg[13][8]_0\(5),
      I1 => I16(5),
      I2 => \^set_reg[13].reg_written_reg[13][8]_0\(4),
      I3 => I16(4),
      I4 => I16(3),
      I5 => \^set_reg[13].reg_written_reg[13][8]_0\(3),
      O => err_index_next_i_5_n_0
    );
in_tready_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^q\(2),
      I1 => in_tready_reg,
      I2 => fifo_resetn,
      O => \set_reg[10].reg_written_reg[10][3]_0\
    );
\interrupt_bits_saved[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => read_state_reg(0),
      I1 => \set_indicators[4].delayed.read_addr_match\,
      I2 => resetn,
      O => \FSM_onehot_read_state_reg[1]_0\(0)
    );
interrupt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF4F4F4"
    )
        port map (
      I0 => interrupt_reg,
      I1 => \reg_written[9]_1\(3),
      I2 => interrupt_i_3_n_0,
      I3 => \reg_written[9]_1\(2),
      I4 => interrupt_reg_0(2),
      I5 => interrupt_bits_set(2),
      O => p_0_in_6
    );
interrupt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => interrupt_bits_set(1),
      I1 => interrupt_reg_0(1),
      I2 => \reg_written[9]_1\(1),
      I3 => interrupt_bits_set(0),
      I4 => interrupt_reg_0(0),
      I5 => \reg_written[9]_1\(0),
      O => interrupt_i_3_n_0
    );
\no_more_blocks2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(15),
      I1 => D(14),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(14),
      I3 => D(13),
      O => \set_reg[11].reg_written_reg[11][15]_0\(3)
    );
\no_more_blocks2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(13),
      I1 => D(12),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(12),
      I3 => D(11),
      O => \set_reg[11].reg_written_reg[11][15]_0\(2)
    );
\no_more_blocks2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(11),
      I1 => D(10),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(10),
      I3 => D(9),
      O => \set_reg[11].reg_written_reg[11][15]_0\(1)
    );
\no_more_blocks2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(9),
      I1 => D(8),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(8),
      I3 => D(7),
      O => \set_reg[11].reg_written_reg[11][15]_0\(0)
    );
\no_more_blocks2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(23),
      I1 => D(22),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(22),
      I3 => D(21),
      O => \set_reg[11].reg_written_reg[11][23]_0\(3)
    );
\no_more_blocks2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(21),
      I1 => D(20),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(20),
      I3 => D(19),
      O => \set_reg[11].reg_written_reg[11][23]_0\(2)
    );
\no_more_blocks2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(19),
      I1 => D(18),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(18),
      I3 => D(17),
      O => \set_reg[11].reg_written_reg[11][23]_0\(1)
    );
\no_more_blocks2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(17),
      I1 => D(16),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(16),
      I3 => D(15),
      O => \set_reg[11].reg_written_reg[11][23]_0\(0)
    );
\no_more_blocks2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(31),
      I1 => D(30),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(30),
      I3 => D(29),
      O => \set_reg[11].reg_written_reg[11][31]_1\(3)
    );
\no_more_blocks2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(29),
      I1 => D(28),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(28),
      I3 => D(27),
      O => \set_reg[11].reg_written_reg[11][31]_1\(2)
    );
\no_more_blocks2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(27),
      I1 => D(26),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(26),
      I3 => D(25),
      O => \set_reg[11].reg_written_reg[11][31]_1\(1)
    );
\no_more_blocks2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(25),
      I1 => D(24),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(24),
      I3 => D(23),
      O => \set_reg[11].reg_written_reg[11][31]_1\(0)
    );
no_more_blocks2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(7),
      I1 => D(6),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(6),
      I3 => D(5),
      O => S(3)
    );
no_more_blocks2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(5),
      I1 => D(4),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(4),
      I3 => D(3),
      O => S(2)
    );
no_more_blocks2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(3),
      I1 => D(2),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(2),
      I3 => D(1),
      O => S(1)
    );
no_more_blocks2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(0),
      I1 => no_more_blocks2_carry(0),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(1),
      I3 => D(0),
      O => S(0)
    );
no_more_blocks_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(2),
      I1 => no_more_blocks_reg(0),
      I2 => \reg_written[10]_2\(4),
      O => no_more_blocks0
    );
out_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFE000000"
    )
        port map (
      I0 => out_tlast_i_2_n_0,
      I1 => out_tlast_i_3_n_0,
      I2 => \^set_reg[10].reg_written_reg[10][7]_0\,
      I3 => out_tlast_reg_0,
      I4 => out_tlast_reg_1(3),
      I5 => \^q\(2),
      O => block_data_done
    );
out_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAA00205AAA0A20"
    )
        port map (
      I0 => \^q\(5),
      I1 => out_tlast_reg_3,
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => out_tlast_i_7_n_0,
      I5 => out_tlast_reg_2,
      O => out_tlast_i_2_n_0
    );
out_tlast_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => out_tlast_reg,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => out_tlast_i_3_n_0
    );
out_tlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => out_tlast_reg_1(2),
      I3 => out_tlast_reg_4,
      I4 => \^q\(3),
      O => \^set_reg[10].reg_written_reg[10][7]_0\
    );
out_tlast_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10100110FF1001FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => out_tlast_reg_1(1),
      I3 => out_tlast_reg_1(0),
      I4 => out_tlast_i_2_0,
      I5 => \^q\(5),
      O => out_tlast_i_7_n_0
    );
output_wont_overrun_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => CO(0),
      O => \set_reg[10].reg_written_reg[10][3]_1\
    );
\raddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(0),
      Q => \^raddr_saved_reg[4]_0\(0),
      R => \^sr\(0)
    );
\raddr_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(1),
      Q => raddr_saved(3),
      R => \^sr\(0)
    );
\raddr_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => s_axi_araddr(2),
      Q => \^raddr_saved_reg[4]_0\(1),
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
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEEEEEEFEEE"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => \rdata[0]_i_3_n_0\,
      I2 => \rdata[0]_i_4_n_0\,
      I3 => \^q\(0),
      I4 => \^raddr_saved_reg[4]_0\(0),
      I5 => \^set_reg[11].reg_written_reg[11][31]_0\(0),
      O => rdata_next(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222E00000000"
    )
        port map (
      I0 => resp_out(0),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[0]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(0),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \^reg_written[8]_0\(0),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \reg_written[9]_1\(0),
      I3 => raddr_saved(5),
      I4 => \^raddr_saved_reg[4]_0\(1),
      I5 => raddr_saved(3),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^raddr_saved_reg[4]_0\(1),
      I1 => raddr_saved(5),
      I2 => raddr_saved(3),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(10),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(10),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[10]_i_2_n_0\,
      O => rdata_next(10)
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(9),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[10]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(9),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(11),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(11),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[11]_i_2_n_0\,
      O => rdata_next(11)
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(10),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[11]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(10),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(12),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(12),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[12]_i_2_n_0\,
      O => rdata_next(12)
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(11),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[12]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(11),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(13),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(13),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[13]_i_2_n_0\,
      O => rdata_next(13)
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(12),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => dat_stop_clock,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(12),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(14),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[15]_i_2_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(14),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[14]_i_2_n_0\,
      O => rdata_next(14)
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(13),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[17]_0\(0),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(13),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[14]_i_2_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(15),
      I1 => \rdata[15]_i_2_n_0\,
      I2 => \rdata[17]_i_2_n_0\,
      I3 => \^set_reg[12].reg_written_reg[12][31]_0\(15),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[15]_i_3_n_0\,
      O => rdata_next(15)
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^raddr_saved_reg[4]_0\(1),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => raddr_saved(3),
      O => \rdata[15]_i_2_n_0\
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(14),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[17]_0\(1),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(14),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[15]_i_3_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(16),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(16),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[16]_i_2_n_0\,
      O => rdata_next(16)
    );
\rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(15),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[17]_0\(2),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(15),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[16]_i_2_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(17),
      I1 => \rdata[17]_i_2_n_0\,
      I2 => \rdata[17]_i_3_n_0\,
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(17),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[17]_i_5_n_0\,
      O => rdata_next(17)
    );
\rdata[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => raddr_saved(3),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[17]_i_2_n_0\
    );
\rdata[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => raddr_saved(3),
      I1 => \^raddr_saved_reg[4]_0\(0),
      O => \rdata[17]_i_3_n_0\
    );
\rdata[17]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[17]_i_4_n_0\
    );
\rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(16),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[17]_0\(3),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(16),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[17]_i_5_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[18]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(17),
      I5 => resp_out(17),
      O => rdata_next(18)
    );
\rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(18),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[18]_i_2_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[19]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(18),
      I5 => resp_out(18),
      O => rdata_next(19)
    );
\rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(19),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[19]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0111"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => raddr_saved(5),
      I2 => raddr_saved(3),
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => \rdata[1]_i_3_n_0\,
      O => rdata_next(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3055305530553F55"
    )
        port map (
      I0 => resp_out(1),
      I1 => \rdata_reg[31]_0\(1),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => interrupt_reg_0(1),
      I5 => interrupt_bits_set(1),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(1),
      I1 => raddr_saved(3),
      I2 => \rdata[17]_i_4_n_0\,
      I3 => \reg_written[9]_1\(1),
      I4 => \^raddr_saved_reg[4]_0\(0),
      I5 => \rdata[1]_i_4_n_0\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000800"
    )
        port map (
      I0 => \reg_written[10]_2\(1),
      I1 => raddr_saved(3),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => raddr_saved(5),
      I4 => \^reg_written[8]_0\(1),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[20]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(19),
      I5 => resp_out(19),
      O => rdata_next(20)
    );
\rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(20),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[20]_i_2_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[21]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(20),
      I5 => resp_out(20),
      O => rdata_next(21)
    );
\rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(21),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[21]_i_2_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[22]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(21),
      I5 => resp_out(21),
      O => rdata_next(22)
    );
\rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(22),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[22]_i_2_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(22),
      I5 => resp_out(22),
      O => rdata_next(23)
    );
\rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(23),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[23]_i_2_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[24]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(23),
      I5 => resp_out(23),
      O => rdata_next(24)
    );
\rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(24),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[24]_i_2_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[25]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(24),
      I5 => resp_out(24),
      O => rdata_next(25)
    );
\rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(25),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[25]_i_2_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[26]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(25),
      I5 => resp_out(25),
      O => rdata_next(26)
    );
\rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(26),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[26]_i_2_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[27]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(26),
      I5 => resp_out(26),
      O => rdata_next(27)
    );
\rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(27),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[27]_i_2_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[28]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(27),
      I5 => resp_out(27),
      O => rdata_next(28)
    );
\rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(28),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[28]_i_2_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[29]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(28),
      I5 => resp_out(28),
      O => rdata_next(29)
    );
\rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(29),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[29]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0003A3A3"
    )
        port map (
      I0 => \rdata[2]_i_2_n_0\,
      I1 => \rdata[2]_i_3_n_0\,
      I2 => raddr_saved(5),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => rdata_next(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(2),
      I1 => \^q\(1),
      I2 => raddr_saved(3),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \reg_written[9]_1\(2),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3055305530553F55"
    )
        port map (
      I0 => resp_out(2),
      I1 => \rdata_reg[31]_0\(2),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => interrupt_reg_0(2),
      I5 => interrupt_bits_set(2),
      O => \rdata[2]_i_3_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[30]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(29),
      I5 => resp_out(29),
      O => rdata_next(30)
    );
\rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(30),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[30]_i_2_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAFAAEAAAAAAA"
    )
        port map (
      I0 => \rdata[31]_i_2_n_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \rdata_reg[31]_0\(30),
      I5 => resp_out(30),
      O => rdata_next(31)
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => \^set_reg[11].reg_written_reg[11][31]_0\(31),
      I2 => \^raddr_saved_reg[4]_0\(0),
      I3 => raddr_saved(3),
      I4 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[31]_i_2_n_0\
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => raddr_saved(3),
      I2 => \^raddr_saved_reg[4]_0\(1),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1500"
    )
        port map (
      I0 => raddr_saved(5),
      I1 => raddr_saved(3),
      I2 => \^raddr_saved_reg[4]_0\(1),
      I3 => \rdata[3]_i_2_n_0\,
      I4 => \rdata[3]_i_3_n_0\,
      O => rdata_next(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => \rdata_reg[31]_0\(3),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => interrupt_reg,
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => resp_out(3),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000AA000000"
    )
        port map (
      I0 => \reg_written[9]_1\(3),
      I1 => \^q\(2),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(3),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => raddr_saved(3),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8000000"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(4),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \reg_written[10]_2\(4),
      I3 => \rdata[17]_i_4_n_0\,
      I4 => raddr_saved(3),
      I5 => \rdata[4]_i_2_n_0\,
      O => rdata_next(4)
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(4),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[4]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(4),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80888000"
    )
        port map (
      I0 => \rdata[17]_i_4_n_0\,
      I1 => raddr_saved(3),
      I2 => \^set_reg[11].reg_written_reg[11][31]_0\(5),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \^q\(3),
      I5 => \rdata[5]_i_2_n_0\,
      O => rdata_next(5)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(5),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \rdata_reg[5]_0\,
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(5),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03770044"
    )
        port map (
      I0 => \rdata[6]_i_2_n_0\,
      I1 => raddr_saved(5),
      I2 => raddr_saved(3),
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => \rdata[6]_i_3_n_0\,
      O => rdata_next(6)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF07070FFFF7F7"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(6),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => raddr_saved(3),
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(6),
      I4 => \^raddr_saved_reg[4]_0\(0),
      I5 => \^q\(4),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rdata_reg[31]_0\(6),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \rdata_reg[6]_0\,
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => resp_out(6),
      O => \rdata[6]_i_3_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03770044"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => raddr_saved(5),
      I2 => raddr_saved(3),
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => \rdata[7]_i_3_n_0\,
      O => rdata_next(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF07070FFFF7F7"
    )
        port map (
      I0 => \^set_reg[12].reg_written_reg[12][31]_0\(7),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => raddr_saved(3),
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(7),
      I4 => \^raddr_saved_reg[4]_0\(0),
      I5 => \^q\(5),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rdata_reg[31]_0\(7),
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => \rdata_reg[7]_0\,
      I3 => \^raddr_saved_reg[4]_0\(1),
      I4 => resp_out(7),
      O => \rdata[7]_i_3_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000505C0005555"
    )
        port map (
      I0 => \rdata_reg[8]_0\,
      I1 => \^raddr_saved_reg[4]_0\(0),
      I2 => raddr_saved(3),
      I3 => \^set_reg[11].reg_written_reg[11][31]_0\(8),
      I4 => raddr_saved(5),
      I5 => \^raddr_saved_reg[4]_0\(1),
      O => rdata_next(8)
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F220000"
    )
        port map (
      I0 => \^set_reg[11].reg_written_reg[11][31]_0\(9),
      I1 => \rdata[15]_i_2_n_0\,
      I2 => \rdata[17]_i_2_n_0\,
      I3 => \^set_reg[12].reg_written_reg[12][31]_0\(9),
      I4 => \rdata[17]_i_4_n_0\,
      I5 => \rdata[9]_i_2_n_0\,
      O => rdata_next(9)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => resp_out(8),
      I1 => \^raddr_saved_reg[4]_0\(1),
      I2 => \^q\(0),
      I3 => \^raddr_saved_reg[4]_0\(0),
      I4 => \rdata_reg[31]_0\(8),
      I5 => \rdata[31]_i_3_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(15),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(16),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(17),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(18),
      Q => s_axi_rdata(18),
      R => \^sr\(0)
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(19),
      Q => s_axi_rdata(19),
      R => \^sr\(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(20),
      Q => s_axi_rdata(20),
      R => \^sr\(0)
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(21),
      Q => s_axi_rdata(21),
      R => \^sr\(0)
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(22),
      Q => s_axi_rdata(22),
      R => \^sr\(0)
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(23),
      Q => s_axi_rdata(23),
      R => \^sr\(0)
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(24),
      Q => s_axi_rdata(24),
      R => \^sr\(0)
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(25),
      Q => s_axi_rdata(25),
      R => \^sr\(0)
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(26),
      Q => s_axi_rdata(26),
      R => \^sr\(0)
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(27),
      Q => s_axi_rdata(27),
      R => \^sr\(0)
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(28),
      Q => s_axi_rdata(28),
      R => \^sr\(0)
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(29),
      Q => s_axi_rdata(29),
      R => \^sr\(0)
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(30),
      Q => s_axi_rdata(30),
      R => \^sr\(0)
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(31),
      Q => s_axi_rdata(31),
      R => \^sr\(0)
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => read_state_reg(0),
      D => rdata_next(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A644A6"
    )
        port map (
      I0 => read_state_reg(0),
      I1 => read_state_reg(1),
      I2 => s_axi_rready,
      I3 => read_state(0),
      I4 => s_axi_arvalid,
      O => rvalid_i_1_n_0
    );
rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rvalid_i_1_n_0,
      Q => s_axi_rvalid,
      R => \^sr\(0)
    );
sd_clk_2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^sr\(0)
    );
\set_indicators[10].onwrite_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      Q => \^onwrite\(0),
      R => \^sr\(0)
    );
\set_indicators[13].onwrite_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      Q => \^onwrite\(1),
      R => \^sr\(0)
    );
\set_indicators[4].delayed.read_addr_match_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \set_indicators[4].delayed.read_addr_match_i_1_n_0\
    );
\set_indicators[4].delayed.read_addr_match_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_arready,
      D => \set_indicators[4].delayed.read_addr_match_i_1_n_0\,
      Q => \set_indicators[4].delayed.read_addr_match\,
      R => \^sr\(0)
    );
\set_reg[10].reg_written[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => write_state(0),
      I1 => \write_state_next1__0\,
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(0),
      O => \set_reg[10].reg_written[10][7]_i_1_n_0\
    );
\set_reg[10].reg_written_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \reg_written[10]_2\(1),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \reg_written[10]_2\(4),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\set_reg[10].reg_written_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[10].reg_written[10][7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\set_reg[11].reg_written[11][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => write_state(0),
      I2 => \write_state_next1__0\,
      I3 => s_axi_awaddr(3),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_awaddr(1),
      O => \set_reg[11].reg_written[11][31]_i_1_n_0\
    );
\set_reg[11].reg_written_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(0),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(10),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(11),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(12),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(13),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(14),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(15),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(16),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(17),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(18),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(19),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(1),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(20),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(21),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(22),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(23),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(24),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(25),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(26),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(27),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(28),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(29),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(2),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(30),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(31),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(3),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(4),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(5),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(6),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(7),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(8),
      R => \^sr\(0)
    );
\set_reg[11].reg_written_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[11].reg_written[11][31]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^set_reg[11].reg_written_reg[11][31]_0\(9),
      R => \^sr\(0)
    );
\set_reg[12].reg_written[12][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(2),
      I2 => write_state(0),
      I3 => \write_state_next1__0\,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(0),
      O => \set_reg[12].reg_written[12][31]_i_1_n_0\
    );
\set_reg[12].reg_written_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(0),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(10),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(11),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(12),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(13),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(14),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(15),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(16),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(17),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(18),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(19),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(1),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(20),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(21),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(22),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(23),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(24),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(25),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(26),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(27),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(28),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(29),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(2),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(30),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(31),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(3),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(4),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(5),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(6),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(7),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(8),
      R => \^sr\(0)
    );
\set_reg[12].reg_written_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[12].reg_written[12][31]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^set_reg[12].reg_written_reg[12][31]_0\(9),
      R => \^sr\(0)
    );
\set_reg[13].reg_written[13][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(2),
      I3 => write_state(0),
      I4 => \write_state_next1__0\,
      I5 => s_axi_awaddr(3),
      O => \set_reg[13].reg_written[13][8]_i_1_n_0\
    );
\set_reg[13].reg_written_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(0),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(1),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(2),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(3),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(4),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(5),
      R => \^sr\(0)
    );
\set_reg[13].reg_written_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[13].reg_written[13][8]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^set_reg[13].reg_written_reg[13][8]_0\(6),
      R => \^sr\(0)
    );
\set_reg[8].reg_written[8][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \set_reg[8].reg_written[8][1]_i_2_n_0\,
      I2 => s_axi_awaddr(0),
      I3 => \^reg_written[8]_0\(0),
      O => \set_reg[8].reg_written[8][0]_i_1_n_0\
    );
\set_reg[8].reg_written[8][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \set_reg[8].reg_written[8][1]_i_2_n_0\,
      I2 => s_axi_awaddr(0),
      I3 => \^reg_written[8]_0\(1),
      O => \set_reg[8].reg_written[8][1]_i_1_n_0\
    );
\set_reg[8].reg_written[8][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => write_state(0),
      I5 => s_axi_awaddr(1),
      O => \set_reg[8].reg_written[8][1]_i_2_n_0\
    );
\set_reg[8].reg_written_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg[8].reg_written[8][0]_i_1_n_0\,
      Q => \^reg_written[8]_0\(0),
      R => \^sr\(0)
    );
\set_reg[8].reg_written_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_reg[8].reg_written[8][1]_i_1_n_0\,
      Q => \^reg_written[8]_0\(1),
      R => \^sr\(0)
    );
\set_reg[9].reg_written[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => write_state(0),
      I3 => \write_state_next1__0\,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(2),
      O => \set_reg[9].reg_written[9][3]_i_1_n_0\
    );
\set_reg[9].reg_written[9][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => \write_state_next1__0\
    );
\set_reg[9].reg_written_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[9].reg_written[9][3]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \reg_written[9]_1\(0),
      R => \^sr\(0)
    );
\set_reg[9].reg_written_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[9].reg_written[9][3]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \reg_written[9]_1\(1),
      R => \^sr\(0)
    );
\set_reg[9].reg_written_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[9].reg_written[9][3]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \reg_written[9]_1\(2),
      R => \^sr\(0)
    );
\set_reg[9].reg_written_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \set_reg[9].reg_written[9][3]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \reg_written[9]_1\(3),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_block_mode_fifo is
  port (
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_in_tready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    got_tlast_reg_0 : out STD_LOGIC;
    out_tlast_reg_0 : out STD_LOGIC;
    fifo_out_tvalid : out STD_LOGIC;
    fifo_almost_full : out STD_LOGIC;
    p_8_in : out STD_LOGIC;
    data_in_tready : out STD_LOGIC;
    data_out_tvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_in_tvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_resetn : in STD_LOGIC;
    fifo_rewind_block : in STD_LOGIC;
    output_wont_overrun_reg_0 : in STD_LOGIC;
    output_wont_overrun_reg_1 : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    out_tlast_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    new_sd_clk : in STD_LOGIC;
    output_block_second_to_end_reg_0 : in STD_LOGIC;
    interface_out_tvalid : in STD_LOGIC;
    data_in_tvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \output_block_reg[10]_0\ : in STD_LOGIC;
    in_tready_reg_0 : in STD_LOGIC;
    \addr_tlast_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_in_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_discard_block : in STD_LOGIC;
    \addr_out_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_block_mode_fifo : entity is "block_mode_fifo";
end block_design_sd_host_0_block_mode_fifo;

architecture STRUCTURE of block_design_sd_host_0_block_mode_fifo is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \addr_in[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_in[8]_i_3_n_0\ : STD_LOGIC;
  signal \addr_in[9]_i_2_n_0\ : STD_LOGIC;
  signal \addr_in[9]_i_3_n_0\ : STD_LOGIC;
  signal \addr_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \addr_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \addr_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[8]_i_2_n_0\ : STD_LOGIC;
  signal addr_out_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \addr_out_reg__0\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \addr_tlast_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_tlast_reg_n_0_[9]\ : STD_LOGIC;
  signal almost_full_i_1_n_0 : STD_LOGIC;
  signal almost_full_i_3_n_0 : STD_LOGIC;
  signal almost_full_next : STD_LOGIC;
  signal \^fifo_in_tready\ : STD_LOGIC;
  signal \^fifo_out_tvalid\ : STD_LOGIC;
  signal got_tlast_i_1_n_0 : STD_LOGIC;
  signal \^got_tlast_reg_0\ : STD_LOGIC;
  signal in_tready_i_1_n_0 : STD_LOGIC;
  signal in_tready_i_2_n_0 : STD_LOGIC;
  signal input_block_end_i_1_n_0 : STD_LOGIC;
  signal input_block_end_i_2_n_0 : STD_LOGIC;
  signal input_block_end_reg_n_0 : STD_LOGIC;
  signal input_block_start : STD_LOGIC;
  signal input_block_start_i_1_n_0 : STD_LOGIC;
  signal mem_reg_i_2_n_0 : STD_LOGIC;
  signal \out_tlast_i_1__0_n_0\ : STD_LOGIC;
  signal \^out_tlast_reg_0\ : STD_LOGIC;
  signal out_tvalid_i_1_n_0 : STD_LOGIC;
  signal output_block : STD_LOGIC_VECTOR ( 10 downto 9 );
  signal \output_block[10]_i_1_n_0\ : STD_LOGIC;
  signal \output_block[9]_i_1_n_0\ : STD_LOGIC;
  signal output_block_second_to_end : STD_LOGIC;
  signal output_block_second_to_end_i_1_n_0 : STD_LOGIC;
  signal output_block_second_to_end_i_2_n_0 : STD_LOGIC;
  signal output_block_second_to_end_i_3_n_0 : STD_LOGIC;
  signal output_block_start : STD_LOGIC;
  signal output_block_start_i_1_n_0 : STD_LOGIC;
  signal output_block_start_i_2_n_0 : STD_LOGIC;
  signal output_block_start_i_3_n_0 : STD_LOGIC;
  signal output_wont_overrun2_carry_i_1_n_0 : STD_LOGIC;
  signal output_wont_overrun2_carry_i_2_n_0 : STD_LOGIC;
  signal output_wont_overrun2_carry_i_3_n_0 : STD_LOGIC;
  signal output_wont_overrun2_carry_i_4_n_0 : STD_LOGIC;
  signal output_wont_overrun2_carry_n_1 : STD_LOGIC;
  signal output_wont_overrun2_carry_n_2 : STD_LOGIC;
  signal output_wont_overrun2_carry_n_3 : STD_LOGIC;
  signal output_wont_overrun_i_1_n_0 : STD_LOGIC;
  signal output_wont_overrun_i_2_n_0 : STD_LOGIC;
  signal output_wont_overrun_i_3_n_0 : STD_LOGIC;
  signal output_wont_overrun_i_4_n_0 : STD_LOGIC;
  signal output_wont_overrun_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \^p_8_in\ : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_output_wont_overrun2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_in[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \addr_in[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \addr_in[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \addr_in[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \addr_in[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \addr_in[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \addr_in[7]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \addr_in[8]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \addr_in[9]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \addr_out[10]_i_3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \addr_out[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \addr_out[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \addr_out[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \addr_out[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \addr_out[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \addr_out[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of almost_full_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of almost_full_i_3 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of data_in_tready_INST_0 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of got_tlast_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of input_block_start_i_1 : label is "soft_lutpair65";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "inst/fifo/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
  attribute SOFT_HLUTNM of output_block_start_i_2 : label is "soft_lutpair69";
begin
  CO(0) <= \^co\(0);
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  fifo_in_tready <= \^fifo_in_tready\;
  fifo_out_tvalid <= \^fifo_out_tvalid\;
  got_tlast_reg_0 <= \^got_tlast_reg_0\;
  out_tlast_reg_0 <= \^out_tlast_reg_0\;
  p_8_in <= \^p_8_in\;
\addr_in[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_in(0),
      O => \addr_in[0]_i_1_n_0\
    );
\addr_in[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAA00000000"
    )
        port map (
      I0 => addr_in(10),
      I1 => fifo_discard_block,
      I2 => \^e\(0),
      I3 => addr_in(9),
      I4 => input_block_start_i_1_n_0,
      I5 => fifo_resetn,
      O => \addr_in[10]_i_1_n_0\
    );
\addr_in[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr_in(0),
      I1 => addr_in(1),
      O => \addr_in[1]_i_1_n_0\
    );
\addr_in[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addr_in(2),
      I1 => addr_in(1),
      I2 => addr_in(0),
      O => \addr_in[2]_i_1_n_0\
    );
\addr_in[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addr_in(3),
      I1 => addr_in(0),
      I2 => addr_in(1),
      I3 => addr_in(2),
      O => \addr_in[3]_i_1_n_0\
    );
\addr_in[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addr_in(4),
      I1 => addr_in(2),
      I2 => addr_in(1),
      I3 => addr_in(0),
      I4 => addr_in(3),
      O => \addr_in[4]_i_1_n_0\
    );
\addr_in[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => addr_in(5),
      I1 => addr_in(3),
      I2 => addr_in(0),
      I3 => addr_in(1),
      I4 => addr_in(2),
      I5 => addr_in(4),
      O => \addr_in[5]_i_1_n_0\
    );
\addr_in[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addr_in(6),
      I1 => \addr_in[9]_i_3_n_0\,
      I2 => addr_in(5),
      O => \addr_in[6]_i_1_n_0\
    );
\addr_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addr_in(7),
      I1 => addr_in(5),
      I2 => addr_in(6),
      I3 => \addr_in[9]_i_3_n_0\,
      O => \addr_in[7]_i_1_n_0\
    );
\addr_in[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^fifo_in_tready\,
      I1 => data_in_tvalid,
      I2 => out_tlast_reg_1(0),
      I3 => interface_out_tvalid,
      O => \^e\(0)
    );
\addr_in[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addr_in(8),
      I1 => \addr_in[9]_i_3_n_0\,
      I2 => addr_in(6),
      I3 => addr_in(5),
      I4 => addr_in(7),
      O => \addr_in[8]_i_3_n_0\
    );
\addr_in[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => addr_in(9),
      I1 => addr_in(7),
      I2 => addr_in(5),
      I3 => addr_in(6),
      I4 => \addr_in[9]_i_3_n_0\,
      I5 => addr_in(8),
      O => \addr_in[9]_i_2_n_0\
    );
\addr_in[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => addr_in(4),
      I1 => addr_in(2),
      I2 => addr_in(1),
      I3 => addr_in(0),
      I4 => addr_in(3),
      O => \addr_in[9]_i_3_n_0\
    );
\addr_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[0]_i_1_n_0\,
      Q => addr_in(0),
      R => SR(0)
    );
\addr_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_in[10]_i_1_n_0\,
      Q => addr_in(10),
      R => '0'
    );
\addr_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[1]_i_1_n_0\,
      Q => addr_in(1),
      R => SR(0)
    );
\addr_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[2]_i_1_n_0\,
      Q => addr_in(2),
      R => SR(0)
    );
\addr_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[3]_i_1_n_0\,
      Q => addr_in(3),
      R => SR(0)
    );
\addr_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[4]_i_1_n_0\,
      Q => addr_in(4),
      R => SR(0)
    );
\addr_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[5]_i_1_n_0\,
      Q => addr_in(5),
      R => SR(0)
    );
\addr_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[6]_i_1_n_0\,
      Q => addr_in(6),
      R => SR(0)
    );
\addr_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[7]_i_1_n_0\,
      Q => addr_in(7),
      R => SR(0)
    );
\addr_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \addr_in[8]_i_3_n_0\,
      Q => addr_in(8),
      R => SR(0)
    );
\addr_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_in_reg[9]_0\(0),
      D => \addr_in[9]_i_2_n_0\,
      Q => addr_in(9),
      R => SR(1)
    );
\addr_out[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => output_block(10),
      I1 => fifo_rewind_block,
      I2 => \addr_out_reg__0\(10),
      I3 => \addr_out[10]_i_3_n_0\,
      I4 => addr_out_reg(9),
      O => p_0_in(10)
    );
\addr_out[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_out_reg(7),
      I1 => \addr_out[8]_i_2_n_0\,
      I2 => addr_out_reg(6),
      I3 => addr_out_reg(8),
      O => \addr_out[10]_i_3_n_0\
    );
\addr_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => addr_out_reg(1),
      I1 => \^q\(0),
      I2 => fifo_rewind_block,
      O => p_0_in(1)
    );
\addr_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => \^q\(0),
      I2 => addr_out_reg(1),
      I3 => addr_out_reg(2),
      O => \addr_out[2]_i_1_n_0\
    );
\addr_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => addr_out_reg(1),
      I1 => \^q\(0),
      I2 => addr_out_reg(2),
      I3 => addr_out_reg(3),
      I4 => fifo_rewind_block,
      O => p_0_in(3)
    );
\addr_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => addr_out_reg(3),
      I2 => addr_out_reg(2),
      I3 => \^q\(0),
      I4 => addr_out_reg(1),
      I5 => addr_out_reg(4),
      O => \addr_out[4]_i_1_n_0\
    );
\addr_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => \addr_out[5]_i_2_n_0\,
      I2 => addr_out_reg(5),
      O => \addr_out[5]_i_1_n_0\
    );
\addr_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => addr_out_reg(4),
      I1 => addr_out_reg(1),
      I2 => \^q\(0),
      I3 => addr_out_reg(2),
      I4 => addr_out_reg(3),
      O => \addr_out[5]_i_2_n_0\
    );
\addr_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => \addr_out[8]_i_2_n_0\,
      I2 => addr_out_reg(6),
      O => \addr_out[6]_i_1_n_0\
    );
\addr_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => \addr_out[8]_i_2_n_0\,
      I2 => addr_out_reg(6),
      I3 => addr_out_reg(7),
      O => \addr_out[7]_i_1_n_0\
    );
\addr_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => fifo_rewind_block,
      I1 => addr_out_reg(6),
      I2 => \addr_out[8]_i_2_n_0\,
      I3 => addr_out_reg(7),
      I4 => addr_out_reg(8),
      O => \addr_out[8]_i_1_n_0\
    );
\addr_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addr_out_reg(3),
      I1 => addr_out_reg(2),
      I2 => \^q\(0),
      I3 => addr_out_reg(1),
      I4 => addr_out_reg(4),
      I5 => addr_out_reg(5),
      O => \addr_out[8]_i_2_n_0\
    );
\addr_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => output_block(9),
      I1 => fifo_rewind_block,
      I2 => addr_out_reg(9),
      I3 => \addr_out[10]_i_3_n_0\,
      O => p_0_in(9)
    );
\addr_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(1)
    );
\addr_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => p_0_in(10),
      Q => \addr_out_reg__0\(10),
      R => SR(1)
    );
\addr_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => p_0_in(1),
      Q => addr_out_reg(1),
      R => SR(1)
    );
\addr_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[2]_i_1_n_0\,
      Q => addr_out_reg(2),
      R => SR(1)
    );
\addr_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => p_0_in(3),
      Q => addr_out_reg(3),
      R => SR(1)
    );
\addr_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[4]_i_1_n_0\,
      Q => addr_out_reg(4),
      R => SR(1)
    );
\addr_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[5]_i_1_n_0\,
      Q => addr_out_reg(5),
      R => SR(1)
    );
\addr_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[6]_i_1_n_0\,
      Q => addr_out_reg(6),
      R => SR(1)
    );
\addr_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[7]_i_1_n_0\,
      Q => addr_out_reg(7),
      R => SR(1)
    );
\addr_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => \addr_out[8]_i_1_n_0\,
      Q => addr_out_reg(8),
      R => SR(1)
    );
\addr_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_out_reg[10]_0\(0),
      D => p_0_in(9),
      Q => addr_out_reg(9),
      R => SR(1)
    );
\addr_tlast_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(0),
      Q => \addr_tlast_reg_n_0_[0]\,
      R => SR(1)
    );
\addr_tlast_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(1),
      Q => \addr_tlast_reg_n_0_[1]\,
      R => SR(1)
    );
\addr_tlast_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(2),
      Q => \addr_tlast_reg_n_0_[2]\,
      R => SR(1)
    );
\addr_tlast_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(3),
      Q => \addr_tlast_reg_n_0_[3]\,
      R => SR(1)
    );
\addr_tlast_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(4),
      Q => \addr_tlast_reg_n_0_[4]\,
      R => SR(1)
    );
\addr_tlast_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(5),
      Q => \addr_tlast_reg_n_0_[5]\,
      R => SR(1)
    );
\addr_tlast_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(6),
      Q => \addr_tlast_reg_n_0_[6]\,
      R => SR(1)
    );
\addr_tlast_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(7),
      Q => \addr_tlast_reg_n_0_[7]\,
      R => SR(1)
    );
\addr_tlast_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(8),
      Q => \addr_tlast_reg_n_0_[8]\,
      R => SR(1)
    );
\addr_tlast_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addr_tlast_reg[0]_0\(0),
      D => addr_in(9),
      Q => \addr_tlast_reg_n_0_[9]\,
      R => SR(1)
    );
almost_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => almost_full_next,
      I1 => fifo_resetn,
      I2 => \^got_tlast_reg_0\,
      I3 => out_tlast_reg_1(1),
      O => almost_full_i_1_n_0
    );
almost_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03300EE0C00C8330"
    )
        port map (
      I0 => almost_full_i_3_n_0,
      I1 => addr_in(9),
      I2 => addr_in(10),
      I3 => output_block(10),
      I4 => in_tready_i_2_n_0,
      I5 => output_block(9),
      O => almost_full_next
    );
almost_full_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800FFFF"
    )
        port map (
      I0 => interface_out_tvalid,
      I1 => out_tlast_reg_1(0),
      I2 => data_in_tvalid,
      I3 => \^fifo_in_tready\,
      I4 => input_block_start,
      O => almost_full_i_3_n_0
    );
almost_full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => almost_full_i_1_n_0,
      Q => fifo_almost_full,
      R => '0'
    );
data_in_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fifo_in_tready\,
      I1 => out_tlast_reg_1(0),
      O => data_in_tready
    );
data_out_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fifo_out_tvalid\,
      I1 => out_tlast_reg_1(0),
      O => data_out_tvalid
    );
got_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^got_tlast_reg_0\,
      I1 => \addr_tlast_reg[0]_0\(0),
      I2 => fifo_resetn,
      O => got_tlast_i_1_n_0
    );
got_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => got_tlast_i_1_n_0,
      Q => \^got_tlast_reg_0\,
      R => '0'
    );
in_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F99F7EE7"
    )
        port map (
      I0 => in_tready_i_2_n_0,
      I1 => addr_in(9),
      I2 => addr_in(10),
      I3 => output_block(10),
      I4 => output_block(9),
      I5 => in_tready_reg_0,
      O => in_tready_i_1_n_0
    );
in_tready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => input_block_end_reg_n_0,
      I1 => interface_out_tvalid,
      I2 => out_tlast_reg_1(0),
      I3 => data_in_tvalid,
      I4 => \^fifo_in_tready\,
      O => in_tready_i_2_n_0
    );
in_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => in_tready_i_1_n_0,
      Q => \^fifo_in_tready\,
      R => '0'
    );
input_block_end_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => addr_in(7),
      I1 => addr_in(8),
      I2 => addr_in(2),
      I3 => input_block_end_i_2_n_0,
      O => input_block_end_i_1_n_0
    );
input_block_end_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_in(1),
      I1 => addr_in(0),
      I2 => addr_in(3),
      I3 => addr_in(4),
      I4 => addr_in(5),
      I5 => addr_in(6),
      O => input_block_end_i_2_n_0
    );
input_block_end_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => input_block_end_i_1_n_0,
      Q => input_block_end_reg_n_0,
      R => SR(0)
    );
input_block_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => addr_in(8),
      I1 => \addr_in[9]_i_3_n_0\,
      I2 => addr_in(6),
      I3 => addr_in(5),
      I4 => addr_in(7),
      O => input_block_start_i_1_n_0
    );
input_block_start_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => input_block_start_i_1_n_0,
      Q => input_block_start,
      S => SR(0)
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addr_in(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 5) => addr_out_reg(9 downto 1),
      ADDRBWRADDR(4) => \^q\(0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => data_out_tdata(7 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => fifo_in_tvalid,
      ENBWREN => mem_reg_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => SR(1),
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^fifo_in_tready\,
      WEA(0) => \^fifo_in_tready\,
      WEBWE(3 downto 0) => B"0000"
    );
mem_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808A80AAAAAAAA"
    )
        port map (
      I0 => output_wont_overrun_reg_n_0,
      I1 => data_out_tready,
      I2 => out_tlast_reg_1(0),
      I3 => new_sd_clk,
      I4 => output_block_second_to_end_reg_0,
      I5 => \^fifo_out_tvalid\,
      O => \^p_8_in\
    );
mem_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_8_in\,
      I1 => fifo_resetn,
      O => mem_reg_i_2_n_0
    );
\out_tlast_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \^out_tlast_reg_0\,
      I1 => \^p_8_in\,
      I2 => output_block_second_to_end,
      I3 => out_tlast_reg_1(1),
      I4 => \^co\(0),
      I5 => fifo_resetn,
      O => \out_tlast_i_1__0_n_0\
    );
out_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \out_tlast_i_1__0_n_0\,
      Q => \^out_tlast_reg_0\,
      R => '0'
    );
out_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
        port map (
      I0 => output_wont_overrun_reg_n_0,
      I1 => \output_block_reg[10]_0\,
      I2 => \^fifo_out_tvalid\,
      I3 => fifo_resetn,
      I4 => fifo_rewind_block,
      O => out_tvalid_i_1_n_0
    );
out_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_tvalid_i_1_n_0,
      Q => \^fifo_out_tvalid\,
      R => '0'
    );
\output_block[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA00000000"
    )
        port map (
      I0 => output_block(10),
      I1 => \^fifo_out_tvalid\,
      I2 => output_block_start,
      I3 => \output_block_reg[10]_0\,
      I4 => \addr_out_reg__0\(10),
      I5 => fifo_resetn,
      O => \output_block[10]_i_1_n_0\
    );
\output_block[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA00000000"
    )
        port map (
      I0 => output_block(9),
      I1 => \^fifo_out_tvalid\,
      I2 => output_block_start,
      I3 => \output_block_reg[10]_0\,
      I4 => addr_out_reg(9),
      I5 => fifo_resetn,
      O => \output_block[9]_i_1_n_0\
    );
\output_block_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \output_block[10]_i_1_n_0\,
      Q => output_block(10),
      R => '0'
    );
\output_block_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \output_block[9]_i_1_n_0\,
      Q => output_block(9),
      R => '0'
    );
output_block_second_to_end_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => output_block_second_to_end,
      I1 => \^p_8_in\,
      I2 => output_block_second_to_end_i_2_n_0,
      I3 => fifo_resetn,
      I4 => fifo_rewind_block,
      O => output_block_second_to_end_i_1_n_0
    );
output_block_second_to_end_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => addr_out_reg(4),
      I1 => addr_out_reg(6),
      I2 => addr_out_reg(1),
      I3 => output_block_second_to_end_i_3_n_0,
      O => output_block_second_to_end_i_2_n_0
    );
output_block_second_to_end_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => addr_out_reg(8),
      I1 => addr_out_reg(5),
      I2 => addr_out_reg(2),
      I3 => addr_out_reg(7),
      I4 => \^q\(0),
      I5 => addr_out_reg(3),
      O => output_block_second_to_end_i_3_n_0
    );
output_block_second_to_end_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => output_block_second_to_end_i_1_n_0,
      Q => output_block_second_to_end,
      R => '0'
    );
output_block_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => output_block_start,
      I1 => \^p_8_in\,
      I2 => output_block_start_i_2_n_0,
      I3 => fifo_resetn,
      I4 => fifo_rewind_block,
      O => output_block_start_i_1_n_0
    );
output_block_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => addr_out_reg(7),
      I1 => addr_out_reg(8),
      I2 => addr_out_reg(6),
      I3 => output_block_start_i_3_n_0,
      O => output_block_start_i_2_n_0
    );
output_block_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => addr_out_reg(1),
      I1 => \^q\(0),
      I2 => addr_out_reg(4),
      I3 => addr_out_reg(5),
      I4 => addr_out_reg(2),
      I5 => addr_out_reg(3),
      O => output_block_start_i_3_n_0
    );
output_block_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => output_block_start_i_1_n_0,
      Q => output_block_start,
      R => '0'
    );
output_wont_overrun2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => output_wont_overrun2_carry_n_1,
      CO(1) => output_wont_overrun2_carry_n_2,
      CO(0) => output_wont_overrun2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_output_wont_overrun2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => output_wont_overrun2_carry_i_1_n_0,
      S(2) => output_wont_overrun2_carry_i_2_n_0,
      S(1) => output_wont_overrun2_carry_i_3_n_0,
      S(0) => output_wont_overrun2_carry_i_4_n_0
    );
output_wont_overrun2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \addr_tlast_reg_n_0_[9]\,
      I1 => addr_out_reg(9),
      O => output_wont_overrun2_carry_i_1_n_0
    );
output_wont_overrun2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \addr_tlast_reg_n_0_[8]\,
      I1 => addr_out_reg(8),
      I2 => addr_out_reg(6),
      I3 => \addr_tlast_reg_n_0_[6]\,
      I4 => addr_out_reg(7),
      I5 => \addr_tlast_reg_n_0_[7]\,
      O => output_wont_overrun2_carry_i_2_n_0
    );
output_wont_overrun2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \addr_tlast_reg_n_0_[5]\,
      I1 => addr_out_reg(5),
      I2 => addr_out_reg(3),
      I3 => \addr_tlast_reg_n_0_[3]\,
      I4 => addr_out_reg(4),
      I5 => \addr_tlast_reg_n_0_[4]\,
      O => output_wont_overrun2_carry_i_3_n_0
    );
output_wont_overrun2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \addr_tlast_reg_n_0_[2]\,
      I1 => addr_out_reg(2),
      I2 => \^q\(0),
      I3 => \addr_tlast_reg_n_0_[0]\,
      I4 => addr_out_reg(1),
      I5 => \addr_tlast_reg_n_0_[1]\,
      O => output_wont_overrun2_carry_i_4_n_0
    );
output_wont_overrun_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F200F3000000F3"
    )
        port map (
      I0 => output_wont_overrun_i_2_n_0,
      I1 => output_wont_overrun_i_3_n_0,
      I2 => output_wont_overrun_i_4_n_0,
      I3 => output_wont_overrun_reg_0,
      I4 => \^p_8_in\,
      I5 => output_wont_overrun_reg_1,
      O => output_wont_overrun_i_1_n_0
    );
output_wont_overrun_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7DD7FF"
    )
        port map (
      I0 => output_block_second_to_end,
      I1 => addr_in(10),
      I2 => \addr_out_reg__0\(10),
      I3 => addr_out_reg(9),
      I4 => addr_in(9),
      O => output_wont_overrun_i_2_n_0
    );
output_wont_overrun_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBAAAAEB"
    )
        port map (
      I0 => out_tlast_reg_1(1),
      I1 => addr_out_reg(9),
      I2 => addr_in(9),
      I3 => \addr_out_reg__0\(10),
      I4 => addr_in(10),
      O => output_wont_overrun_i_3_n_0
    );
output_wont_overrun_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^got_tlast_reg_0\,
      I1 => out_tlast_reg_1(1),
      O => output_wont_overrun_i_4_n_0
    );
output_wont_overrun_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => output_wont_overrun_i_1_n_0,
      Q => output_wont_overrun_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_clock_divider is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_clock_divider : entity is "clock_divider";
end block_design_sd_host_0_clock_divider;

architecture STRUCTURE of block_design_sd_host_0_clock_divider is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \divide.ctr[6]_i_3_n_0\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \divide.ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \divide.ctr[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \divide.ctr[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \divide.ctr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \divide.ctr[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \divide.ctr[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \divide.ctr[6]_i_3\ : label is "soft_lutpair13";
begin
  Q(0) <= \^q\(0);
\divide.ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\divide.ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[0]\,
      I1 => \divide.ctr_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\divide.ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[2]\,
      I1 => \divide.ctr_reg_n_0_[1]\,
      I2 => \divide.ctr_reg_n_0_[0]\,
      O => \p_0_in__0\(2)
    );
\divide.ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[3]\,
      I1 => \divide.ctr_reg_n_0_[0]\,
      I2 => \divide.ctr_reg_n_0_[1]\,
      I3 => \divide.ctr_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\divide.ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[4]\,
      I1 => \divide.ctr_reg_n_0_[2]\,
      I2 => \divide.ctr_reg_n_0_[1]\,
      I3 => \divide.ctr_reg_n_0_[0]\,
      I4 => \divide.ctr_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\divide.ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[5]\,
      I1 => \divide.ctr_reg_n_0_[3]\,
      I2 => \divide.ctr_reg_n_0_[0]\,
      I3 => \divide.ctr_reg_n_0_[1]\,
      I4 => \divide.ctr_reg_n_0_[2]\,
      I5 => \divide.ctr_reg_n_0_[4]\,
      O => \p_0_in__0\(5)
    );
\divide.ctr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \divide.ctr[6]_i_3_n_0\,
      I2 => \divide.ctr_reg_n_0_[5]\,
      O => \p_0_in__0\(6)
    );
\divide.ctr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \divide.ctr_reg_n_0_[4]\,
      I1 => \divide.ctr_reg_n_0_[2]\,
      I2 => \divide.ctr_reg_n_0_[1]\,
      I3 => \divide.ctr_reg_n_0_[0]\,
      I4 => \divide.ctr_reg_n_0_[3]\,
      O => \divide.ctr[6]_i_3_n_0\
    );
\divide.ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => \divide.ctr_reg_n_0_[0]\,
      R => SR(0)
    );
\divide.ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => \divide.ctr_reg_n_0_[1]\,
      R => SR(0)
    );
\divide.ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => \divide.ctr_reg_n_0_[2]\,
      R => SR(0)
    );
\divide.ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => \divide.ctr_reg_n_0_[3]\,
      R => SR(0)
    );
\divide.ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => \divide.ctr_reg_n_0_[4]\,
      R => SR(0)
    );
\divide.ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(5),
      Q => \divide.ctr_reg_n_0_[5]\,
      R => SR(0)
    );
\divide.ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(6),
      Q => \^q\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_clock_divider__parameterized0\ is
  port (
    \divide.ctr_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \divide.ctr_reg[1]_1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    select_cur : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_stop_clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_clock_divider__parameterized0\ : entity is "clock_divider";
end \block_design_sd_host_0_clock_divider__parameterized0\;

architecture STRUCTURE of \block_design_sd_host_0_clock_divider__parameterized0\ is
  signal clk_divided_d : STD_LOGIC;
  signal \divide.ctr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \divide.ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \divide.ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \^divide.ctr_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_out_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \divide.ctr[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \divide.ctr[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \divide.ctr[6]_i_1\ : label is "soft_lutpair11";
begin
  \divide.ctr_reg[1]_0\ <= \^divide.ctr_reg[1]_0\;
clk_divided_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^divide.ctr_reg[1]_0\,
      Q => clk_divided_d,
      R => SR(0)
    );
clk_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \^divide.ctr_reg[1]_0\,
      I1 => select_cur(1),
      I2 => Q(0),
      I3 => select_cur(0),
      O => \divide.ctr_reg[1]_1\
    );
\divide.ctr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dat_stop_clock,
      I1 => \divide.ctr\(0),
      O => \divide.ctr[0]_i_1_n_0\
    );
\divide.ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \divide.ctr\(0),
      I1 => dat_stop_clock,
      I2 => \^divide.ctr_reg[1]_0\,
      O => \divide.ctr[1]_i_1_n_0\
    );
\divide.ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^divide.ctr_reg[1]_0\,
      I1 => clk_divided_d,
      O => E(0)
    );
\divide.ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \divide.ctr[0]_i_1_n_0\,
      Q => \divide.ctr\(0),
      R => SR(0)
    );
\divide.ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \divide.ctr[1]_i_1_n_0\,
      Q => \^divide.ctr_reg[1]_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_line_crc is
  port (
    \crc_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC;
    out_d_r_reg0 : out STD_LOGIC;
    err_crc_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    resetn : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    line_in : in STD_LOGIC;
    err_crc_reg_0 : in STD_LOGIC;
    set_resp_timeout_d : in STD_LOGIC;
    err_crc_reg_1 : in STD_LOGIC;
    new_sd_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_line_crc : entity is "line_crc";
end block_design_sd_host_0_line_crc;

architecture STRUCTURE of block_design_sd_host_0_line_crc is
  signal crc : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \crc[3]_i_2_n_0\ : STD_LOGIC;
  signal \crc[6]_i_1_n_0\ : STD_LOGIC;
  signal crc_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^crc_reg[6]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal err_crc_i_2_n_0 : STD_LOGIC;
  signal err_crc_i_3_n_0 : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
begin
  \crc_reg[6]_0\(0) <= \^crc_reg[6]_0\(0);
  \state_reg[1]\ <= \^state_reg[1]\;
\crc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A69999A9A66666"
    )
        port map (
      I0 => crc(2),
      I1 => \^crc_reg[6]_0\(0),
      I2 => \crc[3]_i_2_n_0\,
      I3 => p_1_in,
      I4 => \^state_reg[1]\,
      I5 => line_in,
      O => crc_next(3)
    );
\crc[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      O => \crc[3]_i_2_n_0\
    );
\crc[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \^state_reg[1]\
    );
\crc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9BBFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => resetn,
      O => \crc[6]_i_1_n_0\
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => D(0),
      Q => crc(0),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc(0),
      Q => crc(1),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc(1),
      Q => crc(2),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc_next(3),
      Q => crc(3),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc(3),
      Q => crc(4),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc(4),
      Q => crc(5),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => crc(5),
      Q => \^crc_reg[6]_0\(0),
      R => \crc[6]_i_1_n_0\
    );
err_crc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FC00AA00AA00"
    )
        port map (
      I0 => err_crc_reg_0,
      I1 => err_crc_i_2_n_0,
      I2 => err_crc_i_3_n_0,
      I3 => resetn,
      I4 => set_resp_timeout_d,
      I5 => err_crc_reg_1,
      O => err_crc_reg
    );
err_crc_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => crc(0),
      I1 => crc(1),
      I2 => crc(2),
      I3 => \^crc_reg[6]_0\(0),
      O => err_crc_i_2_n_0
    );
err_crc_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => crc(4),
      I1 => crc(3),
      I2 => crc(5),
      O => err_crc_i_3_n_0
    );
out_d_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFBFBFB"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \^crc_reg[6]_0\(0),
      I4 => Q(0),
      I5 => p_1_in,
      O => out_d_r_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_line_crc__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_line_reg : out STD_LOGIC;
    read_check_fail_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    good_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    line_in_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_line_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    read_check_fail_reg_0 : in STD_LOGIC;
    read_check_fail : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_line_crc__parameterized0\ : entity is "line_crc";
end \block_design_sd_host_0_line_crc__parameterized0\;

architecture STRUCTURE of \block_design_sd_host_0_line_crc__parameterized0\ is
  signal crc_good_line : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC;
  signal read_check_fail_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \line_out_d[0]_i_1\ : label is "soft_lutpair28";
begin
\crc[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F12F012"
    )
        port map (
      I0 => buffer_line_0(0),
      I1 => Q(0),
      I2 => p_0_in(0),
      I3 => Q(1),
      I4 => line_in_0,
      O => crc_next1(0)
    );
\crc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => line_in_0,
      I2 => Q(1),
      I3 => p_0_in(0),
      I4 => Q(0),
      I5 => buffer_line_0(0),
      O => crc_next(12)
    );
\crc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => line_in_0,
      I2 => Q(1),
      I3 => p_0_in(0),
      I4 => Q(0),
      I5 => buffer_line_0(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[14]\,
      Q => p_0_in(0),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => SR(0)
    );
good_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \crc_reg_n_0_[10]\,
      I1 => \crc_reg_n_0_[9]\,
      I2 => \crc_reg_n_0_[6]\,
      I3 => good_i_2_n_0,
      I4 => good_i_3_n_0,
      I5 => crc_next1(0),
      O => p_2_in
    );
good_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[13]\,
      I1 => \crc_reg_n_0_[12]\,
      I2 => \crc_reg_n_0_[14]\,
      I3 => \crc_reg_n_0_[8]\,
      O => good_i_2_n_0
    );
good_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[3]\,
      I1 => \crc_reg_n_0_[1]\,
      I2 => \crc_reg_n_0_[0]\,
      I3 => \crc_reg_n_0_[2]\,
      I4 => good_i_4_n_0,
      O => good_i_3_n_0
    );
good_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[5]\,
      I1 => \crc_reg_n_0_[4]\,
      I2 => \crc_reg_n_0_[7]\,
      I3 => \crc_reg_n_0_[11]\,
      O => good_i_4_n_0
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => p_2_in,
      Q => crc_good_line(0),
      R => SR(0)
    );
\line_out_d[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => p_0_in(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => buffer_line_0(0),
      O => D(0)
    );
read_check_fail_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => read_check_fail_i_2_n_0,
      I1 => read_check_fail_reg_0,
      I2 => good_reg_0,
      I3 => read_check_fail,
      O => read_line_reg
    );
read_check_fail_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => crc_good_line(0),
      I1 => read_check_fail_reg(0),
      I2 => p_1_out,
      I3 => p_3_out,
      O => read_check_fail_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_line_crc__parameterized0_1\ is
  port (
    good_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    good_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \crc_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_line_crc__parameterized0_1\ : entity is "line_crc";
end \block_design_sd_host_0_line_crc__parameterized0_1\;

architecture STRUCTURE of \block_design_sd_host_0_line_crc__parameterized0_1\ is
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
  signal \good_i_1__0_n_0\ : STD_LOGIC;
  signal \good_i_2__0_n_0\ : STD_LOGIC;
  signal \good_i_3__0_n_0\ : STD_LOGIC;
  signal \good_i_4__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \line_out_d[1]_i_1\ : label is "soft_lutpair29";
begin
\crc[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F12F012"
    )
        port map (
      I0 => \crc_reg[12]_0\(0),
      I1 => Q(0),
      I2 => p_0_in(1),
      I3 => Q(1),
      I4 => p_5_out,
      O => crc_next1(0)
    );
\crc[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => p_5_out,
      I2 => Q(1),
      I3 => p_0_in(1),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(12)
    );
\crc[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => p_5_out,
      I2 => Q(1),
      I3 => p_0_in(1),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[14]\,
      Q => p_0_in(1),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => SR(0)
    );
\good_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \crc_reg_n_0_[3]\,
      I1 => \crc_reg_n_0_[13]\,
      I2 => \crc_reg_n_0_[12]\,
      I3 => \good_i_2__0_n_0\,
      I4 => \good_i_3__0_n_0\,
      I5 => crc_next1(0),
      O => \good_i_1__0_n_0\
    );
\good_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[9]\,
      I1 => \crc_reg_n_0_[1]\,
      I2 => \crc_reg_n_0_[14]\,
      I3 => \crc_reg_n_0_[8]\,
      O => \good_i_2__0_n_0\
    );
\good_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[6]\,
      I1 => \crc_reg_n_0_[10]\,
      I2 => \crc_reg_n_0_[0]\,
      I3 => \crc_reg_n_0_[2]\,
      I4 => \good_i_4__0_n_0\,
      O => \good_i_3__0_n_0\
    );
\good_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[5]\,
      I1 => \crc_reg_n_0_[4]\,
      I2 => \crc_reg_n_0_[7]\,
      I3 => \crc_reg_n_0_[11]\,
      O => \good_i_4__0_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_1,
      D => \good_i_1__0_n_0\,
      Q => good_reg_0(0),
      R => SR(0)
    );
\line_out_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => p_0_in(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \crc_reg[12]_0\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_line_crc__parameterized0_2\ is
  port (
    crc_good_line : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    good_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \crc_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_line_crc__parameterized0_2\ : entity is "line_crc";
end \block_design_sd_host_0_line_crc__parameterized0_2\;

architecture STRUCTURE of \block_design_sd_host_0_line_crc__parameterized0_2\ is
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
  signal p_0_in : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \line_out_d[2]_i_1\ : label is "soft_lutpair30";
begin
\crc[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F12F012"
    )
        port map (
      I0 => \crc_reg[12]_0\(0),
      I1 => Q(0),
      I2 => p_0_in(2),
      I3 => Q(1),
      I4 => p_3_out,
      O => crc_next1(0)
    );
\crc[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => p_3_out,
      I2 => Q(1),
      I3 => p_0_in(2),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(12)
    );
\crc[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => p_3_out,
      I2 => Q(1),
      I3 => p_0_in(2),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[14]\,
      Q => p_0_in(2),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => SR(0)
    );
\good_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \crc_reg_n_0_[3]\,
      I1 => \crc_reg_n_0_[13]\,
      I2 => \crc_reg_n_0_[12]\,
      I3 => \good_i_2__1_n_0\,
      I4 => \good_i_3__1_n_0\,
      I5 => crc_next1(0),
      O => \good_i_1__1_n_0\
    );
\good_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[9]\,
      I1 => \crc_reg_n_0_[1]\,
      I2 => \crc_reg_n_0_[14]\,
      I3 => \crc_reg_n_0_[8]\,
      O => \good_i_2__1_n_0\
    );
\good_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[6]\,
      I1 => \crc_reg_n_0_[10]\,
      I2 => \crc_reg_n_0_[0]\,
      I3 => \crc_reg_n_0_[2]\,
      I4 => \good_i_4__1_n_0\,
      O => \good_i_3__1_n_0\
    );
\good_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[5]\,
      I1 => \crc_reg_n_0_[4]\,
      I2 => \crc_reg_n_0_[7]\,
      I3 => \crc_reg_n_0_[11]\,
      O => \good_i_4__1_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \good_i_1__1_n_0\,
      Q => crc_good_line(0),
      R => SR(0)
    );
\line_out_d[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => p_0_in(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \crc_reg[12]_0\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_line_crc__parameterized0_3\ is
  port (
    crc_good_line : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    good_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    dat_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_line_crc__parameterized0_3\ : entity is "line_crc";
end \block_design_sd_host_0_line_crc__parameterized0_3\;

architecture STRUCTURE of \block_design_sd_host_0_line_crc__parameterized0_3\ is
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
  signal \good_i_1__2_n_0\ : STD_LOGIC;
  signal \good_i_2__2_n_0\ : STD_LOGIC;
  signal \good_i_3__2_n_0\ : STD_LOGIC;
  signal \good_i_4__2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1__3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \line_out_d[3]_i_1\ : label is "soft_lutpair31";
begin
  SR(0) <= \^sr\(0);
\crc[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F12F012"
    )
        port map (
      I0 => \crc_reg[12]_0\(0),
      I1 => Q(0),
      I2 => p_0_in(3),
      I3 => Q(1),
      I4 => p_1_out,
      O => crc_next1(0)
    );
\crc[12]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[11]\,
      I1 => p_1_out,
      I2 => Q(1),
      I3 => p_0_in(3),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(12)
    );
\crc[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => dat_resetn,
      O => \^sr\(0)
    );
\crc[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A6A9A659A6A956A"
    )
        port map (
      I0 => \crc_reg_n_0_[4]\,
      I1 => p_1_out,
      I2 => Q(1),
      I3 => p_0_in(3),
      I4 => Q(0),
      I5 => \crc_reg[12]_0\(0),
      O => crc_next(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next1(0),
      Q => \crc_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[9]\,
      Q => \crc_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[10]\,
      Q => \crc_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(12),
      Q => \crc_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[12]\,
      Q => \crc_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[13]\,
      Q => \crc_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[14]\,
      Q => p_0_in(3),
      R => \^sr\(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[0]\,
      Q => \crc_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[1]\,
      Q => \crc_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[2]\,
      Q => \crc_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[3]\,
      Q => \crc_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => crc_next(5),
      Q => \crc_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[5]\,
      Q => \crc_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[6]\,
      Q => \crc_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[7]\,
      Q => \crc_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \crc_reg_n_0_[8]\,
      Q => \crc_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\good_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \crc_reg_n_0_[3]\,
      I1 => \crc_reg_n_0_[13]\,
      I2 => \crc_reg_n_0_[12]\,
      I3 => \good_i_2__2_n_0\,
      I4 => \good_i_3__2_n_0\,
      I5 => crc_next1(0),
      O => \good_i_1__2_n_0\
    );
\good_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[9]\,
      I1 => \crc_reg_n_0_[1]\,
      I2 => \crc_reg_n_0_[14]\,
      I3 => \crc_reg_n_0_[8]\,
      O => \good_i_2__2_n_0\
    );
\good_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[6]\,
      I1 => \crc_reg_n_0_[10]\,
      I2 => \crc_reg_n_0_[0]\,
      I3 => \crc_reg_n_0_[2]\,
      I4 => \good_i_4__2_n_0\,
      O => \good_i_3__2_n_0\
    );
\good_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_reg_n_0_[5]\,
      I1 => \crc_reg_n_0_[4]\,
      I2 => \crc_reg_n_0_[7]\,
      I3 => \crc_reg_n_0_[11]\,
      O => \good_i_4__2_n_0\
    );
good_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_reg_0,
      D => \good_i_1__2_n_0\,
      Q => crc_good_line(0),
      R => \^sr\(0)
    );
\line_out_d[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \crc_reg[12]_0\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_reset_gen is
  port (
    dat_resetn : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    onwrite : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    \counter_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_reset_gen : entity is "reset_gen";
end block_design_sd_host_0_reset_gen;

architecture STRUCTURE of block_design_sd_host_0_reset_gen is
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal counter_dec : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^dat_resetn\ : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal \resetn_out_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[3]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \resetn_out_i_1__0\ : label is "soft_lutpair25";
begin
  dat_resetn <= \^dat_resetn\;
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dat_resetn\,
      O => SS(0)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_dec(0)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[1]_i_1__1_n_0\
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \counter[2]_i_1__1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => p_1_in0_in
    );
\counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => \counter[3]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => counter_dec(0),
      Q => counter(0),
      S => \counter_reg[3]_0\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[1]_i_1__1_n_0\,
      Q => counter(1),
      S => \counter_reg[3]_0\(0)
    );
\counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[2]_i_1__1_n_0\,
      Q => counter(2),
      S => \counter_reg[3]_0\(0)
    );
\counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[3]_i_3_n_0\,
      Q => counter(3),
      S => \counter_reg[3]_0\(0)
    );
\resetn_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => \^dat_resetn\,
      I2 => Q(0),
      I3 => onwrite(0),
      I4 => resetn,
      O => \resetn_out_i_1__0_n_0\
    );
resetn_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \resetn_out_i_1__0_n_0\,
      Q => \^dat_resetn\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_reset_gen_0 is
  port (
    fifo_resetn : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_out_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_rewind_block : in STD_LOGIC;
    output_wont_overrun_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_reset_gen_0 : entity is "reset_gen";
end block_design_sd_host_0_reset_gen_0;

architecture STRUCTURE of block_design_sd_host_0_reset_gen_0 is
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3__0_n_0\ : STD_LOGIC;
  signal counter_dec : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fifo_resetn\ : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal resetn_out_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \counter[1]_i_1__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \counter[2]_i_1__2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \counter[3]_i_3__0\ : label is "soft_lutpair73";
begin
  fifo_resetn <= \^fifo_resetn\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_dec(0)
    );
\counter[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[1]_i_1__2_n_0\
    );
\counter[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \counter[2]_i_1__2_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => p_1_in0_in
    );
\counter[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => \counter[3]_i_3__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => counter_dec(0),
      Q => counter(0),
      S => SS(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[1]_i_1__2_n_0\,
      Q => counter(1),
      S => SS(0)
    );
\counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[2]_i_1__2_n_0\,
      Q => counter(2),
      S => SS(0)
    );
\counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in0_in,
      D => \counter[3]_i_3__0_n_0\,
      Q => counter(3),
      S => SS(0)
    );
mem_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fifo_resetn\,
      O => SR(0)
    );
output_wont_overrun_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \^fifo_resetn\,
      I1 => fifo_rewind_block,
      I2 => output_wont_overrun_reg,
      I3 => Q(0),
      O => resetn_out_reg_0
    );
resetn_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0001"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      I4 => \^fifo_resetn\,
      I5 => SS(0),
      O => resetn_out_i_1_n_0
    );
resetn_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => resetn_out_i_1_n_0,
      Q => \^fifo_resetn\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_sd_io_raw is
  port (
    line_in_0 : out STD_LOGIC;
    read_line_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    done_new_next : out STD_LOGIC;
    \buffer_line_0_reg[1]\ : out STD_LOGIC;
    good_block_transferred : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_d_reg_0 : out STD_LOGIC;
    read_line_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_tready_0 : out STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \interrupt_bits_saved_reg[3]\ : out STD_LOGIC;
    p_24_in : out STD_LOGIC;
    in_tready_reg : out STD_LOGIC;
    in_tlast_saved_reg : out STD_LOGIC;
    block_count_success_overflow_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_t_r_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_bus_d_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \error_code_reg[1]\ : in STD_LOGIC;
    fifo_out_tvalid : in STD_LOGIC;
    \error_code_reg[1]_0\ : in STD_LOGIC;
    read_check_fail : in STD_LOGIC;
    nwr_past_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    buffer_line_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    buffer0 : in STD_LOGIC;
    block_done_reg : in STD_LOGIC;
    block_done_reg_0 : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    data_out_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_reg : in STD_LOGIC;
    done_reg_0 : in STD_LOGIC;
    block_data_done : in STD_LOGIC;
    nwr_past_reg_0 : in STD_LOGIC;
    done_reg_1 : in STD_LOGIC;
    done_reg_2 : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    no_more_blocks : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    nwr_past : in STD_LOGIC;
    \FSM_sequential_state[3]_i_7_0\ : in STD_LOGIC;
    done_i_7_0 : in STD_LOGIC;
    in_tlast_saved : in STD_LOGIC;
    \FSM_sequential_state[3]_i_4_0\ : in STD_LOGIC;
    done_reg_3 : in STD_LOGIC;
    block_done_reg_1 : in STD_LOGIC;
    \interrupt_bits_saved_reg[3]_0\ : in STD_LOGIC;
    \interrupt_bits_saved_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_in_tready : in STD_LOGIC;
    in_tlast_saved_reg_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    block_count_success_overflow_reg_0 : in STD_LOGIC;
    nwr_past_reg_1 : in STD_LOGIC;
    out_d_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    line_out_en : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_sd_io_raw : entity is "sd_io_raw";
end block_design_sd_host_0_sd_io_raw;

architecture STRUCTURE of block_design_sd_host_0_sd_io_raw is
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \block_count_success[31]_i_3_n_0\ : STD_LOGIC;
  signal busy_cleared_i_2_n_0 : STD_LOGIC;
  signal clk_bus_d : STD_LOGIC;
  signal \counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \counter[9]_i_4_n_0\ : STD_LOGIC;
  signal done_i_10_n_0 : STD_LOGIC;
  signal done_i_12_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_5_n_0 : STD_LOGIC;
  signal done_i_7_n_0 : STD_LOGIC;
  signal \^done_new_next\ : STD_LOGIC;
  signal \^good_block_transferred\ : STD_LOGIC;
  signal in_d0 : STD_LOGIC;
  signal line_i : STD_LOGIC;
  signal \line_i_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \^line_in_0\ : STD_LOGIC;
  signal \line_out_t_d_reg_n_0_[0]\ : STD_LOGIC;
  signal nwr_past_i_2_n_0 : STD_LOGIC;
  signal nwr_past_i_3_n_0 : STD_LOGIC;
  signal out_d_r : STD_LOGIC;
  signal out_d_r_reg0 : STD_LOGIC;
  signal out_t_r : STD_LOGIC;
  signal \out_t_r_i_1__0_n_0\ : STD_LOGIC;
  signal out_tvalid_i_2_n_0 : STD_LOGIC;
  signal out_tvalid_i_3_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal read_line_i_1_n_0 : STD_LOGIC;
  signal \^read_line_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_14\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_18\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_9\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of busy_cleared_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of done_i_10 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \interrupt_bits_saved[3]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of interrupt_i_2 : label is "soft_lutpair33";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of nwr_past_i_3 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of out_d_r_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \out_t_r_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \output_block[10]_i_2\ : label is "soft_lutpair36";
begin
  done_new_next <= \^done_new_next\;
  good_block_transferred <= \^good_block_transferred\;
  line_in_0 <= \^line_in_0\;
  read_line_reg_0 <= \^read_line_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^done_new_next\,
      I1 => Q(0),
      O => \FSM_sequential_state_reg[3]\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0505F030"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => no_more_blocks,
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(1),
      O => \FSM_sequential_state_reg[3]\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => block_done_reg_0,
      I1 => nwr_past_reg(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^read_line_reg_0\,
      I5 => Q(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFEFEEEEEAAAB"
    )
        port map (
      I0 => \^done_new_next\,
      I1 => Q(0),
      I2 => Q(3),
      I3 => \FSM_sequential_state_reg[2]_1\(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \FSM_sequential_state_reg[3]\(2)
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015FFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => nwr_past,
      I2 => fifo_out_tvalid,
      I3 => \^read_line_reg_0\,
      I4 => Q(1),
      I5 => \FSM_sequential_state[3]_i_16_n_0\,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFEEEEEEEE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \^line_in_0\,
      I3 => \^read_line_reg_0\,
      I4 => no_more_blocks,
      I5 => \FSM_sequential_state[3]_i_7_0\,
      O => \FSM_sequential_state[3]_i_12_n_0\
    );
\FSM_sequential_state[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => block_data_done,
      I1 => \^read_line_reg_0\,
      I2 => nwr_past_reg(0),
      I3 => block_done_reg_0,
      O => \FSM_sequential_state[3]_i_13_n_0\
    );
\FSM_sequential_state[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => Q(1),
      I1 => nwr_past_reg(3),
      I2 => \^read_line_reg_0\,
      I3 => Q(0),
      O => \FSM_sequential_state[3]_i_14_n_0\
    );
\FSM_sequential_state[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F1111"
    )
        port map (
      I0 => block_done_reg_0,
      I1 => read_check_fail,
      I2 => no_more_blocks,
      I3 => \FSM_sequential_state[3]_i_18_n_0\,
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_sequential_state[3]_i_16_n_0\
    );
\FSM_sequential_state[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^read_line_reg_0\,
      I1 => \^line_in_0\,
      O => \FSM_sequential_state[3]_i_18_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF100"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => \FSM_sequential_state[3]_i_6_n_0\,
      I3 => Q(3),
      I4 => \FSM_sequential_state[3]_i_7_n_0\,
      I5 => \^done_new_next\,
      O => E(0)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAEAEAE"
    )
        port map (
      I0 => \^done_new_next\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => \FSM_sequential_state_reg[3]\(3)
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8AAA8A8A"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_8_n_0\,
      I1 => \FSM_sequential_state[3]_i_9_n_0\,
      I2 => block_data_done,
      I3 => \error_code_reg[1]\,
      I4 => \^read_line_reg_0\,
      I5 => fifo_out_tvalid,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111113F000000"
    )
        port map (
      I0 => \block_count_success[31]_i_3_n_0\,
      I1 => Q(0),
      I2 => \^line_in_0\,
      I3 => \^read_line_reg_0\,
      I4 => Q(1),
      I5 => Q(2),
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4F444F4444"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_10_n_0\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \FSM_sequential_state[3]_i_12_n_0\,
      I3 => Q(0),
      I4 => \FSM_sequential_state[3]_i_13_n_0\,
      I5 => \FSM_sequential_state[3]_i_14_n_0\,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_0\,
      I1 => Q(0),
      I2 => \^read_line_reg_0\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => in_tlast_saved,
      I1 => Q(0),
      I2 => \^read_line_reg_0\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\block_count_success[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000440404044"
    )
        port map (
      I0 => Q(1),
      I1 => block_done_reg,
      I2 => Q(3),
      I3 => read_check_fail,
      I4 => block_done_reg_0,
      I5 => \block_count_success[31]_i_3_n_0\,
      O => \^good_block_transferred\
    );
\block_count_success[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => buffer_line_0(0),
      I1 => buffer_line_0(1),
      I2 => buffer_line_0(2),
      I3 => \^read_line_reg_0\,
      I4 => block_done_reg_1,
      O => \block_count_success[31]_i_3_n_0\
    );
block_count_success_overflow_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^good_block_transferred\,
      I1 => CO(0),
      I2 => block_count_success_overflow_reg_0,
      O => block_count_success_overflow_reg
    );
\buffer_line_0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^line_in_0\,
      I1 => \error_code_reg[1]\,
      I2 => data_out_tdata(0),
      O => in_d_reg_0
    );
\buffer_line_0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008F80"
    )
        port map (
      I0 => buffer_line_0(1),
      I1 => \error_code_reg[1]\,
      I2 => \^read_line_reg_0\,
      I3 => buffer_line_0(2),
      I4 => buffer0,
      O => \buffer_line_0_reg[1]\
    );
busy_cleared_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => busy_cleared_i_2_n_0,
      O => p_24_in
    );
busy_cleared_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1DFFFFFF1D1D"
    )
        port map (
      I0 => \interrupt_bits_saved_reg[3]_0\,
      I1 => \^read_line_reg_0\,
      I2 => \^line_in_0\,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => busy_cleared_i_2_n_0
    );
clk_bus_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_bus_d_reg_0,
      Q => clk_bus_d,
      R => SR(0)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FF20"
    )
        port map (
      I0 => \^read_line_reg_0\,
      I1 => Q(0),
      I2 => \counter[9]_i_3_n_0\,
      I3 => \counter[9]_i_4_n_0\,
      I4 => Q(2),
      I5 => nwr_past_reg_0,
      O => read_line_reg_1(0)
    );
\counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0000"
    )
        port map (
      I0 => Q(3),
      I1 => fifo_out_tvalid,
      I2 => \^read_line_reg_0\,
      I3 => \error_code_reg[1]\,
      I4 => block_data_done,
      O => \counter[9]_i_3_n_0\
    );
\counter[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20200000FFF00000"
    )
        port map (
      I0 => \^read_line_reg_0\,
      I1 => \^line_in_0\,
      I2 => Q(3),
      I3 => \FSM_sequential_state[3]_i_13_n_0\,
      I4 => Q(1),
      I5 => Q(0),
      O => \counter[9]_i_4_n_0\
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD00000"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => done_i_3_n_0,
      I2 => done_reg,
      I3 => done_i_5_n_0,
      I4 => done_reg_0,
      I5 => done_i_7_n_0,
      O => \^done_new_next\
    );
done_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87FF"
    )
        port map (
      I0 => nwr_past_reg(0),
      I1 => nwr_past_reg(1),
      I2 => nwr_past_reg(2),
      I3 => \^read_line_reg_0\,
      O => done_i_10_n_0
    );
done_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^line_in_0\,
      I1 => \^read_line_reg_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => done_reg,
      I5 => done_i_7_0,
      O => done_i_12_n_0
    );
done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFFFFFBFFFF"
    )
        port map (
      I0 => fifo_out_tvalid,
      I1 => \^read_line_reg_0\,
      I2 => done_reg_1,
      I3 => Q(3),
      I4 => Q(2),
      I5 => done_reg_2,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2280"
    )
        port map (
      I0 => \^read_line_reg_0\,
      I1 => in_tlast_saved,
      I2 => nwr_past_reg(0),
      I3 => block_data_done,
      O => done_i_3_n_0
    );
done_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F040F040F04000"
    )
        port map (
      I0 => done_i_10_n_0,
      I1 => done_reg_3,
      I2 => Q(2),
      I3 => Q(3),
      I4 => read_check_fail,
      I5 => block_done_reg_0,
      O => done_i_5_n_0
    );
done_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAAAAAABAAA"
    )
        port map (
      I0 => done_i_12_n_0,
      I1 => Q(3),
      I2 => Q(0),
      I3 => no_more_blocks,
      I4 => Q(1),
      I5 => \FSM_sequential_state[1]_i_2_n_0\,
      O => done_i_7_n_0
    );
\error_code[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101510101555155"
    )
        port map (
      I0 => Q(0),
      I1 => read_check_fail,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \counter[9]_i_3_n_0\,
      O => D(0)
    );
\error_code[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500005545"
    )
        port map (
      I0 => Q(0),
      I1 => \error_code_reg[1]\,
      I2 => \^read_line_reg_0\,
      I3 => fifo_out_tvalid,
      I4 => Q(2),
      I5 => \error_code_reg[1]_0\,
      O => D(1)
    );
\in_d_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \p_0_in__0\,
      O => in_d0
    );
in_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^read_line_reg_0\,
      D => in_d0,
      Q => \^line_in_0\,
      S => SR(0)
    );
in_tlast_saved_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => in_tlast_saved,
      I1 => \error_code_reg[1]\,
      I2 => \^read_line_reg_0\,
      I3 => in_tlast_saved_reg_0,
      I4 => buffer0,
      O => in_tlast_saved_reg
    );
\interrupt_bits_saved[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0041"
    )
        port map (
      I0 => busy_cleared_i_2_n_0,
      I1 => Q(2),
      I2 => Q(0),
      I3 => \interrupt_bits_saved_reg[3]_0\,
      I4 => \interrupt_bits_saved_reg[3]_1\(0),
      O => \FSM_sequential_state_reg[2]\(0)
    );
interrupt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554554"
    )
        port map (
      I0 => \interrupt_bits_saved_reg[3]_1\(0),
      I1 => \interrupt_bits_saved_reg[3]_0\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => busy_cleared_i_2_n_0,
      O => \interrupt_bits_saved_reg[3]\
    );
iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => out_d_r,
      IO => sd_dat(0),
      O => line_i,
      T => out_t_r
    );
\line_i_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_i,
      Q => \line_i_d_reg_n_0_[0]\,
      S => SR(0)
    );
\line_i_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \line_i_d_reg_n_0_[0]\,
      Q => p_1_in,
      S => SR(0)
    );
\line_out_t_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_t_r,
      Q => \line_out_t_d_reg_n_0_[0]\,
      R => SR(0)
    );
\line_out_t_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_out_t_d_reg_n_0_[0]\,
      Q => \p_0_in__0\,
      R => SR(0)
    );
nwr_past_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202220222022"
    )
        port map (
      I0 => nwr_past_i_2_n_0,
      I1 => nwr_past_reg_0,
      I2 => Q(2),
      I3 => \counter[9]_i_4_n_0\,
      I4 => \counter[9]_i_3_n_0\,
      I5 => nwr_past_i_3_n_0,
      O => \FSM_sequential_state_reg[2]_0\
    );
nwr_past_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
        port map (
      I0 => nwr_past_reg(4),
      I1 => nwr_past_reg_1,
      I2 => \^read_line_reg_0\,
      I3 => nwr_past,
      O => nwr_past_i_2_n_0
    );
nwr_past_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^read_line_reg_0\,
      I1 => Q(0),
      O => nwr_past_i_3_n_0
    );
out_d_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => out_d_r_reg_0(0),
      I1 => line_out_en(0),
      O => out_d_r_reg0
    );
out_d_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => out_d_r_reg0,
      Q => out_d_r,
      S => SR(0)
    );
\out_t_r_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_d_r,
      I1 => line_out_en(0),
      O => \out_t_r_i_1__0_n_0\
    );
out_t_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => \out_t_r_i_1__0_n_0\,
      Q => out_t_r,
      S => SR(0)
    );
\out_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \^read_line_reg_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => nwr_past_reg(0),
      O => \FSM_sequential_state_reg[3]_0\(0)
    );
\out_tvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => fifo_in_tready,
      I1 => out_tvalid_i_2_n_0,
      I2 => block_done_reg_0,
      O => in_tready_reg
    );
out_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444544444444"
    )
        port map (
      I0 => Q(0),
      I1 => out_tvalid_i_3_n_0,
      I2 => Q(3),
      I3 => read_check_fail,
      I4 => Q(1),
      I5 => Q(2),
      O => out_tvalid_i_2_n_0
    );
out_tvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => block_data_done,
      I1 => nwr_past_reg(0),
      I2 => \^read_line_reg_0\,
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => out_tvalid_i_3_n_0
    );
\output_block[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => data_out_tready,
      I1 => \FSM_sequential_state_reg[2]_1\(0),
      I2 => \^read_line_reg_0\,
      I3 => \error_code_reg[1]\,
      O => data_out_tready_0
    );
read_line_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_bus_d,
      I1 => clk_bus_d_reg_0,
      O => read_line_i_1_n_0
    );
read_line_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => read_line_i_1_n_0,
      Q => \^read_line_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_sd_io_raw_4 is
  port (
    p_5_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_d_reg_0 : out STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_d_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    out_t_r_reg_0 : in STD_LOGIC;
    \buffer_reg[1]\ : in STD_LOGIC;
    data_out_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    read_check_fail_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    crc_good_line : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    line_out_en : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_sd_io_raw_4 : entity is "sd_io_raw";
end block_design_sd_host_0_sd_io_raw_4;

architecture STRUCTURE of block_design_sd_host_0_sd_io_raw_4 is
  signal in_d0 : STD_LOGIC;
  signal line_i : STD_LOGIC;
  signal \line_i_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_out_t_d_reg_n_0_[0]\ : STD_LOGIC;
  signal out_d_r : STD_LOGIC;
  signal out_d_r_reg0 : STD_LOGIC;
  signal out_t_r : STD_LOGIC;
  signal \out_t_r_i_1__1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^p_5_out\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_d_r_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \out_t_r_i_1__1\ : label is "soft_lutpair40";
begin
  p_5_out <= \^p_5_out\;
\buffer[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^p_5_out\,
      I1 => \buffer_reg[1]\,
      I2 => data_out_tdata(0),
      O => D(0)
    );
\in_d_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \p_0_in__0\,
      O => in_d0
    );
in_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => in_d_reg_1,
      D => in_d0,
      Q => \^p_5_out\,
      S => SR(0)
    );
iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => out_d_r,
      IO => sd_dat(0),
      O => line_i,
      T => out_t_r
    );
\line_i_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_i,
      Q => \line_i_d_reg_n_0_[0]\,
      S => SR(0)
    );
\line_i_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \line_i_d_reg_n_0_[0]\,
      Q => p_1_in,
      S => SR(0)
    );
\line_out_t_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_t_r,
      Q => \line_out_t_d_reg_n_0_[0]\,
      R => SR(0)
    );
\line_out_t_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_out_t_d_reg_n_0_[0]\,
      Q => \p_0_in__0\,
      R => SR(0)
    );
\out_d_r_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => line_out_en(0),
      O => out_d_r_reg0
    );
out_d_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => out_d_r_reg0,
      Q => out_d_r,
      S => SR(0)
    );
\out_t_r_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_d_r,
      I1 => line_out_en(0),
      O => \out_t_r_i_1__1_n_0\
    );
out_t_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => \out_t_r_i_1__1_n_0\,
      Q => out_t_r,
      S => SR(0)
    );
read_check_fail_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^p_5_out\,
      I1 => read_check_fail_reg(0),
      I2 => crc_good_line(0),
      I3 => crc_good_line(1),
      O => in_d_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_sd_io_raw_5 is
  port (
    p_3_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sd_dat : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_d_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    out_t_r_reg_0 : in STD_LOGIC;
    \buffer_reg[2]\ : in STD_LOGIC;
    data_out_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    line_out_en : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_sd_io_raw_5 : entity is "sd_io_raw";
end block_design_sd_host_0_sd_io_raw_5;

architecture STRUCTURE of block_design_sd_host_0_sd_io_raw_5 is
  signal in_d0 : STD_LOGIC;
  signal line_i : STD_LOGIC;
  signal \line_i_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_out_t_d_reg_n_0_[0]\ : STD_LOGIC;
  signal out_d_r : STD_LOGIC;
  signal out_d_r_reg0 : STD_LOGIC;
  signal out_t_r : STD_LOGIC;
  signal \out_t_r_i_1__2_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^p_3_out\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_d_r_i_1__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \out_t_r_i_1__2\ : label is "soft_lutpair41";
begin
  p_3_out <= \^p_3_out\;
\buffer[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^p_3_out\,
      I1 => \buffer_reg[2]\,
      I2 => data_out_tdata(0),
      O => D(0)
    );
\in_d_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \p_0_in__0\,
      O => in_d0
    );
in_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => in_d_reg_0,
      D => in_d0,
      Q => \^p_3_out\,
      S => SR(0)
    );
iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => out_d_r,
      IO => sd_dat(0),
      O => line_i,
      T => out_t_r
    );
\line_i_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_i,
      Q => \line_i_d_reg_n_0_[0]\,
      S => SR(0)
    );
\line_i_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \line_i_d_reg_n_0_[0]\,
      Q => p_1_in,
      S => SR(0)
    );
\line_out_t_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_t_r,
      Q => \line_out_t_d_reg_n_0_[0]\,
      R => SR(0)
    );
\line_out_t_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_out_t_d_reg_n_0_[0]\,
      Q => \p_0_in__0\,
      R => SR(0)
    );
\out_d_r_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => line_out_en(0),
      O => out_d_r_reg0
    );
out_d_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => out_d_r_reg0,
      Q => out_d_r,
      S => SR(0)
    );
\out_t_r_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_d_r,
      I1 => line_out_en(0),
      O => \out_t_r_i_1__2_n_0\
    );
out_t_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => \out_t_r_i_1__2_n_0\,
      Q => out_t_r,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_sd_io_raw_6 is
  port (
    p_1_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sd_dat : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_d_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    out_t_r_reg_0 : in STD_LOGIC;
    \buffer_reg[3]\ : in STD_LOGIC;
    data_out_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    line_out_en : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_sd_io_raw_6 : entity is "sd_io_raw";
end block_design_sd_host_0_sd_io_raw_6;

architecture STRUCTURE of block_design_sd_host_0_sd_io_raw_6 is
  signal in_d0 : STD_LOGIC;
  signal line_i : STD_LOGIC;
  signal \line_i_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_out_t_d_reg_n_0_[0]\ : STD_LOGIC;
  signal out_d_r : STD_LOGIC;
  signal out_d_r_reg0 : STD_LOGIC;
  signal out_t_r : STD_LOGIC;
  signal \out_t_r_i_1__3_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_d_r_i_1__2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \out_t_r_i_1__3\ : label is "soft_lutpair42";
begin
  p_1_out <= \^p_1_out\;
\buffer[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => \buffer_reg[3]\,
      I2 => data_out_tdata(0),
      O => D(0)
    );
\in_d_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => \p_0_in__0\,
      O => in_d0
    );
in_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => in_d_reg_0,
      D => in_d0,
      Q => \^p_1_out\,
      S => SR(0)
    );
iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => out_d_r,
      IO => sd_dat(0),
      O => line_i,
      T => out_t_r
    );
\line_i_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_i,
      Q => \line_i_d_reg_n_0_[0]\,
      S => SR(0)
    );
\line_i_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \line_i_d_reg_n_0_[0]\,
      Q => p_1_in,
      S => SR(0)
    );
\line_out_t_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_t_r,
      Q => \line_out_t_d_reg_n_0_[0]\,
      R => SR(0)
    );
\line_out_t_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_out_t_d_reg_n_0_[0]\,
      Q => \p_0_in__0\,
      R => SR(0)
    );
\out_d_r_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => line_out_en(0),
      O => out_d_r_reg0
    );
out_d_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => out_d_r_reg0,
      Q => out_d_r,
      S => SR(0)
    );
\out_t_r_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_d_r,
      I1 => line_out_en(0),
      O => \out_t_r_i_1__3_n_0\
    );
out_t_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_t_r_reg_0,
      D => \out_t_r_i_1__3_n_0\,
      Q => out_t_r,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_sd_io_raw_7 is
  port (
    line_in : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \set_reg[12].reg_written_reg[12][0]\ : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_d_r_reg_0 : in STD_LOGIC;
    out_d_r_reg0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    new_sd_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[3]\ : in STD_LOGIC;
    \state_reg[3]_0\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state[0]_i_2_0\ : in STD_LOGIC;
    \crc_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \buffer_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state[0]_i_2_1\ : in STD_LOGIC;
    \state[2]_i_2_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_sd_io_raw_7 : entity is "sd_io_raw";
end block_design_sd_host_0_sd_io_raw_7;

architecture STRUCTURE of block_design_sd_host_0_sd_io_raw_7 is
  signal in_d0 : STD_LOGIC;
  signal line_i : STD_LOGIC;
  signal \line_i_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \^line_in\ : STD_LOGIC;
  signal \line_out_t_d_reg_n_0_[0]\ : STD_LOGIC;
  signal out_d_r : STD_LOGIC;
  signal out_t_r : STD_LOGIC;
  signal out_t_r_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf : label is "PRIMITIVE";
begin
  line_in <= \^line_in\;
\buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[0]\(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => \^line_in\,
      O => \set_reg[12].reg_written_reg[12][0]\
    );
counter1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030303DFDFDFDF"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => \state_reg[3]_0\,
      I5 => Q(3),
      O => S(1)
    );
counter1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \state[1]_i_2_n_0\,
      I4 => Q(2),
      I5 => \state[2]_i_2_n_0\,
      O => S(0)
    );
\crc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D111D1DE222E2E2"
    )
        port map (
      I0 => \^line_in\,
      I1 => \crc_reg[0]\,
      I2 => p_1_in,
      I3 => Q(3),
      I4 => Q(0),
      I5 => \crc_reg[0]_0\(0),
      O => in_d_reg_0(0)
    );
in_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \p_0_in__0\,
      O => in_d0
    );
in_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => in_d0,
      Q => \^line_in\,
      S => SR(0)
    );
iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => out_d_r,
      IO => sd_cmd,
      O => line_i,
      T => out_t_r
    );
\line_i_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_i,
      Q => \line_i_d_reg_n_0_[0]\,
      S => SR(0)
    );
\line_i_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \line_i_d_reg_n_0_[0]\,
      Q => p_1_in_0,
      S => SR(0)
    );
\line_out_t_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_t_r,
      Q => \line_out_t_d_reg_n_0_[0]\,
      R => SR(0)
    );
\line_out_t_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \line_out_t_d_reg_n_0_[0]\,
      Q => \p_0_in__0\,
      R => SR(0)
    );
out_d_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_d_r_reg_0,
      D => out_d_r_reg0,
      Q => out_d_r,
      S => SR(0)
    );
out_t_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2AA82"
    )
        port map (
      I0 => out_d_r,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      O => out_t_r_i_1_n_0
    );
out_t_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => out_d_r_reg_0,
      D => out_t_r_i_1_n_0,
      Q => out_t_r,
      S => SR(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      O => D(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF0D"
    )
        port map (
      I0 => Q(2),
      I1 => \state[0]_i_3_n_0\,
      I2 => \state_reg[0]\,
      I3 => Q(3),
      I4 => \state_reg[0]_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF02255FFFF2255"
    )
        port map (
      I0 => new_sd_clk,
      I1 => \^line_in\,
      I2 => \state[0]_i_2_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \state[0]_i_2_1\,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      O => D(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFFFFFF0000"
    )
        port map (
      I0 => \state_reg[3]_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => \state[1]_i_3_n_0\,
      I5 => Q(3),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B88B8B8BBB8B8B"
    )
        port map (
      I0 => \state[1]_i_4_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => \state[0]_i_2_0\,
      I4 => Q(0),
      I5 => new_sd_clk,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99D99999DDDDDD9D"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => new_sd_clk,
      I3 => \^line_in\,
      I4 => \state_reg[3]\,
      I5 => \state_reg[3]_0\,
      O => \state[1]_i_4_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      O => D(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCF7FFFFFFF7F"
    )
        port map (
      I0 => \state_reg[3]_0\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \state[2]_i_3_n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF77775777"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \state_reg[3]\,
      I3 => new_sd_clk,
      I4 => \^line_in\,
      I5 => \state[2]_i_2_0\,
      O => \state[2]_i_3_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200023002300230"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \state_reg[3]_0\,
      O => D(3)
    );
\state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \state_reg[3]\,
      I1 => Q(0),
      I2 => new_sd_clk,
      I3 => \^line_in\,
      O => \state[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \block_design_sd_host_0_clock_divider_cascaded__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \block_design_sd_host_0_clock_divider_cascaded__parameterized0\ : entity is "clock_divider_cascaded";
end \block_design_sd_host_0_clock_divider_cascaded__parameterized0\;

architecture STRUCTURE of \block_design_sd_host_0_clock_divider_cascaded__parameterized0\ is
begin
first_divider: entity work.block_design_sd_host_0_clock_divider
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_cmd_writer is
  port (
    interrupt_bits_set : out STD_LOGIC_VECTOR ( 0 to 0 );
    err_index_reg_0 : out STD_LOGIC;
    err_crc_reg_0 : out STD_LOGIC;
    err_end_bit_reg_0 : out STD_LOGIC;
    err_timeout_reg_0 : out STD_LOGIC;
    I16 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \resp_out_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    resp_done_reg_0 : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_d_r_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    new_sd_clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    err_index_next_reg_0 : in STD_LOGIC;
    onwrite : in STD_LOGIC_VECTOR ( 0 to 0 );
    exp_r2_reg_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \buffer_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \interrupt_bits_saved_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_cmd_writer : entity is "cmd_writer";
end block_design_sd_host_0_cmd_writer;

architecture STRUCTURE of block_design_sd_host_0_cmd_writer is
  signal \^i16\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[17]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[18]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[19]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[20]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[21]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[22]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[25]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[27]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[28]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[29]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[30]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[32]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[33]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[34]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[35]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[36]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[37]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[38]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[38]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[38]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal cmd_resp_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal counter : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal counter0 : STD_LOGIC;
  signal counter1 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_3_n_0\ : STD_LOGIC;
  signal counter_inc : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal crc : STD_LOGIC_VECTOR ( 6 to 6 );
  signal crc_gen_n_1 : STD_LOGIC;
  signal crc_gen_n_3 : STD_LOGIC;
  signal crc_next1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^err_crc_reg_0\ : STD_LOGIC;
  signal err_end_bit_i_1_n_0 : STD_LOGIC;
  signal \^err_end_bit_reg_0\ : STD_LOGIC;
  signal err_index_i_1_n_0 : STD_LOGIC;
  signal err_index_next : STD_LOGIC;
  signal err_index_next_i_1_n_0 : STD_LOGIC;
  signal err_index_next_i_2_n_0 : STD_LOGIC;
  signal \^err_index_reg_0\ : STD_LOGIC;
  signal err_timeout_i_1_n_0 : STD_LOGIC;
  signal \^err_timeout_reg_0\ : STD_LOGIC;
  signal exp_r2_i_1_n_0 : STD_LOGIC;
  signal exp_r2_reg_n_0 : STD_LOGIC;
  signal \^interrupt_bits_set\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal io_raw_n_1 : STD_LOGIC;
  signal io_raw_n_2 : STD_LOGIC;
  signal io_raw_n_3 : STD_LOGIC;
  signal io_raw_n_4 : STD_LOGIC;
  signal io_raw_n_5 : STD_LOGIC;
  signal io_raw_n_6 : STD_LOGIC;
  signal io_raw_n_8 : STD_LOGIC;
  signal line_in : STD_LOGIC;
  signal out_d_r_reg0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal resp_done_i_1_n_0 : STD_LOGIC;
  signal resp_out0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal resp_out_change0 : STD_LOGIC;
  signal resp_saved_reg_0_3_0_5_i_1_n_0 : STD_LOGIC;
  signal resp_saved_reg_0_3_0_5_i_2_n_0 : STD_LOGIC;
  signal resp_saved_reg_0_3_0_5_i_3_n_0 : STD_LOGIC;
  signal set_resp_timeout_d : STD_LOGIC;
  signal set_resp_timeout_d_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal NLW_counter1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_resp_saved_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_resp_saved_reg_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buffer[38]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \buffer[39]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[6]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of err_index_next_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \interrupt_bits_saved[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata[0]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata[8]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdata[8]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of resp_done_i_1 : label is "soft_lutpair16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_0_5 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of resp_saved_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of resp_saved_reg_0_3_0_5 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of resp_saved_reg_0_3_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of resp_saved_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of resp_saved_reg_0_3_0_5 : label is 5;
  attribute SOFT_HLUTNM of resp_saved_reg_0_3_0_5_i_3 : label is "soft_lutpair20";
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_12_17 : label is "";
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_12_17 : label is 128;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_12_17 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin of resp_saved_reg_0_3_12_17 : label is 0;
  attribute ram_addr_end of resp_saved_reg_0_3_12_17 : label is 3;
  attribute ram_offset of resp_saved_reg_0_3_12_17 : label is 0;
  attribute ram_slice_begin of resp_saved_reg_0_3_12_17 : label is 12;
  attribute ram_slice_end of resp_saved_reg_0_3_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_18_23 : label is "";
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_18_23 : label is 128;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_18_23 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin of resp_saved_reg_0_3_18_23 : label is 0;
  attribute ram_addr_end of resp_saved_reg_0_3_18_23 : label is 3;
  attribute ram_offset of resp_saved_reg_0_3_18_23 : label is 0;
  attribute ram_slice_begin of resp_saved_reg_0_3_18_23 : label is 18;
  attribute ram_slice_end of resp_saved_reg_0_3_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_24_29 : label is "";
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_24_29 : label is 128;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_24_29 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin of resp_saved_reg_0_3_24_29 : label is 0;
  attribute ram_addr_end of resp_saved_reg_0_3_24_29 : label is 3;
  attribute ram_offset of resp_saved_reg_0_3_24_29 : label is 0;
  attribute ram_slice_begin of resp_saved_reg_0_3_24_29 : label is 24;
  attribute ram_slice_end of resp_saved_reg_0_3_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_30_31 : label is "";
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_30_31 : label is 128;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_30_31 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin of resp_saved_reg_0_3_30_31 : label is 0;
  attribute ram_addr_end of resp_saved_reg_0_3_30_31 : label is 3;
  attribute ram_offset of resp_saved_reg_0_3_30_31 : label is 0;
  attribute ram_slice_begin of resp_saved_reg_0_3_30_31 : label is 30;
  attribute ram_slice_end of resp_saved_reg_0_3_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of resp_saved_reg_0_3_6_11 : label is "";
  attribute RTL_RAM_BITS of resp_saved_reg_0_3_6_11 : label is 128;
  attribute RTL_RAM_NAME of resp_saved_reg_0_3_6_11 : label is "inst/cmd_writer/resp_saved";
  attribute ram_addr_begin of resp_saved_reg_0_3_6_11 : label is 0;
  attribute ram_addr_end of resp_saved_reg_0_3_6_11 : label is 3;
  attribute ram_offset of resp_saved_reg_0_3_6_11 : label is 0;
  attribute ram_slice_begin of resp_saved_reg_0_3_6_11 : label is 6;
  attribute ram_slice_end of resp_saved_reg_0_3_6_11 : label is 11;
  attribute SOFT_HLUTNM of \state[0]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair17";
begin
  I16(6 downto 0) <= \^i16\(6 downto 0);
  err_crc_reg_0 <= \^err_crc_reg_0\;
  err_end_bit_reg_0 <= \^err_end_bit_reg_0\;
  err_index_reg_0 <= \^err_index_reg_0\;
  err_timeout_reg_0 <= \^err_timeout_reg_0\;
  interrupt_bits_set(0) <= \^interrupt_bits_set\(0);
\buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(10),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[9]\,
      O => \buffer[10]_i_1_n_0\
    );
\buffer[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(11),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[10]\,
      O => \buffer[11]_i_1_n_0\
    );
\buffer[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(12),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[11]\,
      O => \buffer[12]_i_1_n_0\
    );
\buffer[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(13),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[12]\,
      O => \buffer[13]_i_1_n_0\
    );
\buffer[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(14),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[13]\,
      O => \buffer[14]_i_1_n_0\
    );
\buffer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(15),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[14]\,
      O => \buffer[15]_i_1_n_0\
    );
\buffer[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(16),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[15]\,
      O => \buffer[16]_i_1_n_0\
    );
\buffer[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(17),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[16]\,
      O => \buffer[17]_i_1_n_0\
    );
\buffer[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(18),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[17]\,
      O => \buffer[18]_i_1_n_0\
    );
\buffer[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(19),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[18]\,
      O => \buffer[19]_i_1_n_0\
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(1),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(0),
      O => \buffer[1]_i_1_n_0\
    );
\buffer[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(20),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[19]\,
      O => \buffer[20]_i_1_n_0\
    );
\buffer[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(21),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[20]\,
      O => \buffer[21]_i_1_n_0\
    );
\buffer[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(22),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[21]\,
      O => \buffer[22]_i_1_n_0\
    );
\buffer[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(23),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[22]\,
      O => \buffer[23]_i_1_n_0\
    );
\buffer[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(24),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[23]\,
      O => \buffer[24]_i_1_n_0\
    );
\buffer[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(25),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[24]\,
      O => \buffer[25]_i_1_n_0\
    );
\buffer[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(26),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[25]\,
      O => \buffer[26]_i_1_n_0\
    );
\buffer[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(27),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[26]\,
      O => \buffer[27]_i_1_n_0\
    );
\buffer[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(28),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[27]\,
      O => \buffer[28]_i_1_n_0\
    );
\buffer[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(29),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[28]\,
      O => \buffer[29]_i_1_n_0\
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(2),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(1),
      O => \buffer[2]_i_1_n_0\
    );
\buffer[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(30),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[29]\,
      O => \buffer[30]_i_1_n_0\
    );
\buffer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(31),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[30]\,
      O => \buffer[31]_i_1_n_0\
    );
\buffer[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[31]\,
      O => \buffer[32]_i_1_n_0\
    );
\buffer[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(1),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[32]\,
      O => \buffer[33]_i_1_n_0\
    );
\buffer[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(2),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[33]\,
      O => \buffer[34]_i_1_n_0\
    );
\buffer[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[34]\,
      O => \buffer[35]_i_1_n_0\
    );
\buffer[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(4),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[35]\,
      O => \buffer[36]_i_1_n_0\
    );
\buffer[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(5),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[36]\,
      O => \buffer[37]_i_1_n_0\
    );
\buffer[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFD57"
    )
        port map (
      I0 => resetn,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      O => \buffer[38]_i_1_n_0\
    );
\buffer[38]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAF"
    )
        port map (
      I0 => new_sd_clk,
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      O => \buffer[38]_i_2_n_0\
    );
\buffer[38]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \buffer_reg_n_0_[37]\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      O => \buffer[38]_i_3_n_0\
    );
\buffer[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \buffer_reg_n_0_[38]\,
      I1 => new_sd_clk,
      I2 => \buffer[39]_i_2_n_0\,
      I3 => p_1_in,
      O => \buffer[39]_i_1_n_0\
    );
\buffer[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFD5F"
    )
        port map (
      I0 => resetn,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      O => \buffer[39]_i_2_n_0\
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(2),
      O => \buffer[3]_i_1_n_0\
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(4),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(3),
      O => \buffer[4]_i_1_n_0\
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(5),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(4),
      O => \buffer[5]_i_1_n_0\
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(6),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(5),
      O => \buffer[6]_i_1_n_0\
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(7),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^i16\(6),
      O => \buffer[7]_i_1_n_0\
    );
\buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(8),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[7]\,
      O => \buffer[8]_i_1_n_0\
    );
\buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \buffer_reg[31]_0\(9),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \buffer_reg_n_0_[8]\,
      O => \buffer[9]_i_1_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => io_raw_n_8,
      Q => \^i16\(0),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[10]_i_1_n_0\,
      Q => \buffer_reg_n_0_[10]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[11]_i_1_n_0\,
      Q => \buffer_reg_n_0_[11]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[12]_i_1_n_0\,
      Q => \buffer_reg_n_0_[12]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[13]_i_1_n_0\,
      Q => \buffer_reg_n_0_[13]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[14]_i_1_n_0\,
      Q => \buffer_reg_n_0_[14]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[15]_i_1_n_0\,
      Q => \buffer_reg_n_0_[15]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[16]_i_1_n_0\,
      Q => \buffer_reg_n_0_[16]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[17]_i_1_n_0\,
      Q => \buffer_reg_n_0_[17]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[18]_i_1_n_0\,
      Q => \buffer_reg_n_0_[18]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[19]_i_1_n_0\,
      Q => \buffer_reg_n_0_[19]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[1]_i_1_n_0\,
      Q => \^i16\(1),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[20]_i_1_n_0\,
      Q => \buffer_reg_n_0_[20]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[21]_i_1_n_0\,
      Q => \buffer_reg_n_0_[21]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[22]_i_1_n_0\,
      Q => \buffer_reg_n_0_[22]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[23]_i_1_n_0\,
      Q => \buffer_reg_n_0_[23]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[24]_i_1_n_0\,
      Q => \buffer_reg_n_0_[24]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[25]_i_1_n_0\,
      Q => \buffer_reg_n_0_[25]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[26]_i_1_n_0\,
      Q => \buffer_reg_n_0_[26]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[27]_i_1_n_0\,
      Q => \buffer_reg_n_0_[27]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[28]_i_1_n_0\,
      Q => \buffer_reg_n_0_[28]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[29]_i_1_n_0\,
      Q => \buffer_reg_n_0_[29]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[2]_i_1_n_0\,
      Q => \^i16\(2),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[30]_i_1_n_0\,
      Q => \buffer_reg_n_0_[30]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[31]_i_1_n_0\,
      Q => \buffer_reg_n_0_[31]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[32]_i_1_n_0\,
      Q => \buffer_reg_n_0_[32]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[33]_i_1_n_0\,
      Q => \buffer_reg_n_0_[33]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[34]_i_1_n_0\,
      Q => \buffer_reg_n_0_[34]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[35]_i_1_n_0\,
      Q => \buffer_reg_n_0_[35]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[36]_i_1_n_0\,
      Q => \buffer_reg_n_0_[36]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[37]_i_1_n_0\,
      Q => \buffer_reg_n_0_[37]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[38]_i_3_n_0\,
      Q => \buffer_reg_n_0_[38]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buffer[39]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[3]_i_1_n_0\,
      Q => \^i16\(3),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[4]_i_1_n_0\,
      Q => \^i16\(4),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[5]_i_1_n_0\,
      Q => \^i16\(5),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[6]_i_1_n_0\,
      Q => \^i16\(6),
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[7]_i_1_n_0\,
      Q => \buffer_reg_n_0_[7]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[8]_i_1_n_0\,
      Q => \buffer_reg_n_0_[8]\,
      R => \buffer[38]_i_1_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[38]_i_2_n_0\,
      D => \buffer[9]_i_1_n_0\,
      Q => \buffer_reg_n_0_[9]\,
      R => \buffer[38]_i_1_n_0\
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_counter1_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => counter1,
      CO(0) => counter1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => io_raw_n_1,
      S(0) => io_raw_n_2
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_inc(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => counter_inc(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      O => counter_inc(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      I3 => counter(3),
      O => counter_inc(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(2),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter(5),
      I1 => counter(2),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(3),
      I5 => counter(4),
      O => counter_inc(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter1,
      I1 => resetn,
      O => counter0
    );
\counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(6),
      I1 => counter(4),
      I2 => counter(3),
      I3 => \counter[6]_i_3_n_0\,
      I4 => counter(5),
      O => \counter[6]_i_2_n_0\
    );
\counter[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \counter[6]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => counter_inc(0),
      Q => counter(0),
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => counter_inc(1),
      Q => counter(1),
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => counter_inc(2),
      Q => counter(2),
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => counter_inc(3),
      Q => counter(3),
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4),
      R => counter0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => counter_inc(5),
      Q => counter(5),
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => new_sd_clk,
      D => \counter[6]_i_2_n_0\,
      Q => counter(6),
      R => counter0
    );
crc_gen: entity work.block_design_sd_host_0_line_crc
     port map (
      D(0) => crc_next1(0),
      Q(3 downto 0) => state(3 downto 0),
      clk => clk,
      \crc_reg[6]_0\(0) => crc(6),
      err_crc_reg => crc_gen_n_3,
      err_crc_reg_0 => \^err_crc_reg_0\,
      err_crc_reg_1 => resp_done_i_1_n_0,
      line_in => line_in,
      new_sd_clk => new_sd_clk,
      out_d_r_reg0 => out_d_r_reg0,
      p_1_in => p_1_in,
      resetn => resetn,
      set_resp_timeout_d => set_resp_timeout_d,
      \state_reg[1]\ => crc_gen_n_1
    );
err_crc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => crc_gen_n_3,
      Q => \^err_crc_reg_0\,
      R => '0'
    );
err_end_bit_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0030A0A0"
    )
        port map (
      I0 => \^err_end_bit_reg_0\,
      I1 => \^i16\(0),
      I2 => resetn,
      I3 => set_resp_timeout_d,
      I4 => resp_done_i_1_n_0,
      O => err_end_bit_i_1_n_0
    );
err_end_bit_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_end_bit_i_1_n_0,
      Q => \^err_end_bit_reg_0\,
      R => '0'
    );
err_index_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
        port map (
      I0 => \^err_index_reg_0\,
      I1 => err_index_next,
      I2 => resetn,
      I3 => set_resp_timeout_d,
      I4 => resp_done_i_1_n_0,
      O => err_index_i_1_n_0
    );
err_index_next_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
        port map (
      I0 => err_index_next_i_2_n_0,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      O => err_index_next_i_1_n_0
    );
err_index_next_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAA8AA00000000"
    )
        port map (
      I0 => err_index_next,
      I1 => counter(6),
      I2 => counter(5),
      I3 => resp_saved_reg_0_3_0_5_i_2_n_0,
      I4 => err_index_next_reg_0,
      I5 => resetn,
      O => err_index_next_i_2_n_0
    );
err_index_next_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_index_next_i_1_n_0,
      Q => err_index_next,
      R => '0'
    );
err_index_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_index_i_1_n_0,
      Q => \^err_index_reg_0\,
      R => '0'
    );
err_timeout_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => set_resp_timeout_d,
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => \^err_timeout_reg_0\,
      O => err_timeout_i_1_n_0
    );
err_timeout_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_timeout_i_1_n_0,
      Q => \^err_timeout_reg_0\,
      R => SR(0)
    );
exp_r2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => exp_r2_reg_0(6),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => exp_r2_reg_n_0,
      O => exp_r2_i_1_n_0
    );
exp_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => exp_r2_i_1_n_0,
      Q => exp_r2_reg_n_0,
      R => SR(0)
    );
\interrupt_bits_saved[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \interrupt_bits_saved_reg[0]\(0),
      I1 => \^interrupt_bits_set\(0),
      O => D(0)
    );
io_raw: entity work.block_design_sd_host_0_sd_io_raw_7
     port map (
      D(3) => io_raw_n_3,
      D(2) => io_raw_n_4,
      D(1) => io_raw_n_5,
      D(0) => io_raw_n_6,
      Q(3 downto 0) => state(3 downto 0),
      S(1) => io_raw_n_1,
      S(0) => io_raw_n_2,
      SR(0) => SR(0),
      \buffer_reg[0]\(0) => \buffer_reg[31]_0\(0),
      clk => clk,
      \crc_reg[0]\ => crc_gen_n_1,
      \crc_reg[0]_0\(0) => crc(6),
      in_d_reg_0(0) => crc_next1(0),
      line_in => line_in,
      new_sd_clk => new_sd_clk,
      out_d_r_reg0 => out_d_r_reg0,
      out_d_r_reg_0 => out_d_r_reg,
      p_1_in => p_1_in,
      sd_cmd => sd_cmd,
      \set_reg[12].reg_written_reg[12][0]\ => io_raw_n_8,
      \state[0]_i_2_0\ => \state[1]_i_5_n_0\,
      \state[0]_i_2_1\ => \state[0]_i_6_n_0\,
      \state[2]_i_2_0\ => \state[2]_i_4_n_0\,
      \state_reg[0]\ => \state[0]_i_4_n_0\,
      \state_reg[0]_0\ => \state[0]_i_5_n_0\,
      \state_reg[3]\ => exp_r2_reg_n_0,
      \state_reg[3]_0\ => \state[3]_i_3_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^interrupt_bits_set\(0),
      I1 => \interrupt_bits_saved_reg[0]\(0),
      O => resp_done_reg_0
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F55305530553055"
    )
        port map (
      I0 => cmd_resp_out(8),
      I1 => \rdata_reg[8]\(0),
      I2 => \rdata_reg[8]_0\(0),
      I3 => \rdata_reg[8]_0\(1),
      I4 => \rdata[8]_i_3_n_0\,
      I5 => \rdata[8]_i_4_n_0\,
      O => \resp_out_reg[8]_0\
    );
\rdata[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => \rdata[8]_i_3_n_0\
    );
\rdata[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \rdata[8]_i_4_n_0\
    );
resp_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => resp_done_i_1_n_0
    );
resp_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => resp_done_i_1_n_0,
      Q => \^interrupt_bits_set\(0),
      R => SR(0)
    );
\resp_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_araddr(2),
      O => resp_out_change0
    );
\resp_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(0),
      Q => Q(0),
      R => SR(0)
    );
\resp_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(10),
      Q => Q(9),
      R => SR(0)
    );
\resp_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(11),
      Q => Q(10),
      R => SR(0)
    );
\resp_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(12),
      Q => Q(11),
      R => SR(0)
    );
\resp_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(13),
      Q => Q(12),
      R => SR(0)
    );
\resp_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(14),
      Q => Q(13),
      R => SR(0)
    );
\resp_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(15),
      Q => Q(14),
      R => SR(0)
    );
\resp_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(16),
      Q => Q(15),
      R => SR(0)
    );
\resp_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(17),
      Q => Q(16),
      R => SR(0)
    );
\resp_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(18),
      Q => Q(17),
      R => SR(0)
    );
\resp_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(19),
      Q => Q(18),
      R => SR(0)
    );
\resp_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(1),
      Q => Q(1),
      R => SR(0)
    );
\resp_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(20),
      Q => Q(19),
      R => SR(0)
    );
\resp_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(21),
      Q => Q(20),
      R => SR(0)
    );
\resp_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(22),
      Q => Q(21),
      R => SR(0)
    );
\resp_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(23),
      Q => Q(22),
      R => SR(0)
    );
\resp_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(24),
      Q => Q(23),
      R => SR(0)
    );
\resp_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(25),
      Q => Q(24),
      R => SR(0)
    );
\resp_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(26),
      Q => Q(25),
      R => SR(0)
    );
\resp_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(27),
      Q => Q(26),
      R => SR(0)
    );
\resp_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(28),
      Q => Q(27),
      R => SR(0)
    );
\resp_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(29),
      Q => Q(28),
      R => SR(0)
    );
\resp_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(2),
      Q => Q(2),
      R => SR(0)
    );
\resp_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(30),
      Q => Q(29),
      R => SR(0)
    );
\resp_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(31),
      Q => Q(30),
      R => SR(0)
    );
\resp_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(3),
      Q => Q(3),
      R => SR(0)
    );
\resp_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(4),
      Q => Q(4),
      R => SR(0)
    );
\resp_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(5),
      Q => Q(5),
      R => SR(0)
    );
\resp_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(6),
      Q => Q(6),
      R => SR(0)
    );
\resp_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(7),
      Q => Q(7),
      R => SR(0)
    );
\resp_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(8),
      Q => cmd_resp_out(8),
      R => SR(0)
    );
\resp_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => resp_out_change0,
      D => resp_out0(9),
      Q => Q(8),
      R => SR(0)
    );
resp_saved_reg_0_3_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1 downto 0) => \^i16\(1 downto 0),
      DIB(1 downto 0) => \^i16\(3 downto 2),
      DIC(1 downto 0) => \^i16\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(1 downto 0),
      DOB(1 downto 0) => resp_out0(3 downto 2),
      DOC(1 downto 0) => resp_out0(5 downto 4),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => resp_saved_reg_0_3_0_5_i_2_n_0,
      I1 => resp_saved_reg_0_3_0_5_i_3_n_0,
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      I5 => state(0),
      O => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \counter[6]_i_3_n_0\,
      I1 => \rdata[8]_i_3_n_0\,
      I2 => counter(3),
      I3 => counter(4),
      I4 => state(1),
      I5 => state(2),
      O => resp_saved_reg_0_3_0_5_i_2_n_0
    );
resp_saved_reg_0_3_0_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(4),
      I3 => counter(3),
      I4 => counter(1),
      O => resp_saved_reg_0_3_0_5_i_3_n_0
    );
resp_saved_reg_0_3_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1) => \buffer_reg_n_0_[13]\,
      DIA(0) => \buffer_reg_n_0_[12]\,
      DIB(1) => \buffer_reg_n_0_[15]\,
      DIB(0) => \buffer_reg_n_0_[14]\,
      DIC(1) => \buffer_reg_n_0_[17]\,
      DIC(0) => \buffer_reg_n_0_[16]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(13 downto 12),
      DOB(1 downto 0) => resp_out0(15 downto 14),
      DOC(1 downto 0) => resp_out0(17 downto 16),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1) => \buffer_reg_n_0_[19]\,
      DIA(0) => \buffer_reg_n_0_[18]\,
      DIB(1) => \buffer_reg_n_0_[21]\,
      DIB(0) => \buffer_reg_n_0_[20]\,
      DIC(1) => \buffer_reg_n_0_[23]\,
      DIC(0) => \buffer_reg_n_0_[22]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(19 downto 18),
      DOB(1 downto 0) => resp_out0(21 downto 20),
      DOC(1 downto 0) => resp_out0(23 downto 22),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1) => \buffer_reg_n_0_[25]\,
      DIA(0) => \buffer_reg_n_0_[24]\,
      DIB(1) => \buffer_reg_n_0_[27]\,
      DIB(0) => \buffer_reg_n_0_[26]\,
      DIC(1) => \buffer_reg_n_0_[29]\,
      DIC(0) => \buffer_reg_n_0_[28]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(25 downto 24),
      DOB(1 downto 0) => resp_out0(27 downto 26),
      DOC(1 downto 0) => resp_out0(29 downto 28),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1) => \buffer_reg_n_0_[31]\,
      DIA(0) => \buffer_reg_n_0_[30]\,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(31 downto 30),
      DOB(1 downto 0) => NLW_resp_saved_reg_0_3_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_resp_saved_reg_0_3_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
resp_saved_reg_0_3_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => s_axi_araddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => counter(6 downto 5),
      DIA(1) => \buffer_reg_n_0_[7]\,
      DIA(0) => \^i16\(6),
      DIB(1) => \buffer_reg_n_0_[9]\,
      DIB(0) => \buffer_reg_n_0_[8]\,
      DIC(1) => \buffer_reg_n_0_[11]\,
      DIC(0) => \buffer_reg_n_0_[10]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => resp_out0(7 downto 6),
      DOB(1 downto 0) => resp_out0(9 downto 8),
      DOC(1 downto 0) => resp_out0(11 downto 10),
      DOD(1 downto 0) => NLW_resp_saved_reg_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => resp_saved_reg_0_3_0_5_i_1_n_0
    );
set_resp_timeout_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => \state[3]_i_3_n_0\,
      O => set_resp_timeout_d_i_1_n_0
    );
set_resp_timeout_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_resp_timeout_d_i_1_n_0,
      Q => set_resp_timeout_d,
      R => SR(0)
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F808A808A8"
    )
        port map (
      I0 => \rdata[8]_i_4_n_0\,
      I1 => onwrite(0),
      I2 => state(0),
      I3 => new_sd_clk,
      I4 => \state[0]_i_6_n_0\,
      I5 => \state[0]_i_7_n_0\,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008000A"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \state[1]_i_5_n_0\,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => counter(5),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(2),
      I4 => counter(3),
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAAAAAAAAA"
    )
        port map (
      I0 => crc_gen_n_1,
      I1 => new_sd_clk,
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(2),
      I5 => state(0),
      O => \state[0]_i_7_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => new_sd_clk,
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => \state[1]_i_5_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => state(2),
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      I4 => new_sd_clk,
      O => \state[2]_i_4_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => new_sd_clk,
      I1 => counter(5),
      I2 => \counter[6]_i_3_n_0\,
      I3 => counter(3),
      I4 => counter(4),
      I5 => counter(6),
      O => \state[3]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => io_raw_n_6,
      Q => state(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => io_raw_n_5,
      Q => state(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => io_raw_n_4,
      Q => state(2),
      R => SR(0)
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => io_raw_n_3,
      Q => state(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_dat_rw is
  port (
    new_sd_clk : out STD_LOGIC;
    dat_stop_clock : out STD_LOGIC;
    busy_cleared_reg_0 : out STD_LOGIC;
    done_reg_0 : out STD_LOGIC;
    interrupt_bits_set : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_rewind_block : out STD_LOGIC;
    fifo_discard_block : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \set_reg[11].reg_written_reg[11][31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    interface_out_tvalid : out STD_LOGIC;
    block_count_success_overflow_reg_0 : out STD_LOGIC;
    \counter_reg[0]_0\ : out STD_LOGIC;
    \counter_reg[6]_0\ : out STD_LOGIC;
    \counter_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[7]_0\ : out STD_LOGIC;
    \counter_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_tready_0 : out STD_LOGIC;
    \counter_reg[8]_0\ : out STD_LOGIC;
    \counter_reg[6]_1\ : out STD_LOGIC;
    \counter_reg[7]_1\ : out STD_LOGIC;
    \counter_reg[3]_0\ : out STD_LOGIC;
    fifo_out_discard_block_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_tvalid_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_in_tvalid : out STD_LOGIC;
    fifo_in_rewind_block_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \interrupt_bits_saved_reg[3]\ : out STD_LOGIC;
    fifo_out_discard_block_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    DIADI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \error_code_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_t_r_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    no_more_blocks0 : in STD_LOGIC;
    block_data_done : in STD_LOGIC;
    clk_bus_d_reg : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \no_more_blocks2_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \no_more_blocks2_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    no_more_blocks_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_out_tvalid : in STD_LOGIC;
    dat_resetn : in STD_LOGIC;
    done_i_15_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_out_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_8_in : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    fifo_almost_full : in STD_LOGIC;
    done_i_2 : in STD_LOGIC;
    done_i_2_0 : in STD_LOGIC;
    \addr_tlast_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_tlast : in STD_LOGIC;
    \addr_tlast_reg[0]_0\ : in STD_LOGIC;
    data_in_tvalid : in STD_LOGIC;
    fifo_in_tready : in STD_LOGIC;
    \addr_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \interrupt_bits_saved_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \no_more_blocks2_carry__2_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_resetn : in STD_LOGIC;
    data_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_tlast_saved_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_dat_rw : entity is "dat_rw";
end block_design_sd_host_0_dat_rw;

architecture STRUCTURE of block_design_sd_host_0_dat_rw is
  signal \^d\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \block_count_success[0]_i_1_n_0\ : STD_LOGIC;
  signal \block_count_success[31]_i_2_n_0\ : STD_LOGIC;
  signal \block_count_success[31]_i_4_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__0_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__0_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__0_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__0_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__1_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__1_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__1_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__1_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__2_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__2_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__2_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__2_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__3_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__3_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__3_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__3_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__4_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__4_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__4_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__4_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__5_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__5_n_1\ : STD_LOGIC;
  signal \block_count_success_inc_carry__5_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__5_n_3\ : STD_LOGIC;
  signal \block_count_success_inc_carry__6_n_0\ : STD_LOGIC;
  signal \block_count_success_inc_carry__6_n_2\ : STD_LOGIC;
  signal \block_count_success_inc_carry__6_n_3\ : STD_LOGIC;
  signal block_count_success_inc_carry_n_0 : STD_LOGIC;
  signal block_count_success_inc_carry_n_1 : STD_LOGIC;
  signal block_count_success_inc_carry_n_2 : STD_LOGIC;
  signal block_count_success_inc_carry_n_3 : STD_LOGIC;
  signal \^block_count_success_overflow_reg_0\ : STD_LOGIC;
  signal buffer0 : STD_LOGIC;
  signal \buffer[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \buffer[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_1__0_n_0\ : STD_LOGIC;
  signal buffer_line_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \buffer_line_0[1]_i_2_n_0\ : STD_LOGIC;
  signal buffer_next : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \^busy_cleared_reg_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter0 : STD_LOGIC;
  signal \counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \counter[9]_i_6_n_0\ : STD_LOGIC;
  signal \counter__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal counter_inc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^counter_reg[0]_0\ : STD_LOGIC;
  signal \^counter_reg[8]_0\ : STD_LOGIC;
  signal \^counter_reg[9]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal crc_good_line : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal done_i_11_n_0 : STD_LOGIC;
  signal done_i_14_n_0 : STD_LOGIC;
  signal done_i_16_n_0 : STD_LOGIC;
  signal done_i_17_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal done_i_6_n_0 : STD_LOGIC;
  signal done_i_8_n_0 : STD_LOGIC;
  signal done_i_9_n_0 : STD_LOGIC;
  signal done_new_next : STD_LOGIC;
  signal \error_code[1]_i_2_n_0\ : STD_LOGIC;
  signal error_code_next : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^fifo_discard_block\ : STD_LOGIC;
  signal fifo_in_rewind_block0 : STD_LOGIC;
  signal fifo_out_discard_block0 : STD_LOGIC;
  signal \^fifo_rewind_block\ : STD_LOGIC;
  signal \get_crc[0].crc_gen_n_1\ : STD_LOGIC;
  signal \get_crc[3].crc_gen_n_1\ : STD_LOGIC;
  signal good_block_transferred : STD_LOGIC;
  signal in_tlast_saved : STD_LOGIC;
  signal interface_out_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interface_out_tlast : STD_LOGIC;
  signal \^interface_out_tvalid\ : STD_LOGIC;
  signal \^interrupt_bits_set\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \io_raw[0].io_raw_n_11\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_12\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_19\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_2\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_20\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_21\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_22\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_3\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_4\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_5\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_6\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_7\ : STD_LOGIC;
  signal \io_raw[0].io_raw_n_9\ : STD_LOGIC;
  signal \io_raw[1].io_raw_n_1\ : STD_LOGIC;
  signal \io_raw[1].io_raw_n_2\ : STD_LOGIC;
  signal \io_raw[2].io_raw_n_1\ : STD_LOGIC;
  signal \io_raw[3].io_raw_n_1\ : STD_LOGIC;
  signal line_in_0 : STD_LOGIC;
  signal line_out_d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal line_out_d_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal line_out_en : STD_LOGIC_VECTOR ( 3 to 3 );
  signal line_out_en_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^new_sd_clk\ : STD_LOGIC;
  signal no_more_blocks : STD_LOGIC;
  signal \no_more_blocks2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_n_1\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_n_2\ : STD_LOGIC;
  signal \no_more_blocks2_carry__0_n_3\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_n_1\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_n_2\ : STD_LOGIC;
  signal \no_more_blocks2_carry__1_n_3\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_n_1\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_n_2\ : STD_LOGIC;
  signal \no_more_blocks2_carry__2_n_3\ : STD_LOGIC;
  signal no_more_blocks2_carry_i_1_n_0 : STD_LOGIC;
  signal no_more_blocks2_carry_i_2_n_0 : STD_LOGIC;
  signal no_more_blocks2_carry_i_3_n_0 : STD_LOGIC;
  signal no_more_blocks2_carry_i_4_n_0 : STD_LOGIC;
  signal no_more_blocks2_carry_n_0 : STD_LOGIC;
  signal no_more_blocks2_carry_n_1 : STD_LOGIC;
  signal no_more_blocks2_carry_n_2 : STD_LOGIC;
  signal no_more_blocks2_carry_n_3 : STD_LOGIC;
  signal nwr_past : STD_LOGIC;
  signal out_tdata0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_1_out : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal read_check_fail : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stop_clock0 : STD_LOGIC;
  signal \NLW_block_count_success_inc_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_block_count_success_inc_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_no_more_blocks2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_no_more_blocks2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_11\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_15\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_17\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5\ : label is "soft_lutpair58";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "state_write_resp:1100,state_write_end_bit:1010,state_write_resp_pending:1011,state_write_crc:1001,state_write_data:1000,state_write_pending_host:0110,state_write_start_bit:0111,state_write_pending_device:0101,state_read_check:0100,state_read_data:0010,state_read_crc:0011,state_read_pending:0001,state_done:1101,state_initial:0000";
  attribute SOFT_HLUTNM of \addr_out[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \addr_out[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \block_count_success[31]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \block_count_success[31]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \buffer[5]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buffer[6]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buffer_line_0[1]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \counter[6]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \counter[9]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \counter[9]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of done_i_11 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of done_i_14 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of done_i_17 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of done_i_4 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of done_i_6 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of done_i_8 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \error_code[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \error_code[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of fifo_in_rewind_block_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of fifo_out_discard_block_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \line_out_en[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of out_tlast_i_10 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of out_tlast_i_11 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of out_tlast_i_5 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of out_tlast_i_6 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of out_tlast_i_8 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of stop_clock_i_1 : label is "soft_lutpair49";
begin
  D(30 downto 0) <= \^d\(30 downto 0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  block_count_success_overflow_reg_0 <= \^block_count_success_overflow_reg_0\;
  busy_cleared_reg_0 <= \^busy_cleared_reg_0\;
  \counter_reg[0]_0\ <= \^counter_reg[0]_0\;
  \counter_reg[8]_0\ <= \^counter_reg[8]_0\;
  \counter_reg[9]_0\(3 downto 0) <= \^counter_reg[9]_0\(3 downto 0);
  fifo_discard_block <= \^fifo_discard_block\;
  fifo_rewind_block <= \^fifo_rewind_block\;
  interface_out_tvalid <= \^interface_out_tvalid\;
  interrupt_bits_set(1 downto 0) <= \^interrupt_bits_set\(1 downto 0);
  new_sd_clk <= \^new_sd_clk\;
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \^counter_reg[9]_0\(0),
      I1 => \counter__0\(3),
      I2 => \counter__0\(1),
      I3 => counter(0),
      I4 => \counter__0\(2),
      O => \FSM_sequential_state[3]_i_15_n_0\
    );
\FSM_sequential_state[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \FSM_sequential_state[3]_i_17_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \io_raw[0].io_raw_n_11\,
      D => \io_raw[0].io_raw_n_7\,
      Q => state(0),
      R => SS(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \io_raw[0].io_raw_n_11\,
      D => \io_raw[0].io_raw_n_6\,
      Q => state(1),
      R => SS(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \io_raw[0].io_raw_n_11\,
      D => \io_raw[0].io_raw_n_5\,
      Q => state(2),
      R => SS(0)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \io_raw[0].io_raw_n_11\,
      D => \io_raw[0].io_raw_n_4\,
      Q => state(3),
      R => SS(0)
    );
\addr_in[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fifo_discard_block\,
      I1 => fifo_resetn,
      O => fifo_out_discard_block_reg_1(0)
    );
\addr_in[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \^interface_out_tvalid\,
      I1 => done_i_15_0(0),
      I2 => data_in_tvalid,
      I3 => fifo_in_tready,
      I4 => \^fifo_discard_block\,
      O => out_tvalid_reg_0(0)
    );
\addr_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fifo_rewind_block\,
      I1 => \addr_out_reg[0]\(0),
      O => fifo_in_rewind_block_reg_0(0)
    );
\addr_out[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fifo_rewind_block\,
      I1 => p_8_in,
      O => E(0)
    );
\addr_tlast[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040444000"
    )
        port map (
      I0 => \^fifo_discard_block\,
      I1 => \addr_tlast_reg[0]\(0),
      I2 => interface_out_tlast,
      I3 => done_i_15_0(0),
      I4 => data_in_tlast,
      I5 => \addr_tlast_reg[0]_0\,
      O => fifo_out_discard_block_reg_0(0)
    );
\block_count_success[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \block_count_success[0]_i_1_n_0\
    );
\block_count_success[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      O => \block_count_success[31]_i_2_n_0\
    );
\block_count_success[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \counter__0\(2),
      I1 => \counter__0\(1),
      I2 => counter(0),
      O => \block_count_success[31]_i_4_n_0\
    );
block_count_success_inc_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => block_count_success_inc_carry_n_0,
      CO(2) => block_count_success_inc_carry_n_1,
      CO(1) => block_count_success_inc_carry_n_2,
      CO(0) => block_count_success_inc_carry_n_3,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(3 downto 0),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\block_count_success_inc_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => block_count_success_inc_carry_n_0,
      CO(3) => \block_count_success_inc_carry__0_n_0\,
      CO(2) => \block_count_success_inc_carry__0_n_1\,
      CO(1) => \block_count_success_inc_carry__0_n_2\,
      CO(0) => \block_count_success_inc_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(7 downto 4),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\block_count_success_inc_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__0_n_0\,
      CO(3) => \block_count_success_inc_carry__1_n_0\,
      CO(2) => \block_count_success_inc_carry__1_n_1\,
      CO(1) => \block_count_success_inc_carry__1_n_2\,
      CO(0) => \block_count_success_inc_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(11 downto 8),
      S(3 downto 0) => \^q\(12 downto 9)
    );
\block_count_success_inc_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__1_n_0\,
      CO(3) => \block_count_success_inc_carry__2_n_0\,
      CO(2) => \block_count_success_inc_carry__2_n_1\,
      CO(1) => \block_count_success_inc_carry__2_n_2\,
      CO(0) => \block_count_success_inc_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(15 downto 12),
      S(3 downto 0) => \^q\(16 downto 13)
    );
\block_count_success_inc_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__2_n_0\,
      CO(3) => \block_count_success_inc_carry__3_n_0\,
      CO(2) => \block_count_success_inc_carry__3_n_1\,
      CO(1) => \block_count_success_inc_carry__3_n_2\,
      CO(0) => \block_count_success_inc_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(19 downto 16),
      S(3 downto 0) => \^q\(20 downto 17)
    );
\block_count_success_inc_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__3_n_0\,
      CO(3) => \block_count_success_inc_carry__4_n_0\,
      CO(2) => \block_count_success_inc_carry__4_n_1\,
      CO(1) => \block_count_success_inc_carry__4_n_2\,
      CO(0) => \block_count_success_inc_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(23 downto 20),
      S(3 downto 0) => \^q\(24 downto 21)
    );
\block_count_success_inc_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__4_n_0\,
      CO(3) => \block_count_success_inc_carry__5_n_0\,
      CO(2) => \block_count_success_inc_carry__5_n_1\,
      CO(1) => \block_count_success_inc_carry__5_n_2\,
      CO(0) => \block_count_success_inc_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d\(27 downto 24),
      S(3 downto 0) => \^q\(28 downto 25)
    );
\block_count_success_inc_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_count_success_inc_carry__5_n_0\,
      CO(3) => \block_count_success_inc_carry__6_n_0\,
      CO(2) => \NLW_block_count_success_inc_carry__6_CO_UNCONNECTED\(2),
      CO(1) => \block_count_success_inc_carry__6_n_2\,
      CO(0) => \block_count_success_inc_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_block_count_success_inc_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^d\(30 downto 28),
      S(3) => '1',
      S(2 downto 0) => \^q\(31 downto 29)
    );
block_count_success_overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \io_raw[0].io_raw_n_21\,
      Q => \^block_count_success_overflow_reg_0\,
      R => SS(0)
    );
\block_count_success_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \block_count_success[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SS(0)
    );
\block_count_success_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(9),
      Q => \^q\(10),
      R => SS(0)
    );
\block_count_success_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(10),
      Q => \^q\(11),
      R => SS(0)
    );
\block_count_success_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(11),
      Q => \^q\(12),
      R => SS(0)
    );
\block_count_success_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(12),
      Q => \^q\(13),
      R => SS(0)
    );
\block_count_success_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(13),
      Q => \^q\(14),
      R => SS(0)
    );
\block_count_success_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(14),
      Q => \^q\(15),
      R => SS(0)
    );
\block_count_success_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(15),
      Q => \^q\(16),
      R => SS(0)
    );
\block_count_success_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(16),
      Q => \^q\(17),
      R => SS(0)
    );
\block_count_success_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(17),
      Q => \^q\(18),
      R => SS(0)
    );
\block_count_success_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(18),
      Q => \^q\(19),
      R => SS(0)
    );
\block_count_success_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(0),
      Q => \^q\(1),
      R => SS(0)
    );
\block_count_success_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(19),
      Q => \^q\(20),
      R => SS(0)
    );
\block_count_success_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(20),
      Q => \^q\(21),
      R => SS(0)
    );
\block_count_success_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(21),
      Q => \^q\(22),
      R => SS(0)
    );
\block_count_success_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(22),
      Q => \^q\(23),
      R => SS(0)
    );
\block_count_success_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(23),
      Q => \^q\(24),
      R => SS(0)
    );
\block_count_success_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(24),
      Q => \^q\(25),
      R => SS(0)
    );
\block_count_success_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(25),
      Q => \^q\(26),
      R => SS(0)
    );
\block_count_success_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(26),
      Q => \^q\(27),
      R => SS(0)
    );
\block_count_success_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(27),
      Q => \^q\(28),
      R => SS(0)
    );
\block_count_success_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(28),
      Q => \^q\(29),
      R => SS(0)
    );
\block_count_success_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(1),
      Q => \^q\(2),
      R => SS(0)
    );
\block_count_success_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(29),
      Q => \^q\(30),
      R => SS(0)
    );
\block_count_success_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(30),
      Q => \^q\(31),
      R => SS(0)
    );
\block_count_success_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(2),
      Q => \^q\(3),
      R => SS(0)
    );
\block_count_success_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(3),
      Q => \^q\(4),
      R => SS(0)
    );
\block_count_success_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(4),
      Q => \^q\(5),
      R => SS(0)
    );
\block_count_success_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(5),
      Q => \^q\(6),
      R => SS(0)
    );
\block_count_success_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(6),
      Q => \^q\(7),
      R => SS(0)
    );
\block_count_success_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(7),
      Q => \^q\(8),
      R => SS(0)
    );
\block_count_success_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => \^d\(8),
      Q => \^q\(9),
      R => SS(0)
    );
block_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => good_block_transferred,
      Q => \^interrupt_bits_set\(1),
      R => SS(0)
    );
\buffer[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_next(5),
      I1 => \^counter_reg[0]_0\,
      I2 => data_out_tdata(5),
      O => \buffer[5]_i_1__0_n_0\
    );
\buffer[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_next(6),
      I1 => \^counter_reg[0]_0\,
      I2 => data_out_tdata(6),
      O => \buffer[6]_i_1__0_n_0\
    );
\buffer[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_next(7),
      I1 => \^counter_reg[0]_0\,
      I2 => data_out_tdata(7),
      O => \buffer[7]_i_1__0_n_0\
    );
\buffer_line_0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FBB77"
    )
        port map (
      I0 => state(1),
      I1 => dat_resetn,
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      O => buffer0
    );
\buffer_line_0[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_line_0(0),
      I1 => \^counter_reg[0]_0\,
      I2 => data_out_tdata(4),
      O => \buffer_line_0[1]_i_2_n_0\
    );
\buffer_line_0[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFFFFFFFFBF"
    )
        port map (
      I0 => block_data_done,
      I1 => counter(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \^counter_reg[0]_0\
    );
\buffer_line_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \io_raw[0].io_raw_n_12\,
      Q => buffer_line_0(0),
      R => buffer0
    );
\buffer_line_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \buffer_line_0[1]_i_2_n_0\,
      Q => buffer_line_0(1),
      R => buffer0
    );
\buffer_line_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \io_raw[0].io_raw_n_9\,
      Q => buffer_line_0(2),
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \io_raw[1].io_raw_n_1\,
      Q => buffer_next(5),
      R => buffer0
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \io_raw[2].io_raw_n_1\,
      Q => buffer_next(6),
      R => buffer0
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \io_raw[3].io_raw_n_1\,
      Q => buffer_next(7),
      R => buffer0
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \buffer[5]_i_1__0_n_0\,
      Q => p_1_in(1),
      R => buffer0
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \buffer[6]_i_1__0_n_0\,
      Q => p_1_in(2),
      R => buffer0
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => \buffer[7]_i_1__0_n_0\,
      Q => p_1_in(3),
      R => buffer0
    );
busy_cleared_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_24_in,
      Q => \^busy_cleared_reg_0\,
      R => SR(0)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_inc(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => \counter__0\(1),
      O => counter_inc(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter(0),
      I1 => \counter__0\(1),
      I2 => \counter__0\(2),
      O => counter_inc(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter__0\(1),
      I1 => counter(0),
      I2 => \counter__0\(2),
      I3 => \counter__0\(3),
      O => counter_inc(3)
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter__0\(2),
      I1 => counter(0),
      I2 => \counter__0\(1),
      I3 => \counter__0\(3),
      I4 => \^counter_reg[9]_0\(0),
      O => counter_inc(4)
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^counter_reg[9]_0\(1),
      I1 => \counter__0\(2),
      I2 => counter(0),
      I3 => \counter__0\(1),
      I4 => \counter__0\(3),
      I5 => \^counter_reg[9]_0\(0),
      O => counter_inc(5)
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter[9]_i_6_n_0\,
      I1 => \counter__0\(6),
      O => counter_inc(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \counter__0\(6),
      I1 => \counter[9]_i_6_n_0\,
      I2 => \counter__0\(7),
      O => counter_inc(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \counter__0\(7),
      I1 => \counter[9]_i_6_n_0\,
      I2 => \counter__0\(6),
      I3 => \^counter_reg[9]_0\(2),
      O => counter_inc(8)
    );
\counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^counter_reg[9]_0\(2),
      I1 => \counter__0\(6),
      I2 => \counter[9]_i_6_n_0\,
      I3 => \counter__0\(7),
      I4 => \^counter_reg[9]_0\(3),
      O => counter_inc(9)
    );
\counter[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4404FFFF"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => dat_resetn,
      O => \counter[9]_i_5_n_0\
    );
\counter[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^counter_reg[9]_0\(1),
      I1 => \counter__0\(2),
      I2 => counter(0),
      I3 => \counter__0\(1),
      I4 => \counter__0\(3),
      I5 => \^counter_reg[9]_0\(0),
      O => \counter[9]_i_6_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(0),
      Q => counter(0),
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(1),
      Q => \counter__0\(1),
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(2),
      Q => \counter__0\(2),
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(3),
      Q => \counter__0\(3),
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(4),
      Q => \^counter_reg[9]_0\(0),
      R => counter0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(5),
      Q => \^counter_reg[9]_0\(1),
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(6),
      Q => \counter__0\(6),
      R => counter0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(7),
      Q => \counter__0\(7),
      R => counter0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(8),
      Q => \^counter_reg[9]_0\(2),
      R => counter0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^new_sd_clk\,
      D => counter_inc(9),
      Q => \^counter_reg[9]_0\(3),
      R => counter0
    );
done_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => buffer_line_0(2),
      I1 => buffer_line_0(1),
      I2 => buffer_line_0(0),
      O => done_i_11_n_0
    );
done_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \counter__0\(3),
      I1 => \counter__0\(2),
      I2 => counter(0),
      I3 => \counter__0\(1),
      O => done_i_14_n_0
    );
done_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCDEEECCCCCFFC"
    )
        port map (
      I0 => \counter__0\(6),
      I1 => done_i_16_n_0,
      I2 => done_i_17_n_0,
      I3 => \^counter_reg[9]_0\(1),
      I4 => done_i_15_0(3),
      I5 => done_i_15_0(2),
      O => \counter_reg[6]_1\
    );
done_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => done_i_15_0(4),
      I1 => \counter__0\(2),
      I2 => counter(0),
      I3 => \counter__0\(1),
      I4 => \counter__0\(3),
      I5 => \^counter_reg[9]_0\(0),
      O => done_i_16_n_0
    );
done_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^counter_reg[9]_0\(0),
      I1 => \counter__0\(3),
      I2 => \counter__0\(1),
      I3 => counter(0),
      I4 => \counter__0\(2),
      O => done_i_17_n_0
    );
done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => done_i_4_n_0
    );
done_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => done_i_6_n_0
    );
done_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => done_i_8_n_0
    );
done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022202220222AAAA"
    )
        port map (
      I0 => counter(0),
      I1 => done_i_15_0(1),
      I2 => \^counter_reg[9]_0\(3),
      I3 => \^counter_reg[8]_0\,
      I4 => done_i_2,
      I5 => done_i_2_0,
      O => done_i_9_n_0
    );
done_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_new_next,
      Q => \^interrupt_bits_set\(0),
      R => SS(0)
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done_new_next,
      D => done_new_next,
      Q => done_reg_0,
      R => SS(0)
    );
\error_code[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_check_fail,
      I1 => state(3),
      O => \error_code[1]_i_2_n_0\
    );
\error_code[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFF100"
    )
        port map (
      I0 => read_check_fail,
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => state(1),
      O => error_code_next(2)
    );
\error_code[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => read_check_fail,
      O => error_code_next(3)
    );
\error_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done_new_next,
      D => \io_raw[0].io_raw_n_3\,
      Q => \error_code_reg[3]_0\(0),
      R => SS(0)
    );
\error_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done_new_next,
      D => \io_raw[0].io_raw_n_2\,
      Q => \error_code_reg[3]_0\(1),
      R => SS(0)
    );
\error_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done_new_next,
      D => error_code_next(2),
      Q => \error_code_reg[3]_0\(2),
      R => SS(0)
    );
\error_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done_new_next,
      D => error_code_next(3),
      Q => \error_code_reg[3]_0\(3),
      R => SS(0)
    );
fifo_in_rewind_block_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => done_i_15_0(0),
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      O => fifo_in_rewind_block0
    );
fifo_in_rewind_block_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_in_rewind_block0,
      Q => \^fifo_rewind_block\,
      R => SS(0)
    );
fifo_out_discard_block_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => done_i_15_0(0),
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      O => fifo_out_discard_block0
    );
fifo_out_discard_block_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_out_discard_block0,
      Q => \^fifo_discard_block\,
      R => SS(0)
    );
\get_crc[0].crc_gen\: entity work.\block_design_sd_host_0_line_crc__parameterized0\
     port map (
      D(0) => line_out_d_next(0),
      Q(1 downto 0) => state(1 downto 0),
      SR(0) => \get_crc[3].crc_gen_n_1\,
      buffer_line_0(0) => buffer_line_0(1),
      clk => clk,
      good_reg_0 => \^new_sd_clk\,
      line_in_0 => line_in_0,
      p_1_out => p_1_out,
      p_3_out => p_3_out,
      read_check_fail => read_check_fail,
      read_check_fail_reg(0) => crc_good_line(1),
      read_check_fail_reg_0 => \io_raw[1].io_raw_n_2\,
      read_line_reg => \get_crc[0].crc_gen_n_1\
    );
\get_crc[1].crc_gen\: entity work.\block_design_sd_host_0_line_crc__parameterized0_1\
     port map (
      D(0) => line_out_d_next(1),
      Q(1 downto 0) => state(1 downto 0),
      SR(0) => \get_crc[3].crc_gen_n_1\,
      clk => clk,
      \crc_reg[12]_0\(0) => p_1_in(1),
      good_reg_0(0) => crc_good_line(1),
      good_reg_1 => \^new_sd_clk\,
      p_5_out => p_5_out
    );
\get_crc[2].crc_gen\: entity work.\block_design_sd_host_0_line_crc__parameterized0_2\
     port map (
      D(0) => line_out_d_next(2),
      Q(1 downto 0) => state(1 downto 0),
      SR(0) => \get_crc[3].crc_gen_n_1\,
      clk => clk,
      crc_good_line(0) => crc_good_line(2),
      \crc_reg[12]_0\(0) => p_1_in(2),
      good_reg_0 => \^new_sd_clk\,
      p_3_out => p_3_out
    );
\get_crc[3].crc_gen\: entity work.\block_design_sd_host_0_line_crc__parameterized0_3\
     port map (
      D(0) => line_out_d_next(3),
      Q(3 downto 0) => state(3 downto 0),
      SR(0) => \get_crc[3].crc_gen_n_1\,
      clk => clk,
      crc_good_line(0) => crc_good_line(3),
      \crc_reg[12]_0\(0) => p_1_in(3),
      dat_resetn => dat_resetn,
      good_reg_0 => \^new_sd_clk\,
      p_1_out => p_1_out
    );
in_tlast_saved_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \io_raw[0].io_raw_n_20\,
      Q => in_tlast_saved,
      R => '0'
    );
\interrupt_bits_saved[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \interrupt_bits_saved_reg[3]_0\(0),
      I1 => \^interrupt_bits_set\(0),
      O => \FSM_sequential_state_reg[2]_0\(0)
    );
\interrupt_bits_saved[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \interrupt_bits_saved_reg[3]_0\(1),
      I1 => \^interrupt_bits_set\(1),
      O => \FSM_sequential_state_reg[2]_0\(1)
    );
\io_raw[0].io_raw\: entity work.block_design_sd_host_0_sd_io_raw
     port map (
      CO(0) => \block_count_success_inc_carry__6_n_0\,
      D(1) => \io_raw[0].io_raw_n_2\,
      D(0) => \io_raw[0].io_raw_n_3\,
      E(0) => \io_raw[0].io_raw_n_11\,
      \FSM_sequential_state[3]_i_4_0\ => \FSM_sequential_state[3]_i_15_n_0\,
      \FSM_sequential_state[3]_i_7_0\ => \FSM_sequential_state[3]_i_17_n_0\,
      \FSM_sequential_state_reg[0]\ => \FSM_sequential_state[3]_i_5_n_0\,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[3]_i_11_n_0\,
      \FSM_sequential_state_reg[2]\(0) => \FSM_sequential_state_reg[2]_0\(2),
      \FSM_sequential_state_reg[2]_0\ => \io_raw[0].io_raw_n_22\,
      \FSM_sequential_state_reg[2]_1\(0) => done_i_15_0(0),
      \FSM_sequential_state_reg[3]\(3) => \io_raw[0].io_raw_n_4\,
      \FSM_sequential_state_reg[3]\(2) => \io_raw[0].io_raw_n_5\,
      \FSM_sequential_state_reg[3]\(1) => \io_raw[0].io_raw_n_6\,
      \FSM_sequential_state_reg[3]\(0) => \io_raw[0].io_raw_n_7\,
      \FSM_sequential_state_reg[3]_0\(0) => out_tdata0,
      Q(3 downto 0) => state(3 downto 0),
      SR(0) => SR(0),
      block_count_success_overflow_reg => \io_raw[0].io_raw_n_21\,
      block_count_success_overflow_reg_0 => \^block_count_success_overflow_reg_0\,
      block_data_done => block_data_done,
      block_done_reg => \block_count_success[31]_i_2_n_0\,
      block_done_reg_0 => \^interface_out_tvalid\,
      block_done_reg_1 => \block_count_success[31]_i_4_n_0\,
      buffer0 => buffer0,
      buffer_line_0(2 downto 0) => buffer_line_0(2 downto 0),
      \buffer_line_0_reg[1]\ => \io_raw[0].io_raw_n_9\,
      clk => clk,
      clk_bus_d_reg_0 => clk_bus_d_reg,
      data_out_tdata(0) => data_out_tdata(0),
      data_out_tready => data_out_tready,
      data_out_tready_0 => data_out_tready_0,
      done_i_7_0 => done_i_14_n_0,
      done_new_next => done_new_next,
      done_reg => done_i_4_n_0,
      done_reg_0 => done_i_6_n_0,
      done_reg_1 => done_i_8_n_0,
      done_reg_2 => done_i_9_n_0,
      done_reg_3 => done_i_11_n_0,
      \error_code_reg[1]\ => \^counter_reg[0]_0\,
      \error_code_reg[1]_0\ => \error_code[1]_i_2_n_0\,
      fifo_in_tready => fifo_in_tready,
      fifo_out_tvalid => fifo_out_tvalid,
      good_block_transferred => good_block_transferred,
      in_d_reg_0 => \io_raw[0].io_raw_n_12\,
      in_tlast_saved => in_tlast_saved,
      in_tlast_saved_reg => \io_raw[0].io_raw_n_20\,
      in_tlast_saved_reg_0 => in_tlast_saved_reg_0,
      in_tready_reg => \io_raw[0].io_raw_n_19\,
      \interrupt_bits_saved_reg[3]\ => \interrupt_bits_saved_reg[3]\,
      \interrupt_bits_saved_reg[3]_0\ => \^busy_cleared_reg_0\,
      \interrupt_bits_saved_reg[3]_1\(0) => \interrupt_bits_saved_reg[3]_0\(2),
      line_in_0 => line_in_0,
      line_out_en(0) => line_out_en(3),
      no_more_blocks => no_more_blocks,
      nwr_past => nwr_past,
      nwr_past_reg(4) => \counter__0\(6),
      nwr_past_reg(3) => \^counter_reg[9]_0\(0),
      nwr_past_reg(2 downto 1) => \counter__0\(2 downto 1),
      nwr_past_reg(0) => counter(0),
      nwr_past_reg_0 => \counter[9]_i_5_n_0\,
      nwr_past_reg_1 => \counter[9]_i_6_n_0\,
      out_d_r_reg_0(0) => line_out_d(0),
      out_t_r_reg_0 => out_t_r_reg,
      p_24_in => p_24_in,
      read_check_fail => read_check_fail,
      read_line_reg_0 => \^new_sd_clk\,
      read_line_reg_1(0) => counter0,
      sd_dat(0) => sd_dat(0)
    );
\io_raw[1].io_raw\: entity work.block_design_sd_host_0_sd_io_raw_4
     port map (
      D(0) => \io_raw[1].io_raw_n_1\,
      Q(0) => line_out_d(1),
      SR(0) => SR(0),
      \buffer_reg[1]\ => \^counter_reg[0]_0\,
      clk => clk,
      crc_good_line(1 downto 0) => crc_good_line(3 downto 2),
      data_out_tdata(0) => data_out_tdata(1),
      in_d_reg_0 => \io_raw[1].io_raw_n_2\,
      in_d_reg_1 => \^new_sd_clk\,
      line_out_en(0) => line_out_en(3),
      out_t_r_reg_0 => out_t_r_reg,
      p_5_out => p_5_out,
      read_check_fail_reg(0) => line_in_0,
      sd_dat(0) => sd_dat(1)
    );
\io_raw[2].io_raw\: entity work.block_design_sd_host_0_sd_io_raw_5
     port map (
      D(0) => \io_raw[2].io_raw_n_1\,
      Q(0) => line_out_d(2),
      SR(0) => SR(0),
      \buffer_reg[2]\ => \^counter_reg[0]_0\,
      clk => clk,
      data_out_tdata(0) => data_out_tdata(2),
      in_d_reg_0 => \^new_sd_clk\,
      line_out_en(0) => line_out_en(3),
      out_t_r_reg_0 => out_t_r_reg,
      p_3_out => p_3_out,
      sd_dat(0) => sd_dat(2)
    );
\io_raw[3].io_raw\: entity work.block_design_sd_host_0_sd_io_raw_6
     port map (
      D(0) => \io_raw[3].io_raw_n_1\,
      Q(0) => line_out_d(3),
      SR(0) => SR(0),
      \buffer_reg[3]\ => \^counter_reg[0]_0\,
      clk => clk,
      data_out_tdata(0) => data_out_tdata(3),
      in_d_reg_0 => \^new_sd_clk\,
      line_out_en(0) => line_out_en(3),
      out_t_r_reg_0 => out_t_r_reg,
      p_1_out => p_1_out,
      sd_dat(0) => sd_dat(3)
    );
\line_out_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_out_d_next(0),
      Q => line_out_d(0),
      S => SS(0)
    );
\line_out_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_out_d_next(1),
      Q => line_out_d(1),
      S => SS(0)
    );
\line_out_d_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_out_d_next(2),
      Q => line_out_d(2),
      S => SS(0)
    );
\line_out_d_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => line_out_d_next(3),
      Q => line_out_d(3),
      S => SS(0)
    );
\line_out_en[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C70"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => line_out_en_next(3)
    );
\line_out_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_out_en_next(3),
      Q => line_out_en(3),
      R => SS(0)
    );
mem_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^interface_out_tvalid\,
      I1 => done_i_15_0(0),
      I2 => data_in_tvalid,
      O => fifo_in_tvalid
    );
mem_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(1),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(1),
      O => DIADI(1)
    );
mem_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(0),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(0),
      O => DIADI(0)
    );
mem_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(7),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(7),
      O => DIADI(7)
    );
mem_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(6),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(6),
      O => DIADI(6)
    );
mem_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(5),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(5),
      O => DIADI(5)
    );
mem_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(4),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(4),
      O => DIADI(4)
    );
mem_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(3),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(3),
      O => DIADI(3)
    );
mem_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => interface_out_tdata(2),
      I1 => done_i_15_0(0),
      I2 => data_in_tdata(2),
      O => DIADI(2)
    );
no_more_blocks2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => no_more_blocks2_carry_n_0,
      CO(2) => no_more_blocks2_carry_n_1,
      CO(1) => no_more_blocks2_carry_n_2,
      CO(0) => no_more_blocks2_carry_n_3,
      CYINIT => '1',
      DI(3) => no_more_blocks2_carry_i_1_n_0,
      DI(2) => no_more_blocks2_carry_i_2_n_0,
      DI(1) => no_more_blocks2_carry_i_3_n_0,
      DI(0) => no_more_blocks2_carry_i_4_n_0,
      O(3 downto 0) => NLW_no_more_blocks2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\no_more_blocks2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => no_more_blocks2_carry_n_0,
      CO(3) => \no_more_blocks2_carry__0_n_0\,
      CO(2) => \no_more_blocks2_carry__0_n_1\,
      CO(1) => \no_more_blocks2_carry__0_n_2\,
      CO(0) => \no_more_blocks2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks2_carry__0_i_1_n_0\,
      DI(2) => \no_more_blocks2_carry__0_i_2_n_0\,
      DI(1) => \no_more_blocks2_carry__0_i_3_n_0\,
      DI(0) => \no_more_blocks2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \no_more_blocks2_carry__1_0\(3 downto 0)
    );
\no_more_blocks2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(14),
      I1 => \no_more_blocks2_carry__2_1\(15),
      I2 => \^d\(13),
      I3 => \no_more_blocks2_carry__2_1\(14),
      O => \no_more_blocks2_carry__0_i_1_n_0\
    );
\no_more_blocks2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(12),
      I1 => \no_more_blocks2_carry__2_1\(13),
      I2 => \^d\(11),
      I3 => \no_more_blocks2_carry__2_1\(12),
      O => \no_more_blocks2_carry__0_i_2_n_0\
    );
\no_more_blocks2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(10),
      I1 => \no_more_blocks2_carry__2_1\(11),
      I2 => \^d\(9),
      I3 => \no_more_blocks2_carry__2_1\(10),
      O => \no_more_blocks2_carry__0_i_3_n_0\
    );
\no_more_blocks2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(8),
      I1 => \no_more_blocks2_carry__2_1\(9),
      I2 => \^d\(7),
      I3 => \no_more_blocks2_carry__2_1\(8),
      O => \no_more_blocks2_carry__0_i_4_n_0\
    );
\no_more_blocks2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \no_more_blocks2_carry__0_n_0\,
      CO(3) => \no_more_blocks2_carry__1_n_0\,
      CO(2) => \no_more_blocks2_carry__1_n_1\,
      CO(1) => \no_more_blocks2_carry__1_n_2\,
      CO(0) => \no_more_blocks2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks2_carry__1_i_1_n_0\,
      DI(2) => \no_more_blocks2_carry__1_i_2_n_0\,
      DI(1) => \no_more_blocks2_carry__1_i_3_n_0\,
      DI(0) => \no_more_blocks2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \no_more_blocks2_carry__2_0\(3 downto 0)
    );
\no_more_blocks2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(22),
      I1 => \no_more_blocks2_carry__2_1\(23),
      I2 => \^d\(21),
      I3 => \no_more_blocks2_carry__2_1\(22),
      O => \no_more_blocks2_carry__1_i_1_n_0\
    );
\no_more_blocks2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(20),
      I1 => \no_more_blocks2_carry__2_1\(21),
      I2 => \^d\(19),
      I3 => \no_more_blocks2_carry__2_1\(20),
      O => \no_more_blocks2_carry__1_i_2_n_0\
    );
\no_more_blocks2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(18),
      I1 => \no_more_blocks2_carry__2_1\(19),
      I2 => \^d\(17),
      I3 => \no_more_blocks2_carry__2_1\(18),
      O => \no_more_blocks2_carry__1_i_3_n_0\
    );
\no_more_blocks2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(16),
      I1 => \no_more_blocks2_carry__2_1\(17),
      I2 => \^d\(15),
      I3 => \no_more_blocks2_carry__2_1\(16),
      O => \no_more_blocks2_carry__1_i_4_n_0\
    );
\no_more_blocks2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \no_more_blocks2_carry__1_n_0\,
      CO(3) => \set_reg[11].reg_written_reg[11][31]\(0),
      CO(2) => \no_more_blocks2_carry__2_n_1\,
      CO(1) => \no_more_blocks2_carry__2_n_2\,
      CO(0) => \no_more_blocks2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \no_more_blocks2_carry__2_i_1_n_0\,
      DI(2) => \no_more_blocks2_carry__2_i_2_n_0\,
      DI(1) => \no_more_blocks2_carry__2_i_3_n_0\,
      DI(0) => \no_more_blocks2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_no_more_blocks2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => no_more_blocks_reg_0(3 downto 0)
    );
\no_more_blocks2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(30),
      I1 => \no_more_blocks2_carry__2_1\(31),
      I2 => \^d\(29),
      I3 => \no_more_blocks2_carry__2_1\(30),
      O => \no_more_blocks2_carry__2_i_1_n_0\
    );
\no_more_blocks2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(28),
      I1 => \no_more_blocks2_carry__2_1\(29),
      I2 => \^d\(27),
      I3 => \no_more_blocks2_carry__2_1\(28),
      O => \no_more_blocks2_carry__2_i_2_n_0\
    );
\no_more_blocks2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(26),
      I1 => \no_more_blocks2_carry__2_1\(27),
      I2 => \^d\(25),
      I3 => \no_more_blocks2_carry__2_1\(26),
      O => \no_more_blocks2_carry__2_i_3_n_0\
    );
\no_more_blocks2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(24),
      I1 => \no_more_blocks2_carry__2_1\(25),
      I2 => \^d\(23),
      I3 => \no_more_blocks2_carry__2_1\(24),
      O => \no_more_blocks2_carry__2_i_4_n_0\
    );
no_more_blocks2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(6),
      I1 => \no_more_blocks2_carry__2_1\(7),
      I2 => \^d\(5),
      I3 => \no_more_blocks2_carry__2_1\(6),
      O => no_more_blocks2_carry_i_1_n_0
    );
no_more_blocks2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(4),
      I1 => \no_more_blocks2_carry__2_1\(5),
      I2 => \^d\(3),
      I3 => \no_more_blocks2_carry__2_1\(4),
      O => no_more_blocks2_carry_i_2_n_0
    );
no_more_blocks2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^d\(2),
      I1 => \no_more_blocks2_carry__2_1\(3),
      I2 => \^d\(1),
      I3 => \no_more_blocks2_carry__2_1\(2),
      O => no_more_blocks2_carry_i_3_n_0
    );
no_more_blocks2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => \^d\(0),
      I1 => \no_more_blocks2_carry__2_1\(1),
      I2 => \^q\(0),
      I3 => \no_more_blocks2_carry__2_1\(0),
      O => no_more_blocks2_carry_i_4_n_0
    );
no_more_blocks_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => good_block_transferred,
      D => no_more_blocks0,
      Q => no_more_blocks,
      R => SS(0)
    );
nwr_past_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \io_raw[0].io_raw_n_22\,
      Q => nwr_past,
      R => '0'
    );
\out_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => line_in_0,
      Q => interface_out_tdata(0),
      R => SS(0)
    );
\out_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => p_5_out,
      Q => interface_out_tdata(1),
      R => SS(0)
    );
\out_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => p_3_out,
      Q => interface_out_tdata(2),
      R => SS(0)
    );
\out_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => p_1_out,
      Q => interface_out_tdata(3),
      R => SS(0)
    );
\out_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_line_0(0),
      Q => interface_out_tdata(4),
      R => SS(0)
    );
\out_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(5),
      Q => interface_out_tdata(5),
      R => SS(0)
    );
\out_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(6),
      Q => interface_out_tdata(6),
      R => SS(0)
    );
\out_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => buffer_next(7),
      Q => interface_out_tdata(7),
      R => SS(0)
    );
out_tlast_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \counter__0\(7),
      I1 => \counter[9]_i_6_n_0\,
      I2 => \counter__0\(6),
      O => \counter_reg[7]_1\
    );
out_tlast_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter__0\(2),
      I1 => counter(0),
      I2 => \counter__0\(1),
      I3 => \counter__0\(3),
      O => \counter_reg[2]_0\
    );
out_tlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^counter_reg[9]_0\(2),
      I1 => \counter__0\(6),
      I2 => \counter[9]_i_6_n_0\,
      I3 => \counter__0\(7),
      O => \^counter_reg[8]_0\
    );
out_tlast_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter__0\(6),
      I1 => \counter[9]_i_6_n_0\,
      O => \counter_reg[6]_0\
    );
out_tlast_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \counter__0\(7),
      I1 => \counter[9]_i_6_n_0\,
      I2 => \counter__0\(6),
      O => \counter_reg[7]_0\
    );
out_tlast_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC095C3FF3F55C3"
    )
        port map (
      I0 => \counter__0\(3),
      I1 => \counter__0\(1),
      I2 => counter(0),
      I3 => done_i_15_0(3),
      I4 => done_i_15_0(2),
      I5 => \counter__0\(2),
      O => \counter_reg[3]_0\
    );
out_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_tdata0,
      D => block_data_done,
      Q => interface_out_tlast,
      R => SS(0)
    );
out_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \io_raw[0].io_raw_n_19\,
      Q => \^interface_out_tvalid\,
      R => SS(0)
    );
read_check_fail_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \get_crc[0].crc_gen_n_1\,
      Q => read_check_fail,
      R => '0'
    );
stop_clock_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => fifo_almost_full,
      I3 => state(3),
      I4 => state(2),
      O => stop_clock0
    );
stop_clock_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stop_clock0,
      Q => dat_stop_clock,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_clock_divider_cascaded is
  port (
    \divide.ctr_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \divide.ctr_reg[1]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    select_cur : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dat_stop_clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_clock_divider_cascaded : entity is "clock_divider_cascaded";
end block_design_sd_host_0_clock_divider_cascaded;

architecture STRUCTURE of block_design_sd_host_0_clock_divider_cascaded is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sel : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
first_divider: entity work.\block_design_sd_host_0_clock_divider__parameterized0\
     port map (
      E(0) => sel,
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      clk => clk,
      dat_stop_clock => dat_stop_clock,
      \divide.ctr_reg[1]_0\ => \divide.ctr_reg[1]\(0),
      \divide.ctr_reg[1]_1\ => \divide.ctr_reg[1]_0\,
      select_cur(1 downto 0) => select_cur(1 downto 0)
    );
rest_dividers: entity work.\block_design_sd_host_0_clock_divider_cascaded__parameterized0\
     port map (
      E(0) => sel,
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_clock_divider_selector is
  port (
    sd_clk_1 : out STD_LOGIC;
    sd_clk_2_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    out_t_r_reg : in STD_LOGIC;
    dat_stop_clock : in STD_LOGIC;
    \reg_written[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_clock_divider_selector : entity is "clock_divider_selector";
end block_design_sd_host_0_clock_divider_selector;

architecture STRUCTURE of block_design_sd_host_0_clock_divider_selector is
  signal \divide.ctr\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal divider_n_2 : STD_LOGIC;
  signal \^sd_clk_1\ : STD_LOGIC;
  signal select_cur : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \select_cur[0]_i_1_n_0\ : STD_LOGIC;
  signal \select_cur[1]_i_1_n_0\ : STD_LOGIC;
  signal taps0 : STD_LOGIC;
begin
  sd_clk_1 <= \^sd_clk_1\;
clk_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => divider_n_2,
      Q => \^sd_clk_1\,
      R => SR(0)
    );
divider: entity work.block_design_sd_host_0_clock_divider_cascaded
     port map (
      Q(0) => taps0,
      SR(0) => SR(0),
      clk => clk,
      dat_stop_clock => dat_stop_clock,
      \divide.ctr_reg[1]\(0) => \divide.ctr\(1),
      \divide.ctr_reg[1]_0\ => divider_n_2,
      select_cur(1 downto 0) => select_cur(1 downto 0)
    );
\out_d_r_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_t_r_reg,
      I1 => \^sd_clk_1\,
      O => sd_clk_2_reg
    );
\select_cur[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0AEB28FA22FF00"
    )
        port map (
      I0 => select_cur(0),
      I1 => select_cur(1),
      I2 => \reg_written[8]_0\(1),
      I3 => \reg_written[8]_0\(0),
      I4 => taps0,
      I5 => \divide.ctr\(1),
      O => \select_cur[0]_i_1_n_0\
    );
\select_cur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0ECCCCCDCD0F0F0"
    )
        port map (
      I0 => select_cur(0),
      I1 => select_cur(1),
      I2 => \reg_written[8]_0\(1),
      I3 => \reg_written[8]_0\(0),
      I4 => taps0,
      I5 => \divide.ctr\(1),
      O => \select_cur[1]_i_1_n_0\
    );
\select_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \select_cur[0]_i_1_n_0\,
      Q => select_cur(0),
      R => SR(0)
    );
\select_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \select_cur[1]_i_1_n_0\,
      Q => select_cur(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0_axi_sd_host is
  port (
    sd_clk : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interrupt : out STD_LOGIC;
    out_tlast_reg : out STD_LOGIC;
    data_in_tready : out STD_LOGIC;
    data_out_tvalid : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    data_out_tready : in STD_LOGIC;
    data_in_tvalid : in STD_LOGIC;
    data_in_tlast : in STD_LOGIC;
    data_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_sd_host_0_axi_sd_host : entity is "axi_sd_host";
end block_design_sd_host_0_axi_sd_host;

architecture STRUCTURE of block_design_sd_host_0_axi_sd_host is
  signal addr_out_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi4_lite_intf_inst_n_107 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_15 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_53 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_54 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_55 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_57 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_58 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_59 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_60 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_61 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_62 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_63 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_64 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_65 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_66 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_67 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_68 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_69 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_7 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_70 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_71 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_72 : STD_LOGIC;
  signal axi4_lite_intf_inst_n_8 : STD_LOGIC;
  signal block_data_done : STD_LOGIC;
  signal clock_gen_n_1 : STD_LOGIC;
  signal cmd_resp_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_writer_n_1 : STD_LOGIC;
  signal cmd_writer_n_10 : STD_LOGIC;
  signal cmd_writer_n_11 : STD_LOGIC;
  signal cmd_writer_n_12 : STD_LOGIC;
  signal cmd_writer_n_2 : STD_LOGIC;
  signal cmd_writer_n_3 : STD_LOGIC;
  signal cmd_writer_n_4 : STD_LOGIC;
  signal cmd_writer_n_45 : STD_LOGIC;
  signal cmd_writer_n_5 : STD_LOGIC;
  signal cmd_writer_n_6 : STD_LOGIC;
  signal cmd_writer_n_7 : STD_LOGIC;
  signal cmd_writer_n_8 : STD_LOGIC;
  signal cmd_writer_n_9 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 4 to 4 );
  signal counter1 : STD_LOGIC;
  signal \counter__0\ : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal dat_block_count_success : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dat_block_count_success_saved : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dat_resetn : STD_LOGIC;
  signal dat_rw_n_10 : STD_LOGIC;
  signal dat_rw_n_105 : STD_LOGIC;
  signal dat_rw_n_106 : STD_LOGIC;
  signal dat_rw_n_107 : STD_LOGIC;
  signal dat_rw_n_108 : STD_LOGIC;
  signal dat_rw_n_11 : STD_LOGIC;
  signal dat_rw_n_12 : STD_LOGIC;
  signal dat_rw_n_13 : STD_LOGIC;
  signal dat_rw_n_14 : STD_LOGIC;
  signal dat_rw_n_15 : STD_LOGIC;
  signal dat_rw_n_16 : STD_LOGIC;
  signal dat_rw_n_17 : STD_LOGIC;
  signal dat_rw_n_18 : STD_LOGIC;
  signal dat_rw_n_19 : STD_LOGIC;
  signal dat_rw_n_2 : STD_LOGIC;
  signal dat_rw_n_20 : STD_LOGIC;
  signal dat_rw_n_21 : STD_LOGIC;
  signal dat_rw_n_22 : STD_LOGIC;
  signal dat_rw_n_23 : STD_LOGIC;
  signal dat_rw_n_24 : STD_LOGIC;
  signal dat_rw_n_25 : STD_LOGIC;
  signal dat_rw_n_26 : STD_LOGIC;
  signal dat_rw_n_27 : STD_LOGIC;
  signal dat_rw_n_28 : STD_LOGIC;
  signal dat_rw_n_29 : STD_LOGIC;
  signal dat_rw_n_3 : STD_LOGIC;
  signal dat_rw_n_30 : STD_LOGIC;
  signal dat_rw_n_31 : STD_LOGIC;
  signal dat_rw_n_32 : STD_LOGIC;
  signal dat_rw_n_33 : STD_LOGIC;
  signal dat_rw_n_34 : STD_LOGIC;
  signal dat_rw_n_35 : STD_LOGIC;
  signal dat_rw_n_36 : STD_LOGIC;
  signal dat_rw_n_37 : STD_LOGIC;
  signal dat_rw_n_38 : STD_LOGIC;
  signal dat_rw_n_73 : STD_LOGIC;
  signal dat_rw_n_74 : STD_LOGIC;
  signal dat_rw_n_75 : STD_LOGIC;
  signal dat_rw_n_8 : STD_LOGIC;
  signal dat_rw_n_80 : STD_LOGIC;
  signal dat_rw_n_81 : STD_LOGIC;
  signal dat_rw_n_82 : STD_LOGIC;
  signal dat_rw_n_83 : STD_LOGIC;
  signal dat_rw_n_84 : STD_LOGIC;
  signal dat_rw_n_85 : STD_LOGIC;
  signal dat_rw_n_86 : STD_LOGIC;
  signal dat_rw_n_87 : STD_LOGIC;
  signal dat_rw_n_89 : STD_LOGIC;
  signal dat_rw_n_9 : STD_LOGIC;
  signal dat_rw_n_95 : STD_LOGIC;
  signal dat_stop_clock : STD_LOGIC;
  signal \^data_out_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_almost_full : STD_LOGIC;
  signal fifo_discard_block : STD_LOGIC;
  signal fifo_in_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_in_tready : STD_LOGIC;
  signal fifo_in_tvalid : STD_LOGIC;
  signal fifo_n_12 : STD_LOGIC;
  signal fifo_out_tvalid : STD_LOGIC;
  signal fifo_resetn : STD_LOGIC;
  signal fifo_resetn_gen_n_1 : STD_LOGIC;
  signal fifo_resetn_gen_n_2 : STD_LOGIC;
  signal fifo_rewind_block : STD_LOGIC;
  signal got_tlast : STD_LOGIC;
  signal input_block_end : STD_LOGIC;
  signal interface_out_tvalid : STD_LOGIC;
  signal interrupt_bits : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interrupt_bits_saved : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interrupt_bits_set : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal new_sd_clk : STD_LOGIC;
  signal no_more_blocks0 : STD_LOGIC;
  signal no_more_blocks2 : STD_LOGIC;
  signal onread : STD_LOGIC_VECTOR ( 4 to 4 );
  signal onwrite : STD_LOGIC_VECTOR ( 13 downto 10 );
  signal \^out_tlast_reg\ : STD_LOGIC;
  signal output_wont_overrun2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_6 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal raddr_saved : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \reg_written[10]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_written[11]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_written[12]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_written[13]_5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \reg_written[8]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal resetn_in2 : STD_LOGIC;
  signal \^sd_clk\ : STD_LOGIC;
  signal sd_clk_1 : STD_LOGIC;
  signal take_input : STD_LOGIC;
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of interrupt_reg : label is "SENSITIVITY LEVEL_HIGH";
begin
  data_out_tdata(7 downto 0) <= \^data_out_tdata\(7 downto 0);
  out_tlast_reg <= \^out_tlast_reg\;
  sd_clk <= \^sd_clk\;
axi4_lite_intf_inst: entity work.block_design_sd_host_0_axi4_lite_intf
     port map (
      CO(0) => output_wont_overrun2,
      D(30) => dat_rw_n_8,
      D(29) => dat_rw_n_9,
      D(28) => dat_rw_n_10,
      D(27) => dat_rw_n_11,
      D(26) => dat_rw_n_12,
      D(25) => dat_rw_n_13,
      D(24) => dat_rw_n_14,
      D(23) => dat_rw_n_15,
      D(22) => dat_rw_n_16,
      D(21) => dat_rw_n_17,
      D(20) => dat_rw_n_18,
      D(19) => dat_rw_n_19,
      D(18) => dat_rw_n_20,
      D(17) => dat_rw_n_21,
      D(16) => dat_rw_n_22,
      D(15) => dat_rw_n_23,
      D(14) => dat_rw_n_24,
      D(13) => dat_rw_n_25,
      D(12) => dat_rw_n_26,
      D(11) => dat_rw_n_27,
      D(10) => dat_rw_n_28,
      D(9) => dat_rw_n_29,
      D(8) => dat_rw_n_30,
      D(7) => dat_rw_n_31,
      D(6) => dat_rw_n_32,
      D(5) => dat_rw_n_33,
      D(4) => dat_rw_n_34,
      D(3) => dat_rw_n_35,
      D(2) => dat_rw_n_36,
      D(1) => dat_rw_n_37,
      D(0) => dat_rw_n_38,
      E(0) => onread(4),
      \FSM_onehot_read_state_reg[1]_0\(0) => axi4_lite_intf_inst_n_7,
      I16(6) => cmd_writer_n_5,
      I16(5) => cmd_writer_n_6,
      I16(4) => cmd_writer_n_7,
      I16(3) => cmd_writer_n_8,
      I16(2) => cmd_writer_n_9,
      I16(1) => cmd_writer_n_10,
      I16(0) => cmd_writer_n_11,
      Q(5 downto 3) => \reg_written[10]_2\(7 downto 5),
      Q(2 downto 1) => \reg_written[10]_2\(3 downto 2),
      Q(0) => \reg_written[10]_2\(0),
      S(3) => axi4_lite_intf_inst_n_57,
      S(2) => axi4_lite_intf_inst_n_58,
      S(1) => axi4_lite_intf_inst_n_59,
      S(0) => axi4_lite_intf_inst_n_60,
      SR(0) => resetn_in2,
      SS(0) => axi4_lite_intf_inst_n_8,
      block_data_done => block_data_done,
      \buffer_reg[6]\ => axi4_lite_intf_inst_n_107,
      clk => clk,
      dat_stop_clock => dat_stop_clock,
      done_i_9 => dat_rw_n_85,
      fifo_resetn => fifo_resetn,
      in_tready_reg => fifo_n_12,
      interrupt_bits_set(2 downto 0) => interrupt_bits_set(2 downto 0),
      interrupt_reg => dat_rw_n_95,
      interrupt_reg_0(2 downto 0) => interrupt_bits_saved(2 downto 0),
      no_more_blocks0 => no_more_blocks0,
      no_more_blocks2_carry(0) => dat_block_count_success(0),
      no_more_blocks_reg(0) => no_more_blocks2,
      onwrite(1) => onwrite(13),
      onwrite(0) => onwrite(10),
      out_tlast_i_2_0 => dat_rw_n_81,
      out_tlast_reg => dat_rw_n_87,
      out_tlast_reg_0 => dat_rw_n_84,
      out_tlast_reg_1(3 downto 2) => \counter__0\(9 downto 8),
      out_tlast_reg_1(1) => \counter__0\(5),
      out_tlast_reg_1(0) => counter(4),
      out_tlast_reg_2 => dat_rw_n_80,
      out_tlast_reg_3 => dat_rw_n_75,
      out_tlast_reg_4 => dat_rw_n_86,
      p_0_in_6 => p_0_in_6,
      \raddr_saved_reg[4]_0\(1) => raddr_saved(4),
      \raddr_saved_reg[4]_0\(0) => raddr_saved(2),
      \rdata_reg[0]_0\ => cmd_writer_n_45,
      \rdata_reg[10]_0\ => dat_rw_n_3,
      \rdata_reg[11]_0\ => dat_rw_n_2,
      \rdata_reg[12]_0\ => dat_rw_n_73,
      \rdata_reg[17]_0\(3) => dat_rw_n_105,
      \rdata_reg[17]_0\(2) => dat_rw_n_106,
      \rdata_reg[17]_0\(1) => dat_rw_n_107,
      \rdata_reg[17]_0\(0) => dat_rw_n_108,
      \rdata_reg[31]_0\(30 downto 8) => dat_block_count_success_saved(31 downto 9),
      \rdata_reg[31]_0\(7 downto 0) => dat_block_count_success_saved(7 downto 0),
      \rdata_reg[4]_0\ => cmd_writer_n_1,
      \rdata_reg[5]_0\ => cmd_writer_n_2,
      \rdata_reg[6]_0\ => cmd_writer_n_3,
      \rdata_reg[7]_0\ => cmd_writer_n_4,
      \rdata_reg[8]_0\ => cmd_writer_n_12,
      \reg_written[8]_0\(1 downto 0) => \reg_written[8]_0\(1 downto 0),
      resetn => resetn,
      resetn_0(0) => p_1_in,
      resp_out(30 downto 8) => cmd_resp_out(31 downto 9),
      resp_out(7 downto 0) => cmd_resp_out(7 downto 0),
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \set_reg[10].reg_written_reg[10][3]_0\ => axi4_lite_intf_inst_n_15,
      \set_reg[10].reg_written_reg[10][3]_1\ => axi4_lite_intf_inst_n_55,
      \set_reg[10].reg_written_reg[10][5]_0\ => axi4_lite_intf_inst_n_54,
      \set_reg[10].reg_written_reg[10][7]_0\ => axi4_lite_intf_inst_n_53,
      \set_reg[11].reg_written_reg[11][15]_0\(3) => axi4_lite_intf_inst_n_61,
      \set_reg[11].reg_written_reg[11][15]_0\(2) => axi4_lite_intf_inst_n_62,
      \set_reg[11].reg_written_reg[11][15]_0\(1) => axi4_lite_intf_inst_n_63,
      \set_reg[11].reg_written_reg[11][15]_0\(0) => axi4_lite_intf_inst_n_64,
      \set_reg[11].reg_written_reg[11][23]_0\(3) => axi4_lite_intf_inst_n_65,
      \set_reg[11].reg_written_reg[11][23]_0\(2) => axi4_lite_intf_inst_n_66,
      \set_reg[11].reg_written_reg[11][23]_0\(1) => axi4_lite_intf_inst_n_67,
      \set_reg[11].reg_written_reg[11][23]_0\(0) => axi4_lite_intf_inst_n_68,
      \set_reg[11].reg_written_reg[11][31]_0\(31 downto 0) => \reg_written[11]_3\(31 downto 0),
      \set_reg[11].reg_written_reg[11][31]_1\(3) => axi4_lite_intf_inst_n_69,
      \set_reg[11].reg_written_reg[11][31]_1\(2) => axi4_lite_intf_inst_n_70,
      \set_reg[11].reg_written_reg[11][31]_1\(1) => axi4_lite_intf_inst_n_71,
      \set_reg[11].reg_written_reg[11][31]_1\(0) => axi4_lite_intf_inst_n_72,
      \set_reg[12].reg_written_reg[12][31]_0\(31 downto 0) => \reg_written[12]_4\(31 downto 0),
      \set_reg[13].reg_written_reg[13][8]_0\(6) => \reg_written[13]_5\(8),
      \set_reg[13].reg_written_reg[13][8]_0\(5 downto 0) => \reg_written[13]_5\(5 downto 0)
    );
clock_gen: entity work.block_design_sd_host_0_clock_divider_selector
     port map (
      SR(0) => resetn_in2,
      clk => clk,
      dat_stop_clock => dat_stop_clock,
      out_t_r_reg => \^sd_clk\,
      \reg_written[8]_0\(1 downto 0) => \reg_written[8]_0\(1 downto 0),
      sd_clk_1 => sd_clk_1,
      sd_clk_2_reg => clock_gen_n_1
    );
cmd_writer: entity work.block_design_sd_host_0_cmd_writer
     port map (
      D(0) => interrupt_bits(0),
      I16(6) => cmd_writer_n_5,
      I16(5) => cmd_writer_n_6,
      I16(4) => cmd_writer_n_7,
      I16(3) => cmd_writer_n_8,
      I16(2) => cmd_writer_n_9,
      I16(1) => cmd_writer_n_10,
      I16(0) => cmd_writer_n_11,
      Q(30 downto 8) => cmd_resp_out(31 downto 9),
      Q(7 downto 0) => cmd_resp_out(7 downto 0),
      SR(0) => resetn_in2,
      \buffer_reg[31]_0\(31 downto 0) => \reg_written[12]_4\(31 downto 0),
      clk => clk,
      err_crc_reg_0 => cmd_writer_n_2,
      err_end_bit_reg_0 => cmd_writer_n_3,
      err_index_next_reg_0 => axi4_lite_intf_inst_n_107,
      err_index_reg_0 => cmd_writer_n_1,
      err_timeout_reg_0 => cmd_writer_n_4,
      exp_r2_reg_0(6) => \reg_written[13]_5\(8),
      exp_r2_reg_0(5 downto 0) => \reg_written[13]_5\(5 downto 0),
      \interrupt_bits_saved_reg[0]\(0) => interrupt_bits_saved(0),
      interrupt_bits_set(0) => interrupt_bits_set(0),
      new_sd_clk => new_sd_clk,
      onwrite(0) => onwrite(13),
      out_d_r_reg => clock_gen_n_1,
      \rdata_reg[8]\(0) => dat_block_count_success_saved(8),
      \rdata_reg[8]_0\(1) => raddr_saved(4),
      \rdata_reg[8]_0\(0) => raddr_saved(2),
      resetn => resetn,
      resp_done_reg_0 => cmd_writer_n_45,
      \resp_out_reg[8]_0\ => cmd_writer_n_12,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      sd_cmd => sd_cmd
    );
\dat_block_count_success_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(0),
      Q => dat_block_count_success_saved(0),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(10),
      Q => dat_block_count_success_saved(10),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(11),
      Q => dat_block_count_success_saved(11),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(12),
      Q => dat_block_count_success_saved(12),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(13),
      Q => dat_block_count_success_saved(13),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(14),
      Q => dat_block_count_success_saved(14),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(15),
      Q => dat_block_count_success_saved(15),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(16),
      Q => dat_block_count_success_saved(16),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(17),
      Q => dat_block_count_success_saved(17),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(18),
      Q => dat_block_count_success_saved(18),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(19),
      Q => dat_block_count_success_saved(19),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(1),
      Q => dat_block_count_success_saved(1),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(20),
      Q => dat_block_count_success_saved(20),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(21),
      Q => dat_block_count_success_saved(21),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(22),
      Q => dat_block_count_success_saved(22),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(23),
      Q => dat_block_count_success_saved(23),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(24),
      Q => dat_block_count_success_saved(24),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(25),
      Q => dat_block_count_success_saved(25),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(26),
      Q => dat_block_count_success_saved(26),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(27),
      Q => dat_block_count_success_saved(27),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(28),
      Q => dat_block_count_success_saved(28),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(29),
      Q => dat_block_count_success_saved(29),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(2),
      Q => dat_block_count_success_saved(2),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(30),
      Q => dat_block_count_success_saved(30),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(31),
      Q => dat_block_count_success_saved(31),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(3),
      Q => dat_block_count_success_saved(3),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(4),
      Q => dat_block_count_success_saved(4),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(5),
      Q => dat_block_count_success_saved(5),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(6),
      Q => dat_block_count_success_saved(6),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(7),
      Q => dat_block_count_success_saved(7),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(8),
      Q => dat_block_count_success_saved(8),
      R => resetn_in2
    );
\dat_block_count_success_saved_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => onread(4),
      D => dat_block_count_success(9),
      Q => dat_block_count_success_saved(9),
      R => resetn_in2
    );
dat_reset_gen: entity work.block_design_sd_host_0_reset_gen
     port map (
      Q(0) => \reg_written[10]_2\(0),
      SS(0) => counter1,
      clk => clk,
      \counter_reg[3]_0\(0) => p_1_in,
      dat_resetn => dat_resetn,
      onwrite(0) => onwrite(10),
      resetn => resetn
    );
dat_rw: entity work.block_design_sd_host_0_dat_rw
     port map (
      D(30) => dat_rw_n_8,
      D(29) => dat_rw_n_9,
      D(28) => dat_rw_n_10,
      D(27) => dat_rw_n_11,
      D(26) => dat_rw_n_12,
      D(25) => dat_rw_n_13,
      D(24) => dat_rw_n_14,
      D(23) => dat_rw_n_15,
      D(22) => dat_rw_n_16,
      D(21) => dat_rw_n_17,
      D(20) => dat_rw_n_18,
      D(19) => dat_rw_n_19,
      D(18) => dat_rw_n_20,
      D(17) => dat_rw_n_21,
      D(16) => dat_rw_n_22,
      D(15) => dat_rw_n_23,
      D(14) => dat_rw_n_24,
      D(13) => dat_rw_n_25,
      D(12) => dat_rw_n_26,
      D(11) => dat_rw_n_27,
      D(10) => dat_rw_n_28,
      D(9) => dat_rw_n_29,
      D(8) => dat_rw_n_30,
      D(7) => dat_rw_n_31,
      D(6) => dat_rw_n_32,
      D(5) => dat_rw_n_33,
      D(4) => dat_rw_n_34,
      D(3) => dat_rw_n_35,
      D(2) => dat_rw_n_36,
      D(1) => dat_rw_n_37,
      D(0) => dat_rw_n_38,
      DIADI(7 downto 0) => fifo_in_tdata(7 downto 0),
      E(0) => dat_rw_n_82,
      \FSM_sequential_state_reg[2]_0\(2 downto 0) => interrupt_bits(3 downto 1),
      Q(31 downto 0) => dat_block_count_success(31 downto 0),
      S(3) => axi4_lite_intf_inst_n_57,
      S(2) => axi4_lite_intf_inst_n_58,
      S(1) => axi4_lite_intf_inst_n_59,
      S(0) => axi4_lite_intf_inst_n_60,
      SR(0) => resetn_in2,
      SS(0) => counter1,
      \addr_out_reg[0]\(0) => addr_out_reg(0),
      \addr_tlast_reg[0]\(0) => take_input,
      \addr_tlast_reg[0]_0\ => fifo_n_12,
      block_count_success_overflow_reg_0 => dat_rw_n_73,
      block_data_done => block_data_done,
      busy_cleared_reg_0 => dat_rw_n_2,
      clk => clk,
      clk_bus_d_reg => \^sd_clk\,
      \counter_reg[0]_0\ => dat_rw_n_74,
      \counter_reg[2]_0\ => dat_rw_n_81,
      \counter_reg[3]_0\ => dat_rw_n_87,
      \counter_reg[6]_0\ => dat_rw_n_75,
      \counter_reg[6]_1\ => dat_rw_n_85,
      \counter_reg[7]_0\ => dat_rw_n_80,
      \counter_reg[7]_1\ => dat_rw_n_86,
      \counter_reg[8]_0\ => dat_rw_n_84,
      \counter_reg[9]_0\(3 downto 2) => \counter__0\(9 downto 8),
      \counter_reg[9]_0\(1) => \counter__0\(5),
      \counter_reg[9]_0\(0) => counter(4),
      dat_resetn => dat_resetn,
      dat_stop_clock => dat_stop_clock,
      data_in_tdata(7 downto 0) => data_in_tdata(7 downto 0),
      data_in_tlast => data_in_tlast,
      data_in_tvalid => data_in_tvalid,
      data_out_tdata(7 downto 0) => \^data_out_tdata\(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tready_0 => dat_rw_n_83,
      done_i_15_0(4 downto 2) => \reg_written[10]_2\(7 downto 5),
      done_i_15_0(1 downto 0) => \reg_written[10]_2\(3 downto 2),
      done_i_2 => axi4_lite_intf_inst_n_53,
      done_i_2_0 => axi4_lite_intf_inst_n_54,
      done_reg_0 => dat_rw_n_3,
      \error_code_reg[3]_0\(3) => dat_rw_n_105,
      \error_code_reg[3]_0\(2) => dat_rw_n_106,
      \error_code_reg[3]_0\(1) => dat_rw_n_107,
      \error_code_reg[3]_0\(0) => dat_rw_n_108,
      fifo_almost_full => fifo_almost_full,
      fifo_discard_block => fifo_discard_block,
      fifo_in_rewind_block_reg_0(0) => p_0_in(0),
      fifo_in_tready => fifo_in_tready,
      fifo_in_tvalid => fifo_in_tvalid,
      fifo_out_discard_block_reg_0(0) => got_tlast,
      fifo_out_discard_block_reg_1(0) => input_block_end,
      fifo_out_tvalid => fifo_out_tvalid,
      fifo_resetn => fifo_resetn,
      fifo_rewind_block => fifo_rewind_block,
      in_tlast_saved_reg_0 => \^out_tlast_reg\,
      interface_out_tvalid => interface_out_tvalid,
      \interrupt_bits_saved_reg[3]\ => dat_rw_n_95,
      \interrupt_bits_saved_reg[3]_0\(2 downto 0) => interrupt_bits_saved(3 downto 1),
      interrupt_bits_set(1 downto 0) => interrupt_bits_set(2 downto 1),
      new_sd_clk => new_sd_clk,
      no_more_blocks0 => no_more_blocks0,
      \no_more_blocks2_carry__1_0\(3) => axi4_lite_intf_inst_n_61,
      \no_more_blocks2_carry__1_0\(2) => axi4_lite_intf_inst_n_62,
      \no_more_blocks2_carry__1_0\(1) => axi4_lite_intf_inst_n_63,
      \no_more_blocks2_carry__1_0\(0) => axi4_lite_intf_inst_n_64,
      \no_more_blocks2_carry__2_0\(3) => axi4_lite_intf_inst_n_65,
      \no_more_blocks2_carry__2_0\(2) => axi4_lite_intf_inst_n_66,
      \no_more_blocks2_carry__2_0\(1) => axi4_lite_intf_inst_n_67,
      \no_more_blocks2_carry__2_0\(0) => axi4_lite_intf_inst_n_68,
      \no_more_blocks2_carry__2_1\(31 downto 0) => \reg_written[11]_3\(31 downto 0),
      no_more_blocks_reg_0(3) => axi4_lite_intf_inst_n_69,
      no_more_blocks_reg_0(2) => axi4_lite_intf_inst_n_70,
      no_more_blocks_reg_0(1) => axi4_lite_intf_inst_n_71,
      no_more_blocks_reg_0(0) => axi4_lite_intf_inst_n_72,
      out_t_r_reg => clock_gen_n_1,
      out_tvalid_reg_0(0) => dat_rw_n_89,
      p_8_in => p_8_in,
      sd_dat(3 downto 0) => sd_dat(3 downto 0),
      \set_reg[11].reg_written_reg[11][31]\(0) => no_more_blocks2
    );
fifo: entity work.block_design_sd_host_0_block_mode_fifo
     port map (
      CO(0) => output_wont_overrun2,
      D(0) => p_0_in(0),
      DIADI(7 downto 0) => fifo_in_tdata(7 downto 0),
      E(0) => take_input,
      Q(0) => addr_out_reg(0),
      SR(1) => fifo_resetn_gen_n_1,
      SR(0) => input_block_end,
      \addr_in_reg[9]_0\(0) => dat_rw_n_89,
      \addr_out_reg[10]_0\(0) => dat_rw_n_82,
      \addr_tlast_reg[0]_0\(0) => got_tlast,
      clk => clk,
      data_in_tready => data_in_tready,
      data_in_tvalid => data_in_tvalid,
      data_out_tdata(7 downto 0) => \^data_out_tdata\(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tvalid => data_out_tvalid,
      fifo_almost_full => fifo_almost_full,
      fifo_discard_block => fifo_discard_block,
      fifo_in_tready => fifo_in_tready,
      fifo_in_tvalid => fifo_in_tvalid,
      fifo_out_tvalid => fifo_out_tvalid,
      fifo_resetn => fifo_resetn,
      fifo_rewind_block => fifo_rewind_block,
      got_tlast_reg_0 => fifo_n_12,
      in_tready_reg_0 => axi4_lite_intf_inst_n_15,
      interface_out_tvalid => interface_out_tvalid,
      new_sd_clk => new_sd_clk,
      out_tlast_reg_0 => \^out_tlast_reg\,
      out_tlast_reg_1(1 downto 0) => \reg_written[10]_2\(3 downto 2),
      \output_block_reg[10]_0\ => dat_rw_n_83,
      output_block_second_to_end_reg_0 => dat_rw_n_74,
      output_wont_overrun_reg_0 => fifo_resetn_gen_n_2,
      output_wont_overrun_reg_1 => axi4_lite_intf_inst_n_55,
      p_8_in => p_8_in
    );
fifo_resetn_gen: entity work.block_design_sd_host_0_reset_gen_0
     port map (
      Q(0) => \reg_written[10]_2\(3),
      SR(0) => fifo_resetn_gen_n_1,
      SS(0) => axi4_lite_intf_inst_n_8,
      clk => clk,
      fifo_resetn => fifo_resetn,
      fifo_rewind_block => fifo_rewind_block,
      output_wont_overrun_reg => \^out_tlast_reg\,
      resetn_out_reg_0 => fifo_resetn_gen_n_2
    );
\interrupt_bits_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => interrupt_bits(0),
      Q => interrupt_bits_saved(0),
      R => axi4_lite_intf_inst_n_7
    );
\interrupt_bits_saved_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => interrupt_bits(1),
      Q => interrupt_bits_saved(1),
      R => axi4_lite_intf_inst_n_7
    );
\interrupt_bits_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => interrupt_bits(2),
      Q => interrupt_bits_saved(2),
      R => axi4_lite_intf_inst_n_7
    );
\interrupt_bits_saved_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => interrupt_bits(3),
      Q => interrupt_bits_saved(3),
      R => axi4_lite_intf_inst_n_7
    );
interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_6,
      Q => interrupt,
      R => resetn_in2
    );
sd_clk_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sd_clk_1,
      Q => \^sd_clk\,
      R => resetn_in2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_sd_host_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_design_sd_host_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_sd_host_0 : entity is "block_design_sd_host_0,axi_sd_host,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block_design_sd_host_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block_design_sd_host_0 : entity is "axi_sd_host,Vivado 2019.2";
end block_design_sd_host_0;

architecture STRUCTURE of block_design_sd_host_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF S_AXI:data_in:data_out, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_in_tlast : signal is "xilinx.com:interface:axis:1.0 data_in TLAST";
  attribute X_INTERFACE_INFO of data_in_tready : signal is "xilinx.com:interface:axis:1.0 data_in TREADY";
  attribute X_INTERFACE_INFO of data_in_tvalid : signal is "xilinx.com:interface:axis:1.0 data_in TVALID";
  attribute X_INTERFACE_PARAMETER of data_in_tvalid : signal is "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_out_tlast : signal is "xilinx.com:interface:axis:1.0 data_out TLAST";
  attribute X_INTERFACE_INFO of data_out_tready : signal is "xilinx.com:interface:axis:1.0 data_out TREADY";
  attribute X_INTERFACE_PARAMETER of data_out_tready : signal is "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_out_tvalid : signal is "xilinx.com:interface:axis:1.0 data_out TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of sd_clk : signal is "acme:user:sd:1.0 sd CLK";
  attribute X_INTERFACE_INFO of sd_cmd : signal is "acme:user:sd:1.0 sd CMD";
  attribute X_INTERFACE_INFO of data_in_tdata : signal is "xilinx.com:interface:axis:1.0 data_in TDATA";
  attribute X_INTERFACE_INFO of data_out_tdata : signal is "xilinx.com:interface:axis:1.0 data_out TDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
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
inst: entity work.block_design_sd_host_0_axi_sd_host
     port map (
      clk => clk,
      data_in_tdata(7 downto 0) => data_in_tdata(7 downto 0),
      data_in_tlast => data_in_tlast,
      data_in_tready => data_in_tready,
      data_in_tvalid => data_in_tvalid,
      data_out_tdata(7 downto 0) => data_out_tdata(7 downto 0),
      data_out_tready => data_out_tready,
      data_out_tvalid => data_out_tvalid,
      interrupt => interrupt,
      out_tlast_reg => data_out_tlast,
      resetn => resetn,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
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
      sd_dat(3 downto 0) => sd_dat(3 downto 0)
    );
end STRUCTURE;
