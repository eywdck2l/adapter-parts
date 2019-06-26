-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Jun 26 11:48:39 2019
-- Host        : bca19e163b5f running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/adapter/adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/adapter_axi_sd_0_0_sim_netlist.vhdl
-- Design      : adapter_axi_sd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_card_status_keeper is
  port (
    \card_status_reg[31]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \card_status_reg[10]_0\ : out STD_LOGIC;
    \card_status_reg[10]_1\ : out STD_LOGIC;
    \card_status_reg[9]_0\ : out STD_LOGIC;
    \card_status_reg[11]_0\ : out STD_LOGIC;
    valid_c1_out : out STD_LOGIC;
    \cmd_index_reg[4]\ : out STD_LOGIC;
    acmd_defined_c : out STD_LOGIC;
    \card_status_reg[9]_1\ : out STD_LOGIC;
    \card_status_reg[9]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \card_status_reg[9]_3\ : out STD_LOGIC;
    \card_status_reg[9]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    \card_status_reg[9]_5\ : out STD_LOGIC;
    \FSM_onehot_state_reg[6]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \card_status_reg[11]_1\ : out STD_LOGIC;
    \card_status_reg[9]_6\ : out STD_LOGIC;
    \card_status_reg[11]_2\ : out STD_LOGIC;
    cmd_illegal_stb_reg : out STD_LOGIC;
    \card_status_resp_reg[10]_0\ : out STD_LOGIC;
    \card_status_resp_reg[28]_0\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \card_status_resp_reg[29]_0\ : out STD_LOGIC;
    \card_status_resp_reg[14]_0\ : out STD_LOGIC;
    \card_status_resp_reg[15]_0\ : out STD_LOGIC;
    \card_status_reg[31]_1\ : in STD_LOGIC;
    \card_status_reg[23]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    \card_status_reg[11]_3\ : in STD_LOGIC;
    \card_status_reg[9]_7\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \card_status_resp_reg[8]_0\ : in STD_LOGIC;
    no_more_write_data : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \card_status_reg[10]_2\ : in STD_LOGIC;
    \card_status_reg[10]_3\ : in STD_LOGIC;
    p_3_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[31]_2\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    update_2 : in STD_LOGIC;
    \card_status_reg[31]_3\ : in STD_LOGIC;
    \card_status_reg[31]_4\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sent_r1 : in STD_LOGIC;
    erase_seq_error : in STD_LOGIC;
    erase_reset : in STD_LOGIC;
    ignored_c : in STD_LOGIC;
    valid_reg : in STD_LOGIC;
    valid_reg_0 : in STD_LOGIC;
    valid_i_3_0 : in STD_LOGIC;
    valid_reg_i_5_0 : in STD_LOGIC;
    valid_i_6_0 : in STD_LOGIC;
    acmd_defined_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status[11]_i_4\ : in STD_LOGIC;
    valid_i_3_1 : in STD_LOGIC;
    \FSM_onehot_state_reg[6]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[6]_1\ : in STD_LOGIC;
    \card_status_resp_reg[28]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    invalid_dat_width : in STD_LOGIC;
    out_of_range : in STD_LOGIC;
    cmd_illegal_stb : in STD_LOGIC;
    cmd_crc_err_stb : in STD_LOGIC;
    cmd_ignored_stb : in STD_LOGIC;
    \resp_byte[5]_i_4\ : in STD_LOGIC;
    \resp_byte[5]_i_4_0\ : in STD_LOGIC;
    \resp_byte[5]_i_4_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \resp_byte[7]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \resp_byte[7]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_card_status_keeper : entity is "card_status_keeper";
end adapter_axi_sd_0_0_card_status_keeper;

architecture STRUCTURE of adapter_axi_sd_0_0_card_status_keeper is
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[6]\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \^acmd_defined_c\ : STD_LOGIC;
  signal \card_status[10]_i_1_n_0\ : STD_LOGIC;
  signal card_status_next2_out : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \^card_status_reg[10]_0\ : STD_LOGIC;
  signal \^card_status_reg[10]_1\ : STD_LOGIC;
  signal \^card_status_reg[31]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^card_status_reg[9]_2\ : STD_LOGIC;
  signal \^card_status_reg[9]_3\ : STD_LOGIC;
  signal \^card_status_reg[9]_4\ : STD_LOGIC;
  signal card_status_resp : STD_LOGIC_VECTOR ( 31 downto 13 );
  signal card_status_resp_next : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \^card_status_resp_reg[28]_0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \^cmd_index_reg[4]\ : STD_LOGIC;
  signal valid_i_10_n_0 : STD_LOGIC;
  signal valid_i_11_n_0 : STD_LOGIC;
  signal valid_i_12_n_0 : STD_LOGIC;
  signal valid_i_14_n_0 : STD_LOGIC;
  signal valid_i_6_n_0 : STD_LOGIC;
  signal valid_i_7_n_0 : STD_LOGIC;
  signal valid_reg_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_sys_state[2]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of acmd_defined_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \card_status[11]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \card_status[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \card_status_resp[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ignored_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sd_dat_o_sys[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of valid_i_12 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of valid_i_14 : label is "soft_lutpair0";
begin
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  \FSM_onehot_state_reg[6]\ <= \^fsm_onehot_state_reg[6]\;
  acmd_defined_c <= \^acmd_defined_c\;
  \card_status_reg[10]_0\ <= \^card_status_reg[10]_0\;
  \card_status_reg[10]_1\ <= \^card_status_reg[10]_1\;
  \card_status_reg[31]_0\(30 downto 0) <= \^card_status_reg[31]_0\(30 downto 0);
  \card_status_reg[9]_2\ <= \^card_status_reg[9]_2\;
  \card_status_reg[9]_3\ <= \^card_status_reg[9]_3\;
  \card_status_reg[9]_4\ <= \^card_status_reg[9]_4\;
  \card_status_resp_reg[28]_0\(21 downto 0) <= \^card_status_resp_reg[28]_0\(21 downto 0);
  \cmd_index_reg[4]\ <= \^cmd_index_reg[4]\;
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A2A"
    )
        port map (
      I0 => Q(0),
      I1 => \^card_status_reg[31]_0\(10),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(9),
      O => \FSM_onehot_state_reg[0]\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE00"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg[1]_0\,
      I3 => Q(1),
      I4 => \FSM_onehot_state[1]_i_4_n_0\,
      I5 => \FSM_onehot_state_reg[1]_1\,
      O => D(0)
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => Q(0),
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(10),
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(11),
      I1 => \^card_status_reg[31]_0\(10),
      I2 => \^card_status_reg[31]_0\(9),
      I3 => Q(0),
      O => \FSM_onehot_state[1]_i_4_n_0\
    );
\FSM_onehot_state[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \^card_status_reg[31]_0\(10),
      I2 => \^card_status_reg[31]_0\(11),
      O => \card_status_reg[9]_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB700"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(10),
      I3 => Q(0),
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \card_status_reg[9]_5\
    );
\FSM_onehot_state[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F800F8F8"
    )
        port map (
      I0 => \^card_status_reg[10]_1\,
      I1 => Q(0),
      I2 => Q(4),
      I3 => \FSM_onehot_state[4]_i_2_n_0\,
      I4 => \^card_status_reg[9]_3\,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEEEEEEEEEEEE"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[6]\,
      I1 => \^fsm_onehot_state_reg[3]\,
      I2 => no_more_write_data,
      I3 => \FSM_onehot_state_reg[1]\,
      I4 => \^card_status_reg[10]_1\,
      I5 => Q(4),
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[6]_1\,
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(10),
      I3 => \^card_status_reg[31]_0\(11),
      I4 => Q(0),
      O => \^card_status_reg[9]_3\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA000000"
    )
        port map (
      I0 => Q(6),
      I1 => \FSM_onehot_state_reg[6]_0\,
      I2 => Q(5),
      I3 => \^card_status_reg[31]_0\(9),
      I4 => \^card_status_reg[31]_0\(11),
      I5 => \^card_status_reg[31]_0\(10),
      O => \^fsm_onehot_state_reg[6]\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFFFFF80808080"
    )
        port map (
      I0 => \FSM_onehot_state_reg[6]_0\,
      I1 => \^card_status_reg[10]_1\,
      I2 => Q(5),
      I3 => \FSM_onehot_state[6]_i_4_n_0\,
      I4 => \^card_status_reg[9]_4\,
      I5 => Q(6),
      O => D(2)
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(10),
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(9),
      O => \^card_status_reg[10]_1\
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D5D5D5D5D5D5D5"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_6_n_0\,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => no_more_write_data,
      I3 => \^card_status_reg[31]_0\(11),
      I4 => \^card_status_reg[31]_0\(10),
      I5 => Q(3),
      O => \FSM_onehot_state[6]_i_4_n_0\
    );
\FSM_onehot_state[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2080AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[6]_1\,
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(10),
      I4 => Q(0),
      O => \^card_status_reg[9]_4\
    );
\FSM_onehot_state[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(4),
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(10),
      O => \FSM_onehot_state[6]_i_6_n_0\
    );
\FSM_onehot_sys_state[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(11),
      I1 => \^card_status_reg[31]_0\(10),
      O => \card_status_reg[11]_2\
    );
\FSM_onehot_sys_state[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(10),
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(9),
      I3 => Q(4),
      I4 => no_more_write_data,
      I5 => \FSM_onehot_state_reg[1]\,
      O => \^card_status_reg[10]_0\
    );
\FSM_onehot_sys_state[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFFFFFFFFF"
    )
        port map (
      I0 => no_more_write_data,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \^card_status_reg[31]_0\(10),
      I3 => \^card_status_reg[31]_0\(11),
      I4 => \^card_status_reg[31]_0\(9),
      I5 => Q(4),
      O => \FSM_onehot_sys_state[2]_i_14_n_0\
    );
\FSM_onehot_sys_state[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E0000000A000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \^card_status_reg[31]_0\(9),
      I3 => \^card_status_reg[31]_0\(11),
      I4 => \^card_status_reg[31]_0\(10),
      I5 => \FSM_onehot_state_reg[6]_0\,
      O => \FSM_onehot_sys_state[2]_i_15_n_0\
    );
\FSM_onehot_sys_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(3),
      I1 => \^card_status_reg[31]_0\(10),
      I2 => \^card_status_reg[31]_0\(11),
      O => \^fsm_onehot_state_reg[3]\
    );
\FSM_onehot_sys_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDFDFCFCFCFC"
    )
        port map (
      I0 => \FSM_onehot_sys_state[2]_i_14_n_0\,
      I1 => \FSM_onehot_sys_state[2]_i_15_n_0\,
      I2 => Q(2),
      I3 => \^card_status_reg[31]_0\(11),
      I4 => \^card_status_reg[31]_0\(10),
      I5 => Q(3),
      O => \FSM_onehot_state_reg[2]\
    );
acmd_defined_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(5),
      I1 => acmd_defined_reg,
      O => \^acmd_defined_c\
    );
\card_status[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \card_status_reg[10]_2\,
      I2 => \card_status_reg[10]_3\,
      I3 => p_3_out(0),
      I4 => \^card_status_reg[31]_0\(10),
      O => \card_status[10]_i_1_n_0\
    );
\card_status[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(10),
      O => \^card_status_reg[9]_2\
    );
\card_status[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A3000000A30FFFF"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => CO(0),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(10),
      I4 => \card_status[11]_i_4\,
      I5 => \^card_status_reg[31]_0\(5),
      O => \card_status_reg[9]_1\
    );
\card_status[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEEE"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(12),
      I1 => \card_status_reg[31]_2\(1),
      I2 => erase_reset,
      I3 => update_2,
      I4 => \card_status_reg[31]_4\(1),
      I5 => sent_r1,
      O => card_status_next2_out(13)
    );
\card_status[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(13),
      I1 => \card_status_reg[31]_2\(2),
      I2 => \card_status_reg[31]_4\(2),
      I3 => sent_r1,
      O => card_status_next2_out(14)
    );
\card_status[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(14),
      I1 => \card_status_reg[31]_2\(3),
      I2 => \card_status_reg[31]_4\(3),
      I3 => sent_r1,
      O => card_status_next2_out(15)
    );
\card_status[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(15),
      I1 => \card_status_reg[31]_2\(4),
      I2 => \card_status_reg[31]_4\(4),
      I3 => sent_r1,
      O => card_status_next2_out(16)
    );
\card_status[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(16),
      I1 => \card_status_reg[31]_2\(5),
      I2 => \card_status_reg[31]_4\(5),
      I3 => sent_r1,
      O => card_status_next2_out(17)
    );
\card_status[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(17),
      I1 => \card_status_reg[31]_2\(6),
      I2 => \card_status_reg[31]_4\(6),
      I3 => sent_r1,
      O => card_status_next2_out(18)
    );
\card_status[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(19),
      I1 => \card_status_reg[31]_2\(7),
      I2 => \card_status_reg[31]_4\(7),
      I3 => sent_r1,
      O => card_status_next2_out(20)
    );
\card_status[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(20),
      I1 => \card_status_reg[31]_2\(8),
      I2 => \card_status_reg[31]_4\(8),
      I3 => sent_r1,
      O => card_status_next2_out(21)
    );
\card_status[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(23),
      I1 => \card_status_reg[31]_2\(9),
      I2 => \card_status_reg[31]_4\(9),
      I3 => sent_r1,
      O => card_status_next2_out(24)
    );
\card_status[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(24),
      I1 => \card_status_reg[31]_2\(10),
      I2 => \card_status_reg[31]_4\(10),
      O => card_status_next2_out(25)
    );
\card_status[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(25),
      I1 => \card_status_reg[31]_2\(11),
      I2 => \card_status_reg[31]_4\(11),
      I3 => sent_r1,
      O => card_status_next2_out(26)
    );
\card_status[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(26),
      I1 => \card_status_reg[31]_2\(12),
      I2 => \card_status_reg[31]_4\(12),
      I3 => sent_r1,
      O => card_status_next2_out(27)
    );
\card_status[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEEE"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(27),
      I1 => \card_status_reg[31]_2\(13),
      I2 => erase_seq_error,
      I3 => update_2,
      I4 => \card_status_reg[31]_4\(13),
      I5 => sent_r1,
      O => card_status_next2_out(28)
    );
\card_status[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(28),
      I1 => \card_status_reg[31]_2\(14),
      I2 => \card_status_reg[31]_4\(14),
      I3 => sent_r1,
      O => card_status_next2_out(29)
    );
\card_status[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(29),
      I1 => \card_status_reg[31]_2\(15),
      I2 => \card_status_reg[31]_4\(15),
      I3 => sent_r1,
      O => card_status_next2_out(30)
    );
\card_status[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EEFE"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(30),
      I1 => \card_status_reg[31]_2\(16),
      I2 => update_2,
      I3 => \card_status_reg[31]_3\,
      I4 => \card_status_reg[31]_4\(16),
      I5 => sent_r1,
      O => card_status_next2_out(31)
    );
\card_status[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cmd_illegal_stb,
      I1 => cmd_crc_err_stb,
      I2 => \^card_status_reg[31]_0\(5),
      I3 => cmd_ignored_stb,
      O => cmd_illegal_stb_reg
    );
\card_status[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(6),
      I1 => \card_status_reg[31]_2\(0),
      I2 => \card_status_reg[31]_4\(0),
      O => card_status_next2_out(6)
    );
\card_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(0),
      Q => \^card_status_reg[31]_0\(0),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status[10]_i_1_n_0\,
      Q => \^card_status_reg[31]_0\(10),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[11]_3\,
      Q => \^card_status_reg[31]_0\(11),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(13),
      Q => \^card_status_reg[31]_0\(12),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(14),
      Q => \^card_status_reg[31]_0\(13),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(15),
      Q => \^card_status_reg[31]_0\(14),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(16),
      Q => \^card_status_reg[31]_0\(15),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(17),
      Q => \^card_status_reg[31]_0\(16),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(18),
      Q => \^card_status_reg[31]_0\(17),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(7),
      Q => \^card_status_reg[31]_0\(18),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(1),
      Q => \^card_status_reg[31]_0\(1),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(20),
      Q => \^card_status_reg[31]_0\(19),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(21),
      Q => \^card_status_reg[31]_0\(20),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(8),
      Q => \^card_status_reg[31]_0\(21),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(9),
      Q => \^card_status_reg[31]_0\(22),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(24),
      Q => \^card_status_reg[31]_0\(23),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(25),
      Q => \^card_status_reg[31]_0\(24),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(26),
      Q => \^card_status_reg[31]_0\(25),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(27),
      Q => \^card_status_reg[31]_0\(26),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(28),
      Q => \^card_status_reg[31]_0\(27),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(29),
      Q => \^card_status_reg[31]_0\(28),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(2),
      Q => \^card_status_reg[31]_0\(2),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(30),
      Q => \^card_status_reg[31]_0\(29),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(31),
      Q => \^card_status_reg[31]_0\(30),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(3),
      Q => \^card_status_reg[31]_0\(3),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(4),
      Q => \^card_status_reg[31]_0\(4),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(5),
      Q => \^card_status_reg[31]_0\(5),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => card_status_next2_out(6),
      Q => \^card_status_reg[31]_0\(6),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[23]_0\(6),
      Q => \^card_status_reg[31]_0\(7),
      R => \card_status_reg[31]_1\
    );
\card_status_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \card_status_reg[9]_7\,
      Q => \^card_status_reg[31]_0\(9),
      R => \card_status_reg[31]_1\
    );
\card_status_resp[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(30),
      I1 => invalid_dat_width,
      I2 => out_of_range,
      O => card_status_resp_next(31)
    );
\card_status_resp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F3F3F3F"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(10),
      I3 => Q(1),
      I4 => \card_status_resp_reg[8]_0\,
      O => \^card_status_reg[31]_0\(8)
    );
\card_status_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(0),
      Q => \^card_status_resp_reg[28]_0\(0),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(10),
      Q => \^card_status_resp_reg[28]_0\(10),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(11),
      Q => \^card_status_resp_reg[28]_0\(11),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \card_status_resp_reg[28]_1\(1),
      Q => card_status_resp(13),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(13),
      Q => card_status_resp(14),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(14),
      Q => card_status_resp(15),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(15),
      Q => \^card_status_resp_reg[28]_0\(12),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(16),
      Q => \^card_status_resp_reg[28]_0\(13),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(17),
      Q => card_status_resp(18),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(18),
      Q => \^card_status_resp_reg[28]_0\(14),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(1),
      Q => \^card_status_resp_reg[28]_0\(1),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(19),
      Q => \^card_status_resp_reg[28]_0\(15),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(20),
      Q => card_status_resp(21),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(21),
      Q => \^card_status_resp_reg[28]_0\(16),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(22),
      Q => \^card_status_resp_reg[28]_0\(17),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(23),
      Q => \^card_status_resp_reg[28]_0\(18),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(24),
      Q => \^card_status_resp_reg[28]_0\(19),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(25),
      Q => card_status_resp(26),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(26),
      Q => \^card_status_resp_reg[28]_0\(20),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \card_status_resp_reg[28]_1\(2),
      Q => \^card_status_resp_reg[28]_0\(21),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(28),
      Q => card_status_resp(29),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(2),
      Q => \^card_status_resp_reg[28]_0\(2),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(29),
      Q => card_status_resp(30),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => card_status_resp_next(31),
      Q => card_status_resp(31),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(3),
      Q => \^card_status_resp_reg[28]_0\(3),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(4),
      Q => \^card_status_resp_reg[28]_0\(4),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \card_status_resp_reg[28]_1\(0),
      Q => \^card_status_resp_reg[28]_0\(5),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(6),
      Q => \^card_status_resp_reg[28]_0\(6),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(7),
      Q => \^card_status_resp_reg[28]_0\(7),
      R => \card_status_reg[31]_1\
    );
\card_status_resp_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(8),
      Q => \^card_status_resp_reg[28]_0\(8),
      S => \card_status_reg[31]_1\
    );
\card_status_resp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_2,
      D => \^card_status_reg[31]_0\(9),
      Q => \^card_status_resp_reg[28]_0\(9),
      R => \card_status_reg[31]_1\
    );
\dev_last_block[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAAAEAAAAA"
    )
        port map (
      I0 => \^card_status_reg[10]_0\,
      I1 => \^card_status_reg[31]_0\(11),
      I2 => \^card_status_reg[31]_0\(10),
      I3 => \^card_status_reg[31]_0\(9),
      I4 => Q(0),
      I5 => Q(3),
      O => \card_status_reg[11]_1\
    );
ignored_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(11),
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(10),
      O => \card_status_reg[11]_0\
    );
\resp_byte[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^card_status_resp_reg[28]_0\(10),
      I1 => card_status_resp(18),
      I2 => \resp_byte[5]_i_4\,
      I3 => card_status_resp(26),
      I4 => \resp_byte[5]_i_4_0\,
      I5 => \resp_byte[5]_i_4_1\(0),
      O => \card_status_resp_reg[10]_0\
    );
\resp_byte[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => card_status_resp(29),
      I1 => \resp_byte[5]_i_4_1\(1),
      I2 => card_status_resp(13),
      I3 => \resp_byte[5]_i_4_0\,
      I4 => card_status_resp(21),
      I5 => \resp_byte[5]_i_4\,
      O => \card_status_resp_reg[29]_0\
    );
\resp_byte[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F350FFFFF35FFFFF"
    )
        port map (
      I0 => card_status_resp(14),
      I1 => \^card_status_resp_reg[28]_0\(16),
      I2 => \resp_byte[7]_i_2\(1),
      I3 => \resp_byte[7]_i_2\(0),
      I4 => \resp_byte[7]_i_2_0\(0),
      I5 => card_status_resp(30),
      O => \card_status_resp_reg[14]_0\
    );
\resp_byte[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F350FFFFF35FFFFF"
    )
        port map (
      I0 => card_status_resp(15),
      I1 => \^card_status_resp_reg[28]_0\(17),
      I2 => \resp_byte[7]_i_2\(1),
      I3 => \resp_byte[7]_i_2\(0),
      I4 => \resp_byte[7]_i_2_0\(0),
      I5 => card_status_resp(31),
      O => \card_status_resp_reg[15]_0\
    );
\sd_dat_o_sys[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => \^card_status_reg[31]_0\(10),
      I2 => \^card_status_reg[31]_0\(11),
      O => \card_status_reg[9]_6\
    );
valid_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF87"
    )
        port map (
      I0 => valid_i_6_0,
      I1 => \^card_status_reg[31]_0\(5),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(9),
      I4 => \^card_status_reg[31]_0\(10),
      O => valid_i_10_n_0
    );
valid_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF07070706060606"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(10),
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => \^card_status_reg[31]_0\(5),
      I4 => valid_reg_i_5_0,
      I5 => valid_i_6_0,
      O => valid_i_11_n_0
    );
valid_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1101F000"
    )
        port map (
      I0 => valid_i_6_0,
      I1 => CO(0),
      I2 => \^card_status_reg[31]_0\(10),
      I3 => \^card_status_reg[31]_0\(9),
      I4 => \^card_status_reg[31]_0\(11),
      O => valid_i_12_n_0
    );
valid_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(10),
      I1 => \^card_status_reg[31]_0\(9),
      I2 => \^card_status_reg[31]_0\(11),
      I3 => valid_i_6_0,
      O => valid_i_14_n_0
    );
valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_index_reg[4]\,
      I1 => ignored_c,
      O => valid_c1_out
    );
valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2272000022722272"
    )
        port map (
      I0 => valid_reg,
      I1 => valid_reg_i_5_n_0,
      I2 => valid_i_6_n_0,
      I3 => valid_i_7_n_0,
      I4 => \^acmd_defined_c\,
      I5 => valid_reg_0,
      O => \^cmd_index_reg[4]\
    );
valid_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBBFFFFFFFF"
    )
        port map (
      I0 => valid_i_12_n_0,
      I1 => valid_i_3_0,
      I2 => \^card_status_reg[9]_2\,
      I3 => valid_i_6_0,
      I4 => valid_i_14_n_0,
      I5 => valid_i_3_1,
      O => valid_i_6_n_0
    );
valid_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030103000303"
    )
        port map (
      I0 => \^card_status_reg[31]_0\(9),
      I1 => valid_i_3_0,
      I2 => valid_i_3_1,
      I3 => \^card_status_reg[31]_0\(11),
      I4 => \^card_status_reg[31]_0\(10),
      I5 => valid_i_6_0,
      O => valid_i_7_n_0
    );
valid_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => valid_i_10_n_0,
      I1 => valid_i_11_n_0,
      O => valid_reg_i_5_n_0,
      S => valid_i_3_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_cmd_info_keeper is
  port (
    block_limit_used : out STD_LOGIC;
    got_cmd8_1 : out STD_LOGIC;
    erase_seq_error : out STD_LOGIC;
    erase_reset : out STD_LOGIC;
    \erase_step_reg[1]_0\ : out STD_LOGIC;
    \erase_step_reg[0]_0\ : out STD_LOGIC;
    \reg_saved_reg[19][0]\ : out STD_LOGIC;
    \reg_saved_reg[19][1]\ : out STD_LOGIC;
    \reg_saved_reg[19][2]\ : out STD_LOGIC;
    \reg_saved_reg[19][3]\ : out STD_LOGIC;
    \reg_saved_reg[19][4]\ : out STD_LOGIC;
    \reg_saved_reg[19][5]\ : out STD_LOGIC;
    \reg_saved_reg[19][6]\ : out STD_LOGIC;
    \reg_saved_reg[19][24]\ : out STD_LOGIC;
    \reg_saved_reg[19][25]\ : out STD_LOGIC;
    \reg_saved_reg[19][26]\ : out STD_LOGIC;
    new_cmd_saved_reg_0 : out STD_LOGIC;
    cmd_saved_missed_reg : out STD_LOGIC;
    erase_seq_error_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \block_count_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \block_count_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \block_count_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \block_count_reg[31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    erase_seq_error_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \saved_cmd_arg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \erase_start_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \erase_end_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \pre_erase_count_reg[22]_0\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    got_cmd8_reg_0 : in STD_LOGIC;
    save_current_cmd : in STD_LOGIC;
    saved_cmd_is_acmd_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \save_block_count_vars[1].block_count_vars_reg[1][22]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    erase_seq_error_reg_2 : in STD_LOGIC;
    \erase_step_reg[1]_1\ : in STD_LOGIC;
    \erase_step_reg[0]_1\ : in STD_LOGIC;
    got_cmd8_1_reg_0 : in STD_LOGIC;
    \axi_rdata[26]_i_3\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_rdata[26]_i_3_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_rdata[0]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[26]_i_3_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    cmd_saved_missed_reg_0 : in STD_LOGIC;
    cmd_saved_unread : in STD_LOGIC;
    cmd_saved_missed : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    erase_reset_reg_0 : in STD_LOGIC;
    erase_reset_reg_1 : in STD_LOGIC;
    update_2 : in STD_LOGIC;
    out_of_range : in STD_LOGIC;
    invalid_dat_width : in STD_LOGIC;
    state_next4_carry : in STD_LOGIC_VECTOR ( 2 downto 0 );
    state_next4_carry_0 : in STD_LOGIC;
    state_next4_carry_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \card_status_resp_reg[28]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \save_erase_vars[1].erase_vars_reg[1][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \save_erase_vars[0].erase_vars_reg[0][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \save_erase_vars[1].erase_vars_reg[1][31]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_cmd_info_keeper : entity is "cmd_info_keeper";
end adapter_axi_sd_0_0_cmd_info_keeper;

architecture STRUCTURE of adapter_axi_sd_0_0_cmd_info_keeper is
  signal \^block_count_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \block_count_vars[0]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^block_limit_used\ : STD_LOGIC;
  signal \^erase_reset\ : STD_LOGIC;
  signal erase_reset_i_1_n_0 : STD_LOGIC;
  signal \^erase_seq_error\ : STD_LOGIC;
  signal \^erase_step_reg[0]_0\ : STD_LOGIC;
  signal \^erase_step_reg[1]_0\ : STD_LOGIC;
  signal \erase_vars[0]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \erase_vars[1]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal got_cmd8 : STD_LOGIC;
  signal \^got_cmd8_1\ : STD_LOGIC;
  signal new_cmd_saved : STD_LOGIC;
  signal pre_erase_count_used : STD_LOGIC;
  signal \save_block_count_vars[0].block_count_vars_used_reg[0]__0\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][17]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][18]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][19]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][20]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][21]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][22]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars_used_reg[1]__0\ : STD_LOGIC;
  signal saved_cmd_index : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal saved_cmd_is_acmd : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cmd_saved_missed_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of cmd_saved_unread_i_1 : label is "soft_lutpair9";
begin
  \block_count_reg[31]_0\(31 downto 0) <= \^block_count_reg[31]_0\(31 downto 0);
  block_limit_used <= \^block_limit_used\;
  erase_reset <= \^erase_reset\;
  erase_seq_error <= \^erase_seq_error\;
  \erase_step_reg[0]_0\ <= \^erase_step_reg[0]_0\;
  \erase_step_reg[1]_0\ <= \^erase_step_reg[1]_0\;
  got_cmd8_1 <= \^got_cmd8_1\;
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(0),
      I1 => \axi_rdata[26]_i_3_0\(0),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(0),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(0),
      O => \reg_saved_reg[19][0]\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(1),
      I1 => \axi_rdata[26]_i_3_0\(1),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(1),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(1),
      O => \reg_saved_reg[19][1]\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(7),
      I1 => \axi_rdata[26]_i_3_0\(7),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(7),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => got_cmd8,
      O => \reg_saved_reg[19][24]\
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(8),
      I1 => \axi_rdata[26]_i_3_0\(8),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(8),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => \^block_limit_used\,
      O => \reg_saved_reg[19][25]\
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(9),
      I1 => \axi_rdata[26]_i_3_0\(9),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(9),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => pre_erase_count_used,
      O => \reg_saved_reg[19][26]\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(2),
      I1 => \axi_rdata[26]_i_3_0\(2),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(2),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(2),
      O => \reg_saved_reg[19][2]\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(3),
      I1 => \axi_rdata[26]_i_3_0\(3),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(3),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(3),
      O => \reg_saved_reg[19][3]\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(4),
      I1 => \axi_rdata[26]_i_3_0\(4),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(4),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(4),
      O => \reg_saved_reg[19][4]\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(5),
      I1 => \axi_rdata[26]_i_3_0\(5),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(5),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_index(5),
      O => \reg_saved_reg[19][5]\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[26]_i_3\(6),
      I1 => \axi_rdata[26]_i_3_0\(6),
      I2 => \axi_rdata[0]_i_3\(1),
      I3 => \axi_rdata[26]_i_3_1\(6),
      I4 => \axi_rdata[0]_i_3\(0),
      I5 => saved_cmd_is_acmd,
      O => \reg_saved_reg[19][6]\
    );
\block_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(0),
      Q => \^block_count_reg[31]_0\(0),
      R => got_cmd8_reg_0
    );
\block_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(10),
      Q => \^block_count_reg[31]_0\(10),
      R => got_cmd8_reg_0
    );
\block_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(11),
      Q => \^block_count_reg[31]_0\(11),
      R => got_cmd8_reg_0
    );
\block_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(12),
      Q => \^block_count_reg[31]_0\(12),
      R => got_cmd8_reg_0
    );
\block_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(13),
      Q => \^block_count_reg[31]_0\(13),
      R => got_cmd8_reg_0
    );
\block_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(14),
      Q => \^block_count_reg[31]_0\(14),
      R => got_cmd8_reg_0
    );
\block_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(15),
      Q => \^block_count_reg[31]_0\(15),
      R => got_cmd8_reg_0
    );
\block_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(16),
      Q => \^block_count_reg[31]_0\(16),
      R => got_cmd8_reg_0
    );
\block_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(17),
      Q => \^block_count_reg[31]_0\(17),
      R => got_cmd8_reg_0
    );
\block_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(18),
      Q => \^block_count_reg[31]_0\(18),
      R => got_cmd8_reg_0
    );
\block_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(19),
      Q => \^block_count_reg[31]_0\(19),
      R => got_cmd8_reg_0
    );
\block_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(1),
      Q => \^block_count_reg[31]_0\(1),
      R => got_cmd8_reg_0
    );
\block_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(20),
      Q => \^block_count_reg[31]_0\(20),
      R => got_cmd8_reg_0
    );
\block_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(21),
      Q => \^block_count_reg[31]_0\(21),
      R => got_cmd8_reg_0
    );
\block_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(22),
      Q => \^block_count_reg[31]_0\(22),
      R => got_cmd8_reg_0
    );
\block_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(23),
      Q => \^block_count_reg[31]_0\(23),
      R => got_cmd8_reg_0
    );
\block_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(24),
      Q => \^block_count_reg[31]_0\(24),
      R => got_cmd8_reg_0
    );
\block_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(25),
      Q => \^block_count_reg[31]_0\(25),
      R => got_cmd8_reg_0
    );
\block_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(26),
      Q => \^block_count_reg[31]_0\(26),
      R => got_cmd8_reg_0
    );
\block_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(27),
      Q => \^block_count_reg[31]_0\(27),
      R => got_cmd8_reg_0
    );
\block_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(28),
      Q => \^block_count_reg[31]_0\(28),
      R => got_cmd8_reg_0
    );
\block_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(29),
      Q => \^block_count_reg[31]_0\(29),
      R => got_cmd8_reg_0
    );
\block_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(2),
      Q => \^block_count_reg[31]_0\(2),
      R => got_cmd8_reg_0
    );
\block_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(30),
      Q => \^block_count_reg[31]_0\(30),
      R => got_cmd8_reg_0
    );
\block_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(31),
      Q => \^block_count_reg[31]_0\(31),
      R => got_cmd8_reg_0
    );
\block_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(3),
      Q => \^block_count_reg[31]_0\(3),
      R => got_cmd8_reg_0
    );
\block_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(4),
      Q => \^block_count_reg[31]_0\(4),
      R => got_cmd8_reg_0
    );
\block_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(5),
      Q => \^block_count_reg[31]_0\(5),
      R => got_cmd8_reg_0
    );
\block_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(6),
      Q => \^block_count_reg[31]_0\(6),
      R => got_cmd8_reg_0
    );
\block_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(7),
      Q => \^block_count_reg[31]_0\(7),
      R => got_cmd8_reg_0
    );
\block_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(8),
      Q => \^block_count_reg[31]_0\(8),
      R => got_cmd8_reg_0
    );
\block_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \block_count_vars[0]_8\(9),
      Q => \^block_count_reg[31]_0\(9),
      R => got_cmd8_reg_0
    );
block_count_used_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[0].block_count_vars_used_reg[0]__0\,
      Q => \^block_limit_used\,
      R => got_cmd8_reg_0
    );
\card_status[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => update_2,
      I1 => \^erase_seq_error\,
      I2 => \^erase_reset\,
      I3 => out_of_range,
      I4 => invalid_dat_width,
      O => erase_seq_error_reg_0
    );
\card_status_resp[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^erase_reset\,
      I1 => \card_status_resp_reg[28]\(0),
      O => erase_seq_error_reg_1(0)
    );
\card_status_resp[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^erase_seq_error\,
      I1 => \card_status_resp_reg[28]\(1),
      O => erase_seq_error_reg_1(1)
    );
cmd_saved_missed_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => cmd_saved_missed,
      I1 => new_cmd_saved,
      I2 => cmd_saved_unread,
      I3 => S_AXI_ARESETN,
      I4 => cmd_saved_missed_reg_0,
      O => cmd_saved_missed_reg
    );
cmd_saved_unread_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => new_cmd_saved,
      I1 => cmd_saved_missed_reg_0,
      I2 => cmd_saved_unread,
      O => new_cmd_saved_reg_0
    );
\erase_end_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(0),
      Q => \erase_end_reg[31]_0\(0),
      R => got_cmd8_reg_0
    );
\erase_end_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(10),
      Q => \erase_end_reg[31]_0\(10),
      R => got_cmd8_reg_0
    );
\erase_end_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(11),
      Q => \erase_end_reg[31]_0\(11),
      R => got_cmd8_reg_0
    );
\erase_end_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(12),
      Q => \erase_end_reg[31]_0\(12),
      R => got_cmd8_reg_0
    );
\erase_end_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(13),
      Q => \erase_end_reg[31]_0\(13),
      R => got_cmd8_reg_0
    );
\erase_end_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(14),
      Q => \erase_end_reg[31]_0\(14),
      R => got_cmd8_reg_0
    );
\erase_end_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(15),
      Q => \erase_end_reg[31]_0\(15),
      R => got_cmd8_reg_0
    );
\erase_end_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(16),
      Q => \erase_end_reg[31]_0\(16),
      R => got_cmd8_reg_0
    );
\erase_end_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(17),
      Q => \erase_end_reg[31]_0\(17),
      R => got_cmd8_reg_0
    );
\erase_end_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(18),
      Q => \erase_end_reg[31]_0\(18),
      R => got_cmd8_reg_0
    );
\erase_end_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(19),
      Q => \erase_end_reg[31]_0\(19),
      R => got_cmd8_reg_0
    );
\erase_end_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(1),
      Q => \erase_end_reg[31]_0\(1),
      R => got_cmd8_reg_0
    );
\erase_end_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(20),
      Q => \erase_end_reg[31]_0\(20),
      R => got_cmd8_reg_0
    );
\erase_end_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(21),
      Q => \erase_end_reg[31]_0\(21),
      R => got_cmd8_reg_0
    );
\erase_end_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(22),
      Q => \erase_end_reg[31]_0\(22),
      R => got_cmd8_reg_0
    );
\erase_end_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(23),
      Q => \erase_end_reg[31]_0\(23),
      R => got_cmd8_reg_0
    );
\erase_end_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(24),
      Q => \erase_end_reg[31]_0\(24),
      R => got_cmd8_reg_0
    );
\erase_end_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(25),
      Q => \erase_end_reg[31]_0\(25),
      R => got_cmd8_reg_0
    );
\erase_end_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(26),
      Q => \erase_end_reg[31]_0\(26),
      R => got_cmd8_reg_0
    );
\erase_end_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(27),
      Q => \erase_end_reg[31]_0\(27),
      R => got_cmd8_reg_0
    );
\erase_end_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(28),
      Q => \erase_end_reg[31]_0\(28),
      R => got_cmd8_reg_0
    );
\erase_end_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(29),
      Q => \erase_end_reg[31]_0\(29),
      R => got_cmd8_reg_0
    );
\erase_end_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(2),
      Q => \erase_end_reg[31]_0\(2),
      R => got_cmd8_reg_0
    );
\erase_end_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(30),
      Q => \erase_end_reg[31]_0\(30),
      R => got_cmd8_reg_0
    );
\erase_end_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(31),
      Q => \erase_end_reg[31]_0\(31),
      R => got_cmd8_reg_0
    );
\erase_end_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(3),
      Q => \erase_end_reg[31]_0\(3),
      R => got_cmd8_reg_0
    );
\erase_end_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(4),
      Q => \erase_end_reg[31]_0\(4),
      R => got_cmd8_reg_0
    );
\erase_end_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(5),
      Q => \erase_end_reg[31]_0\(5),
      R => got_cmd8_reg_0
    );
\erase_end_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(6),
      Q => \erase_end_reg[31]_0\(6),
      R => got_cmd8_reg_0
    );
\erase_end_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(7),
      Q => \erase_end_reg[31]_0\(7),
      R => got_cmd8_reg_0
    );
\erase_end_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(8),
      Q => \erase_end_reg[31]_0\(8),
      R => got_cmd8_reg_0
    );
\erase_end_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[1]_7\(9),
      Q => \erase_end_reg[31]_0\(9),
      R => got_cmd8_reg_0
    );
erase_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054FF5400"
    )
        port map (
      I0 => erase_reset_reg_0,
      I1 => \^erase_step_reg[0]_0\,
      I2 => \^erase_step_reg[1]_0\,
      I3 => erase_reset_reg_1,
      I4 => \^erase_reset\,
      I5 => got_cmd8_reg_0,
      O => erase_reset_i_1_n_0
    );
erase_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => erase_reset_i_1_n_0,
      Q => \^erase_reset\,
      R => '0'
    );
erase_seq_error_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => erase_seq_error_reg_2,
      Q => \^erase_seq_error\,
      R => '0'
    );
\erase_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(0),
      Q => \erase_start_reg[31]_0\(0),
      R => got_cmd8_reg_0
    );
\erase_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(10),
      Q => \erase_start_reg[31]_0\(10),
      R => got_cmd8_reg_0
    );
\erase_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(11),
      Q => \erase_start_reg[31]_0\(11),
      R => got_cmd8_reg_0
    );
\erase_start_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(12),
      Q => \erase_start_reg[31]_0\(12),
      R => got_cmd8_reg_0
    );
\erase_start_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(13),
      Q => \erase_start_reg[31]_0\(13),
      R => got_cmd8_reg_0
    );
\erase_start_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(14),
      Q => \erase_start_reg[31]_0\(14),
      R => got_cmd8_reg_0
    );
\erase_start_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(15),
      Q => \erase_start_reg[31]_0\(15),
      R => got_cmd8_reg_0
    );
\erase_start_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(16),
      Q => \erase_start_reg[31]_0\(16),
      R => got_cmd8_reg_0
    );
\erase_start_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(17),
      Q => \erase_start_reg[31]_0\(17),
      R => got_cmd8_reg_0
    );
\erase_start_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(18),
      Q => \erase_start_reg[31]_0\(18),
      R => got_cmd8_reg_0
    );
\erase_start_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(19),
      Q => \erase_start_reg[31]_0\(19),
      R => got_cmd8_reg_0
    );
\erase_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(1),
      Q => \erase_start_reg[31]_0\(1),
      R => got_cmd8_reg_0
    );
\erase_start_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(20),
      Q => \erase_start_reg[31]_0\(20),
      R => got_cmd8_reg_0
    );
\erase_start_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(21),
      Q => \erase_start_reg[31]_0\(21),
      R => got_cmd8_reg_0
    );
\erase_start_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(22),
      Q => \erase_start_reg[31]_0\(22),
      R => got_cmd8_reg_0
    );
\erase_start_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(23),
      Q => \erase_start_reg[31]_0\(23),
      R => got_cmd8_reg_0
    );
\erase_start_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(24),
      Q => \erase_start_reg[31]_0\(24),
      R => got_cmd8_reg_0
    );
\erase_start_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(25),
      Q => \erase_start_reg[31]_0\(25),
      R => got_cmd8_reg_0
    );
\erase_start_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(26),
      Q => \erase_start_reg[31]_0\(26),
      R => got_cmd8_reg_0
    );
\erase_start_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(27),
      Q => \erase_start_reg[31]_0\(27),
      R => got_cmd8_reg_0
    );
\erase_start_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(28),
      Q => \erase_start_reg[31]_0\(28),
      R => got_cmd8_reg_0
    );
\erase_start_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(29),
      Q => \erase_start_reg[31]_0\(29),
      R => got_cmd8_reg_0
    );
\erase_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(2),
      Q => \erase_start_reg[31]_0\(2),
      R => got_cmd8_reg_0
    );
\erase_start_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(30),
      Q => \erase_start_reg[31]_0\(30),
      R => got_cmd8_reg_0
    );
\erase_start_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(31),
      Q => \erase_start_reg[31]_0\(31),
      R => got_cmd8_reg_0
    );
\erase_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(3),
      Q => \erase_start_reg[31]_0\(3),
      R => got_cmd8_reg_0
    );
\erase_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(4),
      Q => \erase_start_reg[31]_0\(4),
      R => got_cmd8_reg_0
    );
\erase_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(5),
      Q => \erase_start_reg[31]_0\(5),
      R => got_cmd8_reg_0
    );
\erase_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(6),
      Q => \erase_start_reg[31]_0\(6),
      R => got_cmd8_reg_0
    );
\erase_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(7),
      Q => \erase_start_reg[31]_0\(7),
      R => got_cmd8_reg_0
    );
\erase_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(8),
      Q => \erase_start_reg[31]_0\(8),
      R => got_cmd8_reg_0
    );
\erase_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \erase_vars[0]_6\(9),
      Q => \erase_start_reg[31]_0\(9),
      R => got_cmd8_reg_0
    );
\erase_step_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \erase_step_reg[0]_1\,
      Q => \^erase_step_reg[0]_0\,
      R => '0'
    );
\erase_step_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \erase_step_reg[1]_1\,
      Q => \^erase_step_reg[1]_0\,
      R => '0'
    );
got_cmd8_1_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => got_cmd8_1_reg_0,
      Q => \^got_cmd8_1\,
      R => got_cmd8_reg_0
    );
got_cmd8_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \^got_cmd8_1\,
      Q => got_cmd8,
      R => got_cmd8_reg_0
    );
new_cmd_saved_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => save_current_cmd,
      Q => new_cmd_saved,
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][0]\,
      Q => \pre_erase_count_reg[22]_0\(0),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][10]\,
      Q => \pre_erase_count_reg[22]_0\(10),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][11]\,
      Q => \pre_erase_count_reg[22]_0\(11),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][12]\,
      Q => \pre_erase_count_reg[22]_0\(12),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][13]\,
      Q => \pre_erase_count_reg[22]_0\(13),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][14]\,
      Q => \pre_erase_count_reg[22]_0\(14),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][15]\,
      Q => \pre_erase_count_reg[22]_0\(15),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][16]\,
      Q => \pre_erase_count_reg[22]_0\(16),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][17]\,
      Q => \pre_erase_count_reg[22]_0\(17),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][18]\,
      Q => \pre_erase_count_reg[22]_0\(18),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][19]\,
      Q => \pre_erase_count_reg[22]_0\(19),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][1]\,
      Q => \pre_erase_count_reg[22]_0\(1),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][20]\,
      Q => \pre_erase_count_reg[22]_0\(20),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][21]\,
      Q => \pre_erase_count_reg[22]_0\(21),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][22]\,
      Q => \pre_erase_count_reg[22]_0\(22),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][2]\,
      Q => \pre_erase_count_reg[22]_0\(2),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][3]\,
      Q => \pre_erase_count_reg[22]_0\(3),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][4]\,
      Q => \pre_erase_count_reg[22]_0\(4),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][5]\,
      Q => \pre_erase_count_reg[22]_0\(5),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][6]\,
      Q => \pre_erase_count_reg[22]_0\(6),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][7]\,
      Q => \pre_erase_count_reg[22]_0\(7),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][8]\,
      Q => \pre_erase_count_reg[22]_0\(8),
      R => got_cmd8_reg_0
    );
\pre_erase_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][9]\,
      Q => \pre_erase_count_reg[22]_0\(9),
      R => got_cmd8_reg_0
    );
pre_erase_count_used_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_block_count_vars[1].block_count_vars_used_reg[1]__0\,
      Q => pre_erase_count_used,
      R => got_cmd8_reg_0
    );
\save_block_count_vars[0].block_count_vars_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      Q => \block_count_vars[0]_8\(0),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      Q => \block_count_vars[0]_8\(10),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      Q => \block_count_vars[0]_8\(11),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      Q => \block_count_vars[0]_8\(12),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      Q => \block_count_vars[0]_8\(13),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      Q => \block_count_vars[0]_8\(14),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      Q => \block_count_vars[0]_8\(15),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      Q => \block_count_vars[0]_8\(16),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      Q => \block_count_vars[0]_8\(17),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      Q => \block_count_vars[0]_8\(18),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      Q => \block_count_vars[0]_8\(19),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      Q => \block_count_vars[0]_8\(1),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      Q => \block_count_vars[0]_8\(20),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      Q => \block_count_vars[0]_8\(21),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      Q => \block_count_vars[0]_8\(22),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(23),
      Q => \block_count_vars[0]_8\(23),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(24),
      Q => \block_count_vars[0]_8\(24),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(25),
      Q => \block_count_vars[0]_8\(25),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(26),
      Q => \block_count_vars[0]_8\(26),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(27),
      Q => \block_count_vars[0]_8\(27),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(28),
      Q => \block_count_vars[0]_8\(28),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(29),
      Q => \block_count_vars[0]_8\(29),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      Q => \block_count_vars[0]_8\(2),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(30),
      Q => \block_count_vars[0]_8\(30),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(31),
      Q => \block_count_vars[0]_8\(31),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      Q => \block_count_vars[0]_8\(3),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      Q => \block_count_vars[0]_8\(4),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      Q => \block_count_vars[0]_8\(5),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      Q => \block_count_vars[0]_8\(6),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      Q => \block_count_vars[0]_8\(7),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      Q => \block_count_vars[0]_8\(8),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      Q => \block_count_vars[0]_8\(9),
      R => SR(0)
    );
\save_block_count_vars[0].block_count_vars_used_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => E(0),
      Q => \save_block_count_vars[0].block_count_vars_used_reg[0]__0\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][0]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][10]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][11]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][12]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][13]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][14]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][15]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][16]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][17]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][18]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][19]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][1]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][20]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][21]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][22]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][2]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][3]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][4]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][5]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][6]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][7]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][8]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      Q => \save_block_count_vars[1].block_count_vars_reg_n_0_[1][9]\,
      R => SR(0)
    );
\save_block_count_vars[1].block_count_vars_used_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      D => \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0),
      Q => \save_block_count_vars[1].block_count_vars_used_reg[1]__0\,
      R => SR(0)
    );
\save_erase_vars[0].erase_vars_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      Q => \erase_vars[0]_6\(0),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      Q => \erase_vars[0]_6\(10),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      Q => \erase_vars[0]_6\(11),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      Q => \erase_vars[0]_6\(12),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      Q => \erase_vars[0]_6\(13),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      Q => \erase_vars[0]_6\(14),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      Q => \erase_vars[0]_6\(15),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      Q => \erase_vars[0]_6\(16),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      Q => \erase_vars[0]_6\(17),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      Q => \erase_vars[0]_6\(18),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      Q => \erase_vars[0]_6\(19),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      Q => \erase_vars[0]_6\(1),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      Q => \erase_vars[0]_6\(20),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      Q => \erase_vars[0]_6\(21),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      Q => \erase_vars[0]_6\(22),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(23),
      Q => \erase_vars[0]_6\(23),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(24),
      Q => \erase_vars[0]_6\(24),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(25),
      Q => \erase_vars[0]_6\(25),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(26),
      Q => \erase_vars[0]_6\(26),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(27),
      Q => \erase_vars[0]_6\(27),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(28),
      Q => \erase_vars[0]_6\(28),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(29),
      Q => \erase_vars[0]_6\(29),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      Q => \erase_vars[0]_6\(2),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(30),
      Q => \erase_vars[0]_6\(30),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(31),
      Q => \erase_vars[0]_6\(31),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      Q => \erase_vars[0]_6\(3),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      Q => \erase_vars[0]_6\(4),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      Q => \erase_vars[0]_6\(5),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      Q => \erase_vars[0]_6\(6),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      Q => \erase_vars[0]_6\(7),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      Q => \erase_vars[0]_6\(8),
      R => got_cmd8_reg_0
    );
\save_erase_vars[0].erase_vars_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[0].erase_vars_reg[0][31]_0\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      Q => \erase_vars[0]_6\(9),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      Q => \erase_vars[1]_7\(0),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      Q => \erase_vars[1]_7\(10),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      Q => \erase_vars[1]_7\(11),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      Q => \erase_vars[1]_7\(12),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      Q => \erase_vars[1]_7\(13),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      Q => \erase_vars[1]_7\(14),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      Q => \erase_vars[1]_7\(15),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      Q => \erase_vars[1]_7\(16),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      Q => \erase_vars[1]_7\(17),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      Q => \erase_vars[1]_7\(18),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      Q => \erase_vars[1]_7\(19),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      Q => \erase_vars[1]_7\(1),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      Q => \erase_vars[1]_7\(20),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      Q => \erase_vars[1]_7\(21),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      Q => \erase_vars[1]_7\(22),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(23),
      Q => \erase_vars[1]_7\(23),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(24),
      Q => \erase_vars[1]_7\(24),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(25),
      Q => \erase_vars[1]_7\(25),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(26),
      Q => \erase_vars[1]_7\(26),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(27),
      Q => \erase_vars[1]_7\(27),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(28),
      Q => \erase_vars[1]_7\(28),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(29),
      Q => \erase_vars[1]_7\(29),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      Q => \erase_vars[1]_7\(2),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(30),
      Q => \erase_vars[1]_7\(30),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(31),
      Q => \erase_vars[1]_7\(31),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      Q => \erase_vars[1]_7\(3),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      Q => \erase_vars[1]_7\(4),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      Q => \erase_vars[1]_7\(5),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      Q => \erase_vars[1]_7\(6),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      Q => \erase_vars[1]_7\(7),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      Q => \erase_vars[1]_7\(8),
      R => got_cmd8_reg_0
    );
\save_erase_vars[1].erase_vars_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \save_erase_vars[1].erase_vars_reg[1][31]_1\(0),
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      Q => \erase_vars[1]_7\(9),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(0),
      Q => \saved_cmd_arg_reg[31]_0\(0),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(10),
      Q => \saved_cmd_arg_reg[31]_0\(10),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(11),
      Q => \saved_cmd_arg_reg[31]_0\(11),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(12),
      Q => \saved_cmd_arg_reg[31]_0\(12),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(13),
      Q => \saved_cmd_arg_reg[31]_0\(13),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(14),
      Q => \saved_cmd_arg_reg[31]_0\(14),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(15),
      Q => \saved_cmd_arg_reg[31]_0\(15),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(16),
      Q => \saved_cmd_arg_reg[31]_0\(16),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(17),
      Q => \saved_cmd_arg_reg[31]_0\(17),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(18),
      Q => \saved_cmd_arg_reg[31]_0\(18),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(19),
      Q => \saved_cmd_arg_reg[31]_0\(19),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(1),
      Q => \saved_cmd_arg_reg[31]_0\(1),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(20),
      Q => \saved_cmd_arg_reg[31]_0\(20),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(21),
      Q => \saved_cmd_arg_reg[31]_0\(21),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(22),
      Q => \saved_cmd_arg_reg[31]_0\(22),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(23),
      Q => \saved_cmd_arg_reg[31]_0\(23),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(24),
      Q => \saved_cmd_arg_reg[31]_0\(24),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(25),
      Q => \saved_cmd_arg_reg[31]_0\(25),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(26),
      Q => \saved_cmd_arg_reg[31]_0\(26),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(27),
      Q => \saved_cmd_arg_reg[31]_0\(27),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(28),
      Q => \saved_cmd_arg_reg[31]_0\(28),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(29),
      Q => \saved_cmd_arg_reg[31]_0\(29),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(2),
      Q => \saved_cmd_arg_reg[31]_0\(2),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(30),
      Q => \saved_cmd_arg_reg[31]_0\(30),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(31),
      Q => \saved_cmd_arg_reg[31]_0\(31),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(3),
      Q => \saved_cmd_arg_reg[31]_0\(3),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(4),
      Q => \saved_cmd_arg_reg[31]_0\(4),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(5),
      Q => \saved_cmd_arg_reg[31]_0\(5),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(6),
      Q => \saved_cmd_arg_reg[31]_0\(6),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(7),
      Q => \saved_cmd_arg_reg[31]_0\(7),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(8),
      Q => \saved_cmd_arg_reg[31]_0\(8),
      R => got_cmd8_reg_0
    );
\saved_cmd_arg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => \save_erase_vars[1].erase_vars_reg[1][31]_0\(9),
      Q => \saved_cmd_arg_reg[31]_0\(9),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(0),
      Q => saved_cmd_index(0),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(1),
      Q => saved_cmd_index(1),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(2),
      Q => saved_cmd_index(2),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(3),
      Q => saved_cmd_index(3),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(4),
      Q => saved_cmd_index(4),
      R => got_cmd8_reg_0
    );
\saved_cmd_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => Q(5),
      Q => saved_cmd_index(5),
      R => got_cmd8_reg_0
    );
saved_cmd_is_acmd_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => save_current_cmd,
      D => saved_cmd_is_acmd_reg_0,
      Q => saved_cmd_is_acmd,
      R => got_cmd8_reg_0
    );
\state_next4_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(15),
      I1 => \state_next4_carry__0_0\(3),
      I2 => \^block_count_reg[31]_0\(14),
      I3 => \state_next4_carry__0_0\(2),
      O => \block_count_reg[15]_0\(3)
    );
\state_next4_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(13),
      I1 => \state_next4_carry__0_0\(1),
      I2 => \^block_count_reg[31]_0\(12),
      I3 => \state_next4_carry__0_0\(0),
      O => \block_count_reg[15]_0\(2)
    );
\state_next4_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(11),
      I1 => \state_next4_carry__0\(3),
      I2 => \^block_count_reg[31]_0\(10),
      I3 => \state_next4_carry__0\(2),
      O => \block_count_reg[15]_0\(1)
    );
\state_next4_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(9),
      I1 => \state_next4_carry__0\(1),
      I2 => \^block_count_reg[31]_0\(8),
      I3 => \state_next4_carry__0\(0),
      O => \block_count_reg[15]_0\(0)
    );
\state_next4_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(23),
      I1 => \state_next4_carry__1_0\(3),
      I2 => \^block_count_reg[31]_0\(22),
      I3 => \state_next4_carry__1_0\(2),
      O => \block_count_reg[23]_0\(3)
    );
\state_next4_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(21),
      I1 => \state_next4_carry__1_0\(1),
      I2 => \^block_count_reg[31]_0\(20),
      I3 => \state_next4_carry__1_0\(0),
      O => \block_count_reg[23]_0\(2)
    );
\state_next4_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(19),
      I1 => \state_next4_carry__1\(3),
      I2 => \^block_count_reg[31]_0\(18),
      I3 => \state_next4_carry__1\(2),
      O => \block_count_reg[23]_0\(1)
    );
\state_next4_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(17),
      I1 => \state_next4_carry__1\(1),
      I2 => \^block_count_reg[31]_0\(16),
      I3 => \state_next4_carry__1\(0),
      O => \block_count_reg[23]_0\(0)
    );
\state_next4_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(31),
      I1 => \state_next4_carry__2_0\(3),
      I2 => \^block_count_reg[31]_0\(30),
      I3 => \state_next4_carry__2_0\(2),
      O => \block_count_reg[31]_1\(3)
    );
\state_next4_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(29),
      I1 => \state_next4_carry__2_0\(1),
      I2 => \^block_count_reg[31]_0\(28),
      I3 => \state_next4_carry__2_0\(0),
      O => \block_count_reg[31]_1\(2)
    );
\state_next4_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(27),
      I1 => \state_next4_carry__2\(3),
      I2 => \^block_count_reg[31]_0\(26),
      I3 => \state_next4_carry__2\(2),
      O => \block_count_reg[31]_1\(1)
    );
\state_next4_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(25),
      I1 => \state_next4_carry__2\(1),
      I2 => \^block_count_reg[31]_0\(24),
      I3 => \state_next4_carry__2\(0),
      O => \block_count_reg[31]_1\(0)
    );
state_next4_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(7),
      I1 => state_next4_carry_1(3),
      I2 => \^block_count_reg[31]_0\(6),
      I3 => state_next4_carry_1(2),
      O => S(3)
    );
state_next4_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(5),
      I1 => state_next4_carry_1(1),
      I2 => \^block_count_reg[31]_0\(4),
      I3 => state_next4_carry_1(0),
      O => S(2)
    );
state_next4_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(3),
      I1 => state_next4_carry(2),
      I2 => \^block_count_reg[31]_0\(2),
      I3 => state_next4_carry(1),
      O => S(1)
    );
state_next4_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_count_reg[31]_0\(1),
      I1 => state_next4_carry(0),
      I2 => \^block_count_reg[31]_0\(0),
      I3 => state_next4_carry_0,
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_command_validator is
  port (
    last_cmd_valid : out STD_LOGIC;
    acmd_defined_reg_0 : out STD_LOGIC;
    \reg_saved_reg[19][14]\ : out STD_LOGIC;
    \reg_saved_reg[19][16]\ : out STD_LOGIC;
    \reg_saved_reg[19][17]\ : out STD_LOGIC;
    valid_reg_0 : out STD_LOGIC;
    cmd_illegal_stb0 : out STD_LOGIC;
    cmd_ignored_stb0 : out STD_LOGIC;
    send_no_resp0 : out STD_LOGIC;
    valid_reg_1 : in STD_LOGIC;
    cmd_received_good : in STD_LOGIC;
    valid_c1_out : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    ignored_c : in STD_LOGIC;
    illegal_reg_0 : in STD_LOGIC;
    acmd_defined_c : in STD_LOGIC;
    \axi_rdata[17]_i_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata[17]_i_3_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata[14]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[17]_i_3_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    send_resp : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_command_validator : entity is "command_validator";
end adapter_axi_sd_0_0_command_validator;

architecture STRUCTURE of adapter_axi_sd_0_0_command_validator is
  signal \^acmd_defined_reg_0\ : STD_LOGIC;
  signal cmd_illegal : STD_LOGIC;
  signal last_cmd_ignored : STD_LOGIC;
  signal \^last_cmd_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cmd_illegal_stb_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of send_no_resp_i_1 : label is "soft_lutpair10";
begin
  acmd_defined_reg_0 <= \^acmd_defined_reg_0\;
  last_cmd_valid <= \^last_cmd_valid\;
acmd_defined_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd_received_good,
      D => acmd_defined_c,
      Q => \^acmd_defined_reg_0\,
      R => valid_reg_1
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[17]_i_3\(0),
      I1 => \axi_rdata[17]_i_3_0\(0),
      I2 => \axi_rdata[14]_i_3\(1),
      I3 => \axi_rdata[17]_i_3_1\(0),
      I4 => \axi_rdata[14]_i_3\(0),
      I5 => \^acmd_defined_reg_0\,
      O => \reg_saved_reg[19][14]\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[17]_i_3\(1),
      I1 => \axi_rdata[17]_i_3_0\(1),
      I2 => \axi_rdata[14]_i_3\(1),
      I3 => \axi_rdata[17]_i_3_1\(1),
      I4 => \axi_rdata[14]_i_3\(0),
      I5 => last_cmd_ignored,
      O => \reg_saved_reg[19][16]\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[17]_i_3\(2),
      I1 => \axi_rdata[17]_i_3_0\(2),
      I2 => \axi_rdata[14]_i_3\(1),
      I3 => \axi_rdata[17]_i_3_1\(2),
      I4 => \axi_rdata[14]_i_3\(0),
      I5 => \^last_cmd_valid\,
      O => \reg_saved_reg[19][17]\
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
ignored_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd_received_good,
      D => ignored_c,
      Q => last_cmd_ignored,
      R => valid_reg_1
    );
illegal_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd_received_good,
      D => illegal_reg_0,
      Q => cmd_illegal,
      R => valid_reg_1
    );
\resp_cur[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077770777"
    )
        port map (
      I0 => \^last_cmd_valid\,
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => cmd_received_good,
      I5 => Q(2),
      O => valid_reg_0
    );
send_no_resp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^last_cmd_valid\,
      I1 => Q(1),
      I2 => send_resp,
      I3 => Q(4),
      O => send_no_resp0
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => cmd_received_good,
      D => valid_c1_out,
      Q => \^last_cmd_valid\,
      R => valid_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_fifo_fwft is
  port (
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    empty_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \addr_write_reg[9]_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \addr_write_reg[9]_1\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \addr_write_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \addr_write_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_0 : out STD_LOGIC;
    ram_reg_1 : out STD_LOGIC;
    ram_reg_2 : out STD_LOGIC;
    ram_reg_3 : out STD_LOGIC;
    ram_reg_4 : out STD_LOGIC;
    ram_reg_5 : out STD_LOGIC;
    ram_reg_6 : out STD_LOGIC;
    ram_reg_7 : out STD_LOGIC;
    ram_reg_8 : out STD_LOGIC;
    ram_reg_9 : out STD_LOGIC;
    ram_reg_10 : out STD_LOGIC;
    ram_reg_11 : out STD_LOGIC;
    ram_reg_12 : out STD_LOGIC;
    ram_reg_13 : out STD_LOGIC;
    ram_reg_14 : out STD_LOGIC;
    ram_reg_15 : out STD_LOGIC;
    ram_reg_16 : out STD_LOGIC;
    ram_reg_17 : out STD_LOGIC;
    ram_reg_18 : out STD_LOGIC;
    ram_reg_19 : out STD_LOGIC;
    ram_reg_20 : out STD_LOGIC;
    ram_reg_21 : out STD_LOGIC;
    ram_reg_22 : out STD_LOGIC;
    ram_reg_23 : out STD_LOGIC;
    ram_reg_24 : out STD_LOGIC;
    ram_reg_25 : out STD_LOGIC;
    ram_reg_26 : out STD_LOGIC;
    ram_reg_27 : out STD_LOGIC;
    ram_reg_28 : out STD_LOGIC;
    ram_reg_29 : out STD_LOGIC;
    ram_reg_30 : out STD_LOGIC;
    ram_reg_31 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : out STD_LOGIC;
    \addr_write_reg[3]_1\ : out STD_LOGIC;
    sys_may_write_next : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_3\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_may_read_next : out STD_LOGIC;
    ram_reg_32 : out STD_LOGIC;
    ram_reg_33 : out STD_LOGIC;
    dat_width_4_reg : out STD_LOGIC;
    dat_width_4_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    ram_reg_34 : out STD_LOGIC;
    ram_reg_35 : out STD_LOGIC;
    ram_reg_36 : out STD_LOGIC;
    ram_reg_37 : out STD_LOGIC;
    ram_reg_38 : out STD_LOGIC;
    ram_reg_39 : out STD_LOGIC;
    ram_reg_40 : out STD_LOGIC;
    ram_reg_41 : out STD_LOGIC;
    ram_reg_42 : out STD_LOGIC;
    ram_reg_43 : out STD_LOGIC;
    ram_reg_44 : out STD_LOGIC;
    ram_reg_45 : out STD_LOGIC;
    ram_reg_46 : out STD_LOGIC;
    ram_reg_47 : out STD_LOGIC;
    ram_reg_48 : out STD_LOGIC;
    ram_reg_49 : out STD_LOGIC;
    ram_reg_50 : out STD_LOGIC;
    ram_reg_51 : out STD_LOGIC;
    ram_reg_52 : out STD_LOGIC;
    ram_reg_53 : out STD_LOGIC;
    ram_reg_54 : out STD_LOGIC;
    ram_reg_55 : out STD_LOGIC;
    ram_reg_56 : out STD_LOGIC;
    ram_reg_57 : out STD_LOGIC;
    ram_reg_58 : out STD_LOGIC;
    ram_reg_59 : out STD_LOGIC;
    ram_reg_60 : out STD_LOGIC;
    ram_reg_61 : out STD_LOGIC;
    ram_reg_62 : out STD_LOGIC;
    ram_reg_63 : out STD_LOGIC;
    dat_width_4_reg_1 : out STD_LOGIC;
    dat_width_4_reg_2 : out STD_LOGIC;
    dat_width_4_reg_3 : out STD_LOGIC;
    dat_width_4_reg_4 : out STD_LOGIC;
    dat_width_4_reg_5 : out STD_LOGIC;
    dat_width_4_reg_6 : out STD_LOGIC;
    dat_width_4_reg_7 : out STD_LOGIC;
    dat_width_4_reg_8 : out STD_LOGIC;
    dat_width_4_reg_9 : out STD_LOGIC;
    dat_width_4_reg_10 : out STD_LOGIC;
    dat_width_4_reg_11 : out STD_LOGIC;
    dat_width_4_reg_12 : out STD_LOGIC;
    dat_width_4_reg_13 : out STD_LOGIC;
    dat_width_4_reg_14 : out STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_1\ : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    empty_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_sd_clk : in STD_LOGIC;
    \FSM_sequential_state[1]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addr_out_cur[9]_i_8_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[31]_0\ : in STD_LOGIC;
    \axi_rdata_reg[31]_1\ : in STD_LOGIC;
    \axi_rdata_reg[30]\ : in STD_LOGIC;
    \axi_rdata_reg[30]_0\ : in STD_LOGIC;
    \axi_rdata_reg[29]\ : in STD_LOGIC;
    \axi_rdata_reg[29]_0\ : in STD_LOGIC;
    \axi_rdata_reg[28]\ : in STD_LOGIC;
    \axi_rdata_reg[28]_0\ : in STD_LOGIC;
    \axi_rdata_reg[27]\ : in STD_LOGIC;
    \axi_rdata_reg[27]_0\ : in STD_LOGIC;
    \axi_rdata_reg[26]\ : in STD_LOGIC;
    \axi_rdata_reg[26]_0\ : in STD_LOGIC;
    \axi_rdata_reg[25]\ : in STD_LOGIC;
    \axi_rdata_reg[25]_0\ : in STD_LOGIC;
    \axi_rdata_reg[24]\ : in STD_LOGIC;
    \axi_rdata_reg[24]_0\ : in STD_LOGIC;
    \axi_rdata_reg[23]\ : in STD_LOGIC;
    \axi_rdata_reg[23]_0\ : in STD_LOGIC;
    \axi_rdata_reg[22]\ : in STD_LOGIC;
    \axi_rdata_reg[22]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]\ : in STD_LOGIC;
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    sys_may_write_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addr_write_reg[9]_2\ : in STD_LOGIC;
    \card_status_resp_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_last_block_reg[7]\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    dat_wrote_new_word : in STD_LOGIC;
    sys_may_write_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \buf_write_reg[47]\ : in STD_LOGIC;
    \block_size_reg[5]\ : in STD_LOGIC;
    \dev_last_block_reg[7]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[2]\ : in STD_LOGIC;
    \FSM_onehot_sys_state[2]_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_sys_state[2]_i_4_1\ : in STD_LOGIC;
    \FSM_onehot_sys_state[2]_i_4_2\ : in STD_LOGIC;
    data_write_en : in STD_LOGIC;
    dat_got_word : in STD_LOGIC;
    may_read_data : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    \addr_out_cur[9]_i_3_0\ : in STD_LOGIC;
    \addr_out_cur[9]_i_3_1\ : in STD_LOGIC;
    sys_may_read_reg_i_2_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_reg_64 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_65 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sys_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_sys_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_fifo_fwft : entity is "fifo_fwft";
end adapter_axi_sd_0_0_fifo_fwft;

architecture STRUCTURE of adapter_axi_sd_0_0_fifo_fwft is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[4]\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_13_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_4_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_5_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_6_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_7_n_0\ : STD_LOGIC;
  signal \addr_out_cur[9]_i_8_n_0\ : STD_LOGIC;
  signal \addr_out_cur_reg[9]_i_2_n_1\ : STD_LOGIC;
  signal \addr_out_cur_reg[9]_i_2_n_2\ : STD_LOGIC;
  signal \addr_out_cur_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal \addr_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_read[9]_i_2_n_0\ : STD_LOGIC;
  signal addr_write0 : STD_LOGIC;
  signal \addr_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_write[9]_i_2_n_0\ : STD_LOGIC;
  signal \^addr_write_reg[3]_1\ : STD_LOGIC;
  signal \^addr_write_reg[9]_0\ : STD_LOGIC;
  signal \^addr_write_reg[9]_1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \card_status_resp[8]_i_3_n_0\ : STD_LOGIC;
  signal \card_status_resp[8]_i_4_n_0\ : STD_LOGIC;
  signal \card_status_resp[8]_i_5_n_0\ : STD_LOGIC;
  signal \crc[15]_i_30_n_0\ : STD_LOGIC;
  signal data_read_en1 : STD_LOGIC;
  signal \dev_last_block[9]_i_3_n_0\ : STD_LOGIC;
  signal device_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^empty_reg_0\ : STD_LOGIC;
  signal fifo_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_rdaddr_cur : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal fifo_rdaddr_next : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \fifo_rdaddr_next__0\ : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal fifo_resetn : STD_LOGIC;
  signal multi_block_mode_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 to 9 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal ram_reg_i_1_n_0 : STD_LOGIC;
  signal ram_reg_i_37_n_0 : STD_LOGIC;
  signal ram_reg_i_37_n_1 : STD_LOGIC;
  signal ram_reg_i_37_n_2 : STD_LOGIC;
  signal ram_reg_i_37_n_3 : STD_LOGIC;
  signal ram_reg_i_38_n_0 : STD_LOGIC;
  signal ram_reg_i_39_n_0 : STD_LOGIC;
  signal ram_reg_i_40_n_0 : STD_LOGIC;
  signal ram_reg_i_41_n_0 : STD_LOGIC;
  signal sys_may_read_i_3_n_0 : STD_LOGIC;
  signal sys_may_read_i_4_n_0 : STD_LOGIC;
  signal sys_may_read_reg_i_2_n_0 : STD_LOGIC;
  signal \NLW_addr_out_cur_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_sys_state[2]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr_read[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr_read[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr_read[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_read[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_read[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_read[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_read[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_read[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_write[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_write[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_write[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_write[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_write[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_write[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_write[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_write[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \buf_write[10]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \buf_write[11]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \buf_write[12]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \buf_write[13]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \buf_write[14]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \buf_write[15]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \buf_write[24]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \buf_write[25]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \buf_write[26]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \buf_write[27]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \buf_write[28]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \buf_write[29]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \buf_write[30]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buf_write[31]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \buf_write[32]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \buf_write[33]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buf_write[34]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \buf_write[35]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \buf_write[36]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \buf_write[37]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \buf_write[38]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \buf_write[39]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \buf_write[40]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \buf_write[41]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \buf_write[42]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \buf_write[43]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \buf_write[44]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \buf_write[45]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \buf_write[46]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \buf_write[47]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \buf_write[48]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \buf_write[49]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \buf_write[50]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \buf_write[51]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \buf_write[52]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \buf_write[53]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \buf_write[54]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \buf_write[55]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \buf_write[56]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \buf_write[57]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \buf_write[58]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \buf_write[59]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \buf_write[60]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \buf_write[61]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \buf_write[62]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \buf_write[8]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \buf_write[9]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \crc[12]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \crc[15]_i_30\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dev_last_block[9]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of multi_block_mode_i_1 : label is "soft_lutpair21";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 31;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 31;
  attribute SOFT_HLUTNM of sys_may_read_i_1 : label is "soft_lutpair18";
begin
  CO(0) <= \^co\(0);
  \FSM_onehot_state_reg[1]\ <= \^fsm_onehot_state_reg[1]\;
  \FSM_onehot_state_reg[2]\ <= \^fsm_onehot_state_reg[2]\;
  \FSM_onehot_state_reg[4]\ <= \^fsm_onehot_state_reg[4]\;
  \addr_write_reg[3]_1\ <= \^addr_write_reg[3]_1\;
  \addr_write_reg[9]_0\ <= \^addr_write_reg[9]_0\;
  \addr_write_reg[9]_1\(9 downto 0) <= \^addr_write_reg[9]_1\(9 downto 0);
  empty_reg_0 <= \^empty_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5FD0000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]\,
      I1 => Q(5),
      I2 => Q(6),
      I3 => \FSM_onehot_state_reg[0]\,
      I4 => Q(0),
      I5 => \FSM_onehot_state_reg[0]_0\,
      O => D(0)
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]\,
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => Q(2),
      O => \^fsm_onehot_state_reg[2]\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \FSM_onehot_state_reg[2]_0\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB00"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      I3 => \FSM_onehot_state_reg[2]_2\,
      I4 => Q(2),
      O => D(1)
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCEEC0"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => Q(3),
      I2 => \FSM_onehot_state_reg[3]\,
      I3 => Q(2),
      I4 => \FSM_onehot_state_reg[2]_1\,
      O => D(2)
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \addr_write_reg[9]_2\,
      I1 => sys_may_read_reg_i_2_n_0,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_sys_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF22FFFF2"
    )
        port map (
      I0 => sys_state(0),
      I1 => \FSM_onehot_sys_state_reg[0]_4\,
      I2 => \FSM_onehot_sys_state_reg[0]_2\,
      I3 => \FSM_onehot_sys_state[2]_i_4_n_0\,
      I4 => \FSM_onehot_sys_state_reg[0]_3\,
      I5 => \dev_last_block_reg[7]\,
      O => \FSM_onehot_sys_state_reg[0]\
    );
\FSM_onehot_sys_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002802"
    )
        port map (
      I0 => \FSM_onehot_sys_state_reg[1]\,
      I1 => \FSM_onehot_sys_state_reg[0]_2\,
      I2 => \FSM_onehot_sys_state[2]_i_4_n_0\,
      I3 => \FSM_onehot_sys_state_reg[0]_3\,
      I4 => \dev_last_block_reg[7]\,
      O => \FSM_onehot_sys_state_reg[0]_0\
    );
\FSM_onehot_sys_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002802"
    )
        port map (
      I0 => \FSM_onehot_sys_state_reg[2]_0\,
      I1 => \FSM_onehot_sys_state_reg[0]_2\,
      I2 => \FSM_onehot_sys_state[2]_i_4_n_0\,
      I3 => \FSM_onehot_sys_state_reg[0]_3\,
      I4 => \dev_last_block_reg[7]\,
      O => \FSM_onehot_sys_state_reg[0]_1\
    );
\FSM_onehot_sys_state[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => Q(2),
      O => \FSM_onehot_sys_state[2]_i_11_n_0\
    );
\FSM_onehot_sys_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]\,
      I1 => \FSM_onehot_sys_state[2]_i_7_n_0\,
      I2 => Q(5),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \FSM_onehot_sys_state_reg[2]\,
      O => \FSM_onehot_sys_state[2]_i_4_n_0\
    );
\FSM_onehot_sys_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAEEFE"
    )
        port map (
      I0 => \FSM_onehot_sys_state[2]_i_11_n_0\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => \FSM_onehot_sys_state[2]_i_4_0\(0),
      I4 => \FSM_onehot_sys_state[2]_i_4_1\,
      I5 => \FSM_onehot_sys_state[2]_i_4_2\,
      O => \FSM_onehot_sys_state[2]_i_7_n_0\
    );
\FSM_sequential_state[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^empty_reg_0\,
      I1 => Q(5),
      O => \FSM_sequential_state[0]_i_13_n_0\
    );
\FSM_sequential_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020AAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_13_n_0\,
      I1 => O(1),
      I2 => sys_may_write_reg(0),
      I3 => \card_status_resp_reg[8]\(3),
      I4 => O(0),
      I5 => Q(4),
      O => \FSM_onehot_state_reg[4]_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]\,
      I1 => Q(1),
      I2 => \FSM_sequential_state[1]_i_2\(1),
      I3 => sys_may_write_reg(0),
      I4 => O(1),
      O => \FSM_onehot_state_reg[1]_3\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => new_sd_clk,
      I1 => \^addr_write_reg[3]_1\,
      I2 => sys_may_write_reg(0),
      I3 => O(1),
      I4 => \^fsm_onehot_state_reg[1]\,
      I5 => Q(1),
      O => \FSM_onehot_state_reg[1]_1\
    );
\addr_out_cur[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^fsm_onehot_state_reg[4]\,
      I2 => \^empty_reg_0\,
      O => \addr_out_cur[9]_i_1_n_0\
    );
\addr_out_cur[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFE0FFE0FFE0E0"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => dat_wrote_new_word,
      I3 => \addr_out_cur[9]_i_8_n_0\,
      I4 => Q(1),
      I5 => Q(2),
      O => \^fsm_onehot_state_reg[4]\
    );
\addr_out_cur[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(9),
      I1 => \fifo_rdaddr_next__0\(9),
      O => \addr_out_cur[9]_i_4_n_0\
    );
\addr_out_cur[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(7),
      I1 => \^addr_write_reg[9]_1\(7),
      I2 => \fifo_rdaddr_next__0\(8),
      I3 => \^addr_write_reg[9]_1\(8),
      I4 => fifo_rdaddr_next(6),
      I5 => \^addr_write_reg[9]_1\(6),
      O => \addr_out_cur[9]_i_5_n_0\
    );
\addr_out_cur[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_rdaddr_next(3),
      I1 => \^addr_write_reg[9]_1\(3),
      I2 => fifo_rdaddr_next(5),
      I3 => \^addr_write_reg[9]_1\(5),
      I4 => fifo_rdaddr_next(4),
      I5 => \^addr_write_reg[9]_1\(4),
      O => \addr_out_cur[9]_i_6_n_0\
    );
\addr_out_cur[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_rdaddr_next(2),
      I1 => \^addr_write_reg[9]_1\(2),
      I2 => fifo_rdaddr_next(1),
      I3 => \^addr_write_reg[9]_1\(1),
      I4 => fifo_rdaddr_next(0),
      I5 => \^addr_write_reg[9]_1\(0),
      O => \addr_out_cur[9]_i_7_n_0\
    );
\addr_out_cur[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => may_read_data,
      I1 => data_read_en1,
      I2 => S_AXI_ARVALID,
      I3 => \addr_out_cur[9]_i_3_0\,
      I4 => \addr_out_cur[9]_i_3_1\,
      I5 => \addr_write_reg[9]_2\,
      O => \addr_out_cur[9]_i_8_n_0\
    );
\addr_out_cur[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \addr_out_cur[9]_i_8_0\(2),
      I1 => \addr_out_cur[9]_i_8_0\(4),
      I2 => \addr_out_cur[9]_i_8_0\(0),
      I3 => \addr_out_cur[9]_i_8_0\(1),
      I4 => \addr_out_cur[9]_i_8_0\(3),
      O => data_read_en1
    );
\addr_out_cur_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \fifo_rdaddr_next__0\(7),
      Q => fifo_rdaddr_cur(7),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_out_cur_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \fifo_rdaddr_next__0\(8),
      Q => fifo_rdaddr_cur(8),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_out_cur_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \fifo_rdaddr_next__0\(9),
      Q => fifo_rdaddr_cur(9),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_out_cur_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \addr_out_cur_reg[9]_i_2_n_1\,
      CO(1) => \addr_out_cur_reg[9]_i_2_n_2\,
      CO(0) => \addr_out_cur_reg[9]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_out_cur_reg[9]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \addr_out_cur[9]_i_4_n_0\,
      S(2) => \addr_out_cur[9]_i_5_n_0\,
      S(1) => \addr_out_cur[9]_i_6_n_0\,
      S(0) => \addr_out_cur[9]_i_7_n_0\
    );
\addr_read[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_rdaddr_next(0),
      O => p_0_in_0(0)
    );
\addr_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_rdaddr_next(0),
      I1 => fifo_rdaddr_next(1),
      O => \addr_read[1]_i_1_n_0\
    );
\addr_read[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => fifo_rdaddr_next(2),
      I1 => fifo_rdaddr_next(1),
      I2 => fifo_rdaddr_next(0),
      O => \addr_read[2]_i_1_n_0\
    );
\addr_read[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => fifo_rdaddr_next(3),
      I1 => fifo_rdaddr_next(2),
      I2 => fifo_rdaddr_next(0),
      I3 => fifo_rdaddr_next(1),
      O => \addr_read[3]_i_1_n_0\
    );
\addr_read[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => fifo_rdaddr_next(4),
      I1 => fifo_rdaddr_next(3),
      I2 => fifo_rdaddr_next(1),
      I3 => fifo_rdaddr_next(0),
      I4 => fifo_rdaddr_next(2),
      O => \addr_read[4]_i_1_n_0\
    );
\addr_read[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => fifo_rdaddr_next(5),
      I1 => fifo_rdaddr_next(4),
      I2 => fifo_rdaddr_next(2),
      I3 => fifo_rdaddr_next(0),
      I4 => fifo_rdaddr_next(1),
      I5 => fifo_rdaddr_next(3),
      O => \addr_read[5]_i_1_n_0\
    );
\addr_read[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_rdaddr_next(6),
      I1 => \addr_read[9]_i_2_n_0\,
      O => \addr_read[6]_i_1_n_0\
    );
\addr_read[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(7),
      I1 => fifo_rdaddr_next(6),
      I2 => \addr_read[9]_i_2_n_0\,
      O => \addr_read[7]_i_1_n_0\
    );
\addr_read[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(8),
      I1 => \fifo_rdaddr_next__0\(7),
      I2 => \addr_read[9]_i_2_n_0\,
      I3 => fifo_rdaddr_next(6),
      O => \addr_read[8]_i_1_n_0\
    );
\addr_read[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(9),
      I1 => \fifo_rdaddr_next__0\(8),
      I2 => fifo_rdaddr_next(6),
      I3 => \addr_read[9]_i_2_n_0\,
      I4 => \fifo_rdaddr_next__0\(7),
      O => p_0_in(9)
    );
\addr_read[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => fifo_rdaddr_next(4),
      I1 => fifo_rdaddr_next(2),
      I2 => fifo_rdaddr_next(0),
      I3 => fifo_rdaddr_next(1),
      I4 => fifo_rdaddr_next(3),
      I5 => fifo_rdaddr_next(5),
      O => \addr_read[9]_i_2_n_0\
    );
\addr_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => p_0_in_0(0),
      Q => fifo_rdaddr_next(0),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[1]_i_1_n_0\,
      Q => fifo_rdaddr_next(1),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[2]_i_1_n_0\,
      Q => fifo_rdaddr_next(2),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[3]_i_1_n_0\,
      Q => fifo_rdaddr_next(3),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[4]_i_1_n_0\,
      Q => fifo_rdaddr_next(4),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[5]_i_1_n_0\,
      Q => fifo_rdaddr_next(5),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[6]_i_1_n_0\,
      Q => fifo_rdaddr_next(6),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[7]_i_1_n_0\,
      Q => \fifo_rdaddr_next__0\(7),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => \addr_read[8]_i_1_n_0\,
      Q => \fifo_rdaddr_next__0\(8),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_read_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \addr_out_cur[9]_i_1_n_0\,
      D => p_0_in(9),
      Q => \fifo_rdaddr_next__0\(9),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(0),
      O => \addr_write[0]_i_1_n_0\
    );
\addr_write[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(1),
      I1 => \^addr_write_reg[9]_1\(0),
      O => \p_0_in__0\(1)
    );
\addr_write[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(2),
      I1 => \^addr_write_reg[9]_1\(0),
      I2 => \^addr_write_reg[9]_1\(1),
      O => \p_0_in__0\(2)
    );
\addr_write[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(3),
      I1 => \^addr_write_reg[9]_1\(2),
      I2 => \^addr_write_reg[9]_1\(1),
      I3 => \^addr_write_reg[9]_1\(0),
      O => \p_0_in__0\(3)
    );
\addr_write[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(4),
      I1 => \^addr_write_reg[9]_1\(3),
      I2 => \^addr_write_reg[9]_1\(0),
      I3 => \^addr_write_reg[9]_1\(1),
      I4 => \^addr_write_reg[9]_1\(2),
      O => \p_0_in__0\(4)
    );
\addr_write[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(5),
      I1 => \^addr_write_reg[9]_1\(2),
      I2 => \^addr_write_reg[9]_1\(1),
      I3 => \^addr_write_reg[9]_1\(0),
      I4 => \^addr_write_reg[9]_1\(3),
      I5 => \^addr_write_reg[9]_1\(4),
      O => \p_0_in__0\(5)
    );
\addr_write[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(6),
      I1 => \addr_write[9]_i_2_n_0\,
      O => \p_0_in__0\(6)
    );
\addr_write[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(7),
      I1 => \addr_write[9]_i_2_n_0\,
      I2 => \^addr_write_reg[9]_1\(6),
      O => \p_0_in__0\(7)
    );
\addr_write[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(8),
      I1 => \^addr_write_reg[9]_1\(7),
      I2 => \^addr_write_reg[9]_1\(6),
      I3 => \addr_write[9]_i_2_n_0\,
      O => \p_0_in__0\(8)
    );
\addr_write[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(9),
      I1 => \addr_write[9]_i_2_n_0\,
      I2 => \^addr_write_reg[9]_1\(6),
      I3 => \^addr_write_reg[9]_1\(7),
      I4 => \^addr_write_reg[9]_1\(8),
      O => \p_0_in__0\(9)
    );
\addr_write[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(5),
      I1 => \^addr_write_reg[9]_1\(2),
      I2 => \^addr_write_reg[9]_1\(1),
      I3 => \^addr_write_reg[9]_1\(0),
      I4 => \^addr_write_reg[9]_1\(3),
      I5 => \^addr_write_reg[9]_1\(4),
      O => \addr_write[9]_i_2_n_0\
    );
\addr_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \addr_write[0]_i_1_n_0\,
      Q => \^addr_write_reg[9]_1\(0),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(1),
      Q => \^addr_write_reg[9]_1\(1),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(2),
      Q => \^addr_write_reg[9]_1\(2),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(3),
      Q => \^addr_write_reg[9]_1\(3),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(4),
      Q => \^addr_write_reg[9]_1\(4),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(5),
      Q => \^addr_write_reg[9]_1\(5),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(6),
      Q => \^addr_write_reg[9]_1\(6),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(7),
      Q => \^addr_write_reg[9]_1\(7),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(8),
      Q => \^addr_write_reg[9]_1\(8),
      R => \^fsm_onehot_state_reg[1]\
    );
\addr_write_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => addr_write0,
      D => \p_0_in__0\(9),
      Q => \^addr_write_reg[9]_1\(9),
      R => \^fsm_onehot_state_reg[1]\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(0),
      I1 => \axi_rdata_reg[31]\(0),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[0]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[0]_1\,
      O => ram_reg_0
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(10),
      I1 => \axi_rdata_reg[31]\(10),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[10]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[10]_0\,
      O => ram_reg_22
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(11),
      I1 => \axi_rdata_reg[31]\(11),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[11]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[11]_0\,
      O => ram_reg_21
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(12),
      I1 => \axi_rdata_reg[31]\(12),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[12]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[12]_0\,
      O => ram_reg_20
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(13),
      I1 => \axi_rdata_reg[31]\(13),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[13]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[13]_0\,
      O => ram_reg_19
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(14),
      I1 => \axi_rdata_reg[31]\(14),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[14]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[14]_0\,
      O => ram_reg_18
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(15),
      I1 => \axi_rdata_reg[31]\(15),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[15]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[15]_0\,
      O => ram_reg_17
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(16),
      I1 => \axi_rdata_reg[31]\(16),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[16]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[16]_0\,
      O => ram_reg_16
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(17),
      I1 => \axi_rdata_reg[31]\(17),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[17]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[17]_0\,
      O => ram_reg_15
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(18),
      I1 => \axi_rdata_reg[31]\(18),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[18]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[18]_0\,
      O => ram_reg_14
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(19),
      I1 => \axi_rdata_reg[31]\(19),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[19]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[19]_0\,
      O => ram_reg_13
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(1),
      I1 => \axi_rdata_reg[31]\(1),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[1]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[1]_0\,
      O => ram_reg_31
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(20),
      I1 => \axi_rdata_reg[31]\(20),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[20]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[20]_0\,
      O => ram_reg_12
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(21),
      I1 => \axi_rdata_reg[31]\(21),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[21]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[21]_0\,
      O => ram_reg_11
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(22),
      I1 => \axi_rdata_reg[31]\(22),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[22]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[22]_0\,
      O => ram_reg_10
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(23),
      I1 => \axi_rdata_reg[31]\(23),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[23]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[23]_0\,
      O => ram_reg_9
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(24),
      I1 => \axi_rdata_reg[31]\(24),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[24]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[24]_0\,
      O => ram_reg_8
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(25),
      I1 => \axi_rdata_reg[31]\(25),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[25]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[25]_0\,
      O => ram_reg_7
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(26),
      I1 => \axi_rdata_reg[31]\(26),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[26]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[26]_0\,
      O => ram_reg_6
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(27),
      I1 => \axi_rdata_reg[31]\(27),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[27]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[27]_0\,
      O => ram_reg_5
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(28),
      I1 => \axi_rdata_reg[31]\(28),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[28]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[28]_0\,
      O => ram_reg_4
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(29),
      I1 => \axi_rdata_reg[31]\(29),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[29]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[29]_0\,
      O => ram_reg_3
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(2),
      I1 => \axi_rdata_reg[31]\(2),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[2]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[2]_0\,
      O => ram_reg_30
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(30),
      I1 => \axi_rdata_reg[31]\(30),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[30]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[30]_0\,
      O => ram_reg_2
    );
\axi_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(31),
      I1 => \axi_rdata_reg[31]\(31),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[31]_0\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[31]_1\,
      O => ram_reg_1
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(3),
      I1 => \axi_rdata_reg[31]\(3),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[3]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[3]_0\,
      O => ram_reg_29
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(4),
      I1 => \axi_rdata_reg[31]\(4),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[4]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[4]_0\,
      O => ram_reg_28
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(5),
      I1 => \axi_rdata_reg[31]\(5),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[5]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[5]_0\,
      O => ram_reg_27
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(6),
      I1 => \axi_rdata_reg[31]\(6),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[6]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[6]_0\,
      O => ram_reg_26
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(7),
      I1 => \axi_rdata_reg[31]\(7),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[7]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[7]_0\,
      O => ram_reg_25
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(8),
      I1 => \axi_rdata_reg[31]\(8),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[8]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[8]_0\,
      O => ram_reg_24
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => device_data_out(9),
      I1 => \axi_rdata_reg[31]\(9),
      I2 => \addr_out_cur[9]_i_8_0\(3),
      I3 => \axi_rdata_reg[9]\,
      I4 => \axi_rdata_reg[0]_0\,
      I5 => \axi_rdata_reg[9]_0\,
      O => ram_reg_23
    );
\buf_write[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(11),
      O => dat_width_4_reg_12
    );
\buf_write[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(15),
      O => dat_width_4_reg_11
    );
\buf_write[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(19),
      O => dat_width_4_reg_10
    );
\buf_write[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(23),
      O => dat_width_4_reg_9
    );
\buf_write[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(27),
      O => dat_width_4_reg_8
    );
\buf_write[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(31),
      O => dat_width_4_reg_0
    );
\buf_write[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(2),
      O => dat_width_4_reg_7
    );
\buf_write[25]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(6),
      O => dat_width_4_reg_6
    );
\buf_write[26]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(10),
      O => dat_width_4_reg_5
    );
\buf_write[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(14),
      O => dat_width_4_reg_4
    );
\buf_write[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(18),
      O => dat_width_4_reg_3
    );
\buf_write[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(22),
      O => dat_width_4_reg_2
    );
\buf_write[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(26),
      O => dat_width_4_reg_1
    );
\buf_write[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(30),
      O => dat_width_4_reg
    );
\buf_write[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(0),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_63
    );
\buf_write[33]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(1),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_62
    );
\buf_write[34]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(2),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_61
    );
\buf_write[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(3),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_60
    );
\buf_write[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(4),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_59
    );
\buf_write[37]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(5),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_58
    );
\buf_write[38]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(6),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_57
    );
\buf_write[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(7),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_56
    );
\buf_write[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(1),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(8),
      O => ram_reg_55
    );
\buf_write[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(5),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(9),
      O => ram_reg_54
    );
\buf_write[42]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(9),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(10),
      O => ram_reg_53
    );
\buf_write[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(13),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(11),
      O => ram_reg_52
    );
\buf_write[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(17),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(12),
      O => ram_reg_51
    );
\buf_write[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(21),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(13),
      O => ram_reg_50
    );
\buf_write[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(25),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(14),
      O => ram_reg_49
    );
\buf_write[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(29),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(15),
      O => ram_reg_33
    );
\buf_write[48]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(16),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_48
    );
\buf_write[49]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(17),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_47
    );
\buf_write[50]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(18),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_46
    );
\buf_write[51]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(19),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_45
    );
\buf_write[52]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(20),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_44
    );
\buf_write[53]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(21),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_43
    );
\buf_write[54]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(22),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_42
    );
\buf_write[55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => device_data_out(23),
      I1 => \buf_write_reg[47]\,
      O => ram_reg_41
    );
\buf_write[56]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(0),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(24),
      O => ram_reg_40
    );
\buf_write[57]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(4),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(25),
      O => ram_reg_39
    );
\buf_write[58]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(8),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(26),
      O => ram_reg_38
    );
\buf_write[59]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(12),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(27),
      O => ram_reg_37
    );
\buf_write[60]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(16),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(28),
      O => ram_reg_36
    );
\buf_write[61]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(20),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(29),
      O => ram_reg_35
    );
\buf_write[62]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(24),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(30),
      O => ram_reg_34
    );
\buf_write[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(3),
      O => dat_width_4_reg_14
    );
\buf_write[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buf_write_reg[47]\,
      I1 => device_data_out(7),
      O => dat_width_4_reg_13
    );
\card_status_resp[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077F70000"
    )
        port map (
      I0 => O(0),
      I1 => \card_status_resp_reg[8]\(3),
      I2 => \card_status_resp[8]_i_3_n_0\,
      I3 => \card_status_resp[8]_i_4_n_0\,
      I4 => \card_status_resp[8]_i_5_n_0\,
      I5 => \^fsm_onehot_state_reg[1]\,
      O => \^addr_write_reg[9]_0\
    );
\card_status_resp[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sys_may_write_reg_0(2),
      I1 => \card_status_resp_reg[8]\(0),
      I2 => sys_may_write_reg_0(3),
      O => \card_status_resp[8]_i_3_n_0\
    );
\card_status_resp[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \card_status_resp_reg[8]\(1),
      I1 => sys_may_write_reg_0(0),
      I2 => sys_may_write_reg_0(1),
      I3 => \card_status_resp_reg[8]\(2),
      O => \card_status_resp[8]_i_4_n_0\
    );
\card_status_resp[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sys_may_write_reg(0),
      I1 => O(1),
      O => \card_status_resp[8]_i_5_n_0\
    );
\crc[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => device_data_out(28),
      I1 => \buf_write_reg[47]\,
      I2 => device_data_out(31),
      O => ram_reg_32
    );
\crc[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFDDDDDDDDDDDD"
    )
        port map (
      I0 => Q(1),
      I1 => \crc[15]_i_30_n_0\,
      I2 => \card_status_resp[8]_i_4_n_0\,
      I3 => \card_status_resp[8]_i_3_n_0\,
      I4 => \card_status_resp_reg[8]\(3),
      I5 => O(0),
      O => \FSM_onehot_state_reg[1]_2\
    );
\crc[15]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]\,
      I1 => O(1),
      I2 => sys_may_write_reg(0),
      O => \crc[15]_i_30_n_0\
    );
\dev_last_block[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dev_last_block_reg[7]\,
      I1 => \dev_last_block[9]_i_3_n_0\,
      I2 => \FSM_onehot_sys_state_reg[0]_2\,
      O => SR(0)
    );
\dev_last_block[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFEEE"
    )
        port map (
      I0 => \block_size_reg[5]\,
      I1 => \dev_last_block_reg[7]_0\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => Q(2),
      I4 => \FSM_onehot_state_reg[3]\,
      I5 => \FSM_onehot_sys_state_reg[0]_3\,
      O => \dev_last_block[9]_i_3_n_0\
    );
empty_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => empty_reg_1,
      Q => \^empty_reg_0\,
      R => '0'
    );
multi_block_mode_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => Q(0),
      I1 => multi_block_mode_i_3_n_0,
      I2 => \FSM_onehot_sys_state_reg[0]_2\,
      O => E(0)
    );
multi_block_mode_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFFFFFFFF"
    )
        port map (
      I0 => \block_size_reg[5]\,
      I1 => \dev_last_block_reg[7]_0\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => Q(2),
      I4 => \FSM_onehot_state_reg[3]\,
      I5 => \FSM_onehot_sys_state_reg[0]_3\,
      O => multi_block_mode_i_3_n_0
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 12) => \fifo_rdaddr_next__0\(8 downto 7),
      ADDRARDADDR(11 downto 5) => fifo_rdaddr_next(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => \^addr_write_reg[9]_1\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => fifo_data_in(15 downto 0),
      DIBDI(15 downto 0) => fifo_data_in(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => device_data_out(15 downto 0),
      DOBDO(15 downto 0) => device_data_out(31 downto 16),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => ram_reg_i_1_n_0,
      ENBWREN => addr_write0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \^fsm_onehot_state_reg[1]\,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => fifo_resetn,
      WEBWE(2) => fifo_resetn,
      WEBWE(1) => fifo_resetn,
      WEBWE(0) => fifo_resetn
    );
ram_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \dev_last_block_reg[7]\,
      I5 => \addr_out_cur[9]_i_1_n_0\,
      O => ram_reg_i_1_n_0
    );
ram_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(9),
      I1 => Q(4),
      I2 => ram_reg_65(9),
      I3 => Q(1),
      O => fifo_data_in(9)
    );
ram_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(8),
      I1 => Q(4),
      I2 => ram_reg_65(8),
      I3 => Q(1),
      O => fifo_data_in(8)
    );
ram_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(7),
      I1 => Q(4),
      I2 => ram_reg_65(7),
      I3 => Q(1),
      O => fifo_data_in(7)
    );
ram_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(6),
      I1 => Q(4),
      I2 => ram_reg_65(6),
      I3 => Q(1),
      O => fifo_data_in(6)
    );
ram_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(5),
      I1 => Q(4),
      I2 => ram_reg_65(5),
      I3 => Q(1),
      O => fifo_data_in(5)
    );
ram_reg_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(4),
      I1 => Q(4),
      I2 => ram_reg_65(4),
      I3 => Q(1),
      O => fifo_data_in(4)
    );
ram_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(3),
      I1 => Q(4),
      I2 => ram_reg_65(3),
      I3 => Q(1),
      O => fifo_data_in(3)
    );
ram_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(2),
      I1 => Q(4),
      I2 => ram_reg_65(2),
      I3 => Q(1),
      O => fifo_data_in(2)
    );
ram_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(1),
      I1 => Q(4),
      I2 => ram_reg_65(1),
      I3 => Q(1),
      O => fifo_data_in(1)
    );
ram_reg_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(0),
      I1 => Q(4),
      I2 => ram_reg_65(0),
      I3 => Q(1),
      O => fifo_data_in(0)
    );
ram_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF808080"
    )
        port map (
      I0 => Q(4),
      I1 => \addr_write_reg[9]_2\,
      I2 => data_write_en,
      I3 => Q(1),
      I4 => dat_got_word,
      I5 => ram_reg_i_37_n_0,
      O => addr_write0
    );
ram_reg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(31),
      I1 => Q(4),
      I2 => ram_reg_65(31),
      I3 => Q(1),
      O => fifo_data_in(31)
    );
ram_reg_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(30),
      I1 => Q(4),
      I2 => ram_reg_65(30),
      I3 => Q(1),
      O => fifo_data_in(30)
    );
ram_reg_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(29),
      I1 => Q(4),
      I2 => ram_reg_65(29),
      I3 => Q(1),
      O => fifo_data_in(29)
    );
ram_reg_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(28),
      I1 => Q(4),
      I2 => ram_reg_65(28),
      I3 => Q(1),
      O => fifo_data_in(28)
    );
ram_reg_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(27),
      I1 => Q(4),
      I2 => ram_reg_65(27),
      I3 => Q(1),
      O => fifo_data_in(27)
    );
ram_reg_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(26),
      I1 => Q(4),
      I2 => ram_reg_65(26),
      I3 => Q(1),
      O => fifo_data_in(26)
    );
ram_reg_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(25),
      I1 => Q(4),
      I2 => ram_reg_65(25),
      I3 => Q(1),
      O => fifo_data_in(25)
    );
ram_reg_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(24),
      I1 => Q(4),
      I2 => ram_reg_65(24),
      I3 => Q(1),
      O => fifo_data_in(24)
    );
ram_reg_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(23),
      I1 => Q(4),
      I2 => ram_reg_65(23),
      I3 => Q(1),
      O => fifo_data_in(23)
    );
ram_reg_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(22),
      I1 => Q(4),
      I2 => ram_reg_65(22),
      I3 => Q(1),
      O => fifo_data_in(22)
    );
ram_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \dev_last_block_reg[7]\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      I4 => Q(5),
      O => \^fsm_onehot_state_reg[1]\
    );
ram_reg_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(21),
      I1 => Q(4),
      I2 => ram_reg_65(21),
      I3 => Q(1),
      O => fifo_data_in(21)
    );
ram_reg_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(20),
      I1 => Q(4),
      I2 => ram_reg_65(20),
      I3 => Q(1),
      O => fifo_data_in(20)
    );
ram_reg_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(19),
      I1 => Q(4),
      I2 => ram_reg_65(19),
      I3 => Q(1),
      O => fifo_data_in(19)
    );
ram_reg_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(18),
      I1 => Q(4),
      I2 => ram_reg_65(18),
      I3 => Q(1),
      O => fifo_data_in(18)
    );
ram_reg_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(17),
      I1 => Q(4),
      I2 => ram_reg_65(17),
      I3 => Q(1),
      O => fifo_data_in(17)
    );
ram_reg_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(16),
      I1 => Q(4),
      I2 => ram_reg_65(16),
      I3 => Q(1),
      O => fifo_data_in(16)
    );
ram_reg_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \dev_last_block_reg[7]\,
      O => fifo_resetn
    );
ram_reg_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_reg_i_37_n_0,
      CO(2) => ram_reg_i_37_n_1,
      CO(1) => ram_reg_i_37_n_2,
      CO(0) => ram_reg_i_37_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ram_reg_i_37_O_UNCONNECTED(3 downto 0),
      S(3) => ram_reg_i_38_n_0,
      S(2) => ram_reg_i_39_n_0,
      S(1) => ram_reg_i_40_n_0,
      S(0) => ram_reg_i_41_n_0
    );
ram_reg_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(9),
      I1 => \^addr_write_reg[9]_1\(9),
      O => ram_reg_i_38_n_0
    );
ram_reg_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(7),
      I1 => \^addr_write_reg[9]_1\(7),
      I2 => \fifo_rdaddr_next__0\(8),
      I3 => \^addr_write_reg[9]_1\(8),
      I4 => fifo_rdaddr_next(6),
      I5 => \^addr_write_reg[9]_1\(6),
      O => ram_reg_i_39_n_0
    );
ram_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(15),
      I1 => Q(4),
      I2 => ram_reg_65(15),
      I3 => Q(1),
      O => fifo_data_in(15)
    );
ram_reg_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_rdaddr_next(3),
      I1 => \^addr_write_reg[9]_1\(3),
      I2 => fifo_rdaddr_next(5),
      I3 => \^addr_write_reg[9]_1\(5),
      I4 => fifo_rdaddr_next(4),
      I5 => \^addr_write_reg[9]_1\(4),
      O => ram_reg_i_40_n_0
    );
ram_reg_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_rdaddr_next(2),
      I1 => \^addr_write_reg[9]_1\(2),
      I2 => fifo_rdaddr_next(1),
      I3 => \^addr_write_reg[9]_1\(1),
      I4 => fifo_rdaddr_next(0),
      I5 => \^addr_write_reg[9]_1\(0),
      O => ram_reg_i_41_n_0
    );
ram_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(14),
      I1 => Q(4),
      I2 => ram_reg_65(14),
      I3 => Q(1),
      O => fifo_data_in(14)
    );
ram_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(13),
      I1 => Q(4),
      I2 => ram_reg_65(13),
      I3 => Q(1),
      O => fifo_data_in(13)
    );
ram_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(12),
      I1 => Q(4),
      I2 => ram_reg_65(12),
      I3 => Q(1),
      O => fifo_data_in(12)
    );
ram_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(11),
      I1 => Q(4),
      I2 => ram_reg_65(11),
      I3 => Q(1),
      O => fifo_data_in(11)
    );
ram_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_reg_64(10),
      I1 => Q(4),
      I2 => ram_reg_65(10),
      I3 => Q(1),
      O => fifo_data_in(10)
    );
\sd_dat_o_sys[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => Q(1),
      I1 => \^addr_write_reg[9]_0\,
      I2 => new_sd_clk,
      I3 => \FSM_sequential_state[1]_i_2\(0),
      O => \FSM_onehot_state_reg[1]_0\
    );
sys_may_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => sys_may_read_reg_i_2_n_0,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \addr_write_reg[9]_2\,
      O => sys_may_read_next
    );
sys_may_read_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \fifo_rdaddr_next__0\(8),
      I1 => sys_may_read_reg_i_2_0(1),
      I2 => \fifo_rdaddr_next__0\(7),
      I3 => sys_may_read_reg_i_2_0(0),
      I4 => sys_may_read_reg_i_2_0(2),
      I5 => \fifo_rdaddr_next__0\(9),
      O => sys_may_read_i_3_n_0
    );
sys_may_read_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => fifo_rdaddr_cur(9),
      I1 => sys_may_read_reg_i_2_0(2),
      I2 => fifo_rdaddr_cur(8),
      I3 => sys_may_read_reg_i_2_0(1),
      I4 => sys_may_read_reg_i_2_0(0),
      I5 => fifo_rdaddr_cur(7),
      O => sys_may_read_i_4_n_0
    );
sys_may_read_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => sys_may_read_i_3_n_0,
      I1 => sys_may_read_i_4_n_0,
      O => sys_may_read_reg_i_2_n_0,
      S => \addr_out_cur[9]_i_8_n_0\
    );
sys_may_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]\,
      I1 => O(1),
      I2 => sys_may_write_reg(0),
      I3 => \^addr_write_reg[3]_1\,
      I4 => Q(4),
      I5 => \addr_write_reg[9]_2\,
      O => sys_may_write_next
    );
sys_may_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFFFFFF"
    )
        port map (
      I0 => \card_status_resp[8]_i_4_n_0\,
      I1 => sys_may_write_reg_0(2),
      I2 => \card_status_resp_reg[8]\(0),
      I3 => sys_may_write_reg_0(3),
      I4 => \card_status_resp_reg[8]\(3),
      I5 => O(0),
      O => \^addr_write_reg[3]_1\
    );
\write_ok2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(7),
      I1 => \fifo_rdaddr_next__0\(7),
      O => \addr_write_reg[7]_0\(3)
    );
\write_ok2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(6),
      I1 => fifo_rdaddr_next(6),
      O => \addr_write_reg[7]_0\(2)
    );
\write_ok2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(5),
      I1 => fifo_rdaddr_next(5),
      O => \addr_write_reg[7]_0\(1)
    );
\write_ok2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(4),
      I1 => fifo_rdaddr_next(4),
      O => \addr_write_reg[7]_0\(0)
    );
\write_ok2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(9),
      I1 => \fifo_rdaddr_next__0\(9),
      O => S(1)
    );
\write_ok2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(8),
      I1 => \fifo_rdaddr_next__0\(8),
      O => S(0)
    );
write_ok2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(3),
      I1 => fifo_rdaddr_next(3),
      O => \addr_write_reg[3]_0\(3)
    );
write_ok2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(2),
      I1 => fifo_rdaddr_next(2),
      O => \addr_write_reg[3]_0\(2)
    );
write_ok2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(1),
      I1 => fifo_rdaddr_next(1),
      O => \addr_write_reg[3]_0\(1)
    );
write_ok2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^addr_write_reg[9]_1\(0),
      I1 => fifo_rdaddr_next(0),
      O => \addr_write_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_inactive_keeper is
  port (
    S_AXI_ARESETN_0 : out STD_LOGIC;
    inactive_reg_0 : out STD_LOGIC;
    got_acmd41_non_query_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \set_reg_clear_reset[10].reg_clear_reset_reg[10][22]\ : out STD_LOGIC;
    \reg_saved_reg[19][22]\ : out STD_LOGIC;
    device_reset_r_reg : out STD_LOGIC;
    resetn : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][31]\ : out STD_LOGIC;
    \got_cmd0_reg[0]_0\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][30]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][29]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][28]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][27]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][26]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][25]\ : out STD_LOGIC;
    \set_reg_clear_reset[8].reg_clear_reset_reg[8][24]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][31]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][30]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][29]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][28]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][27]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][26]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][25]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][24]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][23]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][22]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][21]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][20]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][19]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][18]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][17]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][16]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][15]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][14]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][13]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][12]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][11]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][10]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][9]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][8]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][7]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][6]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][5]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][4]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][3]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][2]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][1]\ : out STD_LOGIC;
    \set_reg_clear_reset[9].reg_clear_reset_reg[9][0]\ : out STD_LOGIC;
    got_cmd00 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    inactive_reg_1 : in STD_LOGIC;
    got_acmd41_non_query_reg_1 : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    interrupt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    device_reset_r : in STD_LOGIC;
    \axi_rdata[22]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata[22]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata[22]_i_3_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[22]_i_3_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    device_reset_r_reg_0 : in STD_LOGIC;
    \ocr_high_byte_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \size_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_inactive_keeper : entity is "inactive_keeper";
end adapter_axi_sd_0_0_inactive_keeper;

architecture STRUCTURE of adapter_axi_sd_0_0_inactive_keeper is
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^got_cmd0_reg[0]_0\ : STD_LOGIC;
  signal got_reset_cmd : STD_LOGIC;
  signal \^inactive_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of device_reset_r_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ocr_high_byte[24]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ocr_high_byte[25]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ocr_high_byte[26]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ocr_high_byte[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ocr_high_byte[28]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ocr_high_byte[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ocr_high_byte[30]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ocr_high_byte[31]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \set_reg_clear_reset[9].reg_clear_reset[9][31]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \size[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \size[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \size[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \size[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \size[13]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \size[14]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \size[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \size[16]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \size[17]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \size[18]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \size[19]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \size[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \size[20]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \size[21]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \size[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \size[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \size[24]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \size[25]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \size[26]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \size[27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \size[28]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \size[29]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \size[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \size[30]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \size[31]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \size[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \size[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \size[5]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \size[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \size[7]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \size[8]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \size[9]_i_1\ : label is "soft_lutpair68";
begin
  S_AXI_ARESETN_0 <= \^s_axi_aresetn_0\;
  \got_cmd0_reg[0]_0\ <= \^got_cmd0_reg[0]_0\;
  inactive_reg_0 <= \^inactive_reg_0\;
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => got_reset_cmd,
      I1 => S_AXI_ARESETN,
      I2 => \^inactive_reg_0\,
      O => \^got_cmd0_reg[0]_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^s_axi_aresetn_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[22]_i_3\(0),
      I1 => \axi_rdata[22]_i_3_0\(0),
      I2 => \axi_rdata[22]_i_3_1\(1),
      I3 => \axi_rdata[22]_i_3_2\(0),
      I4 => \axi_rdata[22]_i_3_1\(0),
      I5 => \^inactive_reg_0\,
      O => \reg_saved_reg[19][22]\
    );
device_reset_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => device_reset_r,
      I1 => got_reset_cmd,
      I2 => S_AXI_ARESETN,
      I3 => device_reset_r_reg_0,
      O => device_reset_r_reg
    );
got_acmd41_non_query_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => got_acmd41_non_query_reg_1,
      Q => got_acmd41_non_query_reg_0,
      R => \^s_axi_aresetn_0\
    );
\got_cmd0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => got_cmd00,
      Q => got_reset_cmd,
      R => \^s_axi_aresetn_0\
    );
inactive_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => inactive_reg_1,
      Q => \^inactive_reg_0\,
      R => \^s_axi_aresetn_0\
    );
interrupt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => interrupt(0),
      I1 => \^inactive_reg_0\,
      I2 => interrupt(1),
      I3 => device_reset_r,
      O => \set_reg_clear_reset[10].reg_clear_reset_reg[10][22]\
    );
\ocr_high_byte[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(0),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][24]\
    );
\ocr_high_byte[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(1),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][25]\
    );
\ocr_high_byte[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(2),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][26]\
    );
\ocr_high_byte[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(3),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][27]\
    );
\ocr_high_byte[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(4),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][28]\
    );
\ocr_high_byte[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(5),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][29]\
    );
\ocr_high_byte[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(6),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][30]\
    );
\ocr_high_byte[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ocr_high_byte_reg[31]\(7),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[8].reg_clear_reset_reg[8][31]\
    );
resetn_reg_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^inactive_reg_0\,
      I1 => S_AXI_ARESETN,
      I2 => got_reset_cmd,
      O => resetn
    );
\set_reg_clear_reset[9].reg_clear_reset[9][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => got_reset_cmd,
      I1 => S_AXI_ARESETN,
      O => SR(0)
    );
\size[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(0),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][0]\
    );
\size[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(10),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][10]\
    );
\size[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(11),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][11]\
    );
\size[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(12),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][12]\
    );
\size[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(13),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][13]\
    );
\size[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(14),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][14]\
    );
\size[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(15),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][15]\
    );
\size[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(16),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][16]\
    );
\size[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(17),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][17]\
    );
\size[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(18),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][18]\
    );
\size[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(19),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][19]\
    );
\size[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(1),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][1]\
    );
\size[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(20),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][20]\
    );
\size[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(21),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][21]\
    );
\size[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(22),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][22]\
    );
\size[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(23),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][23]\
    );
\size[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(24),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][24]\
    );
\size[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(25),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][25]\
    );
\size[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(26),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][26]\
    );
\size[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(27),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][27]\
    );
\size[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(28),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][28]\
    );
\size[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(29),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][29]\
    );
\size[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(2),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][2]\
    );
\size[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(30),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][30]\
    );
\size[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(31),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][31]\
    );
\size[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(3),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][3]\
    );
\size[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(4),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][4]\
    );
\size[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(5),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][5]\
    );
\size[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(6),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][6]\
    );
\size[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(7),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][7]\
    );
\size[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(8),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][8]\
    );
\size[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_reg[31]\(9),
      I1 => \^got_cmd0_reg[0]_0\,
      O => \set_reg_clear_reset[9].reg_clear_reset_reg[9][9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_line_crc is
  port (
    \state_reg[4]\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    send_resp_o_reg : out STD_LOGIC;
    write_stb_received_r_reg : out STD_LOGIC;
    \counter_reg[0]\ : out STD_LOGIC;
    \state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[1]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    cmd_crc_err_next : out STD_LOGIC;
    sd_cmd_o_sys0 : out STD_LOGIC;
    \state_reg[4]_1\ : out STD_LOGIC;
    \crc_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[5]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[3]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    send_no_resp : in STD_LOGIC;
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cmd_arg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sd_cmd_o_sys_reg : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sd_cmd_o_sys_reg_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \counter_reg[0]_0\ : in STD_LOGIC;
    \counter_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    send_resp : in STD_LOGIC;
    write_stb_received_r : in STD_LOGIC;
    resp_no_crc : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state[5]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_line_crc : entity is "line_crc";
end adapter_axi_sd_0_0_line_crc;

architecture STRUCTURE of adapter_axi_sd_0_0_line_crc is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cmd_crc_err_i_2_n_0 : STD_LOGIC;
  signal \^cmd_crc_err_next\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \^counter_reg[0]\ : STD_LOGIC;
  signal \^counter_reg[1]\ : STD_LOGIC;
  signal crc0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc[3]_i_3_n_0\ : STD_LOGIC;
  signal \crc[6]_i_1_n_0\ : STD_LOGIC;
  signal crc_result : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sd_cmd_o_sys_i_2_n_0 : STD_LOGIC;
  signal sd_cmd_o_sys_i_3_n_0 : STD_LOGIC;
  signal \^send_resp_o_reg\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_10_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state[4]_i_8_n_0\ : STD_LOGIC;
  signal \state[4]_i_9_n_0\ : STD_LOGIC;
  signal \state[5]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_4_n_0\ : STD_LOGIC;
  signal \state[5]_i_5_n_0\ : STD_LOGIC;
  signal \state[5]_i_6_n_0\ : STD_LOGIC;
  signal \state[5]_i_7_n_0\ : STD_LOGIC;
  signal \state[5]_i_8_n_0\ : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
  signal \^state_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^state_reg[3]\ : STD_LOGIC;
  signal \^state_reg[3]_0\ : STD_LOGIC;
  signal \^state_reg[4]\ : STD_LOGIC;
  signal \^state_reg[4]_0\ : STD_LOGIC;
  signal \^state_reg[4]_1\ : STD_LOGIC;
  signal \^state_reg[5]\ : STD_LOGIC;
  signal \^write_stb_received_r_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_write[6]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \counter[7]_i_5\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \crc[3]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of got_new_cmd_i_1 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of sd_cmd_o_sys_i_2 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \state[4]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \state[4]_i_10\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \state[4]_i_6\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \state[5]_i_4\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \state[5]_i_5\ : label is "soft_lutpair85";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  cmd_crc_err_next <= \^cmd_crc_err_next\;
  \counter_reg[0]\ <= \^counter_reg[0]\;
  \counter_reg[1]\ <= \^counter_reg[1]\;
  send_resp_o_reg <= \^send_resp_o_reg\;
  \state_reg[1]\ <= \^state_reg[1]\;
  \state_reg[2]\(2 downto 0) <= \^state_reg[2]\(2 downto 0);
  \state_reg[3]\ <= \^state_reg[3]\;
  \state_reg[3]_0\ <= \^state_reg[3]_0\;
  \state_reg[4]\ <= \^state_reg[4]\;
  \state_reg[4]_0\ <= \^state_reg[4]_0\;
  \state_reg[4]_1\ <= \^state_reg[4]_1\;
  \state_reg[5]\ <= \^state_reg[5]\;
  write_stb_received_r_reg <= \^write_stb_received_r_reg\;
\buf_write[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(0),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(0),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(0),
      O => \crc_reg[5]_0\(0)
    );
\buf_write[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(1),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(1),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(1),
      O => \crc_reg[5]_0\(1)
    );
\buf_write[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(2),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(2),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(2),
      O => \crc_reg[5]_0\(2)
    );
\buf_write[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(3),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(3),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(3),
      O => \crc_reg[5]_0\(3)
    );
\buf_write[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(4),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(4),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(4),
      O => \crc_reg[5]_0\(4)
    );
\buf_write[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => crc_result(5),
      I1 => \^state_reg[4]\,
      I2 => sd_cmd_o_sys_reg(5),
      I3 => \^state_reg[5]\,
      I4 => sd_cmd_o_sys_reg_0(5),
      O => \crc_reg[5]_0\(5)
    );
\buf_write[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEEEEEE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \counter_reg[7]\(2),
      I3 => \counter_reg[7]\(0),
      I4 => \counter_reg[7]\(1),
      O => \^state_reg[5]\
    );
cmd_crc_err_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => crc_result(6),
      I1 => crc_result(0),
      I2 => crc_result(3),
      I3 => crc_result(4),
      I4 => cmd_crc_err_i_2_n_0,
      O => \^cmd_crc_err_next\
    );
cmd_crc_err_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \state_reg[1]_1\(0),
      I1 => crc_result(5),
      I2 => crc_result(1),
      I3 => crc_result(2),
      O => cmd_crc_err_i_2_n_0
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_reg[7]\(2),
      I1 => \counter_reg[7]\(1),
      I2 => \counter_reg[7]\(0),
      O => \^d\(0)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_reg[7]\(3),
      I1 => \counter_reg[7]\(2),
      I2 => \counter_reg[7]\(0),
      I3 => \counter_reg[7]\(1),
      O => \^d\(1)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg[7]\(5),
      I1 => \counter_reg[7]\(1),
      I2 => \counter_reg[7]\(0),
      I3 => \counter_reg[7]\(2),
      I4 => \counter_reg[7]\(3),
      I5 => \counter_reg[7]\(4),
      O => \^d\(2)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg[0]_0\,
      I1 => \counter[7]_i_3_n_0\,
      I2 => \counter_reg[0]_1\,
      O => SR(0)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg[7]\(7),
      I1 => \^counter_reg[1]\,
      I2 => \counter_reg[7]\(3),
      I3 => \counter_reg[7]\(4),
      I4 => \counter_reg[7]\(5),
      I5 => \counter_reg[7]\(6),
      O => \^d\(3)
    );
\counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9FF99FF9FFFF"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^state_reg[2]\(1),
      I4 => Q(2),
      I5 => \state[2]_i_2_n_0\,
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \counter_reg[7]\(1),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(2),
      O => \^counter_reg[1]\
    );
\crc[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"025D5708"
    )
        port map (
      I0 => \^state_reg[4]_1\,
      I1 => \crc[3]_i_3_n_0\,
      I2 => \^state_reg[4]\,
      I3 => crc_result(6),
      I4 => \state_reg[1]_1\(0),
      O => crc2(0)
    );
\crc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA5AA5A96969696"
    )
        port map (
      I0 => crc_result(2),
      I1 => \state_reg[1]_1\(0),
      I2 => crc_result(6),
      I3 => \^state_reg[4]\,
      I4 => \crc[3]_i_3_n_0\,
      I5 => \^state_reg[4]_1\,
      O => crc0(3)
    );
\crc[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg[3]\,
      I1 => Q(4),
      O => \^state_reg[4]\
    );
\crc[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sd_cmd_o_sys_reg(6),
      I1 => \^state_reg[5]\,
      I2 => sd_cmd_o_sys_reg_0(6),
      O => \crc[3]_i_3_n_0\
    );
\crc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \counter_reg[0]_0\,
      I1 => \^state_reg[2]\(1),
      I2 => \^state_reg[4]_1\,
      O => \crc[6]_i_1_n_0\
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc2(0),
      Q => crc_result(0),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc_result(0),
      Q => crc_result(1),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc_result(1),
      Q => crc_result(2),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc0(3),
      Q => crc_result(3),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc_result(3),
      Q => crc_result(4),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc_result(4),
      Q => crc_result(5),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => crc_result(5),
      Q => crc_result(6),
      R => \crc[6]_i_1_n_0\
    );
got_new_cmd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => Q(1),
      I1 => \^counter_reg[0]\,
      I2 => \^cmd_crc_err_next\,
      I3 => \cmd_arg_reg[0]\(0),
      O => \state_reg[1]_0\(0)
    );
sd_cmd_o_sys_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF111F1"
    )
        port map (
      I0 => \^state_reg[4]_1\,
      I1 => \^state_reg[3]\,
      I2 => \crc[3]_i_3_n_0\,
      I3 => \^state_reg[4]\,
      I4 => crc_result(6),
      I5 => sd_cmd_o_sys_i_2_n_0,
      O => sd_cmd_o_sys0
    );
sd_cmd_o_sys_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => sd_cmd_o_sys_i_3_n_0,
      O => sd_cmd_o_sys_i_2_n_0
    );
sd_cmd_o_sys_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF07FFF7FFF7FFF7"
    )
        port map (
      I0 => Q(5),
      I1 => \^d\(1),
      I2 => Q(4),
      I3 => Q(3),
      I4 => resp_no_crc,
      I5 => \state[5]_i_7_n_0\,
      O => sd_cmd_o_sys_i_3_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      O => \^state_reg[2]\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B0BB"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => \state[5]_i_5_n_0\,
      I2 => \state_reg[0]_0\,
      I3 => Q(0),
      I4 => \state[0]_i_5_n_0\,
      I5 => \state[5]_i_4_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08800000088"
    )
        port map (
      I0 => send_no_resp,
      I1 => Q(2),
      I2 => \state[2]_i_4_n_0\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^counter_reg[0]\,
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDD00C0"
    )
        port map (
      I0 => \^counter_reg[0]\,
      I1 => Q(0),
      I2 => E(0),
      I3 => \state_reg[1]_1\(0),
      I4 => Q(1),
      O => \^state_reg[2]\(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^d\(2),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(3),
      I4 => \counter_reg[7]\(2),
      I5 => E(0),
      O => \^counter_reg[0]\
    );
\state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      O => \^state_reg[2]\(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AFA3A3A"
    )
        port map (
      I0 => \state[2]_i_3_n_0\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => \state_reg[1]_1\(0),
      I4 => E(0),
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F0FFEEEEFFFF"
    )
        port map (
      I0 => E(0),
      I1 => send_no_resp,
      I2 => \state[2]_i_4_n_0\,
      I3 => \^counter_reg[0]\,
      I4 => Q(2),
      I5 => Q(1),
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^cmd_crc_err_next\,
      I1 => \cmd_arg_reg[0]\(0),
      O => \state[2]_i_4_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^write_stb_received_r_reg\,
      I1 => Q(3),
      I2 => \^send_resp_o_reg\,
      O => \^state_reg[3]_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \state[5]_i_4_n_0\,
      I1 => Q(4),
      I2 => \state[4]_i_2_n_0\,
      I3 => \state[4]_i_3_n_0\,
      O => \^state_reg[4]_1\
    );
\state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8015"
    )
        port map (
      I0 => \counter_reg[7]\(3),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(2),
      O => \state[4]_i_10_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7073404070737073"
    )
        port map (
      I0 => \state_reg[1]_1\(0),
      I1 => Q(0),
      I2 => E(0),
      I3 => \^state_reg[1]\,
      I4 => \^counter_reg[0]\,
      I5 => Q(1),
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5D0D0DFFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => \state[5]_i_6_n_0\,
      I2 => Q(3),
      I3 => \^send_resp_o_reg\,
      I4 => \^write_stb_received_r_reg\,
      I5 => \state[5]_i_5_n_0\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => send_no_resp,
      O => \^state_reg[1]\
    );
\state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111000"
    )
        port map (
      I0 => send_resp,
      I1 => write_stb_received_r,
      I2 => \^d\(0),
      I3 => E(0),
      I4 => send_no_resp,
      O => \^send_resp_o_reg\
    );
\state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBF"
    )
        port map (
      I0 => \state[4]_i_7_n_0\,
      I1 => E(0),
      I2 => write_stb_received_r,
      I3 => send_resp,
      O => \^write_stb_received_r_reg\
    );
\state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \state[4]_i_8_n_0\,
      I1 => \state[4]_i_9_n_0\,
      I2 => \counter_reg[7]\(7),
      I3 => \counter_reg[7]\(6),
      I4 => CO(0),
      I5 => \state[4]_i_10_n_0\,
      O => \state[4]_i_7_n_0\
    );
\state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000015555555"
    )
        port map (
      I0 => \counter_reg[7]\(5),
      I1 => \counter_reg[7]\(3),
      I2 => \counter_reg[7]\(2),
      I3 => \counter_reg[7]\(0),
      I4 => \counter_reg[7]\(1),
      I5 => \counter_reg[7]\(4),
      O => \state[4]_i_8_n_0\
    );
\state[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg[7]\(2),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(3),
      I4 => \counter_reg[7]\(4),
      I5 => \counter_reg[7]\(5),
      O => \state[4]_i_9_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => \state[5]_i_2_n_0\,
      I1 => \^state_reg[4]_0\,
      I2 => Q(3),
      I3 => Q(5),
      I4 => \state[5]_i_4_n_0\,
      O => \^state_reg[3]\
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F755F755F300C000"
    )
        port map (
      I0 => \state[4]_i_2_n_0\,
      I1 => Q(3),
      I2 => \^state_reg[3]_0\,
      I3 => \state[5]_i_5_n_0\,
      I4 => Q(4),
      I5 => Q(5),
      O => \state[5]_i_2_n_0\
    );
\state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state[5]_i_6_n_0\,
      I1 => Q(4),
      O => \^state_reg[4]_0\
    );
\state[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sd_cmd_o_sys_i_2_n_0,
      I1 => E(0),
      O => \state[5]_i_4_n_0\
    );
\state[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      O => \state[5]_i_5_n_0\
    );
\state[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state[5]_i_7_n_0\,
      I1 => E(0),
      I2 => resp_no_crc,
      O => \state[5]_i_6_n_0\
    );
\state[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B0B000B"
    )
        port map (
      I0 => \^d\(3),
      I1 => \state[5]_i_6_0\(3),
      I2 => \state[5]_i_8_n_0\,
      I3 => \state[5]_i_6_0\(2),
      I4 => \^d\(2),
      O => \state[5]_i_7_n_0\
    );
\state[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF44484"
    )
        port map (
      I0 => \counter_reg[7]\(4),
      I1 => \state[5]_i_6_0\(1),
      I2 => \counter_reg[7]\(3),
      I3 => \^counter_reg[1]\,
      I4 => \state[5]_i_6_0\(0),
      O => \state[5]_i_8_n_0\
    );
\state_next3_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \counter_reg[7]\(5),
      I1 => \counter_reg[7]\(4),
      I2 => \counter_reg[7]\(3),
      I3 => \^counter_reg[1]\,
      I4 => \counter_reg[7]\(7),
      I5 => \counter_reg[7]\(6),
      O => \counter_reg[5]\(0)
    );
\state_next3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg[7]\(6),
      I1 => \counter_reg[7]\(7),
      I2 => \^counter_reg[1]\,
      I3 => \counter_reg[7]\(3),
      I4 => \counter_reg[7]\(4),
      I5 => \counter_reg[7]\(5),
      O => \counter_reg[6]\(0)
    );
state_next3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFF4000"
    )
        port map (
      I0 => \^counter_reg[1]\,
      I1 => \counter_reg[7]\(3),
      I2 => \counter_reg[7]\(4),
      I3 => \counter_reg[7]\(5),
      I4 => \counter_reg[7]\(6),
      I5 => \counter_reg[7]\(7),
      O => DI(2)
    );
state_next3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \counter_reg[7]\(4),
      I1 => \counter_reg[7]\(1),
      I2 => \counter_reg[7]\(0),
      I3 => \counter_reg[7]\(2),
      I4 => \counter_reg[7]\(3),
      I5 => \counter_reg[7]\(5),
      O => DI(1)
    );
state_next3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FEA"
    )
        port map (
      I0 => \counter_reg[7]\(2),
      I1 => \counter_reg[7]\(1),
      I2 => \counter_reg[7]\(0),
      I3 => \counter_reg[7]\(3),
      O => DI(0)
    );
state_next3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111181111111"
    )
        port map (
      I0 => \counter_reg[7]\(7),
      I1 => \counter_reg[7]\(6),
      I2 => \counter_reg[7]\(5),
      I3 => \counter_reg[7]\(4),
      I4 => \counter_reg[7]\(3),
      I5 => \^counter_reg[1]\,
      O => S(3)
    );
state_next3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000015555555"
    )
        port map (
      I0 => \counter_reg[7]\(5),
      I1 => \counter_reg[7]\(3),
      I2 => \counter_reg[7]\(2),
      I3 => \counter_reg[7]\(0),
      I4 => \counter_reg[7]\(1),
      I5 => \counter_reg[7]\(4),
      O => S(2)
    );
state_next3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8015"
    )
        port map (
      I0 => \counter_reg[7]\(3),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(2),
      O => S(1)
    );
state_next3_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg[7]\(1),
      I1 => \counter_reg[7]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \adapter_axi_sd_0_0_line_crc__parameterized0\ is
  port (
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \crc_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    dat_width_4_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : out STD_LOGIC;
    \sd_clk_div_d_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC;
    \crc_reg[10]_0\ : out STD_LOGIC;
    \sd_dat_o_sys_reg[0]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_reg[15]_0\ : in STD_LOGIC;
    \crc[15]_i_10_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sd_dat_o_sys_reg[0]_1\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_2\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_3\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_4\ : in STD_LOGIC;
    \crc_reg[15]_1\ : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \buf_write_reg[48]\ : in STD_LOGIC;
    \buf_write_reg[48]_0\ : in STD_LOGIC;
    \buf_write_reg[48]_1\ : in STD_LOGIC;
    \crc_reg[0]_1\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \buf_write_reg[48]_2\ : in STD_LOGIC;
    \buf_write_reg[49]\ : in STD_LOGIC;
    \buf_write_reg[50]\ : in STD_LOGIC;
    \buf_write_reg[51]\ : in STD_LOGIC;
    \buf_write_reg[52]\ : in STD_LOGIC;
    \buf_write_reg[53]\ : in STD_LOGIC;
    \buf_write_reg[54]\ : in STD_LOGIC;
    \buf_write_reg[55]\ : in STD_LOGIC;
    \buf_write_reg[56]\ : in STD_LOGIC;
    \buf_write_reg[57]\ : in STD_LOGIC;
    \buf_write_reg[58]\ : in STD_LOGIC;
    \buf_write_reg[59]\ : in STD_LOGIC;
    \buf_write_reg[60]\ : in STD_LOGIC;
    \buf_write_reg[62]\ : in STD_LOGIC;
    \crc_reg[0]_2\ : in STD_LOGIC;
    \buf_write_reg[61]\ : in STD_LOGIC;
    \sd_dat_o_sys[3]_i_2_0\ : in STD_LOGIC;
    \crc[15]_i_2\ : in STD_LOGIC;
    \crc_reg[15]_2\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \crc[15]_i_5_0\ : in STD_LOGIC;
    \crc[15]_i_3\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state[0]_i_10\ : in STD_LOGIC;
    \FSM_sequential_state[0]_i_10_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc[15]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state[0]_i_5\ : in STD_LOGIC;
    \crc[15]_i_11_0\ : in STD_LOGIC;
    \crc[15]_i_11_1\ : in STD_LOGIC;
    \crc[15]_i_11_2\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \adapter_axi_sd_0_0_line_crc__parameterized0\ : entity is "line_crc";
end \adapter_axi_sd_0_0_line_crc__parameterized0\;

architecture STRUCTURE of \adapter_axi_sd_0_0_line_crc__parameterized0\ is
  signal \^fsm_sequential_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[3]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[3]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc0 : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc[12]_i_2_n_0\ : STD_LOGIC;
  signal \crc[15]_i_17_n_0\ : STD_LOGIC;
  signal \crc[15]_i_22_n_0\ : STD_LOGIC;
  signal \crc[15]_i_23_n_0\ : STD_LOGIC;
  signal \crc[15]_i_25_n_0\ : STD_LOGIC;
  signal \crc_result[0]_3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^dat_width_4_reg\ : STD_LOGIC;
  signal read_crc_err_i_10_n_0 : STD_LOGIC;
  signal read_crc_err_i_11_n_0 : STD_LOGIC;
  signal read_crc_err_i_16_n_0 : STD_LOGIC;
  signal \^sd_clk_div_d_reg[3]\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_12\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_14\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_7\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \buf_write[60]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \buf_write[61]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \crc[0]_i_1__2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \crc[12]_i_1__2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \crc[12]_i_2__0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \crc[15]_i_22\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \crc[15]_i_5\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \crc[15]_i_6\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \i__carry_i_3\ : label is "soft_lutpair114";
begin
  \FSM_sequential_state_reg[0]\ <= \^fsm_sequential_state_reg[0]\;
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  \FSM_sequential_state_reg[0]_1\ <= \^fsm_sequential_state_reg[0]_1\;
  \FSM_sequential_state_reg[1]\ <= \^fsm_sequential_state_reg[1]\;
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  \FSM_sequential_state_reg[1]_1\ <= \^fsm_sequential_state_reg[1]_1\;
  \FSM_sequential_state_reg[2]\ <= \^fsm_sequential_state_reg[2]\;
  \FSM_sequential_state_reg[3]\ <= \^fsm_sequential_state_reg[3]\;
  \FSM_sequential_state_reg[3]_0\ <= \^fsm_sequential_state_reg[3]_0\;
  SR(0) <= \^sr\(0);
  dat_width_4_reg <= \^dat_width_4_reg\;
  \sd_clk_div_d_reg[3]\ <= \^sd_clk_div_d_reg[3]\;
\FSM_sequential_state[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \crc_reg[15]_2\,
      I1 => \FSM_sequential_state[0]_i_5\,
      O => \^sd_clk_div_d_reg[3]\
    );
\FSM_sequential_state[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \crc_reg[15]_2\,
      I1 => CO(0),
      I2 => \FSM_sequential_state[0]_i_10\,
      I3 => \FSM_sequential_state[0]_i_10_0\(0),
      O => \^dat_width_4_reg\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_reg[15]_2\,
      O => \^fsm_sequential_state_reg[0]_0\
    );
\buf_write[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(0),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[48]_0\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(0),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(0)
    );
\buf_write[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(1),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[49]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(1),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(1)
    );
\buf_write[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(2),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[50]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(2),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(2)
    );
\buf_write[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(3),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[51]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(3),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(3)
    );
\buf_write[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(4),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[52]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(4),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(4)
    );
\buf_write[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(5),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[53]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(5),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(5)
    );
\buf_write[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(6),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[54]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(6),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(6)
    );
\buf_write[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(7),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[55]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(7),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(7)
    );
\buf_write[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(8),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[56]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(8),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(8)
    );
\buf_write[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(9),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[57]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(9),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(9)
    );
\buf_write[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(10),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[58]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(10),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(10)
    );
\buf_write[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(11),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[59]\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(11),
      I5 => \buf_write_reg[48]_2\,
      O => \crc_reg[14]_0\(11)
    );
\buf_write[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_result[0]_3\(12),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[60]\,
      O => \crc_reg[14]_0\(12)
    );
\buf_write[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_result[0]_3\(13),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[61]\,
      O => \crc_reg[14]_0\(13)
    );
\buf_write[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_result[0]_3\(14),
      I1 => \buf_write_reg[48]\,
      I2 => \buf_write_reg[62]\,
      O => \crc_reg[14]_0\(14)
    );
\crc[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \crc_result[0]_3\(15),
      I1 => \crc[12]_i_2_n_0\,
      I2 => \^fsm_sequential_state_reg[2]\,
      I3 => \crc_reg[0]_0\(0),
      O => crc2(0)
    );
\crc[12]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[0]_3\(11),
      I1 => \crc_reg[0]_0\(0),
      I2 => \^fsm_sequential_state_reg[2]\,
      I3 => \crc[12]_i_2_n_0\,
      I4 => \crc_result[0]_3\(15),
      O => crc0(12)
    );
\crc[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[0]_3\(15),
      I1 => \buf_write_reg[48]\,
      I2 => \crc_reg[0]_2\,
      I3 => \buf_write_reg[48]_1\,
      I4 => \crc_reg[0]_1\(12),
      I5 => \buf_write_reg[48]_2\,
      O => \crc[12]_i_2_n_0\
    );
\crc[12]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]_3\,
      I1 => \^fsm_sequential_state_reg[3]\,
      I2 => \sd_dat_o_sys_reg[0]_4\,
      I3 => \sd_dat_o_sys_reg[0]_2\,
      O => \^fsm_sequential_state_reg[2]\
    );
\crc[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F8C8C0C0C8C8C"
    )
        port map (
      I0 => \crc[15]_i_3_0\(0),
      I1 => \crc[15]_i_22_n_0\,
      I2 => \^fsm_sequential_state_reg[3]_0\,
      I3 => \^sd_clk_div_d_reg[3]\,
      I4 => \^fsm_sequential_state_reg[0]_0\,
      I5 => Q(1),
      O => \^fsm_sequential_state_reg[1]_1\
    );
\crc[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF888B0000"
    )
        port map (
      I0 => \crc[15]_i_23_n_0\,
      I1 => Q(1),
      I2 => \^fsm_sequential_state_reg[3]_0\,
      I3 => \crc[15]_i_3\,
      I4 => Q(2),
      I5 => \crc[15]_i_25_n_0\,
      O => \^fsm_sequential_state_reg[1]_0\
    );
\crc[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AAFFAB00AA00AB"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => Q(1),
      I2 => \crc[15]_i_5_0\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \^fsm_sequential_state_reg[1]_1\,
      O => \crc[15]_i_17_n_0\
    );
\crc[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8AAA22220222"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[2]\,
      I1 => \crc_reg[15]_1\,
      I2 => \crc_reg[15]_0\,
      I3 => \sd_dat_o_sys_reg[0]_3\,
      I4 => \sd_dat_o_sys_reg[0]_4\,
      I5 => \^fsm_sequential_state_reg[1]\,
      O => \^sr\(0)
    );
\crc[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[15]_2\,
      O => \^fsm_sequential_state_reg[0]_1\
    );
\crc[15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \crc[15]_i_10_0\(0),
      O => \crc[15]_i_22_n_0\
    );
\crc[15]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F101010BFBFBFBF"
    )
        port map (
      I0 => \crc[15]_i_11_1\,
      I1 => \crc[15]_i_11_2\,
      I2 => Q(0),
      I3 => \crc_reg[15]_2\,
      I4 => O(0),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc[15]_i_23_n_0\
    );
\crc[15]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0AFF0E000AFF0E"
    )
        port map (
      I0 => \crc[15]_i_10_0\(0),
      I1 => \crc[15]_i_11_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^fsm_sequential_state_reg[3]_0\,
      I5 => \^fsm_sequential_state_reg[0]_1\,
      O => \crc[15]_i_25_n_0\
    );
\crc[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \crc[15]_i_17_n_0\,
      I1 => \sd_dat_o_sys_reg[0]_2\,
      O => \^fsm_sequential_state_reg[1]\
    );
\crc[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080FFF0"
    )
        port map (
      I0 => \crc_reg[15]_2\,
      I1 => O(1),
      I2 => Q(0),
      I3 => \^dat_width_4_reg\,
      I4 => \crc[15]_i_2\,
      O => \^fsm_sequential_state_reg[0]\
    );
\crc[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[0]_3\(4),
      I1 => \crc_reg[0]_0\(0),
      I2 => \^fsm_sequential_state_reg[2]\,
      I3 => \crc[12]_i_2_n_0\,
      I4 => \crc_result[0]_3\(15),
      O => crc0(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => crc2(0),
      Q => \crc_result[0]_3\(0),
      R => \^sr\(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(9),
      Q => \crc_result[0]_3\(10),
      R => \^sr\(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(10),
      Q => \crc_result[0]_3\(11),
      R => \^sr\(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => crc0(12),
      Q => \crc_result[0]_3\(12),
      R => \^sr\(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(12),
      Q => \crc_result[0]_3\(13),
      R => \^sr\(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(13),
      Q => \crc_result[0]_3\(14),
      R => \^sr\(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(14),
      Q => \crc_result[0]_3\(15),
      R => \^sr\(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(0),
      Q => \crc_result[0]_3\(1),
      R => \^sr\(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(1),
      Q => \crc_result[0]_3\(2),
      R => \^sr\(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(2),
      Q => \crc_result[0]_3\(3),
      R => \^sr\(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(3),
      Q => \crc_result[0]_3\(4),
      R => \^sr\(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => crc0(5),
      Q => \crc_result[0]_3\(5),
      R => \^sr\(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(5),
      Q => \crc_result[0]_3\(6),
      R => \^sr\(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(6),
      Q => \crc_result[0]_3\(7),
      R => \^sr\(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(7),
      Q => \crc_result[0]_3\(8),
      R => \^sr\(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_2\,
      D => \crc_result[0]_3\(8),
      Q => \crc_result[0]_3\(9),
      R => \^sr\(0)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE1B"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \^fsm_sequential_state_reg[3]_0\
    );
read_crc_err_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[0]_3\(13),
      I1 => \crc_result[0]_3\(12),
      I2 => \crc_result[0]_3\(14),
      I3 => \crc_result[0]_3\(15),
      O => read_crc_err_i_10_n_0
    );
read_crc_err_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_result[0]_3\(2),
      I1 => \crc_result[0]_3\(3),
      I2 => \crc_result[0]_3\(0),
      I3 => \crc_result[0]_3\(1),
      I4 => read_crc_err_i_16_n_0,
      O => read_crc_err_i_11_n_0
    );
read_crc_err_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[0]_3\(6),
      I1 => \crc_result[0]_3\(5),
      I2 => \crc_result[0]_3\(7),
      I3 => \crc_result[0]_3\(4),
      O => read_crc_err_i_16_n_0
    );
read_crc_err_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_crc_err_i_10_n_0,
      I1 => \crc_result[0]_3\(10),
      I2 => \crc_result[0]_3\(9),
      I3 => \crc_result[0]_3\(8),
      I4 => \crc_result[0]_3\(11),
      I5 => read_crc_err_i_11_n_0,
      O => \crc_reg[10]_0\
    );
\sd_dat_o_sys[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFF500FFFFFCFF0C"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]_1\,
      I1 => \crc[12]_i_2_n_0\,
      I2 => \sd_dat_o_sys_reg[0]_2\,
      I3 => \sd_dat_o_sys_reg[0]_3\,
      I4 => \sd_dat_o_sys_reg[0]_4\,
      I5 => \^fsm_sequential_state_reg[3]\,
      O => D(0)
    );
\sd_dat_o_sys[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F404FFFF"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]\,
      I1 => \sd_dat_o_sys_reg[0]_0\,
      I2 => Q(3),
      I3 => \sd_dat_o_sys[3]_i_5_n_0\,
      I4 => \crc_reg[15]_0\,
      O => \^fsm_sequential_state_reg[3]\
    );
\sd_dat_o_sys[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B8888BB8BBB8B"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => \^fsm_sequential_state_reg[0]_0\,
      I4 => \sd_dat_o_sys[3]_i_2_0\,
      I5 => \crc[15]_i_2\,
      O => \sd_dat_o_sys[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \adapter_axi_sd_0_0_line_crc__parameterized0_0\ is
  port (
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \sd_clk_div_d_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    buf_write_next : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \counter_reg[5]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_4\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : out STD_LOGIC;
    dat_width_4_reg : out STD_LOGIC;
    \counter_reg[0]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \block_size_reg[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_reg[11]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \block_size_reg[12]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \block_size_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \block_size_reg[12]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \counter_reg[11]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \crc_reg[10]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sd_dat_o_sys[3]_i_5\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sd_dat_o_sys_reg[0]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_0\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_1\ : in STD_LOGIC;
    \crc[15]_i_16_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sd_dat_o_sys_reg[1]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \block_data_finished0_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \sd_dat_o_sys_reg[1]_0\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[1]_1\ : in STD_LOGIC;
    \crc_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \crc_reg[12]_0\ : in STD_LOGIC;
    \buf_write_reg[32]\ : in STD_LOGIC;
    \buf_write_reg[47]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \buf_write_reg[33]\ : in STD_LOGIC;
    \buf_write_reg[34]\ : in STD_LOGIC;
    \buf_write_reg[35]\ : in STD_LOGIC;
    \buf_write_reg[36]\ : in STD_LOGIC;
    \buf_write_reg[37]\ : in STD_LOGIC;
    \buf_write_reg[38]\ : in STD_LOGIC;
    \buf_write_reg[39]\ : in STD_LOGIC;
    \buf_write_reg[40]\ : in STD_LOGIC;
    \buf_write_reg[41]\ : in STD_LOGIC;
    \buf_write_reg[42]\ : in STD_LOGIC;
    \buf_write_reg[43]\ : in STD_LOGIC;
    \buf_write_reg[44]\ : in STD_LOGIC;
    \buf_write_reg[45]\ : in STD_LOGIC;
    \buf_write_reg[46]\ : in STD_LOGIC;
    \buf_write_reg[47]_0\ : in STD_LOGIC;
    \crc_reg[15]_1\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[1]_2\ : in STD_LOGIC;
    \sd_dat_o_sys[3]_i_2\ : in STD_LOGIC;
    \block_data_finished0_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc[15]_i_4_0\ : in STD_LOGIC;
    \crc[15]_i_4_1\ : in STD_LOGIC;
    \crc[15]_i_4_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_6\ : in STD_LOGIC;
    \sd_dat_o_sys[3]_i_3_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_1\ : in STD_LOGIC;
    \buf_write[59]_i_3_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \crc_reg[15]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \block_data_finished0_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \block_data_finished0_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \adapter_axi_sd_0_0_line_crc__parameterized0_0\ : entity is "line_crc";
end \adapter_axi_sd_0_0_line_crc__parameterized0_0\;

architecture STRUCTURE of \adapter_axi_sd_0_0_line_crc__parameterized0_0\ is
  signal \^fsm_onehot_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_2\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_3\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_4\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[3]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[3]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buf_write[59]_i_5_n_0\ : STD_LOGIC;
  signal \buf_write[59]_i_6_n_0\ : STD_LOGIC;
  signal \buf_write[59]_i_7_n_0\ : STD_LOGIC;
  signal \buf_write[59]_i_8_n_0\ : STD_LOGIC;
  signal \buf_write[62]_i_4_n_0\ : STD_LOGIC;
  signal \^buf_write_next\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^counter_reg[0]\ : STD_LOGIC;
  signal \^counter_reg[5]\ : STD_LOGIC;
  signal crc0 : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc[15]_i_12_n_0\ : STD_LOGIC;
  signal \crc[15]_i_13_n_0\ : STD_LOGIC;
  signal \crc[15]_i_14_n_0\ : STD_LOGIC;
  signal \crc[15]_i_15_n_0\ : STD_LOGIC;
  signal \crc[15]_i_16_n_0\ : STD_LOGIC;
  signal \crc[15]_i_20_n_0\ : STD_LOGIC;
  signal \crc[15]_i_26_n_0\ : STD_LOGIC;
  signal \crc[15]_i_27_n_0\ : STD_LOGIC;
  signal \crc[15]_i_28_n_0\ : STD_LOGIC;
  signal \crc[15]_i_29_n_0\ : STD_LOGIC;
  signal \crc[15]_i_31_n_0\ : STD_LOGIC;
  signal \crc[15]_i_7_n_0\ : STD_LOGIC;
  signal \crc_result[1]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^dat_width_4_reg\ : STD_LOGIC;
  signal read_crc_err_i_15_n_0 : STD_LOGIC;
  signal read_crc_err_i_8_n_0 : STD_LOGIC;
  signal read_crc_err_i_9_n_0 : STD_LOGIC;
  signal \^sd_clk_div_d_reg[3]\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_11_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_6_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_7_n_0\ : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_8_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \buf_write[59]_i_6\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \buf_write[62]_i_4\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \crc[0]_i_1__1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \crc[12]_i_1__1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \crc[15]_i_26\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \crc[15]_i_27\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \crc[15]_i_31\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \i__carry_i_4\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \sd_dat_o_sys[3]_i_11\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \sd_dat_o_sys[3]_i_8\ : label is "soft_lutpair118";
begin
  \FSM_onehot_state_reg[1]\ <= \^fsm_onehot_state_reg[1]\;
  \FSM_sequential_state_reg[0]\ <= \^fsm_sequential_state_reg[0]\;
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  \FSM_sequential_state_reg[0]_1\ <= \^fsm_sequential_state_reg[0]_1\;
  \FSM_sequential_state_reg[0]_2\ <= \^fsm_sequential_state_reg[0]_2\;
  \FSM_sequential_state_reg[0]_3\ <= \^fsm_sequential_state_reg[0]_3\;
  \FSM_sequential_state_reg[0]_4\ <= \^fsm_sequential_state_reg[0]_4\;
  \FSM_sequential_state_reg[1]\ <= \^fsm_sequential_state_reg[1]\;
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  \FSM_sequential_state_reg[1]_1\ <= \^fsm_sequential_state_reg[1]_1\;
  \FSM_sequential_state_reg[2]\ <= \^fsm_sequential_state_reg[2]\;
  \FSM_sequential_state_reg[2]_0\ <= \^fsm_sequential_state_reg[2]_0\;
  \FSM_sequential_state_reg[2]_1\ <= \^fsm_sequential_state_reg[2]_1\;
  \FSM_sequential_state_reg[3]\ <= \^fsm_sequential_state_reg[3]\;
  \FSM_sequential_state_reg[3]_0\ <= \^fsm_sequential_state_reg[3]_0\;
  SR(0) <= \^sr\(0);
  buf_write_next(0) <= \^buf_write_next\(0);
  \counter_reg[0]\ <= \^counter_reg[0]\;
  \counter_reg[5]\ <= \^counter_reg[5]\;
  dat_width_4_reg <= \^dat_width_4_reg\;
  \sd_clk_div_d_reg[3]\ <= \^sd_clk_div_d_reg[3]\;
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \^fsm_sequential_state_reg[1]_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD555FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => \^sd_clk_div_d_reg[3]\,
      I2 => \FSM_sequential_state_reg[0]_6\,
      I3 => \FSM_sequential_state_reg[0]_5\(0),
      I4 => \^fsm_sequential_state_reg[1]_0\,
      I5 => Q(3),
      O => \^fsm_sequential_state_reg[0]\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \^sd_clk_div_d_reg[3]\,
      I2 => \block_data_finished0_inferred__0/i__carry\(3),
      O => \^fsm_sequential_state_reg[0]_2\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(1),
      I1 => \buf_write[59]_i_3_0\(0),
      I2 => \^sd_clk_div_d_reg[3]\,
      O => \^counter_reg[0]\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \FSM_sequential_state_reg[3]_1\,
      I3 => \block_data_finished0_inferred__0/i__carry\(1),
      I4 => \buf_write[59]_i_3_0\(0),
      I5 => \^sd_clk_div_d_reg[3]\,
      O => \^fsm_sequential_state_reg[0]_4\
    );
\block_data_finished0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_1\(0),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(4),
      O => \block_size_reg[12]\(2)
    );
\block_data_finished0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0_0\(1),
      O => \block_size_reg[12]\(1)
    );
\block_data_finished0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(0),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(3),
      I2 => O(3),
      O => \block_size_reg[12]\(0)
    );
\block_data_finished0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(1),
      I1 => \block_data_finished0_inferred__0/i__carry__0_0\(2),
      O => \counter_reg[11]\(1)
    );
\block_data_finished0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => O(3),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(3),
      I2 => \block_data_finished0_inferred__0/i__carry__0_0\(0),
      O => \counter_reg[11]\(0)
    );
block_data_finished0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => O(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(2),
      I2 => O(1),
      I3 => \block_data_finished0_inferred__0/i__carry__0\(1),
      O => DI(3)
    );
block_data_finished0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => O(0),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(0),
      I2 => \block_data_finished0_inferred__0/i__carry\(3),
      O => DI(2)
    );
block_data_finished0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(2),
      I1 => \block_data_finished0_inferred__0/i__carry\(1),
      O => DI(1)
    );
block_data_finished0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(0),
      I1 => \buf_write[59]_i_3_0\(0),
      O => DI(0)
    );
block_data_finished0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(3),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(0),
      I2 => O(0),
      O => \block_size_reg[5]\(2)
    );
block_data_finished0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(1),
      I1 => \block_data_finished0_inferred__0/i__carry\(2),
      O => \block_size_reg[5]\(1)
    );
block_data_finished0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \buf_write[59]_i_3_0\(0),
      I1 => \block_data_finished0_inferred__0/i__carry\(0),
      O => \block_size_reg[5]\(0)
    );
\buf_write[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(0),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[32]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(0),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(0)
    );
\buf_write[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(1),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[33]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(1),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(1)
    );
\buf_write[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(2),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[34]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(2),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(2)
    );
\buf_write[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(3),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[35]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(3),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(3)
    );
\buf_write[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(4),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[36]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(4),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(4)
    );
\buf_write[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(5),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[37]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(5),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(5)
    );
\buf_write[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(6),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[38]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(6),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(6)
    );
\buf_write[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(7),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[39]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(7),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(7)
    );
\buf_write[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(8),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[40]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(8),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(8)
    );
\buf_write[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(9),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[41]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(9),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(9)
    );
\buf_write[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(10),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[42]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(10),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(10)
    );
\buf_write[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(11),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[43]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(11),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(11)
    );
\buf_write[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(12),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[44]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(12),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(12)
    );
\buf_write[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(13),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[45]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(13),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(13)
    );
\buf_write[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(14),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[46]\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(14),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \crc_reg[14]_0\(14)
    );
\buf_write[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[1]_2\(15),
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => \buf_write_reg[47]_0\,
      I3 => \^counter_reg[5]\,
      I4 => \buf_write_reg[47]\(15),
      I5 => \^fsm_sequential_state_reg[3]_0\,
      O => \^buf_write_next\(0)
    );
\buf_write[59]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \buf_write[59]_i_5_n_0\,
      I1 => \buf_write[59]_i_6_n_0\,
      I2 => \^fsm_sequential_state_reg[2]\,
      I3 => \sd_dat_o_sys_reg[1]_0\,
      I4 => \^fsm_onehot_state_reg[1]\,
      I5 => \^fsm_sequential_state_reg[3]\,
      O => \^counter_reg[5]\
    );
\buf_write[59]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[3]\,
      I1 => \^fsm_onehot_state_reg[1]\,
      I2 => \^fsm_sequential_state_reg[2]_0\,
      I3 => \^fsm_sequential_state_reg[2]\,
      I4 => \buf_write[59]_i_7_n_0\,
      I5 => \buf_write[59]_i_8_n_0\,
      O => \^fsm_sequential_state_reg[3]_0\
    );
\buf_write[59]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0028AA28AA280028"
    )
        port map (
      I0 => \buf_write[62]_i_4_n_0\,
      I1 => \buf_write[59]_i_3_0\(2),
      I2 => O(0),
      I3 => \sd_dat_o_sys_reg[1]\,
      I4 => \buf_write[59]_i_3_0\(1),
      I5 => \block_data_finished0_inferred__0/i__carry\(2),
      O => \buf_write[59]_i_5_n_0\
    );
\buf_write[59]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      O => \buf_write[59]_i_6_n_0\
    );
\buf_write[59]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \buf_write[59]_i_7_n_0\
    );
\buf_write[59]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      O => \buf_write[59]_i_8_n_0\
    );
\buf_write[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \buf_write[62]_i_4_n_0\,
      I1 => \^fsm_sequential_state_reg[2]\,
      I2 => \^fsm_sequential_state_reg[3]\,
      I3 => \^fsm_sequential_state_reg[2]_0\,
      I4 => \^fsm_onehot_state_reg[1]\,
      O => \^fsm_sequential_state_reg[0]_0\
    );
\buf_write[62]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => \buf_write[62]_i_4_n_0\
    );
\crc[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \crc_result[1]_2\(15),
      I1 => \^buf_write_next\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \crc_reg[0]_0\(1),
      O => crc2(0)
    );
\crc[12]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[1]_2\(11),
      I1 => \crc_reg[0]_0\(1),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[1]_2\(15),
      O => crc0(12)
    );
\crc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \crc_reg[15]_0\(0),
      I1 => \sd_dat_o_sys_reg[1]\,
      O => \^sr\(0)
    );
\crc[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7570757FFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]\,
      I1 => \FSM_sequential_state_reg[0]_5\(0),
      I2 => Q(0),
      I3 => \crc[15]_i_26_n_0\,
      I4 => \sd_dat_o_sys[3]_i_5\,
      I5 => \^fsm_sequential_state_reg[1]_0\,
      O => \crc[15]_i_12_n_0\
    );
\crc[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FF55FF44FF"
    )
        port map (
      I0 => \crc[15]_i_27_n_0\,
      I1 => \crc[15]_i_4_0\,
      I2 => \^dat_width_4_reg\,
      I3 => Q(3),
      I4 => \^fsm_sequential_state_reg[1]\,
      I5 => Q(2),
      O => \crc[15]_i_13_n_0\
    );
\crc[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33BF33BFFFFFF3FF"
    )
        port map (
      I0 => \^sd_clk_div_d_reg[3]\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => Q(0),
      I3 => \crc[15]_i_4_2\,
      I4 => \crc[15]_i_4_1\,
      I5 => \^fsm_sequential_state_reg[1]\,
      O => \crc[15]_i_14_n_0\
    );
\crc[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404000044000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \crc_reg[0]_0\(0),
      I3 => Q(3),
      I4 => Q(0),
      I5 => \^sd_clk_div_d_reg[3]\,
      O => \crc[15]_i_15_n_0\
    );
\crc[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABAAABAAAAAA"
    )
        port map (
      I0 => \crc[15]_i_28_n_0\,
      I1 => \crc[15]_i_29_n_0\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^fsm_sequential_state_reg[0]_2\,
      I5 => \^fsm_sequential_state_reg[1]\,
      O => \crc[15]_i_16_n_0\
    );
\crc[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF008B038B03"
    )
        port map (
      I0 => O(1),
      I1 => Q(0),
      I2 => \FSM_sequential_state_reg[0]_5\(0),
      I3 => \^sd_clk_div_d_reg[3]\,
      I4 => \sd_dat_o_sys[3]_i_5\,
      I5 => Q(1),
      O => \^fsm_sequential_state_reg[0]_3\
    );
\crc[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \crc_reg[15]_1\,
      I1 => Q(2),
      I2 => \crc[15]_i_7_n_0\,
      I3 => Q(3),
      I4 => \^fsm_sequential_state_reg[0]_1\,
      I5 => \^fsm_sequential_state_reg[1]_1\,
      O => \^fsm_sequential_state_reg[2]_0\
    );
\crc[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C055CF55CF55CF55"
    )
        port map (
      I0 => \^dat_width_4_reg\,
      I1 => \^counter_reg[0]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \block_data_finished0_inferred__0/i__carry\(0),
      I5 => \^sd_clk_div_d_reg[3]\,
      O => \crc[15]_i_20_n_0\
    );
\crc[15]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000E2E20000"
    )
        port map (
      I0 => CO(0),
      I1 => \sd_dat_o_sys_reg[1]\,
      I2 => \crc[15]_i_16_0\(0),
      I3 => \block_data_finished0_inferred__0/i__carry\(3),
      I4 => \^sd_clk_div_d_reg[3]\,
      I5 => Q(0),
      O => \^dat_width_4_reg\
    );
\crc[15]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sd_clk_div_d_reg[3]\,
      I1 => O(1),
      O => \crc[15]_i_26_n_0\
    );
\crc[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^sd_clk_div_d_reg[3]\,
      I3 => Q(0),
      O => \crc[15]_i_27_n_0\
    );
\crc[15]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00404040"
    )
        port map (
      I0 => \crc[15]_i_31_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => \^counter_reg[0]\,
      I4 => Q(0),
      I5 => Q(3),
      O => \crc[15]_i_28_n_0\
    );
\crc[15]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => Q(0),
      I1 => \crc[15]_i_16_0\(0),
      I2 => \sd_dat_o_sys_reg[1]\,
      I3 => CO(0),
      I4 => \^sd_clk_div_d_reg[3]\,
      O => \crc[15]_i_29_n_0\
    );
\crc[15]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_reg[15]_2\(1),
      I1 => \crc_reg[15]_2\(0),
      O => \^sd_clk_div_d_reg[3]\
    );
\crc[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F202F00000000"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]\,
      I1 => Q(2),
      I2 => Q(3),
      I3 => \^fsm_sequential_state_reg[0]\,
      I4 => \sd_dat_o_sys_reg[0]_0\,
      I5 => \sd_dat_o_sys_reg[0]_1\,
      O => \^fsm_sequential_state_reg[2]\
    );
\crc[15]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(0),
      I1 => Q(0),
      I2 => \^sd_clk_div_d_reg[3]\,
      O => \crc[15]_i_31_n_0\
    );
\crc[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5D5D5D5DFF5D"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]_1\,
      I1 => \crc[15]_i_12_n_0\,
      I2 => \crc[15]_i_13_n_0\,
      I3 => \crc[15]_i_14_n_0\,
      I4 => \crc[15]_i_15_n_0\,
      I5 => \crc[15]_i_16_n_0\,
      O => \^fsm_onehot_state_reg[1]\
    );
\crc[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45CFCFCC54FCFFCF"
    )
        port map (
      I0 => \^sd_clk_div_d_reg[3]\,
      I1 => \^fsm_sequential_state_reg[0]_3\,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => \crc[15]_i_7_n_0\
    );
\crc[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33773333FFFF3F33"
    )
        port map (
      I0 => \crc[15]_i_4_1\,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => \^sd_clk_div_d_reg[3]\,
      I3 => Q(0),
      I4 => \crc[15]_i_4_2\,
      I5 => \^fsm_sequential_state_reg[2]_1\,
      O => \^fsm_sequential_state_reg[0]_1\
    );
\crc[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCEECCFFF00000"
    )
        port map (
      I0 => \crc[15]_i_20_n_0\,
      I1 => \^fsm_sequential_state_reg[0]_4\,
      I2 => \sd_dat_o_sys[3]_i_2\,
      I3 => \^fsm_sequential_state_reg[2]_1\,
      I4 => Q(1),
      I5 => Q(2),
      O => \^fsm_sequential_state_reg[1]_1\
    );
\crc[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[1]_2\(4),
      I1 => \crc_reg[0]_0\(1),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[1]_2\(15),
      O => crc0(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => crc2(0),
      Q => \crc_result[1]_2\(0),
      R => \^sr\(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(9),
      Q => \crc_result[1]_2\(10),
      R => \^sr\(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(10),
      Q => \crc_result[1]_2\(11),
      R => \^sr\(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => crc0(12),
      Q => \crc_result[1]_2\(12),
      R => \^sr\(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(12),
      Q => \crc_result[1]_2\(13),
      R => \^sr\(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(13),
      Q => \crc_result[1]_2\(14),
      R => \^sr\(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(14),
      Q => \crc_result[1]_2\(15),
      R => \^sr\(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(0),
      Q => \crc_result[1]_2\(1),
      R => \^sr\(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(1),
      Q => \crc_result[1]_2\(2),
      R => \^sr\(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(2),
      Q => \crc_result[1]_2\(3),
      R => \^sr\(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(3),
      Q => \crc_result[1]_2\(4),
      R => \^sr\(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => crc0(5),
      Q => \crc_result[1]_2\(5),
      R => \^sr\(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(5),
      Q => \crc_result[1]_2\(6),
      R => \^sr\(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(6),
      Q => \crc_result[1]_2\(7),
      R => \^sr\(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(7),
      Q => \crc_result[1]_2\(8),
      R => \^sr\(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^sd_clk_div_d_reg[3]\,
      D => \crc_result[1]_2\(8),
      Q => \crc_result[1]_2\(9),
      R => \^sr\(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(4),
      I2 => \block_data_finished0_inferred__0/i__carry__0_0\(1),
      O => \block_size_reg[12]_0\(1)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => O(3),
      I1 => \block_data_finished0_inferred__0/i__carry__0_0\(0),
      O => \block_size_reg[12]_0\(0)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_1\(0),
      O => \counter_reg[11]_0\(2)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(4),
      I2 => \block_data_finished0_inferred__0/i__carry__0_0\(1),
      O => \counter_reg[11]_0\(1)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry__0_0\(0),
      I1 => O(3),
      O => \counter_reg[11]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => O(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(3),
      I2 => O(1),
      O => \block_size_reg[9]\(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => O(0),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(2),
      I2 => \block_data_finished0_inferred__0/i__carry\(3),
      I3 => \block_data_finished0_inferred__0/i__carry__0\(1),
      O => \block_size_reg[9]\(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(2),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(0),
      I2 => \block_data_finished0_inferred__0/i__carry\(1),
      O => \block_size_reg[9]\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB52"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      O => \^fsm_sequential_state_reg[2]_1\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(0),
      I1 => \buf_write[59]_i_3_0\(0),
      O => \block_size_reg[9]\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3D4"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      O => \^fsm_sequential_state_reg[1]\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => O(1),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(3),
      I2 => O(2),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \block_data_finished0_inferred__0/i__carry\(1),
      I1 => \block_data_finished0_inferred__0/i__carry__0\(0),
      I2 => \block_data_finished0_inferred__0/i__carry\(2),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \buf_write[59]_i_3_0\(0),
      I1 => \block_data_finished0_inferred__0/i__carry\(0),
      O => S(0)
    );
read_crc_err_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[1]_2\(5),
      I1 => \crc_result[1]_2\(4),
      I2 => \crc_result[1]_2\(7),
      I3 => \crc_result[1]_2\(6),
      O => read_crc_err_i_15_n_0
    );
read_crc_err_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_crc_err_i_8_n_0,
      I1 => \crc_result[1]_2\(10),
      I2 => \crc_result[1]_2\(9),
      I3 => \crc_result[1]_2\(8),
      I4 => \crc_result[1]_2\(11),
      I5 => read_crc_err_i_9_n_0,
      O => \crc_reg[10]_0\
    );
read_crc_err_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[1]_2\(14),
      I1 => \crc_result[1]_2\(13),
      I2 => \crc_result[1]_2\(12),
      I3 => \crc_result[1]_2\(15),
      O => read_crc_err_i_8_n_0
    );
read_crc_err_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_result[1]_2\(0),
      I1 => \crc_result[1]_2\(1),
      I2 => \crc_result[1]_2\(2),
      I3 => \crc_result[1]_2\(3),
      I4 => read_crc_err_i_15_n_0,
      O => read_crc_err_i_9_n_0
    );
\sd_dat_o_sys[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDF0FD"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[3]\,
      I2 => \sd_dat_o_sys_reg[1]_1\,
      I3 => \sd_dat_o_sys_reg[1]\,
      I4 => \^buf_write_next\(0),
      O => D(0)
    );
\sd_dat_o_sys[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAFEAA"
    )
        port map (
      I0 => Q(2),
      I1 => \^sd_clk_div_d_reg[3]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => \sd_dat_o_sys[3]_i_11_n_0\
    );
\sd_dat_o_sys[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888A888A8888"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[0]_1\,
      I1 => \sd_dat_o_sys[3]_i_6_n_0\,
      I2 => Q(3),
      I3 => \sd_dat_o_sys[3]_i_7_n_0\,
      I4 => \sd_dat_o_sys[3]_i_8_n_0\,
      I5 => \sd_dat_o_sys_reg[1]_2\,
      O => \^fsm_sequential_state_reg[3]\
    );
\sd_dat_o_sys[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030300430303034"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_3\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \crc[15]_i_20_n_0\,
      O => \sd_dat_o_sys[3]_i_6_n_0\
    );
\sd_dat_o_sys[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00454545"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state_reg[0]_6\,
      I2 => \FSM_sequential_state_reg[0]_5\(0),
      I3 => \sd_dat_o_sys[3]_i_8_n_0\,
      I4 => \sd_dat_o_sys[3]_i_3_0\,
      I5 => \sd_dat_o_sys[3]_i_11_n_0\,
      O => \sd_dat_o_sys[3]_i_7_n_0\
    );
\sd_dat_o_sys[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E16"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      O => \sd_dat_o_sys[3]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \adapter_axi_sd_0_0_line_crc__parameterized0_1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    buf_write_next : out STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \crc_reg[2]_0\ : out STD_LOGIC;
    \sd_dat_o_sys_reg[2]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[2]_0\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[2]_1\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[2]_2\ : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[12]_0\ : in STD_LOGIC;
    \buf_write_reg[16]\ : in STD_LOGIC;
    \buf_write_reg[16]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \buf_write_reg[16]_1\ : in STD_LOGIC;
    \buf_write_reg[24]\ : in STD_LOGIC;
    \buf_write_reg[25]\ : in STD_LOGIC;
    \buf_write_reg[26]\ : in STD_LOGIC;
    \buf_write_reg[27]\ : in STD_LOGIC;
    \buf_write_reg[28]\ : in STD_LOGIC;
    \buf_write_reg[29]\ : in STD_LOGIC;
    \buf_write_reg[30]\ : in STD_LOGIC;
    \buf_write_reg[31]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[15]_0\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \adapter_axi_sd_0_0_line_crc__parameterized0_1\ : entity is "line_crc";
end \adapter_axi_sd_0_0_line_crc__parameterized0_1\;

architecture STRUCTURE of \adapter_axi_sd_0_0_line_crc__parameterized0_1\ is
  signal \^buf_write_next\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc0 : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_result[2]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal read_crc_err_i_14_n_0 : STD_LOGIC;
  signal read_crc_err_i_6_n_0 : STD_LOGIC;
  signal read_crc_err_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \crc[5]_i_1__0\ : label is "soft_lutpair123";
begin
  buf_write_next(0) <= \^buf_write_next\(0);
\buf_write[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(0),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(0),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(0)
    );
\buf_write[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(1),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(1),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(1)
    );
\buf_write[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(2),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(2),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(2)
    );
\buf_write[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(3),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(3),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(3)
    );
\buf_write[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(4),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(4),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(4)
    );
\buf_write[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(5),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(5),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(5)
    );
\buf_write[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(6),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(6),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(6)
    );
\buf_write[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[2]_1\(7),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[16]_0\,
      I3 => Q(7),
      I4 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(7)
    );
\buf_write[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(8),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[24]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(8),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(8)
    );
\buf_write[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(9),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[25]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(9),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(9)
    );
\buf_write[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(10),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[26]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(10),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(10)
    );
\buf_write[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(11),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[27]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(11),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(11)
    );
\buf_write[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(12),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[28]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(12),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(12)
    );
\buf_write[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(13),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[29]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(13),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(13)
    );
\buf_write[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(14),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[30]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(14),
      I5 => \buf_write_reg[16]_1\,
      O => \crc_reg[14]_0\(14)
    );
\buf_write[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[2]_1\(15),
      I1 => \buf_write_reg[16]\,
      I2 => \buf_write_reg[31]\,
      I3 => \buf_write_reg[16]_0\,
      I4 => Q(15),
      I5 => \buf_write_reg[16]_1\,
      O => \^buf_write_next\(0)
    );
\crc[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \crc_result[2]_1\(15),
      I1 => \^buf_write_next\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \crc_reg[0]_0\(0),
      O => crc2(0)
    );
\crc[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[2]_1\(11),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[2]_1\(15),
      O => crc0(12)
    );
\crc[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[2]_1\(4),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[2]_1\(15),
      O => crc0(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc2(0),
      Q => \crc_result[2]_1\(0),
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(9),
      Q => \crc_result[2]_1\(10),
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(10),
      Q => \crc_result[2]_1\(11),
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc0(12),
      Q => \crc_result[2]_1\(12),
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(12),
      Q => \crc_result[2]_1\(13),
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(13),
      Q => \crc_result[2]_1\(14),
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(14),
      Q => \crc_result[2]_1\(15),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(0),
      Q => \crc_result[2]_1\(1),
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(1),
      Q => \crc_result[2]_1\(2),
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(2),
      Q => \crc_result[2]_1\(3),
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(3),
      Q => \crc_result[2]_1\(4),
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc0(5),
      Q => \crc_result[2]_1\(5),
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(5),
      Q => \crc_result[2]_1\(6),
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(6),
      Q => \crc_result[2]_1\(7),
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(7),
      Q => \crc_result[2]_1\(8),
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[2]_1\(8),
      Q => \crc_result[2]_1\(9),
      R => SR(0)
    );
read_crc_err_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[2]_1\(13),
      I1 => \crc_result[2]_1\(12),
      I2 => \crc_result[2]_1\(14),
      I3 => \crc_result[2]_1\(15),
      O => read_crc_err_i_14_n_0
    );
read_crc_err_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_crc_err_i_6_n_0,
      I1 => \crc_result[2]_1\(2),
      I2 => \crc_result[2]_1\(1),
      I3 => \crc_result[2]_1\(3),
      I4 => \crc_result[2]_1\(0),
      I5 => read_crc_err_i_7_n_0,
      O => \crc_reg[2]_0\
    );
read_crc_err_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[2]_1\(5),
      I1 => \crc_result[2]_1\(4),
      I2 => \crc_result[2]_1\(7),
      I3 => \crc_result[2]_1\(6),
      O => read_crc_err_i_6_n_0
    );
read_crc_err_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_result[2]_1\(11),
      I1 => \crc_result[2]_1\(8),
      I2 => \crc_result[2]_1\(9),
      I3 => \crc_result[2]_1\(10),
      I4 => read_crc_err_i_14_n_0,
      O => read_crc_err_i_7_n_0
    );
\sd_dat_o_sys[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDF0FD"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[2]\,
      I1 => \sd_dat_o_sys_reg[2]_0\,
      I2 => \sd_dat_o_sys_reg[2]_1\,
      I3 => \sd_dat_o_sys_reg[2]_2\,
      I4 => \^buf_write_next\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \adapter_axi_sd_0_0_line_crc__parameterized0_2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    buf_write_next : out STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \crc_reg[2]_0\ : out STD_LOGIC;
    \sd_dat_o_sys_reg[3]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[3]_0\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[3]_1\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[3]_2\ : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[12]_0\ : in STD_LOGIC;
    \buf_write_reg[1]\ : in STD_LOGIC;
    \buf_write_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \buf_write_reg[1]_1\ : in STD_LOGIC;
    \buf_write_reg[8]\ : in STD_LOGIC;
    \buf_write_reg[9]\ : in STD_LOGIC;
    \buf_write_reg[10]\ : in STD_LOGIC;
    \buf_write_reg[11]\ : in STD_LOGIC;
    \buf_write_reg[12]\ : in STD_LOGIC;
    \buf_write_reg[13]\ : in STD_LOGIC;
    \buf_write_reg[14]\ : in STD_LOGIC;
    \buf_write_reg[15]\ : in STD_LOGIC;
    \buf_write_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \crc_reg[15]_0\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \adapter_axi_sd_0_0_line_crc__parameterized0_2\ : entity is "line_crc";
end \adapter_axi_sd_0_0_line_crc__parameterized0_2\;

architecture STRUCTURE of \adapter_axi_sd_0_0_line_crc__parameterized0_2\ is
  signal \^buf_write_next\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc0 : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc_result[3]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal read_crc_err_i_12_n_0 : STD_LOGIC;
  signal read_crc_err_i_13_n_0 : STD_LOGIC;
  signal read_crc_err_i_17_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \crc[5]_i_1\ : label is "soft_lutpair124";
begin
  buf_write_next(0) <= \^buf_write_next\(0);
\buf_write[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_result[3]_0\(0),
      I1 => \buf_write_reg[0]\,
      O => \crc_reg[14]_0\(0)
    );
\buf_write[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(10),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[10]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(9),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(10)
    );
\buf_write[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(11),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[11]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(10),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(11)
    );
\buf_write[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(12),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[12]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(11),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(12)
    );
\buf_write[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(13),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[13]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(12),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(13)
    );
\buf_write[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(14),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[14]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(13),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(14)
    );
\buf_write[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(15),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[15]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(14),
      I5 => \buf_write_reg[1]_1\,
      O => \^buf_write_next\(0)
    );
\buf_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(1),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(0),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(1)
    );
\buf_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(2),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(1),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(2)
    );
\buf_write[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(3),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(2),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(3)
    );
\buf_write[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(4),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(3),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(4)
    );
\buf_write[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(5),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(4),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(5)
    );
\buf_write[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(6),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(5),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(6)
    );
\buf_write[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \crc_result[3]_0\(7),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[1]_0\,
      I3 => Q(6),
      I4 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(7)
    );
\buf_write[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(8),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[8]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(7),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(8)
    );
\buf_write[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \crc_result[3]_0\(9),
      I1 => \buf_write_reg[1]\,
      I2 => \buf_write_reg[9]\,
      I3 => \buf_write_reg[1]_0\,
      I4 => Q(8),
      I5 => \buf_write_reg[1]_1\,
      O => \crc_reg[14]_0\(9)
    );
\crc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \crc_result[3]_0\(15),
      I1 => \^buf_write_next\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \crc_reg[0]_0\(0),
      O => crc2(0)
    );
\crc[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[3]_0\(11),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[3]_0\(15),
      O => crc0(12)
    );
\crc[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A95656A"
    )
        port map (
      I0 => \crc_result[3]_0\(4),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[12]_0\,
      I3 => \^buf_write_next\(0),
      I4 => \crc_result[3]_0\(15),
      O => crc0(5)
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc2(0),
      Q => \crc_result[3]_0\(0),
      R => SR(0)
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(9),
      Q => \crc_result[3]_0\(10),
      R => SR(0)
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(10),
      Q => \crc_result[3]_0\(11),
      R => SR(0)
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc0(12),
      Q => \crc_result[3]_0\(12),
      R => SR(0)
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(12),
      Q => \crc_result[3]_0\(13),
      R => SR(0)
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(13),
      Q => \crc_result[3]_0\(14),
      R => SR(0)
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(14),
      Q => \crc_result[3]_0\(15),
      R => SR(0)
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(0),
      Q => \crc_result[3]_0\(1),
      R => SR(0)
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(1),
      Q => \crc_result[3]_0\(2),
      R => SR(0)
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(2),
      Q => \crc_result[3]_0\(3),
      R => SR(0)
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(3),
      Q => \crc_result[3]_0\(4),
      R => SR(0)
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => crc0(5),
      Q => \crc_result[3]_0\(5),
      R => SR(0)
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(5),
      Q => \crc_result[3]_0\(6),
      R => SR(0)
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(6),
      Q => \crc_result[3]_0\(7),
      R => SR(0)
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(7),
      Q => \crc_result[3]_0\(8),
      R => SR(0)
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc_reg[15]_0\,
      D => \crc_result[3]_0\(8),
      Q => \crc_result[3]_0\(9),
      R => SR(0)
    );
read_crc_err_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[3]_0\(5),
      I1 => \crc_result[3]_0\(4),
      I2 => \crc_result[3]_0\(7),
      I3 => \crc_result[3]_0\(6),
      O => read_crc_err_i_12_n_0
    );
read_crc_err_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \crc_result[3]_0\(11),
      I1 => \crc_result[3]_0\(10),
      I2 => \crc_result[3]_0\(8),
      I3 => \crc_result[3]_0\(9),
      I4 => read_crc_err_i_17_n_0,
      O => read_crc_err_i_13_n_0
    );
read_crc_err_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \crc_result[3]_0\(13),
      I1 => \crc_result[3]_0\(12),
      I2 => \crc_result[3]_0\(14),
      I3 => \crc_result[3]_0\(15),
      O => read_crc_err_i_17_n_0
    );
read_crc_err_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_crc_err_i_12_n_0,
      I1 => \crc_result[3]_0\(2),
      I2 => \crc_result[3]_0\(1),
      I3 => \crc_result[3]_0\(3),
      I4 => \crc_result[3]_0\(0),
      I5 => read_crc_err_i_13_n_0,
      O => \crc_reg[2]_0\
    );
\sd_dat_o_sys[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDD0D"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[3]\,
      I1 => \sd_dat_o_sys_reg[3]_0\,
      I2 => \sd_dat_o_sys_reg[3]_1\,
      I3 => \^buf_write_next\(0),
      I4 => \sd_dat_o_sys_reg[3]_2\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_range_check is
  port (
    out_of_range : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_of_range_reg_0 : out STD_LOGIC;
    out_of_range_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_of_range0_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_of_range0_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_of_range0_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_of_range0_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out_of_range_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out_of_range_reg_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    invalid_dat_width : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_range_check : entity is "range_check";
end adapter_axi_sd_0_0_range_check;

architecture STRUCTURE of adapter_axi_sd_0_0_range_check is
  signal \^out_of_range\ : STD_LOGIC;
  signal \out_of_range0_carry__0_n_0\ : STD_LOGIC;
  signal \out_of_range0_carry__0_n_1\ : STD_LOGIC;
  signal \out_of_range0_carry__0_n_2\ : STD_LOGIC;
  signal \out_of_range0_carry__0_n_3\ : STD_LOGIC;
  signal \out_of_range0_carry__1_n_0\ : STD_LOGIC;
  signal \out_of_range0_carry__1_n_1\ : STD_LOGIC;
  signal \out_of_range0_carry__1_n_2\ : STD_LOGIC;
  signal \out_of_range0_carry__1_n_3\ : STD_LOGIC;
  signal \out_of_range0_carry__2_n_1\ : STD_LOGIC;
  signal \out_of_range0_carry__2_n_2\ : STD_LOGIC;
  signal \out_of_range0_carry__2_n_3\ : STD_LOGIC;
  signal out_of_range0_carry_n_0 : STD_LOGIC;
  signal out_of_range0_carry_n_1 : STD_LOGIC;
  signal out_of_range0_carry_n_2 : STD_LOGIC;
  signal out_of_range0_carry_n_3 : STD_LOGIC;
  signal NLW_out_of_range0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_of_range0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
out_of_range0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_of_range0_carry_n_0,
      CO(2) => out_of_range0_carry_n_1,
      CO(1) => out_of_range0_carry_n_2,
      CO(0) => out_of_range0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_out_of_range0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\out_of_range0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_of_range0_carry_n_0,
      CO(3) => \out_of_range0_carry__0_n_0\,
      CO(2) => \out_of_range0_carry__0_n_1\,
      CO(1) => \out_of_range0_carry__0_n_2\,
      CO(0) => \out_of_range0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_of_range0_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_out_of_range0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \out_of_range0_carry__1_1\(3 downto 0)
    );
\out_of_range0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_of_range0_carry__0_n_0\,
      CO(3) => \out_of_range0_carry__1_n_0\,
      CO(2) => \out_of_range0_carry__1_n_1\,
      CO(1) => \out_of_range0_carry__1_n_2\,
      CO(0) => \out_of_range0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_of_range0_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_out_of_range0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \out_of_range0_carry__2_1\(3 downto 0)
    );
\out_of_range0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_of_range0_carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \out_of_range0_carry__2_n_1\,
      CO(1) => \out_of_range0_carry__2_n_2\,
      CO(0) => \out_of_range0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => out_of_range_reg_2(3 downto 0),
      O(3 downto 0) => \NLW_out_of_range0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => out_of_range_reg_3(3 downto 0)
    );
out_of_range_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
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
entity adapter_axi_sd_0_0_rca_keeper is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ignored_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rca_match_carry__0_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \rca_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_rca_keeper : entity is "rca_keeper";
end adapter_axi_sd_0_0_rca_keeper;

architecture STRUCTURE of adapter_axi_sd_0_0_rca_keeper is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \rca[0]_i_1_n_0\ : STD_LOGIC;
  signal \rca[10]_i_1_n_0\ : STD_LOGIC;
  signal \rca[11]_i_1_n_0\ : STD_LOGIC;
  signal \rca[12]_i_1_n_0\ : STD_LOGIC;
  signal \rca[13]_i_1_n_0\ : STD_LOGIC;
  signal \rca[14]_i_1_n_0\ : STD_LOGIC;
  signal \rca[15]_i_2_n_0\ : STD_LOGIC;
  signal \rca[15]_i_5_n_0\ : STD_LOGIC;
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
  signal \rca_match_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rca_match_carry__0_n_3\ : STD_LOGIC;
  signal rca_match_carry_i_1_n_0 : STD_LOGIC;
  signal rca_match_carry_i_2_n_0 : STD_LOGIC;
  signal rca_match_carry_n_0 : STD_LOGIC;
  signal rca_match_carry_n_1 : STD_LOGIC;
  signal rca_match_carry_n_2 : STD_LOGIC;
  signal rca_match_carry_n_3 : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \rca_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \rca_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \rca_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal NLW_rca_match_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rca_match_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rca_match_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rca_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_rca_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rca[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rca[10]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rca[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rca[12]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rca[13]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \rca[14]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \rca[15]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \rca[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rca[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rca[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rca[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rca[5]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rca[6]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \rca[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rca[8]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rca[9]_i_1\ : label is "soft_lutpair79";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\rca[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => \^q\(0),
      O => \rca[0]_i_1_n_0\
    );
\rca[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(10),
      O => \rca[10]_i_1_n_0\
    );
\rca[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(11),
      O => \rca[11]_i_1_n_0\
    );
\rca[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(12),
      O => \rca[12]_i_1_n_0\
    );
\rca[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(13),
      O => \rca[13]_i_1_n_0\
    );
\rca[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(14),
      O => \rca[14]_i_1_n_0\
    );
\rca[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_0_in(16),
      I1 => p_0_in(15),
      I2 => \rca[15]_i_5_n_0\,
      O => \rca[15]_i_2_n_0\
    );
\rca[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rca[15]_i_7_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(10),
      I3 => \^q\(12),
      I4 => \^q\(6),
      I5 => \rca[15]_i_8_n_0\,
      O => \rca[15]_i_5_n_0\
    );
\rca[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(8),
      I2 => \^q\(13),
      I3 => \^q\(9),
      O => \rca[15]_i_7_n_0\
    );
\rca[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \rca[15]_i_9_n_0\,
      O => \rca[15]_i_8_n_0\
    );
\rca[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      I2 => \^q\(5),
      I3 => \^q\(3),
      O => \rca[15]_i_9_n_0\
    );
\rca[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(1),
      O => \rca[1]_i_1_n_0\
    );
\rca[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(2),
      O => \rca[2]_i_1_n_0\
    );
\rca[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(3),
      O => \rca[3]_i_1_n_0\
    );
\rca[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(4),
      O => \rca[4]_i_1_n_0\
    );
\rca[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(5),
      O => \rca[5]_i_1_n_0\
    );
\rca[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(6),
      O => \rca[6]_i_1_n_0\
    );
\rca[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(7),
      O => \rca[7]_i_1_n_0\
    );
\rca[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \rca[15]_i_5_n_0\,
      I2 => p_0_in(8),
      O => \rca[8]_i_1_n_0\
    );
\rca[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rca[15]_i_5_n_0\,
      I1 => p_0_in(16),
      I2 => p_0_in(9),
      O => \rca[9]_i_1_n_0\
    );
rca_match_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rca_match_carry_n_0,
      CO(2) => rca_match_carry_n_1,
      CO(1) => rca_match_carry_n_2,
      CO(0) => rca_match_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rca_match_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rca_match_carry_i_1_n_0,
      S(2) => rca_match_carry_i_2_n_0,
      S(1 downto 0) => S(1 downto 0)
    );
\rca_match_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rca_match_carry_n_0,
      CO(3 downto 2) => \NLW_rca_match_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => CO(0),
      CO(0) => \rca_match_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rca_match_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rca_match_carry__0_i_1_n_0\,
      S(0) => ignored_reg(0)
    );
\rca_match_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \rca_match_carry__0_0\(6),
      O => \rca_match_carry__0_i_1_n_0\
    );
rca_match_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(10),
      I1 => \rca_match_carry__0_0\(4),
      I2 => \rca_match_carry__0_0\(5),
      I3 => \^q\(11),
      I4 => \rca_match_carry__0_0\(3),
      I5 => \^q\(9),
      O => rca_match_carry_i_1_n_0
    );
rca_match_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(8),
      I1 => \rca_match_carry__0_0\(2),
      I2 => \rca_match_carry__0_0\(1),
      I3 => \^q\(7),
      I4 => \rca_match_carry__0_0\(0),
      I5 => \^q\(6),
      O => rca_match_carry_i_2_n_0
    );
\rca_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \rca_reg[0]_0\
    );
\rca_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[10]_i_1_n_0\,
      Q => \^q\(10),
      R => \rca_reg[0]_0\
    );
\rca_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[11]_i_1_n_0\,
      Q => \^q\(11),
      R => \rca_reg[0]_0\
    );
\rca_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[12]_i_1_n_0\,
      Q => \^q\(12),
      R => \rca_reg[0]_0\
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
      S(3 downto 0) => \^q\(12 downto 9)
    );
\rca_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[13]_i_1_n_0\,
      Q => \^q\(13),
      R => \rca_reg[0]_0\
    );
\rca_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[14]_i_1_n_0\,
      Q => \^q\(14),
      R => \rca_reg[0]_0\
    );
\rca_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[15]_i_2_n_0\,
      Q => \^q\(15),
      R => \rca_reg[0]_0\
    );
\rca_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rca_reg[12]_i_2_n_0\,
      CO(3) => p_0_in(16),
      CO(2) => \NLW_rca_reg[15]_i_4_CO_UNCONNECTED\(2),
      CO(1) => \rca_reg[15]_i_4_n_2\,
      CO(0) => \rca_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rca_reg[15]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(15 downto 13),
      S(3) => '1',
      S(2 downto 0) => \^q\(15 downto 13)
    );
\rca_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \rca_reg[0]_0\
    );
\rca_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \rca_reg[0]_0\
    );
\rca_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \rca_reg[0]_0\
    );
\rca_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \rca_reg[0]_0\
    );
\rca_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rca_reg[4]_i_2_n_0\,
      CO(2) => \rca_reg[4]_i_2_n_1\,
      CO(1) => \rca_reg[4]_i_2_n_2\,
      CO(0) => \rca_reg[4]_i_2_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\rca_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \rca_reg[0]_0\
    );
\rca_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \rca_reg[0]_0\
    );
\rca_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \rca_reg[0]_0\
    );
\rca_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \rca_reg[0]_0\
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
      S(3 downto 0) => \^q\(8 downto 5)
    );
\rca_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \rca[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \rca_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_responder is
  port (
    resp_no_crc : out STD_LOGIC;
    send_resp : out STD_LOGIC;
    sent_r1 : out STD_LOGIC;
    \card_status_reg[23]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \resp_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \resp_len_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \resp_cur_reg[2]_0\ : in STD_LOGIC;
    resp_no_crc_reg_0 : in STD_LOGIC;
    resp_no_crc_next : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    send_resp_o_reg_0 : in STD_LOGIC;
    \resp_type_out_reg[4]_0\ : in STD_LOGIC;
    \resp_type_out_reg[0]_0\ : in STD_LOGIC;
    \card_status_reg[23]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \card_status_reg[23]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \card_status_reg[23]_2\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    cmd_illegal_stb : in STD_LOGIC;
    cmd_crc_err_stb : in STD_LOGIC;
    resp_next : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \resp_len_reg[4]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_responder : entity is "responder";
end adapter_axi_sd_0_0_responder;

architecture STRUCTURE of adapter_axi_sd_0_0_responder is
  signal \^sent_r1\ : STD_LOGIC;
  signal sent_r6 : STD_LOGIC;
begin
  sent_r1 <= \^sent_r1\;
\card_status[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^sent_r1\,
      I1 => sent_r6,
      I2 => \card_status_reg[23]_0\(0),
      I3 => \card_status_reg[23]_1\(0),
      I4 => \card_status_reg[23]_2\(0),
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
      I3 => \card_status_reg[23]_1\(6),
      I4 => \card_status_reg[23]_2\(6),
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
      I3 => \card_status_reg[23]_1\(1),
      I4 => \card_status_reg[23]_2\(1),
      O => \card_status_reg[23]\(1)
    );
\card_status[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FE"
    )
        port map (
      I0 => \card_status_reg[23]_1\(7),
      I1 => \card_status_reg[23]_0\(7),
      I2 => cmd_illegal_stb,
      I3 => sent_r6,
      I4 => \^sent_r1\,
      I5 => \card_status_reg[23]_2\(7),
      O => \card_status_reg[23]\(7)
    );
\card_status[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FE"
    )
        port map (
      I0 => \card_status_reg[23]_1\(8),
      I1 => \card_status_reg[23]_0\(8),
      I2 => cmd_crc_err_stb,
      I3 => sent_r6,
      I4 => \^sent_r1\,
      I5 => \card_status_reg[23]_2\(8),
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
      I3 => \card_status_reg[23]_1\(2),
      I4 => \card_status_reg[23]_2\(2),
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
      I3 => \card_status_reg[23]_1\(3),
      I4 => \card_status_reg[23]_2\(3),
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
      I3 => \card_status_reg[23]_1\(4),
      I4 => \card_status_reg[23]_2\(4),
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
      I3 => \card_status_reg[23]_1\(5),
      I4 => \card_status_reg[23]_2\(5),
      O => \card_status_reg[23]\(5)
    );
\resp_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(0),
      Q => \resp_byte_reg[7]_0\(0),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(1),
      Q => \resp_byte_reg[7]_0\(1),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(2),
      Q => \resp_byte_reg[7]_0\(2),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(3),
      Q => \resp_byte_reg[7]_0\(3),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(4),
      Q => \resp_byte_reg[7]_0\(4),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(5),
      Q => \resp_byte_reg[7]_0\(5),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(6),
      Q => \resp_byte_reg[7]_0\(6),
      R => \resp_cur_reg[2]_0\
    );
\resp_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(7),
      Q => \resp_byte_reg[7]_0\(7),
      R => \resp_cur_reg[2]_0\
    );
\resp_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => resp_next(0),
      Q => Q(0),
      R => \resp_cur_reg[2]_0\
    );
\resp_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => resp_next(1),
      Q => Q(1),
      R => \resp_cur_reg[2]_0\
    );
\resp_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => resp_next(2),
      Q => Q(2),
      R => \resp_cur_reg[2]_0\
    );
\resp_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => \resp_len_reg[4]_1\(0),
      Q => \resp_len_reg[4]_0\(0),
      R => \resp_cur_reg[2]_0\
    );
\resp_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => \resp_len_reg[4]_1\(1),
      Q => \resp_len_reg[4]_0\(1),
      R => \resp_cur_reg[2]_0\
    );
\resp_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => \resp_len_reg[4]_1\(2),
      Q => \resp_len_reg[4]_0\(2),
      R => \resp_cur_reg[2]_0\
    );
\resp_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => \resp_len_reg[4]_1\(3),
      Q => \resp_len_reg[4]_0\(3),
      R => \resp_cur_reg[2]_0\
    );
resp_no_crc_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => resp_no_crc_reg_0,
      D => resp_no_crc_next,
      Q => resp_no_crc,
      R => \resp_cur_reg[2]_0\
    );
\resp_type_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \resp_type_out_reg[0]_0\,
      Q => \^sent_r1\,
      R => '0'
    );
\resp_type_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \resp_type_out_reg[4]_0\,
      Q => sent_r6,
      R => '0'
    );
send_resp_o_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => send_resp_o_reg_0,
      Q => send_resp,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_set_dat3_pullup is
  port (
    sd_dat3_pullup_off : out STD_LOGIC;
    sd_dat3_pullup_off_reg_0 : in STD_LOGIC;
    sd_dat3_pullup_off_reg_1 : in STD_LOGIC;
    sd_dat3_pullup_off_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sd_dat3_pullup_off_reg_3 : in STD_LOGIC;
    sd_dat3_pullup_off_reg_4 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_set_dat3_pullup : entity is "set_dat3_pullup";
end adapter_axi_sd_0_0_set_dat3_pullup;

architecture STRUCTURE of adapter_axi_sd_0_0_set_dat3_pullup is
  signal \^sd_dat3_pullup_off\ : STD_LOGIC;
  signal sd_dat3_pullup_off_i_1_n_0 : STD_LOGIC;
begin
  sd_dat3_pullup_off <= \^sd_dat3_pullup_off\;
sd_dat3_pullup_off_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => sd_dat3_pullup_off_reg_0,
      I1 => sd_dat3_pullup_off_reg_1,
      I2 => sd_dat3_pullup_off_reg_2(1),
      I3 => sd_dat3_pullup_off_reg_2(0),
      I4 => sd_dat3_pullup_off_reg_3,
      I5 => \^sd_dat3_pullup_off\,
      O => sd_dat3_pullup_off_i_1_n_0
    );
sd_dat3_pullup_off_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_dat3_pullup_off_i_1_n_0,
      Q => \^sd_dat3_pullup_off\,
      R => sd_dat3_pullup_off_reg_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_cmd_interface is
  port (
    sd_cmd_o_sys : out STD_LOGIC;
    sd_cmd_t_sys : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_index_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cmd_arg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cmd_crc_err_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    got_new_cmd_reg_0 : out STD_LOGIC;
    \cmd_index_reg[1]_0\ : out STD_LOGIC;
    \cmd_index_reg[2]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cmd_index_reg[1]_1\ : out STD_LOGIC;
    \counter_reg[4]_1\ : out STD_LOGIC;
    \cmd_index_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_index_reg[0]_1\ : out STD_LOGIC;
    \cmd_index_reg[3]_0\ : out STD_LOGIC;
    resp_no_crc_next : out STD_LOGIC;
    \cmd_index_reg[3]_1\ : out STD_LOGIC;
    \cmd_index_reg[5]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \cmd_index_reg[3]_2\ : out STD_LOGIC;
    \reg_saved_reg[19][8]\ : out STD_LOGIC;
    \reg_saved_reg[19][9]\ : out STD_LOGIC;
    \reg_saved_reg[19][10]\ : out STD_LOGIC;
    \reg_saved_reg[19][11]\ : out STD_LOGIC;
    \reg_saved_reg[19][12]\ : out STD_LOGIC;
    \reg_saved_reg[19][13]\ : out STD_LOGIC;
    got_acmd41_non_query_reg : out STD_LOGIC;
    got_acmd41_non_query_reg_0 : out STD_LOGIC;
    \card_status_reg[11]\ : out STD_LOGIC;
    p_3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[9]\ : out STD_LOGIC;
    \erase_step_reg[0]\ : out STD_LOGIC;
    \erase_step_reg[0]_0\ : out STD_LOGIC;
    \cmd_index_reg[5]_2\ : out STD_LOGIC;
    \cmd_index_reg[0]_2\ : out STD_LOGIC;
    erase_seq_error_reg : out STD_LOGIC;
    out_of_range_reg : out STD_LOGIC;
    \cmd_arg_reg[0]_0\ : out STD_LOGIC;
    \cmd_index_reg[5]_3\ : out STD_LOGIC;
    \resp_cur_reg[2]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[4]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    save_current_cmd : out STD_LOGIC;
    \cmd_index_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    acmd_defined_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[5]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \set_reg_clear_always[12].reg_clear_always_reg[12][5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    update_2 : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    got_cmd00 : out STD_LOGIC;
    \cmd_index_reg[0]_4\ : out STD_LOGIC;
    \cmd_arg_reg[19]_0\ : out STD_LOGIC;
    \card_status_reg[5]\ : out STD_LOGIC;
    ignored_c : out STD_LOGIC;
    \cmd_index_reg[4]_0\ : out STD_LOGIC;
    multi_block_mode_next : out STD_LOGIC;
    acmd_defined_reg_0 : out STD_LOGIC;
    \cmd_index_reg[5]_5\ : out STD_LOGIC;
    \cmd_index_reg[5]_6\ : out STD_LOGIC;
    \cmd_index_reg[1]_2\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_arg_reg[30]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[3]_4\ : out STD_LOGIC;
    \cmd_index_reg[1]_3\ : out STD_LOGIC;
    \cmd_index_reg[0]_5\ : out STD_LOGIC;
    \cmd_index_reg[5]_7\ : out STD_LOGIC;
    \cmd_index_reg[1]_4\ : out STD_LOGIC;
    acmd_defined_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \size_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_crc_err_stb0 : out STD_LOGIC;
    ram_dev_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    is_writing_reg_inv_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    send_no_resp : in STD_LOGIC;
    \resp_byte_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_dev_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata[13]_i_3\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axi_rdata[13]_i_3_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axi_rdata[13]_i_3_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[13]_i_3_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    got_acmd41_non_query_reg_1 : in STD_LOGIC;
    \saved_cmd_index_reg[5]\ : in STD_LOGIC;
    \card_status_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \erase_step_reg[0]_1\ : in STD_LOGIC;
    \erase_step_reg[0]_2\ : in STD_LOGIC;
    got_cmd8_1 : in STD_LOGIC;
    erase_seq_error : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_of_range : in STD_LOGIC;
    invalid_dat_width_reg : in STD_LOGIC;
    invalid_dat_width : in STD_LOGIC;
    \buf_read_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sd_cmd_o_sys_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_resp : in STD_LOGIC;
    resp_no_crc : in STD_LOGIC;
    \state[5]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \resp_byte[4]_i_4_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \resp_byte_reg[7]\ : in STD_LOGIC;
    \resp_byte_reg[6]\ : in STD_LOGIC;
    \resp_byte_reg[3]\ : in STD_LOGIC;
    \resp_byte[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \resp_byte_reg[1]\ : in STD_LOGIC;
    \resp_byte[5]_i_3_0\ : in STD_LOGIC;
    \resp_byte[4]_i_3_0\ : in STD_LOGIC;
    \resp_byte[2]_i_3_0\ : in STD_LOGIC;
    \resp_byte_reg[0]_i_2_0\ : in STD_LOGIC;
    \resp_byte_reg[6]_i_6_0\ : in STD_LOGIC;
    initialization_done : in STD_LOGIC;
    \resp_byte_reg[2]\ : in STD_LOGIC;
    \resp_byte_reg[5]\ : in STD_LOGIC;
    resp_no_crc_reg : in STD_LOGIC;
    \card_status_reg[9]_0\ : in STD_LOGIC;
    \card_status_reg[9]_1\ : in STD_LOGIC;
    \card_status_reg[5]_0\ : in STD_LOGIC;
    \card_status_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_cmd_valid : in STD_LOGIC;
    \card_status[11]_i_4_0\ : in STD_LOGIC;
    illegal_reg : in STD_LOGIC;
    ignored_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ignored_reg_0 : in STD_LOGIC;
    out_of_range0_carry : in STD_LOGIC;
    out_of_range0_carry_0 : in STD_LOGIC;
    out_of_range0_carry_1 : in STD_LOGIC;
    out_of_range0_carry_2 : in STD_LOGIC;
    out_of_range0_carry_3 : in STD_LOGIC;
    out_of_range0_carry_4 : in STD_LOGIC;
    out_of_range0_carry_5 : in STD_LOGIC;
    out_of_range0_carry_6 : in STD_LOGIC;
    \out_of_range0_carry__0\ : in STD_LOGIC;
    \out_of_range0_carry__0_0\ : in STD_LOGIC;
    \out_of_range0_carry__0_1\ : in STD_LOGIC;
    \out_of_range0_carry__0_2\ : in STD_LOGIC;
    \out_of_range0_carry__0_3\ : in STD_LOGIC;
    \out_of_range0_carry__0_4\ : in STD_LOGIC;
    \out_of_range0_carry__0_5\ : in STD_LOGIC;
    \out_of_range0_carry__0_6\ : in STD_LOGIC;
    \out_of_range0_carry__1\ : in STD_LOGIC;
    \out_of_range0_carry__1_0\ : in STD_LOGIC;
    \out_of_range0_carry__1_1\ : in STD_LOGIC;
    \out_of_range0_carry__1_2\ : in STD_LOGIC;
    \out_of_range0_carry__1_3\ : in STD_LOGIC;
    \out_of_range0_carry__1_4\ : in STD_LOGIC;
    \out_of_range0_carry__1_5\ : in STD_LOGIC;
    \out_of_range0_carry__1_6\ : in STD_LOGIC;
    \out_of_range0_carry__2\ : in STD_LOGIC;
    \out_of_range0_carry__2_0\ : in STD_LOGIC;
    \out_of_range0_carry__2_1\ : in STD_LOGIC;
    \out_of_range0_carry__2_2\ : in STD_LOGIC;
    \out_of_range0_carry__2_3\ : in STD_LOGIC;
    \out_of_range0_carry__2_4\ : in STD_LOGIC;
    \out_of_range0_carry__2_5\ : in STD_LOGIC;
    \out_of_range0_carry__2_6\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_cmd_interface : entity is "cmd_interface";
end adapter_axi_sd_0_0_cmd_interface;

architecture STRUCTURE of adapter_axi_sd_0_0_cmd_interface is
  signal \^fsm_onehot_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \buf_write[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_3_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_4_n_0\ : STD_LOGIC;
  signal \card_status[10]_i_5_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_3_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_7_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_8_n_0\ : STD_LOGIC;
  signal \card_status[11]_i_9_n_0\ : STD_LOGIC;
  signal \card_status[5]_i_2_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_2_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_3_n_0\ : STD_LOGIC;
  signal \card_status[9]_i_4_n_0\ : STD_LOGIC;
  signal \card_status_resp[31]_i_3_n_0\ : STD_LOGIC;
  signal \card_status_resp[5]_i_2_n_0\ : STD_LOGIC;
  signal \^cmd_arg_reg[19]_0\ : STD_LOGIC;
  signal \^cmd_arg_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_crc_err_next : STD_LOGIC;
  signal \^cmd_index_reg[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^cmd_index_reg[0]_1\ : STD_LOGIC;
  signal \^cmd_index_reg[0]_4\ : STD_LOGIC;
  signal \^cmd_index_reg[3]_0\ : STD_LOGIC;
  signal \^cmd_index_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^cmd_index_reg[5]_1\ : STD_LOGIC;
  signal \^cmd_index_reg[5]_3\ : STD_LOGIC;
  signal \^cmd_index_reg[5]_5\ : STD_LOGIC;
  signal cmd_read_crc_err : STD_LOGIC;
  signal cmd_received : STD_LOGIC;
  signal counter0 : STD_LOGIC;
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \^counter_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^counter_reg[4]_1\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal erase_seq_error_i_2_n_0 : STD_LOGIC;
  signal \erase_step[1]_i_2_n_0\ : STD_LOGIC;
  signal \erase_step[1]_i_3_n_0\ : STD_LOGIC;
  signal \erase_step[1]_i_4_n_0\ : STD_LOGIC;
  signal got_acmd41_non_query_i_4_n_0 : STD_LOGIC;
  signal got_acmd41_non_query_i_5_n_0 : STD_LOGIC;
  signal \^got_acmd41_non_query_reg_0\ : STD_LOGIC;
  signal \got_cmd0[0]_i_2_n_0\ : STD_LOGIC;
  signal \^got_new_cmd_reg_0\ : STD_LOGIC;
  signal \^ignored_c\ : STD_LOGIC;
  signal ignored_i_2_n_0 : STD_LOGIC;
  signal ignored_i_4_n_0 : STD_LOGIC;
  signal ignored_i_5_n_0 : STD_LOGIC;
  signal inactive_i_5_n_0 : STD_LOGIC;
  signal is_writing0 : STD_LOGIC;
  signal line_crc_n_0 : STD_LOGIC;
  signal line_crc_n_1 : STD_LOGIC;
  signal line_crc_n_10 : STD_LOGIC;
  signal line_crc_n_11 : STD_LOGIC;
  signal line_crc_n_14 : STD_LOGIC;
  signal line_crc_n_15 : STD_LOGIC;
  signal line_crc_n_16 : STD_LOGIC;
  signal line_crc_n_17 : STD_LOGIC;
  signal line_crc_n_18 : STD_LOGIC;
  signal line_crc_n_19 : STD_LOGIC;
  signal line_crc_n_2 : STD_LOGIC;
  signal line_crc_n_20 : STD_LOGIC;
  signal line_crc_n_21 : STD_LOGIC;
  signal line_crc_n_23 : STD_LOGIC;
  signal line_crc_n_24 : STD_LOGIC;
  signal line_crc_n_25 : STD_LOGIC;
  signal line_crc_n_26 : STD_LOGIC;
  signal line_crc_n_28 : STD_LOGIC;
  signal line_crc_n_29 : STD_LOGIC;
  signal line_crc_n_3 : STD_LOGIC;
  signal line_crc_n_30 : STD_LOGIC;
  signal line_crc_n_31 : STD_LOGIC;
  signal line_crc_n_32 : STD_LOGIC;
  signal line_crc_n_33 : STD_LOGIC;
  signal line_crc_n_34 : STD_LOGIC;
  signal line_crc_n_35 : STD_LOGIC;
  signal line_crc_n_36 : STD_LOGIC;
  signal line_crc_n_4 : STD_LOGIC;
  signal line_crc_n_5 : STD_LOGIC;
  signal line_crc_n_6 : STD_LOGIC;
  signal line_crc_n_7 : STD_LOGIC;
  signal line_crc_n_8 : STD_LOGIC;
  signal line_crc_n_9 : STD_LOGIC;
  signal out_of_range_i_2_n_0 : STD_LOGIC;
  signal out_of_range_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal \^p_3_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_5_in : STD_LOGIC;
  signal \rca[15]_i_3_n_0\ : STD_LOGIC;
  signal \rca[15]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_10_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_11_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[0]_i_9_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[1]_i_9_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[2]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_10_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_11_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[3]_i_9_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[4]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_4_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[5]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_10_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[6]_i_9_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_10_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_11_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_12_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_5_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_6_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_7_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_8_n_0\ : STD_LOGIC;
  signal \resp_byte[7]_i_9_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \resp_byte_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \resp_cur[0]_i_2_n_0\ : STD_LOGIC;
  signal \resp_cur[1]_i_2_n_0\ : STD_LOGIC;
  signal \resp_cur[2]_i_3_n_0\ : STD_LOGIC;
  signal \resp_cur[2]_i_5_n_0\ : STD_LOGIC;
  signal \resp_cur[2]_i_6_n_0\ : STD_LOGIC;
  signal resp_pos1 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0\ : STD_LOGIC;
  signal \^save_current_cmd\ : STD_LOGIC;
  signal \save_erase_vars[0].erase_vars[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \save_erase_vars[1].erase_vars[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_3_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_4_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_5_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_6_n_0\ : STD_LOGIC;
  signal \saved_cmd_index[5]_i_7_n_0\ : STD_LOGIC;
  signal sd_cmd_o_sys0 : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal state_next38_in : STD_LOGIC;
  signal state_next3_carry_n_0 : STD_LOGIC;
  signal state_next3_carry_n_1 : STD_LOGIC;
  signal state_next3_carry_n_2 : STD_LOGIC;
  signal state_next3_carry_n_3 : STD_LOGIC;
  signal \^state_reg[4]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^update_2\ : STD_LOGIC;
  signal update_read : STD_LOGIC;
  signal write_stb_received_r : STD_LOGIC;
  signal write_stb_received_r_i_1_n_0 : STD_LOGIC;
  signal NLW_state_next3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_next3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_state_next3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \block_size[12]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \block_size[5]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \card_status[10]_i_3\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \card_status_resp[5]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of cmd_crc_err_stb_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \erase_step[1]_i_4\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of got_acmd41_non_query_i_3 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \got_cmd0[0]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of inactive_i_3 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of inactive_i_4 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \ocr_high_byte[31]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of out_of_range_i_3 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rca[15]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rca[15]_i_6\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \resp_byte[0]_i_8\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \resp_byte[2]_i_8\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \resp_byte[3]_i_7\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \resp_byte[3]_i_9\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \resp_byte[5]_i_8\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \resp_byte[6]_i_5\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \resp_byte[7]_i_10\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \resp_byte[7]_i_11\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \resp_byte[7]_i_5\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \resp_byte[7]_i_9\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \resp_cur[0]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \resp_cur[1]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \resp_len[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \resp_len[4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of resp_no_crc_i_1 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \resp_type_out[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \resp_type_out[4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \save_block_count_vars[0].block_count_vars[0][31]_i_4\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \save_block_count_vars[1].block_count_vars[1][22]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \save_erase_vars[0].erase_vars[0][31]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \save_erase_vars[1].erase_vars[1][31]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \saved_cmd_index[5]_i_7\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of sd_dat3_pullup_off_i_2 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of send_resp_o_i_1 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \state[0]_i_6\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of valid_i_1 : label is "soft_lutpair91";
begin
  \FSM_onehot_state_reg[0]\ <= \^fsm_onehot_state_reg[0]\;
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  Q(0) <= \^q\(0);
  \cmd_arg_reg[19]_0\ <= \^cmd_arg_reg[19]_0\;
  \cmd_arg_reg[31]_0\(31 downto 0) <= \^cmd_arg_reg[31]_0\(31 downto 0);
  \cmd_index_reg[0]_0\(3 downto 0) <= \^cmd_index_reg[0]_0\(3 downto 0);
  \cmd_index_reg[0]_1\ <= \^cmd_index_reg[0]_1\;
  \cmd_index_reg[0]_4\ <= \^cmd_index_reg[0]_4\;
  \cmd_index_reg[3]_0\ <= \^cmd_index_reg[3]_0\;
  \cmd_index_reg[5]_0\(5 downto 0) <= \^cmd_index_reg[5]_0\(5 downto 0);
  \cmd_index_reg[5]_1\ <= \^cmd_index_reg[5]_1\;
  \cmd_index_reg[5]_3\ <= \^cmd_index_reg[5]_3\;
  \cmd_index_reg[5]_5\ <= \^cmd_index_reg[5]_5\;
  \counter_reg[4]_0\(1 downto 0) <= \^counter_reg[4]_0\(1 downto 0);
  \counter_reg[4]_1\ <= \^counter_reg[4]_1\;
  got_acmd41_non_query_reg_0 <= \^got_acmd41_non_query_reg_0\;
  got_new_cmd_reg_0 <= \^got_new_cmd_reg_0\;
  ignored_c <= \^ignored_c\;
  p_3_out(0) <= \^p_3_out\(0);
  save_current_cmd <= \^save_current_cmd\;
  \state_reg[4]_0\ <= \^state_reg[4]_0\;
  update_2 <= \^update_2\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD0D0FFD0"
    )
        port map (
      I0 => cmd_received,
      I1 => cmd_read_crc_err,
      I2 => \FSM_onehot_state_reg[4]_0\(0),
      I3 => \FSM_onehot_state_reg[4]_0\(1),
      I4 => last_cmd_valid,
      I5 => \FSM_onehot_state_reg[4]_0\(4),
      O => \FSM_onehot_state_reg[4]\(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(0),
      I1 => cmd_received,
      I2 => cmd_read_crc_err,
      I3 => \FSM_onehot_state_reg[4]_0\(1),
      O => \FSM_onehot_state_reg[4]\(1)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F888888888"
    )
        port map (
      I0 => last_cmd_valid,
      I1 => \FSM_onehot_state_reg[4]_0\(1),
      I2 => \FSM_onehot_state_reg[4]_0\(0),
      I3 => cmd_read_crc_err,
      I4 => cmd_received,
      I5 => \FSM_onehot_state_reg[4]_0\(2),
      O => \FSM_onehot_state_reg[4]\(2)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(2),
      I1 => cmd_received,
      I2 => cmd_read_crc_err,
      I3 => \FSM_onehot_state_reg[4]_0\(0),
      I4 => \FSM_onehot_state_reg[4]_0\(3),
      O => \FSM_onehot_state_reg[4]\(3)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA200"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(4),
      I1 => cmd_received,
      I2 => cmd_read_crc_err,
      I3 => \FSM_onehot_state_reg[4]_0\(0),
      I4 => \FSM_onehot_state_reg[4]_0\(3),
      O => \FSM_onehot_state_reg[4]\(4)
    );
acmd_defined_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFBFAFFDDF7FFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \cmd_index_reg[5]_6\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(2),
      I1 => \axi_rdata[13]_i_3_0\(2),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \axi_rdata[13]_i_3_2\(2),
      I4 => \axi_rdata[13]_i_3_1\(0),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \reg_saved_reg[19][10]\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(3),
      I1 => \axi_rdata[13]_i_3_0\(3),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \axi_rdata[13]_i_3_2\(3),
      I4 => \axi_rdata[13]_i_3_1\(0),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \reg_saved_reg[19][11]\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(4),
      I1 => \axi_rdata[13]_i_3_0\(4),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \^cmd_index_reg[5]_0\(4),
      I4 => \axi_rdata[13]_i_3_1\(0),
      O => \reg_saved_reg[19][12]\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(5),
      I1 => \axi_rdata[13]_i_3_0\(5),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \axi_rdata[13]_i_3_2\(4),
      I4 => \axi_rdata[13]_i_3_1\(0),
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \reg_saved_reg[19][13]\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(0),
      I1 => \axi_rdata[13]_i_3_0\(0),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \axi_rdata[13]_i_3_2\(0),
      I4 => \axi_rdata[13]_i_3_1\(0),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => \reg_saved_reg[19][8]\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[13]_i_3\(1),
      I1 => \axi_rdata[13]_i_3_0\(1),
      I2 => \axi_rdata[13]_i_3_1\(1),
      I3 => \axi_rdata[13]_i_3_2\(1),
      I4 => \axi_rdata[13]_i_3_1\(0),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \reg_saved_reg[19][9]\
    );
\block_size[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55151115"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(5),
      O => \cmd_index_reg[2]_0\(4)
    );
\block_size[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(4),
      O => \cmd_index_reg[2]_0\(0)
    );
\block_size[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFAA00000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(4),
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \cmd_index_reg[2]_0\(1)
    );
\block_size[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000005010000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => \cmd_index_reg[2]_0\(2)
    );
\block_size[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111151110101010"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => \cmd_index_reg[2]_0\(3)
    );
\buf_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg[0]_0\(0),
      Q => \buf_read_reg_n_0_[0]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[9]\,
      Q => \buf_read_reg_n_0_[10]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[10]\,
      Q => \buf_read_reg_n_0_[11]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[11]\,
      Q => \buf_read_reg_n_0_[12]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[12]\,
      Q => \buf_read_reg_n_0_[13]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[13]\,
      Q => \buf_read_reg_n_0_[14]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[14]\,
      Q => \buf_read_reg_n_0_[15]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[15]\,
      Q => \buf_read_reg_n_0_[16]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[16]\,
      Q => \buf_read_reg_n_0_[17]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[17]\,
      Q => \buf_read_reg_n_0_[18]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[18]\,
      Q => \buf_read_reg_n_0_[19]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[0]\,
      Q => \buf_read_reg_n_0_[1]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[19]\,
      Q => \buf_read_reg_n_0_[20]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[20]\,
      Q => \buf_read_reg_n_0_[21]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[21]\,
      Q => \buf_read_reg_n_0_[22]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[22]\,
      Q => \buf_read_reg_n_0_[23]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[23]\,
      Q => \buf_read_reg_n_0_[24]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[24]\,
      Q => \buf_read_reg_n_0_[25]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[25]\,
      Q => \buf_read_reg_n_0_[26]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[26]\,
      Q => \buf_read_reg_n_0_[27]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[27]\,
      Q => \buf_read_reg_n_0_[28]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[28]\,
      Q => \buf_read_reg_n_0_[29]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[1]\,
      Q => \buf_read_reg_n_0_[2]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[29]\,
      Q => \buf_read_reg_n_0_[30]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[30]\,
      Q => \buf_read_reg_n_0_[31]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[31]\,
      Q => \buf_read_reg_n_0_[32]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[32]\,
      Q => \buf_read_reg_n_0_[33]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[33]\,
      Q => \buf_read_reg_n_0_[34]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[34]\,
      Q => \buf_read_reg_n_0_[35]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[35]\,
      Q => \buf_read_reg_n_0_[36]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[36]\,
      Q => \buf_read_reg_n_0_[37]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[37]\,
      Q => \buf_read_reg_n_0_[38]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[38]\,
      Q => p_1_in(0),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[2]\,
      Q => \buf_read_reg_n_0_[3]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(0),
      Q => p_1_in(1),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(1),
      Q => p_1_in(2),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(2),
      Q => p_1_in(3),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(3),
      Q => p_1_in(4),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(4),
      Q => p_1_in(5),
      R => is_writing_reg_inv_0
    );
\buf_read_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => p_1_in(5),
      Q => p_0_in,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[3]\,
      Q => \buf_read_reg_n_0_[4]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[4]\,
      Q => \buf_read_reg_n_0_[5]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[5]\,
      Q => \buf_read_reg_n_0_[6]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[6]\,
      Q => \buf_read_reg_n_0_[7]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[7]\,
      Q => \buf_read_reg_n_0_[8]\,
      R => is_writing_reg_inv_0
    );
\buf_read_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_read_reg_n_0_[8]\,
      Q => \buf_read_reg_n_0_[9]\,
      R => is_writing_reg_inv_0
    );
\buf_write[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => line_crc_n_0,
      I1 => line_crc_n_21,
      I2 => sd_cmd_o_sys_reg_0(0),
      O => \buf_write[0]_i_1__0_n_0\
    );
\buf_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \buf_write[0]_i_1__0_n_0\,
      Q => buf_write(0),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_20,
      Q => buf_write(1),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_19,
      Q => buf_write(2),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_18,
      Q => buf_write(3),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_17,
      Q => buf_write(4),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_16,
      Q => buf_write(5),
      R => is_writing_reg_inv_0
    );
\buf_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_15,
      Q => buf_write(6),
      R => is_writing_reg_inv_0
    );
\card_status[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF900000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \card_status[10]_i_3_n_0\,
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \card_status[10]_i_4_n_0\,
      O => \cmd_index_reg[1]_2\
    );
\card_status[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888880"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \card_status_reg[11]_0\(3),
      I3 => \card_status_reg[11]_0\(2),
      I4 => ignored_reg(0),
      O => \card_status[10]_i_3_n_0\
    );
\card_status[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF24242624"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_arg_reg[31]_0\(0),
      I5 => \card_status[10]_i_5_n_0\,
      O => \card_status[10]_i_4_n_0\
    );
\card_status[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA4444AFAA4444"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \card_status_reg[11]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \card_status[10]_i_5_n_0\
    );
\card_status[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \saved_cmd_index_reg[5]\,
      I1 => \card_status[11]_i_3_n_0\,
      I2 => \^p_3_out\(0),
      I3 => \card_status_reg[11]_0\(3),
      O => \card_status_reg[11]\
    );
\card_status[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFEFDFFFFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \^cmd_index_reg[0]_4\
    );
\card_status[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFEAAFEFAFEFAFE"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => ignored_reg(0),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \card_status[11]_i_3_n_0\
    );
\card_status[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777747777447444"
    )
        port map (
      I0 => \card_status_reg[9]_0\,
      I1 => \saved_cmd_index_reg[5]\,
      I2 => \card_status_reg[9]_1\,
      I3 => \card_status[11]_i_7_n_0\,
      I4 => \card_status[11]_i_8_n_0\,
      I5 => \card_status[11]_i_9_n_0\,
      O => \^p_3_out\(0)
    );
\card_status[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09002F440B4ABE45"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(4),
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => \card_status[11]_i_7_n_0\
    );
\card_status[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0705DFBE0340100D"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \^cmd_index_reg[5]_0\(4),
      O => \card_status[11]_i_8_n_0\
    );
\card_status[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC000088B88888"
    )
        port map (
      I0 => \card_status[11]_i_4_0\,
      I1 => \card_status[11]_i_8_n_0\,
      I2 => initialization_done,
      I3 => got_acmd41_non_query_i_4_n_0,
      I4 => \card_status_reg[11]_0\(0),
      I5 => \^cmd_index_reg[0]_4\,
      O => \card_status[11]_i_9_n_0\
    );
\card_status[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => \card_status[5]_i_2_n_0\,
      I1 => \^update_2\,
      I2 => \card_status_reg[5]_0\,
      I3 => \card_status_reg[5]_1\(0),
      I4 => \card_status_reg[5]_2\(0),
      O => \set_reg_clear_always[12].reg_clear_always_reg[12][5]\(0)
    );
\card_status[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(4),
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \card_status[5]_i_2_n_0\
    );
\card_status[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54FFFE00"
    )
        port map (
      I0 => \saved_cmd_index_reg[5]\,
      I1 => \card_status[9]_i_2_n_0\,
      I2 => \card_status[9]_i_3_n_0\,
      I3 => \^p_3_out\(0),
      I4 => \card_status_reg[11]_0\(1),
      O => \card_status_reg[9]\
    );
\card_status[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FC3355555500"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \card_status_reg[11]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(4),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \card_status[9]_i_2_n_0\
    );
\card_status[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAEAAEA"
    )
        port map (
      I0 => \card_status[9]_i_4_n_0\,
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \card_status[10]_i_3_n_0\,
      O => \card_status[9]_i_3_n_0\
    );
\card_status[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3E00000000003E00"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \^cmd_index_reg[5]_0\(4),
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \card_status[9]_i_4_n_0\
    );
\card_status_resp[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => \card_status_resp[31]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg[4]_0\(0),
      I2 => \^got_new_cmd_reg_0\,
      I3 => \FSM_onehot_state_reg[4]_0\(1),
      I4 => \FSM_onehot_state_reg[4]_0\(3),
      I5 => \FSM_onehot_state_reg[4]_0\(2),
      O => \^update_2\
    );
\card_status_resp[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005DFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(4),
      I1 => cmd_received,
      I2 => cmd_read_crc_err,
      I3 => \FSM_onehot_state_reg[4]_0\(0),
      I4 => \FSM_onehot_state_reg[4]_0\(3),
      I5 => resp_no_crc_reg,
      O => \card_status_resp[31]_i_3_n_0\
    );
\card_status_resp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \card_status_resp[5]_i_2_n_0\,
      I5 => \^cmd_index_reg[5]_0\(0),
      O => acmd_defined_reg_1(0)
    );
\card_status_resp[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(1),
      O => \card_status_resp[5]_i_2_n_0\
    );
\cmd_arg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[7]\,
      Q => \^cmd_arg_reg[31]_0\(0),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[17]\,
      Q => \^cmd_arg_reg[31]_0\(10),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[18]\,
      Q => \^cmd_arg_reg[31]_0\(11),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[19]\,
      Q => \^cmd_arg_reg[31]_0\(12),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[20]\,
      Q => \^cmd_arg_reg[31]_0\(13),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[21]\,
      Q => \^cmd_arg_reg[31]_0\(14),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[22]\,
      Q => \^cmd_arg_reg[31]_0\(15),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[23]\,
      Q => \^cmd_arg_reg[31]_0\(16),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[24]\,
      Q => \^cmd_arg_reg[31]_0\(17),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[25]\,
      Q => \^cmd_arg_reg[31]_0\(18),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[26]\,
      Q => \^cmd_arg_reg[31]_0\(19),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[8]\,
      Q => \^cmd_arg_reg[31]_0\(1),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[27]\,
      Q => \^cmd_arg_reg[31]_0\(20),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[28]\,
      Q => \^cmd_arg_reg[31]_0\(21),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[29]\,
      Q => \^cmd_arg_reg[31]_0\(22),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[30]\,
      Q => \^cmd_arg_reg[31]_0\(23),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[31]\,
      Q => \^cmd_arg_reg[31]_0\(24),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[32]\,
      Q => \^cmd_arg_reg[31]_0\(25),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[33]\,
      Q => \^cmd_arg_reg[31]_0\(26),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[34]\,
      Q => \^cmd_arg_reg[31]_0\(27),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[35]\,
      Q => \^cmd_arg_reg[31]_0\(28),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[36]\,
      Q => \^cmd_arg_reg[31]_0\(29),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[9]\,
      Q => \^cmd_arg_reg[31]_0\(2),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[37]\,
      Q => \^cmd_arg_reg[31]_0\(30),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[38]\,
      Q => \^cmd_arg_reg[31]_0\(31),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[10]\,
      Q => \^cmd_arg_reg[31]_0\(3),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[11]\,
      Q => \^cmd_arg_reg[31]_0\(4),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[12]\,
      Q => \^cmd_arg_reg[31]_0\(5),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[13]\,
      Q => \^cmd_arg_reg[31]_0\(6),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[14]\,
      Q => \^cmd_arg_reg[31]_0\(7),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[15]\,
      Q => \^cmd_arg_reg[31]_0\(8),
      R => is_writing_reg_inv_0
    );
\cmd_arg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => \buf_read_reg_n_0_[16]\,
      Q => \^cmd_arg_reg[31]_0\(9),
      R => is_writing_reg_inv_0
    );
cmd_crc_err_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => cmd_crc_err_next,
      Q => cmd_read_crc_err,
      R => is_writing_reg_inv_0
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
\cmd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(0),
      Q => \^cmd_index_reg[5]_0\(0),
      R => is_writing_reg_inv_0
    );
\cmd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(1),
      Q => \^cmd_index_reg[5]_0\(1),
      R => is_writing_reg_inv_0
    );
\cmd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(2),
      Q => \^cmd_index_reg[5]_0\(2),
      R => is_writing_reg_inv_0
    );
\cmd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(3),
      Q => \^cmd_index_reg[5]_0\(3),
      R => is_writing_reg_inv_0
    );
\cmd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(4),
      Q => \^cmd_index_reg[5]_0\(4),
      R => is_writing_reg_inv_0
    );
\cmd_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_read,
      D => p_1_in(5),
      Q => \^cmd_index_reg[5]_0\(5),
      R => is_writing_reg_inv_0
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      O => \counter[1]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^counter_reg[4]_0\(1),
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \^counter_reg[4]_0\(0),
      O => \counter[4]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^counter_reg[4]_0\(1),
      I3 => resp_pos1(2),
      I4 => resp_pos1(3),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => line_crc_n_1,
      I2 => \^q\(0),
      I3 => line_crc_n_14,
      I4 => \state[3]_i_1_n_0\,
      I5 => p_0_in5_in,
      O => \counter[7]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \counter[0]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_9,
      Q => \counter_reg_n_0_[2]\,
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_8,
      Q => \^counter_reg[4]_0\(0),
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \counter[4]_i_1_n_0\,
      Q => \^counter_reg[4]_0\(1),
      R => counter0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_7,
      Q => resp_pos1(2),
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \counter[6]_i_1_n_0\,
      Q => resp_pos1(3),
      R => counter0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => line_crc_n_6,
      Q => resp_pos1(4),
      R => counter0
    );
dat_width_4_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \^cmd_index_reg[5]_3\
    );
erase_reset_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_5\,
      I2 => erase_seq_error_i_2_n_0,
      O => acmd_defined_reg_0
    );
erase_reset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \^cmd_index_reg[5]_5\
    );
erase_seq_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040FF4000"
    )
        port map (
      I0 => \erase_step[1]_i_2_n_0\,
      I1 => \erase_step[1]_i_3_n_0\,
      I2 => erase_seq_error_i_2_n_0,
      I3 => \^fsm_onehot_state_reg[0]\,
      I4 => erase_seq_error,
      I5 => is_writing_reg_inv_0,
      O => erase_seq_error_reg
    );
erase_seq_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000001010"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => erase_seq_error_i_2_n_0
    );
\erase_step[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8A9A"
    )
        port map (
      I0 => \erase_step_reg[0]_1\,
      I1 => \erase_step[1]_i_2_n_0\,
      I2 => \^fsm_onehot_state_reg[0]\,
      I3 => \erase_step[1]_i_3_n_0\,
      I4 => \erase_step_reg[0]_2\,
      I5 => is_writing_reg_inv_0,
      O => \erase_step_reg[0]_0\
    );
\erase_step[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFCF0020"
    )
        port map (
      I0 => \erase_step_reg[0]_1\,
      I1 => \erase_step[1]_i_2_n_0\,
      I2 => \^fsm_onehot_state_reg[0]\,
      I3 => \erase_step[1]_i_3_n_0\,
      I4 => \erase_step_reg[0]_2\,
      I5 => is_writing_reg_inv_0,
      O => \erase_step_reg[0]\
    );
\erase_step[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \got_cmd0[0]_i_2_n_0\,
      I5 => invalid_dat_width_reg,
      O => \erase_step[1]_i_2_n_0\
    );
\erase_step[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEABF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \erase_step_reg[0]_1\,
      I2 => \erase_step_reg[0]_2\,
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \erase_step[1]_i_4_n_0\,
      O => \erase_step[1]_i_3_n_0\
    );
\erase_step[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFEF7E"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \erase_step_reg[0]_2\,
      I3 => \erase_step_reg[0]_1\,
      I4 => \^cmd_index_reg[5]_0\(0),
      O => \erase_step[1]_i_4_n_0\
    );
got_acmd41_non_query_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]\,
      I1 => \^got_acmd41_non_query_reg_0\,
      I2 => got_acmd41_non_query_reg_1,
      O => got_acmd41_non_query_reg
    );
got_acmd41_non_query_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002222222A"
    )
        port map (
      I0 => \card_status_resp[31]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg[4]_0\(0),
      I2 => \^got_new_cmd_reg_0\,
      I3 => \FSM_onehot_state_reg[4]_0\(1),
      I4 => \FSM_onehot_state_reg[4]_0\(3),
      I5 => \FSM_onehot_state_reg[4]_0\(2),
      O => \^fsm_onehot_state_reg[0]\
    );
got_acmd41_non_query_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^cmd_index_reg[0]_0\(1),
      I1 => got_acmd41_non_query_i_4_n_0,
      I2 => got_acmd41_non_query_reg_1,
      O => \^got_acmd41_non_query_reg_0\
    );
got_acmd41_non_query_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^cmd_arg_reg[19]_0\,
      I1 => got_acmd41_non_query_i_5_n_0,
      I2 => \^cmd_arg_reg[31]_0\(14),
      I3 => \^cmd_arg_reg[31]_0\(12),
      I4 => \^cmd_arg_reg[31]_0\(9),
      O => got_acmd41_non_query_i_4_n_0
    );
got_acmd41_non_query_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(11),
      I1 => \^cmd_arg_reg[31]_0\(10),
      I2 => \^cmd_arg_reg[31]_0\(13),
      I3 => \^cmd_arg_reg[31]_0\(8),
      O => got_acmd41_non_query_i_5_n_0
    );
\got_cmd0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \got_cmd0[0]_i_2_n_0\,
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \^got_new_cmd_reg_0\,
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => got_cmd00
    );
\got_cmd0[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(5),
      O => \got_cmd0[0]_i_2_n_0\
    );
got_cmd8_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => \save_erase_vars[0].erase_vars[0][31]_i_2_n_0\,
      I1 => \^fsm_onehot_state_reg[0]\,
      I2 => \save_erase_vars[1].erase_vars[1][31]_i_2_n_0\,
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => got_cmd8_1,
      O => \cmd_index_reg[5]_2\
    );
got_new_cmd_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => update_read,
      Q => cmd_received,
      R => is_writing_reg_inv_0
    );
ignored_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50D05070FFF35070"
    )
        port map (
      I0 => ignored_i_2_n_0,
      I1 => \card_status_reg[11]_0\(0),
      I2 => ignored_reg_0,
      I3 => ignored_i_4_n_0,
      I4 => ignored_i_5_n_0,
      I5 => ignored_reg(0),
      O => \^ignored_c\
    );
ignored_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010900101311101"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => ignored_i_2_n_0
    );
ignored_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFBFFFFFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => ignored_i_4_n_0
    );
ignored_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001101080000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => ignored_i_5_n_0
    );
illegal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ignored_c\,
      I1 => illegal_reg,
      O => \card_status_reg[5]\
    );
inactive_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(19),
      I1 => \^cmd_arg_reg[31]_0\(21),
      I2 => \^cmd_arg_reg[31]_0\(23),
      I3 => inactive_i_5_n_0,
      O => \^cmd_arg_reg[19]_0\
    );
inactive_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(0),
      O => \cmd_index_reg[1]_0\
    );
inactive_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(4),
      O => \cmd_index_reg[5]_7\
    );
inactive_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(20),
      I1 => \^cmd_arg_reg[31]_0\(17),
      I2 => \^cmd_arg_reg[31]_0\(18),
      I3 => \^cmd_arg_reg[31]_0\(22),
      I4 => \^cmd_arg_reg[31]_0\(16),
      I5 => \^cmd_arg_reg[31]_0\(15),
      O => inactive_i_5_n_0
    );
invalid_dat_width_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B3338000"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(0),
      I1 => \^fsm_onehot_state_reg[0]\,
      I2 => invalid_dat_width_reg,
      I3 => \^cmd_index_reg[5]_3\,
      I4 => invalid_dat_width,
      I5 => is_writing_reg_inv_0,
      O => \cmd_arg_reg[0]_0\
    );
is_writing_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => line_crc_n_14,
      I1 => line_crc_n_1,
      I2 => \state[3]_i_1_n_0\,
      O => is_writing0
    );
is_writing_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => is_writing0,
      Q => sd_cmd_t_sys,
      S => is_writing_reg_inv_0
    );
line_crc: entity work.adapter_axi_sd_0_0_line_crc
     port map (
      CO(0) => state_next38_in,
      D(3) => line_crc_n_6,
      D(2) => line_crc_n_7,
      D(1) => line_crc_n_8,
      D(0) => line_crc_n_9,
      DI(2) => line_crc_n_28,
      DI(1) => line_crc_n_29,
      DI(0) => line_crc_n_30,
      E(0) => E(0),
      Q(5) => p_1_in2_in,
      Q(4) => \^q\(0),
      Q(3) => p_0_in5_in,
      Q(2) => p_1_in6_in,
      Q(1) => p_5_in,
      Q(0) => \state_reg_n_0_[0]\,
      S(3) => line_crc_n_31,
      S(2) => line_crc_n_32,
      S(1) => line_crc_n_33,
      S(0) => line_crc_n_34,
      SR(0) => counter0,
      S_AXI_ACLK => S_AXI_ACLK,
      \cmd_arg_reg[0]\(0) => p_0_in,
      cmd_crc_err_next => cmd_crc_err_next,
      \counter_reg[0]\ => line_crc_n_4,
      \counter_reg[0]_0\ => is_writing_reg_inv_0,
      \counter_reg[0]_1\ => \counter[7]_i_4_n_0\,
      \counter_reg[1]\ => line_crc_n_10,
      \counter_reg[5]\(0) => line_crc_n_36,
      \counter_reg[6]\(0) => line_crc_n_35,
      \counter_reg[7]\(7 downto 5) => resp_pos1(4 downto 2),
      \counter_reg[7]\(4 downto 3) => \^counter_reg[4]_0\(1 downto 0),
      \counter_reg[7]\(2) => \counter_reg_n_0_[2]\,
      \counter_reg[7]\(1) => \counter_reg_n_0_[1]\,
      \counter_reg[7]\(0) => \counter_reg_n_0_[0]\,
      \crc_reg[5]_0\(5) => line_crc_n_15,
      \crc_reg[5]_0\(4) => line_crc_n_16,
      \crc_reg[5]_0\(3) => line_crc_n_17,
      \crc_reg[5]_0\(2) => line_crc_n_18,
      \crc_reg[5]_0\(1) => line_crc_n_19,
      \crc_reg[5]_0\(0) => line_crc_n_20,
      resp_no_crc => resp_no_crc,
      sd_cmd_o_sys0 => sd_cmd_o_sys0,
      sd_cmd_o_sys_reg(6 downto 0) => buf_write(6 downto 0),
      sd_cmd_o_sys_reg_0(6 downto 0) => sd_cmd_o_sys_reg_0(7 downto 1),
      send_no_resp => send_no_resp,
      send_resp => send_resp,
      send_resp_o_reg => line_crc_n_2,
      \state[5]_i_6_0\(3 downto 0) => \state[5]_i_6\(3 downto 0),
      \state_reg[0]\ => \state[0]_i_3_n_0\,
      \state_reg[0]_0\ => \state[0]_i_4_n_0\,
      \state_reg[1]\ => line_crc_n_11,
      \state_reg[1]_0\(0) => update_read,
      \state_reg[1]_1\(0) => \buf_read_reg[0]_0\(0),
      \state_reg[2]\(2) => line_crc_n_23,
      \state_reg[2]\(1) => line_crc_n_24,
      \state_reg[2]\(0) => line_crc_n_25,
      \state_reg[3]\ => line_crc_n_1,
      \state_reg[3]_0\ => line_crc_n_26,
      \state_reg[4]\ => line_crc_n_0,
      \state_reg[4]_0\ => line_crc_n_5,
      \state_reg[4]_1\ => line_crc_n_14,
      \state_reg[5]\ => line_crc_n_21,
      write_stb_received_r => write_stb_received_r,
      write_stb_received_r_reg => line_crc_n_3
    );
multi_block_mode_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000040040040000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => multi_block_mode_next
    );
\ocr_high_byte[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => is_writing_reg_inv_0,
      I1 => cmd_read_crc_err,
      I2 => cmd_received,
      O => cmd_crc_err_reg_0
    );
\out_of_range0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(15),
      I1 => \out_of_range0_carry__0_5\,
      I2 => \^cmd_arg_reg[31]_0\(14),
      I3 => \out_of_range0_carry__0_6\,
      O => \cmd_arg_reg[15]_0\(3)
    );
\out_of_range0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(13),
      I1 => \out_of_range0_carry__0_3\,
      I2 => \^cmd_arg_reg[31]_0\(12),
      I3 => \out_of_range0_carry__0_4\,
      O => \cmd_arg_reg[15]_0\(2)
    );
\out_of_range0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(11),
      I1 => \out_of_range0_carry__0_1\,
      I2 => \^cmd_arg_reg[31]_0\(10),
      I3 => \out_of_range0_carry__0_2\,
      O => \cmd_arg_reg[15]_0\(1)
    );
\out_of_range0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(9),
      I1 => \out_of_range0_carry__0\,
      I2 => \^cmd_arg_reg[31]_0\(8),
      I3 => \out_of_range0_carry__0_0\,
      O => \cmd_arg_reg[15]_0\(0)
    );
\out_of_range0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__0_5\,
      I1 => \^cmd_arg_reg[31]_0\(15),
      I2 => \out_of_range0_carry__0_6\,
      I3 => \^cmd_arg_reg[31]_0\(14),
      O => \size_reg[15]\(3)
    );
\out_of_range0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__0_3\,
      I1 => \^cmd_arg_reg[31]_0\(13),
      I2 => \out_of_range0_carry__0_4\,
      I3 => \^cmd_arg_reg[31]_0\(12),
      O => \size_reg[15]\(2)
    );
\out_of_range0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__0_1\,
      I1 => \^cmd_arg_reg[31]_0\(11),
      I2 => \out_of_range0_carry__0_2\,
      I3 => \^cmd_arg_reg[31]_0\(10),
      O => \size_reg[15]\(1)
    );
\out_of_range0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__0\,
      I1 => \^cmd_arg_reg[31]_0\(9),
      I2 => \out_of_range0_carry__0_0\,
      I3 => \^cmd_arg_reg[31]_0\(8),
      O => \size_reg[15]\(0)
    );
\out_of_range0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(23),
      I1 => \out_of_range0_carry__1_5\,
      I2 => \^cmd_arg_reg[31]_0\(22),
      I3 => \out_of_range0_carry__1_6\,
      O => \cmd_arg_reg[23]_0\(3)
    );
\out_of_range0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(21),
      I1 => \out_of_range0_carry__1_3\,
      I2 => \^cmd_arg_reg[31]_0\(20),
      I3 => \out_of_range0_carry__1_4\,
      O => \cmd_arg_reg[23]_0\(2)
    );
\out_of_range0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(19),
      I1 => \out_of_range0_carry__1_1\,
      I2 => \^cmd_arg_reg[31]_0\(18),
      I3 => \out_of_range0_carry__1_2\,
      O => \cmd_arg_reg[23]_0\(1)
    );
\out_of_range0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(17),
      I1 => \out_of_range0_carry__1\,
      I2 => \^cmd_arg_reg[31]_0\(16),
      I3 => \out_of_range0_carry__1_0\,
      O => \cmd_arg_reg[23]_0\(0)
    );
\out_of_range0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__1_5\,
      I1 => \^cmd_arg_reg[31]_0\(23),
      I2 => \out_of_range0_carry__1_6\,
      I3 => \^cmd_arg_reg[31]_0\(22),
      O => \size_reg[23]\(3)
    );
\out_of_range0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__1_3\,
      I1 => \^cmd_arg_reg[31]_0\(21),
      I2 => \out_of_range0_carry__1_4\,
      I3 => \^cmd_arg_reg[31]_0\(20),
      O => \size_reg[23]\(2)
    );
\out_of_range0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__1_1\,
      I1 => \^cmd_arg_reg[31]_0\(19),
      I2 => \out_of_range0_carry__1_2\,
      I3 => \^cmd_arg_reg[31]_0\(18),
      O => \size_reg[23]\(1)
    );
\out_of_range0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__1\,
      I1 => \^cmd_arg_reg[31]_0\(17),
      I2 => \out_of_range0_carry__1_0\,
      I3 => \^cmd_arg_reg[31]_0\(16),
      O => \size_reg[23]\(0)
    );
\out_of_range0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(31),
      I1 => \out_of_range0_carry__2_5\,
      I2 => \^cmd_arg_reg[31]_0\(30),
      I3 => \out_of_range0_carry__2_6\,
      O => \cmd_arg_reg[31]_1\(3)
    );
\out_of_range0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(29),
      I1 => \out_of_range0_carry__2_3\,
      I2 => \^cmd_arg_reg[31]_0\(28),
      I3 => \out_of_range0_carry__2_4\,
      O => \cmd_arg_reg[31]_1\(2)
    );
\out_of_range0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(27),
      I1 => \out_of_range0_carry__2_1\,
      I2 => \^cmd_arg_reg[31]_0\(26),
      I3 => \out_of_range0_carry__2_2\,
      O => \cmd_arg_reg[31]_1\(1)
    );
\out_of_range0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(25),
      I1 => \out_of_range0_carry__2\,
      I2 => \^cmd_arg_reg[31]_0\(24),
      I3 => \out_of_range0_carry__2_0\,
      O => \cmd_arg_reg[31]_1\(0)
    );
\out_of_range0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__2_5\,
      I1 => \^cmd_arg_reg[31]_0\(31),
      I2 => \out_of_range0_carry__2_6\,
      I3 => \^cmd_arg_reg[31]_0\(30),
      O => \size_reg[31]\(3)
    );
\out_of_range0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__2_3\,
      I1 => \^cmd_arg_reg[31]_0\(29),
      I2 => \out_of_range0_carry__2_4\,
      I3 => \^cmd_arg_reg[31]_0\(28),
      O => \size_reg[31]\(2)
    );
\out_of_range0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__2_1\,
      I1 => \^cmd_arg_reg[31]_0\(27),
      I2 => \out_of_range0_carry__2_2\,
      I3 => \^cmd_arg_reg[31]_0\(26),
      O => \size_reg[31]\(1)
    );
\out_of_range0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out_of_range0_carry__2\,
      I1 => \^cmd_arg_reg[31]_0\(25),
      I2 => \out_of_range0_carry__2_0\,
      I3 => \^cmd_arg_reg[31]_0\(24),
      O => \size_reg[31]\(0)
    );
out_of_range0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(7),
      I1 => out_of_range0_carry_5,
      I2 => \^cmd_arg_reg[31]_0\(6),
      I3 => out_of_range0_carry_6,
      O => DI(3)
    );
out_of_range0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(5),
      I1 => out_of_range0_carry_3,
      I2 => \^cmd_arg_reg[31]_0\(4),
      I3 => out_of_range0_carry_4,
      O => DI(2)
    );
out_of_range0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(3),
      I1 => out_of_range0_carry_1,
      I2 => \^cmd_arg_reg[31]_0\(2),
      I3 => out_of_range0_carry_2,
      O => DI(1)
    );
out_of_range0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(1),
      I1 => out_of_range0_carry,
      I2 => \^cmd_arg_reg[31]_0\(0),
      I3 => out_of_range0_carry_0,
      O => DI(0)
    );
out_of_range0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => out_of_range0_carry_5,
      I1 => \^cmd_arg_reg[31]_0\(7),
      I2 => out_of_range0_carry_6,
      I3 => \^cmd_arg_reg[31]_0\(6),
      O => \size_reg[7]\(3)
    );
out_of_range0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => out_of_range0_carry_3,
      I1 => \^cmd_arg_reg[31]_0\(5),
      I2 => out_of_range0_carry_4,
      I3 => \^cmd_arg_reg[31]_0\(4),
      O => \size_reg[7]\(2)
    );
out_of_range0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => out_of_range0_carry_1,
      I1 => \^cmd_arg_reg[31]_0\(3),
      I2 => out_of_range0_carry_2,
      I3 => \^cmd_arg_reg[31]_0\(2),
      O => \size_reg[7]\(1)
    );
out_of_range0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => out_of_range0_carry,
      I1 => \^cmd_arg_reg[31]_0\(1),
      I2 => out_of_range0_carry_0,
      I3 => \^cmd_arg_reg[31]_0\(0),
      O => \size_reg[7]\(0)
    );
out_of_range_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F40"
    )
        port map (
      I0 => out_of_range_i_2_n_0,
      I1 => CO(0),
      I2 => \^fsm_onehot_state_reg[0]\,
      I3 => out_of_range,
      I4 => is_writing_reg_inv_0,
      O => out_of_range_reg
    );
out_of_range_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFDFDFF"
    )
        port map (
      I0 => out_of_range_i_3_n_0,
      I1 => invalid_dat_width_reg,
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => out_of_range_i_2_n_0
    );
out_of_range_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(2),
      O => out_of_range_i_3_n_0
    );
ram_reg_r2_0_7_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => resp_pos1(3),
      I1 => \^q\(0),
      O => ram_dev_addr(1)
    );
ram_reg_r2_0_7_0_5_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => resp_pos1(2),
      I1 => \^q\(0),
      O => ram_dev_addr(0)
    );
\rca[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]\,
      I1 => \rca[15]_i_3_n_0\,
      O => \FSM_onehot_state_reg[0]_0\(0)
    );
\rca[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040040000000000"
    )
        port map (
      I0 => \rca[15]_i_6_n_0\,
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_1\,
      O => \rca[15]_i_3_n_0\
    );
\rca[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFC"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(5),
      O => \rca[15]_i_6_n_0\
    );
\rca_match_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(30),
      I1 => \resp_byte[7]_i_8_0\(14),
      I2 => \^cmd_arg_reg[31]_0\(28),
      I3 => \resp_byte[7]_i_8_0\(12),
      I4 => \resp_byte[7]_i_8_0\(13),
      I5 => \^cmd_arg_reg[31]_0\(29),
      O => \cmd_arg_reg[30]_0\(0)
    );
rca_match_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(20),
      I1 => \resp_byte[7]_i_8_0\(4),
      I2 => \^cmd_arg_reg[31]_0\(19),
      I3 => \resp_byte[7]_i_8_0\(3),
      I4 => \resp_byte[7]_i_8_0\(5),
      I5 => \^cmd_arg_reg[31]_0\(21),
      O => S(1)
    );
rca_match_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^cmd_arg_reg[31]_0\(18),
      I1 => \resp_byte[7]_i_8_0\(2),
      I2 => \^cmd_arg_reg[31]_0\(17),
      I3 => \resp_byte[7]_i_8_0\(1),
      I4 => \resp_byte[7]_i_8_0\(0),
      I5 => \^cmd_arg_reg[31]_0\(16),
      O => S(0)
    );
\resp_byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \resp_byte_reg[0]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(2),
      I2 => \resp_byte[0]_i_3_n_0\,
      I3 => \resp_byte[0]_i_4_n_0\,
      I4 => \resp_byte_reg[0]\(1),
      I5 => \resp_byte[0]_i_5_n_0\,
      O => \resp_cur_reg[2]\(0)
    );
\resp_byte[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF000D000D00"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(0),
      I1 => \resp_byte[3]_i_9_n_0\,
      I2 => \resp_byte[0]_i_11_n_0\,
      I3 => \resp_byte_reg[0]\(0),
      I4 => \resp_byte[4]_i_4_0\(0),
      I5 => \resp_byte[7]_i_5_n_0\,
      O => \resp_byte[0]_i_10_n_0\
    );
\resp_byte[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(8),
      I1 => \resp_byte[7]_i_8_0\(8),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[0]_i_11_n_0\
    );
\resp_byte[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => ram_dev_data(8),
      I1 => ram_dev_data(24),
      I2 => \^state_reg[4]_0\,
      I3 => ram_dev_data(0),
      I4 => \^counter_reg[4]_1\,
      I5 => ram_dev_data(16),
      O => \resp_byte[0]_i_3_n_0\
    );
\resp_byte[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => resp_pos1(3),
      I2 => resp_pos1(4),
      I3 => resp_pos1(2),
      I4 => \^counter_reg[4]_0\(1),
      I5 => \^counter_reg[4]_0\(0),
      O => \resp_byte[0]_i_4_n_0\
    );
\resp_byte[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBB8B8B8B8B8"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(0),
      I1 => \resp_byte[7]_i_5_n_0\,
      I2 => \resp_byte[0]_i_9_n_0\,
      I3 => \resp_byte[4]_i_4_0\(12),
      I4 => \^state_reg[4]_0\,
      I5 => \^counter_reg[4]_1\,
      O => \resp_byte[0]_i_5_n_0\
    );
\resp_byte[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0E55"
    )
        port map (
      I0 => \resp_byte[7]_i_5_n_0\,
      I1 => \resp_byte_reg[0]_i_2_0\,
      I2 => \^counter_reg[4]_0\(1),
      I3 => \^state_reg[4]_0\,
      I4 => \resp_byte_reg[0]\(0),
      I5 => \resp_byte[0]_i_10_n_0\,
      O => \resp_byte[0]_i_6_n_0\
    );
\resp_byte[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0FAD07250505050"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => resp_pos1(2),
      I4 => \^cmd_arg_reg[31]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[0]_i_7_n_0\
    );
\resp_byte[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^counter_reg[4]_0\(1),
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^q\(0),
      O => \^counter_reg[4]_1\
    );
\resp_byte[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(8),
      I1 => \resp_byte[4]_i_4_0\(18),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[0]_i_9_n_0\
    );
\resp_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \resp_byte[1]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(1),
      I2 => \resp_byte[1]_i_3_n_0\,
      I3 => \resp_byte_reg[0]\(2),
      I4 => \resp_byte[1]_i_4_n_0\,
      I5 => \resp_byte[1]_i_5_n_0\,
      O => \resp_cur_reg[2]\(1)
    );
\resp_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AA00AA00AA00AA"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => resp_pos1(2),
      I2 => \^cmd_arg_reg[31]_0\(1),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[1]_i_2_n_0\
    );
\resp_byte[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA202A200A"
    )
        port map (
      I0 => \resp_byte[1]_i_6_n_0\,
      I1 => \^counter_reg[4]_0\(1),
      I2 => \^state_reg[4]_0\,
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \resp_byte_reg[1]\,
      I5 => \resp_byte_reg[0]\(0),
      O => \resp_byte[1]_i_3_n_0\
    );
\resp_byte[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      I2 => ram_dev_data(9),
      I3 => \^counter_reg[4]_0\(1),
      I4 => ram_dev_data(25),
      I5 => \resp_byte[1]_i_7_n_0\,
      O => \resp_byte[1]_i_4_n_0\
    );
\resp_byte[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF0D0D"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(13),
      I1 => \resp_byte[3]_i_9_n_0\,
      I2 => \resp_byte[1]_i_8_n_0\,
      I3 => \resp_byte[4]_i_4_0\(1),
      I4 => \resp_byte[7]_i_5_n_0\,
      I5 => \resp_byte_reg[0]\(1),
      O => \resp_byte[1]_i_5_n_0\
    );
\resp_byte[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FFF2FFF2FF"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(1),
      I1 => \resp_byte[3]_i_9_n_0\,
      I2 => \resp_byte[1]_i_9_n_0\,
      I3 => \resp_byte_reg[0]\(0),
      I4 => \resp_byte[4]_i_4_0\(1),
      I5 => \resp_byte[7]_i_5_n_0\,
      O => \resp_byte[1]_i_6_n_0\
    );
\resp_byte[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F333F3BBF333F3"
    )
        port map (
      I0 => ram_dev_data(17),
      I1 => \resp_byte[7]_i_6_n_0\,
      I2 => ram_dev_data(1),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[1]_i_7_n_0\
    );
\resp_byte[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(9),
      I1 => \resp_byte[4]_i_4_0\(19),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[1]_i_8_n_0\
    );
\resp_byte[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(9),
      I1 => \resp_byte[7]_i_8_0\(9),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[1]_i_9_n_0\
    );
\resp_byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[2]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(1),
      I2 => \resp_byte[2]_i_3_n_0\,
      I3 => \resp_byte_reg[0]\(2),
      I4 => \resp_byte[2]_i_4_n_0\,
      O => \resp_cur_reg[2]\(2)
    );
\resp_byte[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AA00AA00AA00AA"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => resp_pos1(2),
      I2 => \^cmd_arg_reg[31]_0\(2),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[2]_i_2_n_0\
    );
\resp_byte[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008FDF"
    )
        port map (
      I0 => \resp_byte[7]_i_5_n_0\,
      I1 => \resp_byte[4]_i_4_0\(2),
      I2 => \resp_byte_reg[0]\(0),
      I3 => \resp_byte[2]_i_5_n_0\,
      I4 => \resp_byte[2]_i_6_n_0\,
      O => \resp_byte[2]_i_3_n_0\
    );
\resp_byte[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0E0E0EEEEE0EE"
    )
        port map (
      I0 => \resp_byte[2]_i_7_n_0\,
      I1 => \resp_byte[2]_i_8_n_0\,
      I2 => \resp_byte_reg[0]\(1),
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \resp_byte[4]_i_4_0\(2),
      I5 => \resp_byte_reg[2]\,
      O => \resp_byte[2]_i_4_n_0\
    );
\resp_byte[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(10),
      I1 => \resp_byte[7]_i_8_0\(2),
      I2 => \^counter_reg[4]_1\,
      I3 => \resp_byte[7]_i_8_0\(10),
      I4 => \^state_reg[4]_0\,
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \resp_byte[2]_i_5_n_0\
    );
\resp_byte[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0550550100000000"
    )
        port map (
      I0 => \resp_byte_reg[0]\(0),
      I1 => \resp_byte[2]_i_3_0\,
      I2 => resp_pos1(2),
      I3 => \^counter_reg[4]_0\(1),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^q\(0),
      O => \resp_byte[2]_i_6_n_0\
    );
\resp_byte[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F333F3BBF333F3"
    )
        port map (
      I0 => ram_dev_data(18),
      I1 => \resp_byte[7]_i_6_n_0\,
      I2 => ram_dev_data(2),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[2]_i_7_n_0\
    );
\resp_byte[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E20000"
    )
        port map (
      I0 => ram_dev_data(26),
      I1 => \^counter_reg[4]_0\(1),
      I2 => ram_dev_data(10),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      O => \resp_byte[2]_i_8_n_0\
    );
\resp_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \resp_byte[3]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(1),
      I2 => \resp_byte[3]_i_3_n_0\,
      I3 => \resp_byte_reg[0]\(2),
      I4 => \resp_byte[3]_i_4_n_0\,
      I5 => \resp_byte[3]_i_5_n_0\,
      O => \resp_cur_reg[2]\(3)
    );
\resp_byte[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(11),
      I1 => \resp_byte[4]_i_4_0\(20),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[3]_i_10_n_0\
    );
\resp_byte[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00A00FCF00C0"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(11),
      I1 => \resp_byte[7]_i_8_0\(11),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[3]_i_11_n_0\
    );
\resp_byte[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AA00AA00AA00AA"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => resp_pos1(2),
      I2 => \^cmd_arg_reg[31]_0\(3),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[3]_i_2_n_0\
    );
\resp_byte[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA202A200A"
    )
        port map (
      I0 => \resp_byte[3]_i_6_n_0\,
      I1 => \^counter_reg[4]_0\(1),
      I2 => \^state_reg[4]_0\,
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \resp_byte_reg[3]\,
      I5 => \resp_byte_reg[0]\(0),
      O => \resp_byte[3]_i_3_n_0\
    );
\resp_byte[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20222000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      I2 => ram_dev_data(11),
      I3 => \^counter_reg[4]_0\(1),
      I4 => ram_dev_data(27),
      I5 => \resp_byte[3]_i_8_n_0\,
      O => \resp_byte[3]_i_4_n_0\
    );
\resp_byte[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF0D0D"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(14),
      I1 => \resp_byte[3]_i_9_n_0\,
      I2 => \resp_byte[3]_i_10_n_0\,
      I3 => \resp_byte[4]_i_4_0\(3),
      I4 => \resp_byte[7]_i_5_n_0\,
      I5 => \resp_byte_reg[0]\(1),
      O => \resp_byte[3]_i_5_n_0\
    );
\resp_byte[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FFF2FFF2FF"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(3),
      I1 => \resp_byte[3]_i_9_n_0\,
      I2 => \resp_byte[3]_i_11_n_0\,
      I3 => \resp_byte_reg[0]\(0),
      I4 => \resp_byte[4]_i_4_0\(3),
      I5 => \resp_byte[7]_i_5_n_0\,
      O => \resp_byte[3]_i_6_n_0\
    );
\resp_byte[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      O => \^state_reg[4]_0\
    );
\resp_byte[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F333F3BBF333F3"
    )
        port map (
      I0 => ram_dev_data(19),
      I1 => \resp_byte[7]_i_6_n_0\,
      I2 => ram_dev_data(3),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[3]_i_8_n_0\
    );
\resp_byte[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^counter_reg[4]_0\(1),
      O => \resp_byte[3]_i_9_n_0\
    );
\resp_byte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[4]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(1),
      I2 => \resp_byte[4]_i_3_n_0\,
      I3 => \resp_byte_reg[0]\(2),
      I4 => \resp_byte[4]_i_4_n_0\,
      O => \resp_cur_reg[2]\(4)
    );
\resp_byte[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AA00AA00AA00AA"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => resp_pos1(2),
      I2 => \^cmd_arg_reg[31]_0\(4),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[4]_i_2_n_0\
    );
\resp_byte[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF1F"
    )
        port map (
      I0 => \resp_byte[7]_i_5_n_0\,
      I1 => \resp_byte[4]_i_5_n_0\,
      I2 => \resp_byte_reg[0]\(0),
      I3 => \resp_byte[4]_i_4_0\(4),
      I4 => \resp_byte[4]_i_6_n_0\,
      O => \resp_byte[4]_i_3_n_0\
    );
\resp_byte[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBFBFB0B0B0"
    )
        port map (
      I0 => \resp_byte[4]_i_7_n_0\,
      I1 => \resp_byte[0]_i_4_n_0\,
      I2 => \resp_byte_reg[0]\(1),
      I3 => \resp_byte[4]_i_4_0\(4),
      I4 => \resp_byte[7]_i_5_n_0\,
      I5 => \resp_byte[4]_i_8_n_0\,
      O => \resp_byte[4]_i_4_n_0\
    );
\resp_byte[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C001F00DCFFDFFF"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(4),
      I1 => \^counter_reg[4]_0\(1),
      I2 => \^counter_reg[4]_0\(0),
      I3 => \^q\(0),
      I4 => \resp_byte[7]_i_8_0\(12),
      I5 => \^cmd_index_reg[5]_0\(4),
      O => \resp_byte[4]_i_5_n_0\
    );
\resp_byte[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0550550100000000"
    )
        port map (
      I0 => \resp_byte_reg[0]\(0),
      I1 => \resp_byte[4]_i_3_0\,
      I2 => resp_pos1(2),
      I3 => \^counter_reg[4]_0\(1),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^q\(0),
      O => \resp_byte[4]_i_6_n_0\
    );
\resp_byte[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => ram_dev_data(12),
      I1 => ram_dev_data(28),
      I2 => \^state_reg[4]_0\,
      I3 => ram_dev_data(4),
      I4 => \^counter_reg[4]_1\,
      I5 => ram_dev_data(20),
      O => \resp_byte[4]_i_7_n_0\
    );
\resp_byte[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3FFE0FF23002000"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(15),
      I1 => \^counter_reg[4]_0\(1),
      I2 => \^counter_reg[4]_0\(0),
      I3 => \^q\(0),
      I4 => \resp_byte[4]_i_4_0\(21),
      I5 => \^cmd_index_reg[5]_0\(4),
      O => \resp_byte[4]_i_8_n_0\
    );
\resp_byte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \resp_byte[5]_i_2_n_0\,
      I1 => \resp_byte_reg[0]\(1),
      I2 => \resp_byte[5]_i_3_n_0\,
      I3 => \resp_byte_reg[0]\(2),
      I4 => \resp_byte[5]_i_4_n_0\,
      O => \resp_cur_reg[2]\(5)
    );
\resp_byte[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8AA00AA00AA00AA"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => resp_pos1(2),
      I2 => \^cmd_arg_reg[31]_0\(5),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[5]_i_2_n_0\
    );
\resp_byte[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AAA2AA"
    )
        port map (
      I0 => \resp_byte[5]_i_5_n_0\,
      I1 => \resp_byte[7]_i_5_n_0\,
      I2 => \resp_byte[4]_i_4_0\(5),
      I3 => \resp_byte_reg[0]\(0),
      I4 => \resp_byte[5]_i_6_n_0\,
      O => \resp_byte[5]_i_3_n_0\
    );
\resp_byte[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0E0E0EEEEE0EE"
    )
        port map (
      I0 => \resp_byte[5]_i_7_n_0\,
      I1 => \resp_byte[5]_i_8_n_0\,
      I2 => \resp_byte_reg[0]\(1),
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \resp_byte[4]_i_4_0\(5),
      I5 => \resp_byte_reg[5]\,
      O => \resp_byte[5]_i_4_n_0\
    );
\resp_byte[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC30EFFFF"
    )
        port map (
      I0 => \resp_byte[5]_i_3_0\,
      I1 => resp_pos1(2),
      I2 => \^counter_reg[4]_0\(1),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      I5 => \resp_byte_reg[0]\(0),
      O => \resp_byte[5]_i_5_n_0\
    );
\resp_byte[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(13),
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \resp_byte[4]_i_4_0\(14),
      I3 => \^state_reg[4]_0\,
      I4 => \resp_byte[7]_i_8_0\(5),
      I5 => \^counter_reg[4]_1\,
      O => \resp_byte[5]_i_6_n_0\
    );
\resp_byte[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F333F3BBF333F3"
    )
        port map (
      I0 => ram_dev_data(21),
      I1 => \resp_byte[7]_i_6_n_0\,
      I2 => ram_dev_data(5),
      I3 => \^q\(0),
      I4 => \^counter_reg[4]_0\(0),
      I5 => \^counter_reg[4]_0\(1),
      O => \resp_byte[5]_i_7_n_0\
    );
\resp_byte[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E20000"
    )
        port map (
      I0 => ram_dev_data(29),
      I1 => \^counter_reg[4]_0\(1),
      I2 => ram_dev_data(13),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      O => \resp_byte[5]_i_8_n_0\
    );
\resp_byte[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF3F5FFF"
    )
        port map (
      I0 => \resp_byte[7]_i_8_0\(6),
      I1 => \resp_byte[4]_i_4_0\(16),
      I2 => \^q\(0),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^counter_reg[4]_0\(1),
      I5 => resp_pos1(2),
      O => \resp_byte[6]_i_10_n_0\
    );
\resp_byte[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A3FFFF00A300A3"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(6),
      I1 => \resp_byte_reg[6]\,
      I2 => \resp_byte[7]_i_5_n_0\,
      I3 => \resp_byte_reg[0]\(1),
      I4 => \resp_byte[6]_i_5_n_0\,
      I5 => \resp_byte[7]_i_6_n_0\,
      O => \resp_byte[6]_i_2_n_0\
    );
\resp_byte[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5050505"
    )
        port map (
      I0 => \resp_byte_reg[6]_i_6_n_0\,
      I1 => \resp_byte[7]_i_9_n_0\,
      I2 => \resp_byte_reg[0]\(1),
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \^cmd_arg_reg[31]_0\(6),
      O => \resp_byte[6]_i_3_n_0\
    );
\resp_byte[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF7F"
    )
        port map (
      I0 => ram_dev_data(22),
      I1 => \^q\(0),
      I2 => \^counter_reg[4]_0\(0),
      I3 => \^counter_reg[4]_0\(1),
      I4 => \resp_byte[6]_i_7_n_0\,
      O => \resp_byte[6]_i_5_n_0\
    );
\resp_byte[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0ACFFFF00AC0000"
    )
        port map (
      I0 => ram_dev_data(14),
      I1 => ram_dev_data(30),
      I2 => \^counter_reg[4]_0\(1),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      I5 => ram_dev_data(6),
      O => \resp_byte[6]_i_7_n_0\
    );
\resp_byte[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF1FFFF"
    )
        port map (
      I0 => \resp_byte_reg[6]_i_6_0\,
      I1 => resp_pos1(2),
      I2 => \^counter_reg[4]_0\(1),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      O => \resp_byte[6]_i_8_n_0\
    );
\resp_byte[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A2AAAAAAA2AA"
    )
        port map (
      I0 => \resp_byte[6]_i_10_n_0\,
      I1 => \^state_reg[4]_0\,
      I2 => \^counter_reg[4]_0\(1),
      I3 => \resp_byte[7]_i_8_0\(14),
      I4 => \resp_byte[7]_i_5_n_0\,
      I5 => \resp_byte[4]_i_4_0\(6),
      O => \resp_byte[6]_i_9_n_0\
    );
\resp_byte[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter_reg[4]_0\(0),
      I1 => \^counter_reg[4]_0\(1),
      O => \resp_byte[7]_i_10_n_0\
    );
\resp_byte[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04044C48"
    )
        port map (
      I0 => \^counter_reg[4]_0\(0),
      I1 => \^q\(0),
      I2 => \^counter_reg[4]_0\(1),
      I3 => initialization_done,
      I4 => resp_pos1(2),
      O => \resp_byte[7]_i_11_n_0\
    );
\resp_byte[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CAF00000CA00000"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(17),
      I1 => \resp_byte[7]_i_8_0\(7),
      I2 => \^counter_reg[4]_0\(1),
      I3 => \^counter_reg[4]_0\(0),
      I4 => \^q\(0),
      I5 => \resp_byte[7]_i_8_0\(15),
      O => \resp_byte[7]_i_12_n_0\
    );
\resp_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A300A300A3"
    )
        port map (
      I0 => \resp_byte[4]_i_4_0\(7),
      I1 => \resp_byte_reg[7]\,
      I2 => \resp_byte[7]_i_5_n_0\,
      I3 => \resp_byte_reg[0]\(1),
      I4 => \resp_byte[7]_i_6_n_0\,
      I5 => \resp_byte[7]_i_7_n_0\,
      O => \resp_byte[7]_i_2_n_0\
    );
\resp_byte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \resp_byte[7]_i_8_n_0\,
      I1 => \resp_byte[7]_i_9_n_0\,
      I2 => \resp_byte_reg[0]\(1),
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \^cmd_arg_reg[31]_0\(7),
      O => \resp_byte[7]_i_3_n_0\
    );
\resp_byte[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^counter_reg[4]_0\(1),
      I3 => resp_pos1(2),
      O => \resp_byte[7]_i_5_n_0\
    );
\resp_byte[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000000000000"
    )
        port map (
      I0 => \resp_byte[7]_i_10_n_0\,
      I1 => resp_pos1(2),
      I2 => resp_pos1(4),
      I3 => resp_pos1(3),
      I4 => \^q\(0),
      I5 => \resp_byte_reg[0]\(1),
      O => \resp_byte[7]_i_6_n_0\
    );
\resp_byte[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => ram_dev_data(15),
      I1 => ram_dev_data(31),
      I2 => \^state_reg[4]_0\,
      I3 => ram_dev_data(7),
      I4 => \^counter_reg[4]_1\,
      I5 => ram_dev_data(23),
      O => \resp_byte[7]_i_7_n_0\
    );
\resp_byte[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \resp_byte[7]_i_11_n_0\,
      I1 => \resp_byte_reg[0]\(0),
      I2 => \resp_byte[7]_i_12_n_0\,
      I3 => \resp_byte[7]_i_5_n_0\,
      I4 => \resp_byte[4]_i_4_0\(7),
      I5 => \resp_byte_reg[0]\(1),
      O => \resp_byte[7]_i_8_n_0\
    );
\resp_byte[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^counter_reg[4]_0\(1),
      I1 => \^counter_reg[4]_0\(0),
      I2 => \^q\(0),
      O => \resp_byte[7]_i_9_n_0\
    );
\resp_byte_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte[0]_i_6_n_0\,
      I1 => \resp_byte[0]_i_7_n_0\,
      O => \resp_byte_reg[0]_i_2_n_0\,
      S => \resp_byte_reg[0]\(1)
    );
\resp_byte_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte[6]_i_2_n_0\,
      I1 => \resp_byte[6]_i_3_n_0\,
      O => \resp_cur_reg[2]\(6),
      S => \resp_byte_reg[0]\(2)
    );
\resp_byte_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte[6]_i_8_n_0\,
      I1 => \resp_byte[6]_i_9_n_0\,
      O => \resp_byte_reg[6]_i_6_n_0\,
      S => \resp_byte_reg[0]\(0)
    );
\resp_byte_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \resp_byte[7]_i_2_n_0\,
      I1 => \resp_byte[7]_i_3_n_0\,
      O => \resp_cur_reg[2]\(7),
      S => \resp_byte_reg[0]\(2)
    );
\resp_cur[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFFCFFF3F8FC"
    )
        port map (
      I0 => ignored_reg(0),
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \resp_cur[0]_i_2_n_0\,
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \^cmd_index_reg[5]_1\
    );
\resp_cur[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFC0"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(3),
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(4),
      O => \resp_cur[0]_i_2_n_0\
    );
\resp_cur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DED000000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \resp_cur[2]_i_6_n_0\,
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \resp_cur[1]_i_2_n_0\,
      O => \^cmd_index_reg[0]_1\
    );
\resp_cur[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(4),
      O => \resp_cur[1]_i_2_n_0\
    );
\resp_cur[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080888080808080"
    )
        port map (
      I0 => \resp_cur[2]_i_3_n_0\,
      I1 => resp_no_crc_reg,
      I2 => \FSM_onehot_state_reg[4]_0\(3),
      I3 => \FSM_onehot_state_reg[4]_0\(0),
      I4 => \^got_new_cmd_reg_0\,
      I5 => \FSM_onehot_state_reg[4]_0\(4),
      O => \^fsm_onehot_state_reg[3]\
    );
\resp_cur[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => \resp_cur[2]_i_5_n_0\,
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \resp_cur[2]_i_6_n_0\,
      I3 => \^cmd_index_reg[5]_0\(0),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \got_cmd0[0]_i_2_n_0\,
      O => \^cmd_index_reg[3]_0\
    );
\resp_cur[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010155555555"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(2),
      I1 => \FSM_onehot_state_reg[4]_0\(3),
      I2 => \FSM_onehot_state_reg[4]_0\(1),
      I3 => cmd_read_crc_err,
      I4 => cmd_received,
      I5 => \FSM_onehot_state_reg[4]_0\(0),
      O => \resp_cur[2]_i_3_n_0\
    );
\resp_cur[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000040400000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(0),
      I3 => invalid_dat_width_reg,
      I4 => \resp_cur[1]_i_2_n_0\,
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \resp_cur[2]_i_5_n_0\
    );
\resp_cur[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_arg_reg[31]_0\(8),
      I2 => \^cmd_arg_reg[31]_0\(9),
      I3 => \^cmd_arg_reg[31]_0\(10),
      I4 => \^cmd_arg_reg[31]_0\(11),
      O => \resp_cur[2]_i_6_n_0\
    );
\resp_len[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \resp_cur[1]_i_2_n_0\,
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(3),
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(1),
      I5 => invalid_dat_width_reg,
      O => \^cmd_index_reg[0]_0\(0)
    );
\resp_len[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \resp_cur[1]_i_2_n_0\,
      O => \^cmd_index_reg[0]_0\(1)
    );
\resp_len[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^cmd_index_reg[0]_1\,
      I1 => \^cmd_index_reg[3]_0\,
      O => \^cmd_index_reg[0]_0\(2)
    );
\resp_len[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_index_reg[0]_1\,
      I1 => \^cmd_index_reg[3]_0\,
      O => \^cmd_index_reg[0]_0\(3)
    );
resp_no_crc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^cmd_index_reg[0]_1\,
      I1 => \^cmd_index_reg[3]_0\,
      I2 => \^cmd_index_reg[0]_0\(1),
      O => resp_no_crc_next
    );
\resp_type_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^cmd_index_reg[3]_0\,
      I1 => \^cmd_index_reg[0]_1\,
      I2 => \^cmd_index_reg[5]_1\,
      I3 => \^fsm_onehot_state_reg[3]\,
      I4 => is_writing_reg_inv_0,
      O => \cmd_index_reg[3]_2\
    );
\resp_type_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rca[15]_i_3_n_0\,
      I1 => \^fsm_onehot_state_reg[3]\,
      I2 => is_writing_reg_inv_0,
      O => \cmd_index_reg[0]_2\
    );
\save_block_count_vars[0].block_count_vars[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^save_current_cmd\,
      I1 => \save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0\,
      O => SR(0)
    );
\save_block_count_vars[0].block_count_vars[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]\,
      I1 => \save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0\,
      I2 => invalid_dat_width_reg,
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(3),
      I5 => \^cmd_index_reg[5]_0\(4),
      O => acmd_defined_reg(0)
    );
\save_block_count_vars[0].block_count_vars[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEBBBAAAAAAAA"
    )
        port map (
      I0 => is_writing_reg_inv_0,
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0\,
      I5 => \^fsm_onehot_state_reg[0]\,
      O => \save_block_count_vars[0].block_count_vars[0][31]_i_3_n_0\
    );
\save_block_count_vars[0].block_count_vars[0][31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(2),
      O => \save_block_count_vars[0].block_count_vars[0][31]_i_4_n_0\
    );
\save_block_count_vars[0].block_count_vars[0][31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD5FFFEFDFFFDFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => invalid_dat_width_reg,
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \save_block_count_vars[0].block_count_vars[0][31]_i_5_n_0\
    );
\save_block_count_vars[1].block_count_vars[1][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]\,
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0\,
      I5 => invalid_dat_width_reg,
      O => \cmd_index_reg[0]_3\(0)
    );
\save_block_count_vars[1].block_count_vars[1][22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(5),
      I1 => \^cmd_index_reg[5]_0\(4),
      I2 => \^cmd_index_reg[5]_0\(3),
      O => \save_block_count_vars[1].block_count_vars[1][22]_i_2_n_0\
    );
\save_erase_vars[0].erase_vars[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(1),
      I4 => \^fsm_onehot_state_reg[0]\,
      I5 => \save_erase_vars[0].erase_vars[0][31]_i_2_n_0\,
      O => \cmd_index_reg[3]_3\(0)
    );
\save_erase_vars[0].erase_vars[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(2),
      I1 => \^cmd_index_reg[5]_0\(0),
      O => \save_erase_vars[0].erase_vars[0][31]_i_2_n_0\
    );
\save_erase_vars[1].erase_vars[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]\,
      I1 => \save_erase_vars[1].erase_vars[1][31]_i_2_n_0\,
      I2 => \^cmd_index_reg[5]_0\(5),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(2),
      O => \cmd_index_reg[5]_4\(0)
    );
\save_erase_vars[1].erase_vars[1][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(1),
      O => \save_erase_vars[1].erase_vars[1][31]_i_2_n_0\
    );
\saved_cmd_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEE0EEE"
    )
        port map (
      I0 => \saved_cmd_index[5]_i_2_n_0\,
      I1 => \saved_cmd_index[5]_i_3_n_0\,
      I2 => \saved_cmd_index[5]_i_4_n_0\,
      I3 => invalid_dat_width_reg,
      I4 => \saved_cmd_index[5]_i_5_n_0\,
      I5 => \saved_cmd_index_reg[5]\,
      O => \^save_current_cmd\
    );
\saved_cmd_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00006100"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(3),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \got_cmd0[0]_i_2_n_0\,
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \saved_cmd_index[5]_i_6_n_0\,
      O => \saved_cmd_index[5]_i_2_n_0\
    );
\saved_cmd_index[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220000200220020"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \^cmd_index_reg[5]_0\(3),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \saved_cmd_index[5]_i_3_n_0\
    );
\saved_cmd_index[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FBFFFFFFFFFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(4),
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \saved_cmd_index[5]_i_4_n_0\
    );
\saved_cmd_index[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800C00000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(1),
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(4),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \saved_cmd_index[5]_i_5_n_0\
    );
\saved_cmd_index[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => invalid_dat_width_reg,
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(3),
      I3 => \saved_cmd_index[5]_i_7_n_0\,
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \^cmd_index_reg[5]_0\(4),
      O => \saved_cmd_index[5]_i_6_n_0\
    );
\saved_cmd_index[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(0),
      O => \saved_cmd_index[5]_i_7_n_0\
    );
sd_cmd_o_sys_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => sd_cmd_o_sys0,
      Q => sd_cmd_o_sys,
      S => is_writing_reg_inv_0
    );
sd_dat3_pullup_off_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(3),
      O => \cmd_index_reg[1]_1\
    );
send_resp_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => \^cmd_index_reg[3]_0\,
      I1 => \^cmd_index_reg[0]_1\,
      I2 => \^cmd_index_reg[5]_1\,
      I3 => \^fsm_onehot_state_reg[3]\,
      I4 => is_writing_reg_inv_0,
      O => \cmd_index_reg[3]_1\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FCCDDFFFFCCDD"
    )
        port map (
      I0 => \state[0]_i_6_n_0\,
      I1 => line_crc_n_5,
      I2 => line_crc_n_2,
      I3 => \state_reg_n_0_[0]\,
      I4 => p_0_in5_in,
      I5 => line_crc_n_3,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => E(0),
      I1 => \buf_read_reg[0]_0\(0),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_1_in2_in,
      I2 => \^q\(0),
      O => \state[0]_i_6_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => line_crc_n_26,
      I1 => \state_reg_n_0_[0]\,
      I2 => p_1_in6_in,
      I3 => p_5_in,
      I4 => \state[3]_i_3_n_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE0CFE000E0CFE00"
    )
        port map (
      I0 => \state[3]_i_4_n_0\,
      I1 => line_crc_n_11,
      I2 => \state_reg_n_0_[0]\,
      I3 => p_0_in5_in,
      I4 => E(0),
      I5 => \buf_read_reg[0]_0\(0),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => line_crc_n_4,
      O => \state[3]_i_4_n_0\
    );
state_next3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state_next3_carry_n_0,
      CO(2) => state_next3_carry_n_1,
      CO(1) => state_next3_carry_n_2,
      CO(0) => state_next3_carry_n_3,
      CYINIT => '1',
      DI(3) => line_crc_n_28,
      DI(2) => line_crc_n_29,
      DI(1) => line_crc_n_30,
      DI(0) => '0',
      O(3 downto 0) => NLW_state_next3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => line_crc_n_31,
      S(2) => line_crc_n_32,
      S(1) => line_crc_n_33,
      S(0) => line_crc_n_34
    );
\state_next3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state_next3_carry_n_0,
      CO(3 downto 1) => \NLW_state_next3_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => state_next38_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => line_crc_n_36,
      O(3 downto 0) => \NLW_state_next3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => line_crc_n_35
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => line_crc_n_25,
      Q => \state_reg_n_0_[0]\,
      R => is_writing_reg_inv_0
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => line_crc_n_24,
      Q => p_5_in,
      R => is_writing_reg_inv_0
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => line_crc_n_23,
      Q => p_1_in6_in,
      R => is_writing_reg_inv_0
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[3]_i_1_n_0\,
      Q => p_0_in5_in,
      R => is_writing_reg_inv_0
    );
\state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => line_crc_n_14,
      Q => \^q\(0),
      R => is_writing_reg_inv_0
    );
\state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => line_crc_n_1,
      Q => p_1_in2_in,
      R => is_writing_reg_inv_0
    );
valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cmd_received,
      I1 => cmd_read_crc_err,
      O => \^got_new_cmd_reg_0\
    );
valid_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000A0A010E"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(3),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(2),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(5),
      O => \cmd_index_reg[3]_4\
    );
valid_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000700090000"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(0),
      I1 => \^cmd_index_reg[5]_0\(1),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \cmd_index_reg[0]_5\
    );
valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEFEFEFFEEEE"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(4),
      I1 => \^cmd_index_reg[5]_0\(5),
      I2 => \^cmd_index_reg[5]_0\(2),
      I3 => \^cmd_index_reg[5]_0\(3),
      I4 => \^cmd_index_reg[5]_0\(0),
      I5 => \^cmd_index_reg[5]_0\(1),
      O => \cmd_index_reg[4]_0\
    );
valid_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2EF287D74FA84"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(0),
      I2 => \^cmd_index_reg[5]_0\(4),
      I3 => \^cmd_index_reg[5]_0\(5),
      I4 => \^cmd_index_reg[5]_0\(2),
      I5 => \^cmd_index_reg[5]_0\(3),
      O => \cmd_index_reg[1]_3\
    );
valid_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000D800000025"
    )
        port map (
      I0 => \^cmd_index_reg[5]_0\(1),
      I1 => \^cmd_index_reg[5]_0\(2),
      I2 => \^cmd_index_reg[5]_0\(3),
      I3 => \^cmd_index_reg[5]_0\(4),
      I4 => \^cmd_index_reg[5]_0\(5),
      I5 => \^cmd_index_reg[5]_0\(0),
      O => \cmd_index_reg[1]_4\
    );
write_stb_received_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE0"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => p_0_in5_in,
      I2 => write_stb_received_r,
      I3 => send_resp,
      I4 => is_writing_reg_inv_0,
      O => write_stb_received_r_i_1_n_0
    );
write_stb_received_r_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
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
entity adapter_axi_sd_0_0_dat_controller is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty_reg : out STD_LOGIC;
    dat_width_4_reg_0 : out STD_LOGIC;
    invalid_dat_width : out STD_LOGIC;
    \dev_blocks_read_reg[0]_0\ : out STD_LOGIC;
    \dev_blocks_read_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \dev_blocks_read_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dev_blocks_read_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \addr_write_reg[9]\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    multi_block_mode_reg_0 : out STD_LOGIC;
    \axi_araddr_reg[2]\ : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    ram_reg : out STD_LOGIC;
    ram_reg_0 : out STD_LOGIC;
    ram_reg_1 : out STD_LOGIC;
    ram_reg_2 : out STD_LOGIC;
    ram_reg_3 : out STD_LOGIC;
    ram_reg_4 : out STD_LOGIC;
    ram_reg_5 : out STD_LOGIC;
    ram_reg_6 : out STD_LOGIC;
    ram_reg_7 : out STD_LOGIC;
    ram_reg_8 : out STD_LOGIC;
    ram_reg_9 : out STD_LOGIC;
    ram_reg_10 : out STD_LOGIC;
    ram_reg_11 : out STD_LOGIC;
    ram_reg_12 : out STD_LOGIC;
    ram_reg_13 : out STD_LOGIC;
    ram_reg_14 : out STD_LOGIC;
    ram_reg_15 : out STD_LOGIC;
    ram_reg_16 : out STD_LOGIC;
    ram_reg_17 : out STD_LOGIC;
    ram_reg_18 : out STD_LOGIC;
    ram_reg_19 : out STD_LOGIC;
    ram_reg_20 : out STD_LOGIC;
    ram_reg_21 : out STD_LOGIC;
    ram_reg_22 : out STD_LOGIC;
    ram_reg_23 : out STD_LOGIC;
    ram_reg_24 : out STD_LOGIC;
    ram_reg_25 : out STD_LOGIC;
    ram_reg_26 : out STD_LOGIC;
    ram_reg_27 : out STD_LOGIC;
    ram_reg_28 : out STD_LOGIC;
    ram_reg_29 : out STD_LOGIC;
    ram_reg_30 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : out STD_LOGIC;
    \addr_write_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_2\ : out STD_LOGIC;
    \FSM_onehot_sys_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    ram_reg_31 : out STD_LOGIC;
    ram_reg_32 : out STD_LOGIC;
    dat_width_4_reg_1 : out STD_LOGIC;
    dat_width_4_reg_2 : out STD_LOGIC;
    \block_size_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \block_size_reg[12]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \block_size_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[6]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_1\ : out STD_LOGIC;
    ram_reg_33 : out STD_LOGIC;
    ram_reg_34 : out STD_LOGIC;
    ram_reg_35 : out STD_LOGIC;
    ram_reg_36 : out STD_LOGIC;
    ram_reg_37 : out STD_LOGIC;
    ram_reg_38 : out STD_LOGIC;
    ram_reg_39 : out STD_LOGIC;
    ram_reg_40 : out STD_LOGIC;
    ram_reg_41 : out STD_LOGIC;
    ram_reg_42 : out STD_LOGIC;
    ram_reg_43 : out STD_LOGIC;
    ram_reg_44 : out STD_LOGIC;
    ram_reg_45 : out STD_LOGIC;
    ram_reg_46 : out STD_LOGIC;
    ram_reg_47 : out STD_LOGIC;
    ram_reg_48 : out STD_LOGIC;
    ram_reg_49 : out STD_LOGIC;
    ram_reg_50 : out STD_LOGIC;
    ram_reg_51 : out STD_LOGIC;
    ram_reg_52 : out STD_LOGIC;
    ram_reg_53 : out STD_LOGIC;
    ram_reg_54 : out STD_LOGIC;
    ram_reg_55 : out STD_LOGIC;
    ram_reg_56 : out STD_LOGIC;
    ram_reg_57 : out STD_LOGIC;
    ram_reg_58 : out STD_LOGIC;
    ram_reg_59 : out STD_LOGIC;
    ram_reg_60 : out STD_LOGIC;
    ram_reg_61 : out STD_LOGIC;
    ram_reg_62 : out STD_LOGIC;
    dat_width_4_reg_3 : out STD_LOGIC;
    dat_width_4_reg_4 : out STD_LOGIC;
    dat_width_4_reg_5 : out STD_LOGIC;
    dat_width_4_reg_6 : out STD_LOGIC;
    dat_width_4_reg_7 : out STD_LOGIC;
    dat_width_4_reg_8 : out STD_LOGIC;
    dat_width_4_reg_9 : out STD_LOGIC;
    dat_width_4_reg_10 : out STD_LOGIC;
    dat_width_4_reg_11 : out STD_LOGIC;
    dat_width_4_reg_12 : out STD_LOGIC;
    dat_width_4_reg_13 : out STD_LOGIC;
    dat_width_4_reg_14 : out STD_LOGIC;
    dat_width_4_reg_15 : out STD_LOGIC;
    dat_width_4_reg_16 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \block_size_reg[12]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dat_width_4_reg_17 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    multi_block_mode_next : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    dat_width_4_reg_18 : in STD_LOGIC;
    invalid_dat_width_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_next4_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state[3]_i_7_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    new_sd_clk : in STD_LOGIC;
    \FSM_sequential_state[1]_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_saved_reg[24][0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    cmd_unread : in STD_LOGIC;
    interrupt_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_saved_unread : in STD_LOGIC;
    interrupt_1 : in STD_LOGIC;
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[0]_2\ : in STD_LOGIC;
    \axi_rdata_reg[0]_3\ : in STD_LOGIC;
    \axi_rdata_reg[31]_0\ : in STD_LOGIC;
    \axi_rdata_reg[31]_1\ : in STD_LOGIC;
    \axi_rdata_reg[30]\ : in STD_LOGIC;
    \axi_rdata_reg[30]_0\ : in STD_LOGIC;
    \axi_rdata_reg[29]\ : in STD_LOGIC;
    \axi_rdata_reg[29]_0\ : in STD_LOGIC;
    \axi_rdata_reg[28]\ : in STD_LOGIC;
    \axi_rdata_reg[27]\ : in STD_LOGIC;
    \axi_rdata_reg[26]\ : in STD_LOGIC;
    \axi_rdata_reg[26]_0\ : in STD_LOGIC;
    \axi_rdata_reg[25]\ : in STD_LOGIC;
    \axi_rdata_reg[25]_0\ : in STD_LOGIC;
    \axi_rdata_reg[24]\ : in STD_LOGIC;
    \axi_rdata_reg[24]_0\ : in STD_LOGIC;
    \axi_rdata_reg[23]\ : in STD_LOGIC;
    \axi_rdata_reg[23]_0\ : in STD_LOGIC;
    \axi_rdata_reg[22]\ : in STD_LOGIC;
    \axi_rdata_reg[22]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]\ : in STD_LOGIC;
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata[28]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[28]_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[28]_i_3_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[5]_1\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_1\ : in STD_LOGIC;
    dat_wrote_new_word : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \block_data_finished0_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status[11]_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dev_last_block_reg[7]_0\ : in STD_LOGIC;
    \FSM_onehot_sys_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_sys_state[2]_i_4\ : in STD_LOGIC;
    \FSM_onehot_state_reg[5]_2\ : in STD_LOGIC;
    \FSM_onehot_state[0]_i_3_0\ : in STD_LOGIC;
    \FSM_onehot_sys_state[2]_i_4_0\ : in STD_LOGIC;
    no_more_write_data : in STD_LOGIC;
    \FSM_onehot_state[2]_i_2_0\ : in STD_LOGIC;
    block_limit_used : in STD_LOGIC;
    \FSM_onehot_state[2]_i_2_1\ : in STD_LOGIC;
    dat_got_block : in STD_LOGIC;
    data_write_en : in STD_LOGIC;
    dat_got_word : in STD_LOGIC;
    \state_next4_carry__2_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_63 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_64 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \block_data_finished0_carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \block_size_reg[12]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_sys_state_reg[0]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_dat_controller : entity is "dat_controller";
end adapter_axi_sd_0_0_dat_controller;

architecture STRUCTURE of adapter_axi_sd_0_0_dat_controller is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[4]_2\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sys_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_sys_state_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^axi_araddr_reg[2]\ : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal block_size0 : STD_LOGIC;
  signal \^block_size_reg[12]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^dat_width_4_reg_0\ : STD_LOGIC;
  signal \dev_blocks_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[0]_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[27]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[31]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dev_blocks_read_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dev_blocks_read_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \^dev_blocks_read_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dev_blocks_read_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dev_blocks_read_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal dev_last_block : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal \dev_last_block[9]_i_4_n_0\ : STD_LOGIC;
  signal \dev_last_block[9]_i_6_n_0\ : STD_LOGIC;
  signal fifo_n_120 : STD_LOGIC;
  signal fifo_n_121 : STD_LOGIC;
  signal fifo_n_122 : STD_LOGIC;
  signal fifo_n_18 : STD_LOGIC;
  signal fifo_n_19 : STD_LOGIC;
  signal fifo_n_20 : STD_LOGIC;
  signal fifo_n_21 : STD_LOGIC;
  signal fifo_n_22 : STD_LOGIC;
  signal fifo_n_23 : STD_LOGIC;
  signal fifo_n_24 : STD_LOGIC;
  signal fifo_n_25 : STD_LOGIC;
  signal fifo_n_6 : STD_LOGIC;
  signal fifo_n_63 : STD_LOGIC;
  signal fifo_n_7 : STD_LOGIC;
  signal fifo_wraddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal interrupt_INST_0_i_1_n_0 : STD_LOGIC;
  signal may_read_data : STD_LOGIC;
  signal may_write_data : STD_LOGIC;
  signal multi_block_mode : STD_LOGIC;
  signal \^multi_block_mode_reg_0\ : STD_LOGIC;
  signal state_next4 : STD_LOGIC;
  signal \state_next4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state_next4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state_next4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state_next4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state_next4_carry__0_n_0\ : STD_LOGIC;
  signal \state_next4_carry__0_n_1\ : STD_LOGIC;
  signal \state_next4_carry__0_n_2\ : STD_LOGIC;
  signal \state_next4_carry__0_n_3\ : STD_LOGIC;
  signal \state_next4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state_next4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state_next4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state_next4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state_next4_carry__1_n_0\ : STD_LOGIC;
  signal \state_next4_carry__1_n_1\ : STD_LOGIC;
  signal \state_next4_carry__1_n_2\ : STD_LOGIC;
  signal \state_next4_carry__1_n_3\ : STD_LOGIC;
  signal \state_next4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state_next4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state_next4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state_next4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \state_next4_carry__2_n_1\ : STD_LOGIC;
  signal \state_next4_carry__2_n_2\ : STD_LOGIC;
  signal \state_next4_carry__2_n_3\ : STD_LOGIC;
  signal state_next4_carry_i_1_n_0 : STD_LOGIC;
  signal state_next4_carry_i_2_n_0 : STD_LOGIC;
  signal state_next4_carry_i_3_n_0 : STD_LOGIC;
  signal state_next4_carry_i_4_n_0 : STD_LOGIC;
  signal state_next4_carry_n_0 : STD_LOGIC;
  signal state_next4_carry_n_1 : STD_LOGIC;
  signal state_next4_carry_n_2 : STD_LOGIC;
  signal state_next4_carry_n_3 : STD_LOGIC;
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sys_may_read_next : STD_LOGIC;
  signal sys_may_write_next : STD_LOGIC;
  signal sys_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \write_ok2_carry__0_n_0\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_1\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_2\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_3\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_4\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_5\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_6\ : STD_LOGIC;
  signal \write_ok2_carry__0_n_7\ : STD_LOGIC;
  signal \write_ok2_carry__1_n_1\ : STD_LOGIC;
  signal \write_ok2_carry__1_n_3\ : STD_LOGIC;
  signal \write_ok2_carry__1_n_6\ : STD_LOGIC;
  signal \write_ok2_carry__1_n_7\ : STD_LOGIC;
  signal write_ok2_carry_n_0 : STD_LOGIC;
  signal write_ok2_carry_n_1 : STD_LOGIC;
  signal write_ok2_carry_n_2 : STD_LOGIC;
  signal write_ok2_carry_n_3 : STD_LOGIC;
  signal write_ok2_carry_n_4 : STD_LOGIC;
  signal write_ok2_carry_n_5 : STD_LOGIC;
  signal write_ok2_carry_n_6 : STD_LOGIC;
  signal write_ok2_carry_n_7 : STD_LOGIC;
  signal \NLW_dev_blocks_read_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state_next4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_next4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_next4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_next4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_ok2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_write_ok2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair48";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "state_reading:0000010,state_writing:0010000,state_reading_half_closed:0000100,state_reading_closed:0001000,state_writing_half_closed:0100000,state_writing_closed:1000000,state_idle:0000001";
  attribute SOFT_HLUTNM of \FSM_onehot_sys_state[2]_i_2\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sys_state_reg[0]\ : label is "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sys_state_reg[1]\ : label is "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sys_state_reg[2]\ : label is "sys_state_closed:001,sys_state_acknowledged:010,sys_state_ready:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_8\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sd_dat_o_sys[3]_i_10\ : label is "soft_lutpair51";
begin
  \FSM_onehot_state_reg[4]_2\ <= \^fsm_onehot_state_reg[4]_2\;
  \FSM_onehot_sys_state_reg[2]_0\ <= \^fsm_onehot_sys_state_reg[2]_0\;
  Q(6 downto 0) <= \^q\(6 downto 0);
  \axi_araddr_reg[2]\ <= \^axi_araddr_reg[2]\;
  axi_arready_reg(0) <= \^axi_arready_reg\(0);
  \block_size_reg[12]_0\(4 downto 0) <= \^block_size_reg[12]_0\(4 downto 0);
  dat_width_4_reg_0 <= \^dat_width_4_reg_0\;
  \dev_blocks_read_reg[0]_0\ <= \^dev_blocks_read_reg[0]_0\;
  \dev_blocks_read_reg[11]_0\(3 downto 0) <= \^dev_blocks_read_reg[11]_0\(3 downto 0);
  \dev_blocks_read_reg[15]_0\(3 downto 0) <= \^dev_blocks_read_reg[15]_0\(3 downto 0);
  \dev_blocks_read_reg[19]_0\(3 downto 0) <= \^dev_blocks_read_reg[19]_0\(3 downto 0);
  \dev_blocks_read_reg[23]_0\(3 downto 0) <= \^dev_blocks_read_reg[23]_0\(3 downto 0);
  \dev_blocks_read_reg[27]_0\(3 downto 0) <= \^dev_blocks_read_reg[27]_0\(3 downto 0);
  \dev_blocks_read_reg[31]_0\(3 downto 0) <= \^dev_blocks_read_reg[31]_0\(3 downto 0);
  \dev_blocks_read_reg[3]_0\(2 downto 0) <= \^dev_blocks_read_reg[3]_0\(2 downto 0);
  \dev_blocks_read_reg[7]_0\(3 downto 0) <= \^dev_blocks_read_reg[7]_0\(3 downto 0);
  multi_block_mode_reg_0 <= \^multi_block_mode_reg_0\;
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^axi_araddr_reg[2]\,
      I1 => sys_state(0),
      I2 => \FSM_onehot_sys_state_reg[0]_3\,
      I3 => sys_state(1),
      O => \/i__n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_1\,
      I1 => \FSM_onehot_state[0]_i_5_n_0\,
      I2 => \FSM_onehot_state_reg[5]_1\,
      I3 => \^q\(6),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFCCCC88888888"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_3_0\,
      I1 => \^q\(3),
      I2 => \^fsm_onehot_sys_state_reg[2]_0\,
      I3 => no_more_write_data,
      I4 => \^q\(4),
      I5 => \^q\(0),
      O => \FSM_onehot_state[0]_i_5_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0D0000"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_5_n_0\,
      I1 => \FSM_onehot_state[3]_i_6_n_0\,
      I2 => multi_block_mode,
      I3 => \FSM_onehot_state[3]_i_7_n_0\,
      I4 => \^q\(1),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[31]_0\(0),
      I1 => \^dev_blocks_read_reg[27]_0\(3),
      I2 => \^dev_blocks_read_reg[27]_0\(2),
      I3 => \^dev_blocks_read_reg[27]_0\(1),
      O => \FSM_onehot_state[3]_i_10_n_0\
    );
\FSM_onehot_state[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[23]_0\(1),
      I1 => \^dev_blocks_read_reg[27]_0\(0),
      I2 => \^dev_blocks_read_reg[23]_0\(2),
      I3 => \^dev_blocks_read_reg[23]_0\(3),
      I4 => \FSM_onehot_state[3]_i_14_n_0\,
      O => \FSM_onehot_state[3]_i_11_n_0\
    );
\FSM_onehot_state[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[3]_0\(2),
      I1 => \^dev_blocks_read_reg[3]_0\(1),
      I2 => \^dev_blocks_read_reg[7]_0\(0),
      I3 => \^dev_blocks_read_reg[3]_0\(0),
      O => \FSM_onehot_state[3]_i_13_n_0\
    );
\FSM_onehot_state[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[23]_0\(0),
      I1 => \^dev_blocks_read_reg[19]_0\(3),
      I2 => \^dev_blocks_read_reg[19]_0\(2),
      I3 => \^dev_blocks_read_reg[19]_0\(1),
      O => \FSM_onehot_state[3]_i_14_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F20000"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_5_n_0\,
      I1 => \FSM_onehot_state[3]_i_6_n_0\,
      I2 => multi_block_mode,
      I3 => \FSM_onehot_state[3]_i_7_n_0\,
      I4 => \^q\(1),
      O => \^multi_block_mode_reg_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_8_n_0\,
      I1 => \^dev_blocks_read_reg[15]_0\(2),
      I2 => \^dev_blocks_read_reg[15]_0\(1),
      I3 => \^dev_blocks_read_reg[19]_0\(0),
      I4 => \^dev_blocks_read_reg[15]_0\(3),
      I5 => \FSM_onehot_state[3]_i_9_n_0\,
      O => \FSM_onehot_state[3]_i_5_n_0\
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_10_n_0\,
      I1 => \^dev_blocks_read_reg[31]_0\(2),
      I2 => \^dev_blocks_read_reg[31]_0\(1),
      I3 => \^dev_blocks_read_reg[31]_0\(3),
      I4 => \^dev_blocks_read_reg[0]_0\,
      I5 => \FSM_onehot_state[3]_i_11_n_0\,
      O => \FSM_onehot_state[3]_i_6_n_0\
    );
\FSM_onehot_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD555D555D555"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_0\,
      I1 => block_limit_used,
      I2 => multi_block_mode,
      I3 => state_next4,
      I4 => \FSM_onehot_state[2]_i_2_1\,
      I5 => dat_got_block,
      O => \FSM_onehot_state[3]_i_7_n_0\
    );
\FSM_onehot_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[15]_0\(0),
      I1 => \^dev_blocks_read_reg[11]_0\(3),
      I2 => \^dev_blocks_read_reg[11]_0\(2),
      I3 => \^dev_blocks_read_reg[11]_0\(1),
      O => \FSM_onehot_state[3]_i_8_n_0\
    );
\FSM_onehot_state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^dev_blocks_read_reg[7]_0\(1),
      I1 => \^dev_blocks_read_reg[11]_0\(0),
      I2 => \^dev_blocks_read_reg[7]_0\(2),
      I3 => \^dev_blocks_read_reg[7]_0\(3),
      I4 => \FSM_onehot_state[3]_i_13_n_0\,
      O => \FSM_onehot_state[3]_i_9_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7550000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_2\,
      I1 => \FSM_onehot_state_reg[0]_0\,
      I2 => \^q\(6),
      I3 => \FSM_onehot_state_reg[5]_1\,
      I4 => \^q\(5),
      I5 => \FSM_onehot_state[5]_i_2_n_0\,
      O => \state_next__0\(5)
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F088000000"
    )
        port map (
      I0 => \^fsm_onehot_sys_state_reg[2]_0\,
      I1 => no_more_write_data,
      I2 => \FSM_onehot_sys_state_reg[0]_0\,
      I3 => \FSM_onehot_state_reg[5]_1\,
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(0),
      Q => \^q\(0),
      S => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(0),
      Q => \^q\(1),
      R => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(2),
      Q => \^q\(2),
      R => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(3),
      Q => \^q\(3),
      R => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(1),
      Q => \^q\(4),
      R => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(5),
      Q => \^q\(5),
      R => dat_width_4_reg_17
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(2),
      Q => \^q\(6),
      R => dat_width_4_reg_17
    );
\FSM_onehot_sys_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CF88"
    )
        port map (
      I0 => \^axi_araddr_reg[2]\,
      I1 => sys_state(0),
      I2 => \FSM_onehot_sys_state_reg[0]_3\,
      I3 => sys_state(1),
      O => \FSM_onehot_sys_state[1]_i_2_n_0\
    );
\FSM_onehot_sys_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F553555"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \card_status[11]_i_4\(0),
      I3 => \card_status[11]_i_4\(2),
      I4 => \card_status[11]_i_4\(1),
      I5 => \^q\(1),
      O => \FSM_onehot_sys_state[2]_i_10_n_0\
    );
\FSM_onehot_sys_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF77F800"
    )
        port map (
      I0 => \^axi_araddr_reg[2]\,
      I1 => sys_state(0),
      I2 => \FSM_onehot_sys_state_reg[0]_3\,
      I3 => sys_state(1),
      I4 => \^fsm_onehot_sys_state_reg[2]_0\,
      O => \FSM_onehot_sys_state[2]_i_2_n_0\
    );
\FSM_onehot_sys_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBF300FBFBF3F3"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_onehot_state_reg[4]_2\,
      I2 => \^q\(6),
      I3 => \FSM_onehot_sys_state_reg[0]_0\,
      I4 => \FSM_onehot_state_reg[5]_1\,
      I5 => \FSM_onehot_sys_state_reg[0]_1\,
      O => \FSM_onehot_sys_state[2]_i_3_n_0\
    );
\FSM_onehot_sys_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111100000001"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_sys_state_reg[0]_2\,
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(6),
      I5 => \FSM_onehot_sys_state[2]_i_10_n_0\,
      O => \FSM_onehot_sys_state[2]_i_5_n_0\
    );
\FSM_onehot_sys_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000407"
    )
        port map (
      I0 => \^q\(4),
      I1 => \FSM_onehot_state_reg[5]_1\,
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \FSM_onehot_sys_state[2]_i_4\,
      O => \FSM_onehot_sys_state[2]_i_8_n_0\
    );
\FSM_onehot_sys_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_n_120,
      Q => sys_state(0),
      R => '0'
    );
\FSM_onehot_sys_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_n_121,
      Q => sys_state(1),
      R => '0'
    );
\FSM_onehot_sys_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => fifo_n_122,
      Q => \^fsm_onehot_sys_state_reg[2]_0\,
      R => '0'
    );
\FSM_sequential_state[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      O => \FSM_onehot_state_reg[5]_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \FSM_sequential_state_reg[1]_1\,
      O => \FSM_onehot_state_reg[1]_5\(0)
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => dat_width_4_reg_17,
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \FSM_onehot_state_reg[1]_2\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \^fsm_onehot_state_reg[4]_2\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[28]_i_3\(0),
      I1 => \axi_rdata[28]_i_3_0\(0),
      I2 => \reg_saved_reg[24][0]\(1),
      I3 => \axi_rdata[28]_i_3_1\(0),
      I4 => \reg_saved_reg[24][0]\(0),
      I5 => may_write_data,
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[28]_i_3\(1),
      I1 => \axi_rdata[28]_i_3_0\(1),
      I2 => \reg_saved_reg[24][0]\(1),
      I3 => \axi_rdata[28]_i_3_1\(1),
      I4 => \reg_saved_reg[24][0]\(0),
      I5 => may_read_data,
      O => \axi_rdata[28]_i_5_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => S_AXI_ARVALID,
      O => \^axi_arready_reg\(0)
    );
\block_data_finished0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^block_size_reg[12]_0\(4),
      I1 => \block_data_finished0_carry__0\(0),
      O => \block_size_reg[12]_1\(0)
    );
block_data_finished0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_size_reg[12]_0\(2),
      I1 => O(2),
      I2 => \^block_size_reg[12]_0\(1),
      I3 => O(1),
      O => \block_size_reg[7]_0\(0)
    );
\block_size_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => \block_size_reg[12]_2\(4),
      Q => \^block_size_reg[12]_0\(4),
      S => dat_width_4_reg_17
    );
\block_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => \block_size_reg[12]_2\(0),
      Q => \^block_size_reg[12]_0\(0),
      R => dat_width_4_reg_17
    );
\block_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => \block_size_reg[12]_2\(1),
      Q => \^block_size_reg[12]_0\(1),
      R => dat_width_4_reg_17
    );
\block_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => \block_size_reg[12]_2\(2),
      Q => \^block_size_reg[12]_0\(2),
      R => dat_width_4_reg_17
    );
\block_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => \block_size_reg[12]_2\(3),
      Q => \^block_size_reg[12]_0\(3),
      R => dat_width_4_reg_17
    );
\card_status[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0355FFFFFFFFFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \card_status[11]_i_4\(0),
      I4 => \card_status[11]_i_4\(1),
      I5 => \card_status[11]_i_4\(2),
      O => \FSM_onehot_state_reg[6]_0\
    );
dat_width_4_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => dat_width_4_reg_18,
      Q => \^dat_width_4_reg_0\,
      R => dat_width_4_reg_17
    );
\dev_blocks_read[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dev_blocks_read_reg[0]_0\,
      O => \dev_blocks_read[0]_i_2_n_0\
    );
\dev_blocks_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[0]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[0]_0\,
      R => fifo_n_63
    );
\dev_blocks_read_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dev_blocks_read_reg[0]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[0]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[0]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \dev_blocks_read_reg[0]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[0]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[0]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^dev_blocks_read_reg[3]_0\(2 downto 0),
      S(0) => \dev_blocks_read[0]_i_2_n_0\
    );
\dev_blocks_read_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[8]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[11]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[8]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[11]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[12]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[15]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[8]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[12]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[12]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[12]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[12]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[12]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[12]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[15]_0\(3 downto 0)
    );
\dev_blocks_read_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[12]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[15]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[12]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[15]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[12]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[15]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[16]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[19]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[12]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[16]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[16]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[16]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[16]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[16]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[16]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[16]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[19]_0\(3 downto 0)
    );
\dev_blocks_read_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[16]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[19]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[16]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[19]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[16]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[19]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[0]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[3]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[20]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[23]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[16]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[20]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[20]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[20]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[20]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[20]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[20]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[20]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[23]_0\(3 downto 0)
    );
\dev_blocks_read_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[20]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[23]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[20]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[23]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[20]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[23]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[24]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[27]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[20]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[24]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[24]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[24]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[24]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[24]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[24]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[24]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[27]_0\(3 downto 0)
    );
\dev_blocks_read_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[24]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[27]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[24]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[27]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[24]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[27]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[28]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[31]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[24]_i_1_n_0\,
      CO(3) => \NLW_dev_blocks_read_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \dev_blocks_read_reg[28]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[28]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[28]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[28]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[28]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[28]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[31]_0\(3 downto 0)
    );
\dev_blocks_read_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[28]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[31]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[0]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[3]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[28]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[31]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[28]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[31]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[0]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[3]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[4]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[7]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[0]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[4]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[4]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[4]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[4]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[4]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[4]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[7]_0\(3 downto 0)
    );
\dev_blocks_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[4]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[7]_0\(1),
      R => fifo_n_63
    );
\dev_blocks_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[4]_i_1_n_5\,
      Q => \^dev_blocks_read_reg[7]_0\(2),
      R => fifo_n_63
    );
\dev_blocks_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[4]_i_1_n_4\,
      Q => \^dev_blocks_read_reg[7]_0\(3),
      R => fifo_n_63
    );
\dev_blocks_read_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[8]_i_1_n_7\,
      Q => \^dev_blocks_read_reg[11]_0\(0),
      R => fifo_n_63
    );
\dev_blocks_read_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dev_blocks_read_reg[4]_i_1_n_0\,
      CO(3) => \dev_blocks_read_reg[8]_i_1_n_0\,
      CO(2) => \dev_blocks_read_reg[8]_i_1_n_1\,
      CO(1) => \dev_blocks_read_reg[8]_i_1_n_2\,
      CO(0) => \dev_blocks_read_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dev_blocks_read_reg[8]_i_1_n_4\,
      O(2) => \dev_blocks_read_reg[8]_i_1_n_5\,
      O(1) => \dev_blocks_read_reg[8]_i_1_n_6\,
      O(0) => \dev_blocks_read_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^dev_blocks_read_reg[11]_0\(3 downto 0)
    );
\dev_blocks_read_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \dev_blocks_read_reg[8]_i_1_n_6\,
      Q => \^dev_blocks_read_reg[11]_0\(1),
      R => fifo_n_63
    );
\dev_last_block[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FEFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \FSM_onehot_sys_state[2]_i_4\,
      I4 => \dev_last_block[9]_i_6_n_0\,
      O => \dev_last_block[9]_i_4_n_0\
    );
\dev_last_block[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011111113111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \card_status[11]_i_4\(1),
      I3 => \card_status[11]_i_4\(2),
      I4 => \card_status[11]_i_4\(0),
      I5 => \^q\(4),
      O => \dev_last_block[9]_i_6_n_0\
    );
\dev_last_block_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => fifo_wraddr(7),
      Q => dev_last_block(7),
      R => fifo_n_63
    );
\dev_last_block_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => fifo_wraddr(8),
      Q => dev_last_block(8),
      R => fifo_n_63
    );
\dev_last_block_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => fifo_wraddr(9),
      Q => dev_last_block(9),
      R => fifo_n_63
    );
fifo: entity work.adapter_axi_sd_0_0_fifo_fwft
     port map (
      CO(0) => CO(0),
      D(2 downto 1) => \state_next__0\(3 downto 2),
      D(0) => \state_next__0\(0),
      E(0) => block_size0,
      \FSM_onehot_state_reg[0]\ => \FSM_onehot_state_reg[0]_0\,
      \FSM_onehot_state_reg[0]_0\ => \FSM_onehot_state[0]_i_3_n_0\,
      \FSM_onehot_state_reg[1]\ => SR(0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]_0\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state_reg[1]_1\,
      \FSM_onehot_state_reg[1]_2\ => \FSM_onehot_state_reg[1]_3\,
      \FSM_onehot_state_reg[1]_3\ => \FSM_onehot_state_reg[1]_4\,
      \FSM_onehot_state_reg[2]\ => \FSM_onehot_state_reg[2]_0\,
      \FSM_onehot_state_reg[2]_0\ => \FSM_onehot_state_reg[2]_1\,
      \FSM_onehot_state_reg[2]_1\ => \FSM_onehot_state_reg[2]_2\,
      \FSM_onehot_state_reg[2]_2\ => \FSM_onehot_state[2]_i_2_n_0\,
      \FSM_onehot_state_reg[3]\ => \^multi_block_mode_reg_0\,
      \FSM_onehot_state_reg[4]\ => \FSM_onehot_state_reg[4]_0\,
      \FSM_onehot_state_reg[4]_0\ => \FSM_onehot_state_reg[4]_1\,
      \FSM_onehot_sys_state[2]_i_4_0\(0) => \card_status[11]_i_4\(0),
      \FSM_onehot_sys_state[2]_i_4_1\ => \FSM_onehot_state[0]_i_3_0\,
      \FSM_onehot_sys_state[2]_i_4_2\ => \FSM_onehot_sys_state[2]_i_4_0\,
      \FSM_onehot_sys_state_reg[0]\ => fifo_n_120,
      \FSM_onehot_sys_state_reg[0]_0\ => fifo_n_121,
      \FSM_onehot_sys_state_reg[0]_1\ => fifo_n_122,
      \FSM_onehot_sys_state_reg[0]_2\ => \FSM_onehot_sys_state[2]_i_3_n_0\,
      \FSM_onehot_sys_state_reg[0]_3\ => \FSM_onehot_sys_state[2]_i_5_n_0\,
      \FSM_onehot_sys_state_reg[0]_4\ => \/i__n_0\,
      \FSM_onehot_sys_state_reg[1]\ => \FSM_onehot_sys_state[1]_i_2_n_0\,
      \FSM_onehot_sys_state_reg[2]\ => \FSM_onehot_sys_state[2]_i_8_n_0\,
      \FSM_onehot_sys_state_reg[2]_0\ => \FSM_onehot_sys_state[2]_i_2_n_0\,
      \FSM_sequential_state[1]_i_2\(1) => \FSM_sequential_state[1]_i_2\(2),
      \FSM_sequential_state[1]_i_2\(0) => \FSM_sequential_state[1]_i_2\(0),
      O(1) => \write_ok2_carry__1_n_6\,
      O(0) => \write_ok2_carry__1_n_7\,
      Q(6 downto 0) => \^q\(6 downto 0),
      S(1) => fifo_n_6,
      S(0) => fifo_n_7,
      SR(0) => fifo_n_63,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARVALID => S_AXI_ARVALID,
      \addr_out_cur[9]_i_3_0\ => \axi_rdata_reg[0]_0\,
      \addr_out_cur[9]_i_3_1\ => \axi_rdata_reg[0]\,
      \addr_out_cur[9]_i_8_0\(4 downto 0) => \reg_saved_reg[24][0]\(4 downto 0),
      \addr_write_reg[3]_0\(3) => fifo_n_22,
      \addr_write_reg[3]_0\(2) => fifo_n_23,
      \addr_write_reg[3]_0\(1) => fifo_n_24,
      \addr_write_reg[3]_0\(0) => fifo_n_25,
      \addr_write_reg[3]_1\ => \addr_write_reg[3]\,
      \addr_write_reg[7]_0\(3) => fifo_n_18,
      \addr_write_reg[7]_0\(2) => fifo_n_19,
      \addr_write_reg[7]_0\(1) => fifo_n_20,
      \addr_write_reg[7]_0\(0) => fifo_n_21,
      \addr_write_reg[9]_0\ => \addr_write_reg[9]\,
      \addr_write_reg[9]_1\(9 downto 0) => fifo_wraddr(9 downto 0),
      \addr_write_reg[9]_2\ => \^fsm_onehot_sys_state_reg[2]_0\,
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]_1\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_2\,
      \axi_rdata_reg[0]_1\ => \axi_rdata_reg[0]_3\,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]\,
      \axi_rdata_reg[10]_0\ => \axi_rdata_reg[10]_0\,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]\,
      \axi_rdata_reg[11]_0\ => \axi_rdata_reg[11]_0\,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]\,
      \axi_rdata_reg[12]_0\ => \axi_rdata_reg[12]_0\,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]\,
      \axi_rdata_reg[13]_0\ => \axi_rdata_reg[13]_0\,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]\,
      \axi_rdata_reg[14]_0\ => \axi_rdata_reg[14]_0\,
      \axi_rdata_reg[15]\ => \axi_rdata_reg[15]\,
      \axi_rdata_reg[15]_0\ => \axi_rdata_reg[15]_0\,
      \axi_rdata_reg[16]\ => \axi_rdata_reg[16]\,
      \axi_rdata_reg[16]_0\ => \axi_rdata_reg[16]_0\,
      \axi_rdata_reg[17]\ => \axi_rdata_reg[17]\,
      \axi_rdata_reg[17]_0\ => \axi_rdata_reg[17]_0\,
      \axi_rdata_reg[18]\ => \axi_rdata_reg[18]\,
      \axi_rdata_reg[18]_0\ => \axi_rdata_reg[18]_0\,
      \axi_rdata_reg[19]\ => \axi_rdata_reg[19]\,
      \axi_rdata_reg[19]_0\ => \axi_rdata_reg[19]_0\,
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]\,
      \axi_rdata_reg[1]_0\ => \axi_rdata_reg[1]_0\,
      \axi_rdata_reg[20]\ => \axi_rdata_reg[20]\,
      \axi_rdata_reg[20]_0\ => \axi_rdata_reg[20]_0\,
      \axi_rdata_reg[21]\ => \axi_rdata_reg[21]\,
      \axi_rdata_reg[21]_0\ => \axi_rdata_reg[21]_0\,
      \axi_rdata_reg[22]\ => \axi_rdata_reg[22]\,
      \axi_rdata_reg[22]_0\ => \axi_rdata_reg[22]_0\,
      \axi_rdata_reg[23]\ => \axi_rdata_reg[23]\,
      \axi_rdata_reg[23]_0\ => \axi_rdata_reg[23]_0\,
      \axi_rdata_reg[24]\ => \axi_rdata_reg[24]\,
      \axi_rdata_reg[24]_0\ => \axi_rdata_reg[24]_0\,
      \axi_rdata_reg[25]\ => \axi_rdata_reg[25]\,
      \axi_rdata_reg[25]_0\ => \axi_rdata_reg[25]_0\,
      \axi_rdata_reg[26]\ => \axi_rdata_reg[26]\,
      \axi_rdata_reg[26]_0\ => \axi_rdata_reg[26]_0\,
      \axi_rdata_reg[27]\ => \axi_rdata_reg[27]\,
      \axi_rdata_reg[27]_0\ => \axi_rdata[27]_i_5_n_0\,
      \axi_rdata_reg[28]\ => \axi_rdata_reg[28]\,
      \axi_rdata_reg[28]_0\ => \axi_rdata[28]_i_5_n_0\,
      \axi_rdata_reg[29]\ => \axi_rdata_reg[29]\,
      \axi_rdata_reg[29]_0\ => \axi_rdata_reg[29]_0\,
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]\,
      \axi_rdata_reg[2]_0\ => \axi_rdata_reg[2]_0\,
      \axi_rdata_reg[30]\ => \axi_rdata_reg[30]\,
      \axi_rdata_reg[30]_0\ => \axi_rdata_reg[30]_0\,
      \axi_rdata_reg[31]\(31 downto 0) => \axi_rdata_reg[31]\(31 downto 0),
      \axi_rdata_reg[31]_0\ => \axi_rdata_reg[31]_0\,
      \axi_rdata_reg[31]_1\ => \axi_rdata_reg[31]_1\,
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]\,
      \axi_rdata_reg[3]_0\ => \axi_rdata_reg[3]_0\,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]\,
      \axi_rdata_reg[4]_0\ => \axi_rdata_reg[4]_0\,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]\,
      \axi_rdata_reg[5]_0\ => \axi_rdata_reg[5]_0\,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]\,
      \axi_rdata_reg[6]_0\ => \axi_rdata_reg[6]_0\,
      \axi_rdata_reg[7]\ => \axi_rdata_reg[7]\,
      \axi_rdata_reg[7]_0\ => \axi_rdata_reg[7]_0\,
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]\,
      \axi_rdata_reg[8]_0\ => \axi_rdata_reg[8]_0\,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]\,
      \axi_rdata_reg[9]_0\ => \axi_rdata_reg[9]_0\,
      \block_size_reg[5]\ => \dev_last_block[9]_i_4_n_0\,
      \buf_write_reg[47]\ => \^dat_width_4_reg_0\,
      \card_status_resp_reg[8]\(3) => \write_ok2_carry__0_n_4\,
      \card_status_resp_reg[8]\(2) => \write_ok2_carry__0_n_5\,
      \card_status_resp_reg[8]\(1) => \write_ok2_carry__0_n_6\,
      \card_status_resp_reg[8]\(0) => \write_ok2_carry__0_n_7\,
      dat_got_word => dat_got_word,
      dat_width_4_reg => dat_width_4_reg_1,
      dat_width_4_reg_0 => dat_width_4_reg_2,
      dat_width_4_reg_1 => dat_width_4_reg_3,
      dat_width_4_reg_10 => dat_width_4_reg_12,
      dat_width_4_reg_11 => dat_width_4_reg_13,
      dat_width_4_reg_12 => dat_width_4_reg_14,
      dat_width_4_reg_13 => dat_width_4_reg_15,
      dat_width_4_reg_14 => dat_width_4_reg_16,
      dat_width_4_reg_2 => dat_width_4_reg_4,
      dat_width_4_reg_3 => dat_width_4_reg_5,
      dat_width_4_reg_4 => dat_width_4_reg_6,
      dat_width_4_reg_5 => dat_width_4_reg_7,
      dat_width_4_reg_6 => dat_width_4_reg_8,
      dat_width_4_reg_7 => dat_width_4_reg_9,
      dat_width_4_reg_8 => dat_width_4_reg_10,
      dat_width_4_reg_9 => dat_width_4_reg_11,
      dat_wrote_new_word => dat_wrote_new_word,
      data_write_en => data_write_en,
      \dev_last_block_reg[7]\ => dat_width_4_reg_17,
      \dev_last_block_reg[7]_0\ => \dev_last_block_reg[7]_0\,
      empty_reg_0 => empty_reg,
      empty_reg_1 => empty_reg_0,
      may_read_data => may_read_data,
      new_sd_clk => new_sd_clk,
      ram_reg_0 => ram_reg,
      ram_reg_1 => ram_reg_0,
      ram_reg_10 => ram_reg_9,
      ram_reg_11 => ram_reg_10,
      ram_reg_12 => ram_reg_11,
      ram_reg_13 => ram_reg_12,
      ram_reg_14 => ram_reg_13,
      ram_reg_15 => ram_reg_14,
      ram_reg_16 => ram_reg_15,
      ram_reg_17 => ram_reg_16,
      ram_reg_18 => ram_reg_17,
      ram_reg_19 => ram_reg_18,
      ram_reg_2 => ram_reg_1,
      ram_reg_20 => ram_reg_19,
      ram_reg_21 => ram_reg_20,
      ram_reg_22 => ram_reg_21,
      ram_reg_23 => ram_reg_22,
      ram_reg_24 => ram_reg_23,
      ram_reg_25 => ram_reg_24,
      ram_reg_26 => ram_reg_25,
      ram_reg_27 => ram_reg_26,
      ram_reg_28 => ram_reg_27,
      ram_reg_29 => ram_reg_28,
      ram_reg_3 => ram_reg_2,
      ram_reg_30 => ram_reg_29,
      ram_reg_31 => ram_reg_30,
      ram_reg_32 => ram_reg_31,
      ram_reg_33 => ram_reg_32,
      ram_reg_34 => ram_reg_33,
      ram_reg_35 => ram_reg_34,
      ram_reg_36 => ram_reg_35,
      ram_reg_37 => ram_reg_36,
      ram_reg_38 => ram_reg_37,
      ram_reg_39 => ram_reg_38,
      ram_reg_4 => ram_reg_3,
      ram_reg_40 => ram_reg_39,
      ram_reg_41 => ram_reg_40,
      ram_reg_42 => ram_reg_41,
      ram_reg_43 => ram_reg_42,
      ram_reg_44 => ram_reg_43,
      ram_reg_45 => ram_reg_44,
      ram_reg_46 => ram_reg_45,
      ram_reg_47 => ram_reg_46,
      ram_reg_48 => ram_reg_47,
      ram_reg_49 => ram_reg_48,
      ram_reg_5 => ram_reg_4,
      ram_reg_50 => ram_reg_49,
      ram_reg_51 => ram_reg_50,
      ram_reg_52 => ram_reg_51,
      ram_reg_53 => ram_reg_52,
      ram_reg_54 => ram_reg_53,
      ram_reg_55 => ram_reg_54,
      ram_reg_56 => ram_reg_55,
      ram_reg_57 => ram_reg_56,
      ram_reg_58 => ram_reg_57,
      ram_reg_59 => ram_reg_58,
      ram_reg_6 => ram_reg_5,
      ram_reg_60 => ram_reg_59,
      ram_reg_61 => ram_reg_60,
      ram_reg_62 => ram_reg_61,
      ram_reg_63 => ram_reg_62,
      ram_reg_64(31 downto 0) => ram_reg_63(31 downto 0),
      ram_reg_65(31 downto 0) => ram_reg_64(31 downto 0),
      ram_reg_7 => ram_reg_6,
      ram_reg_8 => ram_reg_7,
      ram_reg_9 => ram_reg_8,
      sys_may_read_next => sys_may_read_next,
      sys_may_read_reg_i_2_0(2 downto 0) => dev_last_block(9 downto 7),
      sys_may_write_next => sys_may_write_next,
      sys_may_write_reg(0) => \write_ok2_carry__1_n_1\,
      sys_may_write_reg_0(3) => write_ok2_carry_n_4,
      sys_may_write_reg_0(2) => write_ok2_carry_n_5,
      sys_may_write_reg_0(1) => write_ok2_carry_n_6,
      sys_may_write_reg_0(0) => write_ok2_carry_n_7,
      sys_state(0) => sys_state(0)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^block_size_reg[12]_0\(2),
      I1 => O(0),
      I2 => \^block_size_reg[12]_0\(1),
      I3 => \block_data_finished0_inferred__0/i__carry\(0),
      O => \block_size_reg[7]_1\(0)
    );
\i__i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_saved_reg[24][0]\(0),
      I1 => \reg_saved_reg[24][0]\(3),
      I2 => \reg_saved_reg[24][0]\(1),
      I3 => \reg_saved_reg[24][0]\(2),
      I4 => \reg_saved_reg[24][0]\(4),
      I5 => \^axi_arready_reg\(0),
      O => \^axi_araddr_reg[2]\
    );
interrupt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => cmd_unread,
      I1 => interrupt_0(1),
      I2 => cmd_saved_unread,
      I3 => interrupt_0(0),
      I4 => interrupt_INST_0_i_1_n_0,
      I5 => interrupt_1,
      O => interrupt
    );
interrupt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => interrupt_0(2),
      I1 => may_write_data,
      I2 => interrupt_0(3),
      I3 => may_read_data,
      O => interrupt_INST_0_i_1_n_0
    );
invalid_dat_width_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => invalid_dat_width_reg_0,
      Q => invalid_dat_width,
      R => '0'
    );
multi_block_mode_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => block_size0,
      D => multi_block_mode_next,
      Q => multi_block_mode,
      R => dat_width_4_reg_17
    );
\sd_dat_o_sys[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2\(1),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \FSM_sequential_state_reg[1]\
    );
state_next4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state_next4_carry_n_0,
      CO(2) => state_next4_carry_n_1,
      CO(1) => state_next4_carry_n_2,
      CO(0) => state_next4_carry_n_3,
      CYINIT => '1',
      DI(3) => state_next4_carry_i_1_n_0,
      DI(2) => state_next4_carry_i_2_n_0,
      DI(1) => state_next4_carry_i_3_n_0,
      DI(0) => state_next4_carry_i_4_n_0,
      O(3 downto 0) => NLW_state_next4_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\state_next4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state_next4_carry_n_0,
      CO(3) => \state_next4_carry__0_n_0\,
      CO(2) => \state_next4_carry__0_n_1\,
      CO(1) => \state_next4_carry__0_n_2\,
      CO(0) => \state_next4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \state_next4_carry__0_i_1_n_0\,
      DI(2) => \state_next4_carry__0_i_2_n_0\,
      DI(1) => \state_next4_carry__0_i_3_n_0\,
      DI(0) => \state_next4_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_state_next4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \state_next4_carry__1_0\(3 downto 0)
    );
\state_next4_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[15]_0\(3),
      I1 => \state_next4_carry__2_1\(15),
      I2 => \^dev_blocks_read_reg[15]_0\(2),
      I3 => \state_next4_carry__2_1\(14),
      O => \state_next4_carry__0_i_1_n_0\
    );
\state_next4_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[15]_0\(1),
      I1 => \state_next4_carry__2_1\(13),
      I2 => \^dev_blocks_read_reg[15]_0\(0),
      I3 => \state_next4_carry__2_1\(12),
      O => \state_next4_carry__0_i_2_n_0\
    );
\state_next4_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[11]_0\(3),
      I1 => \state_next4_carry__2_1\(11),
      I2 => \^dev_blocks_read_reg[11]_0\(2),
      I3 => \state_next4_carry__2_1\(10),
      O => \state_next4_carry__0_i_3_n_0\
    );
\state_next4_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[11]_0\(1),
      I1 => \state_next4_carry__2_1\(9),
      I2 => \^dev_blocks_read_reg[11]_0\(0),
      I3 => \state_next4_carry__2_1\(8),
      O => \state_next4_carry__0_i_4_n_0\
    );
\state_next4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_next4_carry__0_n_0\,
      CO(3) => \state_next4_carry__1_n_0\,
      CO(2) => \state_next4_carry__1_n_1\,
      CO(1) => \state_next4_carry__1_n_2\,
      CO(0) => \state_next4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \state_next4_carry__1_i_1_n_0\,
      DI(2) => \state_next4_carry__1_i_2_n_0\,
      DI(1) => \state_next4_carry__1_i_3_n_0\,
      DI(0) => \state_next4_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_state_next4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \state_next4_carry__2_0\(3 downto 0)
    );
\state_next4_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[23]_0\(3),
      I1 => \state_next4_carry__2_1\(23),
      I2 => \^dev_blocks_read_reg[23]_0\(2),
      I3 => \state_next4_carry__2_1\(22),
      O => \state_next4_carry__1_i_1_n_0\
    );
\state_next4_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[23]_0\(1),
      I1 => \state_next4_carry__2_1\(21),
      I2 => \^dev_blocks_read_reg[23]_0\(0),
      I3 => \state_next4_carry__2_1\(20),
      O => \state_next4_carry__1_i_2_n_0\
    );
\state_next4_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[19]_0\(3),
      I1 => \state_next4_carry__2_1\(19),
      I2 => \^dev_blocks_read_reg[19]_0\(2),
      I3 => \state_next4_carry__2_1\(18),
      O => \state_next4_carry__1_i_3_n_0\
    );
\state_next4_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[19]_0\(1),
      I1 => \state_next4_carry__2_1\(17),
      I2 => \^dev_blocks_read_reg[19]_0\(0),
      I3 => \state_next4_carry__2_1\(16),
      O => \state_next4_carry__1_i_4_n_0\
    );
\state_next4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_next4_carry__1_n_0\,
      CO(3) => state_next4,
      CO(2) => \state_next4_carry__2_n_1\,
      CO(1) => \state_next4_carry__2_n_2\,
      CO(0) => \state_next4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \state_next4_carry__2_i_1_n_0\,
      DI(2) => \state_next4_carry__2_i_2_n_0\,
      DI(1) => \state_next4_carry__2_i_3_n_0\,
      DI(0) => \state_next4_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_state_next4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \FSM_onehot_state[3]_i_7_0\(3 downto 0)
    );
\state_next4_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[31]_0\(3),
      I1 => \state_next4_carry__2_1\(31),
      I2 => \^dev_blocks_read_reg[31]_0\(2),
      I3 => \state_next4_carry__2_1\(30),
      O => \state_next4_carry__2_i_1_n_0\
    );
\state_next4_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[31]_0\(1),
      I1 => \state_next4_carry__2_1\(29),
      I2 => \^dev_blocks_read_reg[31]_0\(0),
      I3 => \state_next4_carry__2_1\(28),
      O => \state_next4_carry__2_i_2_n_0\
    );
\state_next4_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[27]_0\(3),
      I1 => \state_next4_carry__2_1\(27),
      I2 => \^dev_blocks_read_reg[27]_0\(2),
      I3 => \state_next4_carry__2_1\(26),
      O => \state_next4_carry__2_i_3_n_0\
    );
\state_next4_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[27]_0\(1),
      I1 => \state_next4_carry__2_1\(25),
      I2 => \^dev_blocks_read_reg[27]_0\(0),
      I3 => \state_next4_carry__2_1\(24),
      O => \state_next4_carry__2_i_4_n_0\
    );
state_next4_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[7]_0\(3),
      I1 => \state_next4_carry__2_1\(7),
      I2 => \^dev_blocks_read_reg[7]_0\(2),
      I3 => \state_next4_carry__2_1\(6),
      O => state_next4_carry_i_1_n_0
    );
state_next4_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[7]_0\(1),
      I1 => \state_next4_carry__2_1\(5),
      I2 => \^dev_blocks_read_reg[7]_0\(0),
      I3 => \state_next4_carry__2_1\(4),
      O => state_next4_carry_i_2_n_0
    );
state_next4_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[3]_0\(2),
      I1 => \state_next4_carry__2_1\(3),
      I2 => \^dev_blocks_read_reg[3]_0\(1),
      I3 => \state_next4_carry__2_1\(2),
      O => state_next4_carry_i_3_n_0
    );
state_next4_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^dev_blocks_read_reg[3]_0\(0),
      I1 => \state_next4_carry__2_1\(1),
      I2 => \^dev_blocks_read_reg[0]_0\,
      I3 => \state_next4_carry__2_1\(0),
      O => state_next4_carry_i_4_n_0
    );
sys_may_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sys_may_read_next,
      Q => may_read_data,
      R => dat_width_4_reg_17
    );
sys_may_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sys_may_write_next,
      Q => may_write_data,
      R => dat_width_4_reg_17
    );
write_ok2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_ok2_carry_n_0,
      CO(2) => write_ok2_carry_n_1,
      CO(1) => write_ok2_carry_n_2,
      CO(0) => write_ok2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => fifo_wraddr(3 downto 0),
      O(3) => write_ok2_carry_n_4,
      O(2) => write_ok2_carry_n_5,
      O(1) => write_ok2_carry_n_6,
      O(0) => write_ok2_carry_n_7,
      S(3) => fifo_n_22,
      S(2) => fifo_n_23,
      S(1) => fifo_n_24,
      S(0) => fifo_n_25
    );
\write_ok2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_ok2_carry_n_0,
      CO(3) => \write_ok2_carry__0_n_0\,
      CO(2) => \write_ok2_carry__0_n_1\,
      CO(1) => \write_ok2_carry__0_n_2\,
      CO(0) => \write_ok2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => fifo_wraddr(7 downto 4),
      O(3) => \write_ok2_carry__0_n_4\,
      O(2) => \write_ok2_carry__0_n_5\,
      O(1) => \write_ok2_carry__0_n_6\,
      O(0) => \write_ok2_carry__0_n_7\,
      S(3) => fifo_n_18,
      S(2) => fifo_n_19,
      S(1) => fifo_n_20,
      S(0) => fifo_n_21
    );
\write_ok2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_ok2_carry__0_n_0\,
      CO(3) => \NLW_write_ok2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \write_ok2_carry__1_n_1\,
      CO(1) => \NLW_write_ok2_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \write_ok2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => fifo_wraddr(9 downto 8),
      O(3 downto 2) => \NLW_write_ok2_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \write_ok2_carry__1_n_6\,
      O(0) => \write_ok2_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => fifo_n_6,
      S(0) => fifo_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_dat_interface is
  port (
    read_block_end : out STD_LOGIC;
    dat_got_word : out STD_LOGIC;
    dat_got_block : out STD_LOGIC;
    sd_dat_t_sys : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_crc_err_reg_0 : out STD_LOGIC;
    dat_wrote_new_word : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    read_crc_err_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : out STD_LOGIC;
    \crc_reg[10]\ : out STD_LOGIC;
    \crc_reg[2]\ : out STD_LOGIC;
    \crc_reg[2]_0\ : out STD_LOGIC;
    \crc_reg[10]_0\ : out STD_LOGIC;
    \sd_dat_o_sys_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sd_dat_o_sys_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    read_crc_err_reg_2 : in STD_LOGIC;
    \block_data_finished0_carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state[0]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \block_data_finished0_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dev_blocks_read_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \crc_reg[15]\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[3]_1\ : in STD_LOGIC;
    \block_data_finished0_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \sd_dat_o_sys_reg[0]_1\ : in STD_LOGIC;
    \crc_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \buf_write_reg[8]_0\ : in STD_LOGIC;
    \buf_write_reg[9]_0\ : in STD_LOGIC;
    \buf_write_reg[10]_0\ : in STD_LOGIC;
    \buf_write_reg[11]_0\ : in STD_LOGIC;
    \buf_write_reg[12]_0\ : in STD_LOGIC;
    \buf_write_reg[13]_0\ : in STD_LOGIC;
    \buf_write_reg[14]_0\ : in STD_LOGIC;
    \buf_write_reg[24]_0\ : in STD_LOGIC;
    \buf_write_reg[25]_0\ : in STD_LOGIC;
    \buf_write_reg[26]_0\ : in STD_LOGIC;
    \buf_write_reg[27]_0\ : in STD_LOGIC;
    \buf_write_reg[28]_0\ : in STD_LOGIC;
    \buf_write_reg[29]_0\ : in STD_LOGIC;
    \buf_write_reg[30]_0\ : in STD_LOGIC;
    \buf_write_reg[32]_0\ : in STD_LOGIC;
    \buf_write_reg[33]_0\ : in STD_LOGIC;
    \buf_write_reg[34]_0\ : in STD_LOGIC;
    \buf_write_reg[35]_0\ : in STD_LOGIC;
    \buf_write_reg[36]_0\ : in STD_LOGIC;
    \buf_write_reg[37]_0\ : in STD_LOGIC;
    \buf_write_reg[38]_0\ : in STD_LOGIC;
    \buf_write_reg[39]_0\ : in STD_LOGIC;
    \buf_write_reg[40]_0\ : in STD_LOGIC;
    \buf_write_reg[41]_0\ : in STD_LOGIC;
    \buf_write_reg[42]_0\ : in STD_LOGIC;
    \buf_write_reg[43]_0\ : in STD_LOGIC;
    \buf_write_reg[44]_0\ : in STD_LOGIC;
    \buf_write_reg[45]_0\ : in STD_LOGIC;
    \buf_write_reg[46]_0\ : in STD_LOGIC;
    \buf_write_reg[48]_0\ : in STD_LOGIC;
    \buf_write_reg[49]_0\ : in STD_LOGIC;
    \buf_write_reg[50]_0\ : in STD_LOGIC;
    \buf_write_reg[51]_0\ : in STD_LOGIC;
    \buf_write_reg[52]_0\ : in STD_LOGIC;
    \buf_write_reg[53]_0\ : in STD_LOGIC;
    \buf_write_reg[54]_0\ : in STD_LOGIC;
    \buf_write_reg[55]_0\ : in STD_LOGIC;
    \buf_write_reg[56]_0\ : in STD_LOGIC;
    \buf_write_reg[57]_0\ : in STD_LOGIC;
    \buf_write_reg[58]_0\ : in STD_LOGIC;
    \buf_write_reg[59]_0\ : in STD_LOGIC;
    \buf_write_reg[60]_0\ : in STD_LOGIC;
    \buf_write_reg[62]_0\ : in STD_LOGIC;
    \crc_reg[0]_0\ : in STD_LOGIC;
    \buf_write_reg[61]_0\ : in STD_LOGIC;
    \buf_write_reg[15]_0\ : in STD_LOGIC;
    \buf_write_reg[31]_0\ : in STD_LOGIC;
    \buf_write_reg[47]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \sd_dat_o_sys_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC;
    \crc[15]_i_4\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_1\ : in STD_LOGIC;
    \sd_dat_o_sys[3]_i_3\ : in STD_LOGIC;
    \crc_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_empty : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_dat_interface : entity is "dat_interface";
end adapter_axi_sd_0_0_dat_interface;

architecture STRUCTURE of adapter_axi_sd_0_0_dat_interface is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \block_data_finished0_carry__0_n_1\ : STD_LOGIC;
  signal \block_data_finished0_carry__0_n_2\ : STD_LOGIC;
  signal \block_data_finished0_carry__0_n_3\ : STD_LOGIC;
  signal block_data_finished0_carry_n_0 : STD_LOGIC;
  signal block_data_finished0_carry_n_1 : STD_LOGIC;
  signal block_data_finished0_carry_n_2 : STD_LOGIC;
  signal block_data_finished0_carry_n_3 : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \block_data_finished0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal buf_read_next : STD_LOGIC_VECTOR ( 24 downto 8 );
  signal buf_write : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \buf_write[0]_i_2_n_0\ : STD_LOGIC;
  signal \buf_write[60]_i_2_n_0\ : STD_LOGIC;
  signal \buf_write[61]_i_2_n_0\ : STD_LOGIC;
  signal \buf_write[62]_i_3_n_0\ : STD_LOGIC;
  signal buf_write_next : STD_LOGIC_VECTOR ( 47 downto 15 );
  signal \buf_write_next__0\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal counter0 : STD_LOGIC;
  signal counter14_in : STD_LOGIC;
  signal \counter1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \counter_inc_carry__0_n_0\ : STD_LOGIC;
  signal \counter_inc_carry__0_n_1\ : STD_LOGIC;
  signal \counter_inc_carry__0_n_2\ : STD_LOGIC;
  signal \counter_inc_carry__0_n_3\ : STD_LOGIC;
  signal \counter_inc_carry__0_n_4\ : STD_LOGIC;
  signal \counter_inc_carry__1_n_2\ : STD_LOGIC;
  signal \counter_inc_carry__1_n_3\ : STD_LOGIC;
  signal \counter_inc_carry__1_n_5\ : STD_LOGIC;
  signal \counter_inc_carry__1_n_6\ : STD_LOGIC;
  signal \counter_inc_carry__1_n_7\ : STD_LOGIC;
  signal counter_inc_carry_n_0 : STD_LOGIC;
  signal counter_inc_carry_n_1 : STD_LOGIC;
  signal counter_inc_carry_n_2 : STD_LOGIC;
  signal counter_inc_carry_n_3 : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \^dat_got_block\ : STD_LOGIC;
  signal got_block0 : STD_LOGIC;
  signal got_block_i_2_n_0 : STD_LOGIC;
  signal got_word_c : STD_LOGIC;
  signal got_word_i_2_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_1\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_20\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_21\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_22\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_23\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_24\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_25\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_26\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_27\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_3\ : STD_LOGIC;
  signal \line_crc[0].line_crc_n_4\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_1\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_11\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_27\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_28\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_29\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_3\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_30\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_31\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_32\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_33\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_34\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_35\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_36\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_37\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_38\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_39\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_4\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_40\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_41\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_42\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_43\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_44\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_45\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_46\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_47\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_48\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_49\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_5\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_50\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_51\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_52\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_53\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_54\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_55\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_56\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_57\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_58\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_59\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_6\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_60\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_7\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_8\ : STD_LOGIC;
  signal \line_crc[1].line_crc_n_9\ : STD_LOGIC;
  signal \line_crc[2].line_crc_n_0\ : STD_LOGIC;
  signal \line_crc[3].line_crc_n_0\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal read_block_end_i_1_n_0 : STD_LOGIC;
  signal \^read_crc_err_reg_0\ : STD_LOGIC;
  signal read_data_next : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal resetn1 : STD_LOGIC;
  signal \sd_dat_o_sys[3]_i_4_n_0\ : STD_LOGIC;
  signal \^sd_dat_o_sys_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_t_sys[3]_i_1_n_0\ : STD_LOGIC;
  signal \sd_dat_t_sys[3]_i_2_n_0\ : STD_LOGIC;
  signal \sd_dat_t_sys[3]_i_3_n_0\ : STD_LOGIC;
  signal \sd_dat_t_sys[3]_i_4_n_0\ : STD_LOGIC;
  signal \sd_dat_t_sys[3]_i_5_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 to 2 );
  signal state_next210_in : STD_LOGIC;
  signal state_next3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrote_new_word_i_1_n_0 : STD_LOGIC;
  signal NLW_block_data_finished0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_data_finished0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_block_data_finished0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_data_finished0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_data_finished0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_block_data_finished0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_inc_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_counter_inc_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "state_reading_z:0110,state_reading_data:0100,state_reading_crc:0101,state_reading_awaiting_data:0011,state_writing_crc:1101,state_writing_start_bit:1011,state_writing_data:1100,state_reading_got_error:1000,state_writing_no_data:1010,state_reading_busy:0001,state_reading_busy_end:0010,state_reading_resp:0111,state_writing_delay:1001,state_idle:0000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_read[16]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \buf_read[24]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of got_block_i_2 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \read_data[10]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \read_data[11]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \read_data[12]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \read_data[13]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \read_data[14]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \read_data[15]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \read_data[16]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \read_data[17]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \read_data[18]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \read_data[19]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \read_data[1]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \read_data[20]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \read_data[21]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \read_data[22]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \read_data[23]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \read_data[24]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \read_data[25]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \read_data[26]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \read_data[27]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \read_data[28]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \read_data[29]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \read_data[2]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \read_data[30]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \read_data[3]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \read_data[4]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \read_data[5]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \read_data[6]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \read_data[7]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \read_data[8]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \read_data[9]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \sd_dat_t_sys[3]_i_5\ : label is "soft_lutpair125";
begin
  CO(0) <= \^co\(0);
  D(3 downto 0) <= \^d\(3 downto 0);
  E(0) <= \^e\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  dat_got_block <= \^dat_got_block\;
  read_crc_err_reg_0 <= \^read_crc_err_reg_0\;
  \sd_dat_o_sys_reg[3]_0\(3 downto 0) <= \^sd_dat_o_sys_reg[3]_0\(3 downto 0);
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => fifo_empty,
      I4 => state(2),
      O => \FSM_sequential_state_reg[3]_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA20AAAAAAAA"
    )
        port map (
      I0 => \crc_reg[15]\,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \line_crc[1].line_crc_n_1\,
      I3 => \FSM_sequential_state[0]_i_4_n_0\,
      I4 => \FSM_sequential_state[0]_i_5_n_0\,
      I5 => \line_crc[1].line_crc_n_4\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000D0000000D0"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_34\,
      I1 => \^q\(2),
      I2 => state(2),
      I3 => \^q\(1),
      I4 => \line_crc[0].line_crc_n_22\,
      I5 => \^q\(0),
      O => \FSM_sequential_state[0]_i_10_n_0\
    );
\FSM_sequential_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000040400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => state(2),
      I3 => \^e\(0),
      I4 => \^q\(0),
      I5 => \crc_reg[0]\(0),
      O => \FSM_sequential_state[0]_i_11_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080FFFFFFFFFF00"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^e\(0),
      I2 => \FSM_sequential_state_reg[0]_1\,
      I3 => \FSM_sequential_state_reg[0]_2\,
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0040"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_9_n_0\,
      I1 => state(2),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \FSM_sequential_state[0]_i_10_n_0\,
      I5 => \FSM_sequential_state[0]_i_11_n_0\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C0008000800"
    )
        port map (
      I0 => \line_crc[0].line_crc_n_26\,
      I1 => \^q\(2),
      I2 => state(2),
      I3 => \^q\(1),
      I4 => \^e\(0),
      I5 => \^q\(0),
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400000FF4000FFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => state_next3(2),
      I2 => \^read_crc_err_reg_0\,
      I3 => \^e\(0),
      I4 => \^q\(0),
      I5 => state_next210_in,
      O => \FSM_sequential_state[0]_i_9_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF002F0000"
    )
        port map (
      I0 => \^e\(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \FSM_sequential_state_reg[1]_1\,
      I4 => \FSM_sequential_state_reg[1]_2\,
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \FSM_sequential_state_reg[1]_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F02020F0F000F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \line_crc[1].line_crc_n_39\,
      I2 => state(2),
      I3 => \line_crc[1].line_crc_n_34\,
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \FSM_sequential_state_reg[0]_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFFCCCFECCCEC"
    )
        port map (
      I0 => \^d\(2),
      I1 => state(2),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \crc_reg[0]\(0),
      I5 => \line_crc[0].line_crc_n_21\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A8A8A888A88"
    )
        port map (
      I0 => \crc_reg[15]\,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \^q\(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080803FFF0000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^e\(0),
      I3 => \^d\(0),
      I4 => state(2),
      I5 => \^q\(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000CFCC0000"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_39\,
      I1 => \^q\(1),
      I2 => \dev_blocks_read_reg[31]\(0),
      I3 => \FSM_sequential_state_reg[3]_1\,
      I4 => state(2),
      I5 => \^q\(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2222FF0FFFFF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_0\,
      I1 => \^d\(0),
      I2 => \^e\(0),
      I3 => \crc_reg[0]\(0),
      I4 => \^q\(1),
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F4F0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => state(2),
      I3 => \line_crc[1].line_crc_n_36\,
      I4 => \crc_reg[15]\,
      I5 => \FSM_sequential_state[3]_i_5_n_0\,
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033003300330332"
    )
        port map (
      I0 => \FSM_sequential_state_reg[3]_1\,
      I1 => state(2),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \dev_blocks_read_reg[31]\(0),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state_reg[1]_3\(0),
      Q => \^q\(1),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_state[3]_i_2_n_0\,
      Q => \^q\(2),
      R => \sd_dat_o_sys_reg[0]_0\
    );
block_data_finished0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => block_data_finished0_carry_n_0,
      CO(2) => block_data_finished0_carry_n_1,
      CO(1) => block_data_finished0_carry_n_2,
      CO(0) => block_data_finished0_carry_n_3,
      CYINIT => '1',
      DI(3) => \line_crc[1].line_crc_n_40\,
      DI(2) => \line_crc[1].line_crc_n_41\,
      DI(1) => \line_crc[1].line_crc_n_42\,
      DI(0) => \line_crc[1].line_crc_n_43\,
      O(3 downto 0) => NLW_block_data_finished0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \block_data_finished0_carry__0_0\(0),
      S(2) => \line_crc[1].line_crc_n_44\,
      S(1) => \line_crc[1].line_crc_n_45\,
      S(0) => \line_crc[1].line_crc_n_46\
    );
\block_data_finished0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => block_data_finished0_carry_n_0,
      CO(3) => \NLW_block_data_finished0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \block_data_finished0_carry__0_n_1\,
      CO(1) => \block_data_finished0_carry__0_n_2\,
      CO(0) => \block_data_finished0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \line_crc[1].line_crc_n_49\,
      DI(1) => \line_crc[1].line_crc_n_50\,
      DI(0) => \line_crc[1].line_crc_n_51\,
      O(3 downto 0) => \NLW_block_data_finished0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FSM_sequential_state[0]_i_14\(0),
      S(1) => \line_crc[1].line_crc_n_47\,
      S(0) => \line_crc[1].line_crc_n_48\
    );
\block_data_finished0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \block_data_finished0_inferred__0/i__carry_n_0\,
      CO(2) => \block_data_finished0_inferred__0/i__carry_n_1\,
      CO(1) => \block_data_finished0_inferred__0/i__carry_n_2\,
      CO(0) => \block_data_finished0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \line_crc[1].line_crc_n_52\,
      DI(2) => \line_crc[1].line_crc_n_53\,
      DI(1) => \line_crc[1].line_crc_n_54\,
      DI(0) => \line_crc[1].line_crc_n_55\,
      O(3 downto 0) => \NLW_block_data_finished0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \line_crc[1].line_crc_n_5\,
      S(2) => \block_data_finished0_inferred__0/i__carry__0_0\(0),
      S(1) => \line_crc[1].line_crc_n_6\,
      S(0) => \line_crc[1].line_crc_n_7\
    );
\block_data_finished0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_data_finished0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_block_data_finished0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \block_data_finished0_inferred__0/i__carry__0_n_1\,
      CO(1) => \block_data_finished0_inferred__0/i__carry__0_n_2\,
      CO(0) => \block_data_finished0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^co\(0),
      DI(1) => \line_crc[1].line_crc_n_56\,
      DI(0) => \line_crc[1].line_crc_n_57\,
      O(3 downto 0) => \NLW_block_data_finished0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \line_crc[1].line_crc_n_58\,
      S(1) => \line_crc[1].line_crc_n_59\,
      S(0) => \line_crc[1].line_crc_n_60\
    );
\buf_read[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(2),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(16),
      O => buf_read_next(16)
    );
\buf_read[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(3),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(24),
      O => buf_read_next(24)
    );
\buf_read[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(1),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(8),
      O => buf_read_next(8)
    );
\buf_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \crc_reg[0]\(0),
      Q => p_0_in1_in(1),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(10),
      Q => p_0_in1_in(11),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(11),
      Q => p_0_in1_in(12),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(12),
      Q => p_0_in1_in(13),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(13),
      Q => p_0_in1_in(14),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(14),
      Q => p_0_in1_in(15),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(15),
      Q => p_0_in1_in(16),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_read_next(16),
      Q => p_0_in1_in(17),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(17),
      Q => p_0_in1_in(18),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(18),
      Q => p_0_in1_in(19),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(19),
      Q => p_0_in1_in(20),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(1),
      Q => p_0_in1_in(2),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(20),
      Q => p_0_in1_in(21),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(21),
      Q => p_0_in1_in(22),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(22),
      Q => p_0_in1_in(23),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(23),
      Q => p_0_in1_in(24),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_read_next(24),
      Q => p_0_in1_in(25),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(25),
      Q => p_0_in1_in(26),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(26),
      Q => p_0_in1_in(27),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(27),
      Q => p_0_in1_in(28),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(28),
      Q => p_0_in1_in(29),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(29),
      Q => p_0_in1_in(30),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(2),
      Q => p_0_in1_in(3),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(30),
      Q => p_0_in1_in(31),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(3),
      Q => p_0_in1_in(4),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(4),
      Q => p_0_in1_in(5),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(5),
      Q => p_0_in1_in(6),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(6),
      Q => p_0_in1_in(7),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(7),
      Q => p_0_in1_in(8),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_read_next(8),
      Q => p_0_in1_in(9),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_read_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in1_in(9),
      Q => p_0_in1_in(10),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => state(2),
      I3 => \^q\(0),
      I4 => \sd_dat_t_sys[3]_i_4_n_0\,
      O => \buf_write[0]_i_2_n_0\
    );
\buf_write[60]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \buf_write_reg[60]_0\,
      I1 => \line_crc[1].line_crc_n_28\,
      I2 => \^read_crc_err_reg_0\,
      I3 => \line_crc[1].line_crc_n_29\,
      I4 => buf_write(59),
      O => \buf_write[60]_i_2_n_0\
    );
\buf_write[61]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \buf_write_reg[61]_0\,
      I1 => \line_crc[1].line_crc_n_28\,
      I2 => \^read_crc_err_reg_0\,
      I3 => \line_crc[1].line_crc_n_29\,
      I4 => buf_write(60),
      O => \buf_write[61]_i_2_n_0\
    );
\buf_write[62]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \buf_write_reg[62]_0\,
      I1 => \line_crc[1].line_crc_n_28\,
      I2 => \^read_crc_err_reg_0\,
      I3 => \line_crc[1].line_crc_n_29\,
      I4 => buf_write(61),
      O => \buf_write[62]_i_3_n_0\
    );
\buf_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(0),
      Q => buf_write(0),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(10),
      Q => buf_write(10),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(11),
      Q => buf_write(11),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(12),
      Q => buf_write(12),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(13),
      Q => buf_write(13),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(14),
      Q => buf_write(14),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_write_next(15),
      Q => buf_write(15),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(16),
      Q => buf_write(16),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(17),
      Q => buf_write(17),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(18),
      Q => buf_write(18),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(19),
      Q => buf_write(19),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(1),
      Q => buf_write(1),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(20),
      Q => buf_write(20),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(21),
      Q => buf_write(21),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(22),
      Q => buf_write(22),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(23),
      Q => buf_write(23),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(24),
      Q => buf_write(24),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(25),
      Q => buf_write(25),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(26),
      Q => buf_write(26),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(27),
      Q => buf_write(27),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(28),
      Q => buf_write(28),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(29),
      Q => buf_write(29),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(2),
      Q => buf_write(2),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(30),
      Q => buf_write(30),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_write_next(31),
      Q => buf_write(31),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(32),
      Q => buf_write(32),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(33),
      Q => buf_write(33),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(34),
      Q => buf_write(34),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(35),
      Q => buf_write(35),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(36),
      Q => buf_write(36),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(37),
      Q => buf_write(37),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(38),
      Q => buf_write(38),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(39),
      Q => buf_write(39),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(3),
      Q => buf_write(3),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(40),
      Q => buf_write(40),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(41),
      Q => buf_write(41),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(42),
      Q => buf_write(42),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(43),
      Q => buf_write(43),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(44),
      Q => buf_write(44),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(45),
      Q => buf_write(45),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(46),
      Q => buf_write(46),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => buf_write_next(47),
      Q => buf_write(47),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(48),
      Q => buf_write(48),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(49),
      Q => buf_write(49),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(4),
      Q => buf_write(4),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(50),
      Q => buf_write(50),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(51),
      Q => buf_write(51),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(52),
      Q => buf_write(52),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(53),
      Q => buf_write(53),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(54),
      Q => buf_write(54),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(55),
      Q => buf_write(55),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(56),
      Q => buf_write(56),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(57),
      Q => buf_write(57),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(58),
      Q => buf_write(58),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(59),
      Q => buf_write(59),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(5),
      Q => buf_write(5),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(60),
      Q => buf_write(60),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(61),
      Q => buf_write(61),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(62),
      Q => buf_write(62),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(6),
      Q => buf_write(6),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(7),
      Q => buf_write(7),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(8),
      Q => buf_write(8),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\buf_write_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \buf_write_next__0\(9),
      Q => buf_write(9),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\counter1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => counter14_in,
      CO(0) => \counter1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_counter1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__0_n_0\,
      S(0) => \i__carry_i_2_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => state_next3(0)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter14_in,
      I1 => \sd_dat_o_sys_reg[0]_0\,
      O => counter0
    );
counter_inc_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_inc_carry_n_0,
      CO(2) => counter_inc_carry_n_1,
      CO(1) => counter_inc_carry_n_2,
      CO(0) => counter_inc_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \^d\(0),
      O(2) => p_0_in0_in,
      O(1) => state_next3(2),
      O(0) => state_next210_in,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => p_1_in1_in,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter_inc_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_inc_carry_n_0,
      CO(3) => \counter_inc_carry__0_n_0\,
      CO(2) => \counter_inc_carry__0_n_1\,
      CO(1) => \counter_inc_carry__0_n_2\,
      CO(0) => \counter_inc_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_inc_carry__0_n_4\,
      O(2 downto 0) => \^d\(3 downto 1),
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => p_1_in
    );
\counter_inc_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_inc_carry__0_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \NLW_counter_inc_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \counter_inc_carry__1_n_2\,
      CO(0) => \counter_inc_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_inc_carry__1_O_UNCONNECTED\(3),
      O(2) => \counter_inc_carry__1_n_5\,
      O(1) => \counter_inc_carry__1_n_6\,
      O(0) => \counter_inc_carry__1_n_7\,
      S(3) => '1',
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => state_next3(0),
      Q => \counter_reg_n_0_[0]\,
      R => counter0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \counter_inc_carry__1_n_6\,
      Q => \counter_reg_n_0_[10]\,
      R => counter0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \counter_inc_carry__1_n_5\,
      Q => \counter_reg_n_0_[11]\,
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => state_next210_in,
      Q => \counter_reg_n_0_[1]\,
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => state_next3(2),
      Q => \counter_reg_n_0_[2]\,
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => p_0_in0_in,
      Q => p_1_in1_in,
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \^d\(0),
      Q => \counter_reg_n_0_[4]\,
      R => counter0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \^d\(1),
      Q => p_1_in,
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \^d\(2),
      Q => \counter_reg_n_0_[6]\,
      R => counter0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \^d\(3),
      Q => \counter_reg_n_0_[7]\,
      R => counter0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \counter_inc_carry__0_n_4\,
      Q => \counter_reg_n_0_[8]\,
      R => counter0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \counter_inc_carry__1_n_7\,
      Q => \counter_reg_n_0_[9]\,
      R => counter0
    );
\dev_last_block[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^read_crc_err_reg_0\,
      I1 => \^dat_got_block\,
      I2 => \dev_blocks_read_reg[31]\(0),
      O => read_crc_err_reg_1(0)
    );
got_block_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(2),
      I1 => state(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => got_block_i_2_n_0,
      O => got_block0
    );
got_block_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_3\,
      I1 => \line_crc[1].line_crc_n_31\,
      I2 => \line_crc[1].line_crc_n_30\,
      I3 => \line_crc[1].line_crc_n_9\,
      O => got_block_i_2_n_0
    );
got_block_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => got_block0,
      Q => \^dat_got_block\,
      R => \sd_dat_o_sys_reg[0]_0\
    );
got_word_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => got_word_i_2_n_0,
      I1 => \^e\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => state(2),
      O => got_word_c
    );
got_word_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_1_in1_in,
      I2 => \sd_dat_o_sys_reg[3]_1\,
      I3 => \^d\(1),
      I4 => p_1_in,
      O => got_word_i_2_n_0
    );
got_word_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => got_word_c,
      Q => dat_got_word,
      R => \sd_dat_o_sys_reg[0]_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"595A5A65"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_9\,
      I1 => state(2),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066606660000"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_3\,
      I1 => \line_crc[0].line_crc_n_25\,
      I2 => \line_crc[1].line_crc_n_37\,
      I3 => \line_crc[0].line_crc_n_0\,
      I4 => \line_crc[1].line_crc_n_0\,
      I5 => \line_crc[1].line_crc_n_30\,
      O => \i__carry_i_2_n_0\
    );
\line_crc[0].line_crc\: entity work.\adapter_axi_sd_0_0_line_crc__parameterized0\
     port map (
      CO(0) => \block_data_finished0_carry__0_n_1\,
      D(0) => \line_crc[0].line_crc_n_1\,
      \FSM_sequential_state[0]_i_10\ => \sd_dat_o_sys_reg[3]_1\,
      \FSM_sequential_state[0]_i_10_0\(0) => \block_data_finished0_inferred__0/i__carry__0_n_1\,
      \FSM_sequential_state[0]_i_5\ => \FSM_sequential_state_reg[0]_1\,
      \FSM_sequential_state_reg[0]\ => \line_crc[0].line_crc_n_20\,
      \FSM_sequential_state_reg[0]_0\ => \line_crc[0].line_crc_n_21\,
      \FSM_sequential_state_reg[0]_1\ => \line_crc[0].line_crc_n_27\,
      \FSM_sequential_state_reg[1]\ => \line_crc[0].line_crc_n_4\,
      \FSM_sequential_state_reg[1]_0\ => \line_crc[0].line_crc_n_23\,
      \FSM_sequential_state_reg[1]_1\ => \line_crc[0].line_crc_n_24\,
      \FSM_sequential_state_reg[2]\ => \line_crc[0].line_crc_n_3\,
      \FSM_sequential_state_reg[3]\ => \line_crc[0].line_crc_n_0\,
      \FSM_sequential_state_reg[3]_0\ => \line_crc[0].line_crc_n_25\,
      O(1) => \^d\(0),
      O(0) => state_next210_in,
      Q(3) => \^q\(2),
      Q(2) => state(2),
      Q(1 downto 0) => \^q\(1 downto 0),
      SR(0) => resetn1,
      S_AXI_ACLK => S_AXI_ACLK,
      \buf_write_reg[48]\ => \line_crc[1].line_crc_n_27\,
      \buf_write_reg[48]_0\ => \buf_write_reg[48]_0\,
      \buf_write_reg[48]_1\ => \line_crc[1].line_crc_n_28\,
      \buf_write_reg[48]_2\ => \line_crc[1].line_crc_n_29\,
      \buf_write_reg[49]\ => \buf_write_reg[49]_0\,
      \buf_write_reg[50]\ => \buf_write_reg[50]_0\,
      \buf_write_reg[51]\ => \buf_write_reg[51]_0\,
      \buf_write_reg[52]\ => \buf_write_reg[52]_0\,
      \buf_write_reg[53]\ => \buf_write_reg[53]_0\,
      \buf_write_reg[54]\ => \buf_write_reg[54]_0\,
      \buf_write_reg[55]\ => \buf_write_reg[55]_0\,
      \buf_write_reg[56]\ => \buf_write_reg[56]_0\,
      \buf_write_reg[57]\ => \buf_write_reg[57]_0\,
      \buf_write_reg[58]\ => \buf_write_reg[58]_0\,
      \buf_write_reg[59]\ => \buf_write_reg[59]_0\,
      \buf_write_reg[60]\ => \buf_write[60]_i_2_n_0\,
      \buf_write_reg[61]\ => \buf_write[61]_i_2_n_0\,
      \buf_write_reg[62]\ => \buf_write[62]_i_3_n_0\,
      \crc[15]_i_10_0\(0) => \dev_blocks_read_reg[31]\(0),
      \crc[15]_i_11_0\ => \FSM_sequential_state_reg[3]_1\,
      \crc[15]_i_11_1\ => \line_crc[1].line_crc_n_39\,
      \crc[15]_i_11_2\ => \^read_crc_err_reg_0\,
      \crc[15]_i_2\ => \line_crc[1].line_crc_n_37\,
      \crc[15]_i_3\ => \line_crc[1].line_crc_n_38\,
      \crc[15]_i_3_0\(0) => \^d\(2),
      \crc[15]_i_5_0\ => \sd_dat_o_sys_reg[1]_0\,
      \crc_reg[0]_0\(0) => \crc_reg[0]\(0),
      \crc_reg[0]_1\(12) => buf_write(62),
      \crc_reg[0]_1\(11 downto 0) => buf_write(58 downto 47),
      \crc_reg[0]_2\ => \crc_reg[0]_0\,
      \crc_reg[10]_0\ => \crc_reg[10]\,
      \crc_reg[14]_0\(14 downto 0) => \buf_write_next__0\(62 downto 48),
      \crc_reg[15]_0\ => \crc_reg[15]\,
      \crc_reg[15]_1\ => \line_crc[1].line_crc_n_31\,
      \crc_reg[15]_2\ => \^e\(0),
      dat_width_4_reg => \line_crc[0].line_crc_n_22\,
      \sd_clk_div_d_reg[3]\ => \line_crc[0].line_crc_n_26\,
      \sd_dat_o_sys[3]_i_2_0\ => \line_crc[1].line_crc_n_35\,
      \sd_dat_o_sys_reg[0]\ => \line_crc[1].line_crc_n_33\,
      \sd_dat_o_sys_reg[0]_0\ => \line_crc[1].line_crc_n_32\,
      \sd_dat_o_sys_reg[0]_1\ => \sd_dat_o_sys_reg[0]_1\,
      \sd_dat_o_sys_reg[0]_2\ => \line_crc[1].line_crc_n_9\,
      \sd_dat_o_sys_reg[0]_3\ => \line_crc[1].line_crc_n_3\,
      \sd_dat_o_sys_reg[0]_4\ => \line_crc[1].line_crc_n_30\
    );
\line_crc[1].line_crc\: entity work.\adapter_axi_sd_0_0_line_crc__parameterized0_0\
     port map (
      CO(0) => \block_data_finished0_carry__0_n_1\,
      D(0) => \line_crc[1].line_crc_n_8\,
      DI(3) => \line_crc[1].line_crc_n_40\,
      DI(2) => \line_crc[1].line_crc_n_41\,
      DI(1) => \line_crc[1].line_crc_n_42\,
      DI(0) => \line_crc[1].line_crc_n_43\,
      \FSM_onehot_state_reg[1]\ => \line_crc[1].line_crc_n_30\,
      \FSM_sequential_state_reg[0]\ => \line_crc[1].line_crc_n_4\,
      \FSM_sequential_state_reg[0]_0\ => \line_crc[1].line_crc_n_27\,
      \FSM_sequential_state_reg[0]_1\ => \line_crc[1].line_crc_n_32\,
      \FSM_sequential_state_reg[0]_2\ => \line_crc[1].line_crc_n_34\,
      \FSM_sequential_state_reg[0]_3\ => \line_crc[1].line_crc_n_35\,
      \FSM_sequential_state_reg[0]_4\ => \line_crc[1].line_crc_n_36\,
      \FSM_sequential_state_reg[0]_5\(0) => \dev_blocks_read_reg[31]\(0),
      \FSM_sequential_state_reg[0]_6\ => \FSM_sequential_state_reg[0]_3\,
      \FSM_sequential_state_reg[1]\ => \line_crc[1].line_crc_n_0\,
      \FSM_sequential_state_reg[1]_0\ => \line_crc[1].line_crc_n_1\,
      \FSM_sequential_state_reg[1]_1\ => \line_crc[1].line_crc_n_33\,
      \FSM_sequential_state_reg[2]\ => \line_crc[1].line_crc_n_3\,
      \FSM_sequential_state_reg[2]_0\ => \line_crc[1].line_crc_n_31\,
      \FSM_sequential_state_reg[2]_1\ => \line_crc[1].line_crc_n_37\,
      \FSM_sequential_state_reg[3]\ => \line_crc[1].line_crc_n_9\,
      \FSM_sequential_state_reg[3]_0\ => \line_crc[1].line_crc_n_29\,
      \FSM_sequential_state_reg[3]_1\ => \^read_crc_err_reg_0\,
      O(3) => \counter_inc_carry__0_n_4\,
      O(2 downto 0) => \^d\(3 downto 1),
      Q(3) => \^q\(2),
      Q(2) => state(2),
      Q(1 downto 0) => \^q\(1 downto 0),
      S(2) => \line_crc[1].line_crc_n_5\,
      S(1) => \line_crc[1].line_crc_n_6\,
      S(0) => \line_crc[1].line_crc_n_7\,
      SR(0) => \line_crc[1].line_crc_n_11\,
      S_AXI_ACLK => S_AXI_ACLK,
      \block_data_finished0_inferred__0/i__carry\(3) => \^d\(0),
      \block_data_finished0_inferred__0/i__carry\(2) => p_0_in0_in,
      \block_data_finished0_inferred__0/i__carry\(1) => state_next3(2),
      \block_data_finished0_inferred__0/i__carry\(0) => state_next210_in,
      \block_data_finished0_inferred__0/i__carry__0\(4 downto 0) => \block_data_finished0_inferred__0/i__carry__0_1\(4 downto 0),
      \block_data_finished0_inferred__0/i__carry__0_0\(2) => \counter_inc_carry__1_n_5\,
      \block_data_finished0_inferred__0/i__carry__0_0\(1) => \counter_inc_carry__1_n_6\,
      \block_data_finished0_inferred__0/i__carry__0_0\(0) => \counter_inc_carry__1_n_7\,
      \block_data_finished0_inferred__0/i__carry__0_1\(0) => \^co\(0),
      \block_size_reg[12]\(2) => \line_crc[1].line_crc_n_49\,
      \block_size_reg[12]\(1) => \line_crc[1].line_crc_n_50\,
      \block_size_reg[12]\(0) => \line_crc[1].line_crc_n_51\,
      \block_size_reg[12]_0\(1) => \line_crc[1].line_crc_n_56\,
      \block_size_reg[12]_0\(0) => \line_crc[1].line_crc_n_57\,
      \block_size_reg[5]\(2) => \line_crc[1].line_crc_n_44\,
      \block_size_reg[5]\(1) => \line_crc[1].line_crc_n_45\,
      \block_size_reg[5]\(0) => \line_crc[1].line_crc_n_46\,
      \block_size_reg[9]\(3) => \line_crc[1].line_crc_n_52\,
      \block_size_reg[9]\(2) => \line_crc[1].line_crc_n_53\,
      \block_size_reg[9]\(1) => \line_crc[1].line_crc_n_54\,
      \block_size_reg[9]\(0) => \line_crc[1].line_crc_n_55\,
      \buf_write[59]_i_3_0\(2) => p_1_in,
      \buf_write[59]_i_3_0\(1) => p_1_in1_in,
      \buf_write[59]_i_3_0\(0) => \counter_reg_n_0_[0]\,
      buf_write_next(0) => buf_write_next(47),
      \buf_write_reg[32]\ => \buf_write_reg[32]_0\,
      \buf_write_reg[33]\ => \buf_write_reg[33]_0\,
      \buf_write_reg[34]\ => \buf_write_reg[34]_0\,
      \buf_write_reg[35]\ => \buf_write_reg[35]_0\,
      \buf_write_reg[36]\ => \buf_write_reg[36]_0\,
      \buf_write_reg[37]\ => \buf_write_reg[37]_0\,
      \buf_write_reg[38]\ => \buf_write_reg[38]_0\,
      \buf_write_reg[39]\ => \buf_write_reg[39]_0\,
      \buf_write_reg[40]\ => \buf_write_reg[40]_0\,
      \buf_write_reg[41]\ => \buf_write_reg[41]_0\,
      \buf_write_reg[42]\ => \buf_write_reg[42]_0\,
      \buf_write_reg[43]\ => \buf_write_reg[43]_0\,
      \buf_write_reg[44]\ => \buf_write_reg[44]_0\,
      \buf_write_reg[45]\ => \buf_write_reg[45]_0\,
      \buf_write_reg[46]\ => \buf_write_reg[46]_0\,
      \buf_write_reg[47]\(15 downto 0) => buf_write(46 downto 31),
      \buf_write_reg[47]_0\ => \buf_write_reg[47]_0\,
      \counter_reg[0]\ => \line_crc[1].line_crc_n_39\,
      \counter_reg[11]\(1) => \line_crc[1].line_crc_n_47\,
      \counter_reg[11]\(0) => \line_crc[1].line_crc_n_48\,
      \counter_reg[11]_0\(2) => \line_crc[1].line_crc_n_58\,
      \counter_reg[11]_0\(1) => \line_crc[1].line_crc_n_59\,
      \counter_reg[11]_0\(0) => \line_crc[1].line_crc_n_60\,
      \counter_reg[5]\ => \line_crc[1].line_crc_n_28\,
      \crc[15]_i_16_0\(0) => \block_data_finished0_inferred__0/i__carry__0_n_1\,
      \crc[15]_i_4_0\ => \line_crc[0].line_crc_n_26\,
      \crc[15]_i_4_1\ => \FSM_sequential_state_reg[0]_2\,
      \crc[15]_i_4_2\ => \crc[15]_i_4\,
      \crc_reg[0]_0\(1 downto 0) => \crc_reg[0]\(1 downto 0),
      \crc_reg[10]_0\ => \crc_reg[10]_0\,
      \crc_reg[12]_0\ => \line_crc[0].line_crc_n_3\,
      \crc_reg[14]_0\(14 downto 0) => \buf_write_next__0\(46 downto 32),
      \crc_reg[15]_0\(0) => resetn1,
      \crc_reg[15]_1\ => \line_crc[0].line_crc_n_20\,
      \crc_reg[15]_2\(1 downto 0) => \crc_reg[15]_0\(1 downto 0),
      dat_width_4_reg => \line_crc[1].line_crc_n_38\,
      \sd_clk_div_d_reg[3]\ => \^e\(0),
      \sd_dat_o_sys[3]_i_2\ => \line_crc[0].line_crc_n_27\,
      \sd_dat_o_sys[3]_i_3_0\ => \sd_dat_o_sys[3]_i_3\,
      \sd_dat_o_sys[3]_i_5\ => \FSM_sequential_state_reg[0]_1\,
      \sd_dat_o_sys_reg[0]\ => \line_crc[0].line_crc_n_24\,
      \sd_dat_o_sys_reg[0]_0\ => \line_crc[0].line_crc_n_23\,
      \sd_dat_o_sys_reg[0]_1\ => \crc_reg[15]\,
      \sd_dat_o_sys_reg[1]\ => \sd_dat_o_sys_reg[3]_1\,
      \sd_dat_o_sys_reg[1]_0\ => \line_crc[0].line_crc_n_0\,
      \sd_dat_o_sys_reg[1]_1\ => \sd_dat_o_sys[3]_i_4_n_0\,
      \sd_dat_o_sys_reg[1]_2\ => \sd_dat_o_sys_reg[1]_0\
    );
\line_crc[2].line_crc\: entity work.\adapter_axi_sd_0_0_line_crc__parameterized0_1\
     port map (
      D(0) => \line_crc[2].line_crc_n_0\,
      Q(15 downto 0) => buf_write(30 downto 15),
      SR(0) => \line_crc[1].line_crc_n_11\,
      S_AXI_ACLK => S_AXI_ACLK,
      buf_write_next(0) => buf_write_next(31),
      \buf_write_reg[16]\ => \line_crc[1].line_crc_n_27\,
      \buf_write_reg[16]_0\ => \line_crc[1].line_crc_n_28\,
      \buf_write_reg[16]_1\ => \line_crc[1].line_crc_n_29\,
      \buf_write_reg[24]\ => \buf_write_reg[24]_0\,
      \buf_write_reg[25]\ => \buf_write_reg[25]_0\,
      \buf_write_reg[26]\ => \buf_write_reg[26]_0\,
      \buf_write_reg[27]\ => \buf_write_reg[27]_0\,
      \buf_write_reg[28]\ => \buf_write_reg[28]_0\,
      \buf_write_reg[29]\ => \buf_write_reg[29]_0\,
      \buf_write_reg[30]\ => \buf_write_reg[30]_0\,
      \buf_write_reg[31]\ => \buf_write_reg[31]_0\,
      \crc_reg[0]_0\(0) => \crc_reg[0]\(2),
      \crc_reg[12]_0\ => \line_crc[0].line_crc_n_3\,
      \crc_reg[14]_0\(14 downto 0) => \buf_write_next__0\(30 downto 16),
      \crc_reg[15]_0\ => \^e\(0),
      \crc_reg[2]_0\ => \crc_reg[2]_0\,
      \sd_dat_o_sys_reg[2]\ => \line_crc[0].line_crc_n_0\,
      \sd_dat_o_sys_reg[2]_0\ => \line_crc[1].line_crc_n_9\,
      \sd_dat_o_sys_reg[2]_1\ => \sd_dat_o_sys[3]_i_4_n_0\,
      \sd_dat_o_sys_reg[2]_2\ => \sd_dat_o_sys_reg[3]_1\
    );
\line_crc[3].line_crc\: entity work.\adapter_axi_sd_0_0_line_crc__parameterized0_2\
     port map (
      D(0) => \line_crc[3].line_crc_n_0\,
      Q(14 downto 0) => buf_write(14 downto 0),
      SR(0) => \line_crc[1].line_crc_n_11\,
      S_AXI_ACLK => S_AXI_ACLK,
      buf_write_next(0) => buf_write_next(15),
      \buf_write_reg[0]\ => \buf_write[0]_i_2_n_0\,
      \buf_write_reg[10]\ => \buf_write_reg[10]_0\,
      \buf_write_reg[11]\ => \buf_write_reg[11]_0\,
      \buf_write_reg[12]\ => \buf_write_reg[12]_0\,
      \buf_write_reg[13]\ => \buf_write_reg[13]_0\,
      \buf_write_reg[14]\ => \buf_write_reg[14]_0\,
      \buf_write_reg[15]\ => \buf_write_reg[15]_0\,
      \buf_write_reg[1]\ => \line_crc[1].line_crc_n_27\,
      \buf_write_reg[1]_0\ => \line_crc[1].line_crc_n_28\,
      \buf_write_reg[1]_1\ => \line_crc[1].line_crc_n_29\,
      \buf_write_reg[8]\ => \buf_write_reg[8]_0\,
      \buf_write_reg[9]\ => \buf_write_reg[9]_0\,
      \crc_reg[0]_0\(0) => \crc_reg[0]\(3),
      \crc_reg[12]_0\ => \line_crc[0].line_crc_n_3\,
      \crc_reg[14]_0\(14 downto 0) => \buf_write_next__0\(14 downto 0),
      \crc_reg[15]_0\ => \^e\(0),
      \crc_reg[2]_0\ => \crc_reg[2]\,
      \sd_dat_o_sys_reg[3]\ => \line_crc[0].line_crc_n_0\,
      \sd_dat_o_sys_reg[3]_0\ => \line_crc[1].line_crc_n_9\,
      \sd_dat_o_sys_reg[3]_1\ => \sd_dat_o_sys_reg[3]_1\,
      \sd_dat_o_sys_reg[3]_2\ => \sd_dat_o_sys[3]_i_4_n_0\
    );
read_block_end_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_30\,
      I1 => \^q\(0),
      I2 => state(2),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => read_block_end_i_1_n_0
    );
read_block_end_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_block_end_i_1_n_0,
      Q => read_block_end,
      R => \sd_dat_o_sys_reg[0]_0\
    );
read_crc_err_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => read_crc_err_reg_2,
      Q => \^read_crc_err_reg_0\,
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(10),
      O => read_data_next(10)
    );
\read_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(26),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(11),
      O => read_data_next(11)
    );
\read_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(12),
      O => read_data_next(12)
    );
\read_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(11),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(13),
      O => read_data_next(13)
    );
\read_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(19),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(14),
      O => read_data_next(14)
    );
\read_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(27),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(15),
      O => read_data_next(15)
    );
\read_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(16),
      O => read_data_next(16)
    );
\read_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(12),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(17),
      O => read_data_next(17)
    );
\read_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(18),
      O => read_data_next(18)
    );
\read_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(28),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(19),
      O => read_data_next(19)
    );
\read_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(1),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(1),
      O => read_data_next(1)
    );
\read_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(20),
      O => read_data_next(20)
    );
\read_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(13),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(21),
      O => read_data_next(21)
    );
\read_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(22),
      O => read_data_next(22)
    );
\read_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(29),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(23),
      O => read_data_next(23)
    );
\read_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(24),
      O => read_data_next(24)
    );
\read_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(25),
      O => read_data_next(25)
    );
\read_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(26),
      O => read_data_next(26)
    );
\read_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(30),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(27),
      O => read_data_next(27)
    );
\read_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(28),
      O => read_data_next(28)
    );
\read_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(29),
      O => read_data_next(29)
    );
\read_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(2),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(2),
      O => read_data_next(2)
    );
\read_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(23),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(30),
      O => read_data_next(30)
    );
\read_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \crc_reg[0]\(3),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(3),
      O => read_data_next(3)
    );
\read_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(4),
      O => read_data_next(4)
    );
\read_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(9),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(5),
      O => read_data_next(5)
    );
\read_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(6),
      O => read_data_next(6)
    );
\read_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(25),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(7),
      O => read_data_next(7)
    );
\read_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(8),
      O => read_data_next(8)
    );
\read_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(10),
      I1 => \sd_dat_o_sys_reg[3]_1\,
      I2 => p_0_in1_in(9),
      O => read_data_next(9)
    );
\read_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => \crc_reg[0]\(0),
      Q => \read_data_reg[31]_0\(0),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(10),
      Q => \read_data_reg[31]_0\(10),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(11),
      Q => \read_data_reg[31]_0\(11),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(12),
      Q => \read_data_reg[31]_0\(12),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(13),
      Q => \read_data_reg[31]_0\(13),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(14),
      Q => \read_data_reg[31]_0\(14),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(15),
      Q => \read_data_reg[31]_0\(15),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(16),
      Q => \read_data_reg[31]_0\(16),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(17),
      Q => \read_data_reg[31]_0\(17),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(18),
      Q => \read_data_reg[31]_0\(18),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(19),
      Q => \read_data_reg[31]_0\(19),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(1),
      Q => \read_data_reg[31]_0\(1),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(20),
      Q => \read_data_reg[31]_0\(20),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(21),
      Q => \read_data_reg[31]_0\(21),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(22),
      Q => \read_data_reg[31]_0\(22),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(23),
      Q => \read_data_reg[31]_0\(23),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(24),
      Q => \read_data_reg[31]_0\(24),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(25),
      Q => \read_data_reg[31]_0\(25),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(26),
      Q => \read_data_reg[31]_0\(26),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(27),
      Q => \read_data_reg[31]_0\(27),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(28),
      Q => \read_data_reg[31]_0\(28),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(29),
      Q => \read_data_reg[31]_0\(29),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(2),
      Q => \read_data_reg[31]_0\(2),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(30),
      Q => \read_data_reg[31]_0\(30),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => p_0_in1_in(31),
      Q => \read_data_reg[31]_0\(31),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(3),
      Q => \read_data_reg[31]_0\(3),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(4),
      Q => \read_data_reg[31]_0\(4),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(5),
      Q => \read_data_reg[31]_0\(5),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(6),
      Q => \read_data_reg[31]_0\(6),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(7),
      Q => \read_data_reg[31]_0\(7),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(8),
      Q => \read_data_reg[31]_0\(8),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\read_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => got_word_c,
      D => read_data_next(9),
      Q => \read_data_reg[31]_0\(9),
      R => \sd_dat_o_sys_reg[0]_0\
    );
\sd_dat_o_sys[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3DFF3DFDFFCCFFFF"
    )
        port map (
      I0 => \sd_dat_o_sys_reg[3]_1\,
      I1 => \line_crc[1].line_crc_n_9\,
      I2 => \line_crc[1].line_crc_n_30\,
      I3 => \line_crc[1].line_crc_n_31\,
      I4 => \crc_reg[15]\,
      I5 => \line_crc[1].line_crc_n_3\,
      O => \sd_dat_o_sys[3]_i_4_n_0\
    );
\sd_dat_o_sys_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \line_crc[0].line_crc_n_1\,
      Q => \^sd_dat_o_sys_reg[3]_0\(0),
      S => \sd_dat_o_sys_reg[0]_0\
    );
\sd_dat_o_sys_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \line_crc[1].line_crc_n_8\,
      Q => \^sd_dat_o_sys_reg[3]_0\(1),
      S => \sd_dat_o_sys_reg[0]_0\
    );
\sd_dat_o_sys_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \line_crc[2].line_crc_n_0\,
      Q => \^sd_dat_o_sys_reg[3]_0\(2),
      S => \sd_dat_o_sys_reg[0]_0\
    );
\sd_dat_o_sys_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \line_crc[3].line_crc_n_0\,
      Q => \^sd_dat_o_sys_reg[3]_0\(3),
      S => \sd_dat_o_sys_reg[0]_0\
    );
\sd_dat_t_sys[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A88AAAA"
    )
        port map (
      I0 => \sd_dat_t_sys[3]_i_2_n_0\,
      I1 => \sd_dat_t_sys[3]_i_3_n_0\,
      I2 => \line_crc[0].line_crc_n_4\,
      I3 => \sd_dat_t_sys[3]_i_4_n_0\,
      I4 => \sd_dat_o_sys_reg[0]_1\,
      I5 => \sd_dat_t_sys[3]_i_5_n_0\,
      O => \sd_dat_t_sys[3]_i_1_n_0\
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
\sd_dat_t_sys[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_3\,
      I1 => \line_crc[0].line_crc_n_0\,
      O => \sd_dat_t_sys[3]_i_3_n_0\
    );
\sd_dat_t_sys[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_31\,
      I1 => \line_crc[1].line_crc_n_30\,
      O => \sd_dat_t_sys[3]_i_4_n_0\
    );
\sd_dat_t_sys[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_9\,
      I1 => \line_crc[1].line_crc_n_30\,
      I2 => \line_crc[0].line_crc_n_0\,
      I3 => \line_crc[1].line_crc_n_3\,
      O => \sd_dat_t_sys[3]_i_5_n_0\
    );
\sd_dat_t_sys_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => \sd_dat_t_sys[3]_i_1_n_0\,
      Q => sd_dat_t_sys(0),
      S => \sd_dat_o_sys_reg[0]_0\
    );
wrote_new_word_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \line_crc[1].line_crc_n_28\,
      I1 => \sd_dat_o_sys_reg[0]_0\,
      I2 => \^e\(0),
      I3 => \buf_write[0]_i_2_n_0\,
      O => wrote_new_word_i_1_n_0
    );
wrote_new_word_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => wrote_new_word_i_1_n_0,
      Q => dat_wrote_new_word,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_sd_bus_interface is
  port (
    read_block_end : out STD_LOGIC;
    dat_got_word : out STD_LOGIC;
    dat_got_block : out STD_LOGIC;
    new_sd_clk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sd_cmd_o : out STD_LOGIC;
    sd_cmd_t : out STD_LOGIC;
    sd_dat_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_crc_err_reg : out STD_LOGIC;
    dat_wrote_new_word : out STD_LOGIC;
    \counter_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_index_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cmd_arg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cmd_crc_err_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    cmd_received_good : out STD_LOGIC;
    \cmd_index_reg[1]\ : out STD_LOGIC;
    \cmd_index_reg[2]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cmd_index_reg[1]_0\ : out STD_LOGIC;
    \counter_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resp_next : out STD_LOGIC_VECTOR ( 2 downto 0 );
    resp_no_crc_next : out STD_LOGIC;
    \cmd_index_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \cmd_index_reg[3]_0\ : out STD_LOGIC;
    \reg_saved_reg[19][8]\ : out STD_LOGIC;
    \reg_saved_reg[19][9]\ : out STD_LOGIC;
    \reg_saved_reg[19][10]\ : out STD_LOGIC;
    \reg_saved_reg[19][11]\ : out STD_LOGIC;
    \reg_saved_reg[19][12]\ : out STD_LOGIC;
    \reg_saved_reg[19][13]\ : out STD_LOGIC;
    got_acmd41_non_query_reg : out STD_LOGIC;
    got_acmd41_non_query_reg_0 : out STD_LOGIC;
    \card_status_reg[11]\ : out STD_LOGIC;
    p_3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[9]\ : out STD_LOGIC;
    \erase_step_reg[0]\ : out STD_LOGIC;
    \erase_step_reg[0]_0\ : out STD_LOGIC;
    \cmd_index_reg[5]_0\ : out STD_LOGIC;
    \cmd_index_reg[0]_0\ : out STD_LOGIC;
    erase_seq_error_reg : out STD_LOGIC;
    out_of_range_reg : out STD_LOGIC;
    \cmd_arg_reg[0]\ : out STD_LOGIC;
    \cmd_index_reg[5]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \resp_cur_reg[2]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[4]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    save_current_cmd : out STD_LOGIC;
    \cmd_index_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    acmd_defined_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[5]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \set_reg_clear_always[12].reg_clear_always_reg[12][5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    update_2 : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    got_cmd00 : out STD_LOGIC;
    \cmd_index_reg[0]_2\ : out STD_LOGIC;
    \cmd_arg_reg[19]\ : out STD_LOGIC;
    \card_status_reg[5]\ : out STD_LOGIC;
    ignored_c : out STD_LOGIC;
    \cmd_index_reg[4]\ : out STD_LOGIC;
    multi_block_mode_next : out STD_LOGIC;
    acmd_defined_reg_0 : out STD_LOGIC;
    \cmd_index_reg[5]_3\ : out STD_LOGIC;
    \cmd_index_reg[5]_4\ : out STD_LOGIC;
    \cmd_index_reg[1]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cmd_arg_reg[30]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_index_reg[3]_2\ : out STD_LOGIC;
    \cmd_index_reg[1]_2\ : out STD_LOGIC;
    \cmd_index_reg[0]_3\ : out STD_LOGIC;
    \cmd_index_reg[5]_5\ : out STD_LOGIC;
    \cmd_index_reg[1]_3\ : out STD_LOGIC;
    acmd_defined_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \size_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_reg[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_arg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    cmd_crc_err_stb0 : out STD_LOGIC;
    \crc_reg[10]\ : out STD_LOGIC;
    \crc_reg[2]\ : out STD_LOGIC;
    \crc_reg[2]_0\ : out STD_LOGIC;
    \crc_reg[10]_0\ : out STD_LOGIC;
    ram_dev_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \read_data_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sd_dat_o_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sd_dat_o_sys_reg[0]\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    resetn : in STD_LOGIC;
    \sd_clk_div_d_reg[0]_0\ : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    sd_cmd_i : in STD_LOGIC;
    read_crc_err_reg_0 : in STD_LOGIC;
    \block_data_finished0_carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state[0]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \block_data_finished0_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dev_blocks_read_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \crc_reg[15]\ : in STD_LOGIC;
    send_no_resp : in STD_LOGIC;
    \sd_dat_o_sys_reg[3]\ : in STD_LOGIC;
    \resp_byte_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \block_data_finished0_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_dev_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata[13]_i_3\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axi_rdata[13]_i_3_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axi_rdata[13]_i_3_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata[13]_i_3_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    got_acmd41_non_query_reg_1 : in STD_LOGIC;
    \saved_cmd_index_reg[5]\ : in STD_LOGIC;
    \card_status_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \erase_step_reg[0]_1\ : in STD_LOGIC;
    \erase_step_reg[0]_2\ : in STD_LOGIC;
    got_cmd8_1 : in STD_LOGIC;
    erase_seq_error : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_of_range : in STD_LOGIC;
    invalid_dat_width_reg : in STD_LOGIC;
    invalid_dat_width : in STD_LOGIC;
    \sd_dat_o_sys_reg[0]_0\ : in STD_LOGIC;
    \buf_write_reg[8]\ : in STD_LOGIC;
    \buf_write_reg[9]\ : in STD_LOGIC;
    \buf_write_reg[10]\ : in STD_LOGIC;
    \buf_write_reg[11]\ : in STD_LOGIC;
    \buf_write_reg[12]\ : in STD_LOGIC;
    \buf_write_reg[13]\ : in STD_LOGIC;
    \buf_write_reg[14]\ : in STD_LOGIC;
    \buf_write_reg[24]\ : in STD_LOGIC;
    \buf_write_reg[25]\ : in STD_LOGIC;
    \buf_write_reg[26]\ : in STD_LOGIC;
    \buf_write_reg[27]\ : in STD_LOGIC;
    \buf_write_reg[28]\ : in STD_LOGIC;
    \buf_write_reg[29]\ : in STD_LOGIC;
    \buf_write_reg[30]\ : in STD_LOGIC;
    \buf_write_reg[32]\ : in STD_LOGIC;
    \buf_write_reg[33]\ : in STD_LOGIC;
    \buf_write_reg[34]\ : in STD_LOGIC;
    \buf_write_reg[35]\ : in STD_LOGIC;
    \buf_write_reg[36]\ : in STD_LOGIC;
    \buf_write_reg[37]\ : in STD_LOGIC;
    \buf_write_reg[38]\ : in STD_LOGIC;
    \buf_write_reg[39]\ : in STD_LOGIC;
    \buf_write_reg[40]\ : in STD_LOGIC;
    \buf_write_reg[41]\ : in STD_LOGIC;
    \buf_write_reg[42]\ : in STD_LOGIC;
    \buf_write_reg[43]\ : in STD_LOGIC;
    \buf_write_reg[44]\ : in STD_LOGIC;
    \buf_write_reg[45]\ : in STD_LOGIC;
    \buf_write_reg[46]\ : in STD_LOGIC;
    \buf_write_reg[48]\ : in STD_LOGIC;
    \buf_write_reg[49]\ : in STD_LOGIC;
    \buf_write_reg[50]\ : in STD_LOGIC;
    \buf_write_reg[51]\ : in STD_LOGIC;
    \buf_write_reg[52]\ : in STD_LOGIC;
    \buf_write_reg[53]\ : in STD_LOGIC;
    \buf_write_reg[54]\ : in STD_LOGIC;
    \buf_write_reg[55]\ : in STD_LOGIC;
    \buf_write_reg[56]\ : in STD_LOGIC;
    \buf_write_reg[57]\ : in STD_LOGIC;
    \buf_write_reg[58]\ : in STD_LOGIC;
    \buf_write_reg[59]\ : in STD_LOGIC;
    \buf_write_reg[60]\ : in STD_LOGIC;
    \buf_write_reg[62]\ : in STD_LOGIC;
    \crc_reg[0]\ : in STD_LOGIC;
    \buf_write_reg[61]\ : in STD_LOGIC;
    \buf_write_reg[15]\ : in STD_LOGIC;
    \buf_write_reg[31]\ : in STD_LOGIC;
    \buf_write_reg[47]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    sd_cmd_o_sys_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_resp : in STD_LOGIC;
    resp_no_crc : in STD_LOGIC;
    \sd_dat_o_sys_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \crc[15]_i_4\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : in STD_LOGIC;
    \sd_dat_o_sys[3]_i_3\ : in STD_LOGIC;
    \state[5]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \resp_byte[4]_i_4\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \resp_byte_reg[7]\ : in STD_LOGIC;
    \resp_byte_reg[6]\ : in STD_LOGIC;
    \resp_byte_reg[3]\ : in STD_LOGIC;
    \resp_byte[7]_i_8\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \resp_byte_reg[1]\ : in STD_LOGIC;
    \resp_byte[5]_i_3\ : in STD_LOGIC;
    \resp_byte[4]_i_3\ : in STD_LOGIC;
    \resp_byte[2]_i_3\ : in STD_LOGIC;
    \resp_byte_reg[0]_i_2\ : in STD_LOGIC;
    \resp_byte_reg[6]_i_6\ : in STD_LOGIC;
    initialization_done : in STD_LOGIC;
    \resp_byte_reg[2]\ : in STD_LOGIC;
    \resp_byte_reg[5]\ : in STD_LOGIC;
    resp_no_crc_reg : in STD_LOGIC;
    \card_status_reg[9]_0\ : in STD_LOGIC;
    \card_status_reg[9]_1\ : in STD_LOGIC;
    \card_status_reg[5]_0\ : in STD_LOGIC;
    \card_status_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \card_status_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_cmd_valid : in STD_LOGIC;
    \card_status[11]_i_4\ : in STD_LOGIC;
    illegal_reg : in STD_LOGIC;
    ignored_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ignored_reg_0 : in STD_LOGIC;
    out_of_range0_carry : in STD_LOGIC;
    out_of_range0_carry_0 : in STD_LOGIC;
    out_of_range0_carry_1 : in STD_LOGIC;
    out_of_range0_carry_2 : in STD_LOGIC;
    out_of_range0_carry_3 : in STD_LOGIC;
    out_of_range0_carry_4 : in STD_LOGIC;
    out_of_range0_carry_5 : in STD_LOGIC;
    out_of_range0_carry_6 : in STD_LOGIC;
    \out_of_range0_carry__0\ : in STD_LOGIC;
    \out_of_range0_carry__0_0\ : in STD_LOGIC;
    \out_of_range0_carry__0_1\ : in STD_LOGIC;
    \out_of_range0_carry__0_2\ : in STD_LOGIC;
    \out_of_range0_carry__0_3\ : in STD_LOGIC;
    \out_of_range0_carry__0_4\ : in STD_LOGIC;
    \out_of_range0_carry__0_5\ : in STD_LOGIC;
    \out_of_range0_carry__0_6\ : in STD_LOGIC;
    \out_of_range0_carry__1\ : in STD_LOGIC;
    \out_of_range0_carry__1_0\ : in STD_LOGIC;
    \out_of_range0_carry__1_1\ : in STD_LOGIC;
    \out_of_range0_carry__1_2\ : in STD_LOGIC;
    \out_of_range0_carry__1_3\ : in STD_LOGIC;
    \out_of_range0_carry__1_4\ : in STD_LOGIC;
    \out_of_range0_carry__1_5\ : in STD_LOGIC;
    \out_of_range0_carry__1_6\ : in STD_LOGIC;
    \out_of_range0_carry__2\ : in STD_LOGIC;
    \out_of_range0_carry__2_0\ : in STD_LOGIC;
    \out_of_range0_carry__2_1\ : in STD_LOGIC;
    \out_of_range0_carry__2_2\ : in STD_LOGIC;
    \out_of_range0_carry__2_3\ : in STD_LOGIC;
    \out_of_range0_carry__2_4\ : in STD_LOGIC;
    \out_of_range0_carry__2_5\ : in STD_LOGIC;
    \out_of_range0_carry__2_6\ : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sd_dat_d_reg[0][3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_sd_bus_interface : entity is "sd_bus_interface";
end adapter_axi_sd_0_0_sd_bus_interface;

architecture STRUCTURE of adapter_axi_sd_0_0_sd_bus_interface is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal buf_read_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^new_sd_clk\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal resetn_reg_reg_inv_n_0 : STD_LOGIC;
  signal \sd_clk_div_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \sd_clk_div_d_reg_n_0_[3]\ : STD_LOGIC;
  signal sd_cmd_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sd_cmd_i_sys : STD_LOGIC;
  signal sd_cmd_o_sys : STD_LOGIC;
  signal sd_cmd_t_sys : STD_LOGIC;
  signal \sd_dat_d_reg[0]_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_d_reg[1]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sd_dat_d_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \sd_dat_d_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \sd_dat_d_reg_n_0_[2][3]\ : STD_LOGIC;
  signal sd_dat_o_sys : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_t_sys : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  D(0) <= \^d\(0);
  new_sd_clk <= \^new_sd_clk\;
cmd_unit: entity work.adapter_axi_sd_0_0_cmd_interface
     port map (
      CO(0) => CO(0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => \^new_sd_clk\,
      \FSM_onehot_state_reg[0]\ => \FSM_onehot_state_reg[0]\,
      \FSM_onehot_state_reg[0]_0\(0) => \FSM_onehot_state_reg[0]_0\(0),
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]\,
      \FSM_onehot_state_reg[4]\(4 downto 0) => \FSM_onehot_state_reg[4]\(4 downto 0),
      \FSM_onehot_state_reg[4]_0\(4 downto 0) => \FSM_onehot_state_reg[4]_0\(4 downto 0),
      Q(0) => \state_reg[4]\(0),
      S(1 downto 0) => S(1 downto 0),
      SR(0) => SR(0),
      S_AXI_ACLK => S_AXI_ACLK,
      acmd_defined_reg(0) => acmd_defined_reg(0),
      acmd_defined_reg_0 => acmd_defined_reg_0,
      acmd_defined_reg_1(0) => acmd_defined_reg_1(0),
      \axi_rdata[13]_i_3\(5 downto 0) => \axi_rdata[13]_i_3\(5 downto 0),
      \axi_rdata[13]_i_3_0\(5 downto 0) => \axi_rdata[13]_i_3_0\(5 downto 0),
      \axi_rdata[13]_i_3_1\(1 downto 0) => \axi_rdata[13]_i_3_1\(1 downto 0),
      \axi_rdata[13]_i_3_2\(4 downto 0) => \axi_rdata[13]_i_3_2\(4 downto 0),
      \buf_read_reg[0]_0\(0) => sd_cmd_i_sys,
      \card_status[11]_i_4_0\ => \card_status[11]_i_4\,
      \card_status_reg[11]\ => \card_status_reg[11]\,
      \card_status_reg[11]_0\(3 downto 0) => \card_status_reg[11]_0\(3 downto 0),
      \card_status_reg[5]\ => \card_status_reg[5]\,
      \card_status_reg[5]_0\ => \card_status_reg[5]_0\,
      \card_status_reg[5]_1\(0) => \card_status_reg[5]_1\(0),
      \card_status_reg[5]_2\(0) => \card_status_reg[5]_2\(0),
      \card_status_reg[9]\ => \card_status_reg[9]\,
      \card_status_reg[9]_0\ => \card_status_reg[9]_0\,
      \card_status_reg[9]_1\ => \card_status_reg[9]_1\,
      \cmd_arg_reg[0]_0\ => \cmd_arg_reg[0]\,
      \cmd_arg_reg[15]_0\(3 downto 0) => \cmd_arg_reg[15]\(3 downto 0),
      \cmd_arg_reg[19]_0\ => \cmd_arg_reg[19]\,
      \cmd_arg_reg[23]_0\(3 downto 0) => \cmd_arg_reg[23]\(3 downto 0),
      \cmd_arg_reg[30]_0\(0) => \cmd_arg_reg[30]\(0),
      \cmd_arg_reg[31]_0\(31 downto 0) => \cmd_arg_reg[31]\(31 downto 0),
      \cmd_arg_reg[31]_1\(3 downto 0) => \cmd_arg_reg[31]_0\(3 downto 0),
      cmd_crc_err_reg_0 => cmd_crc_err_reg,
      cmd_crc_err_stb0 => cmd_crc_err_stb0,
      \cmd_index_reg[0]_0\(3 downto 0) => \cmd_index_reg[0]\(3 downto 0),
      \cmd_index_reg[0]_1\ => resp_next(1),
      \cmd_index_reg[0]_2\ => \cmd_index_reg[0]_0\,
      \cmd_index_reg[0]_3\(0) => \cmd_index_reg[0]_1\(0),
      \cmd_index_reg[0]_4\ => \cmd_index_reg[0]_2\,
      \cmd_index_reg[0]_5\ => \cmd_index_reg[0]_3\,
      \cmd_index_reg[1]_0\ => \cmd_index_reg[1]\,
      \cmd_index_reg[1]_1\ => \cmd_index_reg[1]_0\,
      \cmd_index_reg[1]_2\ => \cmd_index_reg[1]_1\,
      \cmd_index_reg[1]_3\ => \cmd_index_reg[1]_2\,
      \cmd_index_reg[1]_4\ => \cmd_index_reg[1]_3\,
      \cmd_index_reg[2]_0\(4 downto 0) => \cmd_index_reg[2]\(4 downto 0),
      \cmd_index_reg[3]_0\ => resp_next(2),
      \cmd_index_reg[3]_1\ => \cmd_index_reg[3]\,
      \cmd_index_reg[3]_2\ => \cmd_index_reg[3]_0\,
      \cmd_index_reg[3]_3\(0) => \cmd_index_reg[3]_1\(0),
      \cmd_index_reg[3]_4\ => \cmd_index_reg[3]_2\,
      \cmd_index_reg[4]_0\ => \cmd_index_reg[4]\,
      \cmd_index_reg[5]_0\(5 downto 0) => \cmd_index_reg[5]\(5 downto 0),
      \cmd_index_reg[5]_1\ => resp_next(0),
      \cmd_index_reg[5]_2\ => \cmd_index_reg[5]_0\,
      \cmd_index_reg[5]_3\ => \cmd_index_reg[5]_1\,
      \cmd_index_reg[5]_4\(0) => \cmd_index_reg[5]_2\(0),
      \cmd_index_reg[5]_5\ => \cmd_index_reg[5]_3\,
      \cmd_index_reg[5]_6\ => \cmd_index_reg[5]_4\,
      \cmd_index_reg[5]_7\ => \cmd_index_reg[5]_5\,
      \counter_reg[4]_0\(1 downto 0) => \counter_reg[4]\(1 downto 0),
      \counter_reg[4]_1\ => \counter_reg[4]_0\,
      erase_seq_error => erase_seq_error,
      erase_seq_error_reg => erase_seq_error_reg,
      \erase_step_reg[0]\ => \erase_step_reg[0]\,
      \erase_step_reg[0]_0\ => \erase_step_reg[0]_0\,
      \erase_step_reg[0]_1\ => \erase_step_reg[0]_1\,
      \erase_step_reg[0]_2\ => \erase_step_reg[0]_2\,
      got_acmd41_non_query_reg => got_acmd41_non_query_reg,
      got_acmd41_non_query_reg_0 => got_acmd41_non_query_reg_0,
      got_acmd41_non_query_reg_1 => got_acmd41_non_query_reg_1,
      got_cmd00 => got_cmd00,
      got_cmd8_1 => got_cmd8_1,
      got_new_cmd_reg_0 => cmd_received_good,
      ignored_c => ignored_c,
      ignored_reg(0) => ignored_reg(0),
      ignored_reg_0 => ignored_reg_0,
      illegal_reg => illegal_reg,
      initialization_done => initialization_done,
      invalid_dat_width => invalid_dat_width,
      invalid_dat_width_reg => invalid_dat_width_reg,
      is_writing_reg_inv_0 => \sd_dat_o_sys_reg[0]\,
      last_cmd_valid => last_cmd_valid,
      multi_block_mode_next => multi_block_mode_next,
      out_of_range => out_of_range,
      out_of_range0_carry => out_of_range0_carry,
      out_of_range0_carry_0 => out_of_range0_carry_0,
      out_of_range0_carry_1 => out_of_range0_carry_1,
      out_of_range0_carry_2 => out_of_range0_carry_2,
      out_of_range0_carry_3 => out_of_range0_carry_3,
      out_of_range0_carry_4 => out_of_range0_carry_4,
      out_of_range0_carry_5 => out_of_range0_carry_5,
      out_of_range0_carry_6 => out_of_range0_carry_6,
      \out_of_range0_carry__0\ => \out_of_range0_carry__0\,
      \out_of_range0_carry__0_0\ => \out_of_range0_carry__0_0\,
      \out_of_range0_carry__0_1\ => \out_of_range0_carry__0_1\,
      \out_of_range0_carry__0_2\ => \out_of_range0_carry__0_2\,
      \out_of_range0_carry__0_3\ => \out_of_range0_carry__0_3\,
      \out_of_range0_carry__0_4\ => \out_of_range0_carry__0_4\,
      \out_of_range0_carry__0_5\ => \out_of_range0_carry__0_5\,
      \out_of_range0_carry__0_6\ => \out_of_range0_carry__0_6\,
      \out_of_range0_carry__1\ => \out_of_range0_carry__1\,
      \out_of_range0_carry__1_0\ => \out_of_range0_carry__1_0\,
      \out_of_range0_carry__1_1\ => \out_of_range0_carry__1_1\,
      \out_of_range0_carry__1_2\ => \out_of_range0_carry__1_2\,
      \out_of_range0_carry__1_3\ => \out_of_range0_carry__1_3\,
      \out_of_range0_carry__1_4\ => \out_of_range0_carry__1_4\,
      \out_of_range0_carry__1_5\ => \out_of_range0_carry__1_5\,
      \out_of_range0_carry__1_6\ => \out_of_range0_carry__1_6\,
      \out_of_range0_carry__2\ => \out_of_range0_carry__2\,
      \out_of_range0_carry__2_0\ => \out_of_range0_carry__2_0\,
      \out_of_range0_carry__2_1\ => \out_of_range0_carry__2_1\,
      \out_of_range0_carry__2_2\ => \out_of_range0_carry__2_2\,
      \out_of_range0_carry__2_3\ => \out_of_range0_carry__2_3\,
      \out_of_range0_carry__2_4\ => \out_of_range0_carry__2_4\,
      \out_of_range0_carry__2_5\ => \out_of_range0_carry__2_5\,
      \out_of_range0_carry__2_6\ => \out_of_range0_carry__2_6\,
      out_of_range_reg => out_of_range_reg,
      p_3_out(0) => p_3_out(0),
      ram_dev_addr(1 downto 0) => ram_dev_addr(1 downto 0),
      ram_dev_data(31 downto 0) => ram_dev_data(31 downto 0),
      \reg_saved_reg[19][10]\ => \reg_saved_reg[19][10]\,
      \reg_saved_reg[19][11]\ => \reg_saved_reg[19][11]\,
      \reg_saved_reg[19][12]\ => \reg_saved_reg[19][12]\,
      \reg_saved_reg[19][13]\ => \reg_saved_reg[19][13]\,
      \reg_saved_reg[19][8]\ => \reg_saved_reg[19][8]\,
      \reg_saved_reg[19][9]\ => \reg_saved_reg[19][9]\,
      \resp_byte[2]_i_3_0\ => \resp_byte[2]_i_3\,
      \resp_byte[4]_i_3_0\ => \resp_byte[4]_i_3\,
      \resp_byte[4]_i_4_0\(21 downto 0) => \resp_byte[4]_i_4\(21 downto 0),
      \resp_byte[5]_i_3_0\ => \resp_byte[5]_i_3\,
      \resp_byte[7]_i_8_0\(15 downto 0) => \resp_byte[7]_i_8\(15 downto 0),
      \resp_byte_reg[0]\(2 downto 0) => \resp_byte_reg[0]\(2 downto 0),
      \resp_byte_reg[0]_i_2_0\ => \resp_byte_reg[0]_i_2\,
      \resp_byte_reg[1]\ => \resp_byte_reg[1]\,
      \resp_byte_reg[2]\ => \resp_byte_reg[2]\,
      \resp_byte_reg[3]\ => \resp_byte_reg[3]\,
      \resp_byte_reg[5]\ => \resp_byte_reg[5]\,
      \resp_byte_reg[6]\ => \resp_byte_reg[6]\,
      \resp_byte_reg[6]_i_6_0\ => \resp_byte_reg[6]_i_6\,
      \resp_byte_reg[7]\ => \resp_byte_reg[7]\,
      \resp_cur_reg[2]\(7 downto 0) => \resp_cur_reg[2]\(7 downto 0),
      resp_no_crc => resp_no_crc,
      resp_no_crc_next => resp_no_crc_next,
      resp_no_crc_reg => resp_no_crc_reg,
      save_current_cmd => save_current_cmd,
      \saved_cmd_index_reg[5]\ => \saved_cmd_index_reg[5]\,
      sd_cmd_o_sys => sd_cmd_o_sys,
      sd_cmd_o_sys_reg_0(7 downto 0) => sd_cmd_o_sys_reg(7 downto 0),
      sd_cmd_t_sys => sd_cmd_t_sys,
      send_no_resp => send_no_resp,
      send_resp => send_resp,
      \set_reg_clear_always[12].reg_clear_always_reg[12][5]\(0) => \set_reg_clear_always[12].reg_clear_always_reg[12][5]\(0),
      \size_reg[15]\(3 downto 0) => \size_reg[15]\(3 downto 0),
      \size_reg[23]\(3 downto 0) => \size_reg[23]\(3 downto 0),
      \size_reg[31]\(3 downto 0) => \size_reg[31]\(3 downto 0),
      \size_reg[7]\(3 downto 0) => \size_reg[7]\(3 downto 0),
      \state[5]_i_6\(3 downto 0) => \state[5]_i_6\(3 downto 0),
      \state_reg[4]_0\ => \state_reg[4]_0\,
      update_2 => update_2
    );
dat_unit: entity work.adapter_axi_sd_0_0_dat_interface
     port map (
      CO(0) => \counter_reg[11]\(0),
      D(3 downto 1) => O(2 downto 0),
      D(0) => \counter_reg[0]\(0),
      E(0) => \^new_sd_clk\,
      \FSM_sequential_state[0]_i_14\(0) => \FSM_sequential_state[0]_i_14\(0),
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state_reg[0]\,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[0]_2\ => \FSM_sequential_state_reg[0]_1\,
      \FSM_sequential_state_reg[0]_3\ => \FSM_sequential_state_reg[0]_2\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state_reg[1]_0\,
      \FSM_sequential_state_reg[1]_2\ => \FSM_sequential_state_reg[1]_1\,
      \FSM_sequential_state_reg[1]_3\(0) => \FSM_sequential_state_reg[1]_2\(0),
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state_reg[2]\,
      \FSM_sequential_state_reg[3]_0\ => \FSM_sequential_state_reg[3]\,
      \FSM_sequential_state_reg[3]_1\ => \FSM_sequential_state_reg[3]_0\,
      Q(2 downto 0) => Q(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      \block_data_finished0_carry__0_0\(0) => \block_data_finished0_carry__0\(0),
      \block_data_finished0_inferred__0/i__carry__0_0\(0) => \block_data_finished0_inferred__0/i__carry__0\(0),
      \block_data_finished0_inferred__0/i__carry__0_1\(4 downto 0) => \block_data_finished0_inferred__0/i__carry__0_0\(4 downto 0),
      \buf_write_reg[10]_0\ => \buf_write_reg[10]\,
      \buf_write_reg[11]_0\ => \buf_write_reg[11]\,
      \buf_write_reg[12]_0\ => \buf_write_reg[12]\,
      \buf_write_reg[13]_0\ => \buf_write_reg[13]\,
      \buf_write_reg[14]_0\ => \buf_write_reg[14]\,
      \buf_write_reg[15]_0\ => \buf_write_reg[15]\,
      \buf_write_reg[24]_0\ => \buf_write_reg[24]\,
      \buf_write_reg[25]_0\ => \buf_write_reg[25]\,
      \buf_write_reg[26]_0\ => \buf_write_reg[26]\,
      \buf_write_reg[27]_0\ => \buf_write_reg[27]\,
      \buf_write_reg[28]_0\ => \buf_write_reg[28]\,
      \buf_write_reg[29]_0\ => \buf_write_reg[29]\,
      \buf_write_reg[30]_0\ => \buf_write_reg[30]\,
      \buf_write_reg[31]_0\ => \buf_write_reg[31]\,
      \buf_write_reg[32]_0\ => \buf_write_reg[32]\,
      \buf_write_reg[33]_0\ => \buf_write_reg[33]\,
      \buf_write_reg[34]_0\ => \buf_write_reg[34]\,
      \buf_write_reg[35]_0\ => \buf_write_reg[35]\,
      \buf_write_reg[36]_0\ => \buf_write_reg[36]\,
      \buf_write_reg[37]_0\ => \buf_write_reg[37]\,
      \buf_write_reg[38]_0\ => \buf_write_reg[38]\,
      \buf_write_reg[39]_0\ => \buf_write_reg[39]\,
      \buf_write_reg[40]_0\ => \buf_write_reg[40]\,
      \buf_write_reg[41]_0\ => \buf_write_reg[41]\,
      \buf_write_reg[42]_0\ => \buf_write_reg[42]\,
      \buf_write_reg[43]_0\ => \buf_write_reg[43]\,
      \buf_write_reg[44]_0\ => \buf_write_reg[44]\,
      \buf_write_reg[45]_0\ => \buf_write_reg[45]\,
      \buf_write_reg[46]_0\ => \buf_write_reg[46]\,
      \buf_write_reg[47]_0\ => \buf_write_reg[47]\,
      \buf_write_reg[48]_0\ => \buf_write_reg[48]\,
      \buf_write_reg[49]_0\ => \buf_write_reg[49]\,
      \buf_write_reg[50]_0\ => \buf_write_reg[50]\,
      \buf_write_reg[51]_0\ => \buf_write_reg[51]\,
      \buf_write_reg[52]_0\ => \buf_write_reg[52]\,
      \buf_write_reg[53]_0\ => \buf_write_reg[53]\,
      \buf_write_reg[54]_0\ => \buf_write_reg[54]\,
      \buf_write_reg[55]_0\ => \buf_write_reg[55]\,
      \buf_write_reg[56]_0\ => \buf_write_reg[56]\,
      \buf_write_reg[57]_0\ => \buf_write_reg[57]\,
      \buf_write_reg[58]_0\ => \buf_write_reg[58]\,
      \buf_write_reg[59]_0\ => \buf_write_reg[59]\,
      \buf_write_reg[60]_0\ => \buf_write_reg[60]\,
      \buf_write_reg[61]_0\ => \buf_write_reg[61]\,
      \buf_write_reg[62]_0\ => \buf_write_reg[62]\,
      \buf_write_reg[8]_0\ => \buf_write_reg[8]\,
      \buf_write_reg[9]_0\ => \buf_write_reg[9]\,
      \crc[15]_i_4\ => \crc[15]_i_4\,
      \crc_reg[0]\(3) => \sd_dat_d_reg_n_0_[2][3]\,
      \crc_reg[0]\(2) => \sd_dat_d_reg_n_0_[2][2]\,
      \crc_reg[0]\(1) => \sd_dat_d_reg_n_0_[2][1]\,
      \crc_reg[0]\(0) => buf_read_next(0),
      \crc_reg[0]_0\ => \crc_reg[0]\,
      \crc_reg[10]\ => \crc_reg[10]\,
      \crc_reg[10]_0\ => \crc_reg[10]_0\,
      \crc_reg[15]\ => \crc_reg[15]\,
      \crc_reg[15]_0\(1) => \sd_clk_div_d_reg_n_0_[3]\,
      \crc_reg[15]_0\(0) => p_0_in,
      \crc_reg[2]\ => \crc_reg[2]\,
      \crc_reg[2]_0\ => \crc_reg[2]_0\,
      dat_got_block => dat_got_block,
      dat_got_word => dat_got_word,
      dat_wrote_new_word => dat_wrote_new_word,
      \dev_blocks_read_reg[31]\(0) => \dev_blocks_read_reg[31]\(0),
      fifo_empty => fifo_empty,
      read_block_end => read_block_end,
      read_crc_err_reg_0 => read_crc_err_reg,
      read_crc_err_reg_1(0) => E(0),
      read_crc_err_reg_2 => read_crc_err_reg_0,
      \read_data_reg[31]_0\(31 downto 0) => \read_data_reg[31]\(31 downto 0),
      \sd_dat_o_sys[3]_i_3\ => \sd_dat_o_sys[3]_i_3\,
      \sd_dat_o_sys_reg[0]_0\ => \sd_dat_o_sys_reg[0]\,
      \sd_dat_o_sys_reg[0]_1\ => \sd_dat_o_sys_reg[0]_0\,
      \sd_dat_o_sys_reg[1]_0\ => \sd_dat_o_sys_reg[1]\,
      \sd_dat_o_sys_reg[3]_0\(3 downto 0) => sd_dat_o_sys(3 downto 0),
      \sd_dat_o_sys_reg[3]_1\ => \sd_dat_o_sys_reg[3]\,
      sd_dat_t_sys(0) => sd_dat_t_sys(3)
    );
resetn_reg_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => resetn,
      Q => resetn_reg_reg_inv_n_0,
      R => '0'
    );
\sd_clk_div_d_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      CLR => resetn_reg_reg_inv_n_0,
      D => \sd_clk_div_d_reg[0]_0\,
      Q => \^d\(0)
    );
\sd_clk_div_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \^d\(0),
      Q => \sd_clk_div_d_reg_n_0_[1]\,
      R => \sd_dat_o_sys_reg[0]\
    );
\sd_clk_div_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_clk_div_d_reg_n_0_[1]\,
      Q => p_0_in,
      R => \sd_dat_o_sys_reg[0]\
    );
\sd_clk_div_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_0_in,
      Q => \sd_clk_div_d_reg_n_0_[3]\,
      R => \sd_dat_o_sys_reg[0]\
    );
\sd_cmd_d_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk,
      CE => '1',
      D => sd_cmd_i,
      PRE => resetn_reg_reg_inv_n_0,
      Q => sd_cmd_d(0)
    );
\sd_cmd_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_cmd_d(0),
      Q => sd_cmd_d(1),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_cmd_d_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_cmd_d(1),
      Q => sd_cmd_i_sys,
      S => \sd_dat_o_sys_reg[0]\
    );
sd_cmd_o_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_cmd_o_sys,
      PRE => resetn_reg_reg_inv_n_0,
      Q => sd_cmd_o
    );
sd_cmd_t_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_cmd_t_sys,
      PRE => resetn_reg_reg_inv_n_0,
      Q => sd_cmd_t
    );
\sd_dat_d_reg[0][0]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk,
      CE => '1',
      D => \sd_dat_d_reg[0][3]_0\(0),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_d_reg[0]_4\(0)
    );
\sd_dat_d_reg[0][1]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk,
      CE => '1',
      D => \sd_dat_d_reg[0][3]_0\(1),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_d_reg[0]_4\(1)
    );
\sd_dat_d_reg[0][2]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk,
      CE => '1',
      D => \sd_dat_d_reg[0][3]_0\(2),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_d_reg[0]_4\(2)
    );
\sd_dat_d_reg[0][3]\: unisim.vcomponents.FDPE
     port map (
      C => sd_clk,
      CE => '1',
      D => \sd_dat_d_reg[0][3]_0\(3),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_d_reg[0]_4\(3)
    );
\sd_dat_d_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[0]_4\(0),
      Q => \sd_dat_d_reg[1]_5\(0),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[0]_4\(1),
      Q => \sd_dat_d_reg[1]_5\(1),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[0]_4\(2),
      Q => \sd_dat_d_reg[1]_5\(2),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[1][3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[0]_4\(3),
      Q => \sd_dat_d_reg[1]_5\(3),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[1]_5\(0),
      Q => buf_read_next(0),
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[1]_5\(1),
      Q => \sd_dat_d_reg_n_0_[2][1]\,
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[1]_5\(2),
      Q => \sd_dat_d_reg_n_0_[2][2]\,
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_d_reg[2][3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \sd_dat_d_reg[1]_5\(3),
      Q => \sd_dat_d_reg_n_0_[2][3]\,
      S => \sd_dat_o_sys_reg[0]\
    );
\sd_dat_o_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_dat_o_sys(0),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_o_reg[3]_0\(0)
    );
\sd_dat_o_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_dat_o_sys(1),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_o_reg[3]_0\(1)
    );
\sd_dat_o_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_dat_o_sys(2),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_o_reg[3]_0\(2)
    );
\sd_dat_o_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_dat_o_sys(3),
      PRE => resetn_reg_reg_inv_n_0,
      Q => \sd_dat_o_reg[3]_0\(3)
    );
\sd_dat_t_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sd_clk,
      CE => '1',
      D => sd_dat_t_sys(3),
      PRE => resetn_reg_reg_inv_n_0,
      Q => sd_dat_t(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_device is
  port (
    read_block_end : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sd_cmd_o : out STD_LOGIC;
    sd_cmd_t : out STD_LOGIC;
    sd_dat_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_missed1 : out STD_LOGIC;
    last_cmd_is_acmd : out STD_LOGIC;
    write_ok15_in : out STD_LOGIC;
    dat_crc_err : out STD_LOGIC;
    is_inactive : out STD_LOGIC;
    fifo_empty : out STD_LOGIC;
    dat_width_4 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \card_status_reg[31]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \cmd_index_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_read : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    ram_reg : out STD_LOGIC;
    ram_reg_0 : out STD_LOGIC;
    ram_reg_1 : out STD_LOGIC;
    ram_reg_2 : out STD_LOGIC;
    ram_reg_3 : out STD_LOGIC;
    ram_reg_4 : out STD_LOGIC;
    ram_reg_5 : out STD_LOGIC;
    ram_reg_6 : out STD_LOGIC;
    ram_reg_7 : out STD_LOGIC;
    ram_reg_8 : out STD_LOGIC;
    ram_reg_9 : out STD_LOGIC;
    ram_reg_10 : out STD_LOGIC;
    ram_reg_11 : out STD_LOGIC;
    ram_reg_12 : out STD_LOGIC;
    ram_reg_13 : out STD_LOGIC;
    ram_reg_14 : out STD_LOGIC;
    ram_reg_15 : out STD_LOGIC;
    ram_reg_16 : out STD_LOGIC;
    ram_reg_17 : out STD_LOGIC;
    ram_reg_18 : out STD_LOGIC;
    ram_reg_19 : out STD_LOGIC;
    ram_reg_20 : out STD_LOGIC;
    ram_reg_21 : out STD_LOGIC;
    ram_reg_22 : out STD_LOGIC;
    ram_reg_23 : out STD_LOGIC;
    ram_reg_24 : out STD_LOGIC;
    ram_reg_25 : out STD_LOGIC;
    ram_reg_26 : out STD_LOGIC;
    ram_reg_27 : out STD_LOGIC;
    ram_reg_28 : out STD_LOGIC;
    ram_reg_29 : out STD_LOGIC;
    ram_reg_30 : out STD_LOGIC;
    new_cmd_saved_reg : out STD_LOGIC;
    got_new_cmd_out_reg_0 : out STD_LOGIC;
    cmd_saved_missed_reg : out STD_LOGIC;
    cmd_missed_reg : out STD_LOGIC;
    device_reset_r_reg : out STD_LOGIC;
    \sd_dat_o_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    got_acmd41_non_query_reg : out STD_LOGIC;
    \saved_cmd_arg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \erase_start_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \erase_end_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \block_count_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \pre_erase_count_reg[22]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    ram_dev_addr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sd_dat3_pullup_off : out STD_LOGIC;
    dat_blocks_read : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \cmd_index_reg[5]\ : out STD_LOGIC;
    \cmd_arg_reg[19]\ : out STD_LOGIC;
    \cmd_index_reg[5]_0\ : out STD_LOGIC;
    \crc_reg[10]\ : out STD_LOGIC;
    \crc_reg[2]\ : out STD_LOGIC;
    \crc_reg[2]_0\ : out STD_LOGIC;
    \crc_reg[10]_0\ : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \sd_clk_div_d_reg[0]\ : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    sd_cmd_i : in STD_LOGIC;
    read_crc_err_reg : in STD_LOGIC;
    inactive_reg : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    dat_width_4_reg : in STD_LOGIC;
    no_more_write_data : in STD_LOGIC;
    ram_dev_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    \reg_saved_reg[24][0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    cmd_unread : in STD_LOGIC;
    interrupt_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_saved_unread : in STD_LOGIC;
    device_reset_r : in STD_LOGIC;
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[0]_2\ : in STD_LOGIC;
    \axi_rdata[28]_i_3\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \axi_rdata[28]_i_3_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \axi_rdata[28]_i_3_1\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \axi_rdata_reg[31]_0\ : in STD_LOGIC;
    \axi_rdata_reg[31]_1\ : in STD_LOGIC;
    \axi_rdata_reg[30]\ : in STD_LOGIC;
    \axi_rdata_reg[30]_0\ : in STD_LOGIC;
    \axi_rdata_reg[29]\ : in STD_LOGIC;
    \axi_rdata_reg[29]_0\ : in STD_LOGIC;
    \axi_rdata_reg[28]\ : in STD_LOGIC;
    \axi_rdata_reg[27]\ : in STD_LOGIC;
    \axi_rdata_reg[26]\ : in STD_LOGIC;
    \axi_rdata_reg[25]\ : in STD_LOGIC;
    \axi_rdata_reg[24]\ : in STD_LOGIC;
    \axi_rdata_reg[23]\ : in STD_LOGIC;
    \axi_rdata_reg[23]_0\ : in STD_LOGIC;
    \axi_rdata_reg[22]\ : in STD_LOGIC;
    \axi_rdata_reg[21]\ : in STD_LOGIC;
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    cmd_saved_missed : in STD_LOGIC;
    cmd_missed : in STD_LOGIC;
    \sd_dat_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_sys_state_reg[0]\ : in STD_LOGIC;
    \ocr_high_byte_reg[31]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \size_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \card_status_reg[31]_0\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \card_status_reg[31]_1\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    data_write_en : in STD_LOGIC;
    ram_reg_31 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_device : entity is "device";
end adapter_axi_sd_0_0_device;

architecture STRUCTURE of adapter_axi_sd_0_0_device is
  signal \^fsm_onehot_state_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal acmd_defined_c : STD_LOGIC;
  signal \^block_count_reg[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal block_limit_used : STD_LOGIC;
  signal block_size_next : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal card_status_keeper_n_31 : STD_LOGIC;
  signal card_status_keeper_n_32 : STD_LOGIC;
  signal card_status_keeper_n_33 : STD_LOGIC;
  signal card_status_keeper_n_34 : STD_LOGIC;
  signal card_status_keeper_n_36 : STD_LOGIC;
  signal card_status_keeper_n_38 : STD_LOGIC;
  signal card_status_keeper_n_39 : STD_LOGIC;
  signal card_status_keeper_n_43 : STD_LOGIC;
  signal card_status_keeper_n_44 : STD_LOGIC;
  signal card_status_keeper_n_45 : STD_LOGIC;
  signal card_status_keeper_n_46 : STD_LOGIC;
  signal card_status_keeper_n_47 : STD_LOGIC;
  signal card_status_keeper_n_48 : STD_LOGIC;
  signal card_status_keeper_n_49 : STD_LOGIC;
  signal card_status_keeper_n_50 : STD_LOGIC;
  signal card_status_keeper_n_51 : STD_LOGIC;
  signal card_status_keeper_n_52 : STD_LOGIC;
  signal card_status_keeper_n_53 : STD_LOGIC;
  signal card_status_keeper_n_54 : STD_LOGIC;
  signal card_status_keeper_n_77 : STD_LOGIC;
  signal card_status_keeper_n_78 : STD_LOGIC;
  signal card_status_keeper_n_79 : STD_LOGIC;
  signal card_status_next2_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^card_status_reg[31]\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal card_status_resp : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal card_status_resp_next : STD_LOGIC_VECTOR ( 28 downto 5 );
  signal cmd_crc_err_stb : STD_LOGIC;
  signal cmd_crc_err_stb0 : STD_LOGIC;
  signal cmd_ignored_stb : STD_LOGIC;
  signal cmd_ignored_stb0 : STD_LOGIC;
  signal cmd_illegal_stb : STD_LOGIC;
  signal cmd_illegal_stb0 : STD_LOGIC;
  signal cmd_info_keeper_n_10 : STD_LOGIC;
  signal cmd_info_keeper_n_11 : STD_LOGIC;
  signal cmd_info_keeper_n_12 : STD_LOGIC;
  signal cmd_info_keeper_n_13 : STD_LOGIC;
  signal cmd_info_keeper_n_14 : STD_LOGIC;
  signal cmd_info_keeper_n_15 : STD_LOGIC;
  signal cmd_info_keeper_n_18 : STD_LOGIC;
  signal cmd_info_keeper_n_19 : STD_LOGIC;
  signal cmd_info_keeper_n_20 : STD_LOGIC;
  signal cmd_info_keeper_n_21 : STD_LOGIC;
  signal cmd_info_keeper_n_22 : STD_LOGIC;
  signal cmd_info_keeper_n_4 : STD_LOGIC;
  signal cmd_info_keeper_n_5 : STD_LOGIC;
  signal cmd_info_keeper_n_55 : STD_LOGIC;
  signal cmd_info_keeper_n_56 : STD_LOGIC;
  signal cmd_info_keeper_n_57 : STD_LOGIC;
  signal cmd_info_keeper_n_58 : STD_LOGIC;
  signal cmd_info_keeper_n_59 : STD_LOGIC;
  signal cmd_info_keeper_n_6 : STD_LOGIC;
  signal cmd_info_keeper_n_60 : STD_LOGIC;
  signal cmd_info_keeper_n_61 : STD_LOGIC;
  signal cmd_info_keeper_n_62 : STD_LOGIC;
  signal cmd_info_keeper_n_63 : STD_LOGIC;
  signal cmd_info_keeper_n_64 : STD_LOGIC;
  signal cmd_info_keeper_n_65 : STD_LOGIC;
  signal cmd_info_keeper_n_66 : STD_LOGIC;
  signal cmd_info_keeper_n_7 : STD_LOGIC;
  signal cmd_info_keeper_n_8 : STD_LOGIC;
  signal cmd_info_keeper_n_9 : STD_LOGIC;
  signal cmd_received_good : STD_LOGIC;
  signal \cmd_unit/p_2_in3_in\ : STD_LOGIC;
  signal command_validator_n_2 : STD_LOGIC;
  signal command_validator_n_3 : STD_LOGIC;
  signal command_validator_n_4 : STD_LOGIC;
  signal command_validator_n_5 : STD_LOGIC;
  signal dat_block_size : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal \^dat_blocks_read\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dat_controller_n_104 : STD_LOGIC;
  signal dat_controller_n_105 : STD_LOGIC;
  signal dat_controller_n_106 : STD_LOGIC;
  signal dat_controller_n_107 : STD_LOGIC;
  signal dat_controller_n_108 : STD_LOGIC;
  signal dat_controller_n_109 : STD_LOGIC;
  signal dat_controller_n_110 : STD_LOGIC;
  signal dat_controller_n_111 : STD_LOGIC;
  signal dat_controller_n_112 : STD_LOGIC;
  signal dat_controller_n_113 : STD_LOGIC;
  signal dat_controller_n_114 : STD_LOGIC;
  signal dat_controller_n_115 : STD_LOGIC;
  signal dat_controller_n_116 : STD_LOGIC;
  signal dat_controller_n_117 : STD_LOGIC;
  signal dat_controller_n_118 : STD_LOGIC;
  signal dat_controller_n_119 : STD_LOGIC;
  signal dat_controller_n_120 : STD_LOGIC;
  signal dat_controller_n_121 : STD_LOGIC;
  signal dat_controller_n_122 : STD_LOGIC;
  signal dat_controller_n_123 : STD_LOGIC;
  signal dat_controller_n_124 : STD_LOGIC;
  signal dat_controller_n_125 : STD_LOGIC;
  signal dat_controller_n_126 : STD_LOGIC;
  signal dat_controller_n_127 : STD_LOGIC;
  signal dat_controller_n_128 : STD_LOGIC;
  signal dat_controller_n_129 : STD_LOGIC;
  signal dat_controller_n_130 : STD_LOGIC;
  signal dat_controller_n_131 : STD_LOGIC;
  signal dat_controller_n_132 : STD_LOGIC;
  signal dat_controller_n_133 : STD_LOGIC;
  signal dat_controller_n_134 : STD_LOGIC;
  signal dat_controller_n_135 : STD_LOGIC;
  signal dat_controller_n_136 : STD_LOGIC;
  signal dat_controller_n_137 : STD_LOGIC;
  signal dat_controller_n_138 : STD_LOGIC;
  signal dat_controller_n_139 : STD_LOGIC;
  signal dat_controller_n_140 : STD_LOGIC;
  signal dat_controller_n_141 : STD_LOGIC;
  signal dat_controller_n_142 : STD_LOGIC;
  signal dat_controller_n_143 : STD_LOGIC;
  signal dat_controller_n_144 : STD_LOGIC;
  signal dat_controller_n_145 : STD_LOGIC;
  signal dat_controller_n_146 : STD_LOGIC;
  signal dat_controller_n_147 : STD_LOGIC;
  signal dat_controller_n_148 : STD_LOGIC;
  signal dat_controller_n_149 : STD_LOGIC;
  signal dat_controller_n_150 : STD_LOGIC;
  signal dat_controller_n_151 : STD_LOGIC;
  signal dat_controller_n_152 : STD_LOGIC;
  signal dat_controller_n_36 : STD_LOGIC;
  signal dat_controller_n_38 : STD_LOGIC;
  signal dat_controller_n_39 : STD_LOGIC;
  signal dat_controller_n_41 : STD_LOGIC;
  signal dat_controller_n_43 : STD_LOGIC;
  signal dat_controller_n_44 : STD_LOGIC;
  signal dat_controller_n_47 : STD_LOGIC;
  signal dat_controller_n_83 : STD_LOGIC;
  signal dat_controller_n_84 : STD_LOGIC;
  signal dat_controller_n_85 : STD_LOGIC;
  signal dat_controller_n_86 : STD_LOGIC;
  signal dat_controller_n_87 : STD_LOGIC;
  signal dat_controller_n_88 : STD_LOGIC;
  signal dat_controller_n_89 : STD_LOGIC;
  signal dat_controller_n_90 : STD_LOGIC;
  signal dat_controller_n_91 : STD_LOGIC;
  signal dat_controller_n_92 : STD_LOGIC;
  signal dat_controller_n_93 : STD_LOGIC;
  signal dat_controller_n_94 : STD_LOGIC;
  signal dat_controller_n_95 : STD_LOGIC;
  signal dat_controller_n_96 : STD_LOGIC;
  signal dat_controller_n_97 : STD_LOGIC;
  signal dat_controller_n_98 : STD_LOGIC;
  signal \^dat_crc_err\ : STD_LOGIC;
  signal dat_got_block : STD_LOGIC;
  signal dat_got_word : STD_LOGIC;
  signal dat_read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dat_read_mode : STD_LOGIC;
  signal \dat_unit/crc_finished\ : STD_LOGIC;
  signal \dat_unit/p_0_in\ : STD_LOGIC;
  signal \dat_unit/state\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dat_unit/state_next214_in\ : STD_LOGIC;
  signal \^dat_width_4\ : STD_LOGIC;
  signal dat_wrote_new_word : STD_LOGIC;
  signal data_reading_closed : STD_LOGIC;
  signal data_writing_closed : STD_LOGIC;
  signal erase_reset : STD_LOGIC;
  signal erase_seq_error : STD_LOGIC;
  signal \^fifo_empty\ : STD_LOGIC;
  signal got_cmd00 : STD_LOGIC;
  signal got_cmd8_1 : STD_LOGIC;
  signal got_new_cmd : STD_LOGIC;
  signal ignored_c : STD_LOGIC;
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
  signal inactive_keeper_n_2 : STD_LOGIC;
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
  signal inactive_keeper_n_4 : STD_LOGIC;
  signal inactive_keeper_n_40 : STD_LOGIC;
  signal inactive_keeper_n_41 : STD_LOGIC;
  signal inactive_keeper_n_42 : STD_LOGIC;
  signal inactive_keeper_n_43 : STD_LOGIC;
  signal inactive_keeper_n_44 : STD_LOGIC;
  signal inactive_keeper_n_45 : STD_LOGIC;
  signal inactive_keeper_n_46 : STD_LOGIC;
  signal inactive_keeper_n_47 : STD_LOGIC;
  signal inactive_keeper_n_48 : STD_LOGIC;
  signal inactive_keeper_n_5 : STD_LOGIC;
  signal inactive_keeper_n_8 : STD_LOGIC;
  signal inactive_keeper_n_9 : STD_LOGIC;
  signal initialization_done : STD_LOGIC;
  signal invalid_dat_width : STD_LOGIC;
  signal last_cmd_index : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^last_cmd_is_acmd\ : STD_LOGIC;
  signal last_cmd_valid : STD_LOGIC;
  signal multi_block_mode_next : STD_LOGIC;
  signal new_sd_clk : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[24]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[25]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[26]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[27]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[28]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[29]\ : STD_LOGIC;
  signal \ocr_high_byte_reg_n_0_[30]\ : STD_LOGIC;
  signal out_of_range : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_3_out_1 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal p_6_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \^ram_dev_addr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal range_check_n_2 : STD_LOGIC;
  signal rca : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rca_match : STD_LOGIC;
  signal resetn : STD_LOGIC;
  signal resp_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal resp_byte_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal resp_cur : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal resp_len_bytes : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal resp_len_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal resp_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal resp_no_crc : STD_LOGIC;
  signal resp_no_crc_next : STD_LOGIC;
  signal resp_pos1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal save_current_cmd : STD_LOGIC;
  signal sd_bus_interface_n_101 : STD_LOGIC;
  signal sd_bus_interface_n_102 : STD_LOGIC;
  signal sd_bus_interface_n_11 : STD_LOGIC;
  signal sd_bus_interface_n_111 : STD_LOGIC;
  signal sd_bus_interface_n_112 : STD_LOGIC;
  signal sd_bus_interface_n_116 : STD_LOGIC;
  signal sd_bus_interface_n_127 : STD_LOGIC;
  signal sd_bus_interface_n_129 : STD_LOGIC;
  signal sd_bus_interface_n_131 : STD_LOGIC;
  signal sd_bus_interface_n_133 : STD_LOGIC;
  signal sd_bus_interface_n_134 : STD_LOGIC;
  signal sd_bus_interface_n_135 : STD_LOGIC;
  signal sd_bus_interface_n_136 : STD_LOGIC;
  signal sd_bus_interface_n_137 : STD_LOGIC;
  signal sd_bus_interface_n_138 : STD_LOGIC;
  signal sd_bus_interface_n_139 : STD_LOGIC;
  signal sd_bus_interface_n_14 : STD_LOGIC;
  signal sd_bus_interface_n_140 : STD_LOGIC;
  signal sd_bus_interface_n_141 : STD_LOGIC;
  signal sd_bus_interface_n_142 : STD_LOGIC;
  signal sd_bus_interface_n_144 : STD_LOGIC;
  signal sd_bus_interface_n_146 : STD_LOGIC;
  signal sd_bus_interface_n_147 : STD_LOGIC;
  signal sd_bus_interface_n_148 : STD_LOGIC;
  signal sd_bus_interface_n_149 : STD_LOGIC;
  signal sd_bus_interface_n_150 : STD_LOGIC;
  signal sd_bus_interface_n_151 : STD_LOGIC;
  signal sd_bus_interface_n_152 : STD_LOGIC;
  signal sd_bus_interface_n_153 : STD_LOGIC;
  signal sd_bus_interface_n_154 : STD_LOGIC;
  signal sd_bus_interface_n_155 : STD_LOGIC;
  signal sd_bus_interface_n_156 : STD_LOGIC;
  signal sd_bus_interface_n_157 : STD_LOGIC;
  signal sd_bus_interface_n_158 : STD_LOGIC;
  signal sd_bus_interface_n_159 : STD_LOGIC;
  signal sd_bus_interface_n_160 : STD_LOGIC;
  signal sd_bus_interface_n_161 : STD_LOGIC;
  signal sd_bus_interface_n_162 : STD_LOGIC;
  signal sd_bus_interface_n_163 : STD_LOGIC;
  signal sd_bus_interface_n_164 : STD_LOGIC;
  signal sd_bus_interface_n_165 : STD_LOGIC;
  signal sd_bus_interface_n_166 : STD_LOGIC;
  signal sd_bus_interface_n_167 : STD_LOGIC;
  signal sd_bus_interface_n_168 : STD_LOGIC;
  signal sd_bus_interface_n_169 : STD_LOGIC;
  signal sd_bus_interface_n_170 : STD_LOGIC;
  signal sd_bus_interface_n_171 : STD_LOGIC;
  signal sd_bus_interface_n_172 : STD_LOGIC;
  signal sd_bus_interface_n_173 : STD_LOGIC;
  signal sd_bus_interface_n_174 : STD_LOGIC;
  signal sd_bus_interface_n_175 : STD_LOGIC;
  signal sd_bus_interface_n_176 : STD_LOGIC;
  signal sd_bus_interface_n_177 : STD_LOGIC;
  signal sd_bus_interface_n_178 : STD_LOGIC;
  signal sd_bus_interface_n_59 : STD_LOGIC;
  signal sd_bus_interface_n_63 : STD_LOGIC;
  signal sd_bus_interface_n_68 : STD_LOGIC;
  signal sd_bus_interface_n_69 : STD_LOGIC;
  signal sd_bus_interface_n_70 : STD_LOGIC;
  signal sd_bus_interface_n_79 : STD_LOGIC;
  signal sd_bus_interface_n_80 : STD_LOGIC;
  signal sd_bus_interface_n_81 : STD_LOGIC;
  signal sd_bus_interface_n_82 : STD_LOGIC;
  signal sd_bus_interface_n_83 : STD_LOGIC;
  signal sd_bus_interface_n_84 : STD_LOGIC;
  signal sd_bus_interface_n_85 : STD_LOGIC;
  signal sd_bus_interface_n_86 : STD_LOGIC;
  signal sd_bus_interface_n_87 : STD_LOGIC;
  signal sd_bus_interface_n_88 : STD_LOGIC;
  signal sd_bus_interface_n_90 : STD_LOGIC;
  signal sd_bus_interface_n_92 : STD_LOGIC;
  signal sd_bus_interface_n_93 : STD_LOGIC;
  signal sd_bus_interface_n_94 : STD_LOGIC;
  signal sd_bus_interface_n_95 : STD_LOGIC;
  signal sd_bus_interface_n_96 : STD_LOGIC;
  signal sd_bus_interface_n_97 : STD_LOGIC;
  signal sd_bus_interface_n_98 : STD_LOGIC;
  signal sd_bus_interface_n_99 : STD_LOGIC;
  signal send_no_resp : STD_LOGIC;
  signal send_no_resp0 : STD_LOGIC;
  signal send_resp : STD_LOGIC;
  signal sent_r1 : STD_LOGIC;
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
  signal \state_next__0_0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \^status_read\ : STD_LOGIC;
  signal update_2 : STD_LOGIC;
  signal valid_c1_out : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "updating_status_2:01000,responding:10000,validating_cmd:00010,idle:00001,updating_status_1:00100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cmd_missed_i_1 : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of cmd_unread_i_1 : label is "soft_lutpair142";
begin
  \FSM_onehot_state_reg[0]_0\ <= \^fsm_onehot_state_reg[0]_0\;
  Q(31 downto 0) <= \^q\(31 downto 0);
  \block_count_reg[31]\(31 downto 0) <= \^block_count_reg[31]\(31 downto 0);
  \card_status_reg[31]\(30 downto 0) <= \^card_status_reg[31]\(30 downto 0);
  dat_blocks_read(31 downto 0) <= \^dat_blocks_read\(31 downto 0);
  dat_crc_err <= \^dat_crc_err\;
  dat_width_4 <= \^dat_width_4\;
  fifo_empty <= \^fifo_empty\;
  last_cmd_is_acmd <= \^last_cmd_is_acmd\;
  ram_dev_addr(2 downto 0) <= \^ram_dev_addr\(2 downto 0);
  status_read <= \^status_read\;
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(0),
      Q => state(0),
      S => inactive_keeper_n_9
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(1),
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => inactive_keeper_n_9
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(2),
      Q => state(2),
      R => inactive_keeper_n_9
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(3),
      Q => state(3),
      R => inactive_keeper_n_9
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state_next__0\(4),
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => inactive_keeper_n_9
    );
card_status_keeper: entity work.adapter_axi_sd_0_0_card_status_keeper
     port map (
      CO(0) => rca_match,
      D(2) => \state_next__0_0\(6),
      D(1) => \state_next__0_0\(4),
      D(0) => \state_next__0_0\(1),
      \FSM_onehot_state_reg[0]\ => card_status_keeper_n_49,
      \FSM_onehot_state_reg[1]\ => dat_controller_n_86,
      \FSM_onehot_state_reg[1]_0\ => dat_controller_n_106,
      \FSM_onehot_state_reg[1]_1\ => dat_controller_n_47,
      \FSM_onehot_state_reg[2]\ => card_status_keeper_n_45,
      \FSM_onehot_state_reg[3]\ => card_status_keeper_n_48,
      \FSM_onehot_state_reg[6]\ => card_status_keeper_n_47,
      \FSM_onehot_state_reg[6]_0\ => sd_bus_interface_n_178,
      \FSM_onehot_state_reg[6]_1\ => dat_controller_n_90,
      Q(6) => data_writing_closed,
      Q(5) => dat_controller_n_38,
      Q(4) => dat_controller_n_39,
      Q(3) => data_reading_closed,
      Q(2) => dat_controller_n_41,
      Q(1) => dat_read_mode,
      Q(0) => dat_controller_n_43,
      S_AXI_ACLK => S_AXI_ACLK,
      acmd_defined_c => acmd_defined_c,
      acmd_defined_reg => sd_bus_interface_n_135,
      \card_status[11]_i_4\ => sd_bus_interface_n_127,
      \card_status_reg[10]_0\ => card_status_keeper_n_31,
      \card_status_reg[10]_1\ => card_status_keeper_n_32,
      \card_status_reg[10]_2\ => cmd_info_keeper_n_18,
      \card_status_reg[10]_3\ => sd_bus_interface_n_136,
      \card_status_reg[11]_0\ => card_status_keeper_n_34,
      \card_status_reg[11]_1\ => card_status_keeper_n_50,
      \card_status_reg[11]_2\ => card_status_keeper_n_52,
      \card_status_reg[11]_3\ => sd_bus_interface_n_90,
      \card_status_reg[23]_0\(9 downto 8) => card_status_next2_out(23 downto 22),
      \card_status_reg[23]_0\(7) => card_status_next2_out(19),
      \card_status_reg[23]_0\(6) => card_status_next2_out(7),
      \card_status_reg[23]_0\(5 downto 0) => card_status_next2_out(5 downto 0),
      \card_status_reg[31]_0\(30 downto 0) => \^card_status_reg[31]\(30 downto 0),
      \card_status_reg[31]_1\ => inactive_keeper_n_9,
      \card_status_reg[31]_2\(16 downto 9) => \card_status_reg[31]_0\(26 downto 19),
      \card_status_reg[31]_2\(8 downto 7) => \card_status_reg[31]_0\(16 downto 15),
      \card_status_reg[31]_2\(6 downto 1) => \card_status_reg[31]_0\(13 downto 8),
      \card_status_reg[31]_2\(0) => \card_status_reg[31]_0\(6),
      \card_status_reg[31]_3\ => range_check_n_2,
      \card_status_reg[31]_4\(16 downto 9) => \card_status_reg[31]_1\(26 downto 19),
      \card_status_reg[31]_4\(8 downto 7) => \card_status_reg[31]_1\(16 downto 15),
      \card_status_reg[31]_4\(6 downto 1) => \card_status_reg[31]_1\(13 downto 8),
      \card_status_reg[31]_4\(0) => \card_status_reg[31]_1\(6),
      \card_status_reg[9]_0\ => card_status_keeper_n_33,
      \card_status_reg[9]_1\ => card_status_keeper_n_38,
      \card_status_reg[9]_2\ => card_status_keeper_n_39,
      \card_status_reg[9]_3\ => card_status_keeper_n_43,
      \card_status_reg[9]_4\ => card_status_keeper_n_44,
      \card_status_reg[9]_5\ => card_status_keeper_n_46,
      \card_status_reg[9]_6\ => card_status_keeper_n_51,
      \card_status_reg[9]_7\ => sd_bus_interface_n_92,
      \card_status_resp_reg[10]_0\ => card_status_keeper_n_54,
      \card_status_resp_reg[14]_0\ => card_status_keeper_n_78,
      \card_status_resp_reg[15]_0\ => card_status_keeper_n_79,
      \card_status_resp_reg[28]_0\(21 downto 20) => card_status_resp(28 downto 27),
      \card_status_resp_reg[28]_0\(19 downto 16) => card_status_resp(25 downto 22),
      \card_status_resp_reg[28]_0\(15 downto 14) => card_status_resp(20 downto 19),
      \card_status_resp_reg[28]_0\(13 downto 12) => card_status_resp(17 downto 16),
      \card_status_resp_reg[28]_0\(11 downto 0) => card_status_resp(11 downto 0),
      \card_status_resp_reg[28]_1\(2) => card_status_resp_next(28),
      \card_status_resp_reg[28]_1\(1) => card_status_resp_next(13),
      \card_status_resp_reg[28]_1\(0) => card_status_resp_next(5),
      \card_status_resp_reg[29]_0\ => card_status_keeper_n_77,
      \card_status_resp_reg[8]_0\ => dat_controller_n_44,
      cmd_crc_err_stb => cmd_crc_err_stb,
      cmd_ignored_stb => cmd_ignored_stb,
      cmd_illegal_stb => cmd_illegal_stb,
      cmd_illegal_stb_reg => card_status_keeper_n_53,
      \cmd_index_reg[4]\ => card_status_keeper_n_36,
      erase_reset => erase_reset,
      erase_seq_error => erase_seq_error,
      ignored_c => ignored_c,
      invalid_dat_width => invalid_dat_width,
      no_more_write_data => no_more_write_data,
      out_of_range => out_of_range,
      p_3_out(0) => p_3_out_1(12),
      \resp_byte[5]_i_4\ => sd_bus_interface_n_69,
      \resp_byte[5]_i_4_0\ => sd_bus_interface_n_111,
      \resp_byte[5]_i_4_1\(1) => last_cmd_index(5),
      \resp_byte[5]_i_4_1\(0) => last_cmd_index(2),
      \resp_byte[7]_i_2\(1 downto 0) => resp_pos1(1 downto 0),
      \resp_byte[7]_i_2_0\(0) => \cmd_unit/p_2_in3_in\,
      sent_r1 => sent_r1,
      update_2 => update_2,
      valid_c1_out => valid_c1_out,
      valid_i_3_0 => sd_bus_interface_n_144,
      valid_i_3_1 => sd_bus_interface_n_142,
      valid_i_6_0 => sd_bus_interface_n_140,
      valid_reg => sd_bus_interface_n_131,
      valid_reg_0 => sd_bus_interface_n_141,
      valid_reg_i_5_0 => sd_bus_interface_n_134
    );
cmd_crc_err_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cmd_crc_err_stb0,
      Q => cmd_crc_err_stb,
      R => inactive_keeper_n_9
    );
cmd_ignored_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cmd_ignored_stb0,
      Q => cmd_ignored_stb,
      R => inactive_keeper_n_9
    );
cmd_illegal_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => cmd_illegal_stb0,
      Q => cmd_illegal_stb,
      R => inactive_keeper_n_9
    );
cmd_info_keeper: entity work.adapter_axi_sd_0_0_cmd_info_keeper
     port map (
      E(0) => p_6_out,
      Q(5 downto 0) => last_cmd_index(5 downto 0),
      S(3) => cmd_info_keeper_n_19,
      S(2) => cmd_info_keeper_n_20,
      S(1) => cmd_info_keeper_n_21,
      S(0) => cmd_info_keeper_n_22,
      SR(0) => sd_bus_interface_n_112,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      \axi_rdata[0]_i_3\(1 downto 0) => \reg_saved_reg[24][0]\(1 downto 0),
      \axi_rdata[26]_i_3\(9 downto 7) => \axi_rdata[28]_i_3\(19 downto 17),
      \axi_rdata[26]_i_3\(6 downto 0) => \axi_rdata[28]_i_3\(6 downto 0),
      \axi_rdata[26]_i_3_0\(9 downto 7) => \axi_rdata[28]_i_3_0\(19 downto 17),
      \axi_rdata[26]_i_3_0\(6 downto 0) => \axi_rdata[28]_i_3_0\(6 downto 0),
      \axi_rdata[26]_i_3_1\(9 downto 7) => \axi_rdata[28]_i_3_1\(18 downto 16),
      \axi_rdata[26]_i_3_1\(6 downto 0) => \axi_rdata[28]_i_3_1\(6 downto 0),
      \block_count_reg[15]_0\(3) => cmd_info_keeper_n_55,
      \block_count_reg[15]_0\(2) => cmd_info_keeper_n_56,
      \block_count_reg[15]_0\(1) => cmd_info_keeper_n_57,
      \block_count_reg[15]_0\(0) => cmd_info_keeper_n_58,
      \block_count_reg[23]_0\(3) => cmd_info_keeper_n_59,
      \block_count_reg[23]_0\(2) => cmd_info_keeper_n_60,
      \block_count_reg[23]_0\(1) => cmd_info_keeper_n_61,
      \block_count_reg[23]_0\(0) => cmd_info_keeper_n_62,
      \block_count_reg[31]_0\(31 downto 0) => \^block_count_reg[31]\(31 downto 0),
      \block_count_reg[31]_1\(3) => cmd_info_keeper_n_63,
      \block_count_reg[31]_1\(2) => cmd_info_keeper_n_64,
      \block_count_reg[31]_1\(1) => cmd_info_keeper_n_65,
      \block_count_reg[31]_1\(0) => cmd_info_keeper_n_66,
      block_limit_used => block_limit_used,
      \card_status_resp_reg[28]\(1) => \^card_status_reg[31]\(27),
      \card_status_resp_reg[28]\(0) => \^card_status_reg[31]\(12),
      cmd_saved_missed => cmd_saved_missed,
      cmd_saved_missed_reg => cmd_saved_missed_reg,
      cmd_saved_missed_reg_0 => \^status_read\,
      cmd_saved_unread => cmd_saved_unread,
      \erase_end_reg[31]_0\(31 downto 0) => \erase_end_reg[31]\(31 downto 0),
      erase_reset => erase_reset,
      erase_reset_reg_0 => sd_bus_interface_n_133,
      erase_reset_reg_1 => \^fsm_onehot_state_reg[0]_0\,
      erase_seq_error => erase_seq_error,
      erase_seq_error_reg_0 => cmd_info_keeper_n_18,
      erase_seq_error_reg_1(1) => card_status_resp_next(28),
      erase_seq_error_reg_1(0) => card_status_resp_next(13),
      erase_seq_error_reg_2 => sd_bus_interface_n_97,
      \erase_start_reg[31]_0\(31 downto 0) => \erase_start_reg[31]\(31 downto 0),
      \erase_step_reg[0]_0\ => cmd_info_keeper_n_5,
      \erase_step_reg[0]_1\ => sd_bus_interface_n_94,
      \erase_step_reg[1]_0\ => cmd_info_keeper_n_4,
      \erase_step_reg[1]_1\ => sd_bus_interface_n_93,
      got_cmd8_1 => got_cmd8_1,
      got_cmd8_1_reg_0 => sd_bus_interface_n_95,
      got_cmd8_reg_0 => inactive_keeper_n_9,
      invalid_dat_width => invalid_dat_width,
      new_cmd_saved_reg_0 => new_cmd_saved_reg,
      out_of_range => out_of_range,
      \pre_erase_count_reg[22]_0\(22 downto 0) => \pre_erase_count_reg[22]\(22 downto 0),
      \reg_saved_reg[19][0]\ => cmd_info_keeper_n_6,
      \reg_saved_reg[19][1]\ => cmd_info_keeper_n_7,
      \reg_saved_reg[19][24]\ => cmd_info_keeper_n_13,
      \reg_saved_reg[19][25]\ => cmd_info_keeper_n_14,
      \reg_saved_reg[19][26]\ => cmd_info_keeper_n_15,
      \reg_saved_reg[19][2]\ => cmd_info_keeper_n_8,
      \reg_saved_reg[19][3]\ => cmd_info_keeper_n_9,
      \reg_saved_reg[19][4]\ => cmd_info_keeper_n_10,
      \reg_saved_reg[19][5]\ => cmd_info_keeper_n_11,
      \reg_saved_reg[19][6]\ => cmd_info_keeper_n_12,
      \save_block_count_vars[1].block_count_vars_reg[1][22]_0\(0) => p_3_out,
      save_current_cmd => save_current_cmd,
      \save_erase_vars[0].erase_vars_reg[0][31]_0\(0) => p_9_out,
      \save_erase_vars[1].erase_vars_reg[1][31]_0\(31 downto 0) => \^q\(31 downto 0),
      \save_erase_vars[1].erase_vars_reg[1][31]_1\(0) => p_8_out,
      \saved_cmd_arg_reg[31]_0\(31 downto 0) => \saved_cmd_arg_reg[31]\(31 downto 0),
      saved_cmd_is_acmd_reg_0 => \^last_cmd_is_acmd\,
      state_next4_carry(2 downto 0) => \^dat_blocks_read\(3 downto 1),
      state_next4_carry_0 => \^dat_blocks_read\(0),
      state_next4_carry_1(3 downto 0) => \^dat_blocks_read\(7 downto 4),
      \state_next4_carry__0\(3 downto 0) => \^dat_blocks_read\(11 downto 8),
      \state_next4_carry__0_0\(3 downto 0) => \^dat_blocks_read\(15 downto 12),
      \state_next4_carry__1\(3 downto 0) => \^dat_blocks_read\(19 downto 16),
      \state_next4_carry__1_0\(3 downto 0) => \^dat_blocks_read\(23 downto 20),
      \state_next4_carry__2\(3 downto 0) => \^dat_blocks_read\(27 downto 24),
      \state_next4_carry__2_0\(3 downto 0) => \^dat_blocks_read\(31 downto 28),
      update_2 => update_2
    );
cmd_missed_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => cmd_missed,
      I1 => got_new_cmd,
      I2 => cmd_unread,
      I3 => S_AXI_ARESETN,
      I4 => \^status_read\,
      O => cmd_missed_reg
    );
cmd_unread_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => got_new_cmd,
      I1 => \^status_read\,
      I2 => cmd_unread,
      O => got_new_cmd_out_reg_0
    );
command_validator: entity work.adapter_axi_sd_0_0_command_validator
     port map (
      Q(4) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(3 downto 2) => state(3 downto 2),
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => state(0),
      S_AXI_ACLK => S_AXI_ACLK,
      acmd_defined_c => acmd_defined_c,
      acmd_defined_reg_0 => \^last_cmd_is_acmd\,
      \axi_rdata[14]_i_3\(1 downto 0) => \reg_saved_reg[24][0]\(1 downto 0),
      \axi_rdata[17]_i_3\(2 downto 0) => \axi_rdata[28]_i_3\(15 downto 13),
      \axi_rdata[17]_i_3_0\(2 downto 0) => \axi_rdata[28]_i_3_0\(15 downto 13),
      \axi_rdata[17]_i_3_1\(2 downto 0) => \axi_rdata[28]_i_3_1\(14 downto 12),
      cmd_ignored_stb0 => cmd_ignored_stb0,
      cmd_illegal_stb0 => cmd_illegal_stb0,
      cmd_received_good => cmd_received_good,
      ignored_c => ignored_c,
      illegal_reg_0 => sd_bus_interface_n_129,
      last_cmd_valid => last_cmd_valid,
      \reg_saved_reg[19][14]\ => command_validator_n_2,
      \reg_saved_reg[19][16]\ => command_validator_n_3,
      \reg_saved_reg[19][17]\ => command_validator_n_4,
      send_no_resp0 => send_no_resp0,
      send_resp => send_resp,
      valid_c1_out => valid_c1_out,
      valid_reg_0 => command_validator_n_5,
      valid_reg_1 => inactive_keeper_n_9
    );
dat_controller: entity work.adapter_axi_sd_0_0_dat_controller
     port map (
      CO(0) => CO(0),
      D(2) => \state_next__0_0\(6),
      D(1) => \state_next__0_0\(4),
      D(0) => \state_next__0_0\(1),
      E(0) => sd_bus_interface_n_70,
      \FSM_onehot_state[0]_i_3_0\ => card_status_keeper_n_52,
      \FSM_onehot_state[2]_i_2_0\ => card_status_keeper_n_33,
      \FSM_onehot_state[2]_i_2_1\ => \^dat_crc_err\,
      \FSM_onehot_state[3]_i_7_0\(3) => cmd_info_keeper_n_63,
      \FSM_onehot_state[3]_i_7_0\(2) => cmd_info_keeper_n_64,
      \FSM_onehot_state[3]_i_7_0\(1) => cmd_info_keeper_n_65,
      \FSM_onehot_state[3]_i_7_0\(0) => cmd_info_keeper_n_66,
      \FSM_onehot_state_reg[0]_0\ => sd_bus_interface_n_178,
      \FSM_onehot_state_reg[0]_1\ => card_status_keeper_n_49,
      \FSM_onehot_state_reg[1]_0\ => dat_controller_n_36,
      \FSM_onehot_state_reg[1]_1\ => dat_controller_n_83,
      \FSM_onehot_state_reg[1]_2\ => dat_controller_n_85,
      \FSM_onehot_state_reg[1]_3\ => dat_controller_n_87,
      \FSM_onehot_state_reg[1]_4\ => dat_controller_n_88,
      \FSM_onehot_state_reg[1]_5\(0) => dat_controller_n_151,
      \FSM_onehot_state_reg[2]_0\ => dat_controller_n_90,
      \FSM_onehot_state_reg[2]_1\ => dat_controller_n_106,
      \FSM_onehot_state_reg[2]_2\ => card_status_keeper_n_46,
      \FSM_onehot_state_reg[4]_0\ => \FSM_onehot_state_reg[4]_0\,
      \FSM_onehot_state_reg[4]_1\ => dat_controller_n_89,
      \FSM_onehot_state_reg[4]_2\ => dat_controller_n_91,
      \FSM_onehot_state_reg[5]_0\ => dat_controller_n_93,
      \FSM_onehot_state_reg[5]_1\ => card_status_keeper_n_32,
      \FSM_onehot_state_reg[5]_2\ => card_status_keeper_n_44,
      \FSM_onehot_state_reg[6]_0\ => dat_controller_n_105,
      \FSM_onehot_sys_state[2]_i_4\ => card_status_keeper_n_47,
      \FSM_onehot_sys_state[2]_i_4_0\ => card_status_keeper_n_31,
      \FSM_onehot_sys_state_reg[0]_0\ => card_status_keeper_n_48,
      \FSM_onehot_sys_state_reg[0]_1\ => card_status_keeper_n_43,
      \FSM_onehot_sys_state_reg[0]_2\ => card_status_keeper_n_45,
      \FSM_onehot_sys_state_reg[0]_3\ => \FSM_onehot_sys_state_reg[0]\,
      \FSM_onehot_sys_state_reg[2]_0\ => dat_controller_n_86,
      \FSM_sequential_state[1]_i_2\(2) => \dat_unit/state\(3),
      \FSM_sequential_state[1]_i_2\(1 downto 0) => \dat_unit/state\(1 downto 0),
      \FSM_sequential_state_reg[1]\ => dat_controller_n_92,
      \FSM_sequential_state_reg[1]_0\ => sd_bus_interface_n_102,
      \FSM_sequential_state_reg[1]_1\ => sd_bus_interface_n_101,
      O(2) => sd_bus_interface_n_11,
      O(1) => \dat_unit/state_next214_in\,
      O(0) => \dat_unit/p_0_in\,
      Q(6) => data_writing_closed,
      Q(5) => dat_controller_n_38,
      Q(4) => dat_controller_n_39,
      Q(3) => data_reading_closed,
      Q(2) => dat_controller_n_41,
      Q(1) => dat_read_mode,
      Q(0) => dat_controller_n_43,
      S(3) => cmd_info_keeper_n_19,
      S(2) => cmd_info_keeper_n_20,
      S(1) => cmd_info_keeper_n_21,
      S(0) => cmd_info_keeper_n_22,
      SR(0) => write_ok15_in,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARVALID => S_AXI_ARVALID,
      \addr_write_reg[3]\ => dat_controller_n_84,
      \addr_write_reg[9]\ => dat_controller_n_44,
      \axi_araddr_reg[2]\ => \^status_read\,
      axi_arready_reg(0) => E(0),
      \axi_rdata[28]_i_3\(1 downto 0) => \axi_rdata[28]_i_3\(21 downto 20),
      \axi_rdata[28]_i_3_0\(1 downto 0) => \axi_rdata[28]_i_3_0\(21 downto 20),
      \axi_rdata[28]_i_3_1\(1 downto 0) => \axi_rdata[28]_i_3_1\(20 downto 19),
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_0\,
      \axi_rdata_reg[0]_1\ => \axi_rdata_reg[0]_1\,
      \axi_rdata_reg[0]_2\ => \axi_rdata_reg[0]_2\,
      \axi_rdata_reg[0]_3\ => cmd_info_keeper_n_6,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]\,
      \axi_rdata_reg[10]_0\ => sd_bus_interface_n_84,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]\,
      \axi_rdata_reg[11]_0\ => sd_bus_interface_n_85,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]\,
      \axi_rdata_reg[12]_0\ => sd_bus_interface_n_86,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]\,
      \axi_rdata_reg[13]_0\ => sd_bus_interface_n_87,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]\,
      \axi_rdata_reg[14]_0\ => command_validator_n_2,
      \axi_rdata_reg[15]\ => \axi_rdata_reg[15]\,
      \axi_rdata_reg[15]_0\ => \axi_rdata_reg[15]_0\,
      \axi_rdata_reg[16]\ => \axi_rdata_reg[16]\,
      \axi_rdata_reg[16]_0\ => command_validator_n_3,
      \axi_rdata_reg[17]\ => \axi_rdata_reg[17]\,
      \axi_rdata_reg[17]_0\ => command_validator_n_4,
      \axi_rdata_reg[18]\ => \axi_rdata_reg[18]\,
      \axi_rdata_reg[18]_0\ => \axi_rdata_reg[18]_0\,
      \axi_rdata_reg[19]\ => \axi_rdata_reg[19]\,
      \axi_rdata_reg[19]_0\ => \axi_rdata_reg[19]_0\,
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]\,
      \axi_rdata_reg[1]_0\ => cmd_info_keeper_n_7,
      \axi_rdata_reg[20]\ => \axi_rdata_reg[20]\,
      \axi_rdata_reg[20]_0\ => \axi_rdata_reg[20]_0\,
      \axi_rdata_reg[21]\ => \axi_rdata_reg[21]\,
      \axi_rdata_reg[21]_0\ => \axi_rdata_reg[21]_0\,
      \axi_rdata_reg[22]\ => \axi_rdata_reg[22]\,
      \axi_rdata_reg[22]_0\ => inactive_keeper_n_5,
      \axi_rdata_reg[23]\ => \axi_rdata_reg[23]\,
      \axi_rdata_reg[23]_0\ => \axi_rdata_reg[23]_0\,
      \axi_rdata_reg[24]\ => \axi_rdata_reg[24]\,
      \axi_rdata_reg[24]_0\ => cmd_info_keeper_n_13,
      \axi_rdata_reg[25]\ => \axi_rdata_reg[25]\,
      \axi_rdata_reg[25]_0\ => cmd_info_keeper_n_14,
      \axi_rdata_reg[26]\ => \axi_rdata_reg[26]\,
      \axi_rdata_reg[26]_0\ => cmd_info_keeper_n_15,
      \axi_rdata_reg[27]\ => \axi_rdata_reg[27]\,
      \axi_rdata_reg[28]\ => \axi_rdata_reg[28]\,
      \axi_rdata_reg[29]\ => \axi_rdata_reg[29]\,
      \axi_rdata_reg[29]_0\ => \axi_rdata_reg[29]_0\,
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]\,
      \axi_rdata_reg[2]_0\ => cmd_info_keeper_n_8,
      \axi_rdata_reg[30]\ => \axi_rdata_reg[30]\,
      \axi_rdata_reg[30]_0\ => \axi_rdata_reg[30]_0\,
      \axi_rdata_reg[31]\(31 downto 0) => \axi_rdata_reg[31]\(31 downto 0),
      \axi_rdata_reg[31]_0\ => \axi_rdata_reg[31]_0\,
      \axi_rdata_reg[31]_1\ => \axi_rdata_reg[31]_1\,
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]\,
      \axi_rdata_reg[3]_0\ => cmd_info_keeper_n_9,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]\,
      \axi_rdata_reg[4]_0\ => cmd_info_keeper_n_10,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]\,
      \axi_rdata_reg[5]_0\ => cmd_info_keeper_n_11,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]\,
      \axi_rdata_reg[6]_0\ => cmd_info_keeper_n_12,
      \axi_rdata_reg[7]\ => \axi_rdata_reg[7]\,
      \axi_rdata_reg[7]_0\ => \axi_rdata_reg[7]_0\,
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]\,
      \axi_rdata_reg[8]_0\ => sd_bus_interface_n_82,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]\,
      \axi_rdata_reg[9]_0\ => sd_bus_interface_n_83,
      \block_data_finished0_carry__0\(0) => sd_bus_interface_n_14,
      \block_data_finished0_inferred__0/i__carry\(0) => \dat_unit/crc_finished\,
      block_limit_used => block_limit_used,
      \block_size_reg[12]_0\(4) => dat_block_size(12),
      \block_size_reg[12]_0\(3) => dat_block_size(9),
      \block_size_reg[12]_0\(2 downto 0) => dat_block_size(7 downto 5),
      \block_size_reg[12]_1\(0) => dat_controller_n_152,
      \block_size_reg[12]_2\(4) => sd_bus_interface_n_63,
      \block_size_reg[12]_2\(3) => block_size_next(9),
      \block_size_reg[12]_2\(2 downto 0) => block_size_next(7 downto 5),
      \block_size_reg[7]_0\(0) => dat_controller_n_98,
      \block_size_reg[7]_1\(0) => dat_controller_n_104,
      \card_status[11]_i_4\(2 downto 0) => \^card_status_reg[31]\(11 downto 9),
      cmd_saved_unread => cmd_saved_unread,
      cmd_unread => cmd_unread,
      dat_got_block => dat_got_block,
      dat_got_word => dat_got_word,
      dat_width_4_reg_0 => \^dat_width_4\,
      dat_width_4_reg_1 => dat_controller_n_96,
      dat_width_4_reg_10 => dat_controller_n_144,
      dat_width_4_reg_11 => dat_controller_n_145,
      dat_width_4_reg_12 => dat_controller_n_146,
      dat_width_4_reg_13 => dat_controller_n_147,
      dat_width_4_reg_14 => dat_controller_n_148,
      dat_width_4_reg_15 => dat_controller_n_149,
      dat_width_4_reg_16 => dat_controller_n_150,
      dat_width_4_reg_17 => inactive_keeper_n_9,
      dat_width_4_reg_18 => dat_width_4_reg,
      dat_width_4_reg_2 => dat_controller_n_97,
      dat_width_4_reg_3 => dat_controller_n_137,
      dat_width_4_reg_4 => dat_controller_n_138,
      dat_width_4_reg_5 => dat_controller_n_139,
      dat_width_4_reg_6 => dat_controller_n_140,
      dat_width_4_reg_7 => dat_controller_n_141,
      dat_width_4_reg_8 => dat_controller_n_142,
      dat_width_4_reg_9 => dat_controller_n_143,
      dat_wrote_new_word => dat_wrote_new_word,
      data_write_en => data_write_en,
      \dev_blocks_read_reg[0]_0\ => \^dat_blocks_read\(0),
      \dev_blocks_read_reg[11]_0\(3 downto 0) => \^dat_blocks_read\(11 downto 8),
      \dev_blocks_read_reg[15]_0\(3 downto 0) => \^dat_blocks_read\(15 downto 12),
      \dev_blocks_read_reg[19]_0\(3 downto 0) => \^dat_blocks_read\(19 downto 16),
      \dev_blocks_read_reg[23]_0\(3 downto 0) => \^dat_blocks_read\(23 downto 20),
      \dev_blocks_read_reg[27]_0\(3 downto 0) => \^dat_blocks_read\(27 downto 24),
      \dev_blocks_read_reg[31]_0\(3 downto 0) => \^dat_blocks_read\(31 downto 28),
      \dev_blocks_read_reg[3]_0\(2 downto 0) => \^dat_blocks_read\(3 downto 1),
      \dev_blocks_read_reg[7]_0\(3 downto 0) => \^dat_blocks_read\(7 downto 4),
      \dev_last_block_reg[7]_0\ => card_status_keeper_n_50,
      empty_reg => \^fifo_empty\,
      empty_reg_0 => empty_reg,
      interrupt => interrupt,
      interrupt_0(3 downto 2) => interrupt_0(5 downto 4),
      interrupt_0(1 downto 0) => interrupt_0(1 downto 0),
      interrupt_1 => inactive_keeper_n_4,
      invalid_dat_width => invalid_dat_width,
      invalid_dat_width_reg_0 => sd_bus_interface_n_99,
      multi_block_mode_next => multi_block_mode_next,
      multi_block_mode_reg_0 => dat_controller_n_47,
      new_sd_clk => new_sd_clk,
      no_more_write_data => no_more_write_data,
      ram_reg => ram_reg,
      ram_reg_0 => ram_reg_0,
      ram_reg_1 => ram_reg_1,
      ram_reg_10 => ram_reg_10,
      ram_reg_11 => ram_reg_11,
      ram_reg_12 => ram_reg_12,
      ram_reg_13 => ram_reg_13,
      ram_reg_14 => ram_reg_14,
      ram_reg_15 => ram_reg_15,
      ram_reg_16 => ram_reg_16,
      ram_reg_17 => ram_reg_17,
      ram_reg_18 => ram_reg_18,
      ram_reg_19 => ram_reg_19,
      ram_reg_2 => ram_reg_2,
      ram_reg_20 => ram_reg_20,
      ram_reg_21 => ram_reg_21,
      ram_reg_22 => ram_reg_22,
      ram_reg_23 => ram_reg_23,
      ram_reg_24 => ram_reg_24,
      ram_reg_25 => ram_reg_25,
      ram_reg_26 => ram_reg_26,
      ram_reg_27 => ram_reg_27,
      ram_reg_28 => ram_reg_28,
      ram_reg_29 => ram_reg_29,
      ram_reg_3 => ram_reg_3,
      ram_reg_30 => ram_reg_30,
      ram_reg_31 => dat_controller_n_94,
      ram_reg_32 => dat_controller_n_95,
      ram_reg_33 => dat_controller_n_107,
      ram_reg_34 => dat_controller_n_108,
      ram_reg_35 => dat_controller_n_109,
      ram_reg_36 => dat_controller_n_110,
      ram_reg_37 => dat_controller_n_111,
      ram_reg_38 => dat_controller_n_112,
      ram_reg_39 => dat_controller_n_113,
      ram_reg_4 => ram_reg_4,
      ram_reg_40 => dat_controller_n_114,
      ram_reg_41 => dat_controller_n_115,
      ram_reg_42 => dat_controller_n_116,
      ram_reg_43 => dat_controller_n_117,
      ram_reg_44 => dat_controller_n_118,
      ram_reg_45 => dat_controller_n_119,
      ram_reg_46 => dat_controller_n_120,
      ram_reg_47 => dat_controller_n_121,
      ram_reg_48 => dat_controller_n_122,
      ram_reg_49 => dat_controller_n_123,
      ram_reg_5 => ram_reg_5,
      ram_reg_50 => dat_controller_n_124,
      ram_reg_51 => dat_controller_n_125,
      ram_reg_52 => dat_controller_n_126,
      ram_reg_53 => dat_controller_n_127,
      ram_reg_54 => dat_controller_n_128,
      ram_reg_55 => dat_controller_n_129,
      ram_reg_56 => dat_controller_n_130,
      ram_reg_57 => dat_controller_n_131,
      ram_reg_58 => dat_controller_n_132,
      ram_reg_59 => dat_controller_n_133,
      ram_reg_6 => ram_reg_6,
      ram_reg_60 => dat_controller_n_134,
      ram_reg_61 => dat_controller_n_135,
      ram_reg_62 => dat_controller_n_136,
      ram_reg_63(31 downto 0) => ram_reg_31(31 downto 0),
      ram_reg_64(31 downto 0) => dat_read_data(31 downto 0),
      ram_reg_7 => ram_reg_7,
      ram_reg_8 => ram_reg_8,
      ram_reg_9 => ram_reg_9,
      \reg_saved_reg[24][0]\(4 downto 0) => \reg_saved_reg[24][0]\(4 downto 0),
      \state_next4_carry__1_0\(3) => cmd_info_keeper_n_55,
      \state_next4_carry__1_0\(2) => cmd_info_keeper_n_56,
      \state_next4_carry__1_0\(1) => cmd_info_keeper_n_57,
      \state_next4_carry__1_0\(0) => cmd_info_keeper_n_58,
      \state_next4_carry__2_0\(3) => cmd_info_keeper_n_59,
      \state_next4_carry__2_0\(2) => cmd_info_keeper_n_60,
      \state_next4_carry__2_0\(1) => cmd_info_keeper_n_61,
      \state_next4_carry__2_0\(0) => cmd_info_keeper_n_62,
      \state_next4_carry__2_1\(31 downto 0) => \^block_count_reg[31]\(31 downto 0)
    );
got_new_cmd_out_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => got_new_cmd,
      R => inactive_keeper_n_9
    );
inactive_keeper: entity work.adapter_axi_sd_0_0_inactive_keeper
     port map (
      SR(0) => SR(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => cmd_missed1,
      \axi_rdata[22]_i_3\(0) => \axi_rdata[28]_i_3\(16),
      \axi_rdata[22]_i_3_0\(0) => \axi_rdata[28]_i_3_0\(16),
      \axi_rdata[22]_i_3_1\(1 downto 0) => \reg_saved_reg[24][0]\(1 downto 0),
      \axi_rdata[22]_i_3_2\(0) => \axi_rdata[28]_i_3_1\(15),
      device_reset_r => device_reset_r,
      device_reset_r_reg => device_reset_r_reg,
      device_reset_r_reg_0 => \^status_read\,
      got_acmd41_non_query_reg_0 => inactive_keeper_n_2,
      got_acmd41_non_query_reg_1 => sd_bus_interface_n_88,
      got_cmd00 => got_cmd00,
      \got_cmd0_reg[0]_0\ => inactive_keeper_n_9,
      inactive_reg_0 => is_inactive,
      inactive_reg_1 => inactive_reg,
      interrupt(1 downto 0) => interrupt_0(3 downto 2),
      \ocr_high_byte_reg[31]\(7 downto 0) => \ocr_high_byte_reg[31]_0\(7 downto 0),
      \reg_saved_reg[19][22]\ => inactive_keeper_n_5,
      resetn => resetn,
      \set_reg_clear_reset[10].reg_clear_reset_reg[10][22]\ => inactive_keeper_n_4,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][24]\ => inactive_keeper_n_16,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][25]\ => inactive_keeper_n_15,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][26]\ => inactive_keeper_n_14,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][27]\ => inactive_keeper_n_13,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][28]\ => inactive_keeper_n_12,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][29]\ => inactive_keeper_n_11,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][30]\ => inactive_keeper_n_10,
      \set_reg_clear_reset[8].reg_clear_reset_reg[8][31]\ => inactive_keeper_n_8,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][0]\ => inactive_keeper_n_48,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][10]\ => inactive_keeper_n_38,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][11]\ => inactive_keeper_n_37,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][12]\ => inactive_keeper_n_36,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][13]\ => inactive_keeper_n_35,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][14]\ => inactive_keeper_n_34,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][15]\ => inactive_keeper_n_33,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][16]\ => inactive_keeper_n_32,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][17]\ => inactive_keeper_n_31,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][18]\ => inactive_keeper_n_30,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][19]\ => inactive_keeper_n_29,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][1]\ => inactive_keeper_n_47,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][20]\ => inactive_keeper_n_28,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][21]\ => inactive_keeper_n_27,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][22]\ => inactive_keeper_n_26,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][23]\ => inactive_keeper_n_25,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][24]\ => inactive_keeper_n_24,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][25]\ => inactive_keeper_n_23,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][26]\ => inactive_keeper_n_22,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][27]\ => inactive_keeper_n_21,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][28]\ => inactive_keeper_n_20,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][29]\ => inactive_keeper_n_19,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][2]\ => inactive_keeper_n_46,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][30]\ => inactive_keeper_n_18,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][31]\ => inactive_keeper_n_17,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][3]\ => inactive_keeper_n_45,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][4]\ => inactive_keeper_n_44,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][5]\ => inactive_keeper_n_43,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][6]\ => inactive_keeper_n_42,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][7]\ => inactive_keeper_n_41,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][8]\ => inactive_keeper_n_40,
      \set_reg_clear_reset[9].reg_clear_reset_reg[9][9]\ => inactive_keeper_n_39,
      \size_reg[31]\(31 downto 0) => \size_reg[31]_0\(31 downto 0)
    );
\ocr_high_byte_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_16,
      Q => \ocr_high_byte_reg_n_0_[24]\,
      R => '0'
    );
\ocr_high_byte_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_15,
      Q => \ocr_high_byte_reg_n_0_[25]\,
      R => '0'
    );
\ocr_high_byte_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_14,
      Q => \ocr_high_byte_reg_n_0_[26]\,
      R => '0'
    );
\ocr_high_byte_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_13,
      Q => \ocr_high_byte_reg_n_0_[27]\,
      R => '0'
    );
\ocr_high_byte_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_12,
      Q => \ocr_high_byte_reg_n_0_[28]\,
      R => '0'
    );
\ocr_high_byte_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_11,
      Q => \ocr_high_byte_reg_n_0_[29]\,
      R => '0'
    );
\ocr_high_byte_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_10,
      Q => \ocr_high_byte_reg_n_0_[30]\,
      R => '0'
    );
\ocr_high_byte_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_8,
      Q => initialization_done,
      R => '0'
    );
range_check: entity work.adapter_axi_sd_0_0_range_check
     port map (
      CO(0) => p_1_in,
      DI(3) => sd_bus_interface_n_150,
      DI(2) => sd_bus_interface_n_151,
      DI(1) => sd_bus_interface_n_152,
      DI(0) => sd_bus_interface_n_153,
      S(3) => sd_bus_interface_n_146,
      S(2) => sd_bus_interface_n_147,
      S(1) => sd_bus_interface_n_148,
      S(0) => sd_bus_interface_n_149,
      S_AXI_ACLK => S_AXI_ACLK,
      invalid_dat_width => invalid_dat_width,
      out_of_range => out_of_range,
      \out_of_range0_carry__1_0\(3) => sd_bus_interface_n_158,
      \out_of_range0_carry__1_0\(2) => sd_bus_interface_n_159,
      \out_of_range0_carry__1_0\(1) => sd_bus_interface_n_160,
      \out_of_range0_carry__1_0\(0) => sd_bus_interface_n_161,
      \out_of_range0_carry__1_1\(3) => sd_bus_interface_n_154,
      \out_of_range0_carry__1_1\(2) => sd_bus_interface_n_155,
      \out_of_range0_carry__1_1\(1) => sd_bus_interface_n_156,
      \out_of_range0_carry__1_1\(0) => sd_bus_interface_n_157,
      \out_of_range0_carry__2_0\(3) => sd_bus_interface_n_166,
      \out_of_range0_carry__2_0\(2) => sd_bus_interface_n_167,
      \out_of_range0_carry__2_0\(1) => sd_bus_interface_n_168,
      \out_of_range0_carry__2_0\(0) => sd_bus_interface_n_169,
      \out_of_range0_carry__2_1\(3) => sd_bus_interface_n_162,
      \out_of_range0_carry__2_1\(2) => sd_bus_interface_n_163,
      \out_of_range0_carry__2_1\(1) => sd_bus_interface_n_164,
      \out_of_range0_carry__2_1\(0) => sd_bus_interface_n_165,
      out_of_range_reg_0 => range_check_n_2,
      out_of_range_reg_1 => sd_bus_interface_n_98,
      out_of_range_reg_2(3) => sd_bus_interface_n_174,
      out_of_range_reg_2(2) => sd_bus_interface_n_175,
      out_of_range_reg_2(1) => sd_bus_interface_n_176,
      out_of_range_reg_2(0) => sd_bus_interface_n_177,
      out_of_range_reg_3(3) => sd_bus_interface_n_170,
      out_of_range_reg_3(2) => sd_bus_interface_n_171,
      out_of_range_reg_3(1) => sd_bus_interface_n_172,
      out_of_range_reg_3(0) => sd_bus_interface_n_173
    );
rca_keeper: entity work.adapter_axi_sd_0_0_rca_keeper
     port map (
      CO(0) => rca_match,
      E(0) => sd_bus_interface_n_116,
      Q(15 downto 0) => rca(15 downto 0),
      S(1) => sd_bus_interface_n_137,
      S(0) => sd_bus_interface_n_138,
      S_AXI_ACLK => S_AXI_ACLK,
      ignored_reg(0) => sd_bus_interface_n_139,
      \rca_match_carry__0_0\(6) => \^q\(31),
      \rca_match_carry__0_0\(5 downto 0) => \^q\(27 downto 22),
      \rca_reg[0]_0\ => inactive_keeper_n_9
    );
responder: entity work.adapter_axi_sd_0_0_responder
     port map (
      D(7 downto 0) => resp_byte_next(7 downto 0),
      Q(2 downto 1) => resp_cur(2 downto 1),
      Q(0) => \^ram_dev_addr\(2),
      S_AXI_ACLK => S_AXI_ACLK,
      \card_status_reg[23]\(8 downto 7) => card_status_next2_out(23 downto 22),
      \card_status_reg[23]\(6) => card_status_next2_out(19),
      \card_status_reg[23]\(5) => card_status_next2_out(7),
      \card_status_reg[23]\(4 downto 0) => card_status_next2_out(4 downto 0),
      \card_status_reg[23]_0\(8 downto 7) => \card_status_reg[31]_0\(18 downto 17),
      \card_status_reg[23]_0\(6) => \card_status_reg[31]_0\(14),
      \card_status_reg[23]_0\(5) => \card_status_reg[31]_0\(7),
      \card_status_reg[23]_0\(4 downto 0) => \card_status_reg[31]_0\(4 downto 0),
      \card_status_reg[23]_1\(8 downto 7) => \^card_status_reg[31]\(22 downto 21),
      \card_status_reg[23]_1\(6) => \^card_status_reg[31]\(18),
      \card_status_reg[23]_1\(5) => \^card_status_reg[31]\(7),
      \card_status_reg[23]_1\(4 downto 0) => \^card_status_reg[31]\(4 downto 0),
      \card_status_reg[23]_2\(8 downto 7) => \card_status_reg[31]_1\(18 downto 17),
      \card_status_reg[23]_2\(6) => \card_status_reg[31]_1\(14),
      \card_status_reg[23]_2\(5) => \card_status_reg[31]_1\(7),
      \card_status_reg[23]_2\(4 downto 0) => \card_status_reg[31]_1\(4 downto 0),
      cmd_crc_err_stb => cmd_crc_err_stb,
      cmd_illegal_stb => cmd_illegal_stb,
      \resp_byte_reg[7]_0\(7 downto 0) => resp_byte(7 downto 0),
      \resp_cur_reg[2]_0\ => inactive_keeper_n_9,
      \resp_len_reg[4]_0\(3) => resp_len_bytes(4),
      \resp_len_reg[4]_0\(2 downto 0) => resp_len_bytes(2 downto 0),
      \resp_len_reg[4]_1\(3) => resp_len_next(4),
      \resp_len_reg[4]_1\(2 downto 0) => resp_len_next(2 downto 0),
      resp_next(2 downto 0) => resp_next(2 downto 0),
      resp_no_crc => resp_no_crc,
      resp_no_crc_next => resp_no_crc_next,
      resp_no_crc_reg_0 => sd_bus_interface_n_80,
      \resp_type_out_reg[0]_0\ => sd_bus_interface_n_81,
      \resp_type_out_reg[4]_0\ => sd_bus_interface_n_96,
      send_resp => send_resp,
      send_resp_o_reg_0 => sd_bus_interface_n_79,
      sent_r1 => sent_r1
    );
sd_bus_interface: entity work.adapter_axi_sd_0_0_sd_bus_interface
     port map (
      CO(0) => p_1_in,
      D(0) => D(0),
      DI(3) => sd_bus_interface_n_150,
      DI(2) => sd_bus_interface_n_151,
      DI(1) => sd_bus_interface_n_152,
      DI(0) => sd_bus_interface_n_153,
      E(0) => sd_bus_interface_n_70,
      \FSM_onehot_state_reg[0]\ => \^fsm_onehot_state_reg[0]_0\,
      \FSM_onehot_state_reg[0]_0\(0) => sd_bus_interface_n_116,
      \FSM_onehot_state_reg[3]\ => sd_bus_interface_n_80,
      \FSM_onehot_state_reg[4]\(4 downto 0) => \state_next__0\(4 downto 0),
      \FSM_onehot_state_reg[4]_0\(4) => \FSM_onehot_state_reg_n_0_[4]\,
      \FSM_onehot_state_reg[4]_0\(3 downto 2) => state(3 downto 2),
      \FSM_onehot_state_reg[4]_0\(1) => \FSM_onehot_state_reg_n_0_[1]\,
      \FSM_onehot_state_reg[4]_0\(0) => state(0),
      \FSM_sequential_state[0]_i_14\(0) => dat_controller_n_152,
      \FSM_sequential_state_reg[0]\ => sd_bus_interface_n_101,
      \FSM_sequential_state_reg[0]_0\ => dat_controller_n_89,
      \FSM_sequential_state_reg[0]_1\ => dat_controller_n_93,
      \FSM_sequential_state_reg[0]_2\ => dat_controller_n_44,
      \FSM_sequential_state_reg[1]\ => sd_bus_interface_n_102,
      \FSM_sequential_state_reg[1]_0\ => dat_controller_n_88,
      \FSM_sequential_state_reg[1]_1\ => dat_controller_n_84,
      \FSM_sequential_state_reg[1]_2\(0) => dat_controller_n_151,
      \FSM_sequential_state_reg[2]\ => dat_controller_n_83,
      \FSM_sequential_state_reg[3]\ => sd_bus_interface_n_178,
      \FSM_sequential_state_reg[3]_0\ => dat_controller_n_91,
      O(2) => sd_bus_interface_n_11,
      O(1) => \dat_unit/state_next214_in\,
      O(0) => \dat_unit/p_0_in\,
      Q(2) => \dat_unit/state\(3),
      Q(1 downto 0) => \dat_unit/state\(1 downto 0),
      S(1) => sd_bus_interface_n_137,
      S(0) => sd_bus_interface_n_138,
      SR(0) => sd_bus_interface_n_112,
      S_AXI_ACLK => S_AXI_ACLK,
      acmd_defined_reg(0) => p_6_out,
      acmd_defined_reg_0 => sd_bus_interface_n_133,
      acmd_defined_reg_1(0) => card_status_resp_next(5),
      \axi_rdata[13]_i_3\(5 downto 0) => \axi_rdata[28]_i_3\(12 downto 7),
      \axi_rdata[13]_i_3_0\(5 downto 0) => \axi_rdata[28]_i_3_0\(12 downto 7),
      \axi_rdata[13]_i_3_1\(1 downto 0) => \reg_saved_reg[24][0]\(1 downto 0),
      \axi_rdata[13]_i_3_2\(4 downto 0) => \axi_rdata[28]_i_3_1\(11 downto 7),
      \block_data_finished0_carry__0\(0) => dat_controller_n_98,
      \block_data_finished0_inferred__0/i__carry__0\(0) => dat_controller_n_104,
      \block_data_finished0_inferred__0/i__carry__0_0\(4) => dat_block_size(12),
      \block_data_finished0_inferred__0/i__carry__0_0\(3) => dat_block_size(9),
      \block_data_finished0_inferred__0/i__carry__0_0\(2 downto 0) => dat_block_size(7 downto 5),
      \buf_write_reg[10]\ => dat_controller_n_148,
      \buf_write_reg[11]\ => dat_controller_n_147,
      \buf_write_reg[12]\ => dat_controller_n_146,
      \buf_write_reg[13]\ => dat_controller_n_145,
      \buf_write_reg[14]\ => dat_controller_n_144,
      \buf_write_reg[15]\ => dat_controller_n_97,
      \buf_write_reg[24]\ => dat_controller_n_143,
      \buf_write_reg[25]\ => dat_controller_n_142,
      \buf_write_reg[26]\ => dat_controller_n_141,
      \buf_write_reg[27]\ => dat_controller_n_140,
      \buf_write_reg[28]\ => dat_controller_n_139,
      \buf_write_reg[29]\ => dat_controller_n_138,
      \buf_write_reg[30]\ => dat_controller_n_137,
      \buf_write_reg[31]\ => dat_controller_n_96,
      \buf_write_reg[32]\ => dat_controller_n_136,
      \buf_write_reg[33]\ => dat_controller_n_135,
      \buf_write_reg[34]\ => dat_controller_n_134,
      \buf_write_reg[35]\ => dat_controller_n_133,
      \buf_write_reg[36]\ => dat_controller_n_132,
      \buf_write_reg[37]\ => dat_controller_n_131,
      \buf_write_reg[38]\ => dat_controller_n_130,
      \buf_write_reg[39]\ => dat_controller_n_129,
      \buf_write_reg[40]\ => dat_controller_n_128,
      \buf_write_reg[41]\ => dat_controller_n_127,
      \buf_write_reg[42]\ => dat_controller_n_126,
      \buf_write_reg[43]\ => dat_controller_n_125,
      \buf_write_reg[44]\ => dat_controller_n_124,
      \buf_write_reg[45]\ => dat_controller_n_123,
      \buf_write_reg[46]\ => dat_controller_n_122,
      \buf_write_reg[47]\ => dat_controller_n_95,
      \buf_write_reg[48]\ => dat_controller_n_121,
      \buf_write_reg[49]\ => dat_controller_n_120,
      \buf_write_reg[50]\ => dat_controller_n_119,
      \buf_write_reg[51]\ => dat_controller_n_118,
      \buf_write_reg[52]\ => dat_controller_n_117,
      \buf_write_reg[53]\ => dat_controller_n_116,
      \buf_write_reg[54]\ => dat_controller_n_115,
      \buf_write_reg[55]\ => dat_controller_n_114,
      \buf_write_reg[56]\ => dat_controller_n_113,
      \buf_write_reg[57]\ => dat_controller_n_112,
      \buf_write_reg[58]\ => dat_controller_n_111,
      \buf_write_reg[59]\ => dat_controller_n_110,
      \buf_write_reg[60]\ => dat_controller_n_109,
      \buf_write_reg[61]\ => dat_controller_n_108,
      \buf_write_reg[62]\ => dat_controller_n_107,
      \buf_write_reg[8]\ => dat_controller_n_150,
      \buf_write_reg[9]\ => dat_controller_n_149,
      \card_status[11]_i_4\ => card_status_keeper_n_39,
      \card_status_reg[11]\ => sd_bus_interface_n_90,
      \card_status_reg[11]_0\(3 downto 1) => \^card_status_reg[31]\(11 downto 9),
      \card_status_reg[11]_0\(0) => \^card_status_reg[31]\(5),
      \card_status_reg[5]\ => sd_bus_interface_n_129,
      \card_status_reg[5]_0\ => card_status_keeper_n_53,
      \card_status_reg[5]_1\(0) => \card_status_reg[31]_0\(5),
      \card_status_reg[5]_2\(0) => \card_status_reg[31]_1\(5),
      \card_status_reg[9]\ => sd_bus_interface_n_92,
      \card_status_reg[9]_0\ => dat_controller_n_105,
      \card_status_reg[9]_1\ => card_status_keeper_n_38,
      \cmd_arg_reg[0]\ => sd_bus_interface_n_99,
      \cmd_arg_reg[15]\(3) => sd_bus_interface_n_158,
      \cmd_arg_reg[15]\(2) => sd_bus_interface_n_159,
      \cmd_arg_reg[15]\(1) => sd_bus_interface_n_160,
      \cmd_arg_reg[15]\(0) => sd_bus_interface_n_161,
      \cmd_arg_reg[19]\ => \cmd_arg_reg[19]\,
      \cmd_arg_reg[23]\(3) => sd_bus_interface_n_166,
      \cmd_arg_reg[23]\(2) => sd_bus_interface_n_167,
      \cmd_arg_reg[23]\(1) => sd_bus_interface_n_168,
      \cmd_arg_reg[23]\(0) => sd_bus_interface_n_169,
      \cmd_arg_reg[30]\(0) => sd_bus_interface_n_139,
      \cmd_arg_reg[31]\(31 downto 0) => \^q\(31 downto 0),
      \cmd_arg_reg[31]_0\(3) => sd_bus_interface_n_174,
      \cmd_arg_reg[31]_0\(2) => sd_bus_interface_n_175,
      \cmd_arg_reg[31]_0\(1) => sd_bus_interface_n_176,
      \cmd_arg_reg[31]_0\(0) => sd_bus_interface_n_177,
      cmd_crc_err_reg => sd_bus_interface_n_59,
      cmd_crc_err_stb0 => cmd_crc_err_stb0,
      \cmd_index_reg[0]\(3) => resp_len_next(4),
      \cmd_index_reg[0]\(2 downto 0) => resp_len_next(2 downto 0),
      \cmd_index_reg[0]_0\ => sd_bus_interface_n_96,
      \cmd_index_reg[0]_1\(0) => p_3_out,
      \cmd_index_reg[0]_2\ => sd_bus_interface_n_127,
      \cmd_index_reg[0]_3\ => sd_bus_interface_n_142,
      \cmd_index_reg[1]\ => \cmd_index_reg[1]\,
      \cmd_index_reg[1]_0\ => sd_bus_interface_n_68,
      \cmd_index_reg[1]_1\ => sd_bus_interface_n_136,
      \cmd_index_reg[1]_2\ => sd_bus_interface_n_141,
      \cmd_index_reg[1]_3\ => sd_bus_interface_n_144,
      \cmd_index_reg[2]\(4) => sd_bus_interface_n_63,
      \cmd_index_reg[2]\(3) => block_size_next(9),
      \cmd_index_reg[2]\(2 downto 0) => block_size_next(7 downto 5),
      \cmd_index_reg[3]\ => sd_bus_interface_n_79,
      \cmd_index_reg[3]_0\ => sd_bus_interface_n_81,
      \cmd_index_reg[3]_1\(0) => p_9_out,
      \cmd_index_reg[3]_2\ => sd_bus_interface_n_140,
      \cmd_index_reg[4]\ => sd_bus_interface_n_131,
      \cmd_index_reg[5]\(5 downto 0) => last_cmd_index(5 downto 0),
      \cmd_index_reg[5]_0\ => sd_bus_interface_n_95,
      \cmd_index_reg[5]_1\ => \cmd_index_reg[5]\,
      \cmd_index_reg[5]_2\(0) => p_8_out,
      \cmd_index_reg[5]_3\ => sd_bus_interface_n_134,
      \cmd_index_reg[5]_4\ => sd_bus_interface_n_135,
      \cmd_index_reg[5]_5\ => \cmd_index_reg[5]_0\,
      cmd_received_good => cmd_received_good,
      \counter_reg[0]\(0) => \dat_unit/crc_finished\,
      \counter_reg[11]\(0) => sd_bus_interface_n_14,
      \counter_reg[4]\(1 downto 0) => resp_pos1(1 downto 0),
      \counter_reg[4]_0\ => sd_bus_interface_n_69,
      \crc[15]_i_4\ => dat_controller_n_87,
      \crc_reg[0]\ => dat_controller_n_94,
      \crc_reg[10]\ => \crc_reg[10]\,
      \crc_reg[10]_0\ => \crc_reg[10]_0\,
      \crc_reg[15]\ => dat_controller_n_85,
      \crc_reg[2]\ => \crc_reg[2]\,
      \crc_reg[2]_0\ => \crc_reg[2]_0\,
      dat_got_block => dat_got_block,
      dat_got_word => dat_got_word,
      dat_wrote_new_word => dat_wrote_new_word,
      \dev_blocks_read_reg[31]\(0) => dat_read_mode,
      erase_seq_error => erase_seq_error,
      erase_seq_error_reg => sd_bus_interface_n_97,
      \erase_step_reg[0]\ => sd_bus_interface_n_93,
      \erase_step_reg[0]_0\ => sd_bus_interface_n_94,
      \erase_step_reg[0]_1\ => cmd_info_keeper_n_5,
      \erase_step_reg[0]_2\ => cmd_info_keeper_n_4,
      fifo_empty => \^fifo_empty\,
      got_acmd41_non_query_reg => sd_bus_interface_n_88,
      got_acmd41_non_query_reg_0 => got_acmd41_non_query_reg,
      got_acmd41_non_query_reg_1 => inactive_keeper_n_2,
      got_cmd00 => got_cmd00,
      got_cmd8_1 => got_cmd8_1,
      ignored_c => ignored_c,
      ignored_reg(0) => rca_match,
      ignored_reg_0 => card_status_keeper_n_34,
      illegal_reg => card_status_keeper_n_36,
      initialization_done => initialization_done,
      invalid_dat_width => invalid_dat_width,
      invalid_dat_width_reg => \^last_cmd_is_acmd\,
      last_cmd_valid => last_cmd_valid,
      multi_block_mode_next => multi_block_mode_next,
      new_sd_clk => new_sd_clk,
      out_of_range => out_of_range,
      out_of_range0_carry => \size_reg_n_0_[1]\,
      out_of_range0_carry_0 => \size_reg_n_0_[0]\,
      out_of_range0_carry_1 => \size_reg_n_0_[3]\,
      out_of_range0_carry_2 => \size_reg_n_0_[2]\,
      out_of_range0_carry_3 => \size_reg_n_0_[5]\,
      out_of_range0_carry_4 => \size_reg_n_0_[4]\,
      out_of_range0_carry_5 => \size_reg_n_0_[7]\,
      out_of_range0_carry_6 => \size_reg_n_0_[6]\,
      \out_of_range0_carry__0\ => \size_reg_n_0_[9]\,
      \out_of_range0_carry__0_0\ => \size_reg_n_0_[8]\,
      \out_of_range0_carry__0_1\ => \size_reg_n_0_[11]\,
      \out_of_range0_carry__0_2\ => \size_reg_n_0_[10]\,
      \out_of_range0_carry__0_3\ => \size_reg_n_0_[13]\,
      \out_of_range0_carry__0_4\ => \size_reg_n_0_[12]\,
      \out_of_range0_carry__0_5\ => \size_reg_n_0_[15]\,
      \out_of_range0_carry__0_6\ => \size_reg_n_0_[14]\,
      \out_of_range0_carry__1\ => \size_reg_n_0_[17]\,
      \out_of_range0_carry__1_0\ => \size_reg_n_0_[16]\,
      \out_of_range0_carry__1_1\ => \size_reg_n_0_[19]\,
      \out_of_range0_carry__1_2\ => \size_reg_n_0_[18]\,
      \out_of_range0_carry__1_3\ => \size_reg_n_0_[21]\,
      \out_of_range0_carry__1_4\ => \size_reg_n_0_[20]\,
      \out_of_range0_carry__1_5\ => \size_reg_n_0_[23]\,
      \out_of_range0_carry__1_6\ => \size_reg_n_0_[22]\,
      \out_of_range0_carry__2\ => \size_reg_n_0_[25]\,
      \out_of_range0_carry__2_0\ => \size_reg_n_0_[24]\,
      \out_of_range0_carry__2_1\ => \size_reg_n_0_[27]\,
      \out_of_range0_carry__2_2\ => \size_reg_n_0_[26]\,
      \out_of_range0_carry__2_3\ => \size_reg_n_0_[29]\,
      \out_of_range0_carry__2_4\ => \size_reg_n_0_[28]\,
      \out_of_range0_carry__2_5\ => \size_reg_n_0_[31]\,
      \out_of_range0_carry__2_6\ => \size_reg_n_0_[30]\,
      out_of_range_reg => sd_bus_interface_n_98,
      p_3_out(0) => p_3_out_1(12),
      ram_dev_addr(1 downto 0) => \^ram_dev_addr\(1 downto 0),
      ram_dev_data(31 downto 0) => ram_dev_data(31 downto 0),
      read_block_end => read_block_end,
      read_crc_err_reg => \^dat_crc_err\,
      read_crc_err_reg_0 => read_crc_err_reg,
      \read_data_reg[31]\(31 downto 0) => dat_read_data(31 downto 0),
      \reg_saved_reg[19][10]\ => sd_bus_interface_n_84,
      \reg_saved_reg[19][11]\ => sd_bus_interface_n_85,
      \reg_saved_reg[19][12]\ => sd_bus_interface_n_86,
      \reg_saved_reg[19][13]\ => sd_bus_interface_n_87,
      \reg_saved_reg[19][8]\ => sd_bus_interface_n_82,
      \reg_saved_reg[19][9]\ => sd_bus_interface_n_83,
      resetn => resetn,
      \resp_byte[2]_i_3\ => \ocr_high_byte_reg_n_0_[26]\,
      \resp_byte[4]_i_3\ => \ocr_high_byte_reg_n_0_[28]\,
      \resp_byte[4]_i_4\(21 downto 20) => card_status_resp(28 downto 27),
      \resp_byte[4]_i_4\(19 downto 16) => card_status_resp(25 downto 22),
      \resp_byte[4]_i_4\(15 downto 14) => card_status_resp(20 downto 19),
      \resp_byte[4]_i_4\(13 downto 12) => card_status_resp(17 downto 16),
      \resp_byte[4]_i_4\(11 downto 0) => card_status_resp(11 downto 0),
      \resp_byte[5]_i_3\ => \ocr_high_byte_reg_n_0_[29]\,
      \resp_byte[7]_i_8\(15 downto 0) => rca(15 downto 0),
      \resp_byte_reg[0]\(2 downto 1) => resp_cur(2 downto 1),
      \resp_byte_reg[0]\(0) => \^ram_dev_addr\(2),
      \resp_byte_reg[0]_i_2\ => \ocr_high_byte_reg_n_0_[24]\,
      \resp_byte_reg[1]\ => \ocr_high_byte_reg_n_0_[25]\,
      \resp_byte_reg[2]\ => card_status_keeper_n_54,
      \resp_byte_reg[3]\ => \ocr_high_byte_reg_n_0_[27]\,
      \resp_byte_reg[5]\ => card_status_keeper_n_77,
      \resp_byte_reg[6]\ => card_status_keeper_n_78,
      \resp_byte_reg[6]_i_6\ => \ocr_high_byte_reg_n_0_[30]\,
      \resp_byte_reg[7]\ => card_status_keeper_n_79,
      \resp_cur_reg[2]\(7 downto 0) => resp_byte_next(7 downto 0),
      resp_next(2 downto 0) => resp_next(2 downto 0),
      resp_no_crc => resp_no_crc,
      resp_no_crc_next => resp_no_crc_next,
      resp_no_crc_reg => command_validator_n_5,
      save_current_cmd => save_current_cmd,
      \saved_cmd_index_reg[5]\ => cmd_info_keeper_n_18,
      sd_clk => sd_clk,
      \sd_clk_div_d_reg[0]_0\ => \sd_clk_div_d_reg[0]\,
      sd_cmd_i => sd_cmd_i,
      sd_cmd_o => sd_cmd_o,
      sd_cmd_o_sys_reg(7 downto 0) => resp_byte(7 downto 0),
      sd_cmd_t => sd_cmd_t,
      \sd_dat_d_reg[0][3]_0\(3 downto 0) => \sd_dat_d_reg[0][3]\(3 downto 0),
      \sd_dat_o_reg[3]_0\(3 downto 0) => \sd_dat_o_reg[3]\(3 downto 0),
      \sd_dat_o_sys[3]_i_3\ => dat_controller_n_92,
      \sd_dat_o_sys_reg[0]\ => inactive_keeper_n_9,
      \sd_dat_o_sys_reg[0]_0\ => card_status_keeper_n_51,
      \sd_dat_o_sys_reg[1]\ => dat_controller_n_36,
      \sd_dat_o_sys_reg[3]\ => \^dat_width_4\,
      sd_dat_t(0) => sd_dat_t(0),
      send_no_resp => send_no_resp,
      send_resp => send_resp,
      \set_reg_clear_always[12].reg_clear_always_reg[12][5]\(0) => card_status_next2_out(5),
      \size_reg[15]\(3) => sd_bus_interface_n_154,
      \size_reg[15]\(2) => sd_bus_interface_n_155,
      \size_reg[15]\(1) => sd_bus_interface_n_156,
      \size_reg[15]\(0) => sd_bus_interface_n_157,
      \size_reg[23]\(3) => sd_bus_interface_n_162,
      \size_reg[23]\(2) => sd_bus_interface_n_163,
      \size_reg[23]\(1) => sd_bus_interface_n_164,
      \size_reg[23]\(0) => sd_bus_interface_n_165,
      \size_reg[31]\(3) => sd_bus_interface_n_170,
      \size_reg[31]\(2) => sd_bus_interface_n_171,
      \size_reg[31]\(1) => sd_bus_interface_n_172,
      \size_reg[31]\(0) => sd_bus_interface_n_173,
      \size_reg[7]\(3) => sd_bus_interface_n_146,
      \size_reg[7]\(2) => sd_bus_interface_n_147,
      \size_reg[7]\(1) => sd_bus_interface_n_148,
      \size_reg[7]\(0) => sd_bus_interface_n_149,
      \state[5]_i_6\(3) => resp_len_bytes(4),
      \state[5]_i_6\(2 downto 0) => resp_len_bytes(2 downto 0),
      \state_reg[4]\(0) => \cmd_unit/p_2_in3_in\,
      \state_reg[4]_0\ => sd_bus_interface_n_111,
      update_2 => update_2
    );
send_no_resp_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => send_no_resp0,
      Q => send_no_resp,
      R => inactive_keeper_n_9
    );
set_dat3_pullup: entity work.adapter_axi_sd_0_0_set_dat3_pullup
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      sd_dat3_pullup_off => sd_dat3_pullup_off,
      sd_dat3_pullup_off_reg_0 => sd_bus_interface_n_68,
      sd_dat3_pullup_off_reg_1 => \^last_cmd_is_acmd\,
      sd_dat3_pullup_off_reg_2(1 downto 0) => last_cmd_index(5 downto 4),
      sd_dat3_pullup_off_reg_3 => \^fsm_onehot_state_reg[0]_0\,
      sd_dat3_pullup_off_reg_4 => inactive_keeper_n_9
    );
\size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_48,
      Q => \size_reg_n_0_[0]\,
      R => '0'
    );
\size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_38,
      Q => \size_reg_n_0_[10]\,
      R => '0'
    );
\size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_37,
      Q => \size_reg_n_0_[11]\,
      R => '0'
    );
\size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_36,
      Q => \size_reg_n_0_[12]\,
      R => '0'
    );
\size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_35,
      Q => \size_reg_n_0_[13]\,
      R => '0'
    );
\size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_34,
      Q => \size_reg_n_0_[14]\,
      R => '0'
    );
\size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_33,
      Q => \size_reg_n_0_[15]\,
      R => '0'
    );
\size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_32,
      Q => \size_reg_n_0_[16]\,
      R => '0'
    );
\size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_31,
      Q => \size_reg_n_0_[17]\,
      R => '0'
    );
\size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_30,
      Q => \size_reg_n_0_[18]\,
      R => '0'
    );
\size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_29,
      Q => \size_reg_n_0_[19]\,
      R => '0'
    );
\size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_47,
      Q => \size_reg_n_0_[1]\,
      R => '0'
    );
\size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_28,
      Q => \size_reg_n_0_[20]\,
      R => '0'
    );
\size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_27,
      Q => \size_reg_n_0_[21]\,
      R => '0'
    );
\size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_26,
      Q => \size_reg_n_0_[22]\,
      R => '0'
    );
\size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_25,
      Q => \size_reg_n_0_[23]\,
      R => '0'
    );
\size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_24,
      Q => \size_reg_n_0_[24]\,
      R => '0'
    );
\size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_23,
      Q => \size_reg_n_0_[25]\,
      R => '0'
    );
\size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_22,
      Q => \size_reg_n_0_[26]\,
      R => '0'
    );
\size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_21,
      Q => \size_reg_n_0_[27]\,
      R => '0'
    );
\size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_20,
      Q => \size_reg_n_0_[28]\,
      R => '0'
    );
\size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_19,
      Q => \size_reg_n_0_[29]\,
      R => '0'
    );
\size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_46,
      Q => \size_reg_n_0_[2]\,
      R => '0'
    );
\size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_18,
      Q => \size_reg_n_0_[30]\,
      R => '0'
    );
\size_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_17,
      Q => \size_reg_n_0_[31]\,
      R => '0'
    );
\size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_45,
      Q => \size_reg_n_0_[3]\,
      R => '0'
    );
\size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_44,
      Q => \size_reg_n_0_[4]\,
      R => '0'
    );
\size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_43,
      Q => \size_reg_n_0_[5]\,
      R => '0'
    );
\size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_42,
      Q => \size_reg_n_0_[6]\,
      R => '0'
    );
\size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_41,
      Q => \size_reg_n_0_[7]\,
      R => '0'
    );
\size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_40,
      Q => \size_reg_n_0_[8]\,
      R => '0'
    );
\size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => sd_bus_interface_n_59,
      D => inactive_keeper_n_39,
      Q => \size_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    sd_dat3_pullup : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI : entity is "axi_sd_v1_0_S_AXI";
end adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI;

architecture STRUCTURE of adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal block_limit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal card_status_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_missed : STD_LOGIC;
  signal cmd_missed1 : STD_LOGIC;
  signal cmd_saved_missed : STD_LOGIC;
  signal cmd_saved_unread : STD_LOGIC;
  signal cmd_unread : STD_LOGIC;
  signal controller_n_100 : STD_LOGIC;
  signal controller_n_101 : STD_LOGIC;
  signal controller_n_102 : STD_LOGIC;
  signal controller_n_103 : STD_LOGIC;
  signal controller_n_104 : STD_LOGIC;
  signal controller_n_105 : STD_LOGIC;
  signal controller_n_106 : STD_LOGIC;
  signal controller_n_107 : STD_LOGIC;
  signal controller_n_108 : STD_LOGIC;
  signal controller_n_109 : STD_LOGIC;
  signal controller_n_110 : STD_LOGIC;
  signal controller_n_111 : STD_LOGIC;
  signal controller_n_112 : STD_LOGIC;
  signal controller_n_113 : STD_LOGIC;
  signal controller_n_114 : STD_LOGIC;
  signal controller_n_115 : STD_LOGIC;
  signal controller_n_116 : STD_LOGIC;
  signal controller_n_117 : STD_LOGIC;
  signal controller_n_118 : STD_LOGIC;
  signal controller_n_119 : STD_LOGIC;
  signal controller_n_124 : STD_LOGIC;
  signal controller_n_312 : STD_LOGIC;
  signal controller_n_313 : STD_LOGIC;
  signal controller_n_314 : STD_LOGIC;
  signal controller_n_315 : STD_LOGIC;
  signal controller_n_316 : STD_LOGIC;
  signal controller_n_317 : STD_LOGIC;
  signal controller_n_318 : STD_LOGIC;
  signal controller_n_66 : STD_LOGIC;
  signal controller_n_76 : STD_LOGIC;
  signal controller_n_77 : STD_LOGIC;
  signal controller_n_78 : STD_LOGIC;
  signal controller_n_79 : STD_LOGIC;
  signal controller_n_81 : STD_LOGIC;
  signal controller_n_83 : STD_LOGIC;
  signal controller_n_84 : STD_LOGIC;
  signal controller_n_85 : STD_LOGIC;
  signal controller_n_86 : STD_LOGIC;
  signal controller_n_87 : STD_LOGIC;
  signal controller_n_88 : STD_LOGIC;
  signal controller_n_89 : STD_LOGIC;
  signal controller_n_90 : STD_LOGIC;
  signal controller_n_91 : STD_LOGIC;
  signal controller_n_92 : STD_LOGIC;
  signal controller_n_93 : STD_LOGIC;
  signal controller_n_94 : STD_LOGIC;
  signal controller_n_95 : STD_LOGIC;
  signal controller_n_96 : STD_LOGIC;
  signal controller_n_97 : STD_LOGIC;
  signal controller_n_98 : STD_LOGIC;
  signal controller_n_99 : STD_LOGIC;
  signal dat_blocks_read : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dat_controller/fifo/ram_empty\ : STD_LOGIC;
  signal \dat_controller/fifo_empty\ : STD_LOGIC;
  signal \dat_controller/write_ok15_in\ : STD_LOGIC;
  signal dat_crc_err : STD_LOGIC;
  signal dat_width_4 : STD_LOGIC;
  signal dat_width_4_i_1_n_0 : STD_LOGIC;
  signal data_write_en : STD_LOGIC;
  signal device_reset_r : STD_LOGIC;
  signal empty_i_1_n_0 : STD_LOGIC;
  signal erase_end : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal erase_start : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inactive_i_1_n_0 : STD_LOGIC;
  signal is_inactive : STD_LOGIC;
  signal last_cmd_arg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal last_cmd_is_acmd : STD_LOGIC;
  signal no_more_write_data : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in9_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal pre_erase_count : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal ram_dev_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ram_dev_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_dev_data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_crc_err_i_1_n_0 : STD_LOGIC;
  signal \reg_clear_always[12]_13\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_clear_always[13]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_clear_reset[10]_9\ : STD_LOGIC_VECTOR ( 28 downto 18 );
  signal \reg_clear_reset[11]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_clear_reset[8]_12\ : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \reg_clear_reset[9]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out15_out : STD_LOGIC;
  signal \reg_saved_reg[17]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[18]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[19]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[20]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[21]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[22]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_saved_reg[23]\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \reg_saved_reg[24]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal saved_cmd_arg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sd_bus_interface/dat_unit/read_block_end\ : STD_LOGIC;
  signal \sd_bus_interface/sd_clk_div_d_reg\ : STD_LOGIC;
  signal \sd_clk_div_d[0]_i_1_n_0\ : STD_LOGIC;
  signal sd_cmd_i : STD_LOGIC;
  signal sd_cmd_o : STD_LOGIC;
  signal sd_cmd_t : STD_LOGIC;
  signal sd_dat3_pullup_off : STD_LOGIC;
  signal sd_dat_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sd_dat_t : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\ : STD_LOGIC;
  signal \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\ : STD_LOGIC;
  signal status_read : STD_LOGIC;
  signal NLW_ram_reg_r1_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r1_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_r2_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_2\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_5\ : label is "soft_lutpair143";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of buf_cmd : label is "PRIMITIVE";
  attribute BOX_TYPE of buf_dat3_pullup : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of buf_dat3_pullup : label is "DONT_CARE";
  attribute BOX_TYPE of \buf_dat[0].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[1].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[2].buf_dat\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \buf_dat[3].buf_dat\ : label is "PRIMITIVE";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_0_5 : label is "inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_r1_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_r1_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_r1_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_r1_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_r1_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_12_17 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_12_17 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_7_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_7_12_17 : label is 7;
  attribute ram_offset of ram_reg_r1_0_7_12_17 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_7_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_r1_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_18_23 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_18_23 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_7_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_7_18_23 : label is 7;
  attribute ram_offset of ram_reg_r1_0_7_18_23 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_7_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_r1_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_24_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_24_29 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_24_29 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_7_24_29 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_7_24_29 : label is 7;
  attribute ram_offset of ram_reg_r1_0_7_24_29 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_7_24_29 : label is 24;
  attribute ram_slice_end of ram_reg_r1_0_7_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_30_31 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_30_31 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_7_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_7_30_31 : label is 7;
  attribute ram_offset of ram_reg_r1_0_7_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_7_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_r1_0_7_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_7_6_11 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r1_0_7_6_11 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r1_0_7_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_7_6_11 : label is 7;
  attribute ram_offset of ram_reg_r1_0_7_6_11 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_7_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_r1_0_7_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_0_5 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_0_5 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_0_5 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_0_5 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_0_5 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_0_5 : label is 0;
  attribute ram_slice_end of ram_reg_r2_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_12_17 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_12_17 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_12_17 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_12_17 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_r2_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_18_23 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_18_23 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_18_23 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_18_23 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_r2_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_24_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_24_29 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_24_29 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_24_29 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_24_29 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_24_29 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_24_29 : label is 24;
  attribute ram_slice_end of ram_reg_r2_0_7_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_30_31 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_30_31 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_30_31 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_r2_0_7_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_7_6_11 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_r2_0_7_6_11 : label is "inst/ram";
  attribute ram_addr_begin of ram_reg_r2_0_7_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_7_6_11 : label is 7;
  attribute ram_offset of ram_reg_r2_0_7_6_11 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_7_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_r2_0_7_6_11 : label is 11;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => cmd_missed1
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(0),
      Q => axi_araddr(2),
      R => cmd_missed1
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(1),
      Q => axi_araddr(3),
      R => cmd_missed1
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => axi_araddr(4),
      R => cmd_missed1
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => axi_araddr(5),
      R => cmd_missed1
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(4),
      Q => axi_araddr(6),
      R => cmd_missed1
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => cmd_missed1
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready_i_2_n_0,
      D => S_AXI_AWADDR(0),
      Q => axi_awaddr(2),
      R => cmd_missed1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready_i_2_n_0,
      D => S_AXI_AWADDR(1),
      Q => axi_awaddr(3),
      R => cmd_missed1
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready_i_2_n_0,
      D => S_AXI_AWADDR(2),
      Q => axi_awaddr(4),
      R => cmd_missed1
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready_i_2_n_0,
      D => S_AXI_AWADDR(3),
      Q => axi_awaddr(5),
      R => cmd_missed1
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready_i_2_n_0,
      D => S_AXI_AWADDR(4),
      Q => axi_awaddr(6),
      R => cmd_missed1
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => cmd_missed1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => cmd_missed1
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => reg_data_out15_out,
      I2 => controller_n_83,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(0),
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(0),
      O => p_0_in(0)
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(0),
      I1 => \reg_saved_reg[22]\(0),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(0),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(10),
      I1 => reg_data_out15_out,
      I2 => controller_n_105,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(10),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(10),
      O => p_0_in(10)
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(10),
      I1 => \reg_saved_reg[22]\(10),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(10),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(11),
      I1 => reg_data_out15_out,
      I2 => controller_n_104,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(11),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(11),
      O => p_0_in(11)
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(11),
      I1 => \reg_saved_reg[22]\(11),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(11),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(12),
      I1 => reg_data_out15_out,
      I2 => controller_n_103,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(12),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(12),
      O => p_0_in(12)
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(12),
      I1 => \reg_saved_reg[22]\(12),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(12),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(13),
      I1 => reg_data_out15_out,
      I2 => controller_n_102,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(13),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(13),
      O => p_0_in(13)
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(13),
      I1 => \reg_saved_reg[22]\(13),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(13),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(14),
      I1 => reg_data_out15_out,
      I2 => controller_n_101,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(14),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(14),
      O => p_0_in(14)
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(14),
      I1 => \reg_saved_reg[22]\(14),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(14),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(15),
      I1 => reg_data_out15_out,
      I2 => controller_n_100,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(15),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(15),
      O => p_0_in(15)
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(15),
      I1 => \reg_saved_reg[22]\(15),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(15),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(15),
      I1 => \reg_saved_reg[18]\(15),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[17]\(15),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(16),
      I1 => reg_data_out15_out,
      I2 => controller_n_99,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(16),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(16),
      O => p_0_in(16)
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(16),
      I1 => \reg_saved_reg[22]\(16),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(16),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(17),
      I1 => reg_data_out15_out,
      I2 => controller_n_98,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(17),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(17),
      O => p_0_in(17)
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(17),
      I1 => \reg_saved_reg[22]\(17),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(17),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(18),
      I1 => reg_data_out15_out,
      I2 => controller_n_97,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(18),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(18),
      I1 => \reg_clear_reset[11]_10\(18),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_clear_reset[10]_9\(18),
      O => p_0_in(18)
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(18),
      I1 => \reg_saved_reg[22]\(18),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(18),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(18),
      I1 => \reg_saved_reg[18]\(18),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[17]\(18),
      I4 => axi_araddr(2),
      I5 => cmd_saved_unread,
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(19),
      I1 => reg_data_out15_out,
      I2 => controller_n_96,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(19),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(19),
      O => p_0_in(19)
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(19),
      I1 => \reg_saved_reg[22]\(19),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(19),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(19),
      I1 => \reg_saved_reg[18]\(19),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[17]\(19),
      I4 => axi_araddr(2),
      I5 => cmd_saved_missed,
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => reg_data_out15_out,
      I2 => controller_n_114,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(1),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(1),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(1),
      O => p_0_in(1)
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(1),
      I1 => \reg_saved_reg[22]\(1),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(1),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(20),
      I1 => reg_data_out15_out,
      I2 => controller_n_95,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(20),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(20),
      I1 => \reg_clear_reset[11]_10\(20),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_clear_reset[10]_9\(20),
      O => p_0_in(20)
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(20),
      I1 => \reg_saved_reg[22]\(20),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(20),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(20),
      I1 => \reg_saved_reg[18]\(20),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[17]\(20),
      I4 => axi_araddr(2),
      I5 => cmd_unread,
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(21),
      I1 => reg_data_out15_out,
      I2 => controller_n_94,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(21),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(21),
      O => p_0_in(21)
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(21),
      I1 => \reg_saved_reg[22]\(21),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(21),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(21),
      I1 => \reg_saved_reg[18]\(21),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[17]\(21),
      I4 => axi_araddr(2),
      I5 => cmd_missed,
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(22),
      I1 => reg_data_out15_out,
      I2 => controller_n_93,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(22),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(22),
      I1 => \reg_clear_reset[11]_10\(22),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_clear_reset[10]_9\(22),
      O => p_0_in(22)
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(22),
      I1 => \reg_saved_reg[22]\(22),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(22),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(23),
      I1 => reg_data_out15_out,
      I2 => controller_n_92,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(23),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(23),
      I1 => \reg_clear_reset[11]_10\(23),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_clear_reset[10]_9\(23),
      O => p_0_in(23)
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(23),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(23),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(23),
      I1 => \reg_saved_reg[18]\(23),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[17]\(23),
      I4 => axi_araddr(2),
      I5 => device_reset_r,
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(24),
      I1 => reg_data_out15_out,
      I2 => controller_n_91,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(24),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(24),
      I1 => \reg_clear_reset[8]_12\(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(24),
      O => p_0_in(24)
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(24),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(24),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(25),
      I1 => reg_data_out15_out,
      I2 => controller_n_90,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(25),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(25),
      I1 => \reg_clear_reset[8]_12\(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(25),
      O => p_0_in(25)
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(25),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(25),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(26),
      I1 => reg_data_out15_out,
      I2 => controller_n_89,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(26),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(26),
      I1 => \reg_clear_reset[8]_12\(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(26),
      O => p_0_in(26)
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(26),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(26),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(27),
      I1 => reg_data_out15_out,
      I2 => controller_n_88,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(27),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(27),
      I1 => \reg_clear_reset[8]_12\(27),
      I2 => \reg_clear_reset[11]_10\(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \reg_clear_reset[10]_9\(27),
      O => p_0_in(27)
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(27),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(27),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(28),
      I1 => reg_data_out15_out,
      I2 => controller_n_87,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(28),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(28),
      I1 => \reg_clear_reset[8]_12\(28),
      I2 => \reg_clear_reset[11]_10\(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \reg_clear_reset[10]_9\(28),
      O => p_0_in(28)
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(28),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(28),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(29),
      I1 => reg_data_out15_out,
      I2 => controller_n_86,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(29),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(29),
      I1 => \reg_clear_reset[8]_12\(29),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(29),
      O => p_0_in(29)
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(29),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(29),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(29),
      I1 => \reg_saved_reg[18]\(29),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[17]\(29),
      O => \axi_rdata[29]_i_5_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(2),
      I1 => reg_data_out15_out,
      I2 => controller_n_113,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(2),
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(2),
      O => p_0_in(2)
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(2),
      I1 => \reg_saved_reg[22]\(2),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(2),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(30),
      I1 => reg_data_out15_out,
      I2 => controller_n_85,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(30),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(30),
      I1 => \reg_clear_reset[8]_12\(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(30),
      O => p_0_in(30)
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(30),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(30),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(30),
      I1 => \reg_saved_reg[18]\(30),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[17]\(30),
      O => \axi_rdata[30]_i_5_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50100000FFFFFFFF"
    )
        port map (
      I0 => reg_data_out15_out,
      I1 => axi_araddr(6),
      I2 => axi_araddr(5),
      I3 => \axi_rdata[31]_i_5_n_0\,
      I4 => controller_n_81,
      I5 => S_AXI_ARESETN,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(31),
      I1 => \reg_saved_reg[18]\(31),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[17]\(31),
      O => \axi_rdata[31]_i_10_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(31),
      I1 => reg_data_out15_out,
      I2 => controller_n_84,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(31),
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001500"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      O => reg_data_out15_out
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(31),
      I1 => \reg_clear_reset[8]_12\(31),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \reg_clear_reset[11]_10\(31),
      O => p_0_in(31)
    );
\axi_rdata[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \reg_saved_reg[22]\(31),
      I1 => axi_araddr(3),
      I2 => \reg_saved_reg[21]\(31),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[20]\(31),
      O => \axi_rdata[31]_i_8_n_0\
    );
\axi_rdata[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(5),
      I2 => axi_araddr(4),
      O => \axi_rdata[31]_i_9_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(3),
      I1 => reg_data_out15_out,
      I2 => controller_n_112,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(3),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(3),
      O => p_0_in(3)
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(3),
      I1 => \reg_saved_reg[22]\(3),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(3),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(4),
      I1 => reg_data_out15_out,
      I2 => controller_n_111,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(4),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(4),
      O => p_0_in(4)
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(4),
      I1 => \reg_saved_reg[22]\(4),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(4),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => reg_data_out15_out,
      I2 => controller_n_110,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(5),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(5),
      O => p_0_in(5)
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(5),
      I1 => \reg_saved_reg[22]\(5),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(5),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(6),
      I1 => reg_data_out15_out,
      I2 => controller_n_109,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(6),
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(6),
      O => p_0_in(6)
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(6),
      I1 => \reg_saved_reg[22]\(6),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(6),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(7),
      I1 => reg_data_out15_out,
      I2 => controller_n_108,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(7),
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(7),
      O => p_0_in(7)
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(7),
      I1 => \reg_saved_reg[22]\(7),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(7),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_saved_reg[19]\(7),
      I1 => \reg_saved_reg[18]\(7),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \reg_saved_reg[17]\(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(8),
      I1 => reg_data_out15_out,
      I2 => controller_n_107,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(8),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(8),
      O => p_0_in(8)
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(8),
      I1 => \reg_saved_reg[22]\(8),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(8),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => p_0_in(9),
      I1 => reg_data_out15_out,
      I2 => controller_n_106,
      I3 => axi_araddr(6),
      I4 => axi_araddr(5),
      I5 => reg_data_out0(9),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \reg_clear_reset[9]_11\(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \reg_clear_reset[11]_10\(9),
      O => p_0_in(9)
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_saved_reg[23]\(9),
      I1 => \reg_saved_reg[22]\(9),
      I2 => axi_araddr(3),
      I3 => \reg_saved_reg[21]\(9),
      I4 => axi_araddr(2),
      I5 => \reg_saved_reg[20]\(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => controller_n_81,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => \axi_rdata[31]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => cmd_missed1
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => cmd_missed1
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
      T => sd_dat_t(3)
    );
\buf_dat[1].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(1),
      IO => sd_dat(1),
      O => sd_dat_i(1),
      T => sd_dat_t(3)
    );
\buf_dat[2].buf_dat\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sd_dat_o(2),
      IO => sd_dat(2),
      O => sd_dat_i(2),
      T => sd_dat_t(3)
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
cmd_missed_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => controller_n_118,
      Q => cmd_missed,
      R => '0'
    );
cmd_saved_missed_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => controller_n_117,
      Q => cmd_saved_missed,
      R => '0'
    );
cmd_saved_unread_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => controller_n_115,
      Q => cmd_saved_unread,
      R => cmd_missed1
    );
cmd_unread_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => controller_n_116,
      Q => cmd_unread,
      R => cmd_missed1
    );
controller: entity work.adapter_axi_sd_0_0_device
     port map (
      CO(0) => \dat_controller/fifo/ram_empty\,
      D(0) => \sd_bus_interface/sd_clk_div_d_reg\,
      E(0) => controller_n_81,
      \FSM_onehot_state_reg[0]_0\ => controller_n_77,
      \FSM_onehot_state_reg[4]_0\ => controller_n_76,
      \FSM_onehot_sys_state_reg[0]\ => \set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0]\,
      Q(31 downto 0) => last_cmd_arg(31 downto 0),
      SR(0) => controller_n_79,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      \axi_rdata[28]_i_3\(21 downto 17) => \reg_saved_reg[19]\(28 downto 24),
      \axi_rdata[28]_i_3\(16) => \reg_saved_reg[19]\(22),
      \axi_rdata[28]_i_3\(15 downto 14) => \reg_saved_reg[19]\(17 downto 16),
      \axi_rdata[28]_i_3\(13 downto 7) => \reg_saved_reg[19]\(14 downto 8),
      \axi_rdata[28]_i_3\(6 downto 0) => \reg_saved_reg[19]\(6 downto 0),
      \axi_rdata[28]_i_3_0\(21 downto 17) => \reg_saved_reg[18]\(28 downto 24),
      \axi_rdata[28]_i_3_0\(16) => \reg_saved_reg[18]\(22),
      \axi_rdata[28]_i_3_0\(15 downto 14) => \reg_saved_reg[18]\(17 downto 16),
      \axi_rdata[28]_i_3_0\(13 downto 7) => \reg_saved_reg[18]\(14 downto 8),
      \axi_rdata[28]_i_3_0\(6 downto 0) => \reg_saved_reg[18]\(6 downto 0),
      \axi_rdata[28]_i_3_1\(20 downto 16) => \reg_saved_reg[17]\(28 downto 24),
      \axi_rdata[28]_i_3_1\(15) => \reg_saved_reg[17]\(22),
      \axi_rdata[28]_i_3_1\(14 downto 13) => \reg_saved_reg[17]\(17 downto 16),
      \axi_rdata[28]_i_3_1\(12 downto 11) => \reg_saved_reg[17]\(14 downto 13),
      \axi_rdata[28]_i_3_1\(10 downto 7) => \reg_saved_reg[17]\(11 downto 8),
      \axi_rdata[28]_i_3_1\(6 downto 0) => \reg_saved_reg[17]\(6 downto 0),
      \axi_rdata_reg[0]\ => \^s_axi_arready\,
      \axi_rdata_reg[0]_0\ => \^axi_rvalid_reg_0\,
      \axi_rdata_reg[0]_1\ => \axi_rdata[0]_i_4_n_0\,
      \axi_rdata_reg[0]_2\ => \axi_rdata[31]_i_9_n_0\,
      \axi_rdata_reg[10]\ => \axi_rdata[10]_i_4_n_0\,
      \axi_rdata_reg[11]\ => \axi_rdata[11]_i_4_n_0\,
      \axi_rdata_reg[12]\ => \axi_rdata[12]_i_4_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata[13]_i_4_n_0\,
      \axi_rdata_reg[14]\ => \axi_rdata[14]_i_4_n_0\,
      \axi_rdata_reg[15]\ => \axi_rdata[15]_i_4_n_0\,
      \axi_rdata_reg[15]_0\ => \axi_rdata[15]_i_5_n_0\,
      \axi_rdata_reg[16]\ => \axi_rdata[16]_i_4_n_0\,
      \axi_rdata_reg[17]\ => \axi_rdata[17]_i_4_n_0\,
      \axi_rdata_reg[18]\ => \axi_rdata[18]_i_4_n_0\,
      \axi_rdata_reg[18]_0\ => \axi_rdata[18]_i_5_n_0\,
      \axi_rdata_reg[19]\ => \axi_rdata[19]_i_4_n_0\,
      \axi_rdata_reg[19]_0\ => \axi_rdata[19]_i_5_n_0\,
      \axi_rdata_reg[1]\ => \axi_rdata[1]_i_4_n_0\,
      \axi_rdata_reg[20]\ => \axi_rdata[20]_i_4_n_0\,
      \axi_rdata_reg[20]_0\ => \axi_rdata[20]_i_5_n_0\,
      \axi_rdata_reg[21]\ => \axi_rdata[21]_i_4_n_0\,
      \axi_rdata_reg[21]_0\ => \axi_rdata[21]_i_5_n_0\,
      \axi_rdata_reg[22]\ => \axi_rdata[22]_i_4_n_0\,
      \axi_rdata_reg[23]\ => \axi_rdata[23]_i_4_n_0\,
      \axi_rdata_reg[23]_0\ => \axi_rdata[23]_i_5_n_0\,
      \axi_rdata_reg[24]\ => \axi_rdata[24]_i_4_n_0\,
      \axi_rdata_reg[25]\ => \axi_rdata[25]_i_4_n_0\,
      \axi_rdata_reg[26]\ => \axi_rdata[26]_i_4_n_0\,
      \axi_rdata_reg[27]\ => \axi_rdata[27]_i_4_n_0\,
      \axi_rdata_reg[28]\ => \axi_rdata[28]_i_4_n_0\,
      \axi_rdata_reg[29]\ => \axi_rdata[29]_i_4_n_0\,
      \axi_rdata_reg[29]_0\ => \axi_rdata[29]_i_5_n_0\,
      \axi_rdata_reg[2]\ => \axi_rdata[2]_i_4_n_0\,
      \axi_rdata_reg[30]\ => \axi_rdata[30]_i_4_n_0\,
      \axi_rdata_reg[30]_0\ => \axi_rdata[30]_i_5_n_0\,
      \axi_rdata_reg[31]\(31 downto 0) => \reg_saved_reg[24]\(31 downto 0),
      \axi_rdata_reg[31]_0\ => \axi_rdata[31]_i_8_n_0\,
      \axi_rdata_reg[31]_1\ => \axi_rdata[31]_i_10_n_0\,
      \axi_rdata_reg[3]\ => \axi_rdata[3]_i_4_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata[4]_i_4_n_0\,
      \axi_rdata_reg[5]\ => \axi_rdata[5]_i_4_n_0\,
      \axi_rdata_reg[6]\ => \axi_rdata[6]_i_4_n_0\,
      \axi_rdata_reg[7]\ => \axi_rdata[7]_i_4_n_0\,
      \axi_rdata_reg[7]_0\ => \axi_rdata[7]_i_5_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata[8]_i_4_n_0\,
      \axi_rdata_reg[9]\ => \axi_rdata[9]_i_4_n_0\,
      \block_count_reg[31]\(31 downto 0) => block_limit(31 downto 0),
      \card_status_reg[31]\(30 downto 12) => card_status_out(31 downto 13),
      \card_status_reg[31]\(11 downto 9) => card_status_out(11 downto 9),
      \card_status_reg[31]\(8) => controller_n_66,
      \card_status_reg[31]\(7 downto 0) => card_status_out(7 downto 0),
      \card_status_reg[31]_0\(26 downto 8) => \reg_clear_always[12]_13\(31 downto 13),
      \card_status_reg[31]_0\(7 downto 0) => \reg_clear_always[12]_13\(7 downto 0),
      \card_status_reg[31]_1\(26 downto 8) => \reg_clear_always[13]_14\(31 downto 13),
      \card_status_reg[31]_1\(7 downto 0) => \reg_clear_always[13]_14\(7 downto 0),
      \cmd_arg_reg[19]\ => controller_n_313,
      \cmd_index_reg[1]\ => controller_n_78,
      \cmd_index_reg[5]\ => controller_n_312,
      \cmd_index_reg[5]_0\ => controller_n_314,
      cmd_missed => cmd_missed,
      cmd_missed1 => cmd_missed1,
      cmd_missed_reg => controller_n_118,
      cmd_saved_missed => cmd_saved_missed,
      cmd_saved_missed_reg => controller_n_117,
      cmd_saved_unread => cmd_saved_unread,
      cmd_unread => cmd_unread,
      \crc_reg[10]\ => controller_n_315,
      \crc_reg[10]_0\ => controller_n_318,
      \crc_reg[2]\ => controller_n_316,
      \crc_reg[2]_0\ => controller_n_317,
      dat_blocks_read(31 downto 0) => dat_blocks_read(31 downto 0),
      dat_crc_err => dat_crc_err,
      dat_width_4 => dat_width_4,
      dat_width_4_reg => dat_width_4_i_1_n_0,
      data_write_en => data_write_en,
      device_reset_r => device_reset_r,
      device_reset_r_reg => controller_n_119,
      empty_reg => empty_i_1_n_0,
      \erase_end_reg[31]\(31 downto 0) => erase_end(31 downto 0),
      \erase_start_reg[31]\(31 downto 0) => erase_start(31 downto 0),
      fifo_empty => \dat_controller/fifo_empty\,
      got_acmd41_non_query_reg => controller_n_124,
      got_new_cmd_out_reg_0 => controller_n_116,
      inactive_reg => inactive_i_1_n_0,
      interrupt => interrupt,
      interrupt_0(5 downto 4) => \reg_clear_reset[10]_9\(28 downto 27),
      interrupt_0(3 downto 2) => \reg_clear_reset[10]_9\(23 downto 22),
      interrupt_0(1) => \reg_clear_reset[10]_9\(20),
      interrupt_0(0) => \reg_clear_reset[10]_9\(18),
      is_inactive => is_inactive,
      last_cmd_is_acmd => last_cmd_is_acmd,
      new_cmd_saved_reg => controller_n_115,
      no_more_write_data => no_more_write_data,
      \ocr_high_byte_reg[31]_0\(7 downto 0) => \reg_clear_reset[8]_12\(31 downto 24),
      \pre_erase_count_reg[22]\(22 downto 0) => pre_erase_count(22 downto 0),
      ram_dev_addr(2 downto 0) => ram_dev_addr(2 downto 0),
      ram_dev_data(31 downto 0) => ram_dev_data(31 downto 0),
      ram_reg => controller_n_83,
      ram_reg_0 => controller_n_84,
      ram_reg_1 => controller_n_85,
      ram_reg_10 => controller_n_94,
      ram_reg_11 => controller_n_95,
      ram_reg_12 => controller_n_96,
      ram_reg_13 => controller_n_97,
      ram_reg_14 => controller_n_98,
      ram_reg_15 => controller_n_99,
      ram_reg_16 => controller_n_100,
      ram_reg_17 => controller_n_101,
      ram_reg_18 => controller_n_102,
      ram_reg_19 => controller_n_103,
      ram_reg_2 => controller_n_86,
      ram_reg_20 => controller_n_104,
      ram_reg_21 => controller_n_105,
      ram_reg_22 => controller_n_106,
      ram_reg_23 => controller_n_107,
      ram_reg_24 => controller_n_108,
      ram_reg_25 => controller_n_109,
      ram_reg_26 => controller_n_110,
      ram_reg_27 => controller_n_111,
      ram_reg_28 => controller_n_112,
      ram_reg_29 => controller_n_113,
      ram_reg_3 => controller_n_87,
      ram_reg_30 => controller_n_114,
      ram_reg_31(31 downto 0) => \reg_clear_reset[11]_10\(31 downto 0),
      ram_reg_4 => controller_n_88,
      ram_reg_5 => controller_n_89,
      ram_reg_6 => controller_n_90,
      ram_reg_7 => controller_n_91,
      ram_reg_8 => controller_n_92,
      ram_reg_9 => controller_n_93,
      read_block_end => \sd_bus_interface/dat_unit/read_block_end\,
      read_crc_err_reg => read_crc_err_i_1_n_0,
      \reg_saved_reg[24][0]\(4 downto 0) => axi_araddr(6 downto 2),
      \saved_cmd_arg_reg[31]\(31 downto 0) => saved_cmd_arg(31 downto 0),
      sd_clk => sd_clk,
      \sd_clk_div_d_reg[0]\ => \sd_clk_div_d[0]_i_1_n_0\,
      sd_cmd_i => sd_cmd_i,
      sd_cmd_o => sd_cmd_o,
      sd_cmd_t => sd_cmd_t,
      sd_dat3_pullup_off => sd_dat3_pullup_off,
      \sd_dat_d_reg[0][3]\(3 downto 0) => sd_dat_i(3 downto 0),
      \sd_dat_o_reg[3]\(3 downto 0) => sd_dat_o(3 downto 0),
      sd_dat_t(0) => sd_dat_t(3),
      \size_reg[31]_0\(31 downto 0) => \reg_clear_reset[9]_11\(31 downto 0),
      status_read => status_read,
      write_ok15_in => \dat_controller/write_ok15_in\
    );
dat_width_4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => last_cmd_arg(1),
      I1 => controller_n_312,
      I2 => last_cmd_is_acmd,
      I3 => controller_n_77,
      I4 => last_cmd_arg(0),
      I5 => dat_width_4,
      O => dat_width_4_i_1_n_0
    );
data_write_en_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      Q => data_write_en,
      R => cmd_missed1
    );
device_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => controller_n_119,
      Q => device_reset_r,
      R => '0'
    );
empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => controller_n_76,
      I1 => \dat_controller/fifo/ram_empty\,
      I2 => \dat_controller/fifo_empty\,
      I3 => \dat_controller/write_ok15_in\,
      O => empty_i_1_n_0
    );
inactive_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8880000"
    )
        port map (
      I0 => controller_n_124,
      I1 => controller_n_313,
      I2 => controller_n_78,
      I3 => controller_n_314,
      I4 => controller_n_77,
      I5 => is_inactive,
      O => inactive_i_1_n_0
    );
\ram_dev_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(0),
      Q => ram_dev_data(0),
      R => cmd_missed1
    );
\ram_dev_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(10),
      Q => ram_dev_data(10),
      R => cmd_missed1
    );
\ram_dev_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(11),
      Q => ram_dev_data(11),
      R => cmd_missed1
    );
\ram_dev_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(12),
      Q => ram_dev_data(12),
      R => cmd_missed1
    );
\ram_dev_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(13),
      Q => ram_dev_data(13),
      R => cmd_missed1
    );
\ram_dev_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(14),
      Q => ram_dev_data(14),
      R => cmd_missed1
    );
\ram_dev_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(15),
      Q => ram_dev_data(15),
      R => cmd_missed1
    );
\ram_dev_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(16),
      Q => ram_dev_data(16),
      R => cmd_missed1
    );
\ram_dev_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(17),
      Q => ram_dev_data(17),
      R => cmd_missed1
    );
\ram_dev_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(18),
      Q => ram_dev_data(18),
      R => cmd_missed1
    );
\ram_dev_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(19),
      Q => ram_dev_data(19),
      R => cmd_missed1
    );
\ram_dev_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(1),
      Q => ram_dev_data(1),
      R => cmd_missed1
    );
\ram_dev_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(20),
      Q => ram_dev_data(20),
      R => cmd_missed1
    );
\ram_dev_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(21),
      Q => ram_dev_data(21),
      R => cmd_missed1
    );
\ram_dev_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(22),
      Q => ram_dev_data(22),
      R => cmd_missed1
    );
\ram_dev_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(23),
      Q => ram_dev_data(23),
      R => cmd_missed1
    );
\ram_dev_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(24),
      Q => ram_dev_data(24),
      R => cmd_missed1
    );
\ram_dev_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(25),
      Q => ram_dev_data(25),
      R => cmd_missed1
    );
\ram_dev_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(26),
      Q => ram_dev_data(26),
      R => cmd_missed1
    );
\ram_dev_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(27),
      Q => ram_dev_data(27),
      R => cmd_missed1
    );
\ram_dev_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(28),
      Q => ram_dev_data(28),
      R => cmd_missed1
    );
\ram_dev_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(29),
      Q => ram_dev_data(29),
      R => cmd_missed1
    );
\ram_dev_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(2),
      Q => ram_dev_data(2),
      R => cmd_missed1
    );
\ram_dev_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(30),
      Q => ram_dev_data(30),
      R => cmd_missed1
    );
\ram_dev_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(31),
      Q => ram_dev_data(31),
      R => cmd_missed1
    );
\ram_dev_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(3),
      Q => ram_dev_data(3),
      R => cmd_missed1
    );
\ram_dev_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(4),
      Q => ram_dev_data(4),
      R => cmd_missed1
    );
\ram_dev_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(5),
      Q => ram_dev_data(5),
      R => cmd_missed1
    );
\ram_dev_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(6),
      Q => ram_dev_data(6),
      R => cmd_missed1
    );
\ram_dev_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(7),
      Q => ram_dev_data(7),
      R => cmd_missed1
    );
\ram_dev_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(8),
      Q => ram_dev_data(8),
      R => cmd_missed1
    );
\ram_dev_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ram_dev_data0(9),
      Q => ram_dev_data(9),
      R => cmd_missed1
    );
ram_reg_r1_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(1 downto 0),
      DIB(1 downto 0) => S_AXI_WDATA(3 downto 2),
      DIC(1 downto 0) => S_AXI_WDATA(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(1 downto 0),
      DOB(1 downto 0) => reg_data_out0(3 downto 2),
      DOC(1 downto 0) => reg_data_out0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r1_0_7_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => axi_awaddr(5),
      I1 => axi_awaddr(6),
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      I4 => \^s_axi_wready\,
      I5 => \^s_axi_awready\,
      O => p_0_in9_out
    );
ram_reg_r1_0_7_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(13 downto 12),
      DIB(1 downto 0) => S_AXI_WDATA(15 downto 14),
      DIC(1 downto 0) => S_AXI_WDATA(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(13 downto 12),
      DOB(1 downto 0) => reg_data_out0(15 downto 14),
      DOC(1 downto 0) => reg_data_out0(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r1_0_7_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(19 downto 18),
      DIB(1 downto 0) => S_AXI_WDATA(21 downto 20),
      DIC(1 downto 0) => S_AXI_WDATA(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(19 downto 18),
      DOB(1 downto 0) => reg_data_out0(21 downto 20),
      DOC(1 downto 0) => reg_data_out0(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r1_0_7_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(25 downto 24),
      DIB(1 downto 0) => S_AXI_WDATA(27 downto 26),
      DIC(1 downto 0) => S_AXI_WDATA(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(25 downto 24),
      DOB(1 downto 0) => reg_data_out0(27 downto 26),
      DOC(1 downto 0) => reg_data_out0(29 downto 28),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r1_0_7_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(31 downto 30),
      DOB(1 downto 0) => NLW_ram_reg_r1_0_7_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_reg_r1_0_7_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r1_0_7_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => axi_araddr(4 downto 2),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => axi_araddr(4 downto 2),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => axi_araddr(4 downto 2),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(7 downto 6),
      DIB(1 downto 0) => S_AXI_WDATA(9 downto 8),
      DIC(1 downto 0) => S_AXI_WDATA(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_data_out0(7 downto 6),
      DOB(1 downto 0) => reg_data_out0(9 downto 8),
      DOC(1 downto 0) => reg_data_out0(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_r1_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(1 downto 0),
      DIB(1 downto 0) => S_AXI_WDATA(3 downto 2),
      DIC(1 downto 0) => S_AXI_WDATA(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(1 downto 0),
      DOB(1 downto 0) => ram_dev_data0(3 downto 2),
      DOC(1 downto 0) => ram_dev_data0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(13 downto 12),
      DIB(1 downto 0) => S_AXI_WDATA(15 downto 14),
      DIC(1 downto 0) => S_AXI_WDATA(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(13 downto 12),
      DOB(1 downto 0) => ram_dev_data0(15 downto 14),
      DOC(1 downto 0) => ram_dev_data0(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(19 downto 18),
      DIB(1 downto 0) => S_AXI_WDATA(21 downto 20),
      DIC(1 downto 0) => S_AXI_WDATA(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(19 downto 18),
      DOB(1 downto 0) => ram_dev_data0(21 downto 20),
      DOC(1 downto 0) => ram_dev_data0(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(25 downto 24),
      DIB(1 downto 0) => S_AXI_WDATA(27 downto 26),
      DIC(1 downto 0) => S_AXI_WDATA(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(25 downto 24),
      DOB(1 downto 0) => ram_dev_data0(27 downto 26),
      DOC(1 downto 0) => ram_dev_data0(29 downto 28),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(31 downto 30),
      DOB(1 downto 0) => NLW_ram_reg_r2_0_7_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_reg_r2_0_7_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
ram_reg_r2_0_7_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => ram_dev_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => axi_awaddr(4 downto 2),
      DIA(1 downto 0) => S_AXI_WDATA(7 downto 6),
      DIB(1 downto 0) => S_AXI_WDATA(9 downto 8),
      DIC(1 downto 0) => S_AXI_WDATA(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => ram_dev_data0(7 downto 6),
      DOB(1 downto 0) => ram_dev_data0(9 downto 8),
      DOC(1 downto 0) => ram_dev_data0(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_r2_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXI_ACLK,
      WE => p_0_in9_out
    );
read_crc_err_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => controller_n_317,
      I1 => controller_n_318,
      I2 => controller_n_315,
      I3 => controller_n_316,
      I4 => \sd_bus_interface/dat_unit/read_block_end\,
      I5 => dat_crc_err,
      O => read_crc_err_i_1_n_0
    );
\reg_saved_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(0),
      Q => \reg_saved_reg[17]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[17][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(10),
      Q => \reg_saved_reg[17]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[17][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(11),
      Q => \reg_saved_reg[17]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[17][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(13),
      Q => \reg_saved_reg[17]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[17][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(14),
      Q => \reg_saved_reg[17]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[17][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(15),
      Q => \reg_saved_reg[17]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[17][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(16),
      Q => \reg_saved_reg[17]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[17][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(17),
      Q => \reg_saved_reg[17]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[17][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(18),
      Q => \reg_saved_reg[17]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[17][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(19),
      Q => \reg_saved_reg[17]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(1),
      Q => \reg_saved_reg[17]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[17][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(20),
      Q => \reg_saved_reg[17]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[17][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(21),
      Q => \reg_saved_reg[17]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[17][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(22),
      Q => \reg_saved_reg[17]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[17][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(23),
      Q => \reg_saved_reg[17]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[17][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(24),
      Q => \reg_saved_reg[17]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[17][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(25),
      Q => \reg_saved_reg[17]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[17][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(26),
      Q => \reg_saved_reg[17]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[17][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(27),
      Q => \reg_saved_reg[17]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[17][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(28),
      Q => \reg_saved_reg[17]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[17][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(29),
      Q => \reg_saved_reg[17]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(2),
      Q => \reg_saved_reg[17]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[17][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(30),
      Q => \reg_saved_reg[17]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[17][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(31),
      Q => \reg_saved_reg[17]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(3),
      Q => \reg_saved_reg[17]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(4),
      Q => \reg_saved_reg[17]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(5),
      Q => \reg_saved_reg[17]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(6),
      Q => \reg_saved_reg[17]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(7),
      Q => \reg_saved_reg[17]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[17][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => controller_n_66,
      Q => \reg_saved_reg[17]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[17][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => card_status_out(9),
      Q => \reg_saved_reg[17]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(0),
      Q => \reg_saved_reg[18]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[18][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(10),
      Q => \reg_saved_reg[18]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[18][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(11),
      Q => \reg_saved_reg[18]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[18][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(12),
      Q => \reg_saved_reg[18]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[18][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(13),
      Q => \reg_saved_reg[18]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[18][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(14),
      Q => \reg_saved_reg[18]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[18][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(15),
      Q => \reg_saved_reg[18]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[18][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(16),
      Q => \reg_saved_reg[18]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[18][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(17),
      Q => \reg_saved_reg[18]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[18][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(18),
      Q => \reg_saved_reg[18]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[18][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(19),
      Q => \reg_saved_reg[18]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(1),
      Q => \reg_saved_reg[18]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[18][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(20),
      Q => \reg_saved_reg[18]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[18][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(21),
      Q => \reg_saved_reg[18]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[18][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(22),
      Q => \reg_saved_reg[18]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[18][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(23),
      Q => \reg_saved_reg[18]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[18][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(24),
      Q => \reg_saved_reg[18]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[18][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(25),
      Q => \reg_saved_reg[18]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[18][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(26),
      Q => \reg_saved_reg[18]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[18][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(27),
      Q => \reg_saved_reg[18]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[18][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(28),
      Q => \reg_saved_reg[18]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[18][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(29),
      Q => \reg_saved_reg[18]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(2),
      Q => \reg_saved_reg[18]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[18][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(30),
      Q => \reg_saved_reg[18]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[18][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(31),
      Q => \reg_saved_reg[18]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(3),
      Q => \reg_saved_reg[18]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[18][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(4),
      Q => \reg_saved_reg[18]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[18][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(5),
      Q => \reg_saved_reg[18]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[18][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(6),
      Q => \reg_saved_reg[18]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[18][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(7),
      Q => \reg_saved_reg[18]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[18][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(8),
      Q => \reg_saved_reg[18]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[18][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => saved_cmd_arg(9),
      Q => \reg_saved_reg[18]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(0),
      Q => \reg_saved_reg[19]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[19][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(10),
      Q => \reg_saved_reg[19]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[19][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(11),
      Q => \reg_saved_reg[19]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[19][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(12),
      Q => \reg_saved_reg[19]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[19][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(13),
      Q => \reg_saved_reg[19]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[19][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(14),
      Q => \reg_saved_reg[19]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[19][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(15),
      Q => \reg_saved_reg[19]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[19][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(16),
      Q => \reg_saved_reg[19]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[19][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(17),
      Q => \reg_saved_reg[19]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[19][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(18),
      Q => \reg_saved_reg[19]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[19][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(19),
      Q => \reg_saved_reg[19]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(1),
      Q => \reg_saved_reg[19]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[19][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(20),
      Q => \reg_saved_reg[19]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[19][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(21),
      Q => \reg_saved_reg[19]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[19][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(22),
      Q => \reg_saved_reg[19]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[19][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(23),
      Q => \reg_saved_reg[19]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[19][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(24),
      Q => \reg_saved_reg[19]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[19][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(25),
      Q => \reg_saved_reg[19]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[19][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(26),
      Q => \reg_saved_reg[19]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[19][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(27),
      Q => \reg_saved_reg[19]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[19][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(28),
      Q => \reg_saved_reg[19]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[19][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(29),
      Q => \reg_saved_reg[19]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(2),
      Q => \reg_saved_reg[19]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[19][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(30),
      Q => \reg_saved_reg[19]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[19][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(31),
      Q => \reg_saved_reg[19]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(3),
      Q => \reg_saved_reg[19]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(4),
      Q => \reg_saved_reg[19]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(5),
      Q => \reg_saved_reg[19]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(6),
      Q => \reg_saved_reg[19]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(7),
      Q => \reg_saved_reg[19]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[19][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(8),
      Q => \reg_saved_reg[19]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[19][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => last_cmd_arg(9),
      Q => \reg_saved_reg[19]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(0),
      Q => \reg_saved_reg[20]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[20][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(10),
      Q => \reg_saved_reg[20]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[20][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(11),
      Q => \reg_saved_reg[20]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[20][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(12),
      Q => \reg_saved_reg[20]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[20][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(13),
      Q => \reg_saved_reg[20]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[20][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(14),
      Q => \reg_saved_reg[20]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[20][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(15),
      Q => \reg_saved_reg[20]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[20][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(16),
      Q => \reg_saved_reg[20]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[20][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(17),
      Q => \reg_saved_reg[20]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[20][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(18),
      Q => \reg_saved_reg[20]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[20][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(19),
      Q => \reg_saved_reg[20]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(1),
      Q => \reg_saved_reg[20]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[20][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(20),
      Q => \reg_saved_reg[20]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[20][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(21),
      Q => \reg_saved_reg[20]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[20][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(22),
      Q => \reg_saved_reg[20]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[20][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(23),
      Q => \reg_saved_reg[20]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[20][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(24),
      Q => \reg_saved_reg[20]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[20][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(25),
      Q => \reg_saved_reg[20]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[20][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(26),
      Q => \reg_saved_reg[20]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[20][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(27),
      Q => \reg_saved_reg[20]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[20][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(28),
      Q => \reg_saved_reg[20]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[20][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(29),
      Q => \reg_saved_reg[20]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(2),
      Q => \reg_saved_reg[20]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[20][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(30),
      Q => \reg_saved_reg[20]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[20][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(31),
      Q => \reg_saved_reg[20]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(3),
      Q => \reg_saved_reg[20]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(4),
      Q => \reg_saved_reg[20]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(5),
      Q => \reg_saved_reg[20]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(6),
      Q => \reg_saved_reg[20]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(7),
      Q => \reg_saved_reg[20]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[20][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(8),
      Q => \reg_saved_reg[20]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[20][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_start(9),
      Q => \reg_saved_reg[20]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(0),
      Q => \reg_saved_reg[21]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[21][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(10),
      Q => \reg_saved_reg[21]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[21][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(11),
      Q => \reg_saved_reg[21]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[21][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(12),
      Q => \reg_saved_reg[21]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[21][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(13),
      Q => \reg_saved_reg[21]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[21][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(14),
      Q => \reg_saved_reg[21]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[21][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(15),
      Q => \reg_saved_reg[21]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[21][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(16),
      Q => \reg_saved_reg[21]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[21][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(17),
      Q => \reg_saved_reg[21]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[21][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(18),
      Q => \reg_saved_reg[21]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[21][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(19),
      Q => \reg_saved_reg[21]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(1),
      Q => \reg_saved_reg[21]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[21][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(20),
      Q => \reg_saved_reg[21]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[21][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(21),
      Q => \reg_saved_reg[21]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[21][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(22),
      Q => \reg_saved_reg[21]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[21][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(23),
      Q => \reg_saved_reg[21]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[21][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(24),
      Q => \reg_saved_reg[21]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[21][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(25),
      Q => \reg_saved_reg[21]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[21][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(26),
      Q => \reg_saved_reg[21]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[21][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(27),
      Q => \reg_saved_reg[21]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[21][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(28),
      Q => \reg_saved_reg[21]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[21][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(29),
      Q => \reg_saved_reg[21]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(2),
      Q => \reg_saved_reg[21]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[21][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(30),
      Q => \reg_saved_reg[21]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[21][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(31),
      Q => \reg_saved_reg[21]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(3),
      Q => \reg_saved_reg[21]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(4),
      Q => \reg_saved_reg[21]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(5),
      Q => \reg_saved_reg[21]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[21][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(6),
      Q => \reg_saved_reg[21]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[21][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(7),
      Q => \reg_saved_reg[21]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[21][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(8),
      Q => \reg_saved_reg[21]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[21][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => erase_end(9),
      Q => \reg_saved_reg[21]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(0),
      Q => \reg_saved_reg[22]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[22][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(10),
      Q => \reg_saved_reg[22]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[22][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(11),
      Q => \reg_saved_reg[22]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[22][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(12),
      Q => \reg_saved_reg[22]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[22][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(13),
      Q => \reg_saved_reg[22]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[22][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(14),
      Q => \reg_saved_reg[22]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[22][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(15),
      Q => \reg_saved_reg[22]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[22][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(16),
      Q => \reg_saved_reg[22]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[22][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(17),
      Q => \reg_saved_reg[22]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[22][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(18),
      Q => \reg_saved_reg[22]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[22][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(19),
      Q => \reg_saved_reg[22]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(1),
      Q => \reg_saved_reg[22]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[22][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(20),
      Q => \reg_saved_reg[22]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[22][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(21),
      Q => \reg_saved_reg[22]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[22][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(22),
      Q => \reg_saved_reg[22]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[22][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(23),
      Q => \reg_saved_reg[22]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[22][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(24),
      Q => \reg_saved_reg[22]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[22][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(25),
      Q => \reg_saved_reg[22]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[22][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(26),
      Q => \reg_saved_reg[22]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[22][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(27),
      Q => \reg_saved_reg[22]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[22][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(28),
      Q => \reg_saved_reg[22]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[22][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(29),
      Q => \reg_saved_reg[22]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(2),
      Q => \reg_saved_reg[22]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[22][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(30),
      Q => \reg_saved_reg[22]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[22][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(31),
      Q => \reg_saved_reg[22]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(3),
      Q => \reg_saved_reg[22]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(4),
      Q => \reg_saved_reg[22]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(5),
      Q => \reg_saved_reg[22]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[22][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(6),
      Q => \reg_saved_reg[22]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[22][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(7),
      Q => \reg_saved_reg[22]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[22][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(8),
      Q => \reg_saved_reg[22]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[22][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => block_limit(9),
      Q => \reg_saved_reg[22]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(0),
      Q => \reg_saved_reg[23]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[23][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(10),
      Q => \reg_saved_reg[23]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[23][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(11),
      Q => \reg_saved_reg[23]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[23][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(12),
      Q => \reg_saved_reg[23]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[23][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(13),
      Q => \reg_saved_reg[23]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[23][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(14),
      Q => \reg_saved_reg[23]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[23][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(15),
      Q => \reg_saved_reg[23]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[23][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(16),
      Q => \reg_saved_reg[23]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[23][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(17),
      Q => \reg_saved_reg[23]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[23][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(18),
      Q => \reg_saved_reg[23]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[23][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(19),
      Q => \reg_saved_reg[23]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(1),
      Q => \reg_saved_reg[23]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[23][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(20),
      Q => \reg_saved_reg[23]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[23][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(21),
      Q => \reg_saved_reg[23]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[23][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(22),
      Q => \reg_saved_reg[23]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(2),
      Q => \reg_saved_reg[23]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(3),
      Q => \reg_saved_reg[23]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(4),
      Q => \reg_saved_reg[23]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(5),
      Q => \reg_saved_reg[23]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[23][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(6),
      Q => \reg_saved_reg[23]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(7),
      Q => \reg_saved_reg[23]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[23][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(8),
      Q => \reg_saved_reg[23]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[23][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => pre_erase_count(9),
      Q => \reg_saved_reg[23]\(9),
      R => cmd_missed1
    );
\reg_saved_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(0),
      Q => \reg_saved_reg[24]\(0),
      R => cmd_missed1
    );
\reg_saved_reg[24][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(10),
      Q => \reg_saved_reg[24]\(10),
      R => cmd_missed1
    );
\reg_saved_reg[24][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(11),
      Q => \reg_saved_reg[24]\(11),
      R => cmd_missed1
    );
\reg_saved_reg[24][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(12),
      Q => \reg_saved_reg[24]\(12),
      R => cmd_missed1
    );
\reg_saved_reg[24][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(13),
      Q => \reg_saved_reg[24]\(13),
      R => cmd_missed1
    );
\reg_saved_reg[24][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(14),
      Q => \reg_saved_reg[24]\(14),
      R => cmd_missed1
    );
\reg_saved_reg[24][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(15),
      Q => \reg_saved_reg[24]\(15),
      R => cmd_missed1
    );
\reg_saved_reg[24][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(16),
      Q => \reg_saved_reg[24]\(16),
      R => cmd_missed1
    );
\reg_saved_reg[24][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(17),
      Q => \reg_saved_reg[24]\(17),
      R => cmd_missed1
    );
\reg_saved_reg[24][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(18),
      Q => \reg_saved_reg[24]\(18),
      R => cmd_missed1
    );
\reg_saved_reg[24][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(19),
      Q => \reg_saved_reg[24]\(19),
      R => cmd_missed1
    );
\reg_saved_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(1),
      Q => \reg_saved_reg[24]\(1),
      R => cmd_missed1
    );
\reg_saved_reg[24][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(20),
      Q => \reg_saved_reg[24]\(20),
      R => cmd_missed1
    );
\reg_saved_reg[24][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(21),
      Q => \reg_saved_reg[24]\(21),
      R => cmd_missed1
    );
\reg_saved_reg[24][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(22),
      Q => \reg_saved_reg[24]\(22),
      R => cmd_missed1
    );
\reg_saved_reg[24][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(23),
      Q => \reg_saved_reg[24]\(23),
      R => cmd_missed1
    );
\reg_saved_reg[24][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(24),
      Q => \reg_saved_reg[24]\(24),
      R => cmd_missed1
    );
\reg_saved_reg[24][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(25),
      Q => \reg_saved_reg[24]\(25),
      R => cmd_missed1
    );
\reg_saved_reg[24][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(26),
      Q => \reg_saved_reg[24]\(26),
      R => cmd_missed1
    );
\reg_saved_reg[24][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(27),
      Q => \reg_saved_reg[24]\(27),
      R => cmd_missed1
    );
\reg_saved_reg[24][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(28),
      Q => \reg_saved_reg[24]\(28),
      R => cmd_missed1
    );
\reg_saved_reg[24][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(29),
      Q => \reg_saved_reg[24]\(29),
      R => cmd_missed1
    );
\reg_saved_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(2),
      Q => \reg_saved_reg[24]\(2),
      R => cmd_missed1
    );
\reg_saved_reg[24][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(30),
      Q => \reg_saved_reg[24]\(30),
      R => cmd_missed1
    );
\reg_saved_reg[24][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(31),
      Q => \reg_saved_reg[24]\(31),
      R => cmd_missed1
    );
\reg_saved_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(3),
      Q => \reg_saved_reg[24]\(3),
      R => cmd_missed1
    );
\reg_saved_reg[24][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(4),
      Q => \reg_saved_reg[24]\(4),
      R => cmd_missed1
    );
\reg_saved_reg[24][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(5),
      Q => \reg_saved_reg[24]\(5),
      R => cmd_missed1
    );
\reg_saved_reg[24][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(6),
      Q => \reg_saved_reg[24]\(6),
      R => cmd_missed1
    );
\reg_saved_reg[24][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(7),
      Q => \reg_saved_reg[24]\(7),
      R => cmd_missed1
    );
\reg_saved_reg[24][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(8),
      Q => \reg_saved_reg[24]\(8),
      R => cmd_missed1
    );
\reg_saved_reg[24][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => status_read,
      D => dat_blocks_read(9),
      Q => \reg_saved_reg[24]\(9),
      R => cmd_missed1
    );
\sd_clk_div_d[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sd_bus_interface/sd_clk_div_d_reg\,
      O => \sd_clk_div_d[0]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always[12][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => axi_awaddr(2),
      I2 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      O => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(0),
      Q => \reg_clear_always[12]_13\(0),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(13),
      Q => \reg_clear_always[12]_13\(13),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(14),
      Q => \reg_clear_always[12]_13\(14),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(15),
      Q => \reg_clear_always[12]_13\(15),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(16),
      Q => \reg_clear_always[12]_13\(16),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(17),
      Q => \reg_clear_always[12]_13\(17),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(18),
      Q => \reg_clear_always[12]_13\(18),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(19),
      Q => \reg_clear_always[12]_13\(19),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(1),
      Q => \reg_clear_always[12]_13\(1),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(20),
      Q => \reg_clear_always[12]_13\(20),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(21),
      Q => \reg_clear_always[12]_13\(21),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(22),
      Q => \reg_clear_always[12]_13\(22),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(23),
      Q => \reg_clear_always[12]_13\(23),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(24),
      Q => \reg_clear_always[12]_13\(24),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(25),
      Q => \reg_clear_always[12]_13\(25),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(26),
      Q => \reg_clear_always[12]_13\(26),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(27),
      Q => \reg_clear_always[12]_13\(27),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(28),
      Q => \reg_clear_always[12]_13\(28),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(29),
      Q => \reg_clear_always[12]_13\(29),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(2),
      Q => \reg_clear_always[12]_13\(2),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(30),
      Q => \reg_clear_always[12]_13\(30),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(31),
      Q => \reg_clear_always[12]_13\(31),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(3),
      Q => \reg_clear_always[12]_13\(3),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(4),
      Q => \reg_clear_always[12]_13\(4),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(5),
      Q => \reg_clear_always[12]_13\(5),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(6),
      Q => \reg_clear_always[12]_13\(6),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[12].reg_clear_always_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(7),
      Q => \reg_clear_always[12]_13\(7),
      R => \set_reg_clear_always[12].reg_clear_always[12][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always[13][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(3),
      I4 => axi_awaddr(2),
      O => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(0),
      Q => \reg_clear_always[13]_14\(0),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(13),
      Q => \reg_clear_always[13]_14\(13),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(14),
      Q => \reg_clear_always[13]_14\(14),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(15),
      Q => \reg_clear_always[13]_14\(15),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(16),
      Q => \reg_clear_always[13]_14\(16),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(17),
      Q => \reg_clear_always[13]_14\(17),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(18),
      Q => \reg_clear_always[13]_14\(18),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(19),
      Q => \reg_clear_always[13]_14\(19),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(1),
      Q => \reg_clear_always[13]_14\(1),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(20),
      Q => \reg_clear_always[13]_14\(20),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(21),
      Q => \reg_clear_always[13]_14\(21),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(22),
      Q => \reg_clear_always[13]_14\(22),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(23),
      Q => \reg_clear_always[13]_14\(23),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(24),
      Q => \reg_clear_always[13]_14\(24),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(25),
      Q => \reg_clear_always[13]_14\(25),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(26),
      Q => \reg_clear_always[13]_14\(26),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(27),
      Q => \reg_clear_always[13]_14\(27),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(28),
      Q => \reg_clear_always[13]_14\(28),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(29),
      Q => \reg_clear_always[13]_14\(29),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(2),
      Q => \reg_clear_always[13]_14\(2),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(30),
      Q => \reg_clear_always[13]_14\(30),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(31),
      Q => \reg_clear_always[13]_14\(31),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(3),
      Q => \reg_clear_always[13]_14\(3),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(4),
      Q => \reg_clear_always[13]_14\(4),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(5),
      Q => \reg_clear_always[13]_14\(5),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(6),
      Q => \reg_clear_always[13]_14\(6),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[13].reg_clear_always_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WDATA(7),
      Q => \reg_clear_always[13]_14\(7),
      R => \set_reg_clear_always[13].reg_clear_always[13][31]_i_1_n_0\
    );
\set_reg_clear_always[14].reg_clear_always[14][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I4 => axi_awaddr(4),
      I5 => S_AXI_ARESETN,
      O => \set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0\
    );
\set_reg_clear_always[14].reg_clear_always[14][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I4 => axi_awaddr(4),
      I5 => S_AXI_ARESETN,
      O => \set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0\
    );
\set_reg_clear_always[14].reg_clear_always_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \set_reg_clear_always[14].reg_clear_always[14][0]_i_1_n_0\,
      Q => \set_reg_clear_always[14].reg_clear_always_reg_n_0_[14][0]\,
      R => '0'
    );
\set_reg_clear_always[14].reg_clear_always_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \set_reg_clear_always[14].reg_clear_always[14][1]_i_1_n_0\,
      Q => no_more_write_data,
      R => '0'
    );
\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\
    );
\set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => axi_awaddr(6),
      I1 => axi_awaddr(5),
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => S_AXI_AWVALID,
      O => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \reg_clear_reset[10]_9\(18),
      R => cmd_missed1
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \reg_clear_reset[10]_9\(20),
      R => cmd_missed1
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \reg_clear_reset[10]_9\(22),
      R => cmd_missed1
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \reg_clear_reset[10]_9\(23),
      R => cmd_missed1
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \reg_clear_reset[10]_9\(27),
      R => cmd_missed1
    );
\set_reg_clear_reset[10].reg_clear_reset_reg[10][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \reg_clear_reset[10]_9\(28),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(3),
      O => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \reg_clear_reset[11]_10\(0),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \reg_clear_reset[11]_10\(10),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \reg_clear_reset[11]_10\(11),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \reg_clear_reset[11]_10\(12),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \reg_clear_reset[11]_10\(13),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \reg_clear_reset[11]_10\(14),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \reg_clear_reset[11]_10\(15),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \reg_clear_reset[11]_10\(16),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \reg_clear_reset[11]_10\(17),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \reg_clear_reset[11]_10\(18),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \reg_clear_reset[11]_10\(19),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \reg_clear_reset[11]_10\(1),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \reg_clear_reset[11]_10\(20),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \reg_clear_reset[11]_10\(21),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \reg_clear_reset[11]_10\(22),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \reg_clear_reset[11]_10\(23),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \reg_clear_reset[11]_10\(24),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \reg_clear_reset[11]_10\(25),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \reg_clear_reset[11]_10\(26),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \reg_clear_reset[11]_10\(27),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \reg_clear_reset[11]_10\(28),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \reg_clear_reset[11]_10\(29),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \reg_clear_reset[11]_10\(2),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \reg_clear_reset[11]_10\(30),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \reg_clear_reset[11]_10\(31),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \reg_clear_reset[11]_10\(3),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \reg_clear_reset[11]_10\(4),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \reg_clear_reset[11]_10\(5),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \reg_clear_reset[11]_10\(6),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \reg_clear_reset[11]_10\(7),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \reg_clear_reset[11]_10\(8),
      R => cmd_missed1
    );
\set_reg_clear_reset[11].reg_clear_reset_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[11].reg_clear_reset[11][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \reg_clear_reset[11]_10\(9),
      R => cmd_missed1
    );
\set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(2),
      O => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \reg_clear_reset[8]_12\(24),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \reg_clear_reset[8]_12\(25),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \reg_clear_reset[8]_12\(26),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \reg_clear_reset[8]_12\(27),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \reg_clear_reset[8]_12\(28),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \reg_clear_reset[8]_12\(29),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \reg_clear_reset[8]_12\(30),
      R => controller_n_79
    );
\set_reg_clear_reset[8].reg_clear_reset_reg[8][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \set_reg_clear_reset[8].reg_clear_reset[8][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \reg_clear_reset[8]_12\(31),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset[9][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => \set_reg_clear_reset[10].reg_clear_reset[10][28]_i_2_n_0\,
      I3 => axi_awaddr(4),
      O => p_1_in
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(0),
      Q => \reg_clear_reset[9]_11\(0),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(10),
      Q => \reg_clear_reset[9]_11\(10),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(11),
      Q => \reg_clear_reset[9]_11\(11),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(12),
      Q => \reg_clear_reset[9]_11\(12),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(13),
      Q => \reg_clear_reset[9]_11\(13),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(14),
      Q => \reg_clear_reset[9]_11\(14),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(15),
      Q => \reg_clear_reset[9]_11\(15),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(16),
      Q => \reg_clear_reset[9]_11\(16),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(17),
      Q => \reg_clear_reset[9]_11\(17),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(18),
      Q => \reg_clear_reset[9]_11\(18),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(19),
      Q => \reg_clear_reset[9]_11\(19),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(1),
      Q => \reg_clear_reset[9]_11\(1),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(20),
      Q => \reg_clear_reset[9]_11\(20),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(21),
      Q => \reg_clear_reset[9]_11\(21),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(22),
      Q => \reg_clear_reset[9]_11\(22),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(23),
      Q => \reg_clear_reset[9]_11\(23),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(24),
      Q => \reg_clear_reset[9]_11\(24),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(25),
      Q => \reg_clear_reset[9]_11\(25),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(26),
      Q => \reg_clear_reset[9]_11\(26),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(27),
      Q => \reg_clear_reset[9]_11\(27),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(28),
      Q => \reg_clear_reset[9]_11\(28),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(29),
      Q => \reg_clear_reset[9]_11\(29),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(2),
      Q => \reg_clear_reset[9]_11\(2),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(30),
      Q => \reg_clear_reset[9]_11\(30),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(31),
      Q => \reg_clear_reset[9]_11\(31),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(3),
      Q => \reg_clear_reset[9]_11\(3),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(4),
      Q => \reg_clear_reset[9]_11\(4),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(5),
      Q => \reg_clear_reset[9]_11\(5),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(6),
      Q => \reg_clear_reset[9]_11\(6),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(7),
      Q => \reg_clear_reset[9]_11\(7),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(8),
      Q => \reg_clear_reset[9]_11\(8),
      R => controller_n_79
    );
\set_reg_clear_reset[9].reg_clear_reset_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in,
      D => S_AXI_WDATA(9),
      Q => \reg_clear_reset[9]_11\(9),
      R => controller_n_79
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0 is
  port (
    sd_clk : in STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    sd_dat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat3_pullup : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adapter_axi_sd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adapter_axi_sd_0_0 : entity is "adapter_axi_sd_0_0,axi_sd_v1_0_S_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adapter_axi_sd_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adapter_axi_sd_0_0 : entity is "axi_sd_v1_0_S_AXI,Vivado 2019.1";
end adapter_axi_sd_0_0;

architecture STRUCTURE of adapter_axi_sd_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute CLOCK_BUFFER_TYPE : string;
  attribute CLOCK_BUFFER_TYPE of sd_clk : signal is "BUFIO";
  attribute X_INTERFACE_INFO of sd_clk : signal is "acme:user:sd:1.0 sd CLK";
  attribute X_INTERFACE_INFO of sd_cmd : signal is "acme:user:sd:1.0 sd CMD";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of sd_dat : signal is "acme:user:sd:1.0 sd DAT";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(4 downto 0) => S_AXI_ARADDR(6 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 0) => S_AXI_AWADDR(6 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      interrupt => interrupt,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      sd_dat(3 downto 0) => sd_dat(3 downto 0),
      sd_dat3_pullup => sd_dat3_pullup
    );
end STRUCTURE;
