-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Apr 28 13:53:45 2019
-- Host        : db17480ec9ff running 64-bit unknown
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
entity adapter_axi_sd_0_0_line_crc is
  port (
    \axi_awaddr_reg[4]\ : out STD_LOGIC;
    S_AXI_WVALID_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \state_reg[3]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \bits_left_reg[2]\ : out STD_LOGIC;
    \bits_left_reg[1]\ : out STD_LOGIC;
    \since_read_done_reg[4]\ : out STD_LOGIC;
    sd_cmd_d_reg : out STD_LOGIC;
    crc_error_last0 : out STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_tx_ctrl : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_buf_reg[47]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    write_crc : in STD_LOGIC;
    \data_buf[47]_i_2_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \data_buf_reg[46]\ : in STD_LOGIC;
    \data_buf_reg[45]\ : in STD_LOGIC;
    \data_buf_reg[45]_0\ : in STD_LOGIC;
    \data_buf_reg[44]\ : in STD_LOGIC;
    \data_buf_reg[43]\ : in STD_LOGIC;
    \data_buf_reg[42]\ : in STD_LOGIC;
    \data_buf_reg[42]_0\ : in STD_LOGIC;
    \data_buf_reg[41]\ : in STD_LOGIC;
    \data_buf_reg[41]_0\ : in STD_LOGIC;
    read_ready_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    write_pending : in STD_LOGIC;
    write_strb : in STD_LOGIC;
    write_pending_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_line_crc : entity is "line_crc";
end adapter_axi_sd_0_0_line_crc;

architecture STRUCTURE of adapter_axi_sd_0_0_line_crc is
  signal \^d\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal \^axi_awaddr_reg[4]\ : STD_LOGIC;
  signal \^bits_left_reg[1]\ : STD_LOGIC;
  signal \^bits_left_reg[2]\ : STD_LOGIC;
  signal crc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal crc0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal crc2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crc[6]_i_1_n_0\ : STD_LOGIC;
  signal \crc[6]_i_2_n_0\ : STD_LOGIC;
  signal crc_error_last_i_2_n_0 : STD_LOGIC;
  signal \data_buf[43]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[44]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[45]_i_3_n_0\ : STD_LOGIC;
  signal \data_buf[47]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[47]_i_4_n_0\ : STD_LOGIC;
  signal \data_buf[47]_i_5_n_0\ : STD_LOGIC;
  signal \^sd_cmd_d_reg\ : STD_LOGIC;
  signal \^since_read_done_reg[4]\ : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC;
  signal \^state_reg[3]\ : STD_LOGIC;
  signal write_pending_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bits_left[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_buf[47]_i_2\ : label is "soft_lutpair0";
begin
  D(6 downto 0) <= \^d\(6 downto 0);
  S_AXI_WVALID_0 <= \^s_axi_wvalid_0\;
  \axi_awaddr_reg[4]\ <= \^axi_awaddr_reg[4]\;
  \bits_left_reg[1]\ <= \^bits_left_reg[1]\;
  \bits_left_reg[2]\ <= \^bits_left_reg[2]\;
  sd_cmd_d_reg <= \^sd_cmd_d_reg\;
  \since_read_done_reg[4]\ <= \^since_read_done_reg[4]\;
  \state_reg[0]\ <= \^state_reg[0]\;
  \state_reg[3]\ <= \^state_reg[3]\;
\bits_left[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => Q(3),
      I1 => \^bits_left_reg[2]\,
      I2 => write_crc,
      O => \^state_reg[3]\
    );
\bits_left[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \crc_reg[0]_0\(0),
      I2 => \crc_reg[0]_0\(1),
      O => \^sd_cmd_d_reg\
    );
\crc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6665666A"
    )
        port map (
      I0 => crc(6),
      I1 => \^d\(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => p_0_in(0),
      O => crc2(0)
    );
\crc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA955595556AAA6"
    )
        port map (
      I0 => crc(2),
      I1 => p_0_in(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^d\(6),
      I5 => crc(6),
      O => crc0(3)
    );
\crc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => \^axi_awaddr_reg[4]\,
      O => \crc[6]_i_1_n_0\
    );
\crc[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01E0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \crc_reg[0]_0\(1),
      I3 => \crc_reg[0]_0\(0),
      O => \crc[6]_i_2_n_0\
    );
crc_error_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => crc(6),
      I1 => crc(3),
      I2 => crc(2),
      I3 => crc(5),
      I4 => crc_error_last_i_2_n_0,
      O => crc_error_last0
    );
crc_error_last_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => crc(4),
      I1 => crc(0),
      I2 => p_0_in(0),
      I3 => crc(1),
      O => crc_error_last_i_2_n_0
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc2(0),
      Q => crc(0),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc(0),
      Q => crc(1),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc(1),
      Q => crc(2),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc0(3),
      Q => crc(3),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc(3),
      Q => crc(4),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc(4),
      Q => crc(5),
      R => \crc[6]_i_1_n_0\
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \crc[6]_i_2_n_0\,
      D => crc(5),
      Q => crc(6),
      R => \crc[6]_i_1_n_0\
    );
\data_buf[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \^state_reg[3]\,
      I1 => crc(0),
      I2 => \data_buf_reg[41]\,
      I3 => \^state_reg[0]\,
      I4 => \data_buf_reg[41]_0\,
      O => \^d\(0)
    );
\data_buf[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \^state_reg[3]\,
      I1 => crc(1),
      I2 => \data_buf_reg[42]\,
      I3 => \^state_reg[0]\,
      I4 => \data_buf_reg[42]_0\,
      O => \^d\(1)
    );
\data_buf[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \data_buf_reg[45]\,
      I1 => \data_buf[47]_i_2_0\(0),
      I2 => \data_buf[43]_i_2_n_0\,
      I3 => \^state_reg[0]\,
      I4 => \data_buf_reg[43]\,
      O => \^d\(2)
    );
\data_buf[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => Q(2),
      I1 => \data_buf[47]_i_2_0\(1),
      I2 => Q(1),
      I3 => \data_buf[47]_i_2_0\(0),
      I4 => \^state_reg[3]\,
      I5 => crc(2),
      O => \data_buf[43]_i_2_n_0\
    );
\data_buf[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \data_buf_reg[45]\,
      I1 => \data_buf[47]_i_2_0\(1),
      I2 => \data_buf[44]_i_2_n_0\,
      I3 => \^state_reg[0]\,
      I4 => \data_buf_reg[44]\,
      O => \^d\(3)
    );
\data_buf[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => Q(2),
      I1 => \data_buf[47]_i_2_0\(2),
      I2 => Q(1),
      I3 => \data_buf[47]_i_2_0\(1),
      I4 => \^state_reg[3]\,
      I5 => crc(3),
      O => \data_buf[44]_i_2_n_0\
    );
\data_buf[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \data_buf_reg[45]\,
      I1 => \data_buf[47]_i_2_0\(2),
      I2 => \data_buf[45]_i_3_n_0\,
      I3 => \^state_reg[0]\,
      I4 => \data_buf_reg[45]_0\,
      O => \^d\(4)
    );
\data_buf[45]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => Q(2),
      I1 => \data_buf[47]_i_2_0\(3),
      I2 => Q(1),
      I3 => \data_buf[47]_i_2_0\(2),
      I4 => \^state_reg[3]\,
      I5 => crc(4),
      O => \data_buf[45]_i_3_n_0\
    );
\data_buf[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF400F400F400"
    )
        port map (
      I0 => \^state_reg[3]\,
      I1 => crc(5),
      I2 => \data_buf_reg[46]\,
      I3 => \^state_reg[0]\,
      I4 => cmd_tx_ctrl(0),
      I5 => \data_buf_reg[47]\(0),
      O => \^d\(5)
    );
\data_buf[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF400F400F400"
    )
        port map (
      I0 => \^state_reg[3]\,
      I1 => crc(6),
      I2 => \data_buf[47]_i_2_n_0\,
      I3 => \^state_reg[0]\,
      I4 => cmd_tx_ctrl(0),
      I5 => \data_buf_reg[47]\(1),
      O => \^d\(6)
    );
\data_buf[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \data_buf[47]_i_4_n_0\,
      I1 => \^bits_left_reg[2]\,
      I2 => write_crc,
      I3 => Q(3),
      I4 => \data_buf[47]_i_2_0\(4),
      O => \data_buf[47]_i_2_n_0\
    );
\data_buf[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBBBF"
    )
        port map (
      I0 => \^since_read_done_reg[4]\,
      I1 => Q(0),
      I2 => write_pending,
      I3 => write_strb,
      I4 => \^sd_cmd_d_reg\,
      I5 => \data_buf[47]_i_5_n_0\,
      O => \^state_reg[0]\
    );
\data_buf[47]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \data_buf[47]_i_2_0\(5),
      I1 => Q(2),
      I2 => \data_buf[47]_i_2_0\(4),
      I3 => Q(1),
      O => \data_buf[47]_i_4_n_0\
    );
\data_buf[47]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA800000000"
    )
        port map (
      I0 => \^bits_left_reg[1]\,
      I1 => read_ready_reg(6),
      I2 => read_ready_reg(7),
      I3 => read_ready_reg(5),
      I4 => read_ready_reg(2),
      I5 => Q(3),
      O => \data_buf[47]_i_5_n_0\
    );
interrupt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => \^s_axi_wvalid_0\,
      I4 => S_AXI_WDATA(0),
      I5 => S_AXI_ARESETN,
      O => \^axi_awaddr_reg[4]\
    );
interrupt_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \state_reg[0]_0\,
      I3 => \state_reg[0]_1\,
      O => \^s_axi_wvalid_0\
    );
io_buf_cmd_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => read_ready_reg(2),
      I1 => read_ready_reg(5),
      I2 => read_ready_reg(7),
      I3 => read_ready_reg(6),
      I4 => \^bits_left_reg[1]\,
      O => \^bits_left_reg[2]\
    );
io_buf_cmd_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => read_ready_reg(1),
      I1 => read_ready_reg(0),
      I2 => read_ready_reg(4),
      I3 => read_ready_reg(3),
      O => \^bits_left_reg[1]\
    );
write_pending_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => write_pending_i_5_n_0,
      I1 => write_pending_reg(4),
      I2 => write_pending_reg(5),
      I3 => write_pending_reg(3),
      O => \^since_read_done_reg[4]\
    );
write_pending_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B2B2BB22B222B2"
    )
        port map (
      I0 => data2(2),
      I1 => write_pending_reg(2),
      I2 => data2(1),
      I3 => write_pending_reg(1),
      I4 => write_pending_reg(0),
      I5 => data2(0),
      O => write_pending_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_sd_cmd_if is
  port (
    \axi_awaddr_reg[4]\ : out STD_LOGIC;
    crc_error_last : out STD_LOGIC;
    S_AXI_WVALID_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt_next : out STD_LOGIC;
    set_write_no_cmd_index : out STD_LOGIC;
    \data_buf_reg[47]_0\ : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \axi_awaddr_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_strb_next : out STD_LOGIC;
    read_ready_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sd_cmd : inout STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    write_strb : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cmd_tx_ctrl : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_buf_reg[47]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_buf_reg[45]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \write_byte_cnt_reg[0]\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    sd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_sd_cmd_if : entity is "sd_cmd_if";
end adapter_axi_sd_0_0_sd_cmd_if;

architecture STRUCTURE of adapter_axi_sd_0_0_sd_cmd_if is
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal T0 : STD_LOGIC;
  signal \^axi_awaddr_reg[4]\ : STD_LOGIC;
  signal bits_left : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bits_left[3]_i_2_n_0\ : STD_LOGIC;
  signal \bits_left[3]_i_3_n_0\ : STD_LOGIC;
  signal \bits_left[4]_i_2_n_0\ : STD_LOGIC;
  signal \bits_left[5]_i_2_n_0\ : STD_LOGIC;
  signal \bits_left[5]_i_3_n_0\ : STD_LOGIC;
  signal \bits_left[5]_i_4_n_0\ : STD_LOGIC;
  signal \bits_left[6]_i_2_n_0\ : STD_LOGIC;
  signal \bits_left[7]_i_2_n_0\ : STD_LOGIC;
  signal \bits_left[7]_i_3_n_0\ : STD_LOGIC;
  signal \bits_left[7]_i_4_n_0\ : STD_LOGIC;
  signal \bits_left[7]_i_5_n_0\ : STD_LOGIC;
  signal bits_left_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bits_left_reg_n_0_[5]\ : STD_LOGIC;
  signal \bits_left_reg_n_0_[6]\ : STD_LOGIC;
  signal \bits_left_reg_n_0_[7]\ : STD_LOGIC;
  signal crc_error_last0 : STD_LOGIC;
  signal \data_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[32]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[33]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[34]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[35]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[36]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[37]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[38]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[39]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[39]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[40]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[40]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[41]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[41]_i_3_n_0\ : STD_LOGIC;
  signal \data_buf[42]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[42]_i_3_n_0\ : STD_LOGIC;
  signal \data_buf[43]_i_3_n_0\ : STD_LOGIC;
  signal \data_buf[44]_i_3_n_0\ : STD_LOGIC;
  signal \data_buf[45]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[45]_i_4_n_0\ : STD_LOGIC;
  signal \data_buf[46]_i_2_n_0\ : STD_LOGIC;
  signal \data_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal \^data_buf_reg[47]_0\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal interrupt_i_4_n_0 : STD_LOGIC;
  signal line_crc_n_10 : STD_LOGIC;
  signal line_crc_n_11 : STD_LOGIC;
  signal line_crc_n_12 : STD_LOGIC;
  signal line_crc_n_13 : STD_LOGIC;
  signal line_crc_n_14 : STD_LOGIC;
  signal line_crc_n_2 : STD_LOGIC;
  signal line_crc_n_3 : STD_LOGIC;
  signal line_crc_n_4 : STD_LOGIC;
  signal line_crc_n_5 : STD_LOGIC;
  signal line_crc_n_6 : STD_LOGIC;
  signal line_crc_n_7 : STD_LOGIC;
  signal line_crc_n_8 : STD_LOGIC;
  signal line_crc_n_9 : STD_LOGIC;
  signal out_en : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal read_ready_next : STD_LOGIC;
  signal ready_new : STD_LOGIC;
  signal sd_clk_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sd_cmd_i : STD_LOGIC;
  signal since_read_done : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \since_read_done[0]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[1]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[2]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[3]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[4]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[5]_i_1_n_0\ : STD_LOGIC;
  signal \since_read_done[5]_i_2_n_0\ : STD_LOGIC;
  signal \since_read_done[5]_i_3_n_0\ : STD_LOGIC;
  signal \since_read_done[5]_i_5_n_0\ : STD_LOGIC;
  signal since_read_done_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal to_next_state : STD_LOGIC;
  signal write_crc : STD_LOGIC;
  signal write_crc_i_1_n_0 : STD_LOGIC;
  signal write_crc_i_2_n_0 : STD_LOGIC;
  signal write_data_ack : STD_LOGIC;
  signal write_data_ack_i_1_n_0 : STD_LOGIC;
  signal write_pending : STD_LOGIC;
  signal write_pending_i_4_n_0 : STD_LOGIC;
  signal write_pending_next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bits_left[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bits_left[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bits_left[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_buf[39]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_buf[40]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_buf[41]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_buf[42]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_buf[43]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_buf[44]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_buf[45]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_buf[45]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of interrupt_i_4 : label is "soft_lutpair1";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of io_buf_cmd : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of io_buf_cmd_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of io_buf_cmd_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \last_received[47]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of read_ready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \since_read_done[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \since_read_done[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \since_read_done[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \since_read_done[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \since_read_done[5]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[0]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[1]_i_1__0\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "state_idle:0001,state_writing:1000,state_before_writing:0100,state_reading:0010";
  attribute SOFT_HLUTNM of \to_write[31]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of write_no_cmd_index_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of write_pending_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of write_strb_i_1 : label is "soft_lutpair13";
begin
  S_AXI_WVALID_0 <= \^s_axi_wvalid_0\;
  \axi_awaddr_reg[4]\ <= \^axi_awaddr_reg[4]\;
  \data_buf_reg[47]_0\(47 downto 0) <= \^data_buf_reg[47]_0\(47 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3505"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => Q(1),
      I3 => interrupt_i_4_n_0,
      O => D(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => interrupt_i_4_n_0,
      I1 => cmd_tx_ctrl(1),
      I2 => write_data_ack,
      I3 => Q(1),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      O => E(0)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC0FA00"
    )
        port map (
      I0 => interrupt_i_4_n_0,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => Q(1),
      I4 => Q(0),
      O => D(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFC005C"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => ready_new,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777077"
    )
        port map (
      I0 => \since_read_done[5]_i_5_n_0\,
      I1 => since_read_done(5),
      I2 => sd_clk_d(1),
      I3 => sd_clk_d(0),
      I4 => p_0_in(0),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\bits_left[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAFE"
    )
        port map (
      I0 => \bits_left[5]_i_4_n_0\,
      I1 => out_en,
      I2 => \state__0\(1),
      I3 => bits_left(0),
      I4 => \state__0\(2),
      O => bits_left_next(0)
    );
\bits_left[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF844"
    )
        port map (
      I0 => bits_left(0),
      I1 => \bits_left[7]_i_3_n_0\,
      I2 => \state__0\(2),
      I3 => bits_left(1),
      I4 => \bits_left[5]_i_4_n_0\,
      O => bits_left_next(1)
    );
\bits_left[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE01010"
    )
        port map (
      I0 => bits_left(0),
      I1 => bits_left(1),
      I2 => \bits_left[7]_i_3_n_0\,
      I3 => \state__0\(2),
      I4 => bits_left(2),
      I5 => \bits_left[5]_i_4_n_0\,
      O => bits_left_next(2)
    );
\bits_left[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF90FFFFFFFF"
    )
        port map (
      I0 => bits_left(3),
      I1 => \bits_left[3]_i_2_n_0\,
      I2 => \bits_left[7]_i_3_n_0\,
      I3 => \bits_left[5]_i_4_n_0\,
      I4 => \bits_left[3]_i_3_n_0\,
      I5 => line_crc_n_9,
      O => bits_left_next(3)
    );
\bits_left[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bits_left(2),
      I1 => bits_left(0),
      I2 => bits_left(1),
      O => \bits_left[3]_i_2_n_0\
    );
\bits_left[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888888888888"
    )
        port map (
      I0 => bits_left(3),
      I1 => \state__0\(2),
      I2 => write_strb,
      I3 => write_pending,
      I4 => \state__0\(0),
      I5 => data2(3),
      O => \bits_left[3]_i_3_n_0\
    );
\bits_left[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \bits_left[4]_i_2_n_0\,
      I1 => \bits_left[7]_i_3_n_0\,
      I2 => data2(4),
      I3 => \bits_left[6]_i_2_n_0\,
      I4 => \state__0\(2),
      I5 => bits_left(4),
      O => bits_left_next(4)
    );
\bits_left[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => bits_left(4),
      I1 => bits_left(2),
      I2 => bits_left(0),
      I3 => bits_left(1),
      I4 => bits_left(3),
      O => \bits_left[4]_i_2_n_0\
    );
\bits_left[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF90"
    )
        port map (
      I0 => \bits_left_reg_n_0_[5]\,
      I1 => \bits_left[5]_i_2_n_0\,
      I2 => \bits_left[7]_i_3_n_0\,
      I3 => \bits_left[5]_i_3_n_0\,
      I4 => \bits_left[5]_i_4_n_0\,
      O => bits_left_next(5)
    );
\bits_left[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bits_left(4),
      I1 => bits_left(3),
      I2 => bits_left(1),
      I3 => bits_left(0),
      I4 => bits_left(2),
      O => \bits_left[5]_i_2_n_0\
    );
\bits_left[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888888888888"
    )
        port map (
      I0 => \bits_left_reg_n_0_[5]\,
      I1 => \state__0\(2),
      I2 => write_strb,
      I3 => write_pending,
      I4 => \state__0\(0),
      I5 => data2(5),
      O => \bits_left[5]_i_3_n_0\
    );
\bits_left[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sd_clk_d(1),
      I1 => sd_clk_d(0),
      I2 => p_0_in(0),
      I3 => \state__0\(0),
      O => \bits_left[5]_i_4_n_0\
    );
\bits_left[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F488F888F8"
    )
        port map (
      I0 => \bits_left[7]_i_2_n_0\,
      I1 => \bits_left[7]_i_3_n_0\,
      I2 => data2(6),
      I3 => \bits_left[6]_i_2_n_0\,
      I4 => \state__0\(2),
      I5 => \bits_left_reg_n_0_[6]\,
      O => bits_left_next(6)
    );
\bits_left[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111F11FFFFFFFF"
    )
        port map (
      I0 => write_pending,
      I1 => write_strb,
      I2 => p_0_in(0),
      I3 => sd_clk_d(0),
      I4 => sd_clk_d(1),
      I5 => \state__0\(0),
      O => \bits_left[6]_i_2_n_0\
    );
\bits_left[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB0FF40FF40"
    )
        port map (
      I0 => \bits_left_reg_n_0_[6]\,
      I1 => \bits_left[7]_i_2_n_0\,
      I2 => \bits_left[7]_i_3_n_0\,
      I3 => \bits_left[7]_i_4_n_0\,
      I4 => \state__0\(2),
      I5 => \bits_left_reg_n_0_[7]\,
      O => bits_left_next(7)
    );
\bits_left[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \bits_left_reg_n_0_[5]\,
      I1 => bits_left(2),
      I2 => bits_left(0),
      I3 => bits_left(1),
      I4 => bits_left(3),
      I5 => bits_left(4),
      O => \bits_left[7]_i_2_n_0\
    );
\bits_left[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => out_en,
      I1 => \bits_left[7]_i_5_n_0\,
      I2 => line_crc_n_12,
      I3 => \state__0\(1),
      O => \bits_left[7]_i_3_n_0\
    );
\bits_left[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => data2(7),
      I1 => \state__0\(0),
      I2 => line_crc_n_14,
      I3 => write_strb,
      I4 => write_pending,
      O => \bits_left[7]_i_4_n_0\
    );
\bits_left[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bits_left_reg_n_0_[6]\,
      I1 => \bits_left_reg_n_0_[7]\,
      I2 => \bits_left_reg_n_0_[5]\,
      I3 => bits_left(2),
      O => \bits_left[7]_i_5_n_0\
    );
\bits_left_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(0),
      Q => bits_left(0),
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(1),
      Q => bits_left(1),
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(2),
      Q => bits_left(2),
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(3),
      Q => bits_left(3),
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(4),
      Q => bits_left(4),
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(5),
      Q => \bits_left_reg_n_0_[5]\,
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(6),
      Q => \bits_left_reg_n_0_[6]\,
      R => \^axi_awaddr_reg[4]\
    );
\bits_left_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => bits_left_next(7),
      Q => \bits_left_reg_n_0_[7]\,
      R => \^axi_awaddr_reg[4]\
    );
crc_error_last_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => crc_error_last0,
      Q => crc_error_last,
      S => \^axi_awaddr_reg[4]\
    );
\data_buf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => p_0_in(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(0),
      O => \data_buf[0]_i_1_n_0\
    );
\data_buf[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(9),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(10),
      O => \data_buf[10]_i_1_n_0\
    );
\data_buf[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(10),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(11),
      O => \data_buf[11]_i_1_n_0\
    );
\data_buf[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(11),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(12),
      O => \data_buf[12]_i_1_n_0\
    );
\data_buf[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(12),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(13),
      O => \data_buf[13]_i_1_n_0\
    );
\data_buf[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(13),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(14),
      O => \data_buf[14]_i_1_n_0\
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(14),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(15),
      O => \data_buf[15]_i_1_n_0\
    );
\data_buf[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(16),
      I1 => \state__0\(2),
      I2 => \^data_buf_reg[47]_0\(15),
      I3 => \state__0\(1),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(0),
      O => \data_buf[16]_i_1_n_0\
    );
\data_buf[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(17),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(16),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(1),
      O => \data_buf[17]_i_1_n_0\
    );
\data_buf[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(18),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(17),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(2),
      O => \data_buf[18]_i_1_n_0\
    );
\data_buf[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(19),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(18),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(3),
      O => \data_buf[19]_i_1_n_0\
    );
\data_buf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(0),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(1),
      O => \data_buf[1]_i_1_n_0\
    );
\data_buf[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(20),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(19),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(4),
      O => \data_buf[20]_i_1_n_0\
    );
\data_buf[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(21),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(20),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(5),
      O => \data_buf[21]_i_1_n_0\
    );
\data_buf[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(22),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(21),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(6),
      O => \data_buf[22]_i_1_n_0\
    );
\data_buf[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(23),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(22),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(7),
      O => \data_buf[23]_i_1_n_0\
    );
\data_buf[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(24),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(23),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(8),
      O => \data_buf[24]_i_1_n_0\
    );
\data_buf[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(25),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(24),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(9),
      O => \data_buf[25]_i_1_n_0\
    );
\data_buf[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(26),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(25),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(10),
      O => \data_buf[26]_i_1_n_0\
    );
\data_buf[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(27),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(26),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(11),
      O => \data_buf[27]_i_1_n_0\
    );
\data_buf[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(28),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(27),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(12),
      O => \data_buf[28]_i_1_n_0\
    );
\data_buf[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(29),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(28),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(13),
      O => \data_buf[29]_i_1_n_0\
    );
\data_buf[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(1),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(2),
      O => \data_buf[2]_i_1_n_0\
    );
\data_buf[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(30),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(29),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(14),
      O => \data_buf[30]_i_1_n_0\
    );
\data_buf[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(31),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(30),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(15),
      O => \data_buf[31]_i_1_n_0\
    );
\data_buf[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(32),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(31),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(16),
      O => \data_buf[32]_i_1_n_0\
    );
\data_buf[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(33),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(32),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(17),
      O => \data_buf[33]_i_1_n_0\
    );
\data_buf[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(34),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(33),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(18),
      O => \data_buf[34]_i_1_n_0\
    );
\data_buf[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(35),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(34),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(19),
      O => \data_buf[35]_i_1_n_0\
    );
\data_buf[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(36),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(35),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(20),
      O => \data_buf[36]_i_1_n_0\
    );
\data_buf[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(37),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(36),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(21),
      O => \data_buf[37]_i_1_n_0\
    );
\data_buf[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(38),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(37),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(22),
      O => \data_buf[38]_i_1_n_0\
    );
\data_buf[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(39),
      I1 => \state__0\(2),
      I2 => \data_buf[39]_i_2_n_0\,
      I3 => \^data_buf_reg[47]_0\(38),
      I4 => line_crc_n_10,
      I5 => \data_buf_reg[47]_1\(23),
      O => \data_buf[39]_i_1_n_0\
    );
\data_buf[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_buf[45]_i_2_n_0\,
      I1 => \state__0\(1),
      O => \data_buf[39]_i_2_n_0\
    );
\data_buf[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(2),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(3),
      O => \data_buf[3]_i_1_n_0\
    );
\data_buf[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F707F7F7F707070"
    )
        port map (
      I0 => line_crc_n_9,
      I1 => \data_buf[40]_i_2_n_0\,
      I2 => line_crc_n_10,
      I3 => \data_buf_reg[47]_1\(24),
      I4 => cmd_tx_ctrl(1),
      I5 => \data_buf_reg[45]_0\(0),
      O => \data_buf[40]_i_1_n_0\
    );
\data_buf[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00077777"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(40),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => out_en,
      I4 => \^data_buf_reg[47]_0\(39),
      O => \data_buf[40]_i_2_n_0\
    );
\data_buf[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF8888"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \^data_buf_reg[47]_0\(41),
      I2 => \state__0\(1),
      I3 => \data_buf[45]_i_2_n_0\,
      I4 => \^data_buf_reg[47]_0\(40),
      O => \data_buf[41]_i_2_n_0\
    );
\data_buf[41]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buf_reg[47]_1\(25),
      I1 => cmd_tx_ctrl(1),
      I2 => \data_buf_reg[45]_0\(1),
      O => \data_buf[41]_i_3_n_0\
    );
\data_buf[42]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FF8888"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \^data_buf_reg[47]_0\(42),
      I2 => \state__0\(1),
      I3 => \data_buf[45]_i_2_n_0\,
      I4 => \^data_buf_reg[47]_0\(41),
      O => \data_buf[42]_i_2_n_0\
    );
\data_buf[42]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buf_reg[47]_1\(26),
      I1 => cmd_tx_ctrl(1),
      I2 => \data_buf_reg[45]_0\(2),
      O => \data_buf[42]_i_3_n_0\
    );
\data_buf[43]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buf_reg[47]_1\(27),
      I1 => cmd_tx_ctrl(1),
      I2 => \data_buf_reg[45]_0\(3),
      O => \data_buf[43]_i_3_n_0\
    );
\data_buf[44]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buf_reg[47]_1\(28),
      I1 => cmd_tx_ctrl(1),
      I2 => \data_buf_reg[45]_0\(4),
      O => \data_buf[44]_i_3_n_0\
    );
\data_buf[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => line_crc_n_11,
      I1 => write_crc,
      I2 => out_en,
      O => \data_buf[45]_i_2_n_0\
    );
\data_buf[45]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buf_reg[47]_1\(29),
      I1 => cmd_tx_ctrl(1),
      I2 => \data_buf_reg[45]_0\(5),
      O => \data_buf[45]_i_4_n_0\
    );
\data_buf[46]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFC0C0"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \^data_buf_reg[47]_0\(46),
      I3 => \data_buf[45]_i_2_n_0\,
      I4 => \^data_buf_reg[47]_0\(45),
      O => \data_buf[46]_i_2_n_0\
    );
\data_buf[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(3),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(4),
      O => \data_buf[4]_i_1_n_0\
    );
\data_buf[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(4),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(5),
      O => \data_buf[5]_i_1_n_0\
    );
\data_buf[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(5),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(6),
      O => \data_buf[6]_i_1_n_0\
    );
\data_buf[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(6),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(7),
      O => \data_buf[7]_i_1_n_0\
    );
\data_buf[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(7),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(8),
      O => \data_buf[8]_i_1_n_0\
    );
\data_buf[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => line_crc_n_10,
      I1 => \state__0\(1),
      I2 => \^data_buf_reg[47]_0\(8),
      I3 => \state__0\(2),
      I4 => \^data_buf_reg[47]_0\(9),
      O => \data_buf[9]_i_1_n_0\
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[0]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(0),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[10]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(10),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[11]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(11),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[12]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(12),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[13]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(13),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[14]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(14),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[15]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(15),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[16]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(16),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[17]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(17),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[18]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(18),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[19]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(19),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[1]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(1),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[20]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(20),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[21]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(21),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[22]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(22),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[23]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(23),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[24]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(24),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[25]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(25),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[26]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(26),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[27]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(27),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[28]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(28),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[29]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(29),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[2]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(2),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[30]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(30),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[31]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(31),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[32]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(32),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[33]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(33),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[34]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(34),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[35]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(35),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[36]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(36),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[37]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(37),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[38]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(38),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[39]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(39),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[3]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(3),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[40]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(40),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_8,
      Q => \^data_buf_reg[47]_0\(41),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_7,
      Q => \^data_buf_reg[47]_0\(42),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_6,
      Q => \^data_buf_reg[47]_0\(43),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_5,
      Q => \^data_buf_reg[47]_0\(44),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_4,
      Q => \^data_buf_reg[47]_0\(45),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_3,
      Q => \^data_buf_reg[47]_0\(46),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => line_crc_n_2,
      Q => \^data_buf_reg[47]_0\(47),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[4]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(4),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[5]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(5),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[6]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(6),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[7]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(7),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[8]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(8),
      R => \^axi_awaddr_reg[4]\
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => \data_buf[9]_i_1_n_0\,
      Q => \^data_buf_reg[47]_0\(9),
      R => \^axi_awaddr_reg[4]\
    );
interrupt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080FF80008000"
    )
        port map (
      I0 => interrupt_i_4_n_0,
      I1 => write_data_ack,
      I2 => cmd_tx_ctrl(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => ready_new,
      O => interrupt_next
    );
interrupt_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bits_left_next(7),
      I1 => bits_left_next(5),
      I2 => bits_left_next(6),
      O => interrupt_i_4_n_0
    );
io_buf_cmd: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I0,
      IO => sd_cmd,
      O => sd_cmd_i,
      T => T0
    );
io_buf_cmd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \^data_buf_reg[47]_0\(47),
      I1 => line_crc_n_11,
      I2 => out_en,
      I3 => write_crc,
      O => I0
    );
io_buf_cmd_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_en,
      O => T0
    );
\last_received[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ready_new,
      I1 => Q(0),
      I2 => Q(1),
      O => read_ready_reg_0(0)
    );
line_crc: entity work.adapter_axi_sd_0_0_line_crc
     port map (
      D(6) => line_crc_n_2,
      D(5) => line_crc_n_3,
      D(4) => line_crc_n_4,
      D(3) => line_crc_n_5,
      D(2) => line_crc_n_6,
      D(1) => line_crc_n_7,
      D(0) => line_crc_n_8,
      Q(3) => out_en,
      Q(2 downto 0) => \state__0\(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA(0) => S_AXI_WDATA(0),
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WVALID_0 => \^s_axi_wvalid_0\,
      axi_awaddr(2 downto 0) => axi_awaddr(2 downto 0),
      \axi_awaddr_reg[4]\ => \^axi_awaddr_reg[4]\,
      \bits_left_reg[1]\ => line_crc_n_12,
      \bits_left_reg[2]\ => line_crc_n_11,
      cmd_tx_ctrl(0) => cmd_tx_ctrl(1),
      crc_error_last0 => crc_error_last0,
      \crc_reg[0]_0\(1 downto 0) => sd_clk_d(1 downto 0),
      data2(2 downto 0) => data2(2 downto 0),
      \data_buf[47]_i_2_0\(5 downto 0) => \^data_buf_reg[47]_0\(47 downto 42),
      \data_buf_reg[41]\ => \data_buf[41]_i_2_n_0\,
      \data_buf_reg[41]_0\ => \data_buf[41]_i_3_n_0\,
      \data_buf_reg[42]\ => \data_buf[42]_i_2_n_0\,
      \data_buf_reg[42]_0\ => \data_buf[42]_i_3_n_0\,
      \data_buf_reg[43]\ => \data_buf[43]_i_3_n_0\,
      \data_buf_reg[44]\ => \data_buf[44]_i_3_n_0\,
      \data_buf_reg[45]\ => \data_buf[45]_i_2_n_0\,
      \data_buf_reg[45]_0\ => \data_buf[45]_i_4_n_0\,
      \data_buf_reg[46]\ => \data_buf[46]_i_2_n_0\,
      \data_buf_reg[47]\(1 downto 0) => \data_buf_reg[47]_1\(31 downto 30),
      p_0_in(0) => p_0_in(0),
      read_ready_reg(7) => \bits_left_reg_n_0_[7]\,
      read_ready_reg(6) => \bits_left_reg_n_0_[6]\,
      read_ready_reg(5) => \bits_left_reg_n_0_[5]\,
      read_ready_reg(4 downto 0) => bits_left(4 downto 0),
      sd_cmd_d_reg => line_crc_n_14,
      \since_read_done_reg[4]\ => line_crc_n_13,
      \state_reg[0]\ => line_crc_n_10,
      \state_reg[0]_0\ => \state_reg[0]_1\,
      \state_reg[0]_1\ => \state_reg[0]_2\,
      \state_reg[3]\ => line_crc_n_9,
      write_crc => write_crc,
      write_pending => write_pending,
      write_pending_reg(5 downto 0) => since_read_done(5 downto 0),
      write_strb => write_strb
    );
read_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => line_crc_n_11,
      O => read_ready_next
    );
read_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => read_ready_next,
      Q => ready_new,
      R => \^axi_awaddr_reg[4]\
    );
\sd_clk_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_clk,
      Q => sd_clk_d(0),
      S => \^axi_awaddr_reg[4]\
    );
\sd_clk_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_clk_d(0),
      Q => sd_clk_d(1),
      S => \^axi_awaddr_reg[4]\
    );
sd_cmd_d_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sd_cmd_i,
      Q => p_0_in(0),
      S => \^axi_awaddr_reg[4]\
    );
\since_read_done[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => since_read_done_0,
      I1 => since_read_done(0),
      O => \since_read_done[0]_i_1_n_0\
    );
\since_read_done[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => since_read_done(1),
      I1 => since_read_done(0),
      I2 => since_read_done_0,
      O => \since_read_done[1]_i_1_n_0\
    );
\since_read_done[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF78"
    )
        port map (
      I0 => since_read_done(1),
      I1 => since_read_done(0),
      I2 => since_read_done(2),
      I3 => since_read_done_0,
      O => \since_read_done[2]_i_1_n_0\
    );
\since_read_done[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7F80"
    )
        port map (
      I0 => since_read_done(2),
      I1 => since_read_done(0),
      I2 => since_read_done(1),
      I3 => since_read_done(3),
      I4 => since_read_done_0,
      O => \since_read_done[3]_i_1_n_0\
    );
\since_read_done[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => since_read_done(4),
      I1 => since_read_done(3),
      I2 => since_read_done(1),
      I3 => since_read_done(0),
      I4 => since_read_done(2),
      I5 => since_read_done_0,
      O => \since_read_done[4]_i_1_n_0\
    );
\since_read_done[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => \state__0\(0),
      O => \since_read_done[5]_i_1_n_0\
    );
\since_read_done[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sd_clk_d(0),
      I1 => sd_clk_d(1),
      I2 => since_read_done_0,
      O => \since_read_done[5]_i_2_n_0\
    );
\since_read_done[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66E6"
    )
        port map (
      I0 => since_read_done(5),
      I1 => \since_read_done[5]_i_5_n_0\,
      I2 => sd_clk_d(1),
      I3 => sd_clk_d(0),
      O => \since_read_done[5]_i_3_n_0\
    );
\since_read_done[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sd_clk_d(0),
      I1 => sd_clk_d(1),
      I2 => \since_read_done[5]_i_5_n_0\,
      I3 => since_read_done(5),
      O => since_read_done_0
    );
\since_read_done[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => since_read_done(4),
      I1 => since_read_done(3),
      I2 => since_read_done(1),
      I3 => since_read_done(0),
      I4 => since_read_done(2),
      O => \since_read_done[5]_i_5_n_0\
    );
\since_read_done_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[0]_i_1_n_0\,
      Q => since_read_done(0),
      R => \since_read_done[5]_i_1_n_0\
    );
\since_read_done_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[1]_i_1_n_0\,
      Q => since_read_done(1),
      R => \since_read_done[5]_i_1_n_0\
    );
\since_read_done_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[2]_i_1_n_0\,
      Q => since_read_done(2),
      R => \since_read_done[5]_i_1_n_0\
    );
\since_read_done_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[3]_i_1_n_0\,
      Q => since_read_done(3),
      R => \since_read_done[5]_i_1_n_0\
    );
\since_read_done_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[4]_i_1_n_0\,
      Q => since_read_done(4),
      R => \since_read_done[5]_i_1_n_0\
    );
\since_read_done_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \since_read_done[5]_i_2_n_0\,
      D => \since_read_done[5]_i_3_n_0\,
      Q => since_read_done(5),
      R => \since_read_done[5]_i_1_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD11"
    )
        port map (
      I0 => \state_reg[1]_0\(0),
      I1 => \state_reg[1]_0\(1),
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \state_reg[0]_0\(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state__0\(1),
      I1 => out_en,
      O => \state_next__0\(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => sd_clk_d(1),
      I1 => sd_clk_d(0),
      I2 => p_0_in(0),
      I3 => out_en,
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \state_next__0\(1)
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFAC000"
    )
        port map (
      I0 => interrupt_i_4_n_0,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \state_reg[1]_0\(0),
      I4 => \state_reg[1]_0\(1),
      O => \state_reg[0]_0\(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FB"
    )
        port map (
      I0 => sd_clk_d(1),
      I1 => sd_clk_d(0),
      I2 => p_0_in(0),
      I3 => out_en,
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \state_next__0\(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF240000FF24FF24"
    )
        port map (
      I0 => \state__0\(1),
      I1 => sd_clk_d(1),
      I2 => sd_clk_d(0),
      I3 => \state__0\(0),
      I4 => \state[3]_i_2_n_0\,
      I5 => \state[3]_i_3_n_0\,
      O => state
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFEFFFEFE"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \bits_left[5]_i_4_n_0\,
      I3 => write_crc,
      I4 => out_en,
      I5 => line_crc_n_11,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBF"
    )
        port map (
      I0 => line_crc_n_13,
      I1 => \state__0\(0),
      I2 => write_pending,
      I3 => write_strb,
      O => \state[3]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => state,
      D => \state_next__0\(0),
      Q => \state__0\(0),
      S => \^axi_awaddr_reg[4]\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state,
      D => \state_next__0\(1),
      Q => \state__0\(1),
      R => \^axi_awaddr_reg[4]\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state,
      D => \state_next__0\(2),
      Q => \state__0\(2),
      R => \^axi_awaddr_reg[4]\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state,
      D => \state__0\(2),
      Q => out_en,
      R => \^axi_awaddr_reg[4]\
    );
\to_write[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => Q(1),
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state_reg[0]\(0)
    );
write_crc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => out_en,
      I2 => cmd_tx_ctrl(0),
      I3 => write_pending_i_4_n_0,
      I4 => write_crc_i_2_n_0,
      I5 => write_crc,
      O => write_crc_i_1_n_0
    );
write_crc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEE00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => line_crc_n_11,
      I3 => write_crc,
      I4 => \state__0\(2),
      I5 => to_next_state,
      O => write_crc_i_2_n_0
    );
write_crc_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => write_crc_i_1_n_0,
      Q => write_crc,
      R => \^axi_awaddr_reg[4]\
    );
write_data_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044544544"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => \state__0\(0),
      I2 => sd_clk_d(0),
      I3 => sd_clk_d(1),
      I4 => \state__0\(1),
      I5 => line_crc_n_10,
      O => write_data_ack_i_1_n_0
    );
write_data_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => write_data_ack_i_1_n_0,
      Q => write_data_ack,
      R => '0'
    );
\write_delay[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \write_byte_cnt_reg[0]\,
      I2 => axi_awaddr(1),
      I3 => axi_awaddr(2),
      I4 => \^s_axi_wvalid_0\,
      I5 => axi_awaddr(0),
      O => \axi_awaddr_reg[3]\(0)
    );
write_no_cmd_index_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => bits_left_next(6),
      I1 => bits_left_next(5),
      I2 => bits_left_next(7),
      I3 => Q(1),
      I4 => write_data_ack,
      O => set_write_no_cmd_index
    );
write_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEBA"
    )
        port map (
      I0 => \state__0\(0),
      I1 => sd_clk_d(0),
      I2 => sd_clk_d(1),
      I3 => \state__0\(1),
      O => to_next_state
    );
write_pending_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => line_crc_n_13,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => out_en,
      I4 => write_pending_i_4_n_0,
      O => write_pending_next
    );
write_pending_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040404FF"
    )
        port map (
      I0 => sd_clk_d(1),
      I1 => sd_clk_d(0),
      I2 => p_0_in(0),
      I3 => write_strb,
      I4 => write_pending,
      O => write_pending_i_4_n_0
    );
write_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => to_next_state,
      D => write_pending_next,
      Q => write_pending,
      R => \^axi_awaddr_reg[4]\
    );
write_strb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => Q(1),
      I3 => Q(0),
      O => write_strb_next
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_sd_if_controller_cmd is
  port (
    \axi_awaddr_reg[4]\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    S_AXI_WVALID_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \last_received_reg[33]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sd_cmd : inout STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dat3_pullup_disabled : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_sd_if_controller_cmd : entity is "sd_if_controller_cmd";
end adapter_axi_sd_0_0_sd_if_controller_cmd;

architecture STRUCTURE of adapter_axi_sd_0_0_sd_if_controller_cmd is
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal \^axi_awaddr_reg[4]\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal cmd_if_n_11 : STD_LOGIC;
  signal cmd_if_n_12 : STD_LOGIC;
  signal cmd_if_n_13 : STD_LOGIC;
  signal cmd_if_n_14 : STD_LOGIC;
  signal cmd_if_n_15 : STD_LOGIC;
  signal cmd_if_n_16 : STD_LOGIC;
  signal cmd_if_n_17 : STD_LOGIC;
  signal cmd_if_n_18 : STD_LOGIC;
  signal cmd_if_n_19 : STD_LOGIC;
  signal cmd_if_n_20 : STD_LOGIC;
  signal cmd_if_n_21 : STD_LOGIC;
  signal cmd_if_n_22 : STD_LOGIC;
  signal cmd_if_n_23 : STD_LOGIC;
  signal cmd_if_n_24 : STD_LOGIC;
  signal cmd_if_n_25 : STD_LOGIC;
  signal cmd_if_n_26 : STD_LOGIC;
  signal cmd_if_n_27 : STD_LOGIC;
  signal cmd_if_n_28 : STD_LOGIC;
  signal cmd_if_n_29 : STD_LOGIC;
  signal cmd_if_n_30 : STD_LOGIC;
  signal cmd_if_n_31 : STD_LOGIC;
  signal cmd_if_n_32 : STD_LOGIC;
  signal cmd_if_n_33 : STD_LOGIC;
  signal cmd_if_n_34 : STD_LOGIC;
  signal cmd_if_n_35 : STD_LOGIC;
  signal cmd_if_n_36 : STD_LOGIC;
  signal cmd_if_n_37 : STD_LOGIC;
  signal cmd_if_n_38 : STD_LOGIC;
  signal cmd_if_n_39 : STD_LOGIC;
  signal cmd_if_n_40 : STD_LOGIC;
  signal cmd_if_n_41 : STD_LOGIC;
  signal cmd_if_n_42 : STD_LOGIC;
  signal cmd_if_n_43 : STD_LOGIC;
  signal cmd_if_n_44 : STD_LOGIC;
  signal cmd_if_n_45 : STD_LOGIC;
  signal cmd_if_n_46 : STD_LOGIC;
  signal cmd_if_n_47 : STD_LOGIC;
  signal cmd_if_n_48 : STD_LOGIC;
  signal cmd_if_n_49 : STD_LOGIC;
  signal cmd_if_n_5 : STD_LOGIC;
  signal cmd_if_n_50 : STD_LOGIC;
  signal cmd_if_n_51 : STD_LOGIC;
  signal cmd_if_n_52 : STD_LOGIC;
  signal cmd_if_n_53 : STD_LOGIC;
  signal cmd_if_n_54 : STD_LOGIC;
  signal cmd_if_n_55 : STD_LOGIC;
  signal cmd_if_n_56 : STD_LOGIC;
  signal cmd_if_n_57 : STD_LOGIC;
  signal cmd_if_n_6 : STD_LOGIC;
  signal cmd_status : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal cmd_tx_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal crc_err : STD_LOGIC;
  signal crc_error_last : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal data_new : STD_LOGIC_VECTOR ( 47 to 47 );
  signal interrupt_next : STD_LOGIC;
  signal \last_received_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[40]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[41]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[42]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[43]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[44]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[45]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[46]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[47]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[4]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[5]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[6]\ : STD_LOGIC;
  signal \last_received_reg_n_0_[7]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal set_write_no_cmd_index : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_next : STD_LOGIC;
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal to_write : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal update_last_received : STD_LOGIC;
  signal update_write_data : STD_LOGIC;
  signal update_write_status : STD_LOGIC;
  signal write_delay0 : STD_LOGIC;
  signal \write_delay[2]_i_3_n_0\ : STD_LOGIC;
  signal write_no_cmd_index_i_1_n_0 : STD_LOGIC;
  signal write_strb : STD_LOGIC;
  signal write_strb_next : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_cmd_received:01,state_writing_buf_full:10,state_idle:00,state_writing_buf_not_full:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_cmd_received:01,state_writing_buf_full:10,state_idle:00,state_writing_buf_not_full:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_1\ : label is "soft_lutpair17";
begin
  S_AXI_WVALID_0 <= \^s_axi_wvalid_0\;
  \axi_awaddr_reg[4]\ <= \^axi_awaddr_reg[4]\;
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => \^s_axi_wvalid_0\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state_next,
      D => \state_next__0\(0),
      Q => state(0),
      R => \^axi_awaddr_reg[4]\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state_next,
      D => \state_next__0\(1),
      Q => state(1),
      R => \^axi_awaddr_reg[4]\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(0),
      I4 => \axi_rdata[0]_i_2_n_0\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3202303032020000"
    )
        port map (
      I0 => data1(0),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => cmd_tx_ctrl(0),
      I4 => sel0(1),
      I5 => \last_received_reg_n_0_[40]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(10),
      I4 => \axi_rdata[10]_i_2_n_0\,
      O => D(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => data1(10),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \last_received_reg_n_0_[2]\,
      I4 => sel0(1),
      I5 => data2(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(11),
      I4 => \axi_rdata[11]_i_2_n_0\,
      O => D(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => data1(11),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \last_received_reg_n_0_[3]\,
      I4 => sel0(1),
      I5 => data2(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(12),
      I4 => \axi_rdata[12]_i_2_n_0\,
      O => D(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCA000000CA0"
    )
        port map (
      I0 => data1(12),
      I1 => \last_received_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => data2(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(13),
      I1 => \last_received_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(14),
      I1 => \last_received_reg_n_0_[6]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(15),
      I1 => \last_received_reg_n_0_[7]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05004040"
    )
        port map (
      I0 => sel0(2),
      I1 => cmd_status(16),
      I2 => sel0(0),
      I3 => data1(16),
      I4 => sel0(1),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05004040"
    )
        port map (
      I0 => sel0(2),
      I1 => cmd_status(17),
      I2 => sel0(0),
      I3 => data1(17),
      I4 => sel0(1),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(18),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11004040"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => crc_err,
      I3 => data1(19),
      I4 => sel0(1),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(1),
      I4 => \axi_rdata[1]_i_2_n_0\,
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0C0E00020C0200"
    )
        port map (
      I0 => data1(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \last_received_reg_n_0_[41]\,
      I5 => cmd_tx_ctrl(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11004040"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => CO(0),
      I3 => data1(20),
      I4 => sel0(1),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(21),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(22),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(23),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11004040"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => dat3_pullup_disabled,
      I3 => data1(24),
      I4 => sel0(1),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(25),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(26),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(27),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(28),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(29),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(2),
      I4 => \axi_rdata[2]_i_2_n_0\,
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020C0C0E020000"
    )
        port map (
      I0 => data1(2),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => data2(2),
      I4 => sel0(1),
      I5 => \last_received_reg_n_0_[42]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(30),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data1(31),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(3),
      I4 => \axi_rdata[3]_i_2_n_0\,
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0C0E00020C0200"
    )
        port map (
      I0 => data1(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \last_received_reg_n_0_[43]\,
      I5 => data2(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(4),
      I4 => \axi_rdata[4]_i_2_n_0\,
      O => D(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0C0E00020C0200"
    )
        port map (
      I0 => data1(4),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \last_received_reg_n_0_[44]\,
      I5 => data2(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(5),
      I1 => \last_received_reg_n_0_[45]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(6),
      I1 => \last_received_reg_n_0_[46]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C00A0000C00A0"
    )
        port map (
      I0 => data1(7),
      I1 => \last_received_reg_n_0_[47]\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => Q(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(8),
      I4 => \axi_rdata[8]_i_2_n_0\,
      O => D(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => data1(8),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \last_received_reg_n_0_[0]\,
      I4 => sel0(1),
      I5 => data2(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(9),
      I4 => \axi_rdata[9]_i_2_n_0\,
      O => D(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3202303032020000"
    )
        port map (
      I0 => data1(9),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => data2(9),
      I4 => sel0(1),
      I5 => \last_received_reg_n_0_[1]\,
      O => \axi_rdata[9]_i_2_n_0\
    );
cmd_if: entity work.adapter_axi_sd_0_0_sd_cmd_if
     port map (
      D(1 downto 0) => \state_next__0\(1 downto 0),
      E(0) => state_next,
      \FSM_sequential_state_reg[0]\(0) => update_write_data,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[1]_i_5_n_0\,
      Q(1 downto 0) => state(1 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA(0) => S_AXI_WDATA(0),
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WVALID_0 => \^s_axi_wvalid_0\,
      axi_awaddr(2 downto 0) => axi_awaddr(2 downto 0),
      \axi_awaddr_reg[3]\(0) => update_write_status,
      \axi_awaddr_reg[4]\ => \^axi_awaddr_reg[4]\,
      cmd_tx_ctrl(1 downto 0) => cmd_tx_ctrl(1 downto 0),
      crc_error_last => crc_error_last,
      data2(7 downto 3) => data2(12 downto 8),
      data2(2 downto 0) => data2(4 downto 2),
      \data_buf_reg[45]_0\(5) => \last_received_reg_n_0_[45]\,
      \data_buf_reg[45]_0\(4) => \last_received_reg_n_0_[44]\,
      \data_buf_reg[45]_0\(3) => \last_received_reg_n_0_[43]\,
      \data_buf_reg[45]_0\(2) => \last_received_reg_n_0_[42]\,
      \data_buf_reg[45]_0\(1) => \last_received_reg_n_0_[41]\,
      \data_buf_reg[45]_0\(0) => \last_received_reg_n_0_[40]\,
      \data_buf_reg[47]_0\(47) => data_new(47),
      \data_buf_reg[47]_0\(46) => cmd_if_n_11,
      \data_buf_reg[47]_0\(45) => cmd_if_n_12,
      \data_buf_reg[47]_0\(44) => cmd_if_n_13,
      \data_buf_reg[47]_0\(43) => cmd_if_n_14,
      \data_buf_reg[47]_0\(42) => cmd_if_n_15,
      \data_buf_reg[47]_0\(41) => cmd_if_n_16,
      \data_buf_reg[47]_0\(40) => cmd_if_n_17,
      \data_buf_reg[47]_0\(39) => cmd_if_n_18,
      \data_buf_reg[47]_0\(38) => cmd_if_n_19,
      \data_buf_reg[47]_0\(37) => cmd_if_n_20,
      \data_buf_reg[47]_0\(36) => cmd_if_n_21,
      \data_buf_reg[47]_0\(35) => cmd_if_n_22,
      \data_buf_reg[47]_0\(34) => cmd_if_n_23,
      \data_buf_reg[47]_0\(33) => cmd_if_n_24,
      \data_buf_reg[47]_0\(32) => cmd_if_n_25,
      \data_buf_reg[47]_0\(31) => cmd_if_n_26,
      \data_buf_reg[47]_0\(30) => cmd_if_n_27,
      \data_buf_reg[47]_0\(29) => cmd_if_n_28,
      \data_buf_reg[47]_0\(28) => cmd_if_n_29,
      \data_buf_reg[47]_0\(27) => cmd_if_n_30,
      \data_buf_reg[47]_0\(26) => cmd_if_n_31,
      \data_buf_reg[47]_0\(25) => cmd_if_n_32,
      \data_buf_reg[47]_0\(24) => cmd_if_n_33,
      \data_buf_reg[47]_0\(23) => cmd_if_n_34,
      \data_buf_reg[47]_0\(22) => cmd_if_n_35,
      \data_buf_reg[47]_0\(21) => cmd_if_n_36,
      \data_buf_reg[47]_0\(20) => cmd_if_n_37,
      \data_buf_reg[47]_0\(19) => cmd_if_n_38,
      \data_buf_reg[47]_0\(18) => cmd_if_n_39,
      \data_buf_reg[47]_0\(17) => cmd_if_n_40,
      \data_buf_reg[47]_0\(16) => cmd_if_n_41,
      \data_buf_reg[47]_0\(15) => cmd_if_n_42,
      \data_buf_reg[47]_0\(14) => cmd_if_n_43,
      \data_buf_reg[47]_0\(13) => cmd_if_n_44,
      \data_buf_reg[47]_0\(12) => cmd_if_n_45,
      \data_buf_reg[47]_0\(11) => cmd_if_n_46,
      \data_buf_reg[47]_0\(10) => cmd_if_n_47,
      \data_buf_reg[47]_0\(9) => cmd_if_n_48,
      \data_buf_reg[47]_0\(8) => cmd_if_n_49,
      \data_buf_reg[47]_0\(7) => cmd_if_n_50,
      \data_buf_reg[47]_0\(6) => cmd_if_n_51,
      \data_buf_reg[47]_0\(5) => cmd_if_n_52,
      \data_buf_reg[47]_0\(4) => cmd_if_n_53,
      \data_buf_reg[47]_0\(3) => cmd_if_n_54,
      \data_buf_reg[47]_0\(2) => cmd_if_n_55,
      \data_buf_reg[47]_0\(1) => cmd_if_n_56,
      \data_buf_reg[47]_0\(0) => cmd_if_n_57,
      \data_buf_reg[47]_1\(31 downto 24) => to_write(31 downto 24),
      \data_buf_reg[47]_1\(23 downto 0) => p_2_out(23 downto 0),
      interrupt_next => interrupt_next,
      read_ready_reg_0(0) => update_last_received,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      set_write_no_cmd_index => set_write_no_cmd_index,
      \state_reg[0]_0\(1) => cmd_if_n_5,
      \state_reg[0]_0\(0) => cmd_if_n_6,
      \state_reg[0]_1\ => \state_reg[0]_0\,
      \state_reg[0]_2\ => \state_reg[0]_1\,
      \state_reg[1]_0\(1 downto 0) => cmd_status(17 downto 16),
      \write_byte_cnt_reg[0]\ => \write_delay[2]_i_3_n_0\,
      write_strb => write_strb,
      write_strb_next => write_strb_next
    );
crc_err_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => crc_error_last,
      Q => crc_err,
      R => \^axi_awaddr_reg[4]\
    );
interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => interrupt_next,
      Q => interrupt,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_57,
      Q => \last_received_reg_n_0_[0]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_47,
      Q => data1(2),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_46,
      Q => data1(3),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_45,
      Q => data1(4),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_44,
      Q => data1(5),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_43,
      Q => data1(6),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_42,
      Q => data1(7),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_41,
      Q => data1(8),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_40,
      Q => data1(9),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_39,
      Q => data1(10),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_38,
      Q => data1(11),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_56,
      Q => \last_received_reg_n_0_[1]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_37,
      Q => data1(12),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_36,
      Q => data1(13),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_35,
      Q => data1(14),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_34,
      Q => data1(15),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_33,
      Q => data1(16),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_32,
      Q => data1(17),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_31,
      Q => data1(18),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_30,
      Q => data1(19),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_29,
      Q => data1(20),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_28,
      Q => data1(21),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_55,
      Q => \last_received_reg_n_0_[2]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_27,
      Q => data1(22),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_26,
      Q => data1(23),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_25,
      Q => data1(24),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_24,
      Q => data1(25),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_23,
      Q => data1(26),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_22,
      Q => data1(27),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_21,
      Q => data1(28),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_20,
      Q => data1(29),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_19,
      Q => data1(30),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_18,
      Q => data1(31),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_54,
      Q => \last_received_reg_n_0_[3]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_17,
      Q => \last_received_reg_n_0_[40]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_16,
      Q => \last_received_reg_n_0_[41]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_15,
      Q => \last_received_reg_n_0_[42]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_14,
      Q => \last_received_reg_n_0_[43]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_13,
      Q => \last_received_reg_n_0_[44]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_12,
      Q => \last_received_reg_n_0_[45]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_11,
      Q => \last_received_reg_n_0_[46]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => data_new(47),
      Q => \last_received_reg_n_0_[47]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_53,
      Q => \last_received_reg_n_0_[4]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_52,
      Q => \last_received_reg_n_0_[5]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_51,
      Q => \last_received_reg_n_0_[6]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_50,
      Q => \last_received_reg_n_0_[7]\,
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_49,
      Q => data1(0),
      R => \^axi_awaddr_reg[4]\
    );
\last_received_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_last_received,
      D => cmd_if_n_48,
      Q => data1(1),
      R => \^axi_awaddr_reg[4]\
    );
\rca_mismatch_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(15),
      I1 => data1(31),
      O => S(1)
    );
\rca_mismatch_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data1(30),
      I1 => Q(14),
      I2 => data1(28),
      I3 => Q(12),
      I4 => Q(13),
      I5 => data1(29),
      O => S(0)
    );
rca_mismatch_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data1(25),
      I1 => Q(9),
      I2 => data1(26),
      I3 => Q(10),
      I4 => Q(11),
      I5 => data1(27),
      O => \last_received_reg[33]_0\(3)
    );
rca_mismatch_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data1(22),
      I1 => Q(6),
      I2 => data1(23),
      I3 => Q(7),
      I4 => Q(8),
      I5 => data1(24),
      O => \last_received_reg[33]_0\(2)
    );
rca_mismatch_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data1(19),
      I1 => Q(3),
      I2 => data1(20),
      I3 => Q(4),
      I4 => Q(5),
      I5 => data1(21),
      O => \last_received_reg[33]_0\(1)
    );
rca_mismatch_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data1(16),
      I1 => Q(0),
      I2 => data1(17),
      I3 => Q(1),
      I4 => Q(2),
      I5 => data1(18),
      O => \last_received_reg[33]_0\(0)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state_next,
      D => cmd_if_n_6,
      Q => cmd_status(16),
      R => \^axi_awaddr_reg[4]\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => state_next,
      D => cmd_if_n_5,
      Q => cmd_status(17),
      R => \^axi_awaddr_reg[4]\
    );
\to_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(0),
      Q => p_2_out(0),
      R => write_delay0
    );
\to_write_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(10),
      Q => p_2_out(10),
      R => write_delay0
    );
\to_write_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(11),
      Q => p_2_out(11),
      R => write_delay0
    );
\to_write_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(12),
      Q => p_2_out(12),
      R => write_delay0
    );
\to_write_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(13),
      Q => p_2_out(13),
      R => write_delay0
    );
\to_write_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(14),
      Q => p_2_out(14),
      R => write_delay0
    );
\to_write_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(15),
      Q => p_2_out(15),
      R => write_delay0
    );
\to_write_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(16),
      Q => p_2_out(16),
      R => write_delay0
    );
\to_write_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(17),
      Q => p_2_out(17),
      R => write_delay0
    );
\to_write_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(18),
      Q => p_2_out(18),
      R => write_delay0
    );
\to_write_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(19),
      Q => p_2_out(19),
      R => write_delay0
    );
\to_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(1),
      Q => p_2_out(1),
      R => write_delay0
    );
\to_write_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(20),
      Q => p_2_out(20),
      R => write_delay0
    );
\to_write_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(21),
      Q => p_2_out(21),
      R => write_delay0
    );
\to_write_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(22),
      Q => p_2_out(22),
      R => write_delay0
    );
\to_write_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(23),
      Q => p_2_out(23),
      R => write_delay0
    );
\to_write_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(24),
      Q => to_write(24),
      R => write_delay0
    );
\to_write_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(25),
      Q => to_write(25),
      R => write_delay0
    );
\to_write_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(26),
      Q => to_write(26),
      R => write_delay0
    );
\to_write_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(27),
      Q => to_write(27),
      R => write_delay0
    );
\to_write_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(28),
      Q => to_write(28),
      R => write_delay0
    );
\to_write_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(29),
      Q => to_write(29),
      R => write_delay0
    );
\to_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(2),
      Q => p_2_out(2),
      R => write_delay0
    );
\to_write_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(30),
      Q => to_write(30),
      R => write_delay0
    );
\to_write_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(31),
      Q => to_write(31),
      R => write_delay0
    );
\to_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(3),
      Q => p_2_out(3),
      R => write_delay0
    );
\to_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(4),
      Q => p_2_out(4),
      R => write_delay0
    );
\to_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(5),
      Q => p_2_out(5),
      R => write_delay0
    );
\to_write_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(6),
      Q => p_2_out(6),
      R => write_delay0
    );
\to_write_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(7),
      Q => p_2_out(7),
      R => write_delay0
    );
\to_write_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(8),
      Q => p_2_out(8),
      R => write_delay0
    );
\to_write_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_data,
      D => S_AXI_WDATA(9),
      Q => p_2_out(9),
      R => write_delay0
    );
\write_byte_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(8),
      Q => data2(8),
      S => write_delay0
    );
\write_byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(9),
      Q => data2(9),
      R => write_delay0
    );
\write_byte_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(10),
      Q => data2(10),
      S => write_delay0
    );
\write_byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(11),
      Q => data2(11),
      R => write_delay0
    );
\write_byte_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(12),
      Q => data2(12),
      R => write_delay0
    );
\write_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => state(0),
      I2 => state(1),
      O => write_delay0
    );
\write_delay[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \write_delay[2]_i_3_n_0\
    );
\write_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(2),
      Q => data2(2),
      R => write_delay0
    );
\write_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(3),
      Q => data2(3),
      S => write_delay0
    );
\write_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(4),
      Q => data2(4),
      R => write_delay0
    );
write_no_cmd_index_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FECE"
    )
        port map (
      I0 => cmd_tx_ctrl(1),
      I1 => set_write_no_cmd_index,
      I2 => update_write_status,
      I3 => S_AXI_WDATA(1),
      I4 => write_delay0,
      O => write_no_cmd_index_i_1_n_0
    );
write_no_cmd_index_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => write_no_cmd_index_i_1_n_0,
      Q => cmd_tx_ctrl(1),
      R => '0'
    );
write_no_crc_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => update_write_status,
      D => S_AXI_WDATA(0),
      Q => cmd_tx_ctrl(0),
      R => write_delay0
    );
write_strb_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => write_strb_next,
      Q => write_strb,
      R => \^axi_awaddr_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_sd_if_controller is
  port (
    sd_dat3_pullup : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sd_cmd : inout STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adapter_axi_sd_0_0_sd_if_controller : entity is "sd_if_controller";
end adapter_axi_sd_0_0_sd_if_controller;

architecture STRUCTURE of adapter_axi_sd_0_0_sd_if_controller is
  signal dat3_pullup_disabled : STD_LOGIC;
  signal dat3_pullup_disabled_i_1_n_0 : STD_LOGIC;
  signal nolabel_line59_n_0 : STD_LOGIC;
  signal nolabel_line59_n_2 : STD_LOGIC;
  signal nolabel_line59_n_3 : STD_LOGIC;
  signal nolabel_line59_n_4 : STD_LOGIC;
  signal nolabel_line59_n_5 : STD_LOGIC;
  signal nolabel_line59_n_6 : STD_LOGIC;
  signal nolabel_line59_n_7 : STD_LOGIC;
  signal nolabel_line59_n_8 : STD_LOGIC;
  signal \rca_cmp.rca_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rca_cmp.rca_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal rca_mismatch : STD_LOGIC;
  signal \rca_mismatch_carry__0_n_3\ : STD_LOGIC;
  signal rca_mismatch_carry_n_0 : STD_LOGIC;
  signal rca_mismatch_carry_n_1 : STD_LOGIC;
  signal rca_mismatch_carry_n_2 : STD_LOGIC;
  signal rca_mismatch_carry_n_3 : STD_LOGIC;
  signal NLW_rca_mismatch_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rca_mismatch_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rca_mismatch_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of buf_dat3_pullup : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of buf_dat3_pullup : label is "DONT_CARE";
begin
buf_dat3_pullup: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '1',
      O => sd_dat3_pullup,
      T => dat3_pullup_disabled
    );
dat3_pullup_disabled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => nolabel_line59_n_2,
      I4 => S_AXI_WDATA(1),
      I5 => dat3_pullup_disabled,
      O => dat3_pullup_disabled_i_1_n_0
    );
dat3_pullup_disabled_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => dat3_pullup_disabled_i_1_n_0,
      Q => dat3_pullup_disabled,
      R => nolabel_line59_n_0
    );
nolabel_line59: entity work.adapter_axi_sd_0_0_sd_if_controller_cmd
     port map (
      CO(0) => rca_mismatch,
      D(31 downto 0) => D(31 downto 0),
      Q(15 downto 0) => \rca_cmp.rca_reg\(15 downto 0),
      S(1) => nolabel_line59_n_3,
      S(0) => nolabel_line59_n_4,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WVALID_0 => nolabel_line59_n_2,
      axi_awaddr(2 downto 0) => axi_awaddr(2 downto 0),
      \axi_awaddr_reg[4]\ => nolabel_line59_n_0,
      dat3_pullup_disabled => dat3_pullup_disabled,
      interrupt => interrupt,
      \last_received_reg[33]_0\(3) => nolabel_line59_n_5,
      \last_received_reg[33]_0\(2) => nolabel_line59_n_6,
      \last_received_reg[33]_0\(1) => nolabel_line59_n_7,
      \last_received_reg[33]_0\(0) => nolabel_line59_n_8,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      sel0(2 downto 0) => sel0(2 downto 0),
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[0]_1\ => \state_reg[0]_0\
    );
\rca_cmp.rca_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(0),
      I3 => nolabel_line59_n_2,
      O => \rca_cmp.rca_reg[15]_i_1_n_0\
    );
\rca_cmp.rca_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \rca_cmp.rca_reg\(0),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \rca_cmp.rca_reg\(10),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \rca_cmp.rca_reg\(11),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \rca_cmp.rca_reg\(12),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \rca_cmp.rca_reg\(13),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \rca_cmp.rca_reg\(14),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \rca_cmp.rca_reg\(15),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \rca_cmp.rca_reg\(1),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \rca_cmp.rca_reg\(2),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \rca_cmp.rca_reg\(3),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \rca_cmp.rca_reg\(4),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \rca_cmp.rca_reg\(5),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \rca_cmp.rca_reg\(6),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \rca_cmp.rca_reg\(7),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \rca_cmp.rca_reg\(8),
      R => nolabel_line59_n_0
    );
\rca_cmp.rca_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \rca_cmp.rca_reg[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \rca_cmp.rca_reg\(9),
      R => nolabel_line59_n_0
    );
rca_mismatch_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rca_mismatch_carry_n_0,
      CO(2) => rca_mismatch_carry_n_1,
      CO(1) => rca_mismatch_carry_n_2,
      CO(0) => rca_mismatch_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_rca_mismatch_carry_O_UNCONNECTED(3 downto 0),
      S(3) => nolabel_line59_n_5,
      S(2) => nolabel_line59_n_6,
      S(1) => nolabel_line59_n_7,
      S(0) => nolabel_line59_n_8
    );
\rca_mismatch_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rca_mismatch_carry_n_0,
      CO(3 downto 2) => \NLW_rca_mismatch_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rca_mismatch,
      CO(0) => \rca_mismatch_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_rca_mismatch_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => nolabel_line59_n_3,
      S(0) => nolabel_line59_n_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adapter_axi_sd_0_0_axi_sd_v1_0_S_AXI is
  port (
    sd_dat3_pullup : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    sd_cmd : inout STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    sd_clk : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
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
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair23";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_BREADY,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => aw_en_reg_n_0,
      I5 => \^s_axi_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => \^s_axi_wready\,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(0),
      Q => S_AXI_RDATA(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(10),
      Q => S_AXI_RDATA(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(11),
      Q => S_AXI_RDATA(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(12),
      Q => S_AXI_RDATA(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(13),
      Q => S_AXI_RDATA(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(14),
      Q => S_AXI_RDATA(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(15),
      Q => S_AXI_RDATA(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(16),
      Q => S_AXI_RDATA(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(17),
      Q => S_AXI_RDATA(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(18),
      Q => S_AXI_RDATA(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(19),
      Q => S_AXI_RDATA(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(1),
      Q => S_AXI_RDATA(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(20),
      Q => S_AXI_RDATA(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(21),
      Q => S_AXI_RDATA(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(22),
      Q => S_AXI_RDATA(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(23),
      Q => S_AXI_RDATA(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(24),
      Q => S_AXI_RDATA(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(25),
      Q => S_AXI_RDATA(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(26),
      Q => S_AXI_RDATA(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(27),
      Q => S_AXI_RDATA(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(28),
      Q => S_AXI_RDATA(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(29),
      Q => S_AXI_RDATA(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(2),
      Q => S_AXI_RDATA(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(30),
      Q => S_AXI_RDATA(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(31),
      Q => S_AXI_RDATA(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(3),
      Q => S_AXI_RDATA(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(4),
      Q => S_AXI_RDATA(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(5),
      Q => S_AXI_RDATA(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(6),
      Q => S_AXI_RDATA(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(7),
      Q => S_AXI_RDATA(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(8),
      Q => S_AXI_RDATA(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => read_data(9),
      Q => S_AXI_RDATA(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
nolabel_line341: entity work.adapter_axi_sd_0_0_sd_if_controller
     port map (
      D(31 downto 0) => read_data(31 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_awaddr(2 downto 0) => axi_awaddr(4 downto 2),
      interrupt => interrupt,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      sd_dat3_pullup => sd_dat3_pullup,
      sel0(2 downto 0) => sel0(2 downto 0),
      \state_reg[0]\ => \^s_axi_awready\,
      \state_reg[0]_0\ => \^s_axi_wready\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
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
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
  attribute X_CORE_INFO of adapter_axi_sd_0_0 : entity is "axi_sd_v1_0_S_AXI,Vivado 2018.3";
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
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
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
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      interrupt => interrupt,
      sd_clk => sd_clk,
      sd_cmd => sd_cmd,
      sd_dat3_pullup => sd_dat3_pullup
    );
end STRUCTURE;
