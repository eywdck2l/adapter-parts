-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu May 28 08:23:06 2020
-- Host        : e8bdd687b03d running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/block-design/block-design.srcs/sources_1/bd/block_design/ip/block_design_reset_generator_wrap_0_0/block_design_reset_generator_wrap_0_0_sim_netlist.vhdl
-- Design      : block_design_reset_generator_wrap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf is
  port (
    bvalid_reg_0 : out STD_LOGIC;
    wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    arready : out STD_LOGIC;
    rvalid_reg_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_aresetn : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf : entity is "block_design_axi4_lite_intf";
end block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf;

architecture STRUCTURE of block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf is
  signal \^arready\ : STD_LOGIC;
  signal arready_i_1_n_0 : STD_LOGIC;
  signal awready_i_2_n_0 : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal \^bvalid_reg_0\ : STD_LOGIC;
  signal \^out_aresetn\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \raddr_saved[2]_i_1_n_0\ : STD_LOGIC;
  signal read_got_addr : STD_LOGIC;
  signal read_got_addr_next1_out : STD_LOGIC;
  signal rvalid_i_1_n_0 : STD_LOGIC;
  signal \^rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal sel00 : STD_LOGIC;
  signal \waddr_saved[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_saved_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_saved[0]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_saved_reg_n_0_[0]\ : STD_LOGIC;
  signal wr_tran_next : STD_LOGIC;
  signal wr_tran_reg_n_0 : STD_LOGIC;
  signal \^wready\ : STD_LOGIC;
  signal wready_i_1_n_0 : STD_LOGIC;
  signal write_got_addr : STD_LOGIC;
  signal write_got_addr_next4_out : STD_LOGIC;
  signal write_got_data : STD_LOGIC;
  signal write_got_data_next3_out : STD_LOGIC;
  signal \write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \wstrb_saved[0]_i_1_n_0\ : STD_LOGIC;
  signal \wstrb_saved_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of read_got_addr_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \waddr_saved[2]_i_1\ : label is "soft_lutpair1";
begin
  arready <= \^arready\;
  bvalid_reg_0 <= \^bvalid_reg_0\;
  out_aresetn(1 downto 0) <= \^out_aresetn\(1 downto 0);
  rvalid_reg_0 <= \^rvalid_reg_0\;
  s_axi_awready <= \^s_axi_awready\;
  wready <= \^wready\;
arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF15FFFF"
    )
        port map (
      I0 => read_got_addr,
      I1 => s_axi_arvalid,
      I2 => \^arready\,
      I3 => s_axi_rready,
      I4 => \^rvalid_reg_0\,
      O => arready_i_1_n_0
    );
arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arready_i_1_n_0,
      Q => \^arready\,
      R => p_1_in
    );
awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA00EAFFFFFFFF"
    )
        port map (
      I0 => write_got_data,
      I1 => s_axi_wvalid,
      I2 => \^wready\,
      I3 => \^bvalid_reg_0\,
      I4 => s_axi_bready,
      I5 => awready_i_2_n_0,
      O => p_0_in
    );
awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => write_got_addr,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => awready_i_2_n_0
    );
awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => \^s_axi_awready\,
      R => p_1_in
    );
bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB00000000000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^bvalid_reg_0\,
      I2 => \^wready\,
      I3 => s_axi_wvalid,
      I4 => write_got_data,
      I5 => awready_i_2_n_0,
      O => bvalid_i_1_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => \^bvalid_reg_0\,
      R => p_1_in
    );
\raddr_saved[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^arready\,
      I3 => sel00,
      O => \raddr_saved[2]_i_1_n_0\
    );
\raddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \raddr_saved[2]_i_1_n_0\,
      Q => sel00,
      R => p_1_in
    );
read_got_addr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222000"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => s_axi_rready,
      I2 => \^arready\,
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
      R => p_1_in
    );
rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC0FFEA"
    )
        port map (
      I0 => \^rvalid_reg_0\,
      I1 => \^arready\,
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
      R => p_1_in
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^out_aresetn\(1),
      I1 => sel00,
      I2 => \^out_aresetn\(0),
      O => s_axi_rdata(0)
    );
\waddr_saved[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => \waddr_saved_reg_n_0_[2]\,
      O => \waddr_saved[2]_i_1_n_0\
    );
\waddr_saved_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \waddr_saved[2]_i_1_n_0\,
      Q => \waddr_saved_reg_n_0_[2]\,
      R => p_1_in
    );
\wdata_saved[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^wready\,
      I2 => s_axi_wvalid,
      I3 => \wdata_saved_reg_n_0_[0]\,
      O => \wdata_saved[0]_i_1_n_0\
    );
\wdata_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_saved[0]_i_1_n_0\,
      Q => \wdata_saved_reg_n_0_[0]\,
      R => p_1_in
    );
wr_tran_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A8880000A888"
    )
        port map (
      I0 => awready_i_2_n_0,
      I1 => write_got_data,
      I2 => s_axi_wvalid,
      I3 => \^wready\,
      I4 => \^bvalid_reg_0\,
      I5 => s_axi_bready,
      O => wr_tran_next
    );
wr_tran_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_tran_next,
      Q => wr_tran_reg_n_0,
      R => p_1_in
    );
wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF07FF07070707"
    )
        port map (
      I0 => \^wready\,
      I1 => s_axi_wvalid,
      I2 => write_got_data,
      I3 => \^bvalid_reg_0\,
      I4 => s_axi_bready,
      I5 => awready_i_2_n_0,
      O => wready_i_1_n_0
    );
wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wready_i_1_n_0,
      Q => \^wready\,
      R => p_1_in
    );
write_got_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020AAAAAA"
    )
        port map (
      I0 => awready_i_2_n_0,
      I1 => s_axi_bready,
      I2 => \^bvalid_reg_0\,
      I3 => \^wready\,
      I4 => s_axi_wvalid,
      I5 => write_got_data,
      O => write_got_addr_next4_out
    );
write_got_addr_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_got_addr_next4_out,
      Q => write_got_addr,
      R => p_1_in
    );
write_got_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7575750075007500"
    )
        port map (
      I0 => awready_i_2_n_0,
      I1 => s_axi_bready,
      I2 => \^bvalid_reg_0\,
      I3 => write_got_data,
      I4 => s_axi_wvalid,
      I5 => \^wready\,
      O => write_got_data_next3_out
    );
write_got_data_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_got_data_next3_out,
      Q => write_got_data,
      R => p_1_in
    );
\write_reg[0].write_reg[0].reg_written[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[0]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => wr_tran_reg_n_0,
      I3 => \wstrb_saved_reg_n_0_[0]\,
      I4 => \^out_aresetn\(0),
      O => \write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0\
    );
\write_reg[0].write_reg[0].reg_written_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_reg[0].write_reg[0].reg_written[0][0]_i_1_n_0\,
      Q => \^out_aresetn\(0),
      R => p_1_in
    );
\write_reg[1].write_reg[0].reg_written[4][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_1_in
    );
\write_reg[1].write_reg[0].reg_written[4][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \wdata_saved_reg_n_0_[0]\,
      I1 => \waddr_saved_reg_n_0_[2]\,
      I2 => wr_tran_reg_n_0,
      I3 => \wstrb_saved_reg_n_0_[0]\,
      I4 => \^out_aresetn\(1),
      O => \write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0\
    );
\write_reg[1].write_reg[0].reg_written_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_reg[1].write_reg[0].reg_written[4][0]_i_2_n_0\,
      Q => \^out_aresetn\(1),
      R => p_1_in
    );
\wstrb_saved[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \^wready\,
      I2 => s_axi_wvalid,
      I3 => \wstrb_saved_reg_n_0_[0]\,
      O => \wstrb_saved[0]_i_1_n_0\
    );
\wstrb_saved_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_saved[0]_i_1_n_0\,
      Q => \wstrb_saved_reg_n_0_[0]\,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_reset_generator_wrap_0_0_reset_generator is
  port (
    bvalid_reg : out STD_LOGIC;
    wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    arready : out STD_LOGIC;
    rvalid_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_aresetn : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_reset_generator_wrap_0_0_reset_generator : entity is "reset_generator";
end block_design_reset_generator_wrap_0_0_reset_generator;

architecture STRUCTURE of block_design_reset_generator_wrap_0_0_reset_generator is
begin
control_intf: entity work.block_design_reset_generator_wrap_0_0_block_design_axi4_lite_intf
     port map (
      aclk => aclk,
      aresetn => aresetn,
      arready => arready,
      bvalid_reg_0 => bvalid_reg,
      out_aresetn(1 downto 0) => out_aresetn(1 downto 0),
      rvalid_reg_0 => rvalid_reg,
      s_axi_araddr(0) => s_axi_araddr(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(0) => s_axi_rdata(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      wready => wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_reset_generator_wrap_0_0_reset_generator_wrapper is
  port (
    bvalid_reg : out STD_LOGIC;
    wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    arready : out STD_LOGIC;
    rvalid_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_aresetn : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_reset_generator_wrap_0_0_reset_generator_wrapper : entity is "reset_generator_wrapper";
end block_design_reset_generator_wrap_0_0_reset_generator_wrapper;

architecture STRUCTURE of block_design_reset_generator_wrap_0_0_reset_generator_wrapper is
begin
inst: entity work.block_design_reset_generator_wrap_0_0_reset_generator
     port map (
      aclk => aclk,
      aresetn => aresetn,
      arready => arready,
      bvalid_reg => bvalid_reg,
      out_aresetn(1 downto 0) => out_aresetn(1 downto 0),
      rvalid_reg => rvalid_reg,
      s_axi_araddr(0) => s_axi_araddr(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(0) => s_axi_rdata(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      wready => wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_reset_generator_wrap_0_0 is
  port (
    out_aresetn : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_design_reset_generator_wrap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_reset_generator_wrap_0_0 : entity is "block_design_reset_generator_wrap_0_0,reset_generator_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block_design_reset_generator_wrap_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of block_design_reset_generator_wrap_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block_design_reset_generator_wrap_0_0 : entity is "reset_generator_wrapper,Vivado 2019.2";
end block_design_reset_generator_wrap_0_0;

architecture STRUCTURE of block_design_reset_generator_wrap_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of out_aresetn : signal is "xilinx.com:signal:reset:1.0 out_aresetn RST";
  attribute X_INTERFACE_PARAMETER of out_aresetn : signal is "XIL_INTERFACENAME out_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
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
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.block_design_reset_generator_wrap_0_0_reset_generator_wrapper
     port map (
      aclk => aclk,
      aresetn => aresetn,
      arready => s_axi_arready,
      bvalid_reg => s_axi_bvalid,
      out_aresetn(1 downto 0) => out_aresetn(1 downto 0),
      rvalid_reg => s_axi_rvalid,
      s_axi_araddr(0) => s_axi_araddr(2),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(0) => \^s_axi_rdata\(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      wready => s_axi_wready
    );
end STRUCTURE;
