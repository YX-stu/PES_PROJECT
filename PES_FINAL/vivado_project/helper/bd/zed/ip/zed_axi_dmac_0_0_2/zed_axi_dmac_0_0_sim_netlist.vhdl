-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
-- Date        : Tue Apr 23 18:30:20 2019
-- Host        : itiv-work1.itiv.kit.edu running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/hotfilter/lehre/dhl/vivado_project/helper/bd/zed/ip/zed_axi_dmac_0_0_2/zed_axi_dmac_0_0_sim_netlist.vhdl
-- Design      : zed_axi_dmac_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_ad_mem_asym is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rvalid : in STD_LOGIC;
    dest_valid : in STD_LOGIC;
    m_ram_reg_0 : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_ram_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_ad_mem_asym : entity is "ad_mem_asym";
end zed_axi_dmac_0_0_ad_mem_asym;

architecture STRUCTURE of zed_axi_dmac_0_0_ad_mem_asym is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_m_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m_ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of m_ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of m_ram_reg : label is "m_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of m_ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of m_ram_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of m_ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of m_ram_reg : label is 63;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of m_ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of m_ram_reg : label is 511;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of m_ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of m_ram_reg : label is 63;
begin
  E(0) <= \^e\(0);
m_ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 13) => B"111",
      ADDRARDADDR(12 downto 6) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 13) => B"111",
      ADDRBWRADDR(12 downto 6) => ADDRBWRADDR(6 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => m_axis_aclk,
      CLKBWRCLK => m_src_axi_aclk,
      DBITERR => NLW_m_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => m_src_axi_rdata(31 downto 0),
      DIBDI(31 downto 0) => m_src_axi_rdata(63 downto 32),
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => m_axis_data(31 downto 0),
      DOBDO(31 downto 0) => m_axis_data(63 downto 32),
      DOPADOP(3 downto 0) => NLW_m_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_m_ram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_m_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => \^e\(0),
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_m_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_m_ram_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => m_src_axi_rvalid,
      WEBWE(6) => m_src_axi_rvalid,
      WEBWE(5) => m_src_axi_rvalid,
      WEBWE(4) => m_src_axi_rvalid,
      WEBWE(3) => m_src_axi_rvalid,
      WEBWE(2) => m_src_axi_rvalid,
      WEBWE(1) => m_src_axi_rvalid,
      WEBWE(0) => m_src_axi_rvalid
    );
m_ram_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => dest_valid,
      I1 => m_ram_reg_0,
      I2 => m_axis_ready,
      I3 => m_ram_reg_1,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_reset_manager is
  port (
    do_enable_reg_0 : out STD_LOGIC;
    dest_address1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    needs_reset_reg_0 : out STD_LOGIC;
    do_enable_reg_1 : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_0\ : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_1\ : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_2\ : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FSM_onehot_state[5]_i_2_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_dma_req_valid : in STD_LOGIC;
    req_ready_gated : in STD_LOGIC;
    ctrl_pause : in STD_LOGIC;
    m_src_axi_rlast : in STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    \up_rdata_reg[10]\ : in STD_LOGIC;
    \up_rdata_reg[10]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_reset_manager : entity is "axi_dmac_reset_manager";
end zed_axi_dmac_0_0_axi_dmac_reset_manager;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_reset_manager is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dbg_status : STD_LOGIC_VECTOR ( 11 to 11 );
  signal do_enable0 : STD_LOGIC;
  signal \^do_enable_reg_0\ : STD_LOGIC;
  signal do_reset : STD_LOGIC;
  signal do_reset_0 : STD_LOGIC;
  signal needs_reset : STD_LOGIC;
  signal needs_reset_i_1_n_0 : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_in\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal reset_sync_chain_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_5\ : label is "soft_lutpair93";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[2]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[3]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of \src_beat_counter[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \state[0]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \up_rdata[11]_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \up_rdata[8]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \up_rdata[9]_i_3\ : label is "soft_lutpair91";
begin
  Q(0) <= \^q\(0);
  do_enable_reg_0 <= \^do_enable_reg_0\;
  \state_reg[2]_0\(2 downto 0) <= \^state_reg[2]_0\(2 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dbg_status(11),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => needs_reset,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dbg_status(11),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => ctrl_pause,
      I2 => dbg_status(11),
      I3 => do_reset_0,
      I4 => \FSM_onehot_state[5]_i_2_n_0\,
      O => state
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ctrl_pause,
      I2 => dbg_status(11),
      I3 => \FSM_onehot_state[5]_i_3_n_0\,
      I4 => \FSM_onehot_state[5]_i_4_n_0\,
      I5 => \FSM_onehot_state[5]_i_5_n_0\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[5]_i_2_0\(0),
      I2 => \FSM_onehot_state[5]_i_2_0\(1),
      I3 => \^do_enable_reg_0\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state[5]_i_2_0\(0),
      I2 => \FSM_onehot_state[5]_i_2_0\(1),
      I3 => \^do_enable_reg_0\,
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => needs_reset,
      I1 => \^q\(0),
      I2 => ctrl_enable,
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => do_reset_0,
      S => SS(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => do_reset_0,
      Q => needs_reset,
      R => SS(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SS(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SS(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SS(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => SS(0)
    );
do_enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => do_enable0
    );
do_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_enable0,
      Q => \^do_enable_reg_0\,
      R => '0'
    );
do_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_reset_0,
      Q => do_reset,
      R => '0'
    );
needs_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ctrl_enable,
      I1 => dbg_status(11),
      I2 => needs_reset,
      O => needs_reset_i_1_n_0
    );
needs_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => needs_reset_i_1_n_0,
      Q => dbg_status(11),
      R => '0'
    );
\reset_gen[0].reset_async_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[1]\,
      PRE => do_reset,
      Q => reset_sync_chain_0
    );
\reset_gen[0].reset_async_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[2]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[1]\
    );
\reset_gen[0].reset_async_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[3]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[2]\
    );
\reset_gen[0].reset_async_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => '0',
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[3]\
    );
\reset_gen[0].reset_sync_in_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => reset_sync_chain_0,
      PRE => reset_sync_chain_0,
      Q => \reset_gen[0].reset_sync_in\
    );
\reset_gen[0].reset_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
\reset_gen[0].reset_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_in\,
      Q => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      R => '0'
    );
\src_beat_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_src_axi_rlast,
      I2 => m_src_axi_rvalid,
      O => SR(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => dbg_status(11),
      I2 => \^state_reg[2]_0\(1),
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(1),
      I2 => dbg_status(11),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[0]_i_1__0_n_0\,
      Q => \^state_reg[2]_0\(0),
      R => SS(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[2]_0\(1),
      R => SS(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[2]_i_1_n_0\,
      Q => \^state_reg[2]_0\(2),
      R => SS(0)
    );
\up_rdata[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => \^q\(0),
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata_reg[10]_0\,
      I3 => m_src_axi_araddr(3),
      O => \reset_gen[0].reset_sync_reg[0]_2\
    );
\up_rdata[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => dbg_status(11),
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata_reg[10]_0\,
      I3 => m_src_axi_araddr(4),
      O => needs_reset_reg_0
    );
\up_rdata[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^do_enable_reg_0\,
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata_reg[10]_0\,
      I3 => m_src_axi_araddr(0),
      O => do_enable_reg_1
    );
\up_rdata[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => \^q\(0),
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata_reg[10]_0\,
      I3 => m_src_axi_araddr(1),
      O => \reset_gen[0].reset_sync_reg[0]_0\
    );
\up_rdata[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => \^q\(0),
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata_reg[10]_0\,
      I3 => m_src_axi_araddr(2),
      O => \reset_gen[0].reset_sync_reg[0]_1\
    );
\x_length[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => \^do_enable_reg_0\,
      I2 => req_ready_gated,
      O => dest_address1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_2d_transfer is
  port (
    up_req_eot : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    up_response_valid : out STD_LOGIC;
    req_measured_burst_length : out STD_LOGIC_VECTOR ( 0 to 0 );
    dma_req_valid : out STD_LOGIC;
    req_ready_reg_0 : out STD_LOGIC;
    dma_response_ready : out STD_LOGIC;
    req_response_valid_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_last : out STD_LOGIC;
    up_sot : out STD_LOGIC;
    \req_eot0__2\ : out STD_LOGIC;
    \x_length_reg[23]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    req_eot_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    dest_address1 : in STD_LOGIC;
    up_dma_last : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \req_measured_burst_length_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_req_valid_reg_0 : in STD_LOGIC;
    out_response_ready_reg_0 : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    \y_length_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    up_dma_req_valid : in STD_LOGIC;
    req_ready_reg_1 : in STD_LOGIC;
    \src_address_reg[28]_0\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    up_dma_cyclic : in STD_LOGIC;
    \req_ready0__0\ : in STD_LOGIC;
    dma_response_valid : in STD_LOGIC;
    \x_length_reg[23]_1\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \src_stride_reg[23]_0\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \req_id_reg[1]_0\ : in STD_LOGIC;
    \req_id_reg[1]_1\ : in STD_LOGIC;
    req_gen_ready : in STD_LOGIC;
    eot_id0 : in STD_LOGIC;
    req_id0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_2d_transfer : entity is "dmac_2d_transfer";
end zed_axi_dmac_0_0_dmac_2d_transfer;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_2d_transfer is
  signal \^d\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \cdc_sync_fifo_ram[0]_i_3_n_0\ : STD_LOGIC;
  signal \cdc_sync_fifo_ram[0]_i_4_n_0\ : STD_LOGIC;
  signal \cdc_sync_fifo_ram[0]_i_5_n_0\ : STD_LOGIC;
  signal \cdc_sync_fifo_ram[0]_i_6_n_0\ : STD_LOGIC;
  signal \^dma_req_valid\ : STD_LOGIC;
  signal \^dma_response_ready\ : STD_LOGIC;
  signal eot_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \eot_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \eot_id[1]_i_1_n_0\ : STD_LOGIC;
  signal gen_last : STD_LOGIC;
  signal \last_req[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_req[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_req[2]_i_1_n_0\ : STD_LOGIC;
  signal \last_req[3]_i_1_n_0\ : STD_LOGIC;
  signal \last_req_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_req_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_req_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_req_reg_n_0_[3]\ : STD_LOGIC;
  signal \^out_last\ : STD_LOGIC;
  signal req_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \req_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \req_id[1]_i_1_n_0\ : STD_LOGIC;
  signal req_ready_i_1_n_0 : STD_LOGIC;
  signal \^req_ready_reg_0\ : STD_LOGIC;
  signal req_response_valid_i_1_n_0 : STD_LOGIC;
  signal \src_address[11]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_7_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_8_n_0\ : STD_LOGIC;
  signal \src_address[11]_i_9_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_7_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_8_n_0\ : STD_LOGIC;
  signal \src_address[15]_i_9_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_7_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_8_n_0\ : STD_LOGIC;
  signal \src_address[19]_i_9_n_0\ : STD_LOGIC;
  signal \src_address[23]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[23]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[23]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[23]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[23]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[27]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[27]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_7_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_8_n_0\ : STD_LOGIC;
  signal \src_address[3]_i_9_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_2_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_3_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_4_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_5_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_6_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_7_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_8_n_0\ : STD_LOGIC;
  signal \src_address[7]_i_9_n_0\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \src_address_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal src_stride : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal \^up_response_valid\ : STD_LOGIC;
  signal y_length : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal y_length0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \y_length0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_length0_carry__0_n_0\ : STD_LOGIC;
  signal \y_length0_carry__0_n_1\ : STD_LOGIC;
  signal \y_length0_carry__0_n_2\ : STD_LOGIC;
  signal \y_length0_carry__0_n_3\ : STD_LOGIC;
  signal \y_length0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y_length0_carry__1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__1_n_1\ : STD_LOGIC;
  signal \y_length0_carry__1_n_2\ : STD_LOGIC;
  signal \y_length0_carry__1_n_3\ : STD_LOGIC;
  signal \y_length0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y_length0_carry__2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__2_n_1\ : STD_LOGIC;
  signal \y_length0_carry__2_n_2\ : STD_LOGIC;
  signal \y_length0_carry__2_n_3\ : STD_LOGIC;
  signal \y_length0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \y_length0_carry__3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__3_n_1\ : STD_LOGIC;
  signal \y_length0_carry__3_n_2\ : STD_LOGIC;
  signal \y_length0_carry__3_n_3\ : STD_LOGIC;
  signal \y_length0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \y_length0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \y_length0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \y_length0_carry__4_n_2\ : STD_LOGIC;
  signal \y_length0_carry__4_n_3\ : STD_LOGIC;
  signal y_length0_carry_i_1_n_0 : STD_LOGIC;
  signal y_length0_carry_i_2_n_0 : STD_LOGIC;
  signal y_length0_carry_i_3_n_0 : STD_LOGIC;
  signal y_length0_carry_i_4_n_0 : STD_LOGIC;
  signal y_length0_carry_n_0 : STD_LOGIC;
  signal y_length0_carry_n_1 : STD_LOGIC;
  signal y_length0_carry_n_2 : STD_LOGIC;
  signal y_length0_carry_n_3 : STD_LOGIC;
  signal \y_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[10]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[11]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[12]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[13]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[14]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[15]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[16]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[17]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[18]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[19]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[20]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[21]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[22]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[23]_i_2_n_0\ : STD_LOGIC;
  signal \y_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_length[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_src_address_reg[27]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_src_address_reg[27]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_length0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_length0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \eot_id[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \eot_id[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of req_ready_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of req_response_valid_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \up_irq_source[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \up_measured_transfer_length[31]_i_2\ : label is "soft_lutpair46";
begin
  D(30 downto 0) <= \^d\(30 downto 0);
  dma_req_valid <= \^dma_req_valid\;
  dma_response_ready <= \^dma_response_ready\;
  out_last <= \^out_last\;
  req_ready_reg_0 <= \^req_ready_reg_0\;
  up_response_valid <= \^up_response_valid\;
\cdc_sync_fifo_ram[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out_last\,
      I1 => gen_last,
      O => \^d\(0)
    );
\cdc_sync_fifo_ram[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \cdc_sync_fifo_ram[0]_i_3_n_0\,
      I1 => \cdc_sync_fifo_ram[0]_i_4_n_0\,
      I2 => \cdc_sync_fifo_ram[0]_i_5_n_0\,
      I3 => \cdc_sync_fifo_ram[0]_i_6_n_0\,
      O => \^out_last\
    );
\cdc_sync_fifo_ram[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => y_length(14),
      I1 => y_length(12),
      I2 => y_length(13),
      I3 => y_length(17),
      I4 => y_length(15),
      I5 => y_length(16),
      O => \cdc_sync_fifo_ram[0]_i_3_n_0\
    );
\cdc_sync_fifo_ram[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => y_length(22),
      I1 => y_length(21),
      I2 => y_length(23),
      I3 => y_length(18),
      I4 => y_length(19),
      I5 => y_length(20),
      O => \cdc_sync_fifo_ram[0]_i_4_n_0\
    );
\cdc_sync_fifo_ram[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => y_length(11),
      I1 => y_length(9),
      I2 => y_length(10),
      I3 => y_length(6),
      I4 => y_length(7),
      I5 => y_length(8),
      O => \cdc_sync_fifo_ram[0]_i_5_n_0\
    );
\cdc_sync_fifo_ram[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => y_length(5),
      I1 => y_length(3),
      I2 => y_length(4),
      I3 => y_length(0),
      I4 => y_length(1),
      I5 => y_length(2),
      O => \cdc_sync_fifo_ram[0]_i_6_n_0\
    );
\eot_id[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => eot_id0,
      I1 => eot_id(0),
      O => \eot_id[0]_i_1_n_0\
    );
\eot_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => eot_id(0),
      I1 => eot_id0,
      I2 => eot_id(1),
      O => \eot_id[1]_i_1_n_0\
    );
\eot_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eot_id[0]_i_1_n_0\,
      Q => eot_id(0),
      R => Q(0)
    );
\eot_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eot_id[1]_i_1_n_0\,
      Q => eot_id(1),
      R => Q(0)
    );
gen_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => up_dma_last,
      Q => gen_last,
      R => '0'
    );
\last_req[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \^out_last\,
      I1 => req_id0,
      I2 => req_id(0),
      I3 => req_id(1),
      I4 => \last_req_reg_n_0_[0]\,
      O => \last_req[0]_i_1_n_0\
    );
\last_req[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => \^out_last\,
      I1 => req_id0,
      I2 => req_id(1),
      I3 => req_id(0),
      I4 => \last_req_reg_n_0_[1]\,
      O => \last_req[1]_i_1_n_0\
    );
\last_req[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => \^out_last\,
      I1 => req_id0,
      I2 => req_id(0),
      I3 => req_id(1),
      I4 => \last_req_reg_n_0_[2]\,
      O => \last_req[2]_i_1_n_0\
    );
\last_req[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^out_last\,
      I1 => req_id0,
      I2 => req_id(0),
      I3 => req_id(1),
      I4 => \last_req_reg_n_0_[3]\,
      O => \last_req[3]_i_1_n_0\
    );
\last_req_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \last_req[0]_i_1_n_0\,
      Q => \last_req_reg_n_0_[0]\,
      R => '0'
    );
\last_req_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \last_req[1]_i_1_n_0\,
      Q => \last_req_reg_n_0_[1]\,
      R => '0'
    );
\last_req_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \last_req[2]_i_1_n_0\,
      Q => \last_req_reg_n_0_[2]\,
      R => '0'
    );
\last_req_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \last_req[3]_i_1_n_0\,
      Q => \last_req_reg_n_0_[3]\,
      R => '0'
    );
out_req_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => out_req_valid_reg_0,
      Q => \^dma_req_valid\,
      R => Q(0)
    );
out_response_ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => out_response_ready_reg_0,
      Q => \^dma_response_ready\,
      S => Q(0)
    );
req_eot_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_req_reg_n_0_[3]\,
      I1 => \last_req_reg_n_0_[2]\,
      I2 => eot_id(1),
      I3 => \last_req_reg_n_0_[1]\,
      I4 => eot_id(0),
      I5 => \last_req_reg_n_0_[0]\,
      O => \req_eot0__2\
    );
req_eot_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => req_eot_reg_0,
      Q => up_req_eot,
      R => '0'
    );
\req_id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF78008"
    )
        port map (
      I0 => \^dma_req_valid\,
      I1 => req_gen_ready,
      I2 => \req_id_reg[1]_1\,
      I3 => \req_id_reg[1]_0\,
      I4 => req_id(0),
      O => \req_id[0]_i_1_n_0\
    );
\req_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DFFFFFF82000000"
    )
        port map (
      I0 => req_id(0),
      I1 => \req_id_reg[1]_0\,
      I2 => \req_id_reg[1]_1\,
      I3 => req_gen_ready,
      I4 => \^dma_req_valid\,
      I5 => req_id(1),
      O => \req_id[1]_i_1_n_0\
    );
\req_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_id[0]_i_1_n_0\,
      Q => req_id(0),
      R => Q(0)
    );
\req_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_id[1]_i_1_n_0\,
      Q => req_id(1),
      R => Q(0)
    );
\req_measured_burst_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_measured_burst_length_reg[0]_0\,
      Q => req_measured_burst_length(0),
      R => '0'
    );
req_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F2A"
    )
        port map (
      I0 => \^req_ready_reg_0\,
      I1 => req_ready_reg_1,
      I2 => up_dma_req_valid,
      I3 => \req_ready0__0\,
      O => req_ready_i_1_n_0
    );
req_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => req_ready_i_1_n_0,
      Q => \^req_ready_reg_0\,
      S => Q(0)
    );
req_response_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^up_response_valid\,
      I1 => up_response_ready,
      I2 => dma_response_valid,
      I3 => \^dma_response_ready\,
      O => req_response_valid_i_1_n_0
    );
req_response_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => req_response_valid_i_1_n_0,
      Q => \^up_response_valid\,
      R => '0'
    );
\src_address[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(14),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[11]_i_2_n_0\
    );
\src_address[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(13),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[11]_i_3_n_0\
    );
\src_address[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(12),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[11]_i_4_n_0\
    );
\src_address[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(11),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[11]_i_5_n_0\
    );
\src_address[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(14),
      I1 => \^d\(16),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(11),
      O => \src_address[11]_i_6_n_0\
    );
\src_address[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(13),
      I1 => \^d\(15),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(10),
      O => \src_address[11]_i_7_n_0\
    );
\src_address[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(12),
      I1 => \^d\(14),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(9),
      O => \src_address[11]_i_8_n_0\
    );
\src_address[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(11),
      I1 => \^d\(13),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(8),
      O => \src_address[11]_i_9_n_0\
    );
\src_address[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(18),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[15]_i_2_n_0\
    );
\src_address[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(17),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[15]_i_3_n_0\
    );
\src_address[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(16),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[15]_i_4_n_0\
    );
\src_address[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(15),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[15]_i_5_n_0\
    );
\src_address[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(18),
      I1 => \^d\(20),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(15),
      O => \src_address[15]_i_6_n_0\
    );
\src_address[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(17),
      I1 => \^d\(19),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(14),
      O => \src_address[15]_i_7_n_0\
    );
\src_address[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(16),
      I1 => \^d\(18),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(13),
      O => \src_address[15]_i_8_n_0\
    );
\src_address[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(15),
      I1 => \^d\(17),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(12),
      O => \src_address[15]_i_9_n_0\
    );
\src_address[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(22),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[19]_i_2_n_0\
    );
\src_address[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(21),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[19]_i_3_n_0\
    );
\src_address[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(20),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[19]_i_4_n_0\
    );
\src_address[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(19),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[19]_i_5_n_0\
    );
\src_address[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(22),
      I1 => \^d\(24),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(19),
      O => \src_address[19]_i_6_n_0\
    );
\src_address[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(21),
      I1 => \^d\(23),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(18),
      O => \src_address[19]_i_7_n_0\
    );
\src_address[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(20),
      I1 => \^d\(22),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(17),
      O => \src_address[19]_i_8_n_0\
    );
\src_address[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(19),
      I1 => \^d\(21),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(16),
      O => \src_address[19]_i_9_n_0\
    );
\src_address[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(23),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[23]_i_2_n_0\
    );
\src_address[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \src_address_reg[28]_0\(23),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => \^d\(28),
      O => \src_address[23]_i_3_n_0\
    );
\src_address[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \src_address_reg[28]_0\(22),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => \^d\(27),
      O => \src_address[23]_i_4_n_0\
    );
\src_address[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \src_address_reg[28]_0\(21),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => \^d\(26),
      O => \src_address[23]_i_5_n_0\
    );
\src_address[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(23),
      I1 => \^d\(25),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(20),
      O => \src_address[23]_i_6_n_0\
    );
\src_address[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \src_address_reg[28]_0\(25),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => \^d\(30),
      O => \src_address[27]_i_2_n_0\
    );
\src_address[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \src_address_reg[28]_0\(24),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => \^d\(29),
      O => \src_address[27]_i_3_n_0\
    );
\src_address[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(6),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[3]_i_2_n_0\
    );
\src_address[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(5),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[3]_i_3_n_0\
    );
\src_address[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(4),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[3]_i_4_n_0\
    );
\src_address[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(3),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[3]_i_5_n_0\
    );
\src_address[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(6),
      I1 => \^d\(8),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(3),
      O => \src_address[3]_i_6_n_0\
    );
\src_address[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(5),
      I1 => \^d\(7),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(2),
      O => \src_address[3]_i_7_n_0\
    );
\src_address[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(4),
      I1 => \^d\(6),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(1),
      O => \src_address[3]_i_8_n_0\
    );
\src_address[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(3),
      I1 => \^d\(5),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(0),
      O => \src_address[3]_i_9_n_0\
    );
\src_address[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(10),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[7]_i_2_n_0\
    );
\src_address[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(9),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[7]_i_3_n_0\
    );
\src_address[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(8),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[7]_i_4_n_0\
    );
\src_address[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => src_stride(7),
      I1 => \^req_ready_reg_0\,
      I2 => req_ready_reg_1,
      I3 => up_dma_req_valid,
      O => \src_address[7]_i_5_n_0\
    );
\src_address[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(10),
      I1 => \^d\(12),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(7),
      O => \src_address[7]_i_6_n_0\
    );
\src_address[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(9),
      I1 => \^d\(11),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(6),
      O => \src_address[7]_i_7_n_0\
    );
\src_address[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(8),
      I1 => \^d\(10),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(5),
      O => \src_address[7]_i_8_n_0\
    );
\src_address[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666666606666666"
    )
        port map (
      I0 => src_stride(7),
      I1 => \^d\(9),
      I2 => \^req_ready_reg_0\,
      I3 => req_ready_reg_1,
      I4 => up_dma_req_valid,
      I5 => \src_address_reg[28]_0\(4),
      O => \src_address[7]_i_9_n_0\
    );
\src_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[7]_i_1_n_4\,
      Q => \^d\(12),
      R => '0'
    );
\src_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[11]_i_1_n_7\,
      Q => \^d\(13),
      R => '0'
    );
\src_address_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[7]_i_1_n_0\,
      CO(3) => \src_address_reg[11]_i_1_n_0\,
      CO(2) => \src_address_reg[11]_i_1_n_1\,
      CO(1) => \src_address_reg[11]_i_1_n_2\,
      CO(0) => \src_address_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \src_address[11]_i_2_n_0\,
      DI(2) => \src_address[11]_i_3_n_0\,
      DI(1) => \src_address[11]_i_4_n_0\,
      DI(0) => \src_address[11]_i_5_n_0\,
      O(3) => \src_address_reg[11]_i_1_n_4\,
      O(2) => \src_address_reg[11]_i_1_n_5\,
      O(1) => \src_address_reg[11]_i_1_n_6\,
      O(0) => \src_address_reg[11]_i_1_n_7\,
      S(3) => \src_address[11]_i_6_n_0\,
      S(2) => \src_address[11]_i_7_n_0\,
      S(1) => \src_address[11]_i_8_n_0\,
      S(0) => \src_address[11]_i_9_n_0\
    );
\src_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[11]_i_1_n_6\,
      Q => \^d\(14),
      R => '0'
    );
\src_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[11]_i_1_n_5\,
      Q => \^d\(15),
      R => '0'
    );
\src_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[11]_i_1_n_4\,
      Q => \^d\(16),
      R => '0'
    );
\src_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[15]_i_1_n_7\,
      Q => \^d\(17),
      R => '0'
    );
\src_address_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[11]_i_1_n_0\,
      CO(3) => \src_address_reg[15]_i_1_n_0\,
      CO(2) => \src_address_reg[15]_i_1_n_1\,
      CO(1) => \src_address_reg[15]_i_1_n_2\,
      CO(0) => \src_address_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \src_address[15]_i_2_n_0\,
      DI(2) => \src_address[15]_i_3_n_0\,
      DI(1) => \src_address[15]_i_4_n_0\,
      DI(0) => \src_address[15]_i_5_n_0\,
      O(3) => \src_address_reg[15]_i_1_n_4\,
      O(2) => \src_address_reg[15]_i_1_n_5\,
      O(1) => \src_address_reg[15]_i_1_n_6\,
      O(0) => \src_address_reg[15]_i_1_n_7\,
      S(3) => \src_address[15]_i_6_n_0\,
      S(2) => \src_address[15]_i_7_n_0\,
      S(1) => \src_address[15]_i_8_n_0\,
      S(0) => \src_address[15]_i_9_n_0\
    );
\src_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[15]_i_1_n_6\,
      Q => \^d\(18),
      R => '0'
    );
\src_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[15]_i_1_n_5\,
      Q => \^d\(19),
      R => '0'
    );
\src_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[15]_i_1_n_4\,
      Q => \^d\(20),
      R => '0'
    );
\src_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[19]_i_1_n_7\,
      Q => \^d\(21),
      R => '0'
    );
\src_address_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[15]_i_1_n_0\,
      CO(3) => \src_address_reg[19]_i_1_n_0\,
      CO(2) => \src_address_reg[19]_i_1_n_1\,
      CO(1) => \src_address_reg[19]_i_1_n_2\,
      CO(0) => \src_address_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \src_address[19]_i_2_n_0\,
      DI(2) => \src_address[19]_i_3_n_0\,
      DI(1) => \src_address[19]_i_4_n_0\,
      DI(0) => \src_address[19]_i_5_n_0\,
      O(3) => \src_address_reg[19]_i_1_n_4\,
      O(2) => \src_address_reg[19]_i_1_n_5\,
      O(1) => \src_address_reg[19]_i_1_n_6\,
      O(0) => \src_address_reg[19]_i_1_n_7\,
      S(3) => \src_address[19]_i_6_n_0\,
      S(2) => \src_address[19]_i_7_n_0\,
      S(1) => \src_address[19]_i_8_n_0\,
      S(0) => \src_address[19]_i_9_n_0\
    );
\src_address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[19]_i_1_n_6\,
      Q => \^d\(22),
      R => '0'
    );
\src_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[19]_i_1_n_5\,
      Q => \^d\(23),
      R => '0'
    );
\src_address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[19]_i_1_n_4\,
      Q => \^d\(24),
      R => '0'
    );
\src_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[23]_i_1_n_7\,
      Q => \^d\(25),
      R => '0'
    );
\src_address_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[19]_i_1_n_0\,
      CO(3) => \src_address_reg[23]_i_1_n_0\,
      CO(2) => \src_address_reg[23]_i_1_n_1\,
      CO(1) => \src_address_reg[23]_i_1_n_2\,
      CO(0) => \src_address_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \src_address[23]_i_2_n_0\,
      O(3) => \src_address_reg[23]_i_1_n_4\,
      O(2) => \src_address_reg[23]_i_1_n_5\,
      O(1) => \src_address_reg[23]_i_1_n_6\,
      O(0) => \src_address_reg[23]_i_1_n_7\,
      S(3) => \src_address[23]_i_3_n_0\,
      S(2) => \src_address[23]_i_4_n_0\,
      S(1) => \src_address[23]_i_5_n_0\,
      S(0) => \src_address[23]_i_6_n_0\
    );
\src_address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[23]_i_1_n_6\,
      Q => \^d\(26),
      R => '0'
    );
\src_address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[23]_i_1_n_5\,
      Q => \^d\(27),
      R => '0'
    );
\src_address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[23]_i_1_n_4\,
      Q => \^d\(28),
      R => '0'
    );
\src_address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[27]_i_1_n_7\,
      Q => \^d\(29),
      R => '0'
    );
\src_address_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[23]_i_1_n_0\,
      CO(3 downto 1) => \NLW_src_address_reg[27]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \src_address_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_src_address_reg[27]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \src_address_reg[27]_i_1_n_6\,
      O(0) => \src_address_reg[27]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \src_address[27]_i_2_n_0\,
      S(0) => \src_address[27]_i_3_n_0\
    );
\src_address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[27]_i_1_n_6\,
      Q => \^d\(30),
      R => '0'
    );
\src_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[3]_i_1_n_7\,
      Q => \^d\(5),
      R => '0'
    );
\src_address_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \src_address_reg[3]_i_1_n_0\,
      CO(2) => \src_address_reg[3]_i_1_n_1\,
      CO(1) => \src_address_reg[3]_i_1_n_2\,
      CO(0) => \src_address_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \src_address[3]_i_2_n_0\,
      DI(2) => \src_address[3]_i_3_n_0\,
      DI(1) => \src_address[3]_i_4_n_0\,
      DI(0) => \src_address[3]_i_5_n_0\,
      O(3) => \src_address_reg[3]_i_1_n_4\,
      O(2) => \src_address_reg[3]_i_1_n_5\,
      O(1) => \src_address_reg[3]_i_1_n_6\,
      O(0) => \src_address_reg[3]_i_1_n_7\,
      S(3) => \src_address[3]_i_6_n_0\,
      S(2) => \src_address[3]_i_7_n_0\,
      S(1) => \src_address[3]_i_8_n_0\,
      S(0) => \src_address[3]_i_9_n_0\
    );
\src_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[3]_i_1_n_6\,
      Q => \^d\(6),
      R => '0'
    );
\src_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[3]_i_1_n_5\,
      Q => \^d\(7),
      R => '0'
    );
\src_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[3]_i_1_n_4\,
      Q => \^d\(8),
      R => '0'
    );
\src_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[7]_i_1_n_7\,
      Q => \^d\(9),
      R => '0'
    );
\src_address_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \src_address_reg[3]_i_1_n_0\,
      CO(3) => \src_address_reg[7]_i_1_n_0\,
      CO(2) => \src_address_reg[7]_i_1_n_1\,
      CO(1) => \src_address_reg[7]_i_1_n_2\,
      CO(0) => \src_address_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \src_address[7]_i_2_n_0\,
      DI(2) => \src_address[7]_i_3_n_0\,
      DI(1) => \src_address[7]_i_4_n_0\,
      DI(0) => \src_address[7]_i_5_n_0\,
      O(3) => \src_address_reg[7]_i_1_n_4\,
      O(2) => \src_address_reg[7]_i_1_n_5\,
      O(1) => \src_address_reg[7]_i_1_n_6\,
      O(0) => \src_address_reg[7]_i_1_n_7\,
      S(3) => \src_address[7]_i_6_n_0\,
      S(2) => \src_address[7]_i_7_n_0\,
      S(1) => \src_address[7]_i_8_n_0\,
      S(0) => \src_address[7]_i_9_n_0\
    );
\src_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[7]_i_1_n_6\,
      Q => \^d\(10),
      R => '0'
    );
\src_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \src_address_reg[7]_i_1_n_5\,
      Q => \^d\(11),
      R => '0'
    );
\src_stride_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(7),
      Q => src_stride(10),
      R => '0'
    );
\src_stride_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(8),
      Q => src_stride(11),
      R => '0'
    );
\src_stride_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(9),
      Q => src_stride(12),
      R => '0'
    );
\src_stride_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(10),
      Q => src_stride(13),
      R => '0'
    );
\src_stride_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(11),
      Q => src_stride(14),
      R => '0'
    );
\src_stride_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(12),
      Q => src_stride(15),
      R => '0'
    );
\src_stride_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(13),
      Q => src_stride(16),
      R => '0'
    );
\src_stride_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(14),
      Q => src_stride(17),
      R => '0'
    );
\src_stride_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(15),
      Q => src_stride(18),
      R => '0'
    );
\src_stride_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(16),
      Q => src_stride(19),
      R => '0'
    );
\src_stride_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(17),
      Q => src_stride(20),
      R => '0'
    );
\src_stride_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(18),
      Q => src_stride(21),
      R => '0'
    );
\src_stride_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(19),
      Q => src_stride(22),
      R => '0'
    );
\src_stride_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(20),
      Q => src_stride(23),
      R => '0'
    );
\src_stride_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(0),
      Q => src_stride(3),
      R => '0'
    );
\src_stride_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(1),
      Q => src_stride(4),
      R => '0'
    );
\src_stride_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(2),
      Q => src_stride(5),
      R => '0'
    );
\src_stride_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(3),
      Q => src_stride(6),
      R => '0'
    );
\src_stride_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(4),
      Q => src_stride(7),
      R => '0'
    );
\src_stride_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(5),
      Q => src_stride(8),
      R => '0'
    );
\src_stride_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \src_stride_reg[23]_0\(6),
      Q => src_stride(9),
      R => '0'
    );
\up_irq_source[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^req_ready_reg_0\,
      I1 => req_ready_reg_1,
      I2 => up_dma_cyclic,
      I3 => up_dma_req_valid,
      O => up_sot
    );
\up_measured_transfer_length[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^up_response_valid\,
      I1 => up_response_ready,
      O => req_response_valid_reg_0(0)
    );
\x_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(7),
      Q => \x_length_reg[23]_0\(3),
      R => '0'
    );
\x_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(8),
      Q => \x_length_reg[23]_0\(4),
      R => '0'
    );
\x_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(9),
      Q => \x_length_reg[23]_0\(5),
      R => '0'
    );
\x_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(10),
      Q => \x_length_reg[23]_0\(6),
      R => '0'
    );
\x_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(11),
      Q => \x_length_reg[23]_0\(7),
      R => '0'
    );
\x_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(12),
      Q => \x_length_reg[23]_0\(8),
      R => '0'
    );
\x_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(13),
      Q => \x_length_reg[23]_0\(9),
      R => '0'
    );
\x_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(14),
      Q => \x_length_reg[23]_0\(10),
      R => '0'
    );
\x_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(15),
      Q => \x_length_reg[23]_0\(11),
      R => '0'
    );
\x_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(16),
      Q => \x_length_reg[23]_0\(12),
      R => '0'
    );
\x_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(17),
      Q => \x_length_reg[23]_0\(13),
      R => '0'
    );
\x_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(18),
      Q => \x_length_reg[23]_0\(14),
      R => '0'
    );
\x_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(19),
      Q => \x_length_reg[23]_0\(15),
      R => '0'
    );
\x_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(20),
      Q => \x_length_reg[23]_0\(16),
      R => '0'
    );
\x_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(0),
      Q => \^d\(1),
      R => '0'
    );
\x_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(1),
      Q => \^d\(2),
      R => '0'
    );
\x_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(2),
      Q => \^d\(3),
      R => '0'
    );
\x_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(3),
      Q => \^d\(4),
      R => '0'
    );
\x_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(4),
      Q => \x_length_reg[23]_0\(0),
      R => '0'
    );
\x_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(5),
      Q => \x_length_reg[23]_0\(1),
      R => '0'
    );
\x_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => dest_address1,
      D => \x_length_reg[23]_1\(6),
      Q => \x_length_reg[23]_0\(2),
      R => '0'
    );
y_length0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_length0_carry_n_0,
      CO(2) => y_length0_carry_n_1,
      CO(1) => y_length0_carry_n_2,
      CO(0) => y_length0_carry_n_3,
      CYINIT => y_length(0),
      DI(3 downto 0) => y_length(4 downto 1),
      O(3 downto 0) => y_length0(4 downto 1),
      S(3) => y_length0_carry_i_1_n_0,
      S(2) => y_length0_carry_i_2_n_0,
      S(1) => y_length0_carry_i_3_n_0,
      S(0) => y_length0_carry_i_4_n_0
    );
\y_length0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_length0_carry_n_0,
      CO(3) => \y_length0_carry__0_n_0\,
      CO(2) => \y_length0_carry__0_n_1\,
      CO(1) => \y_length0_carry__0_n_2\,
      CO(0) => \y_length0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_length(8 downto 5),
      O(3 downto 0) => y_length0(8 downto 5),
      S(3) => \y_length0_carry__0_i_1_n_0\,
      S(2) => \y_length0_carry__0_i_2_n_0\,
      S(1) => \y_length0_carry__0_i_3_n_0\,
      S(0) => \y_length0_carry__0_i_4_n_0\
    );
\y_length0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(8),
      O => \y_length0_carry__0_i_1_n_0\
    );
\y_length0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(7),
      O => \y_length0_carry__0_i_2_n_0\
    );
\y_length0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(6),
      O => \y_length0_carry__0_i_3_n_0\
    );
\y_length0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(5),
      O => \y_length0_carry__0_i_4_n_0\
    );
\y_length0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_length0_carry__0_n_0\,
      CO(3) => \y_length0_carry__1_n_0\,
      CO(2) => \y_length0_carry__1_n_1\,
      CO(1) => \y_length0_carry__1_n_2\,
      CO(0) => \y_length0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_length(12 downto 9),
      O(3 downto 0) => y_length0(12 downto 9),
      S(3) => \y_length0_carry__1_i_1_n_0\,
      S(2) => \y_length0_carry__1_i_2_n_0\,
      S(1) => \y_length0_carry__1_i_3_n_0\,
      S(0) => \y_length0_carry__1_i_4_n_0\
    );
\y_length0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(12),
      O => \y_length0_carry__1_i_1_n_0\
    );
\y_length0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(11),
      O => \y_length0_carry__1_i_2_n_0\
    );
\y_length0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(10),
      O => \y_length0_carry__1_i_3_n_0\
    );
\y_length0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(9),
      O => \y_length0_carry__1_i_4_n_0\
    );
\y_length0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_length0_carry__1_n_0\,
      CO(3) => \y_length0_carry__2_n_0\,
      CO(2) => \y_length0_carry__2_n_1\,
      CO(1) => \y_length0_carry__2_n_2\,
      CO(0) => \y_length0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_length(16 downto 13),
      O(3 downto 0) => y_length0(16 downto 13),
      S(3) => \y_length0_carry__2_i_1_n_0\,
      S(2) => \y_length0_carry__2_i_2_n_0\,
      S(1) => \y_length0_carry__2_i_3_n_0\,
      S(0) => \y_length0_carry__2_i_4_n_0\
    );
\y_length0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(16),
      O => \y_length0_carry__2_i_1_n_0\
    );
\y_length0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(15),
      O => \y_length0_carry__2_i_2_n_0\
    );
\y_length0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(14),
      O => \y_length0_carry__2_i_3_n_0\
    );
\y_length0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(13),
      O => \y_length0_carry__2_i_4_n_0\
    );
\y_length0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_length0_carry__2_n_0\,
      CO(3) => \y_length0_carry__3_n_0\,
      CO(2) => \y_length0_carry__3_n_1\,
      CO(1) => \y_length0_carry__3_n_2\,
      CO(0) => \y_length0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_length(20 downto 17),
      O(3 downto 0) => y_length0(20 downto 17),
      S(3) => \y_length0_carry__3_i_1_n_0\,
      S(2) => \y_length0_carry__3_i_2_n_0\,
      S(1) => \y_length0_carry__3_i_3_n_0\,
      S(0) => \y_length0_carry__3_i_4_n_0\
    );
\y_length0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(20),
      O => \y_length0_carry__3_i_1_n_0\
    );
\y_length0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(19),
      O => \y_length0_carry__3_i_2_n_0\
    );
\y_length0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(18),
      O => \y_length0_carry__3_i_3_n_0\
    );
\y_length0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(17),
      O => \y_length0_carry__3_i_4_n_0\
    );
\y_length0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_length0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_y_length0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_length0_carry__4_n_2\,
      CO(0) => \y_length0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => y_length(22 downto 21),
      O(3) => \NLW_y_length0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => y_length0(23 downto 21),
      S(3) => '0',
      S(2) => \y_length0_carry__4_i_1_n_0\,
      S(1) => \y_length0_carry__4_i_2_n_0\,
      S(0) => \y_length0_carry__4_i_3_n_0\
    );
\y_length0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(23),
      O => \y_length0_carry__4_i_1_n_0\
    );
\y_length0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(22),
      O => \y_length0_carry__4_i_2_n_0\
    );
\y_length0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(21),
      O => \y_length0_carry__4_i_3_n_0\
    );
y_length0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(4),
      O => y_length0_carry_i_1_n_0
    );
y_length0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(3),
      O => y_length0_carry_i_2_n_0
    );
y_length0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(2),
      O => y_length0_carry_i_3_n_0
    );
y_length0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_length(1),
      O => y_length0_carry_i_4_n_0
    );
\y_length[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000BFFF"
    )
        port map (
      I0 => \y_length_reg[23]_0\(0),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length(0),
      O => \y_length[0]_i_1_n_0\
    );
\y_length[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(10),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(10),
      O => \y_length[10]_i_1_n_0\
    );
\y_length[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(11),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(11),
      O => \y_length[11]_i_1_n_0\
    );
\y_length[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(12),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(12),
      O => \y_length[12]_i_1_n_0\
    );
\y_length[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(13),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(13),
      O => \y_length[13]_i_1_n_0\
    );
\y_length[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(14),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(14),
      O => \y_length[14]_i_1_n_0\
    );
\y_length[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(15),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(15),
      O => \y_length[15]_i_1_n_0\
    );
\y_length[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(16),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(16),
      O => \y_length[16]_i_1_n_0\
    );
\y_length[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(17),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(17),
      O => \y_length[17]_i_1_n_0\
    );
\y_length[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(18),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(18),
      O => \y_length[18]_i_1_n_0\
    );
\y_length[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(19),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(19),
      O => \y_length[19]_i_1_n_0\
    );
\y_length[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(1),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(1),
      O => \y_length[1]_i_1_n_0\
    );
\y_length[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(20),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(20),
      O => \y_length[20]_i_1_n_0\
    );
\y_length[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(21),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(21),
      O => \y_length[21]_i_1_n_0\
    );
\y_length[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(22),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(22),
      O => \y_length[22]_i_1_n_0\
    );
\y_length[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(23),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(23),
      O => \y_length[23]_i_2_n_0\
    );
\y_length[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(2),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(2),
      O => \y_length[2]_i_1_n_0\
    );
\y_length[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(3),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(3),
      O => \y_length[3]_i_1_n_0\
    );
\y_length[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(4),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(4),
      O => \y_length[4]_i_1_n_0\
    );
\y_length[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(5),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(5),
      O => \y_length[5]_i_1_n_0\
    );
\y_length[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(6),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(6),
      O => \y_length[6]_i_1_n_0\
    );
\y_length[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(7),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(7),
      O => \y_length[7]_i_1_n_0\
    );
\y_length[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(8),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(8),
      O => \y_length[8]_i_1_n_0\
    );
\y_length[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \y_length_reg[23]_0\(9),
      I1 => up_dma_req_valid,
      I2 => req_ready_reg_1,
      I3 => \^req_ready_reg_0\,
      I4 => y_length0(9),
      O => \y_length[9]_i_1_n_0\
    );
\y_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[0]_i_1_n_0\,
      Q => y_length(0),
      R => '0'
    );
\y_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[10]_i_1_n_0\,
      Q => y_length(10),
      R => '0'
    );
\y_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[11]_i_1_n_0\,
      Q => y_length(11),
      R => '0'
    );
\y_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[12]_i_1_n_0\,
      Q => y_length(12),
      R => '0'
    );
\y_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[13]_i_1_n_0\,
      Q => y_length(13),
      R => '0'
    );
\y_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[14]_i_1_n_0\,
      Q => y_length(14),
      R => '0'
    );
\y_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[15]_i_1_n_0\,
      Q => y_length(15),
      R => '0'
    );
\y_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[16]_i_1_n_0\,
      Q => y_length(16),
      R => '0'
    );
\y_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[17]_i_1_n_0\,
      Q => y_length(17),
      R => '0'
    );
\y_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[18]_i_1_n_0\,
      Q => y_length(18),
      R => '0'
    );
\y_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[19]_i_1_n_0\,
      Q => y_length(19),
      R => '0'
    );
\y_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[1]_i_1_n_0\,
      Q => y_length(1),
      R => '0'
    );
\y_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[20]_i_1_n_0\,
      Q => y_length(20),
      R => '0'
    );
\y_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[21]_i_1_n_0\,
      Q => y_length(21),
      R => '0'
    );
\y_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[22]_i_1_n_0\,
      Q => y_length(22),
      R => '0'
    );
\y_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[23]_i_2_n_0\,
      Q => y_length(23),
      R => '0'
    );
\y_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[2]_i_1_n_0\,
      Q => y_length(2),
      R => '0'
    );
\y_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[3]_i_1_n_0\,
      Q => y_length(3),
      R => '0'
    );
\y_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[4]_i_1_n_0\,
      Q => y_length(4),
      R => '0'
    );
\y_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[5]_i_1_n_0\,
      Q => y_length(5),
      R => '0'
    );
\y_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[6]_i_1_n_0\,
      Q => y_length(6),
      R => '0'
    );
\y_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[7]_i_1_n_0\,
      Q => y_length(7),
      R => '0'
    );
\y_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[8]_i_1_n_0\,
      Q => y_length(8),
      R => '0'
    );
\y_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \y_length[9]_i_1_n_0\,
      Q => y_length(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_address_generator is
  port (
    addr_valid_reg_0 : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    bl_ready_ag : out STD_LOGIC;
    req_ready_ag : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    enabled_reg_1 : out STD_LOGIC;
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_address_eot : in STD_LOGIC;
    addr_valid_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg_2 : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    \address_reg[25]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    enabled_reg_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    acked : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_raddr0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_address_generator : entity is "dmac_address_generator";
end zed_axi_dmac_0_0_dmac_address_generator;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_address_generator is
  signal addr_valid_d1 : STD_LOGIC;
  signal addr_valid_i_1_n_0 : STD_LOGIC;
  signal addr_valid_i_3_n_0 : STD_LOGIC;
  signal addr_valid_i_4_n_0 : STD_LOGIC;
  signal \^addr_valid_reg_0\ : STD_LOGIC;
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal \address[10]_i_2_n_0\ : STD_LOGIC;
  signal \address[10]_i_3_n_0\ : STD_LOGIC;
  signal \address[10]_i_4_n_0\ : STD_LOGIC;
  signal \address[10]_i_5_n_0\ : STD_LOGIC;
  signal \address[14]_i_2_n_0\ : STD_LOGIC;
  signal \address[14]_i_3_n_0\ : STD_LOGIC;
  signal \address[14]_i_4_n_0\ : STD_LOGIC;
  signal \address[14]_i_5_n_0\ : STD_LOGIC;
  signal \address[18]_i_2_n_0\ : STD_LOGIC;
  signal \address[18]_i_3_n_0\ : STD_LOGIC;
  signal \address[18]_i_4_n_0\ : STD_LOGIC;
  signal \address[18]_i_5_n_0\ : STD_LOGIC;
  signal \address[1]_i_1_n_0\ : STD_LOGIC;
  signal \address[22]_i_2_n_0\ : STD_LOGIC;
  signal \address[22]_i_3_n_0\ : STD_LOGIC;
  signal \address[22]_i_4_n_0\ : STD_LOGIC;
  signal \address[22]_i_5_n_0\ : STD_LOGIC;
  signal \address[25]_i_1_n_0\ : STD_LOGIC;
  signal \address[25]_i_3_n_0\ : STD_LOGIC;
  signal \address[25]_i_4_n_0\ : STD_LOGIC;
  signal \address[25]_i_5_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[6]_i_2_n_0\ : STD_LOGIC;
  signal \address[6]_i_3_n_0\ : STD_LOGIC;
  signal \address[6]_i_4_n_0\ : STD_LOGIC;
  signal \address[6]_i_5_n_0\ : STD_LOGIC;
  signal \address[6]_i_6_n_0\ : STD_LOGIC;
  signal address_enabled : STD_LOGIC;
  signal \address_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[25]_i_2_n_2\ : STD_LOGIC;
  signal \address_reg[25]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[25]_i_2_n_5\ : STD_LOGIC;
  signal \address_reg[25]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[25]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \bl_ready0__1\ : STD_LOGIC;
  signal \^bl_ready_ag\ : STD_LOGIC;
  signal bl_ready_i_1_n_0 : STD_LOGIC;
  signal \enabled_i_1__0_n_0\ : STD_LOGIC;
  signal enabled_i_2_n_0 : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal \id[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \id[3]_i_2_n_0\ : STD_LOGIC;
  signal \^id_reg[0]_0\ : STD_LOGIC;
  signal \^id_reg[1]_0\ : STD_LOGIC;
  signal \^id_reg[2]_0\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal last : STD_LOGIC;
  signal last_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \length[3]_i_1_n_0\ : STD_LOGIC;
  signal \length[3]_i_2_n_0\ : STD_LOGIC;
  signal \^m_src_axi_araddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^req_ready_ag\ : STD_LOGIC;
  signal \req_ready_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_address_reg[25]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_reg[25]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \address[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \id[0]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \id[1]_i_1__2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \id[2]_i_1__2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \id[3]_i_2\ : label is "soft_lutpair71";
begin
  addr_valid_reg_0 <= \^addr_valid_reg_0\;
  bl_ready_ag <= \^bl_ready_ag\;
  \id_reg[0]_0\ <= \^id_reg[0]_0\;
  \id_reg[1]_0\ <= \^id_reg[1]_0\;
  \id_reg[2]_0\ <= \^id_reg[2]_0\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
  m_src_axi_araddr(25 downto 0) <= \^m_src_axi_araddr\(25 downto 0);
  req_ready_ag <= \^req_ready_ag\;
addr_valid_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \^addr_valid_reg_0\,
      Q => addr_valid_d1,
      R => '0'
    );
addr_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABFAA"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      I1 => \^bl_ready_ag\,
      I2 => src_address_eot,
      I3 => \bl_ready0__1\,
      I4 => \^req_ready_ag\,
      I5 => addr_valid_i_3_n_0,
      O => addr_valid_i_1_n_0
    );
addr_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE00"
    )
        port map (
      I0 => addr_valid_i_4_n_0,
      I1 => addr_valid_reg_1(3),
      I2 => \^id_reg[3]_0\,
      I3 => enabled_reg_2,
      O => \bl_ready0__1\
    );
addr_valid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^req_ready_ag\,
      I2 => \^addr_valid_reg_0\,
      I3 => m_src_axi_arready,
      O => addr_valid_i_3_n_0
    );
addr_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^id_reg[0]_0\,
      I1 => addr_valid_reg_1(0),
      I2 => addr_valid_reg_1(2),
      I3 => \^id_reg[2]_0\,
      I4 => addr_valid_reg_1(1),
      I5 => \^id_reg[1]_0\,
      O => addr_valid_i_4_n_0
    );
addr_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => addr_valid_i_1_n_0,
      Q => \^addr_valid_reg_0\,
      R => '0'
    );
\address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(4),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(0),
      O => \address[0]_i_1_n_0\
    );
\address[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(14),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(10),
      O => \address[10]_i_2_n_0\
    );
\address[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(13),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(9),
      O => \address[10]_i_3_n_0\
    );
\address[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(12),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(8),
      O => \address[10]_i_4_n_0\
    );
\address[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(11),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(7),
      O => \address[10]_i_5_n_0\
    );
\address[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(18),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(14),
      O => \address[14]_i_2_n_0\
    );
\address[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(17),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(13),
      O => \address[14]_i_3_n_0\
    );
\address[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(16),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(12),
      O => \address[14]_i_4_n_0\
    );
\address[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(15),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(11),
      O => \address[14]_i_5_n_0\
    );
\address[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(22),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(18),
      O => \address[18]_i_2_n_0\
    );
\address[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(21),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(17),
      O => \address[18]_i_3_n_0\
    );
\address[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(20),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(16),
      O => \address[18]_i_4_n_0\
    );
\address[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(19),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(15),
      O => \address[18]_i_5_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(5),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(1),
      O => \address[1]_i_1_n_0\
    );
\address[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(26),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(22),
      O => \address[22]_i_2_n_0\
    );
\address[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(25),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(21),
      O => \address[22]_i_3_n_0\
    );
\address[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(24),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(20),
      O => \address[22]_i_4_n_0\
    );
\address[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(23),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(19),
      O => \address[22]_i_5_n_0\
    );
\address[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^req_ready_ag\,
      I1 => m_src_axi_arready,
      I2 => \^addr_valid_reg_0\,
      O => \address[25]_i_1_n_0\
    );
\address[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(29),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(25),
      O => \address[25]_i_3_n_0\
    );
\address[25]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(28),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(24),
      O => \address[25]_i_4_n_0\
    );
\address[25]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(27),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(23),
      O => \address[25]_i_5_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(6),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(2),
      O => \address[2]_i_1_n_0\
    );
\address[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(8),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(4),
      O => \address[6]_i_2_n_0\
    );
\address[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(10),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(6),
      O => \address[6]_i_3_n_0\
    );
\address[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(9),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(5),
      O => \address[6]_i_4_n_0\
    );
\address[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_src_axi_araddr\(4),
      I1 => \address_reg[25]_0\(8),
      I2 => \^req_ready_ag\,
      O => \address[6]_i_5_n_0\
    );
\address[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[25]_0\(7),
      I1 => \^req_ready_ag\,
      I2 => \^m_src_axi_araddr\(3),
      O => \address[6]_i_6_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address[0]_i_1_n_0\,
      Q => \^m_src_axi_araddr\(0),
      R => '0'
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_4\,
      Q => \^m_src_axi_araddr\(10),
      R => '0'
    );
\address_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[6]_i_1_n_0\,
      CO(3) => \address_reg[10]_i_1_n_0\,
      CO(2) => \address_reg[10]_i_1_n_1\,
      CO(1) => \address_reg[10]_i_1_n_2\,
      CO(0) => \address_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[10]_i_1_n_4\,
      O(2) => \address_reg[10]_i_1_n_5\,
      O(1) => \address_reg[10]_i_1_n_6\,
      O(0) => \address_reg[10]_i_1_n_7\,
      S(3) => \address[10]_i_2_n_0\,
      S(2) => \address[10]_i_3_n_0\,
      S(1) => \address[10]_i_4_n_0\,
      S(0) => \address[10]_i_5_n_0\
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_7\,
      Q => \^m_src_axi_araddr\(11),
      R => '0'
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_6\,
      Q => \^m_src_axi_araddr\(12),
      R => '0'
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_5\,
      Q => \^m_src_axi_araddr\(13),
      R => '0'
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_4\,
      Q => \^m_src_axi_araddr\(14),
      R => '0'
    );
\address_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[10]_i_1_n_0\,
      CO(3) => \address_reg[14]_i_1_n_0\,
      CO(2) => \address_reg[14]_i_1_n_1\,
      CO(1) => \address_reg[14]_i_1_n_2\,
      CO(0) => \address_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[14]_i_1_n_4\,
      O(2) => \address_reg[14]_i_1_n_5\,
      O(1) => \address_reg[14]_i_1_n_6\,
      O(0) => \address_reg[14]_i_1_n_7\,
      S(3) => \address[14]_i_2_n_0\,
      S(2) => \address[14]_i_3_n_0\,
      S(1) => \address[14]_i_4_n_0\,
      S(0) => \address[14]_i_5_n_0\
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_7\,
      Q => \^m_src_axi_araddr\(15),
      R => '0'
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_6\,
      Q => \^m_src_axi_araddr\(16),
      R => '0'
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_5\,
      Q => \^m_src_axi_araddr\(17),
      R => '0'
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_4\,
      Q => \^m_src_axi_araddr\(18),
      R => '0'
    );
\address_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[14]_i_1_n_0\,
      CO(3) => \address_reg[18]_i_1_n_0\,
      CO(2) => \address_reg[18]_i_1_n_1\,
      CO(1) => \address_reg[18]_i_1_n_2\,
      CO(0) => \address_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[18]_i_1_n_4\,
      O(2) => \address_reg[18]_i_1_n_5\,
      O(1) => \address_reg[18]_i_1_n_6\,
      O(0) => \address_reg[18]_i_1_n_7\,
      S(3) => \address[18]_i_2_n_0\,
      S(2) => \address[18]_i_3_n_0\,
      S(1) => \address[18]_i_4_n_0\,
      S(0) => \address[18]_i_5_n_0\
    );
\address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_7\,
      Q => \^m_src_axi_araddr\(19),
      R => '0'
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address[1]_i_1_n_0\,
      Q => \^m_src_axi_araddr\(1),
      R => '0'
    );
\address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_6\,
      Q => \^m_src_axi_araddr\(20),
      R => '0'
    );
\address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_5\,
      Q => \^m_src_axi_araddr\(21),
      R => '0'
    );
\address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_4\,
      Q => \^m_src_axi_araddr\(22),
      R => '0'
    );
\address_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[18]_i_1_n_0\,
      CO(3) => \address_reg[22]_i_1_n_0\,
      CO(2) => \address_reg[22]_i_1_n_1\,
      CO(1) => \address_reg[22]_i_1_n_2\,
      CO(0) => \address_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[22]_i_1_n_4\,
      O(2) => \address_reg[22]_i_1_n_5\,
      O(1) => \address_reg[22]_i_1_n_6\,
      O(0) => \address_reg[22]_i_1_n_7\,
      S(3) => \address[22]_i_2_n_0\,
      S(2) => \address[22]_i_3_n_0\,
      S(1) => \address[22]_i_4_n_0\,
      S(0) => \address[22]_i_5_n_0\
    );
\address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[25]_i_2_n_7\,
      Q => \^m_src_axi_araddr\(23),
      R => '0'
    );
\address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[25]_i_2_n_6\,
      Q => \^m_src_axi_araddr\(24),
      R => '0'
    );
\address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[25]_i_2_n_5\,
      Q => \^m_src_axi_araddr\(25),
      R => '0'
    );
\address_reg[25]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[22]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_reg[25]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_reg[25]_i_2_n_2\,
      CO(0) => \address_reg[25]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_address_reg[25]_i_2_O_UNCONNECTED\(3),
      O(2) => \address_reg[25]_i_2_n_5\,
      O(1) => \address_reg[25]_i_2_n_6\,
      O(0) => \address_reg[25]_i_2_n_7\,
      S(3) => '0',
      S(2) => \address[25]_i_3_n_0\,
      S(1) => \address[25]_i_4_n_0\,
      S(0) => \address[25]_i_5_n_0\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address[2]_i_1_n_0\,
      Q => \^m_src_axi_araddr\(2),
      R => '0'
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_7\,
      Q => \^m_src_axi_araddr\(3),
      R => '0'
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_6\,
      Q => \^m_src_axi_araddr\(4),
      R => '0'
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_5\,
      Q => \^m_src_axi_araddr\(5),
      R => '0'
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_4\,
      Q => \^m_src_axi_araddr\(6),
      R => '0'
    );
\address_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[6]_i_1_n_0\,
      CO(2) => \address_reg[6]_i_1_n_1\,
      CO(1) => \address_reg[6]_i_1_n_2\,
      CO(0) => \address_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \address[6]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \address_reg[6]_i_1_n_4\,
      O(2) => \address_reg[6]_i_1_n_5\,
      O(1) => \address_reg[6]_i_1_n_6\,
      O(0) => \address_reg[6]_i_1_n_7\,
      S(3) => \address[6]_i_3_n_0\,
      S(2) => \address[6]_i_4_n_0\,
      S(1) => \address[6]_i_5_n_0\,
      S(0) => \address[6]_i_6_n_0\
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_7\,
      Q => \^m_src_axi_araddr\(7),
      R => '0'
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_6\,
      Q => \^m_src_axi_araddr\(8),
      R => '0'
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \address[25]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_5\,
      Q => \^m_src_axi_araddr\(9),
      R => '0'
    );
bl_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BFB0B0B0B0B0B0"
    )
        port map (
      I0 => acked(1),
      I1 => m_axis_raddr0,
      I2 => \^bl_ready_ag\,
      I3 => \^addr_valid_reg_0\,
      I4 => \bl_ready0__1\,
      I5 => src_address_eot,
      O => bl_ready_i_1_n_0
    );
bl_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => bl_ready_i_1_n_0,
      Q => \^bl_ready_ag\,
      S => Q(0)
    );
\enabled_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => enabled_reg_2,
      I1 => \^addr_valid_reg_0\,
      I2 => address_enabled,
      O => \enabled_i_1__0_n_0\
    );
\enabled_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFBAAAA"
    )
        port map (
      I0 => address_enabled,
      I1 => enabled_i_2_n_0,
      I2 => \^id_reg[3]_0\,
      I3 => enabled_reg_3(3),
      I4 => dbg_status(0),
      O => enabled_reg_1
    );
enabled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => enabled_reg_3(0),
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[2]_0\,
      I3 => enabled_reg_3(2),
      I4 => \^id_reg[1]_0\,
      I5 => enabled_reg_3(1),
      O => enabled_i_2_n_0
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \enabled_i_1__0_n_0\,
      Q => address_enabled,
      R => Q(0)
    );
\id[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[2]_0\,
      O => \id[0]_i_1__0_n_0\
    );
\id[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[2]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[1]_0\,
      I3 => \^id_reg[0]_0\,
      O => inc_id_return(1)
    );
\id[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[2]_0\,
      I3 => \^id_reg[1]_0\,
      O => inc_id_return(2)
    );
\id[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      I1 => addr_valid_d1,
      O => id0
    );
\id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[2]_0\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[3]_0\,
      O => \id[3]_i_2_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => id0,
      D => \id[0]_i_1__0_n_0\,
      Q => \^id_reg[0]_0\,
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => id0,
      D => inc_id_return(1),
      Q => \^id_reg[1]_0\,
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => id0,
      D => inc_id_return(2),
      Q => \^id_reg[2]_0\,
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => id0,
      D => \id[3]_i_2_n_0\,
      Q => \^id_reg[3]_0\,
      R => Q(0)
    );
\last_burst_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => E(0),
      D => \address_reg[25]_0\(0),
      Q => last_burst_len(0),
      R => '0'
    );
\last_burst_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => E(0),
      D => \address_reg[25]_0\(1),
      Q => last_burst_len(1),
      R => '0'
    );
\last_burst_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => E(0),
      D => \address_reg[25]_0\(2),
      Q => last_burst_len(2),
      R => '0'
    );
\last_burst_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => E(0),
      D => \address_reg[25]_0\(3),
      Q => last_burst_len(3),
      R => '0'
    );
last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \length[3]_i_2_n_0\,
      D => src_address_eot,
      Q => last,
      R => '0'
    );
\length[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      I1 => src_address_eot,
      O => \length[3]_i_1_n_0\
    );
\length[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      O => \length[3]_i_2_n_0\
    );
\length_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \length[3]_i_2_n_0\,
      D => last_burst_len(0),
      Q => m_src_axi_arlen(0),
      S => \length[3]_i_1_n_0\
    );
\length_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \length[3]_i_2_n_0\,
      D => last_burst_len(1),
      Q => m_src_axi_arlen(1),
      S => \length[3]_i_1_n_0\
    );
\length_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \length[3]_i_2_n_0\,
      D => last_burst_len(2),
      Q => m_src_axi_arlen(2),
      S => \length[3]_i_1_n_0\
    );
\length_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \length[3]_i_2_n_0\,
      D => last_burst_len(3),
      Q => m_src_axi_arlen(3),
      S => \length[3]_i_1_n_0\
    );
\req_ready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF0BB00BB00BB00"
    )
        port map (
      I0 => acked(0),
      I1 => m_axis_raddr0,
      I2 => last,
      I3 => \^req_ready_ag\,
      I4 => m_src_axi_arready,
      I5 => \^addr_valid_reg_0\,
      O => \req_ready_i_1__0_n_0\
    );
req_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \req_ready_i_1__0_n_0\,
      Q => \^req_ready_ag\,
      S => Q(0)
    );
\up_rdata[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => dbg_status(0),
      I1 => \up_rdata_reg[5]\,
      I2 => \up_rdata_reg[5]_0\,
      I3 => \^m_src_axi_araddr\(2),
      O => enabled_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_request_generator is
  port (
    req_ready_reg_0 : out STD_LOGIC;
    request_eot : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    src_req_spltr_valid : in STD_LOGIC;
    dma_req_valid : in STD_LOGIC;
    response_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \burst_count_reg[0]_0\ : in STD_LOGIC;
    \src_throttled_request_id_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_throttled_request_id_reg[0]_0\ : in STD_LOGIC;
    \src_throttled_request_id_reg[0]_1\ : in STD_LOGIC;
    \burst_count_reg[16]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_request_generator : entity is "dmac_request_generator";
end zed_axi_dmac_0_0_dmac_request_generator;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_request_generator is
  signal b2g3_return01_out : STD_LOGIC;
  signal b2g3_return03_out : STD_LOGIC;
  signal burst_count : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal burst_count0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \burst_count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_3\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_3\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_3\ : STD_LOGIC;
  signal burst_count0_carry_i_1_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_2_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_3_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_4_n_0 : STD_LOGIC;
  signal burst_count0_carry_n_0 : STD_LOGIC;
  signal burst_count0_carry_n_1 : STD_LOGIC;
  signal burst_count0_carry_n_2 : STD_LOGIC;
  signal burst_count0_carry_n_3 : STD_LOGIC;
  signal \burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[9]_i_1_n_0\ : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal id : STD_LOGIC;
  signal \id[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal incr_id0 : STD_LOGIC;
  signal \nx_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \req_ready_i_1__1_n_0\ : STD_LOGIC;
  signal \^req_ready_reg_0\ : STD_LOGIC;
  signal \^request_eot\ : STD_LOGIC;
  signal \src_throttled_request_id[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_burst_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \burst_count[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \burst_count[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_count[11]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \burst_count[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \burst_count[13]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \burst_count[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \burst_count[15]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \burst_count[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \burst_count[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \burst_count[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \burst_count[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \burst_count[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \burst_count[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \burst_count[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \burst_count[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_count[9]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \id[0]_i_1__2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \id[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \id[2]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \id[3]_i_2__0\ : label is "soft_lutpair55";
begin
  \id_reg[3]_0\(3 downto 0) <= \^id_reg[3]_0\(3 downto 0);
  req_ready_reg_0 <= \^req_ready_reg_0\;
  request_eot <= \^request_eot\;
burst_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => burst_count0_carry_n_0,
      CO(2) => burst_count0_carry_n_1,
      CO(1) => burst_count0_carry_n_2,
      CO(0) => burst_count0_carry_n_3,
      CYINIT => burst_count(0),
      DI(3 downto 0) => burst_count(4 downto 1),
      O(3 downto 0) => burst_count0(4 downto 1),
      S(3) => burst_count0_carry_i_1_n_0,
      S(2) => burst_count0_carry_i_2_n_0,
      S(1) => burst_count0_carry_i_3_n_0,
      S(0) => burst_count0_carry_i_4_n_0
    );
\burst_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => burst_count0_carry_n_0,
      CO(3) => \burst_count0_carry__0_n_0\,
      CO(2) => \burst_count0_carry__0_n_1\,
      CO(1) => \burst_count0_carry__0_n_2\,
      CO(0) => \burst_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => burst_count(8 downto 5),
      O(3 downto 0) => burst_count0(8 downto 5),
      S(3) => \burst_count0_carry__0_i_1_n_0\,
      S(2) => \burst_count0_carry__0_i_2_n_0\,
      S(1) => \burst_count0_carry__0_i_3_n_0\,
      S(0) => \burst_count0_carry__0_i_4_n_0\
    );
\burst_count0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(8),
      O => \burst_count0_carry__0_i_1_n_0\
    );
\burst_count0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(7),
      O => \burst_count0_carry__0_i_2_n_0\
    );
\burst_count0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(6),
      O => \burst_count0_carry__0_i_3_n_0\
    );
\burst_count0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(5),
      O => \burst_count0_carry__0_i_4_n_0\
    );
\burst_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count0_carry__0_n_0\,
      CO(3) => \burst_count0_carry__1_n_0\,
      CO(2) => \burst_count0_carry__1_n_1\,
      CO(1) => \burst_count0_carry__1_n_2\,
      CO(0) => \burst_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => burst_count(12 downto 9),
      O(3 downto 0) => burst_count0(12 downto 9),
      S(3) => \burst_count0_carry__1_i_1_n_0\,
      S(2) => \burst_count0_carry__1_i_2_n_0\,
      S(1) => \burst_count0_carry__1_i_3_n_0\,
      S(0) => \burst_count0_carry__1_i_4_n_0\
    );
\burst_count0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(12),
      O => \burst_count0_carry__1_i_1_n_0\
    );
\burst_count0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(11),
      O => \burst_count0_carry__1_i_2_n_0\
    );
\burst_count0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(10),
      O => \burst_count0_carry__1_i_3_n_0\
    );
\burst_count0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(9),
      O => \burst_count0_carry__1_i_4_n_0\
    );
\burst_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count0_carry__1_n_0\,
      CO(3) => \NLW_burst_count0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \burst_count0_carry__2_n_1\,
      CO(1) => \burst_count0_carry__2_n_2\,
      CO(0) => \burst_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => burst_count(15 downto 13),
      O(3 downto 0) => burst_count0(16 downto 13),
      S(3) => \burst_count0_carry__2_i_1_n_0\,
      S(2) => \burst_count0_carry__2_i_2_n_0\,
      S(1) => \burst_count0_carry__2_i_3_n_0\,
      S(0) => \burst_count0_carry__2_i_4_n_0\
    );
\burst_count0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(16),
      O => \burst_count0_carry__2_i_1_n_0\
    );
\burst_count0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(15),
      O => \burst_count0_carry__2_i_2_n_0\
    );
\burst_count0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(14),
      O => \burst_count0_carry__2_i_3_n_0\
    );
\burst_count0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(13),
      O => \burst_count0_carry__2_i_4_n_0\
    );
burst_count0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(4),
      O => burst_count0_carry_i_1_n_0
    );
burst_count0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(3),
      O => burst_count0_carry_i_2_n_0
    );
burst_count0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(2),
      O => burst_count0_carry_i_3_n_0
    );
burst_count0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(1),
      O => burst_count0_carry_i_4_n_0
    );
\burst_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(0),
      I1 => incr_id0,
      I2 => burst_count(0),
      O => \burst_count[0]_i_1_n_0\
    );
\burst_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(10),
      I1 => incr_id0,
      I2 => burst_count0(10),
      O => \burst_count[10]_i_1_n_0\
    );
\burst_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(11),
      I1 => incr_id0,
      I2 => burst_count0(11),
      O => \burst_count[11]_i_1_n_0\
    );
\burst_count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(12),
      I1 => incr_id0,
      I2 => burst_count0(12),
      O => \burst_count[12]_i_1_n_0\
    );
\burst_count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(13),
      I1 => incr_id0,
      I2 => burst_count0(13),
      O => \burst_count[13]_i_1_n_0\
    );
\burst_count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(14),
      I1 => incr_id0,
      I2 => burst_count0(14),
      O => \burst_count[14]_i_1_n_0\
    );
\burst_count[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(15),
      I1 => incr_id0,
      I2 => burst_count0(15),
      O => \burst_count[15]_i_1_n_0\
    );
\burst_count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => incr_id0,
      I1 => p_3_in,
      O => \burst_count[16]_i_1_n_0\
    );
\burst_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(16),
      I1 => incr_id0,
      I2 => burst_count0(16),
      O => \burst_count[16]_i_2_n_0\
    );
\burst_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(1),
      I1 => incr_id0,
      I2 => burst_count0(1),
      O => \burst_count[1]_i_1_n_0\
    );
\burst_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(2),
      I1 => incr_id0,
      I2 => burst_count0(2),
      O => \burst_count[2]_i_1_n_0\
    );
\burst_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(3),
      I1 => incr_id0,
      I2 => burst_count0(3),
      O => \burst_count[3]_i_1_n_0\
    );
\burst_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(4),
      I1 => incr_id0,
      I2 => burst_count0(4),
      O => \burst_count[4]_i_1_n_0\
    );
\burst_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(5),
      I1 => incr_id0,
      I2 => burst_count0(5),
      O => \burst_count[5]_i_1_n_0\
    );
\burst_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(6),
      I1 => incr_id0,
      I2 => burst_count0(6),
      O => \burst_count[6]_i_1_n_0\
    );
\burst_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(7),
      I1 => incr_id0,
      I2 => burst_count0(7),
      O => \burst_count[7]_i_1_n_0\
    );
\burst_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(8),
      I1 => incr_id0,
      I2 => burst_count0(8),
      O => \burst_count[8]_i_1_n_0\
    );
\burst_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(9),
      I1 => incr_id0,
      I2 => burst_count0(9),
      O => \burst_count[9]_i_1_n_0\
    );
\burst_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[0]_i_1_n_0\,
      Q => burst_count(0),
      R => '0'
    );
\burst_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[10]_i_1_n_0\,
      Q => burst_count(10),
      R => '0'
    );
\burst_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[11]_i_1_n_0\,
      Q => burst_count(11),
      R => '0'
    );
\burst_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[12]_i_1_n_0\,
      Q => burst_count(12),
      R => '0'
    );
\burst_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[13]_i_1_n_0\,
      Q => burst_count(13),
      R => '0'
    );
\burst_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[14]_i_1_n_0\,
      Q => burst_count(14),
      R => '0'
    );
\burst_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[15]_i_1_n_0\,
      Q => burst_count(15),
      R => '0'
    );
\burst_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[16]_i_2_n_0\,
      Q => burst_count(16),
      R => '0'
    );
\burst_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[1]_i_1_n_0\,
      Q => burst_count(1),
      R => '0'
    );
\burst_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[2]_i_1_n_0\,
      Q => burst_count(2),
      R => '0'
    );
\burst_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[3]_i_1_n_0\,
      Q => burst_count(3),
      R => '0'
    );
\burst_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[4]_i_1_n_0\,
      Q => burst_count(4),
      R => '0'
    );
\burst_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[5]_i_1_n_0\,
      Q => burst_count(5),
      R => '0'
    );
\burst_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[6]_i_1_n_0\,
      Q => burst_count(6),
      R => '0'
    );
\burst_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[7]_i_1_n_0\,
      Q => burst_count(7),
      R => '0'
    );
\burst_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[8]_i_1_n_0\,
      Q => burst_count(8),
      R => '0'
    );
\burst_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[9]_i_1_n_0\,
      Q => burst_count(9),
      R => '0'
    );
eot_mem_src_reg_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => eot_mem_src_reg_0_15_0_0_i_2_n_0,
      I1 => burst_count(15),
      I2 => burst_count(16),
      I3 => burst_count(14),
      I4 => burst_count(13),
      I5 => eot_mem_src_reg_0_15_0_0_i_3_n_0,
      O => \^request_eot\
    );
eot_mem_src_reg_0_15_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_count(10),
      I1 => burst_count(9),
      I2 => burst_count(12),
      I3 => burst_count(11),
      O => eot_mem_src_reg_0_15_0_0_i_2_n_0
    );
eot_mem_src_reg_0_15_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => eot_mem_src_reg_0_15_0_0_i_4_n_0,
      I1 => burst_count(5),
      I2 => burst_count(6),
      I3 => burst_count(7),
      I4 => burst_count(8),
      O => eot_mem_src_reg_0_15_0_0_i_3_n_0
    );
eot_mem_src_reg_0_15_0_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => burst_count(4),
      I1 => burst_count(3),
      I2 => burst_count(0),
      I3 => burst_count(1),
      I4 => burst_count(2),
      O => eot_mem_src_reg_0_15_0_0_i_4_n_0
    );
\id[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[3]_0\(1),
      I1 => \^id_reg[3]_0\(3),
      I2 => \^id_reg[3]_0\(2),
      O => \id[0]_i_1__2_n_0\
    );
\id[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[3]_0\(2),
      I1 => \^id_reg[3]_0\(3),
      I2 => \^id_reg[3]_0\(1),
      I3 => \^id_reg[3]_0\(0),
      O => b2g3_return01_out
    );
\id[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_0\(3),
      I1 => \^id_reg[3]_0\(0),
      I2 => \^id_reg[3]_0\(2),
      I3 => \^id_reg[3]_0\(1),
      O => b2g3_return03_out
    );
\id[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => incr_id0,
      I1 => p_3_in,
      O => id
    );
\id[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[3]_0\(1),
      I1 => \^id_reg[3]_0\(2),
      I2 => \^id_reg[3]_0\(0),
      I3 => \^id_reg[3]_0\(3),
      O => p_1_in2_in
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => \id[0]_i_1__2_n_0\,
      Q => \^id_reg[3]_0\(0),
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => b2g3_return01_out,
      Q => \^id_reg[3]_0\(1),
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => b2g3_return03_out,
      Q => \^id_reg[3]_0\(2),
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => p_1_in2_in,
      Q => \^id_reg[3]_0\(3),
      R => Q(0)
    );
\req_ready_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF00DF00DF00DF"
    )
        port map (
      I0 => dma_req_valid,
      I1 => src_req_spltr_valid,
      I2 => \^req_ready_reg_0\,
      I3 => incr_id0,
      I4 => \^request_eot\,
      I5 => p_3_in,
      O => \req_ready_i_1__1_n_0\
    );
req_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_ready_i_1__1_n_0\,
      Q => \^req_ready_reg_0\,
      R => Q(0)
    );
\src_throttled_request_id[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBE00"
    )
        port map (
      I0 => \src_throttled_request_id[3]_i_3_n_0\,
      I1 => \^id_reg[3]_0\(3),
      I2 => \src_throttled_request_id_reg[0]\(3),
      I3 => \src_throttled_request_id_reg[0]_0\,
      I4 => \src_throttled_request_id_reg[0]_1\,
      O => E(0)
    );
\src_throttled_request_id[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \src_throttled_request_id_reg[0]\(0),
      I1 => \^id_reg[3]_0\(0),
      I2 => \^id_reg[3]_0\(2),
      I3 => \src_throttled_request_id_reg[0]\(2),
      I4 => \^id_reg[3]_0\(1),
      I5 => \src_throttled_request_id_reg[0]\(1),
      O => \src_throttled_request_id[3]_i_3_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70707F7070707070"
    )
        port map (
      I0 => p_3_in,
      I1 => \^request_eot\,
      I2 => incr_id0,
      I3 => \^req_ready_reg_0\,
      I4 => src_req_spltr_valid,
      I5 => dma_req_valid,
      O => \nx_state__0\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF600000000"
    )
        port map (
      I0 => response_id(0),
      I1 => \id[0]_i_1__2_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => p_1_in2_in,
      I4 => response_id(3),
      I5 => \burst_count_reg[0]_0\,
      O => p_3_in
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BD7EDD77BBBEDEE"
    )
        port map (
      I0 => response_id(1),
      I1 => response_id(2),
      I2 => \^id_reg[3]_0\(3),
      I3 => \^id_reg[3]_0\(0),
      I4 => \^id_reg[3]_0\(2),
      I5 => \^id_reg[3]_0\(1),
      O => \state[0]_i_4_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \nx_state__0\(0),
      Q => incr_id0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_response_generator is
  port (
    \response_id_reg[3]_0\ : out STD_LOGIC;
    \response_id_reg[2]_0\ : out STD_LOGIC;
    \response_id_reg[1]_0\ : out STD_LOGIC;
    \response_id_reg[0]_0\ : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    dest_response_valid : out STD_LOGIC;
    enabled_reg_1 : out STD_LOGIC;
    \response_id_reg[0]_1\ : out STD_LOGIC;
    \response_id_reg[1]_1\ : out STD_LOGIC;
    \response_id_reg[2]_1\ : out STD_LOGIC;
    \response_id_reg[3]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    enabled_reg_2 : in STD_LOGIC;
    enabled_reg_3 : in STD_LOGIC;
    \up_rdata_reg[27]\ : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    enabled_reg_4 : in STD_LOGIC;
    enabled_reg_5 : in STD_LOGIC;
    data_enabled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_response_generator : entity is "dmac_response_generator";
end zed_axi_dmac_0_0_dmac_response_generator;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_response_generator is
  signal \cdc_sync_fifo_ram[0]_i_3__0_n_0\ : STD_LOGIC;
  signal enabled_i_1_n_0 : STD_LOGIC;
  signal \enabled_i_2__0_n_0\ : STD_LOGIC;
  signal \^enabled_reg_0\ : STD_LOGIC;
  signal inc_id0_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \response_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \response_id[3]_i_2_n_0\ : STD_LOGIC;
  signal \^response_id_reg[0]_0\ : STD_LOGIC;
  signal \^response_id_reg[1]_0\ : STD_LOGIC;
  signal \^response_id_reg[2]_0\ : STD_LOGIC;
  signal \^response_id_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \response_id[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \response_id[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \response_id[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \response_id[3]_i_2\ : label is "soft_lutpair50";
begin
  enabled_reg_0 <= \^enabled_reg_0\;
  \response_id_reg[0]_0\ <= \^response_id_reg[0]_0\;
  \response_id_reg[1]_0\ <= \^response_id_reg[1]_0\;
  \response_id_reg[2]_0\ <= \^response_id_reg[2]_0\;
  \response_id_reg[3]_0\ <= \^response_id_reg[3]_0\;
\cdc_sync_fifo_ram[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF600000000"
    )
        port map (
      I0 => enabled_reg_2,
      I1 => \^response_id_reg[0]_0\,
      I2 => \cdc_sync_fifo_ram[0]_i_3__0_n_0\,
      I3 => \^response_id_reg[3]_0\,
      I4 => enabled_reg_3,
      I5 => \^enabled_reg_0\,
      O => dest_response_valid
    );
\cdc_sync_fifo_ram[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => enabled_reg_4,
      I1 => \^response_id_reg[1]_0\,
      I2 => enabled_reg_5,
      I3 => \^response_id_reg[2]_0\,
      O => \cdc_sync_fifo_ram[0]_i_3__0_n_0\
    );
enabled_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFAAAA"
    )
        port map (
      I0 => data_enabled,
      I1 => \^response_id_reg[3]_0\,
      I2 => enabled_reg_3,
      I3 => \enabled_i_2__0_n_0\,
      I4 => \^enabled_reg_0\,
      O => enabled_i_1_n_0
    );
\enabled_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => enabled_reg_4,
      I1 => \^response_id_reg[1]_0\,
      I2 => enabled_reg_5,
      I3 => \^response_id_reg[2]_0\,
      I4 => enabled_reg_2,
      I5 => \^response_id_reg[0]_0\,
      O => \enabled_i_2__0_n_0\
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => enabled_i_1_n_0,
      Q => \^enabled_reg_0\,
      R => Q(0)
    );
\response_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^response_id_reg[1]_0\,
      I1 => \^response_id_reg[3]_0\,
      I2 => \^response_id_reg[2]_0\,
      O => \response_id[0]_i_1_n_0\
    );
\response_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^response_id_reg[2]_0\,
      I1 => \^response_id_reg[3]_0\,
      I2 => \^response_id_reg[1]_0\,
      I3 => \^response_id_reg[0]_0\,
      O => inc_id0_return(1)
    );
\response_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^response_id_reg[3]_0\,
      I1 => \^response_id_reg[0]_0\,
      I2 => \^response_id_reg[2]_0\,
      I3 => \^response_id_reg[1]_0\,
      O => inc_id0_return(2)
    );
\response_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^response_id_reg[1]_0\,
      I1 => \^response_id_reg[2]_0\,
      I2 => \^response_id_reg[0]_0\,
      I3 => \^response_id_reg[3]_0\,
      O => \response_id[3]_i_2_n_0\
    );
\response_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => id0,
      D => \response_id[0]_i_1_n_0\,
      Q => \^response_id_reg[0]_0\,
      R => Q(0)
    );
\response_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => id0,
      D => inc_id0_return(1),
      Q => \^response_id_reg[1]_0\,
      R => Q(0)
    );
\response_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => id0,
      D => inc_id0_return(2),
      Q => \^response_id_reg[2]_0\,
      R => Q(0)
    );
\response_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => id0,
      D => \response_id[3]_i_2_n_0\,
      Q => \^response_id_reg[3]_0\,
      R => Q(0)
    );
\up_rdata[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^response_id_reg[0]_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(1),
      O => \response_id_reg[0]_1\
    );
\up_rdata[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^response_id_reg[1]_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(2),
      O => \response_id_reg[1]_1\
    );
\up_rdata[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^response_id_reg[2]_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(3),
      O => \response_id_reg[2]_1\
    );
\up_rdata[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^response_id_reg[3]_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(4),
      O => \response_id_reg[3]_1\
    );
\up_rdata[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^enabled_reg_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(0),
      O => enabled_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_fifo_address_sync is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_valid_reg_0 : out STD_LOGIC;
    req_response_valid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_tlf_valid : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \level_reg[1]_0\ : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    response_ready_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_fifo_address_sync : entity is "fifo_address_sync";
end zed_axi_dmac_0_0_fifo_address_sync;

architecture STRUCTURE of zed_axi_dmac_0_0_fifo_address_sync is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_m_axis_valid\ : STD_LOGIC;
  signal level : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \level[0]_i_2_n_0\ : STD_LOGIC;
  signal \level[1]_i_1_n_0\ : STD_LOGIC;
  signal \level[2]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_valid_i_1_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_ready_i_1_n_0 : STD_LOGIC;
  signal up_tlf_s_ready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \level[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \level[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \level[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_raddr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_raddr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of valid_i_1 : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
\level[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \level_reg[1]_0\,
      O => \^sr\(0)
    );
\level[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => up_tlf_valid,
      I1 => p_8_in,
      I2 => \_m_axis_valid\,
      I3 => level(0),
      O => \level[0]_i_2_n_0\
    );
\level[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => level(0),
      I1 => level(1),
      O => \level[1]_i_1_n_0\
    );
\level[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => up_tlf_valid,
      I1 => p_8_in,
      I2 => \_m_axis_valid\,
      O => \^e\(0)
    );
\level[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => level(1),
      I1 => level(0),
      I2 => level(2),
      O => \level[2]_i_2_n_0\
    );
\level_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \level[0]_i_2_n_0\,
      Q => level(0),
      R => \^sr\(0)
    );
\level_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => \level[1]_i_1_n_0\,
      Q => level(1),
      R => \^sr\(0)
    );
\level_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => \level[2]_i_2_n_0\,
      Q => level(2),
      R => \^sr\(0)
    );
\m_axis_raddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_2_in(0)
    );
\m_axis_raddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_2_in(1)
    );
\m_axis_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => p_2_in(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\m_axis_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => p_2_in(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
m_axis_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2FFFD0"
    )
        port map (
      I0 => up_tlf_valid,
      I1 => p_8_in,
      I2 => \_m_axis_valid\,
      I3 => level(1),
      I4 => level(0),
      I5 => level(2),
      O => m_axis_valid_i_1_n_0
    );
m_axis_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => m_axis_valid_i_1_n_0,
      Q => \_m_axis_valid\,
      R => \^sr\(0)
    );
response_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => up_response_valid,
      I1 => response_ready_reg,
      I2 => up_tlf_s_ready,
      O => req_response_valid_reg
    );
s_axis_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FD0FFFFFFFF"
    )
        port map (
      I0 => up_tlf_valid,
      I1 => p_8_in,
      I2 => \_m_axis_valid\,
      I3 => level(0),
      I4 => level(1),
      I5 => level(2),
      O => s_axis_ready_i_1_n_0
    );
s_axis_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axis_ready_i_1_n_0,
      Q => up_tlf_s_ready,
      R => \^sr\(0)
    );
valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \_m_axis_valid\,
      I1 => up_tlf_valid,
      I2 => p_8_in,
      O => m_axis_valid_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_splitter is
  port (
    src_req_dest_address_cur0 : out STD_LOGIC;
    m_axis_raddr0 : out STD_LOGIC;
    acked : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_raddr_reg : out STD_LOGIC;
    bl_ready_ag : in STD_LOGIC;
    req_ready_ag : in STD_LOGIC;
    src_req_spltr_valid : in STD_LOGIC;
    dest_req_valid : in STD_LOGIC;
    m_axis_raddr_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_splitter : entity is "splitter";
end zed_axi_dmac_0_0_splitter;

architecture STRUCTURE of zed_axi_dmac_0_0_splitter is
  signal \^acked\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acked[0]_i_1_n_0\ : STD_LOGIC;
  signal \acked[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_raddr0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_burst_len[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of src_req_xlast_cur_i_2 : label is "soft_lutpair73";
begin
  acked(1 downto 0) <= \^acked\(1 downto 0);
  m_axis_raddr0 <= \^m_axis_raddr0\;
\acked[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057570200"
    )
        port map (
      I0 => \^m_axis_raddr0\,
      I1 => bl_ready_ag,
      I2 => \^acked\(1),
      I3 => req_ready_ag,
      I4 => \^acked\(0),
      I5 => Q(0),
      O => \acked[0]_i_1_n_0\
    );
\acked[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000505050F8"
    )
        port map (
      I0 => \^m_axis_raddr0\,
      I1 => bl_ready_ag,
      I2 => \^acked\(1),
      I3 => req_ready_ag,
      I4 => \^acked\(0),
      I5 => Q(0),
      O => \acked[1]_i_1_n_0\
    );
\acked[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022200000"
    )
        port map (
      I0 => src_req_spltr_valid,
      I1 => dest_req_valid,
      I2 => \^acked\(0),
      I3 => req_ready_ag,
      I4 => \^acked\(1),
      I5 => bl_ready_ag,
      O => \^m_axis_raddr0\
    );
\acked_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \acked[0]_i_1_n_0\,
      Q => \^acked\(0),
      R => '0'
    );
\acked_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \acked[1]_i_1_n_0\,
      Q => \^acked\(1),
      R => '0'
    );
\last_burst_len[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^acked\(1),
      I1 => \^m_axis_raddr0\,
      I2 => bl_ready_ag,
      O => E(0)
    );
\m_axis_raddr_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axis_raddr0\,
      I1 => m_axis_raddr_reg_0,
      O => m_axis_raddr_reg
    );
src_req_xlast_cur_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A800"
    )
        port map (
      I0 => \^m_axis_raddr0\,
      I1 => bl_ready_ag,
      I2 => \^acked\(1),
      I3 => req_ready_ag,
      I4 => \^acked\(0),
      O => src_req_dest_address_cur0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_up_axi is
  port (
    up_wreq : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    up_rreq : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    up_axi_rvalid_int_reg_0 : out STD_LOGIC;
    up_dma_req_valid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_wreq_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_wreq_int_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_wreq_int_reg_2 : out STD_LOGIC;
    up_wreq_int_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_waddr_int_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    \up_raddr_int_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \up_scratch_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_raddr_int_reg[7]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[3]_0\ : out STD_LOGIC;
    \up_waddr_int_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_waddr_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_wdata_int_reg[1]_0\ : out STD_LOGIC;
    \up_wdata_int_reg[0]_0\ : out STD_LOGIC;
    \up_wdata_int_reg[2]_0\ : out STD_LOGIC;
    \up_wdata_int_reg[1]_1\ : out STD_LOGIC;
    \up_wdata_int_reg[0]_1\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    ctrl_enable_reg : in STD_LOGIC;
    up_req_eot : in STD_LOGIC;
    up_dma_cyclic : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_irq_source_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_wack : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    up_rack : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \up_rdata_d_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_rdata[1]_i_4_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \up_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \up_rdata_reg[27]\ : in STD_LOGIC;
    dbg_ids1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    \up_rdata_reg[28]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \up_rdata_reg[26]\ : in STD_LOGIC;
    \up_rdata_reg[26]_0\ : in STD_LOGIC;
    \up_rdata_reg[25]\ : in STD_LOGIC;
    \up_rdata_reg[25]_0\ : in STD_LOGIC;
    \up_rdata_reg[24]\ : in STD_LOGIC;
    \up_rdata_reg[24]_0\ : in STD_LOGIC;
    \up_rdata_reg[19]\ : in STD_LOGIC;
    \up_rdata_reg[19]_0\ : in STD_LOGIC;
    \up_rdata_reg[19]_1\ : in STD_LOGIC;
    \up_rdata_reg[18]\ : in STD_LOGIC;
    \up_rdata_reg[18]_0\ : in STD_LOGIC;
    \up_rdata_reg[18]_1\ : in STD_LOGIC;
    \up_rdata_reg[17]\ : in STD_LOGIC;
    \up_rdata_reg[17]_0\ : in STD_LOGIC;
    \up_rdata_reg[17]_1\ : in STD_LOGIC;
    \up_rdata_reg[16]\ : in STD_LOGIC;
    \up_rdata_reg[16]_0\ : in STD_LOGIC;
    \up_rdata_reg[16]_1\ : in STD_LOGIC;
    \up_rdata_reg[11]\ : in STD_LOGIC;
    \up_rdata_reg[11]_0\ : in STD_LOGIC;
    \up_rdata_reg[11]_1\ : in STD_LOGIC;
    \up_rdata_reg[10]\ : in STD_LOGIC;
    \up_rdata_reg[10]_0\ : in STD_LOGIC;
    \up_rdata_reg[10]_1\ : in STD_LOGIC;
    \up_rdata_reg[9]\ : in STD_LOGIC;
    \up_rdata_reg[9]_0\ : in STD_LOGIC;
    \up_rdata_reg[9]_1\ : in STD_LOGIC;
    \up_rdata_reg[8]\ : in STD_LOGIC;
    \up_rdata_reg[8]_0\ : in STD_LOGIC;
    \up_rdata_reg[8]_1\ : in STD_LOGIC;
    \up_rdata_reg[6]\ : in STD_LOGIC;
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[4]\ : in STD_LOGIC;
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[2]\ : in STD_LOGIC;
    \up_rdata_reg[0]\ : in STD_LOGIC;
    \up_rdata_reg[1]\ : in STD_LOGIC;
    \up_rdata[3]_i_4_0\ : in STD_LOGIC;
    \up_rdata[3]_i_4_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata[3]_i_4_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \up_rdata[3]_i_4_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata[1]_i_4_1\ : in STD_LOGIC;
    \up_rdata[0]_i_4_0\ : in STD_LOGIC;
    \up_rdata[31]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dbg_ids0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_pause : in STD_LOGIC;
    up_transfer_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_rdata_reg[4]_0\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    \up_rdata_reg[6]_0\ : in STD_LOGIC;
    \up_rdata_reg[7]\ : in STD_LOGIC;
    \up_rdata_reg[12]\ : in STD_LOGIC;
    \up_rdata_reg[13]\ : in STD_LOGIC;
    \up_rdata_reg[14]\ : in STD_LOGIC;
    \up_rdata_reg[15]\ : in STD_LOGIC;
    \up_rdata_reg[20]\ : in STD_LOGIC;
    \up_rdata_reg[21]\ : in STD_LOGIC;
    \up_rdata_reg[22]\ : in STD_LOGIC;
    \up_rdata_reg[23]\ : in STD_LOGIC;
    \up_rdata_reg[28]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    up_dma_last : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[7]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_up_axi : entity is "up_axi";
end zed_axi_dmac_0_0_up_axi;

architecture STRUCTURE of zed_axi_dmac_0_0_up_axi is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_enable_i_2_n_0 : STD_LOGIC;
  signal ctrl_enable_i_3_n_0 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_regmap_request/up_dma_cyclic\ : STD_LOGIC;
  signal \i_regmap_request/up_dma_req_valid0\ : STD_LOGIC;
  signal \level[0]_i_4_n_0\ : STD_LOGIC;
  signal \level[0]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal up_axi_arready_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_awready_int_i_2_n_0 : STD_LOGIC;
  signal up_axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal \up_axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal up_axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal \^up_axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal up_axi_wready_int_i_1_n_0 : STD_LOGIC;
  signal \up_dma_dest_stride[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_src_address[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_src_stride[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_x_length[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_x_length[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_dma_y_length[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_4_n_0\ : STD_LOGIC;
  signal \up_irq_source[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_source_clear1__6\ : STD_LOGIC;
  signal up_rack_d : STD_LOGIC;
  signal up_rack_s : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 8 downto 5 );
  signal \^up_raddr_int_reg[3]_0\ : STD_LOGIC;
  signal \^up_raddr_int_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^up_raddr_int_reg[7]_0\ : STD_LOGIC;
  signal \up_rcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \up_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_10_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_11_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_12_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_13_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_14_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_15_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_16_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_17_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_8_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_9_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal up_rdata_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \up_rdata_d[13]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[17]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[20]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[22]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[24]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[29]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[8]_i_1_n_0\ : STD_LOGIC;
  signal up_rdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^up_rreq\ : STD_LOGIC;
  signal up_rreq_int_i_1_n_0 : STD_LOGIC;
  signal up_rsel_i_1_n_0 : STD_LOGIC;
  signal up_rsel_reg_n_0 : STD_LOGIC;
  signal \up_scratch[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_scratch[31]_i_3_n_0\ : STD_LOGIC;
  signal up_wack_d : STD_LOGIC;
  signal up_wack_s : STD_LOGIC;
  signal up_wack_s_0 : STD_LOGIC;
  signal up_waddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up_wcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \^up_wreq\ : STD_LOGIC;
  signal up_wreq_int_i_1_n_0 : STD_LOGIC;
  signal up_wsel_i_1_n_0 : STD_LOGIC;
  signal up_wsel_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ctrl_enable_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of ctrl_enable_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of ctrl_pause_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \level[0]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \level[0]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of up_axi_awready_int_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of up_axi_wready_int_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of up_dma_cyclic_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of up_dma_enable_tlen_reporting_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of up_dma_last_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \up_dma_src_address[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_dma_src_stride[23]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_dma_y_length[23]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \up_rcount[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_rcount[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_rdata[0]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_rdata[10]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_rdata[11]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rdata[12]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_rdata[12]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_rdata[13]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_rdata[13]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_rdata[14]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_rdata[14]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_rdata[15]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_rdata[15]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_rdata[16]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_rdata[17]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_rdata[19]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_rdata[19]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_rdata[20]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \up_rdata[20]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \up_rdata[21]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \up_rdata[21]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \up_rdata[22]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_rdata[22]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_rdata[24]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_rdata[25]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_rdata[26]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[28]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_rdata[28]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_rdata[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_rdata[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_10\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_12\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_13\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_8\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_rdata[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \up_rdata[4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \up_rdata[5]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_rdata[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_rdata[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_rdata[7]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \up_rdata[8]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rdata[9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \up_wcount[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_wcount[2]_i_1\ : label is "soft_lutpair12";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_wready <= \^s_axi_wready\;
  up_axi_rvalid_int_reg_0 <= \^up_axi_rvalid_int_reg_0\;
  \up_raddr_int_reg[3]_0\ <= \^up_raddr_int_reg[3]_0\;
  \up_raddr_int_reg[4]_0\(4 downto 0) <= \^up_raddr_int_reg[4]_0\(4 downto 0);
  \up_raddr_int_reg[7]_0\ <= \^up_raddr_int_reg[7]_0\;
  up_rreq <= \^up_rreq\;
  up_wreq <= \^up_wreq\;
ctrl_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => ctrl_enable_i_2_n_0,
      I2 => ctrl_enable_reg,
      O => \up_wdata_int_reg[0]_1\
    );
ctrl_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => ctrl_enable_i_3_n_0,
      I2 => up_waddr(2),
      I3 => up_waddr(1),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(8),
      O => ctrl_enable_i_2_n_0
    );
ctrl_enable_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(0),
      I1 => up_waddr(7),
      I2 => up_waddr(5),
      I3 => up_waddr(6),
      O => ctrl_enable_i_3_n_0
    );
ctrl_pause_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => ctrl_enable_i_2_n_0,
      I2 => ctrl_pause,
      O => \up_wdata_int_reg[1]_1\
    );
\level[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \level[0]_i_4_n_0\,
      I1 => up_raddr(7),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \level[0]_i_5_n_0\,
      I4 => \^up_raddr_int_reg[4]_0\(4),
      I5 => \^up_rreq\,
      O => p_8_in
    );
\level[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_raddr(6),
      I1 => up_raddr(5),
      O => \level[0]_i_4_n_0\
    );
\level[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => up_raddr(8),
      O => \level[0]_i_5_n_0\
    );
up_axi_arready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => up_rack_s,
      O => up_axi_arready_int_i_1_n_0
    );
up_axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_arready_int_i_1_n_0,
      Q => \^s_axi_arready\,
      R => SR(0)
    );
up_axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => up_wack_s_0,
      O => up_axi_awready_int_i_2_n_0
    );
up_axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_awready_int_i_2_n_0,
      Q => \^s_axi_awready\,
      R => SR(0)
    );
up_axi_bvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_wack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => up_axi_bvalid_int_i_1_n_0
    );
up_axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\up_axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^up_axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(0),
      Q => s_axi_rdata(0),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(10),
      Q => s_axi_rdata(10),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(11),
      Q => s_axi_rdata(11),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(12),
      Q => s_axi_rdata(12),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(13),
      Q => s_axi_rdata(13),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(14),
      Q => s_axi_rdata(14),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(15),
      Q => s_axi_rdata(15),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(16),
      Q => s_axi_rdata(16),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(17),
      Q => s_axi_rdata(17),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(18),
      Q => s_axi_rdata(18),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(19),
      Q => s_axi_rdata(19),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(1),
      Q => s_axi_rdata(1),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(20),
      Q => s_axi_rdata(20),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(21),
      Q => s_axi_rdata(21),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(22),
      Q => s_axi_rdata(22),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(23),
      Q => s_axi_rdata(23),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(24),
      Q => s_axi_rdata(24),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(25),
      Q => s_axi_rdata(25),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(26),
      Q => s_axi_rdata(26),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(27),
      Q => s_axi_rdata(27),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(28),
      Q => s_axi_rdata(28),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(29),
      Q => s_axi_rdata(29),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(2),
      Q => s_axi_rdata(2),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(30),
      Q => s_axi_rdata(30),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(31),
      Q => s_axi_rdata(31),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(3),
      Q => s_axi_rdata(3),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(4),
      Q => s_axi_rdata(4),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(5),
      Q => s_axi_rdata(5),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(6),
      Q => s_axi_rdata(6),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(7),
      Q => s_axi_rdata(7),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(8),
      Q => s_axi_rdata(8),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(9),
      Q => s_axi_rdata(9),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
up_axi_rvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_rack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => \^up_axi_rvalid_int_reg_0\,
      O => up_axi_rvalid_int_i_1_n_0
    );
up_axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_rvalid_int_i_1_n_0,
      Q => \^up_axi_rvalid_int_reg_0\,
      R => '0'
    );
up_axi_wready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => up_wack_s_0,
      O => up_axi_wready_int_i_1_n_0
    );
up_axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_wready_int_i_1_n_0,
      Q => \^s_axi_wready\,
      R => SR(0)
    );
up_dma_cyclic_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \i_regmap_request/up_dma_cyclic\,
      I2 => up_dma_cyclic,
      O => \up_wdata_int_reg[0]_0\
    );
\up_dma_dest_stride[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \up_dma_dest_stride[23]_i_2_n_0\,
      I1 => up_waddr(8),
      I2 => up_waddr(1),
      I3 => \^up_wreq\,
      I4 => up_waddr(3),
      I5 => \up_dma_x_length[23]_i_3_n_0\,
      O => \up_waddr_int_reg[8]_0\(0)
    );
\up_dma_dest_stride[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(2),
      I1 => up_waddr(0),
      O => \up_dma_dest_stride[23]_i_2_n_0\
    );
up_dma_enable_tlen_reporting_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \i_regmap_request/up_dma_cyclic\,
      I2 => p_3_in(0),
      O => \up_wdata_int_reg[2]_0\
    );
up_dma_enable_tlen_reporting_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \up_dma_src_address[28]_i_2_n_0\,
      I1 => up_waddr(2),
      I2 => up_waddr(0),
      I3 => up_waddr(1),
      I4 => \^up_wreq\,
      O => \i_regmap_request/up_dma_cyclic\
    );
up_dma_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \i_regmap_request/up_dma_cyclic\,
      I2 => up_dma_last,
      O => \up_wdata_int_reg[1]_0\
    );
up_dma_req_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E0A000000000"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => \^q\(0),
      I2 => s_axi_aresetn,
      I3 => \i_regmap_request/up_dma_req_valid0\,
      I4 => up_sot,
      I5 => ctrl_enable_reg,
      O => up_dma_req_valid_reg
    );
up_dma_req_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => ctrl_enable_i_3_n_0,
      I1 => up_waddr(2),
      I2 => up_waddr(8),
      I3 => \up_scratch[31]_i_3_n_0\,
      I4 => up_waddr(1),
      I5 => \^up_wreq\,
      O => \i_regmap_request/up_dma_req_valid0\
    );
\up_dma_src_address[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_dma_src_address[28]_i_2_n_0\,
      I2 => up_waddr(1),
      I3 => up_waddr(0),
      I4 => up_waddr(2),
      O => up_wreq_int_reg_0(0)
    );
\up_dma_src_address[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(4),
      I3 => up_waddr(3),
      I4 => up_waddr(6),
      I5 => up_waddr(5),
      O => \up_dma_src_address[28]_i_2_n_0\
    );
\up_dma_src_stride[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \up_dma_src_stride[23]_i_2_n_0\,
      I1 => up_waddr(3),
      I2 => up_waddr(8),
      I3 => up_waddr(0),
      I4 => \^up_wreq\,
      I5 => \up_dma_x_length[23]_i_3_n_0\,
      O => \up_waddr_int_reg[3]_0\(0)
    );
\up_dma_src_stride[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(2),
      I1 => up_waddr(1),
      O => \up_dma_src_stride[23]_i_2_n_0\
    );
\up_dma_x_length[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => up_waddr(0),
      I1 => up_waddr(3),
      I2 => \up_dma_x_length[23]_i_2_n_0\,
      I3 => \up_dma_x_length[23]_i_3_n_0\,
      O => \up_waddr_int_reg[0]_0\(0)
    );
\up_dma_x_length[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => up_waddr(2),
      I1 => up_waddr(8),
      I2 => \^up_wreq\,
      I3 => up_waddr(1),
      O => \up_dma_x_length[23]_i_2_n_0\
    );
\up_dma_x_length[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(6),
      I1 => up_waddr(7),
      I2 => up_waddr(4),
      I3 => up_waddr(5),
      O => \up_dma_x_length[23]_i_3_n_0\
    );
\up_dma_y_length[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_dma_x_length[23]_i_3_n_0\,
      I2 => up_waddr(8),
      I3 => up_waddr(2),
      I4 => up_waddr(3),
      I5 => \up_dma_y_length[23]_i_2_n_0\,
      O => up_wreq_int_reg_1(0)
    );
\up_dma_y_length[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => up_waddr(1),
      I1 => up_waddr(0),
      O => \up_dma_y_length[23]_i_2_n_0\
    );
\up_irq_mask[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => up_waddr(6),
      I2 => up_waddr(0),
      I3 => \up_irq_mask[1]_i_3_n_0\,
      I4 => \up_irq_mask[1]_i_4_n_0\,
      I5 => up_waddr(5),
      O => up_wreq_int_reg_2
    );
\up_irq_mask[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(7),
      I1 => up_waddr(8),
      O => \up_irq_mask[1]_i_3_n_0\
    );
\up_irq_mask[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(3),
      I1 => up_waddr(4),
      I2 => up_waddr(1),
      I3 => up_waddr(2),
      O => \up_irq_mask[1]_i_4_n_0\
    );
\up_irq_source[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => up_sot,
      I1 => \up_irq_source_clear1__6\,
      I2 => \^q\(0),
      I3 => \up_irq_source_reg[1]\(0),
      O => D(0)
    );
\up_irq_source[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFF20202020"
    )
        port map (
      I0 => up_req_eot,
      I1 => up_dma_cyclic,
      I2 => E(0),
      I3 => \up_irq_source_clear1__6\,
      I4 => \^q\(1),
      I5 => \up_irq_source_reg[1]\(1),
      O => D(1)
    );
\up_irq_source[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_irq_source[1]_i_3_n_0\,
      I2 => up_waddr(2),
      I3 => up_waddr(5),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(0),
      O => \up_irq_source_clear1__6\
    );
\up_irq_source[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(1),
      I3 => up_waddr(6),
      O => \up_irq_source[1]_i_3_n_0\
    );
up_rack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA0000AAAA0000"
    )
        port map (
      I0 => up_rack,
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => \up_rcount_reg_n_0_[1]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => p_0_in6_in,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rack_s
    );
up_rack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rack_s,
      Q => up_rack_d,
      R => SR(0)
    );
\up_raddr_int[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_rsel_reg_n_0,
      O => p_1_in
    );
\up_raddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(0),
      Q => \^up_raddr_int_reg[4]_0\(0),
      R => SR(0)
    );
\up_raddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(1),
      Q => \^up_raddr_int_reg[4]_0\(1),
      R => SR(0)
    );
\up_raddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(2),
      Q => \^up_raddr_int_reg[4]_0\(2),
      R => SR(0)
    );
\up_raddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(3),
      Q => \^up_raddr_int_reg[4]_0\(3),
      R => SR(0)
    );
\up_raddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(4),
      Q => \^up_raddr_int_reg[4]_0\(4),
      R => SR(0)
    );
\up_raddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(5),
      Q => up_raddr(5),
      R => SR(0)
    );
\up_raddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(6),
      Q => up_raddr(6),
      R => SR(0)
    );
\up_raddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(7),
      Q => up_raddr(7),
      R => SR(0)
    );
\up_raddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(8),
      Q => up_raddr(8),
      R => SR(0)
    );
\up_rcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[0]\,
      I1 => p_0_in6_in,
      I2 => up_rack,
      O => \up_rcount[0]_i_1_n_0\
    );
\up_rcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => up_rack,
      O => \up_rcount[1]_i_1_n_0\
    );
\up_rcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007080"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[2]\,
      I4 => up_rack,
      O => \up_rcount[2]_i_1_n_0\
    );
\up_rcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[3]_i_1_n_0\
    );
\up_rcount[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \^up_rreq\,
      O => \up_rcount[4]_i_1_n_0\
    );
\up_rcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF7FFFFFFF"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[4]_i_2_n_0\
    );
\up_rcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[0]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[0]\,
      R => SR(0)
    );
\up_rcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[1]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[1]\,
      R => SR(0)
    );
\up_rcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[2]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[2]\,
      R => SR(0)
    );
\up_rcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[3]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[3]\,
      R => SR(0)
    );
\up_rcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[4]_i_2_n_0\,
      Q => p_0_in6_in,
      R => SR(0)
    );
\up_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[0]_i_2_n_0\,
      I1 => \up_rdata[0]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(0),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(0),
      O => \up_scratch_reg[31]\(0)
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF40FFC0AF40FF"
    )
        port map (
      I0 => \up_rdata_reg[0]\,
      I1 => \up_irq_source_reg[1]\(0),
      I2 => \up_rdata[30]_i_3_n_0\,
      I3 => \^up_raddr_int_reg[7]_0\,
      I4 => \^up_raddr_int_reg[3]_0\,
      I5 => \up_rdata_reg[31]\(0),
      O => \up_rdata[0]_i_2_n_0\
    );
\up_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dbg_ids0(0),
      I1 => dbg_status(0),
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => ctrl_enable_reg,
      I4 => \^up_raddr_int_reg[3]_0\,
      O => \up_rdata[0]_i_3_n_0\
    );
\up_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \up_rdata[0]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata[0]_i_6_n_0\,
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \up_rdata[0]_i_7_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(0)
    );
\up_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => \up_rdata[0]_i_8_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \up_rdata[1]_i_4_0\(4),
      I5 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[0]_i_5_n_0\
    );
\up_rdata[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => up_transfer_id(0),
      O => \up_rdata[0]_i_6_n_0\
    );
\up_rdata[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \up_rdata[3]_i_4_2\(0),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(4),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[0]_i_4_0\,
      O => \up_rdata[0]_i_7_n_0\
    );
\up_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05004F4F05004A4A"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[31]_i_6_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \up_rdata_reg[31]_0\(0),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      I5 => up_dma_req_valid,
      O => \up_rdata[0]_i_8_n_0\
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[10]_i_2_n_0\,
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(10),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(6),
      O => \up_scratch_reg[31]\(10)
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(10),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[10]_i_2_n_0\
    );
\up_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[10]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[10]_1\,
      I3 => \up_rdata[10]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(10)
    );
\up_rdata[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(7),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[10]_i_7_n_0\
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[11]_i_2_n_0\,
      I1 => \up_rdata_reg[11]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(11),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(7),
      O => \up_scratch_reg[31]\(11)
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(11),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[11]_i_2_n_0\
    );
\up_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[11]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[11]_1\,
      I3 => \up_rdata[11]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(11)
    );
\up_rdata[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(8),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[11]_i_7_n_0\
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[12]_i_2_n_0\,
      I1 => \up_rdata[12]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[12]_i_4_n_0\,
      O => \up_scratch_reg[31]\(12)
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(12),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[12]_i_2_n_0\
    );
\up_rdata[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(0),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[12]_i_3_n_0\
    );
\up_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(9),
      I5 => \up_rdata_reg[12]\,
      O => \up_rdata[12]_i_4_n_0\
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[13]_i_2_n_0\,
      I1 => \up_rdata[13]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[13]_i_4_n_0\,
      O => \up_scratch_reg[31]\(13)
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(13),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[13]_i_2_n_0\
    );
\up_rdata[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(1),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[13]_i_3_n_0\
    );
\up_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(10),
      I5 => \up_rdata_reg[13]\,
      O => \up_rdata[13]_i_4_n_0\
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[14]_i_2_n_0\,
      I1 => \up_rdata[14]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[14]_i_4_n_0\,
      O => \up_scratch_reg[31]\(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(14),
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(2),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[14]_i_3_n_0\
    );
\up_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(11),
      I5 => \up_rdata_reg[14]\,
      O => \up_rdata[14]_i_4_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[15]_i_2_n_0\,
      I1 => \up_rdata[15]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[15]_i_4_n_0\,
      O => \up_scratch_reg[31]\(15)
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(15),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[15]_i_2_n_0\
    );
\up_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(3),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[15]_i_3_n_0\
    );
\up_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(12),
      I5 => \up_rdata_reg[15]\,
      O => \up_rdata[15]_i_4_n_0\
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[16]_i_2_n_0\,
      I1 => \up_rdata_reg[16]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(16),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(8),
      O => \up_scratch_reg[31]\(16)
    );
\up_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(16),
      O => \up_rdata[16]_i_2_n_0\
    );
\up_rdata[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[16]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[16]_1\,
      I3 => \up_rdata[16]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(16)
    );
\up_rdata[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(13),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[16]_i_7_n_0\
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[17]_i_2_n_0\,
      I1 => \up_rdata_reg[17]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(17),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(9),
      O => \up_scratch_reg[31]\(17)
    );
\up_rdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(17),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[17]_i_2_n_0\
    );
\up_rdata[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[17]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[17]_1\,
      I3 => \up_rdata[17]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(17)
    );
\up_rdata[17]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(14),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[17]_i_7_n_0\
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[18]_i_2_n_0\,
      I1 => \up_rdata_reg[18]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(18),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(10),
      O => \up_scratch_reg[31]\(18)
    );
\up_rdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5313"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(18),
      O => \up_rdata[18]_i_2_n_0\
    );
\up_rdata[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[18]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[18]_1\,
      I3 => \up_rdata[18]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(18)
    );
\up_rdata[18]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(15),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[18]_i_7_n_0\
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[19]_i_2_n_0\,
      I1 => \up_rdata_reg[19]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(19),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(11),
      O => \up_scratch_reg[31]\(19)
    );
\up_rdata[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(19),
      O => \up_rdata[19]_i_2_n_0\
    );
\up_rdata[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[19]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[19]_1\,
      I3 => \up_rdata[19]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(19)
    );
\up_rdata[19]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(16),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[19]_i_7_n_0\
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[1]_i_2_n_0\,
      I1 => \up_rdata[1]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(1),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(1),
      O => \up_scratch_reg[31]\(1)
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFA040F0C0A040F0"
    )
        port map (
      I0 => \up_rdata_reg[1]\,
      I1 => \up_irq_source_reg[1]\(1),
      I2 => \up_rdata[30]_i_3_n_0\,
      I3 => \^up_raddr_int_reg[7]_0\,
      I4 => \^up_raddr_int_reg[3]_0\,
      I5 => \up_rdata_reg[31]\(1),
      O => \up_rdata[1]_i_2_n_0\
    );
\up_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dbg_ids0(1),
      I1 => dbg_status(1),
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => ctrl_pause,
      I4 => \^up_raddr_int_reg[3]_0\,
      O => \up_rdata[1]_i_3_n_0\
    );
\up_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \up_rdata[1]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata[1]_i_6_n_0\,
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \up_rdata[1]_i_7_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(1)
    );
\up_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => \up_rdata[1]_i_8_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \up_rdata[1]_i_4_0\(5),
      I5 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[1]_i_5_n_0\
    );
\up_rdata[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => up_transfer_id(1),
      O => \up_rdata[1]_i_6_n_0\
    );
\up_rdata[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \up_rdata[3]_i_4_2\(1),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(4),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[1]_i_4_1\,
      O => \up_rdata[1]_i_7_n_0\
    );
\up_rdata[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"054A004A"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[31]_i_6_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \up_rdata_reg[31]_0\(1),
      O => \up_rdata[1]_i_8_n_0\
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[20]_i_2_n_0\,
      I1 => \up_rdata[20]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[20]_i_4_n_0\,
      O => \up_scratch_reg[31]\(20)
    );
\up_rdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(20),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[20]_i_2_n_0\
    );
\up_rdata[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(4),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[20]_i_3_n_0\
    );
\up_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(17),
      I5 => \up_rdata_reg[20]\,
      O => \up_rdata[20]_i_4_n_0\
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[21]_i_2_n_0\,
      I1 => \up_rdata[21]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[21]_i_4_n_0\,
      O => \up_scratch_reg[31]\(21)
    );
\up_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(21),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[21]_i_2_n_0\
    );
\up_rdata[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(5),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[21]_i_3_n_0\
    );
\up_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(18),
      I5 => \up_rdata_reg[21]\,
      O => \up_rdata[21]_i_4_n_0\
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[22]_i_2_n_0\,
      I1 => \up_rdata[22]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[22]_i_4_n_0\,
      O => \up_scratch_reg[31]\(22)
    );
\up_rdata[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(22),
      O => \up_rdata[22]_i_2_n_0\
    );
\up_rdata[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(6),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[22]_i_3_n_0\
    );
\up_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(19),
      I5 => \up_rdata_reg[22]\,
      O => \up_rdata[22]_i_4_n_0\
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[23]_i_2_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[23]_i_4_n_0\,
      O => \up_scratch_reg[31]\(23)
    );
\up_rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(23),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[23]_i_2_n_0\
    );
\up_rdata[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(7),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[23]_i_3_n_0\
    );
\up_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(20),
      I5 => \up_rdata_reg[23]\,
      O => \up_rdata[23]_i_4_n_0\
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[24]_i_2_n_0\,
      I1 => \up_rdata_reg[24]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(24),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(8),
      O => \up_scratch_reg[31]\(24)
    );
\up_rdata[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(24),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[24]_i_2_n_0\
    );
\up_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028080000"
    )
        port map (
      I0 => \up_rdata_reg[24]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \up_rdata_reg[28]\(21),
      I4 => \up_rdata[27]_i_6_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(24)
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[25]_i_2_n_0\,
      I1 => \up_rdata_reg[25]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(25),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(9),
      O => \up_scratch_reg[31]\(25)
    );
\up_rdata[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(25),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[25]_i_2_n_0\
    );
\up_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028080000"
    )
        port map (
      I0 => \up_rdata_reg[25]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \up_rdata_reg[28]\(22),
      I4 => \up_rdata[27]_i_6_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(25)
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[26]_i_2_n_0\,
      I1 => \up_rdata_reg[26]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(26),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(10),
      O => \up_scratch_reg[31]\(26)
    );
\up_rdata[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(26),
      O => \up_rdata[26]_i_2_n_0\
    );
\up_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028080000"
    )
        port map (
      I0 => \up_rdata_reg[26]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \up_rdata_reg[28]\(23),
      I4 => \up_rdata[27]_i_6_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(26)
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(27),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(11),
      O => \up_scratch_reg[31]\(27)
    );
\up_rdata[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(27),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[27]_i_2_n_0\
    );
\up_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028080000"
    )
        port map (
      I0 => \up_rdata_reg[27]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \up_rdata_reg[28]\(24),
      I4 => \up_rdata[27]_i_6_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(27)
    );
\up_rdata[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[27]_i_6_n_0\
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[28]_i_2_n_0\,
      I1 => \up_rdata[28]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[28]_i_5_n_0\,
      O => \up_scratch_reg[31]\(28)
    );
\up_rdata[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(28),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[28]_i_2_n_0\
    );
\up_rdata[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_src_axi_araddr(8),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[28]_i_3_n_0\
    );
\up_rdata[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => up_raddr(8),
      I1 => up_raddr(7),
      I2 => up_raddr(5),
      I3 => up_raddr(6),
      O => \up_rdata[28]_i_4_n_0\
    );
\up_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044100000000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \up_rdata_reg[28]\(25),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      I5 => \up_rdata_reg[28]_0\,
      O => \up_rdata[28]_i_5_n_0\
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_rdata_reg[31]\(29),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => data10(29),
      O => \up_scratch_reg[31]\(29)
    );
\up_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata[1]_i_4_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[31]_0\(3),
      I3 => \up_rdata[30]_i_17_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(29)
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[2]_i_2_n_0\,
      I1 => \up_rdata[2]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(2),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(2),
      O => \up_scratch_reg[31]\(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(2),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^up_raddr_int_reg[7]_0\,
      I1 => dbg_status(2),
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => dbg_ids0(2),
      O => \up_rdata[2]_i_3_n_0\
    );
\up_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E222"
    )
        port map (
      I0 => \up_rdata[2]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[2]\,
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(2)
    );
\up_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000A0A800080"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \up_rdata_reg[31]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(4),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \up_rdata[31]_i_6_0\(2),
      I5 => \^up_raddr_int_reg[4]_0\(2),
      O => \up_rdata[2]_i_5_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F008003000080030"
    )
        port map (
      I0 => \up_rdata_reg[31]\(30),
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \up_rdata[30]_i_3_n_0\,
      I3 => \up_rdata[30]_i_4_n_0\,
      I4 => \^up_raddr_int_reg[3]_0\,
      I5 => data10(30),
      O => \up_scratch_reg[31]\(30)
    );
\up_rdata[30]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC37"
    )
        port map (
      I0 => up_raddr(8),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      O => \up_rdata[30]_i_10_n_0\
    );
\up_rdata[30]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => up_raddr(5),
      I3 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[30]_i_11_n_0\
    );
\up_rdata[30]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => up_raddr(8),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(0),
      O => \up_rdata[30]_i_12_n_0\
    );
\up_rdata[30]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => up_raddr(7),
      I2 => up_raddr(6),
      I3 => up_raddr(5),
      O => \up_rdata[30]_i_13_n_0\
    );
\up_rdata[30]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => up_raddr(8),
      I1 => up_raddr(7),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => up_raddr(6),
      I5 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[30]_i_14_n_0\
    );
\up_rdata[30]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDEFFFD"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(0),
      I1 => up_raddr(6),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => up_raddr(8),
      I5 => up_raddr(7),
      O => \up_rdata[30]_i_15_n_0\
    );
\up_rdata[30]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3F0B0"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => up_raddr(5),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[30]_i_16_n_0\
    );
\up_rdata[30]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[30]_i_17_n_0\
    );
\up_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015100000000"
    )
        port map (
      I0 => up_raddr(7),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => up_raddr(8),
      I3 => up_raddr(5),
      I4 => up_raddr(6),
      I5 => \up_rdata[30]_i_7_n_0\,
      O => \^up_raddr_int_reg[7]_0\
    );
\up_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \up_rdata[30]_i_8_n_0\,
      I1 => up_raddr(7),
      I2 => \up_rdata[30]_i_9_n_0\,
      I3 => up_raddr(6),
      I4 => up_raddr(5),
      I5 => \up_rdata[30]_i_10_n_0\,
      O => \up_rdata[30]_i_3_n_0\
    );
\up_rdata[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \up_rdata[30]_i_11_n_0\,
      I1 => \up_rdata[30]_i_12_n_0\,
      I2 => \up_rdata[30]_i_13_n_0\,
      I3 => \up_rdata[30]_i_14_n_0\,
      O => \up_rdata[30]_i_4_n_0\
    );
\up_rdata[30]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \up_rdata[30]_i_15_n_0\,
      I3 => \up_rdata[30]_i_16_n_0\,
      O => \^up_raddr_int_reg[3]_0\
    );
\up_rdata[30]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata[1]_i_4_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[31]_0\(4),
      I3 => \up_rdata[30]_i_17_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(30)
    );
\up_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000A000A406"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(0),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => up_raddr(8),
      I5 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[30]_i_7_n_0\
    );
\up_rdata[30]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B5"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => up_raddr(8),
      O => \up_rdata[30]_i_8_n_0\
    );
\up_rdata[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF6F66666666"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => up_raddr(8),
      I3 => \^up_raddr_int_reg[4]_0\(0),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      I5 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[30]_i_9_n_0\
    );
\up_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_rdata_reg[31]\(31),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => data10(31),
      O => \up_scratch_reg[31]\(31)
    );
\up_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[31]_i_2_n_0\
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      O => \up_rdata[31]_i_3_n_0\
    );
\up_rdata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \up_rdata[30]_i_4_n_0\,
      O => \up_rdata[31]_i_4_n_0\
    );
\up_rdata[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \up_rdata[30]_i_4_n_0\,
      I1 => \up_rdata[30]_i_3_n_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      O => \up_rdata[31]_i_5_n_0\
    );
\up_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B380000"
    )
        port map (
      I0 => \up_rdata[1]_i_4_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \up_rdata_reg[31]_0\(5),
      I4 => \up_rdata[31]_i_7_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(31)
    );
\up_rdata[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02200200"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \up_rdata[31]_i_6_0\(3),
      O => \up_rdata[31]_i_7_n_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[3]_i_2_n_0\,
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(3),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(3),
      O => \up_scratch_reg[31]\(3)
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(3),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[3]_i_2_n_0\
    );
\up_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \up_rdata[3]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata[3]_i_6_n_0\,
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \up_rdata[3]_i_7_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => data10(3)
    );
\up_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B888888888888"
    )
        port map (
      I0 => \up_rdata[3]_i_4_0\,
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(4),
      I4 => \^up_raddr_int_reg[4]_0\(3),
      I5 => \up_rdata[3]_i_4_1\(0),
      O => \up_rdata[3]_i_5_n_0\
    );
\up_rdata[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03080008"
    )
        port map (
      I0 => \up_rdata_reg[28]\(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(4),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \up_rdata[3]_i_4_3\(0),
      O => \up_rdata[3]_i_6_n_0\
    );
\up_rdata[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000808"
    )
        port map (
      I0 => \up_rdata[3]_i_4_2\(2),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \up_rdata[1]_i_4_0\(0),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[3]_i_7_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[4]_i_2_n_0\,
      I1 => \up_rdata_reg[4]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[4]_i_4_n_0\,
      O => \up_scratch_reg[31]\(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(4),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(1),
      I5 => \up_rdata_reg[4]_0\,
      O => \up_rdata[4]_i_4_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[5]_i_2_n_0\,
      I1 => \up_rdata_reg[5]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[5]_i_4_n_0\,
      O => \up_scratch_reg[31]\(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5111"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(5),
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(2),
      I5 => \up_rdata_reg[5]_0\,
      O => \up_rdata[5]_i_4_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[6]_i_2_n_0\,
      I1 => \up_rdata_reg[6]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[6]_i_4_n_0\,
      O => \up_scratch_reg[31]\(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5313"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(6),
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(3),
      I5 => \up_rdata_reg[6]_0\,
      O => \up_rdata[6]_i_4_n_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[7]_i_2_n_0\,
      I1 => \up_rdata[7]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      I5 => \up_rdata[7]_i_4_n_0\,
      O => \up_scratch_reg[31]\(7)
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(7),
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[30]_i_3_n_0\,
      O => \up_rdata[7]_i_2_n_0\
    );
\up_rdata[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \up_rdata_reg[7]_0\,
      I1 => \^up_raddr_int_reg[3]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[7]_i_3_n_0\
    );
\up_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1124102400000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata_reg[28]\(4),
      I5 => \up_rdata_reg[7]\,
      O => \up_rdata[7]_i_4_n_0\
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[8]_i_2_n_0\,
      I1 => \up_rdata_reg[8]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(8),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(4),
      O => \up_scratch_reg[31]\(8)
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(8),
      O => \up_rdata[8]_i_2_n_0\
    );
\up_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[8]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[8]_1\,
      I3 => \up_rdata[8]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(8)
    );
\up_rdata[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(5),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[8]_i_7_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[9]_i_2_n_0\,
      I1 => \up_rdata_reg[9]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(9),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(5),
      O => \up_scratch_reg[31]\(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5111"
    )
        port map (
      I0 => \up_rdata[30]_i_3_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[3]_0\,
      I3 => \up_rdata_reg[31]\(9),
      O => \up_rdata[9]_i_2_n_0\
    );
\up_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \up_rdata_reg[9]_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[9]_1\,
      I3 => \up_rdata[9]_i_7_n_0\,
      I4 => \up_rdata[28]_i_4_n_0\,
      O => data10(9)
    );
\up_rdata[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003003C8"
    )
        port map (
      I0 => \up_rdata_reg[28]\(6),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \^up_raddr_int_reg[4]_0\(4),
      O => \up_rdata[9]_i_7_n_0\
    );
\up_rdata_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(0),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(0)
    );
\up_rdata_d[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(10),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(10)
    );
\up_rdata_d[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(11),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(11)
    );
\up_rdata_d[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(12),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(12)
    );
\up_rdata_d[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(13),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[13]_i_1_n_0\
    );
\up_rdata_d[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(14),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(14)
    );
\up_rdata_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(15),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(15)
    );
\up_rdata_d[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(16),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(16)
    );
\up_rdata_d[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(17),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[17]_i_1_n_0\
    );
\up_rdata_d[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(18),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(18)
    );
\up_rdata_d[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(19),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(19)
    );
\up_rdata_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(1),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[1]_i_1_n_0\
    );
\up_rdata_d[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(20),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[20]_i_1_n_0\
    );
\up_rdata_d[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(21),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(21)
    );
\up_rdata_d[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(22),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[22]_i_1_n_0\
    );
\up_rdata_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(23),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(23)
    );
\up_rdata_d[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(24),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[24]_i_1_n_0\
    );
\up_rdata_d[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(25),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(25)
    );
\up_rdata_d[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(26),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(26)
    );
\up_rdata_d[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(27),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(27)
    );
\up_rdata_d[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(28),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(28)
    );
\up_rdata_d[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(29),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(2),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(2)
    );
\up_rdata_d[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(30),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(30)
    );
\up_rdata_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(31),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(31)
    );
\up_rdata_d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(3),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(3)
    );
\up_rdata_d[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(4),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[4]_i_1_n_0\
    );
\up_rdata_d[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(5),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(5)
    );
\up_rdata_d[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(6),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[6]_i_1_n_0\
    );
\up_rdata_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(7),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(7)
    );
\up_rdata_d[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(8),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[8]_i_1_n_0\
    );
\up_rdata_d[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(9),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(9)
    );
\up_rdata_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(0),
      Q => up_rdata_d(0),
      R => SR(0)
    );
\up_rdata_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(10),
      Q => up_rdata_d(10),
      R => SR(0)
    );
\up_rdata_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(11),
      Q => up_rdata_d(11),
      R => SR(0)
    );
\up_rdata_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(12),
      Q => up_rdata_d(12),
      R => SR(0)
    );
\up_rdata_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[13]_i_1_n_0\,
      Q => up_rdata_d(13),
      R => SR(0)
    );
\up_rdata_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(14),
      Q => up_rdata_d(14),
      R => SR(0)
    );
\up_rdata_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(15),
      Q => up_rdata_d(15),
      R => SR(0)
    );
\up_rdata_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(16),
      Q => up_rdata_d(16),
      R => SR(0)
    );
\up_rdata_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[17]_i_1_n_0\,
      Q => up_rdata_d(17),
      R => SR(0)
    );
\up_rdata_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(18),
      Q => up_rdata_d(18),
      R => SR(0)
    );
\up_rdata_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(19),
      Q => up_rdata_d(19),
      R => SR(0)
    );
\up_rdata_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[1]_i_1_n_0\,
      Q => up_rdata_d(1),
      R => SR(0)
    );
\up_rdata_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[20]_i_1_n_0\,
      Q => up_rdata_d(20),
      R => SR(0)
    );
\up_rdata_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(21),
      Q => up_rdata_d(21),
      R => SR(0)
    );
\up_rdata_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[22]_i_1_n_0\,
      Q => up_rdata_d(22),
      R => SR(0)
    );
\up_rdata_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(23),
      Q => up_rdata_d(23),
      R => SR(0)
    );
\up_rdata_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[24]_i_1_n_0\,
      Q => up_rdata_d(24),
      R => SR(0)
    );
\up_rdata_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(25),
      Q => up_rdata_d(25),
      R => SR(0)
    );
\up_rdata_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(26),
      Q => up_rdata_d(26),
      R => SR(0)
    );
\up_rdata_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(27),
      Q => up_rdata_d(27),
      R => SR(0)
    );
\up_rdata_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(28),
      Q => up_rdata_d(28),
      R => SR(0)
    );
\up_rdata_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[29]_i_1_n_0\,
      Q => up_rdata_d(29),
      R => SR(0)
    );
\up_rdata_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(2),
      Q => up_rdata_d(2),
      R => SR(0)
    );
\up_rdata_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(30),
      Q => up_rdata_d(30),
      R => SR(0)
    );
\up_rdata_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(31),
      Q => up_rdata_d(31),
      R => SR(0)
    );
\up_rdata_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(3),
      Q => up_rdata_d(3),
      R => SR(0)
    );
\up_rdata_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[4]_i_1_n_0\,
      Q => up_rdata_d(4),
      R => SR(0)
    );
\up_rdata_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(5),
      Q => up_rdata_d(5),
      R => SR(0)
    );
\up_rdata_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[6]_i_1_n_0\,
      Q => up_rdata_d(6),
      R => SR(0)
    );
\up_rdata_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(7),
      Q => up_rdata_d(7),
      R => SR(0)
    );
\up_rdata_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[8]_i_1_n_0\,
      Q => up_rdata_d(8),
      R => SR(0)
    );
\up_rdata_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(9),
      Q => up_rdata_d(9),
      R => SR(0)
    );
up_rreq_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_aresetn,
      I2 => up_rsel_reg_n_0,
      O => up_rreq_int_i_1_n_0
    );
up_rreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq_int_i_1_n_0,
      Q => \^up_rreq\,
      R => '0'
    );
up_rsel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FAA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^up_axi_rvalid_int_reg_0\,
      I2 => s_axi_rready,
      I3 => up_rsel_reg_n_0,
      O => up_rsel_i_1_n_0
    );
up_rsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rsel_i_1_n_0,
      Q => up_rsel_reg_n_0,
      R => SR(0)
    );
\up_scratch[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_scratch[31]_i_2_n_0\,
      I2 => up_waddr(2),
      I3 => up_waddr(0),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(1),
      O => up_wreq_int_reg_3(0)
    );
\up_scratch[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(5),
      I3 => up_waddr(6),
      O => \up_scratch[31]_i_2_n_0\
    );
\up_scratch[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(4),
      I1 => up_waddr(3),
      O => \up_scratch[31]_i_3_n_0\
    );
up_wack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA0000AAAA0000"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => p_0_in7_in,
      I5 => \up_wcount_reg_n_0_[3]\,
      O => up_wack_s_0
    );
up_wack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wack_s_0,
      Q => up_wack_d,
      R => SR(0)
    );
\up_waddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(0),
      Q => up_waddr(0),
      R => SR(0)
    );
\up_waddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(1),
      Q => up_waddr(1),
      R => SR(0)
    );
\up_waddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(2),
      Q => up_waddr(2),
      R => SR(0)
    );
\up_waddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(3),
      Q => up_waddr(3),
      R => SR(0)
    );
\up_waddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(4),
      Q => up_waddr(4),
      R => SR(0)
    );
\up_waddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(5),
      Q => up_waddr(5),
      R => SR(0)
    );
\up_waddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(6),
      Q => up_waddr(6),
      R => SR(0)
    );
\up_waddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(7),
      Q => up_waddr(7),
      R => SR(0)
    );
\up_waddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(8),
      Q => up_waddr(8),
      R => SR(0)
    );
\up_wcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[0]\,
      I1 => p_0_in7_in,
      I2 => up_wack,
      O => \up_wcount[0]_i_1_n_0\
    );
\up_wcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[1]\,
      I1 => \up_wcount_reg_n_0_[0]\,
      I2 => p_0_in7_in,
      I3 => up_wack,
      O => \up_wcount[1]_i_1_n_0\
    );
\up_wcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007080"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[1]\,
      I1 => \up_wcount_reg_n_0_[0]\,
      I2 => p_0_in7_in,
      I3 => \up_wcount_reg_n_0_[2]\,
      I4 => up_wack,
      O => \up_wcount[2]_i_1_n_0\
    );
\up_wcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[1]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => p_0_in7_in,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => up_wack,
      O => \up_wcount[3]_i_1_n_0\
    );
\up_wcount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => up_wack_s,
      I1 => \^up_wreq\,
      I2 => p_0_in7_in,
      O => \up_wcount[4]_i_1_n_0\
    );
\up_wcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF7FFFFFFF"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[1]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => p_0_in7_in,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => up_wack,
      O => \up_wcount[4]_i_2_n_0\
    );
\up_wcount[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0A0A0A0A0A0A0"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => p_0_in7_in,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => \up_wcount_reg_n_0_[1]\,
      I5 => \up_wcount_reg_n_0_[3]\,
      O => up_wack_s
    );
\up_wcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[0]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[0]\,
      R => SR(0)
    );
\up_wcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[1]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[1]\,
      R => SR(0)
    );
\up_wcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[2]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[2]\,
      R => SR(0)
    );
\up_wcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[3]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[3]\,
      R => SR(0)
    );
\up_wcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[4]_i_2_n_0\,
      Q => p_0_in7_in,
      R => SR(0)
    );
\up_wdata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_wsel_reg_n_0,
      O => p_5_in
    );
\up_wdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\up_wdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(10),
      Q => \^q\(10),
      R => SR(0)
    );
\up_wdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(11),
      Q => \^q\(11),
      R => SR(0)
    );
\up_wdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(12),
      Q => \^q\(12),
      R => SR(0)
    );
\up_wdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(13),
      Q => \^q\(13),
      R => SR(0)
    );
\up_wdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(14),
      Q => \^q\(14),
      R => SR(0)
    );
\up_wdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(15),
      Q => \^q\(15),
      R => SR(0)
    );
\up_wdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(16),
      Q => \^q\(16),
      R => SR(0)
    );
\up_wdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(17),
      Q => \^q\(17),
      R => SR(0)
    );
\up_wdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(18),
      Q => \^q\(18),
      R => SR(0)
    );
\up_wdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(19),
      Q => \^q\(19),
      R => SR(0)
    );
\up_wdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\up_wdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(20),
      Q => \^q\(20),
      R => SR(0)
    );
\up_wdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(21),
      Q => \^q\(21),
      R => SR(0)
    );
\up_wdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(22),
      Q => \^q\(22),
      R => SR(0)
    );
\up_wdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(23),
      Q => \^q\(23),
      R => SR(0)
    );
\up_wdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(24),
      Q => \^q\(24),
      R => SR(0)
    );
\up_wdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(25),
      Q => \^q\(25),
      R => SR(0)
    );
\up_wdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(26),
      Q => \^q\(26),
      R => SR(0)
    );
\up_wdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(27),
      Q => \^q\(27),
      R => SR(0)
    );
\up_wdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(28),
      Q => \^q\(28),
      R => SR(0)
    );
\up_wdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(29),
      Q => \^q\(29),
      R => SR(0)
    );
\up_wdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\up_wdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(30),
      Q => \^q\(30),
      R => SR(0)
    );
\up_wdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(31),
      Q => \^q\(31),
      R => SR(0)
    );
\up_wdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\up_wdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\up_wdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\up_wdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\up_wdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
\up_wdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(8),
      Q => \^q\(8),
      R => SR(0)
    );
\up_wdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(9),
      Q => \^q\(9),
      R => SR(0)
    );
up_wreq_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_aresetn,
      I3 => up_wsel_reg_n_0,
      O => up_wreq_int_i_1_n_0
    );
up_wreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq_int_i_1_n_0,
      Q => \^up_wreq\,
      R => '0'
    );
up_wsel_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8888"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      I4 => up_wsel_reg_n_0,
      O => up_wsel_i_1_n_0
    );
up_wsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wsel_i_1_n_0,
      Q => up_wsel_reg_n_0,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \zed_axi_dmac_0_0_util_axis_fifo__parameterized0\ is
  port (
    \cdc_sync_fifo_ram_reg[0]_0\ : out STD_LOGIC;
    dest_req_valid : out STD_LOGIC;
    m_axis_raddr_reg_0 : out STD_LOGIC;
    m_axis_raddr_reg_1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    data_eot : in STD_LOGIC;
    active_reg : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    dest_fifo_last : in STD_LOGIC;
    src_req_dest_address_cur0 : in STD_LOGIC;
    src_dest_valid_hs : in STD_LOGIC;
    src_req_xlast_cur : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \zed_axi_dmac_0_0_util_axis_fifo__parameterized0\ : entity is "util_axis_fifo";
end \zed_axi_dmac_0_0_util_axis_fifo__parameterized0\;

architecture STRUCTURE of \zed_axi_dmac_0_0_util_axis_fifo__parameterized0\ is
  signal \cdc_sync_fifo_ram[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \^cdc_sync_fifo_ram_reg[0]_0\ : STD_LOGIC;
  signal m_axis_raddr_i_1_n_0 : STD_LOGIC;
  signal m_axis_raddr_reg_n_0 : STD_LOGIC;
  signal \s_axis_waddr_i_1__1_n_0\ : STD_LOGIC;
  signal s_axis_waddr_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acked[1]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cdc_sync_fifo_ram[0]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axis_waddr_i_1__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of src_dest_valid_hs_i_1 : label is "soft_lutpair54";
begin
  \cdc_sync_fifo_ram_reg[0]_0\ <= \^cdc_sync_fifo_ram_reg[0]_0\;
\acked[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => m_axis_raddr_reg_n_0,
      O => dest_req_valid
    );
active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F66FF66FF66FF66"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => data_eot,
      I3 => active_reg,
      I4 => m_axis_ready,
      I5 => dest_fifo_last,
      O => m_axis_raddr_reg_0
    );
\cdc_sync_fifo_ram[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFB8008"
    )
        port map (
      I0 => src_req_xlast_cur,
      I1 => src_dest_valid_hs,
      I2 => m_axis_raddr_reg_n_0,
      I3 => s_axis_waddr_reg_n_0,
      I4 => \^cdc_sync_fifo_ram_reg[0]_0\,
      O => \cdc_sync_fifo_ram[0]_i_1__1_n_0\
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \cdc_sync_fifo_ram[0]_i_1__1_n_0\,
      Q => \^cdc_sync_fifo_ram_reg[0]_0\,
      R => '0'
    );
m_axis_raddr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F0080FF0000"
    )
        port map (
      I0 => data_eot,
      I1 => m_axis_ready,
      I2 => dest_fifo_last,
      I3 => active_reg,
      I4 => s_axis_waddr_reg_n_0,
      I5 => m_axis_raddr_reg_n_0,
      O => m_axis_raddr_i_1_n_0
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => m_axis_raddr_i_1_n_0,
      Q => m_axis_raddr_reg_n_0,
      R => Q(0)
    );
\s_axis_waddr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => src_dest_valid_hs,
      I2 => s_axis_waddr_reg_n_0,
      O => \s_axis_waddr_i_1__1_n_0\
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => \s_axis_waddr_i_1__1_n_0\,
      Q => s_axis_waddr_reg_n_0,
      R => Q(0)
    );
src_dest_valid_hs_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => src_req_dest_address_cur0,
      I1 => m_axis_raddr_reg_n_0,
      I2 => s_axis_waddr_reg_n_0,
      I3 => src_dest_valid_hs,
      O => m_axis_raddr_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \zed_axi_dmac_0_0_util_axis_fifo__parameterized1\ is
  port (
    s_axis_waddr_reg_0 : out STD_LOGIC;
    m_axis_raddr_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \req_ready0__0\ : out STD_LOGIC;
    req_id0 : out STD_LOGIC;
    src_req_spltr_valid : out STD_LOGIC;
    \cdc_sync_fifo_ram_reg[0]_0\ : out STD_LOGIC;
    s_axis_waddr_reg_1 : out STD_LOGIC;
    \cdc_sync_fifo_ram_reg[34]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_raddr_reg_1 : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    dest_address1 : in STD_LOGIC;
    dma_req_valid : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[34]_1\ : in STD_LOGIC;
    out_last : in STD_LOGIC;
    src_req_dest_address_cur0 : in STD_LOGIC;
    src_req_xlast_cur : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \zed_axi_dmac_0_0_util_axis_fifo__parameterized1\ : entity is "util_axis_fifo";
end \zed_axi_dmac_0_0_util_axis_fifo__parameterized1\;

architecture STRUCTURE of \zed_axi_dmac_0_0_util_axis_fifo__parameterized1\ is
  signal \cdc_sync_fifo_ram[34]_i_1_n_0\ : STD_LOGIC;
  signal \cdc_sync_fifo_ram_reg_n_0_[0]\ : STD_LOGIC;
  signal \^m_axis_raddr_reg_0\ : STD_LOGIC;
  signal \s_axis_waddr_i_1__0_n_0\ : STD_LOGIC;
  signal \^s_axis_waddr_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_req[3]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of req_ready_i_2 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_axis_waddr_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \y_length[23]_i_1\ : label is "soft_lutpair77";
begin
  m_axis_raddr_reg_0 <= \^m_axis_raddr_reg_0\;
  s_axis_waddr_reg_0 <= \^s_axis_waddr_reg_0\;
\cdc_sync_fifo_ram[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[34]_1\,
      I1 => dma_req_valid,
      I2 => \^m_axis_raddr_reg_0\,
      I3 => \^s_axis_waddr_reg_0\,
      O => \cdc_sync_fifo_ram[34]_i_1_n_0\
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(0),
      Q => \cdc_sync_fifo_ram_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_fifo_ram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(6),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(5),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(7),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(6),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(8),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(7),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(9),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(8),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(10),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(9),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(11),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(10),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(12),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(11),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(13),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(12),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(14),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(13),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(15),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(14),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(16),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(15),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(17),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(16),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(18),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(17),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(19),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(18),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(20),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(19),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(21),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(20),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(22),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(21),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(23),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(22),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(24),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(23),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(25),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(24),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(26),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(25),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(27),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(26),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(28),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(27),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(29),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(28),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(30),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(29),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(1),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(2),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(3),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(4),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cdc_sync_fifo_ram[34]_i_1_n_0\,
      D => D(5),
      Q => \cdc_sync_fifo_ram_reg[34]_0\(4),
      R => '0'
    );
\last_req[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^s_axis_waddr_reg_0\,
      I1 => \^m_axis_raddr_reg_0\,
      I2 => \cdc_sync_fifo_ram_reg[34]_1\,
      I3 => dma_req_valid,
      O => req_id0
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => m_axis_raddr_reg_1,
      Q => \^m_axis_raddr_reg_0\,
      R => Q(0)
    );
out_req_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEFFAAAAFFFFAAAA"
    )
        port map (
      I0 => dest_address1,
      I1 => \^s_axis_waddr_reg_0\,
      I2 => \^m_axis_raddr_reg_0\,
      I3 => \cdc_sync_fifo_ram_reg[34]_1\,
      I4 => dma_req_valid,
      I5 => out_last,
      O => s_axis_waddr_reg_1
    );
req_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => out_last,
      I1 => dma_req_valid,
      I2 => \cdc_sync_fifo_ram_reg[34]_1\,
      I3 => \^m_axis_raddr_reg_0\,
      I4 => \^s_axis_waddr_reg_0\,
      O => \req_ready0__0\
    );
\s_axis_waddr_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => \^m_axis_raddr_reg_0\,
      I1 => dma_req_valid,
      I2 => \cdc_sync_fifo_ram_reg[34]_1\,
      I3 => \^s_axis_waddr_reg_0\,
      O => \s_axis_waddr_i_1__0_n_0\
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axis_waddr_i_1__0_n_0\,
      Q => \^s_axis_waddr_reg_0\,
      R => Q(0)
    );
src_req_xlast_cur_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg_n_0_[0]\,
      I1 => src_req_dest_address_cur0,
      I2 => src_req_xlast_cur,
      O => \cdc_sync_fifo_ram_reg[0]_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axis_waddr_reg_0\,
      I1 => \^m_axis_raddr_reg_0\,
      O => src_req_spltr_valid
    );
\y_length[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAEA"
    )
        port map (
      I0 => dest_address1,
      I1 => dma_req_valid,
      I2 => \cdc_sync_fifo_ram_reg[34]_1\,
      I3 => \^m_axis_raddr_reg_0\,
      I4 => \^s_axis_waddr_reg_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \zed_axi_dmac_0_0_util_axis_fifo__parameterized2\ is
  port (
    id0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    out_response_ready_reg : out STD_LOGIC;
    \cdc_sync_fifo_ram_reg[0]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    response_eot : in STD_LOGIC;
    dest_response_valid : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    dma_response_ready : in STD_LOGIC;
    response_valid_reg : in STD_LOGIC;
    response_dest_ready : in STD_LOGIC;
    req_eot : in STD_LOGIC;
    transfer_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    state_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \zed_axi_dmac_0_0_util_axis_fifo__parameterized2\ : entity is "util_axis_fifo";
end \zed_axi_dmac_0_0_util_axis_fifo__parameterized2\;

architecture STRUCTURE of \zed_axi_dmac_0_0_util_axis_fifo__parameterized2\ is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal cdc_sync_fifo_ram : STD_LOGIC;
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal dest_response_ready : STD_LOGIC;
  signal \m_axis_raddr_i_1__1_n_0\ : STD_LOGIC;
  signal m_axis_raddr_reg_n_0 : STD_LOGIC;
  signal response_dest_ready_i_2_n_0 : STD_LOGIC;
  signal response_dest_ready_i_3_n_0 : STD_LOGIC;
  signal response_dest_ready_i_4_n_0 : STD_LOGIC;
  signal response_dest_ready_i_5_n_0 : STD_LOGIC;
  signal response_dest_ready_i_6_n_0 : STD_LOGIC;
  signal response_dest_ready_i_7_n_0 : STD_LOGIC;
  signal s_axis_waddr_i_1_n_0 : STD_LOGIC;
  signal s_axis_waddr_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_raddr_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \req_eot_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of response_dest_ready_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \response_id[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of response_valid_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of s_axis_waddr_i_1 : label is "soft_lutpair67";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAB0FFF5BAB0AAA0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \FSM_sequential_state_reg[0]\(0),
      I3 => dma_response_ready,
      I4 => \FSM_sequential_state_reg[0]\(1),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => D(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000666F6666"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => m_axis_raddr_reg_n_0,
      I2 => transfer_id(1),
      I3 => transfer_id(0),
      I4 => \FSM_sequential_state_reg[0]_0\,
      I5 => \FSM_sequential_state_reg[0]\(0),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF5AFF5BBF5AFA0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => dma_response_ready,
      I3 => \FSM_sequential_state_reg[0]\(1),
      I4 => \FSM_sequential_state_reg[0]\(0),
      I5 => \FSM_sequential_state[1]_i_2_n_0\,
      O => D(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090909090909990"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => \FSM_sequential_state_reg[0]\(1),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => transfer_id(0),
      I5 => transfer_id(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E0A4E0A0A5F0A0A"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => dma_response_ready,
      I3 => \FSM_sequential_state_reg[0]\(1),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \FSM_sequential_state_reg[0]\(0),
      O => D(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090909090900090"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => \FSM_sequential_state_reg[0]\(2),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => transfer_id(0),
      I5 => transfer_id(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\cdc_sync_fifo_ram[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => dest_response_valid,
      O => cdc_sync_fifo_ram0
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => cdc_sync_fifo_ram0,
      D => response_eot,
      Q => cdc_sync_fifo_ram,
      R => '0'
    );
\m_axis_raddr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => response_dest_ready,
      I2 => m_axis_raddr_reg_n_0,
      O => \m_axis_raddr_i_1__1_n_0\
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \m_axis_raddr_i_1__1_n_0\,
      Q => m_axis_raddr_reg_n_0,
      R => Q(0)
    );
\req_eot_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => cdc_sync_fifo_ram,
      I1 => response_dest_ready,
      I2 => m_axis_raddr_reg_n_0,
      I3 => s_axis_waddr_reg_n_0,
      I4 => req_eot,
      O => \cdc_sync_fifo_ram_reg[0]_0\
    );
response_dest_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => response_dest_ready_i_2_n_0,
      I1 => response_dest_ready_i_3_n_0,
      I2 => response_dest_ready_i_4_n_0,
      O => \FSM_sequential_state_reg[2]\
    );
response_dest_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44004400005F000A"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => dma_response_ready,
      I3 => \FSM_sequential_state_reg[0]\(1),
      I4 => response_dest_ready_i_5_n_0,
      I5 => \FSM_sequential_state_reg[0]\(0),
      O => response_dest_ready_i_2_n_0
    );
response_dest_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA10FF55BA10AA00"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \FSM_sequential_state_reg[0]\(0),
      I3 => dma_response_ready,
      I4 => \FSM_sequential_state_reg[0]\(1),
      I5 => response_dest_ready_i_6_n_0,
      O => response_dest_ready_i_3_n_0
    );
response_dest_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1F5A5F5B1F5A5A0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\(2),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => dma_response_ready,
      I3 => \FSM_sequential_state_reg[0]\(1),
      I4 => \FSM_sequential_state_reg[0]\(0),
      I5 => response_dest_ready_i_7_n_0,
      O => response_dest_ready_i_4_n_0
    );
response_dest_ready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090909090900090"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => state_reg(0),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => transfer_id(0),
      I5 => transfer_id(1),
      O => response_dest_ready_i_5_n_0
    );
response_dest_ready_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005755"
    )
        port map (
      I0 => dest_response_ready,
      I1 => transfer_id(1),
      I2 => transfer_id(0),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => \FSM_sequential_state_reg[0]\(0),
      O => response_dest_ready_i_6_n_0
    );
response_dest_ready_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020202020AA20"
    )
        port map (
      I0 => dest_response_ready,
      I1 => \FSM_sequential_state_reg[0]\(2),
      I2 => \FSM_sequential_state_reg[0]\(1),
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => transfer_id(0),
      I5 => transfer_id(1),
      O => response_dest_ready_i_7_n_0
    );
response_dest_ready_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => m_axis_raddr_reg_n_0,
      O => dest_response_ready
    );
\response_id[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => dest_response_valid,
      I1 => m_axis_raddr_reg_n_0,
      I2 => s_axis_waddr_reg_n_0,
      O => id0
    );
response_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12FF1212"
    )
        port map (
      I0 => response_dest_ready_i_2_n_0,
      I1 => response_dest_ready_i_3_n_0,
      I2 => response_dest_ready_i_4_n_0,
      I3 => dma_response_ready,
      I4 => response_valid_reg,
      O => out_response_ready_reg
    );
s_axis_waddr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"72"
    )
        port map (
      I0 => dest_response_valid,
      I1 => m_axis_raddr_reg_n_0,
      I2 => s_axis_waddr_reg_n_0,
      O => s_axis_waddr_i_1_n_0
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => s_axis_waddr_i_1_n_0,
      Q => s_axis_waddr_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_burst_memory is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \src_id_reg[1]_0\ : out STD_LOGIC;
    \src_id_reg[0]_0\ : out STD_LOGIC;
    g0 : out STD_LOGIC;
    dest_fifo_valid : out STD_LOGIC;
    dest_fifo_last : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    \src_id_reg[2]_0\ : out STD_LOGIC;
    \src_throttled_request_id_reg[2]\ : out STD_LOGIC;
    \src_id_reg[3]_0\ : out STD_LOGIC;
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ram_reg : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_src_axi_rlast : in STD_LOGIC;
    \src_throttled_request_id_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_burst_memory : entity is "axi_dmac_burst_memory";
end zed_axi_dmac_0_0_axi_dmac_burst_memory;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_burst_memory is
  signal b2g1_return00_out : STD_LOGIC;
  signal b2g1_return01_out : STD_LOGIC;
  signal b2g2_return013_out : STD_LOGIC;
  signal b2g2_return015_out : STD_LOGIC;
  signal burst_len_mem_reg_0_7_0_4_n_5 : STD_LOGIC;
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dest_beat : STD_LOGIC;
  signal dest_beat_counter0 : STD_LOGIC;
  signal \dest_beat_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_burst_len_data : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal dest_burst_ready : STD_LOGIC;
  signal dest_burst_valid : STD_LOGIC;
  signal \^dest_fifo_last\ : STD_LOGIC;
  signal \^dest_fifo_valid\ : STD_LOGIC;
  signal \dest_id_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \dest_id_next[3]_i_5_n_0\ : STD_LOGIC;
  signal \dest_id_next[3]_i_6_n_0\ : STD_LOGIC;
  signal \dest_id_next_reg_n_0_[3]\ : STD_LOGIC;
  signal dest_id_reduced_msb : STD_LOGIC;
  signal dest_id_reduced_msb_next_i_1_n_0 : STD_LOGIC;
  signal dest_id_reduced_next : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dest_id_reduced_next_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dest_id_reg_n_0_[3]\ : STD_LOGIC;
  signal dest_last : STD_LOGIC;
  signal dest_mem_data_last_i_1_n_0 : STD_LOGIC;
  signal dest_mem_data_valid_i_1_n_0 : STD_LOGIC;
  signal dest_valid : STD_LOGIC;
  signal dest_valid_i_1_n_0 : STD_LOGIC;
  signal \^g0\ : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_16_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal src_data_request_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \src_id[0]_i_1_n_0\ : STD_LOGIC;
  signal src_id_reduced : STD_LOGIC_VECTOR ( 2 to 2 );
  signal src_id_reduced_msb_i_1_n_0 : STD_LOGIC;
  signal \^src_id_reg[0]_0\ : STD_LOGIC;
  signal \^src_id_reg[1]_0\ : STD_LOGIC;
  signal \^src_id_reg[2]_0\ : STD_LOGIC;
  signal NLW_burst_len_mem_reg_0_7_0_4_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_burst_len_mem_reg_0_7_0_4_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of burst_len_mem_reg_0_7_0_4 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of burst_len_mem_reg_0_7_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of burst_len_mem_reg_0_7_0_4 : label is 7;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of burst_len_mem_reg_0_7_0_4 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of burst_len_mem_reg_0_7_0_4 : label is 4;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dest_beat_counter[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dest_beat_counter[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dest_beat_counter[2]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \dest_beat_counter[3]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \dest_id_next[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \dest_id_next[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \dest_id_next[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \dest_id_next[3]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \dest_id_next[3]_i_4\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of dest_id_reduced_msb_next_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of dest_mem_data_valid_i_1 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of m_axis_valid_INST_0 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \src_beat_counter[0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \src_beat_counter[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \src_beat_counter[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \src_beat_counter[3]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \src_id[0]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \src_id[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \src_id[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \src_id[3]_i_2\ : label is "soft_lutpair84";
begin
  dest_fifo_last <= \^dest_fifo_last\;
  dest_fifo_valid <= \^dest_fifo_valid\;
  g0 <= \^g0\;
  \src_id_reg[0]_0\ <= \^src_id_reg[0]_0\;
  \src_id_reg[1]_0\ <= \^src_id_reg[1]_0\;
  \src_id_reg[2]_0\ <= \^src_id_reg[2]_0\;
burst_len_mem_reg_0_7_0_4: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => dest_id_reduced_next(2),
      ADDRA(1 downto 0) => dest_id_reduced_next_0(1 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => dest_id_reduced_next(2),
      ADDRB(1 downto 0) => dest_id_reduced_next_0(1 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => dest_id_reduced_next(2),
      ADDRC(1 downto 0) => dest_id_reduced_next_0(1 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => src_id_reduced(2),
      ADDRD(1) => \^src_id_reg[1]_0\,
      ADDRD(0) => \^src_id_reg[0]_0\,
      DIA(1 downto 0) => p_0_in_1(1 downto 0),
      DIB(1 downto 0) => p_0_in_1(3 downto 2),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dest_burst_len_data(4 downto 3),
      DOB(1 downto 0) => dest_burst_len_data(6 downto 5),
      DOC(1) => NLW_burst_len_mem_reg_0_7_0_4_DOC_UNCONNECTED(1),
      DOC(0) => burst_len_mem_reg_0_7_0_4_n_5,
      DOD(1 downto 0) => NLW_burst_len_mem_reg_0_7_0_4_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_src_axi_aclk,
      WE => \^g0\
    );
\dest_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      O => p_0_in(0)
    );
\dest_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      I1 => \dest_beat_counter_reg__0\(1),
      O => p_0_in(1)
    );
\dest_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      I1 => \dest_beat_counter_reg__0\(1),
      I2 => \dest_beat_counter_reg__0\(2),
      O => p_0_in(2)
    );
\dest_beat_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80AA0000"
    )
        port map (
      I0 => dest_last,
      I1 => m_ram_reg,
      I2 => m_axis_ready,
      I3 => \^dest_fifo_valid\,
      I4 => dest_valid,
      I5 => Q(0),
      O => dest_beat_counter0
    );
\dest_beat_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(1),
      I1 => \dest_beat_counter_reg__0\(0),
      I2 => \dest_beat_counter_reg__0\(2),
      I3 => \dest_beat_counter_reg__0\(3),
      O => p_0_in(3)
    );
\dest_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_beat,
      D => p_0_in(0),
      Q => \dest_beat_counter_reg__0\(0),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_beat,
      D => p_0_in(1),
      Q => \dest_beat_counter_reg__0\(1),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_beat,
      D => p_0_in(2),
      Q => \dest_beat_counter_reg__0\(2),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_beat,
      D => p_0_in(3),
      Q => \dest_beat_counter_reg__0\(3),
      R => dest_beat_counter0
    );
\dest_burst_len_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => dest_burst_len_data(3),
      Q => dest_burst_len(0),
      R => '0'
    );
\dest_burst_len_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => dest_burst_len_data(4),
      Q => dest_burst_len(1),
      R => '0'
    );
\dest_burst_len_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => dest_burst_len_data(5),
      Q => dest_burst_len(2),
      R => '0'
    );
\dest_burst_len_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => dest_burst_len_data(6),
      Q => dest_burst_len(3),
      R => '0'
    );
\dest_id[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AAFFFF"
    )
        port map (
      I0 => dest_last,
      I1 => m_ram_reg,
      I2 => m_axis_ready,
      I3 => \^dest_fifo_valid\,
      I4 => dest_valid,
      O => dest_burst_ready
    );
\dest_id_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => dest_id_reduced_next_0(1),
      I1 => \dest_id_next_reg_n_0_[3]\,
      I2 => p_16_in,
      O => \dest_id_next[0]_i_1_n_0\
    );
\dest_id_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => p_16_in,
      I1 => \dest_id_next_reg_n_0_[3]\,
      I2 => dest_id_reduced_next_0(1),
      I3 => dest_id_reduced_next_0(0),
      O => b2g2_return013_out
    );
\dest_id_next[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \dest_id_next_reg_n_0_[3]\,
      I1 => dest_id_reduced_next_0(0),
      I2 => p_16_in,
      I3 => dest_id_reduced_next_0(1),
      O => b2g2_return015_out
    );
\dest_id_next[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AAFFFF00000000"
    )
        port map (
      I0 => dest_last,
      I1 => m_ram_reg,
      I2 => m_axis_ready,
      I3 => \^dest_fifo_valid\,
      I4 => dest_valid,
      I5 => dest_burst_valid,
      O => id0
    );
\dest_id_next[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => dest_id_reduced_next_0(1),
      I1 => p_16_in,
      I2 => dest_id_reduced_next_0(0),
      I3 => \dest_id_next_reg_n_0_[3]\,
      O => p_1_in14_in
    );
\dest_id_next[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(3),
      I1 => dest_burst_len(3),
      I2 => \dest_id_next[3]_i_5_n_0\,
      O => dest_last
    );
\dest_id_next[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => dbg_ids0(3),
      I1 => \dest_id_next_reg_n_0_[3]\,
      I2 => \dest_id_next[3]_i_6_n_0\,
      O => dest_burst_valid
    );
\dest_id_next[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      I1 => dest_burst_len(0),
      I2 => dest_burst_len(2),
      I3 => \dest_beat_counter_reg__0\(2),
      I4 => dest_burst_len(1),
      I5 => \dest_beat_counter_reg__0\(1),
      O => \dest_id_next[3]_i_5_n_0\
    );
\dest_id_next[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^src_id_reg[0]_0\,
      I1 => dest_id_reduced_next_0(0),
      I2 => p_16_in,
      I3 => \^src_id_reg[2]_0\,
      I4 => dest_id_reduced_next_0(1),
      I5 => \^src_id_reg[1]_0\,
      O => \dest_id_next[3]_i_6_n_0\
    );
\dest_id_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => \dest_id_next[0]_i_1_n_0\,
      Q => dest_id_reduced_next_0(0),
      R => Q(0)
    );
\dest_id_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => b2g2_return013_out,
      Q => dest_id_reduced_next_0(1),
      R => Q(0)
    );
\dest_id_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => b2g2_return015_out,
      Q => p_16_in,
      R => Q(0)
    );
\dest_id_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => p_1_in14_in,
      Q => \dest_id_next_reg_n_0_[3]\,
      R => Q(0)
    );
dest_id_reduced_msb_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3ACA"
    )
        port map (
      I0 => dest_id_reduced_next_0(1),
      I1 => p_16_in,
      I2 => dest_id_reduced_next_0(0),
      I3 => \dest_id_next_reg_n_0_[3]\,
      O => dest_id_reduced_msb_next_i_1_n_0
    );
dest_id_reduced_msb_next_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => id0,
      D => dest_id_reduced_msb_next_i_1_n_0,
      Q => dest_id_reduced_next(2),
      R => Q(0)
    );
dest_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next(2),
      Q => dest_id_reduced_msb,
      R => '0'
    );
\dest_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next_0(0),
      Q => src_data_request_id(0),
      R => '0'
    );
\dest_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next_0(1),
      Q => src_data_request_id(1),
      R => '0'
    );
\dest_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_burst_ready,
      D => p_16_in,
      Q => p_0_in0_in,
      R => '0'
    );
\dest_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => dest_burst_ready,
      D => \dest_id_next_reg_n_0_[3]\,
      Q => \dest_id_reg_n_0_[3]\,
      R => '0'
    );
dest_mem_data_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCC0AAA"
    )
        port map (
      I0 => \^dest_fifo_last\,
      I1 => dest_last,
      I2 => m_ram_reg,
      I3 => m_axis_ready,
      I4 => dest_beat,
      I5 => Q(0),
      O => dest_mem_data_last_i_1_n_0
    );
dest_mem_data_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => dest_mem_data_last_i_1_n_0,
      Q => \^dest_fifo_last\,
      R => '0'
    );
dest_mem_data_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => dest_valid,
      I1 => m_ram_reg,
      I2 => m_axis_ready,
      I3 => \^dest_fifo_valid\,
      O => dest_mem_data_valid_i_1_n_0
    );
dest_mem_data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => dest_mem_data_valid_i_1_n_0,
      Q => \^dest_fifo_valid\,
      R => Q(0)
    );
dest_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F550000"
    )
        port map (
      I0 => dest_last,
      I1 => m_ram_reg,
      I2 => m_axis_ready,
      I3 => \^dest_fifo_valid\,
      I4 => dest_valid,
      I5 => dest_burst_valid,
      O => dest_valid_i_1_n_0
    );
dest_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => dest_valid_i_1_n_0,
      Q => dest_valid,
      R => Q(0)
    );
i_mem: entity work.zed_axi_dmac_0_0_ad_mem_asym
     port map (
      ADDRARDADDR(6) => dest_id_reduced_msb,
      ADDRARDADDR(5 downto 4) => src_data_request_id(1 downto 0),
      ADDRARDADDR(3 downto 0) => \dest_beat_counter_reg__0\(3 downto 0),
      ADDRBWRADDR(6) => src_id_reduced(2),
      ADDRBWRADDR(5) => \^src_id_reg[1]_0\,
      ADDRBWRADDR(4) => \^src_id_reg[0]_0\,
      ADDRBWRADDR(3 downto 0) => p_0_in_1(3 downto 0),
      E(0) => dest_beat,
      dest_valid => dest_valid,
      m_axis_aclk => m_axis_aclk,
      m_axis_data(63 downto 0) => m_axis_data(63 downto 0),
      m_axis_ready => m_axis_ready,
      m_ram_reg_0 => \^dest_fifo_valid\,
      m_ram_reg_1 => m_ram_reg,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_rdata(63 downto 0) => m_src_axi_rdata(63 downto 0),
      m_src_axi_rvalid => m_src_axi_rvalid
    );
m_axis_valid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dest_fifo_valid\,
      I1 => m_ram_reg,
      O => m_axis_valid
    );
\src_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_1(0),
      O => \p_0_in__0\(0)
    );
\src_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_1(0),
      I1 => p_0_in_1(1),
      O => \p_0_in__0\(1)
    );
\src_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in_1(0),
      I1 => p_0_in_1(1),
      I2 => p_0_in_1(2),
      O => \p_0_in__0\(2)
    );
\src_beat_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_0_in_1(1),
      I1 => p_0_in_1(0),
      I2 => p_0_in_1(2),
      I3 => p_0_in_1(3),
      O => \p_0_in__0\(3)
    );
\src_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => m_src_axi_rvalid,
      D => \p_0_in__0\(0),
      Q => p_0_in_1(0),
      R => SR(0)
    );
\src_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => m_src_axi_rvalid,
      D => \p_0_in__0\(1),
      Q => p_0_in_1(1),
      R => SR(0)
    );
\src_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => m_src_axi_rvalid,
      D => \p_0_in__0\(2),
      Q => p_0_in_1(2),
      R => SR(0)
    );
\src_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => m_src_axi_rvalid,
      D => \p_0_in__0\(3),
      Q => p_0_in_1(3),
      R => SR(0)
    );
\src_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^src_id_reg[1]_0\,
      I1 => dbg_ids0(3),
      I2 => \^src_id_reg[2]_0\,
      O => \src_id[0]_i_1_n_0\
    );
\src_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^src_id_reg[2]_0\,
      I1 => dbg_ids0(3),
      I2 => \^src_id_reg[1]_0\,
      I3 => \^src_id_reg[0]_0\,
      O => b2g1_return00_out
    );
\src_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => dbg_ids0(3),
      I1 => \^src_id_reg[0]_0\,
      I2 => \^src_id_reg[2]_0\,
      I3 => \^src_id_reg[1]_0\,
      O => b2g1_return01_out
    );
\src_id[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_src_axi_rvalid,
      I1 => m_src_axi_rlast,
      O => \^g0\
    );
\src_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^src_id_reg[1]_0\,
      I1 => \^src_id_reg[2]_0\,
      I2 => \^src_id_reg[0]_0\,
      I3 => dbg_ids0(3),
      O => p_3_in
    );
src_id_reduced_msb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555D515AAAAEA2A"
    )
        port map (
      I0 => \^src_id_reg[2]_0\,
      I1 => m_src_axi_rlast,
      I2 => m_src_axi_rvalid,
      I3 => \^src_id_reg[1]_0\,
      I4 => \^src_id_reg[0]_0\,
      I5 => dbg_ids0(3),
      O => src_id_reduced_msb_i_1_n_0
    );
src_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => src_id_reduced_msb_i_1_n_0,
      Q => src_id_reduced(2),
      R => Q(0)
    );
\src_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \^g0\,
      D => \src_id[0]_i_1_n_0\,
      Q => \^src_id_reg[0]_0\,
      R => Q(0)
    );
\src_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \^g0\,
      D => b2g1_return00_out,
      Q => \^src_id_reg[1]_0\,
      R => Q(0)
    );
\src_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \^g0\,
      D => b2g1_return01_out,
      Q => \^src_id_reg[2]_0\,
      R => Q(0)
    );
\src_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => \^g0\,
      D => p_3_in,
      Q => dbg_ids0(3),
      R => Q(0)
    );
\src_throttled_request_id[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \src_throttled_request_id_reg[0]_0\(2),
      I1 => p_0_in0_in,
      I2 => \src_throttled_request_id_reg[0]_0\(3),
      I3 => \dest_id_reg_n_0_[3]\,
      O => \src_throttled_request_id_reg[2]\
    );
\src_throttled_request_id[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \src_throttled_request_id_reg[0]_0\(0),
      I1 => src_data_request_id(0),
      I2 => \src_throttled_request_id_reg[0]_0\(1),
      I3 => src_data_request_id(1),
      O => \src_throttled_request_id_reg[0]\
    );
\up_rdata[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => dbg_ids0(3),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_src_axi_araddr(0),
      O => \src_id_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_response_manager is
  port (
    response_valid_reg_0 : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : out STD_LOGIC;
    eot_id0 : out STD_LOGIC;
    id0 : out STD_LOGIC;
    response_valid_reg_1 : out STD_LOGIC;
    \measured_burst_length_reg[0]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    response_eot : in STD_LOGIC;
    \req_eot0__2\ : in STD_LOGIC;
    dma_response_ready : in STD_LOGIC;
    dest_response_valid : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    req_measured_burst_length : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_response_manager : entity is "axi_dmac_response_manager";
end zed_axi_dmac_0_0_axi_dmac_response_manager;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_response_manager is
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^eot_id0\ : STD_LOGIC;
  signal i_dest_response_fifo_n_4 : STD_LOGIC;
  signal i_dest_response_fifo_n_5 : STD_LOGIC;
  signal i_dest_response_fifo_n_6 : STD_LOGIC;
  signal measured_burst_length : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \measured_burst_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \nx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal req_eot : STD_LOGIC;
  signal response_dest_ready : STD_LOGIC;
  signal \^response_valid_reg_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal to_complete_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \to_complete_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \to_complete_count[1]_i_1_n_0\ : STD_LOGIC;
  signal transfer_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal transfer_id0 : STD_LOGIC;
  signal \transfer_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_id[1]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of out_response_ready_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \req_measured_burst_length[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of response_dest_ready_i_8 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \transfer_id[1]_i_2\ : label is "soft_lutpair68";
begin
  eot_id0 <= \^eot_id0\;
  response_valid_reg_0 <= \^response_valid_reg_0\;
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => to_complete_count(0),
      I1 => to_complete_count(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \nx_state__0\(0),
      Q => state(0),
      R => Q(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \nx_state__0\(1),
      Q => state(1),
      R => Q(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \nx_state__0\(2),
      Q => state(2),
      R => Q(0)
    );
\eot_id[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => \^response_valid_reg_0\,
      I1 => dma_response_ready,
      I2 => req_eot,
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \^eot_id0\
    );
i_dest_response_fifo: entity work.\zed_axi_dmac_0_0_util_axis_fifo__parameterized2\
     port map (
      D(2 downto 0) => \nx_state__0\(2 downto 0),
      \FSM_sequential_state_reg[0]\(2 downto 0) => state(2 downto 0),
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[2]_i_2_n_0\,
      \FSM_sequential_state_reg[2]\ => i_dest_response_fifo_n_4,
      Q(0) => Q(0),
      \cdc_sync_fifo_ram_reg[0]_0\ => i_dest_response_fifo_n_6,
      dest_response_valid => dest_response_valid,
      dma_response_ready => dma_response_ready,
      id0 => id0,
      m_axis_aclk => m_axis_aclk,
      out_response_ready_reg => i_dest_response_fifo_n_5,
      req_eot => req_eot,
      response_dest_ready => response_dest_ready,
      response_eot => response_eot,
      response_valid_reg => \^response_valid_reg_0\,
      s_axi_aclk => s_axi_aclk,
      state_reg(0) => state_reg(2),
      transfer_id(1 downto 0) => transfer_id(1 downto 0)
    );
\measured_burst_length[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AACA"
    )
        port map (
      I0 => measured_burst_length(0),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => \measured_burst_length[0]_i_1_n_0\
    );
\measured_burst_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \measured_burst_length[0]_i_1_n_0\,
      Q => measured_burst_length(0),
      R => '0'
    );
out_response_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^response_valid_reg_0\,
      I1 => dma_response_ready,
      I2 => up_response_ready,
      O => response_valid_reg_1
    );
req_eot_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^eot_id0\,
      I1 => Q(0),
      I2 => \req_eot0__2\,
      O => \reset_gen[0].reset_sync_reg[0]\
    );
req_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_6,
      Q => req_eot,
      R => '0'
    );
\req_measured_burst_length[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => measured_burst_length(0),
      I1 => dma_response_ready,
      I2 => \^response_valid_reg_0\,
      I3 => req_measured_burst_length(0),
      O => \measured_burst_length_reg[0]_0\
    );
response_dest_ready_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => state_reg(2)
    );
response_dest_ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_4,
      Q => response_dest_ready,
      S => Q(0)
    );
response_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_5,
      Q => \^response_valid_reg_0\,
      R => Q(0)
    );
\to_complete_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => dma_response_ready,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => to_complete_count(0),
      O => \to_complete_count[0]_i_1_n_0\
    );
\to_complete_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => to_complete_count(0),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => dma_response_ready,
      I5 => to_complete_count(1),
      O => \to_complete_count[1]_i_1_n_0\
    );
\to_complete_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \to_complete_count[0]_i_1_n_0\,
      Q => to_complete_count(0),
      R => Q(0)
    );
\to_complete_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \to_complete_count[1]_i_1_n_0\,
      Q => to_complete_count(1),
      R => Q(0)
    );
\transfer_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBFBEFFF14041000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => dma_response_ready,
      I4 => req_eot,
      I5 => transfer_id(0),
      O => \transfer_id[0]_i_1_n_0\
    );
\transfer_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => transfer_id(0),
      I1 => transfer_id0,
      I2 => transfer_id(1),
      O => \transfer_id[1]_i_1_n_0\
    );
\transfer_id[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000AC0"
    )
        port map (
      I0 => req_eot,
      I1 => dma_response_ready,
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      O => transfer_id0
    );
\transfer_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \transfer_id[0]_i_1_n_0\,
      Q => transfer_id(0),
      R => Q(0)
    );
\transfer_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \transfer_id[1]_i_1_n_0\,
      Q => transfer_id(1),
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_dest_axi_stream is
  port (
    dbg_ids0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg : out STD_LOGIC;
    active_reg_0 : out STD_LOGIC;
    dest_response_valid : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \response_id_reg[0]\ : out STD_LOGIC;
    \response_id_reg[1]\ : out STD_LOGIC;
    \response_id_reg[2]\ : out STD_LOGIC;
    \response_id_reg[3]\ : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    active_reg_1 : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    dest_fifo_last : in STD_LOGIC;
    \up_rdata_reg[27]\ : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    data_eot : in STD_LOGIC;
    data_enabled_reg_0 : in STD_LOGIC;
    dest_fifo_valid : in STD_LOGIC;
    req_xlast_d_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_dest_axi_stream : entity is "dmac_dest_axi_stream";
end zed_axi_dmac_0_0_dmac_dest_axi_stream;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_dest_axi_stream is
  signal \^active_reg_0\ : STD_LOGIC;
  signal data_enabled : STD_LOGIC;
  signal data_enabled_i_1_n_0 : STD_LOGIC;
  signal \^g\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \id[0]_i_1_n_0\ : STD_LOGIC;
  signal \id[0]_i_2_n_0\ : STD_LOGIC;
  signal \id[3]_i_1__1_n_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal req_xlast_d : STD_LOGIC;
  signal req_xlast_d_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[0]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \id[1]_i_1__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \id[2]_i_1__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \id[3]_i_1__1\ : label is "soft_lutpair52";
begin
  active_reg_0 <= \^active_reg_0\;
  g(3 downto 0) <= \^g\(3 downto 0);
active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => active_reg_1,
      Q => \^active_reg_0\,
      R => Q(0)
    );
data_enabled_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAAAA"
    )
        port map (
      I0 => data_enabled_reg_0,
      I1 => dest_fifo_valid,
      I2 => \^active_reg_0\,
      I3 => m_axis_ready,
      I4 => data_enabled,
      O => data_enabled_i_1_n_0
    );
data_enabled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => data_enabled_i_1_n_0,
      Q => data_enabled,
      R => Q(0)
    );
i_response_generator: entity work.zed_axi_dmac_0_0_dmac_response_generator
     port map (
      Q(0) => Q(0),
      data_enabled => data_enabled,
      dest_response_valid => dest_response_valid,
      enabled_reg_0 => enabled_reg,
      enabled_reg_1 => enabled_reg_0,
      enabled_reg_2 => \^g\(0),
      enabled_reg_3 => \^g\(3),
      enabled_reg_4 => \^g\(1),
      enabled_reg_5 => \^g\(2),
      id0 => id0,
      m_axis_aclk => m_axis_aclk,
      m_src_axi_araddr(4 downto 1) => m_src_axi_araddr(8 downto 5),
      m_src_axi_araddr(0) => m_src_axi_araddr(0),
      \response_id_reg[0]_0\ => dbg_ids0(0),
      \response_id_reg[0]_1\ => \response_id_reg[0]\,
      \response_id_reg[1]_0\ => dbg_ids0(1),
      \response_id_reg[1]_1\ => \response_id_reg[1]\,
      \response_id_reg[2]_0\ => dbg_ids0(2),
      \response_id_reg[2]_1\ => \response_id_reg[2]\,
      \response_id_reg[3]_0\ => dbg_ids0(3),
      \response_id_reg[3]_1\ => \response_id_reg[3]\,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]\,
      \up_rdata_reg[27]_0\ => \up_rdata_reg[27]_0\
    );
\id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^active_reg_0\,
      I1 => m_axis_ready,
      I2 => dest_fifo_last,
      O => \id[0]_i_1_n_0\
    );
\id[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^g\(1),
      I1 => \^g\(3),
      I2 => \^g\(2),
      O => \id[0]_i_2_n_0\
    );
\id[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^g\(2),
      I1 => \^g\(3),
      I2 => \^g\(1),
      I3 => \^g\(0),
      O => inc_id_return(1)
    );
\id[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^g\(3),
      I1 => \^g\(0),
      I2 => \^g\(2),
      I3 => \^g\(1),
      O => inc_id_return(2)
    );
\id[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^g\(1),
      I1 => \^g\(2),
      I2 => \^g\(0),
      I3 => \^g\(3),
      O => \id[3]_i_1__1_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \id[0]_i_1_n_0\,
      D => \id[0]_i_2_n_0\,
      Q => \^g\(0),
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \id[0]_i_1_n_0\,
      D => inc_id_return(1),
      Q => \^g\(1),
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \id[0]_i_1_n_0\,
      D => inc_id_return(2),
      Q => \^g\(2),
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \id[0]_i_1_n_0\,
      D => \id[3]_i_1__1_n_0\,
      Q => \^g\(3),
      R => Q(0)
    );
m_axis_last_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => req_xlast_d,
      I1 => dest_fifo_last,
      I2 => data_eot,
      O => m_axis_last
    );
req_xlast_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAA8000AAAA"
    )
        port map (
      I0 => req_xlast_d_reg_0,
      I1 => data_eot,
      I2 => m_axis_ready,
      I3 => dest_fifo_last,
      I4 => \^active_reg_0\,
      I5 => req_xlast_d,
      O => req_xlast_d_i_1_n_0
    );
req_xlast_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => req_xlast_d_i_1_n_0,
      Q => req_xlast_d,
      R => '0'
    );
\up_rdata[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^g\(0),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(1),
      O => \id_reg[0]_0\
    );
\up_rdata[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^g\(1),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(2),
      O => \id_reg[1]_0\
    );
\up_rdata[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^g\(2),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(3),
      O => \id_reg[2]_0\
    );
\up_rdata[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^g\(3),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_src_axi_araddr(4),
      O => \id_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_src_mm_axi is
  port (
    addr_valid_reg : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    dbg_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_req_dest_address_cur0 : out STD_LOGIC;
    \id_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg_0 : out STD_LOGIC;
    m_axis_raddr_reg : out STD_LOGIC;
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_address_eot : in STD_LOGIC;
    addr_valid_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg_1 : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    src_req_spltr_valid : in STD_LOGIC;
    dest_req_valid : in STD_LOGIC;
    \address_reg[25]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    m_axis_raddr_reg_0 : in STD_LOGIC;
    g0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_src_mm_axi : entity is "dmac_src_mm_axi";
end zed_axi_dmac_0_0_dmac_src_mm_axi;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_src_mm_axi is
  signal acked : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal b2g_return00_out : STD_LOGIC;
  signal b2g_return01_out : STD_LOGIC;
  signal bl_ready_ag : STD_LOGIC;
  signal \^dbg_status\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_addr_gen_n_34 : STD_LOGIC;
  signal \i_src_req_fifo/m_axis_raddr0\ : STD_LOGIC;
  signal \id[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \^id_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal last_burst_len0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal req_ready_ag : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[0]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \id[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \id[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \id[3]_i_1__2\ : label is "soft_lutpair75";
begin
  dbg_status(0) <= \^dbg_status\(0);
  \id_reg[3]_1\(3 downto 0) <= \^id_reg[3]_1\(3 downto 0);
enabled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => i_addr_gen_n_34,
      Q => \^dbg_status\(0),
      R => Q(0)
    );
i_addr_gen: entity work.zed_axi_dmac_0_0_dmac_address_generator
     port map (
      E(0) => last_burst_len0,
      Q(0) => Q(0),
      acked(1 downto 0) => acked(1 downto 0),
      addr_valid_reg_0 => addr_valid_reg,
      addr_valid_reg_1(3 downto 0) => addr_valid_reg_0(3 downto 0),
      \address_reg[25]_0\(29 downto 0) => \address_reg[25]\(29 downto 0),
      bl_ready_ag => bl_ready_ag,
      dbg_status(0) => \^dbg_status\(0),
      enabled_reg_0 => enabled_reg_0,
      enabled_reg_1 => i_addr_gen_n_34,
      enabled_reg_2 => enabled_reg_1,
      enabled_reg_3(3 downto 0) => \^id_reg[3]_1\(3 downto 0),
      \id_reg[0]_0\ => \id_reg[0]_0\,
      \id_reg[1]_0\ => \id_reg[1]_0\,
      \id_reg[2]_0\ => \id_reg[2]_0\,
      \id_reg[3]_0\ => \id_reg[3]_0\,
      m_axis_raddr0 => \i_src_req_fifo/m_axis_raddr0\,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(25 downto 0) => m_src_axi_araddr(25 downto 0),
      m_src_axi_arlen(3 downto 0) => m_src_axi_arlen(3 downto 0),
      m_src_axi_arready => m_src_axi_arready,
      req_ready_ag => req_ready_ag,
      src_address_eot => src_address_eot,
      \up_rdata_reg[5]\ => \up_rdata_reg[5]\,
      \up_rdata_reg[5]_0\ => \up_rdata_reg[5]_0\
    );
i_req_splitter: entity work.zed_axi_dmac_0_0_splitter
     port map (
      E(0) => last_burst_len0,
      Q(0) => Q(0),
      acked(1 downto 0) => acked(1 downto 0),
      bl_ready_ag => bl_ready_ag,
      dest_req_valid => dest_req_valid,
      m_axis_raddr0 => \i_src_req_fifo/m_axis_raddr0\,
      m_axis_raddr_reg => m_axis_raddr_reg,
      m_axis_raddr_reg_0 => m_axis_raddr_reg_0,
      m_src_axi_aclk => m_src_axi_aclk,
      req_ready_ag => req_ready_ag,
      src_req_dest_address_cur0 => src_req_dest_address_cur0,
      src_req_spltr_valid => src_req_spltr_valid
    );
\id[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[3]_1\(1),
      I1 => \^id_reg[3]_1\(3),
      I2 => \^id_reg[3]_1\(2),
      O => \id[0]_i_1__1_n_0\
    );
\id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[3]_1\(2),
      I1 => \^id_reg[3]_1\(3),
      I2 => \^id_reg[3]_1\(1),
      I3 => \^id_reg[3]_1\(0),
      O => b2g_return00_out
    );
\id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_1\(3),
      I1 => \^id_reg[3]_1\(0),
      I2 => \^id_reg[3]_1\(2),
      I3 => \^id_reg[3]_1\(1),
      O => b2g_return01_out
    );
\id[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[3]_1\(1),
      I1 => \^id_reg[3]_1\(2),
      I2 => \^id_reg[3]_1\(0),
      I3 => \^id_reg[3]_1\(3),
      O => p_3_in
    );
\id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => g0,
      D => \id[0]_i_1__1_n_0\,
      Q => \^id_reg[3]_1\(0),
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => g0,
      D => b2g_return00_out,
      Q => \^id_reg[3]_1\(1),
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => g0,
      D => b2g_return01_out,
      Q => \^id_reg[3]_1\(2),
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => g0,
      D => p_3_in,
      Q => \^id_reg[3]_1\(3),
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_util_axis_fifo is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_transfer_id_eot_reg[0]\ : out STD_LOGIC;
    \up_transfer_id_eot_reg[1]\ : out STD_LOGIC;
    \data_reg[2]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[0]\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_1\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_2\ : out STD_LOGIC;
    \up_dma_y_length_reg[8]\ : out STD_LOGIC;
    \up_dma_y_length_reg[9]\ : out STD_LOGIC;
    \up_dma_y_length_reg[10]\ : out STD_LOGIC;
    \up_dma_y_length_reg[11]\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_3\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_4\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_5\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_6\ : out STD_LOGIC;
    \up_dma_y_length_reg[16]\ : out STD_LOGIC;
    \up_dma_y_length_reg[17]\ : out STD_LOGIC;
    \up_dma_y_length_reg[18]\ : out STD_LOGIC;
    \up_dma_y_length_reg[19]\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_7\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_8\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_9\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_10\ : out STD_LOGIC;
    \data_reg[24]_0\ : out STD_LOGIC;
    \data_reg[25]_0\ : out STD_LOGIC;
    \data_reg[26]_0\ : out STD_LOGIC;
    \data_reg[27]_0\ : out STD_LOGIC;
    \data_reg[28]_0\ : out STD_LOGIC;
    req_response_valid_reg : out STD_LOGIC;
    valid_reg_0 : out STD_LOGIC;
    \data_reg[33]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \level_reg[1]\ : in STD_LOGIC;
    up_transfer_id_eot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \up_rdata[0]_i_7\ : in STD_LOGIC;
    up_dma_last : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[23]_i_5_0\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \up_rdata[4]_i_4\ : in STD_LOGIC;
    \up_rdata_reg[23]_i_5_1\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \up_rdata[5]_i_4\ : in STD_LOGIC;
    \up_rdata[6]_i_4\ : in STD_LOGIC;
    \up_rdata[7]_i_4\ : in STD_LOGIC;
    \up_rdata[12]_i_4\ : in STD_LOGIC;
    \up_rdata[13]_i_4\ : in STD_LOGIC;
    \up_rdata[14]_i_4\ : in STD_LOGIC;
    \up_rdata[15]_i_4\ : in STD_LOGIC;
    \up_rdata[20]_i_4\ : in STD_LOGIC;
    \up_rdata[21]_i_4\ : in STD_LOGIC;
    \up_rdata[22]_i_4\ : in STD_LOGIC;
    \up_rdata[23]_i_4\ : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 33 downto 0 );
    up_response_valid : in STD_LOGIC;
    response_ready_reg : in STD_LOGIC;
    up_partial_length_valid_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_util_axis_fifo : entity is "util_axis_fifo";
end zed_axi_dmac_0_0_util_axis_fifo;

architecture STRUCTURE of zed_axi_dmac_0_0_util_axis_fifo is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_reg_n_0_[9]\ : STD_LOGIC;
  signal i_address_sync_n_2 : STD_LOGIC;
  signal m_axis_raddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_mem_read : STD_LOGIC;
  signal \up_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal up_tlf_valid : STD_LOGIC;
  signal NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_30_33_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_30_33_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_3_0_5 : label is 3;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_3_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_12_17 : label is "";
  attribute ram_addr_begin of ram_reg_0_3_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_12_17 : label is 3;
  attribute ram_slice_begin of ram_reg_0_3_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_0_3_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_18_23 : label is "";
  attribute ram_addr_begin of ram_reg_0_3_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_18_23 : label is 3;
  attribute ram_slice_begin of ram_reg_0_3_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_0_3_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_24_29 : label is "";
  attribute ram_addr_begin of ram_reg_0_3_24_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_24_29 : label is 3;
  attribute ram_slice_begin of ram_reg_0_3_24_29 : label is 24;
  attribute ram_slice_end of ram_reg_0_3_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_30_33 : label is "";
  attribute ram_addr_begin of ram_reg_0_3_30_33 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_30_33 : label is 3;
  attribute ram_slice_begin of ram_reg_0_3_30_33 : label is 30;
  attribute ram_slice_end of ram_reg_0_3_30_33 : label is 33;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_6_11 : label is "";
  attribute ram_addr_begin of ram_reg_0_3_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_6_11 : label is 3;
  attribute ram_slice_begin of ram_reg_0_3_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_0_3_6_11 : label is 11;
begin
  SR(0) <= \^sr\(0);
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(0),
      Q => \data_reg_n_0_[0]\,
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(10),
      Q => \data_reg_n_0_[10]\,
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(11),
      Q => \data_reg_n_0_[11]\,
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(12),
      Q => \data_reg_n_0_[12]\,
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(13),
      Q => \data_reg_n_0_[13]\,
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(14),
      Q => \data_reg_n_0_[14]\,
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(15),
      Q => \data_reg_n_0_[15]\,
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(16),
      Q => \data_reg_n_0_[16]\,
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(17),
      Q => \data_reg_n_0_[17]\,
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(18),
      Q => \data_reg_n_0_[18]\,
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(19),
      Q => \data_reg_n_0_[19]\,
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(1),
      Q => \data_reg_n_0_[1]\,
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(20),
      Q => \data_reg_n_0_[20]\,
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(21),
      Q => \data_reg_n_0_[21]\,
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(22),
      Q => \data_reg_n_0_[22]\,
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(23),
      Q => \data_reg_n_0_[23]\,
      R => '0'
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(24),
      Q => \data_reg_n_0_[24]\,
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(25),
      Q => \data_reg_n_0_[25]\,
      R => '0'
    );
\data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(26),
      Q => \data_reg_n_0_[26]\,
      R => '0'
    );
\data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(27),
      Q => \data_reg_n_0_[27]\,
      R => '0'
    );
\data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(28),
      Q => \data_reg_n_0_[28]\,
      R => '0'
    );
\data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(29),
      Q => \data_reg[33]_0\(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(2),
      Q => \data_reg_n_0_[2]\,
      R => '0'
    );
\data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(30),
      Q => \data_reg[33]_0\(2),
      R => '0'
    );
\data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(31),
      Q => \data_reg[33]_0\(3),
      R => '0'
    );
\data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(32),
      Q => \data_reg[33]_0\(4),
      R => '0'
    );
\data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(33),
      Q => \data_reg[33]_0\(5),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(3),
      Q => \data_reg[33]_0\(0),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(4),
      Q => \data_reg_n_0_[4]\,
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(5),
      Q => \data_reg_n_0_[5]\,
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(6),
      Q => \data_reg_n_0_[6]\,
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(7),
      Q => \data_reg_n_0_[7]\,
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(8),
      Q => \data_reg_n_0_[8]\,
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(9),
      Q => \data_reg_n_0_[9]\,
      R => '0'
    );
i_address_sync: entity work.zed_axi_dmac_0_0_fifo_address_sync
     port map (
      E(0) => m_mem_read,
      Q(1 downto 0) => m_axis_raddr(1 downto 0),
      SR(0) => \^sr\(0),
      \level_reg[1]_0\ => \level_reg[1]\,
      m_axis_valid_reg_0 => i_address_sync_n_2,
      p_8_in => p_8_in,
      req_response_valid_reg => req_response_valid_reg,
      response_ready_reg => response_ready_reg,
      s_axi_aclk => s_axi_aclk,
      up_response_valid => up_response_valid,
      up_tlf_valid => up_tlf_valid
    );
ram_reg_0_3_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(1 downto 0),
      DIB(1 downto 0) => s_axis_data(3 downto 2),
      DIC(1 downto 0) => s_axis_data(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(1 downto 0),
      DOB(1 downto 0) => data0(3 downto 2),
      DOC(1 downto 0) => data0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
ram_reg_0_3_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(13 downto 12),
      DIB(1 downto 0) => s_axis_data(15 downto 14),
      DIC(1 downto 0) => s_axis_data(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(13 downto 12),
      DOB(1 downto 0) => data0(15 downto 14),
      DOC(1 downto 0) => data0(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
ram_reg_0_3_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(19 downto 18),
      DIB(1 downto 0) => s_axis_data(21 downto 20),
      DIC(1 downto 0) => s_axis_data(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(19 downto 18),
      DOB(1 downto 0) => data0(21 downto 20),
      DOC(1 downto 0) => data0(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
ram_reg_0_3_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(25 downto 24),
      DIB(1 downto 0) => s_axis_data(27 downto 26),
      DIC(1 downto 0) => s_axis_data(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(25 downto 24),
      DOB(1 downto 0) => data0(27 downto 26),
      DOC(1 downto 0) => data0(29 downto 28),
      DOD(1 downto 0) => NLW_ram_reg_0_3_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
ram_reg_0_3_30_33: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(31 downto 30),
      DIB(1 downto 0) => s_axis_data(33 downto 32),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(31 downto 30),
      DOB(1 downto 0) => data0(33 downto 32),
      DOC(1 downto 0) => NLW_ram_reg_0_3_30_33_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_0_3_30_33_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
ram_reg_0_3_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => s_axis_data(7 downto 6),
      DIB(1 downto 0) => s_axis_data(9 downto 8),
      DIC(1 downto 0) => s_axis_data(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(7 downto 6),
      DOB(1 downto 0) => data0(9 downto 8),
      DOC(1 downto 0) => data0(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => '0'
    );
up_partial_length_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_8_in,
      I1 => up_tlf_valid,
      I2 => up_partial_length_valid_reg(0),
      O => valid_reg_0
    );
\up_rdata[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => Q(3),
      I2 => \data_reg_n_0_[0]\,
      I3 => Q(4),
      I4 => \up_rdata[0]_i_7\,
      O => \up_transfer_id_eot_reg[0]\
    );
\up_rdata[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(7),
      I1 => \up_rdata_reg[23]_i_5_1\(6),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[10]\,
      O => \up_dma_y_length_reg[10]\
    );
\up_rdata[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(8),
      I1 => \up_rdata_reg[23]_i_5_1\(7),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[11]\,
      O => \up_dma_y_length_reg[11]\
    );
\up_rdata[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(9),
      I1 => \up_rdata_reg[23]_i_5_1\(8),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[12]\,
      O => \up_rdata[12]_i_7_n_0\
    );
\up_rdata[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(10),
      I1 => \up_rdata_reg[23]_i_5_1\(9),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[13]\,
      O => \up_rdata[13]_i_7_n_0\
    );
\up_rdata[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(11),
      I1 => \up_rdata_reg[23]_i_5_1\(10),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[14]\,
      O => \up_rdata[14]_i_7_n_0\
    );
\up_rdata[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(12),
      I1 => \up_rdata_reg[23]_i_5_1\(11),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[15]\,
      O => \up_rdata[15]_i_7_n_0\
    );
\up_rdata[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(13),
      I1 => \up_rdata_reg[23]_i_5_1\(12),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[16]\,
      O => \up_dma_y_length_reg[16]\
    );
\up_rdata[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(14),
      I1 => \up_rdata_reg[23]_i_5_1\(13),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[17]\,
      O => \up_dma_y_length_reg[17]\
    );
\up_rdata[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(15),
      I1 => \up_rdata_reg[23]_i_5_1\(14),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[18]\,
      O => \up_dma_y_length_reg[18]\
    );
\up_rdata[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(16),
      I1 => \up_rdata_reg[23]_i_5_1\(15),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[19]\,
      O => \up_dma_y_length_reg[19]\
    );
\up_rdata[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => Q(3),
      I2 => \data_reg_n_0_[1]\,
      I3 => Q(4),
      I4 => up_dma_last,
      O => \up_transfer_id_eot_reg[1]\
    );
\up_rdata[20]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(17),
      I1 => \up_rdata_reg[23]_i_5_1\(16),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[20]\,
      O => \up_rdata[20]_i_7_n_0\
    );
\up_rdata[21]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(18),
      I1 => \up_rdata_reg[23]_i_5_1\(17),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[21]\,
      O => \up_rdata[21]_i_7_n_0\
    );
\up_rdata[22]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(19),
      I1 => \up_rdata_reg[23]_i_5_1\(18),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[22]\,
      O => \up_rdata[22]_i_7_n_0\
    );
\up_rdata[23]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(20),
      I1 => \up_rdata_reg[23]_i_5_1\(19),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[23]\,
      O => \up_rdata[23]_i_7_n_0\
    );
\up_rdata[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \data_reg_n_0_[24]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_axis_data(24),
      O => \data_reg[24]_0\
    );
\up_rdata[25]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \data_reg_n_0_[25]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_axis_data(25),
      O => \data_reg[25]_0\
    );
\up_rdata[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \data_reg_n_0_[26]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_axis_data(26),
      O => \data_reg[26]_0\
    );
\up_rdata[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \data_reg_n_0_[27]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_axis_data(27),
      O => \data_reg[27]_0\
    );
\up_rdata[28]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \data_reg_n_0_[28]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_axis_data(28),
      O => \data_reg[28]_0\
    );
\up_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033223000002230"
    )
        port map (
      I0 => \data_reg_n_0_[2]\,
      I1 => Q(3),
      I2 => p_3_in(0),
      I3 => Q(4),
      I4 => Q(2),
      I5 => \up_rdata_reg[23]_i_5_0\(0),
      O => \data_reg[2]_0\
    );
\up_rdata[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(1),
      I1 => \up_rdata_reg[23]_i_5_1\(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[4]\,
      O => \up_rdata[4]_i_7_n_0\
    );
\up_rdata[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(2),
      I1 => \up_rdata_reg[23]_i_5_1\(1),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[5]\,
      O => \up_rdata[5]_i_7_n_0\
    );
\up_rdata[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(3),
      I1 => \up_rdata_reg[23]_i_5_1\(2),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[6]\,
      O => \up_rdata[6]_i_7_n_0\
    );
\up_rdata[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(4),
      I1 => \up_rdata_reg[23]_i_5_1\(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[7]\,
      O => \up_rdata[7]_i_7_n_0\
    );
\up_rdata[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(5),
      I1 => \up_rdata_reg[23]_i_5_1\(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[8]\,
      O => \up_dma_y_length_reg[8]\
    );
\up_rdata[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFCA0FC"
    )
        port map (
      I0 => \up_rdata_reg[23]_i_5_0\(6),
      I1 => \up_rdata_reg[23]_i_5_1\(5),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \data_reg_n_0_[9]\,
      O => \up_dma_y_length_reg[9]\
    );
\up_rdata_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[12]_i_4\,
      I1 => \up_rdata[12]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_3\,
      S => Q(0)
    );
\up_rdata_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[13]_i_4\,
      I1 => \up_rdata[13]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_4\,
      S => Q(0)
    );
\up_rdata_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[14]_i_4\,
      I1 => \up_rdata[14]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_5\,
      S => Q(0)
    );
\up_rdata_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[15]_i_4\,
      I1 => \up_rdata[15]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_6\,
      S => Q(0)
    );
\up_rdata_reg[20]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[20]_i_4\,
      I1 => \up_rdata[20]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_7\,
      S => Q(0)
    );
\up_rdata_reg[21]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[21]_i_4\,
      I1 => \up_rdata[21]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_8\,
      S => Q(0)
    );
\up_rdata_reg[22]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[22]_i_4\,
      I1 => \up_rdata[22]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_9\,
      S => Q(0)
    );
\up_rdata_reg[23]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[23]_i_4\,
      I1 => \up_rdata[23]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_10\,
      S => Q(0)
    );
\up_rdata_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[4]_i_4\,
      I1 => \up_rdata[4]_i_7_n_0\,
      O => \up_raddr_int_reg[0]\,
      S => Q(0)
    );
\up_rdata_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[5]_i_4\,
      I1 => \up_rdata[5]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_0\,
      S => Q(0)
    );
\up_rdata_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[6]_i_4\,
      I1 => \up_rdata[6]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_1\,
      S => Q(0)
    );
\up_rdata_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \up_rdata[7]_i_4\,
      I1 => \up_rdata[7]_i_7_n_0\,
      O => \up_raddr_int_reg[0]_2\,
      S => Q(0)
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_address_sync_n_2,
      Q => up_tlf_valid,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_regmap_request is
  port (
    p_3_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_cyclic_reg_0 : out STD_LOGIC;
    up_dma_req_valid_reg_0 : out STD_LOGIC;
    response_ready_reg_0 : out STD_LOGIC;
    up_dma_last : out STD_LOGIC;
    up_partial_length_valid_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_dma_x_length_reg[3]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[23]_0\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \up_measured_transfer_length_reg[31]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \up_transfer_id_eot_reg[0]_0\ : out STD_LOGIC;
    \up_transfer_id_eot_reg[1]_0\ : out STD_LOGIC;
    \data_reg[2]\ : out STD_LOGIC;
    \up_dma_y_length_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \up_raddr_int_reg[0]\ : out STD_LOGIC;
    \up_dma_src_stride_reg[23]_0\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \up_raddr_int_reg[0]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_1\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_2\ : out STD_LOGIC;
    \up_dma_x_length_reg[8]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[8]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[9]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[9]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[10]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[10]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[11]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[11]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_3\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_4\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_5\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_6\ : out STD_LOGIC;
    \up_dma_x_length_reg[16]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[16]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[17]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[17]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[18]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[18]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[19]_0\ : out STD_LOGIC;
    \up_dma_y_length_reg[19]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_7\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_8\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_9\ : out STD_LOGIC;
    \up_raddr_int_reg[0]_10\ : out STD_LOGIC;
    \data_reg[24]\ : out STD_LOGIC;
    \data_reg[25]\ : out STD_LOGIC;
    \data_reg[26]\ : out STD_LOGIC;
    \data_reg[27]\ : out STD_LOGIC;
    \data_reg[28]\ : out STD_LOGIC;
    up_transfer_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_dma_src_address_reg[28]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \up_dma_dest_stride_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[33]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_dma_enable_tlen_reporting_reg_0 : in STD_LOGIC;
    up_dma_cyclic_reg_1 : in STD_LOGIC;
    up_dma_req_valid_reg_1 : in STD_LOGIC;
    up_dma_last_reg_0 : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    up_req_eot : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \level_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    req_ready_gated : in STD_LOGIC;
    dbg_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_dma_src_address_reg[28]_1\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \up_dma_src_address_reg[28]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_dma_src_stride_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_dma_dest_stride_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_dma_y_length_reg[23]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_sot : in STD_LOGIC;
    \up_measured_transfer_length_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    req_measured_burst_length : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_regmap_request : entity is "axi_dmac_regmap_request";
end zed_axi_dmac_0_0_axi_dmac_regmap_request;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_regmap_request is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data8 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal i_transfer_lenghts_fifo_n_0 : STD_LOGIC;
  signal i_transfer_lenghts_fifo_n_29 : STD_LOGIC;
  signal i_transfer_lenghts_fifo_n_30 : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^response_ready_reg_0\ : STD_LOGIC;
  signal up_clear_tl : STD_LOGIC;
  signal up_clear_tl_i_1_n_0 : STD_LOGIC;
  signal \^up_dma_cyclic_reg_0\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[10]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[11]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[12]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[13]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[14]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[15]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[16]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[17]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[18]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[19]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[20]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[21]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[22]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[23]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[4]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[5]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[6]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[7]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[8]\ : STD_LOGIC;
  signal \up_dma_dest_stride_reg_n_0_[9]\ : STD_LOGIC;
  signal \^up_dma_last\ : STD_LOGIC;
  signal \^up_dma_req_valid_reg_0\ : STD_LOGIC;
  signal \^up_dma_src_stride_reg[23]_0\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^up_dma_x_length_reg[23]_0\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^up_dma_y_length_reg[23]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal up_eot : STD_LOGIC;
  signal up_measured_transfer_length : STD_LOGIC_VECTOR ( 28 downto 3 );
  signal \up_measured_transfer_length[31]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_3_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_4_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_5_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_3_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_4_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \^up_measured_transfer_length_reg[31]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \up_measured_transfer_length_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^up_partial_length_valid_reg_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \up_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_2_n_0\ : STD_LOGIC;
  signal \^up_transfer_id\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \up_transfer_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id[1]_i_1_n_0\ : STD_LOGIC;
  signal up_transfer_id_eot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \up_transfer_id_eot[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot[1]_i_1_n_0\ : STD_LOGIC;
  signal up_transfer_id_eot_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \up_transfer_id_eot_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_up_measured_transfer_length_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of up_clear_tl_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_transfer_id_eot_d[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_transfer_id_eot_d[1]_i_1\ : label is "soft_lutpair4";
begin
  SR(0) <= \^sr\(0);
  p_3_in(0) <= \^p_3_in\(0);
  response_ready_reg_0 <= \^response_ready_reg_0\;
  up_dma_cyclic_reg_0 <= \^up_dma_cyclic_reg_0\;
  up_dma_last <= \^up_dma_last\;
  up_dma_req_valid_reg_0 <= \^up_dma_req_valid_reg_0\;
  \up_dma_src_stride_reg[23]_0\(20 downto 0) <= \^up_dma_src_stride_reg[23]_0\(20 downto 0);
  \up_dma_x_length_reg[23]_0\(20 downto 0) <= \^up_dma_x_length_reg[23]_0\(20 downto 0);
  \up_dma_y_length_reg[23]_0\(23 downto 0) <= \^up_dma_y_length_reg[23]_0\(23 downto 0);
  \up_measured_transfer_length_reg[31]_0\(5 downto 0) <= \^up_measured_transfer_length_reg[31]_0\(5 downto 0);
  up_partial_length_valid_reg_0(3 downto 0) <= \^up_partial_length_valid_reg_0\(3 downto 0);
  up_transfer_id(1 downto 0) <= \^up_transfer_id\(1 downto 0);
i_transfer_lenghts_fifo: entity work.zed_axi_dmac_0_0_util_axis_fifo
     port map (
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => i_transfer_lenghts_fifo_n_0,
      \data_reg[24]_0\ => \data_reg[24]\,
      \data_reg[25]_0\ => \data_reg[25]\,
      \data_reg[26]_0\ => \data_reg[26]\,
      \data_reg[27]_0\ => \data_reg[27]\,
      \data_reg[28]_0\ => \data_reg[28]\,
      \data_reg[2]_0\ => \data_reg[2]\,
      \data_reg[33]_0\(5 downto 0) => \data_reg[33]\(5 downto 0),
      \level_reg[1]\ => \level_reg[1]\,
      p_3_in(0) => \^p_3_in\(0),
      p_8_in => p_8_in,
      req_response_valid_reg => i_transfer_lenghts_fifo_n_29,
      response_ready_reg => \^response_ready_reg_0\,
      s_axi_aclk => s_axi_aclk,
      s_axis_data(33 downto 32) => up_transfer_id_eot_d(1 downto 0),
      s_axis_data(31 downto 29) => \^up_measured_transfer_length_reg[31]_0\(5 downto 3),
      s_axis_data(28 downto 3) => up_measured_transfer_length(28 downto 3),
      s_axis_data(2 downto 0) => \^up_measured_transfer_length_reg[31]_0\(2 downto 0),
      up_dma_last => \^up_dma_last\,
      \up_dma_y_length_reg[10]\ => \up_dma_y_length_reg[10]_0\,
      \up_dma_y_length_reg[11]\ => \up_dma_y_length_reg[11]_0\,
      \up_dma_y_length_reg[16]\ => \up_dma_y_length_reg[16]_0\,
      \up_dma_y_length_reg[17]\ => \up_dma_y_length_reg[17]_0\,
      \up_dma_y_length_reg[18]\ => \up_dma_y_length_reg[18]_0\,
      \up_dma_y_length_reg[19]\ => \up_dma_y_length_reg[19]_0\,
      \up_dma_y_length_reg[8]\ => \up_dma_y_length_reg[8]_0\,
      \up_dma_y_length_reg[9]\ => \up_dma_y_length_reg[9]_0\,
      up_partial_length_valid_reg(0) => \^up_partial_length_valid_reg_0\(3),
      \up_raddr_int_reg[0]\ => \up_raddr_int_reg[0]\,
      \up_raddr_int_reg[0]_0\ => \up_raddr_int_reg[0]_0\,
      \up_raddr_int_reg[0]_1\ => \up_raddr_int_reg[0]_1\,
      \up_raddr_int_reg[0]_10\ => \up_raddr_int_reg[0]_10\,
      \up_raddr_int_reg[0]_2\ => \up_raddr_int_reg[0]_2\,
      \up_raddr_int_reg[0]_3\ => \up_raddr_int_reg[0]_3\,
      \up_raddr_int_reg[0]_4\ => \up_raddr_int_reg[0]_4\,
      \up_raddr_int_reg[0]_5\ => \up_raddr_int_reg[0]_5\,
      \up_raddr_int_reg[0]_6\ => \up_raddr_int_reg[0]_6\,
      \up_raddr_int_reg[0]_7\ => \up_raddr_int_reg[0]_7\,
      \up_raddr_int_reg[0]_8\ => \up_raddr_int_reg[0]_8\,
      \up_raddr_int_reg[0]_9\ => \up_raddr_int_reg[0]_9\,
      \up_rdata[0]_i_7\ => \^up_dma_cyclic_reg_0\,
      \up_rdata[12]_i_4\ => \up_rdata[12]_i_6_n_0\,
      \up_rdata[13]_i_4\ => \up_rdata[13]_i_6_n_0\,
      \up_rdata[14]_i_4\ => \up_rdata[14]_i_6_n_0\,
      \up_rdata[15]_i_4\ => \up_rdata[15]_i_6_n_0\,
      \up_rdata[20]_i_4\ => \up_rdata[20]_i_6_n_0\,
      \up_rdata[21]_i_4\ => \up_rdata[21]_i_6_n_0\,
      \up_rdata[22]_i_4\ => \up_rdata[22]_i_6_n_0\,
      \up_rdata[23]_i_4\ => \up_rdata[23]_i_6_n_0\,
      \up_rdata[4]_i_4\ => \up_rdata[4]_i_6_n_0\,
      \up_rdata[5]_i_4\ => \up_rdata[5]_i_6_n_0\,
      \up_rdata[6]_i_4\ => \up_rdata[6]_i_6_n_0\,
      \up_rdata[7]_i_4\ => \up_rdata[7]_i_6_n_0\,
      \up_rdata_reg[23]_i_5_0\(20 downto 1) => \^up_dma_y_length_reg[23]_0\(23 downto 4),
      \up_rdata_reg[23]_i_5_0\(0) => \^up_dma_y_length_reg[23]_0\(2),
      \up_rdata_reg[23]_i_5_1\(19 downto 0) => \^up_dma_src_stride_reg[23]_0\(20 downto 1),
      up_response_valid => up_response_valid,
      up_transfer_id_eot(1 downto 0) => up_transfer_id_eot(1 downto 0),
      \up_transfer_id_eot_reg[0]\ => \up_transfer_id_eot_reg[0]_0\,
      \up_transfer_id_eot_reg[1]\ => \up_transfer_id_eot_reg[1]_0\,
      valid_reg_0 => i_transfer_lenghts_fifo_n_30
    );
response_ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_transfer_lenghts_fifo_n_29,
      Q => \^response_ready_reg_0\,
      S => i_transfer_lenghts_fifo_n_0
    );
up_axi_awready_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
up_clear_tl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4000"
    )
        port map (
      I0 => \^up_dma_cyclic_reg_0\,
      I1 => up_req_eot,
      I2 => up_response_valid,
      I3 => \^response_ready_reg_0\,
      I4 => up_clear_tl,
      O => up_clear_tl_i_1_n_0
    );
up_clear_tl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_clear_tl_i_1_n_0,
      Q => up_clear_tl,
      R => '0'
    );
up_dma_cyclic_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_cyclic_reg_1,
      Q => \^up_dma_cyclic_reg_0\,
      S => \^sr\(0)
    );
\up_dma_dest_stride_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(10),
      Q => \up_dma_dest_stride_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(11),
      Q => \up_dma_dest_stride_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(12),
      Q => \up_dma_dest_stride_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(13),
      Q => \up_dma_dest_stride_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(14),
      Q => \up_dma_dest_stride_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(15),
      Q => \up_dma_dest_stride_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(16),
      Q => \up_dma_dest_stride_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(17),
      Q => \up_dma_dest_stride_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(18),
      Q => \up_dma_dest_stride_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(19),
      Q => \up_dma_dest_stride_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(20),
      Q => \up_dma_dest_stride_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(21),
      Q => \up_dma_dest_stride_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(22),
      Q => \up_dma_dest_stride_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(23),
      Q => \up_dma_dest_stride_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(3),
      Q => \up_dma_dest_stride_reg[3]_0\(0),
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(4),
      Q => \up_dma_dest_stride_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(5),
      Q => \up_dma_dest_stride_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(6),
      Q => \up_dma_dest_stride_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(7),
      Q => \up_dma_dest_stride_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(8),
      Q => \up_dma_dest_stride_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\up_dma_dest_stride_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_stride_reg[3]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(9),
      Q => \up_dma_dest_stride_reg_n_0_[9]\,
      R => \^sr\(0)
    );
up_dma_enable_tlen_reporting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_enable_tlen_reporting_reg_0,
      Q => \^p_3_in\(0),
      R => \^sr\(0)
    );
up_dma_last_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_last_reg_0,
      Q => \^up_dma_last\,
      S => \^sr\(0)
    );
up_dma_req_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_req_valid_reg_1,
      Q => \^up_dma_req_valid_reg_0\,
      R => '0'
    );
\up_dma_src_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(10),
      Q => \up_dma_src_address_reg[28]_0\(7),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(11),
      Q => \up_dma_src_address_reg[28]_0\(8),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(12),
      Q => \up_dma_src_address_reg[28]_0\(9),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(13),
      Q => \up_dma_src_address_reg[28]_0\(10),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(14),
      Q => \up_dma_src_address_reg[28]_0\(11),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(15),
      Q => \up_dma_src_address_reg[28]_0\(12),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(16),
      Q => \up_dma_src_address_reg[28]_0\(13),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(17),
      Q => \up_dma_src_address_reg[28]_0\(14),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(18),
      Q => \up_dma_src_address_reg[28]_0\(15),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(19),
      Q => \up_dma_src_address_reg[28]_0\(16),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(20),
      Q => \up_dma_src_address_reg[28]_0\(17),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(21),
      Q => \up_dma_src_address_reg[28]_0\(18),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(22),
      Q => \up_dma_src_address_reg[28]_0\(19),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(23),
      Q => \up_dma_src_address_reg[28]_0\(20),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(24),
      Q => \up_dma_src_address_reg[28]_0\(21),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(25),
      Q => \up_dma_src_address_reg[28]_0\(22),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(26),
      Q => \up_dma_src_address_reg[28]_0\(23),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(27),
      Q => \up_dma_src_address_reg[28]_0\(24),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(28),
      Q => \up_dma_src_address_reg[28]_0\(25),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(3),
      Q => \up_dma_src_address_reg[28]_0\(0),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(4),
      Q => \up_dma_src_address_reg[28]_0\(1),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(5),
      Q => \up_dma_src_address_reg[28]_0\(2),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(6),
      Q => \up_dma_src_address_reg[28]_0\(3),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(7),
      Q => \up_dma_src_address_reg[28]_0\(4),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(8),
      Q => \up_dma_src_address_reg[28]_0\(5),
      R => \^sr\(0)
    );
\up_dma_src_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_address_reg[28]_2\(0),
      D => \up_dma_src_address_reg[28]_1\(9),
      Q => \up_dma_src_address_reg[28]_0\(6),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(10),
      Q => \^up_dma_src_stride_reg[23]_0\(7),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(11),
      Q => \^up_dma_src_stride_reg[23]_0\(8),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(12),
      Q => \^up_dma_src_stride_reg[23]_0\(9),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(13),
      Q => \^up_dma_src_stride_reg[23]_0\(10),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(14),
      Q => \^up_dma_src_stride_reg[23]_0\(11),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(15),
      Q => \^up_dma_src_stride_reg[23]_0\(12),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(16),
      Q => \^up_dma_src_stride_reg[23]_0\(13),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(17),
      Q => \^up_dma_src_stride_reg[23]_0\(14),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(18),
      Q => \^up_dma_src_stride_reg[23]_0\(15),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(19),
      Q => \^up_dma_src_stride_reg[23]_0\(16),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(20),
      Q => \^up_dma_src_stride_reg[23]_0\(17),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(21),
      Q => \^up_dma_src_stride_reg[23]_0\(18),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(22),
      Q => \^up_dma_src_stride_reg[23]_0\(19),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(23),
      Q => \^up_dma_src_stride_reg[23]_0\(20),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(3),
      Q => \^up_dma_src_stride_reg[23]_0\(0),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(4),
      Q => \^up_dma_src_stride_reg[23]_0\(1),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(5),
      Q => \^up_dma_src_stride_reg[23]_0\(2),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(6),
      Q => \^up_dma_src_stride_reg[23]_0\(3),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(7),
      Q => \^up_dma_src_stride_reg[23]_0\(4),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(8),
      Q => \^up_dma_src_stride_reg[23]_0\(5),
      R => \^sr\(0)
    );
\up_dma_src_stride_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_src_stride_reg[3]_0\(0),
      D => \up_dma_src_address_reg[28]_1\(9),
      Q => \^up_dma_src_stride_reg[23]_0\(6),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(10),
      Q => \^up_dma_x_length_reg[23]_0\(7),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(11),
      Q => \^up_dma_x_length_reg[23]_0\(8),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(12),
      Q => \^up_dma_x_length_reg[23]_0\(9),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(13),
      Q => \^up_dma_x_length_reg[23]_0\(10),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(14),
      Q => \^up_dma_x_length_reg[23]_0\(11),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(15),
      Q => \^up_dma_x_length_reg[23]_0\(12),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(16),
      Q => \^up_dma_x_length_reg[23]_0\(13),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(17),
      Q => \^up_dma_x_length_reg[23]_0\(14),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(18),
      Q => \^up_dma_x_length_reg[23]_0\(15),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(19),
      Q => \^up_dma_x_length_reg[23]_0\(16),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(20),
      Q => \^up_dma_x_length_reg[23]_0\(17),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(21),
      Q => \^up_dma_x_length_reg[23]_0\(18),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(22),
      Q => \^up_dma_x_length_reg[23]_0\(19),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(23),
      Q => \^up_dma_x_length_reg[23]_0\(20),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(3),
      Q => \^up_dma_x_length_reg[23]_0\(0),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(4),
      Q => \^up_dma_x_length_reg[23]_0\(1),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(5),
      Q => \^up_dma_x_length_reg[23]_0\(2),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(6),
      Q => \^up_dma_x_length_reg[23]_0\(3),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(7),
      Q => \^up_dma_x_length_reg[23]_0\(4),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(8),
      Q => \^up_dma_x_length_reg[23]_0\(5),
      R => \^sr\(0)
    );
\up_dma_x_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_dma_src_address_reg[28]_1\(9),
      Q => \^up_dma_x_length_reg[23]_0\(6),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(0),
      Q => \^up_dma_y_length_reg[23]_0\(0),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(10),
      Q => \^up_dma_y_length_reg[23]_0\(10),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(11),
      Q => \^up_dma_y_length_reg[23]_0\(11),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(12),
      Q => \^up_dma_y_length_reg[23]_0\(12),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(13),
      Q => \^up_dma_y_length_reg[23]_0\(13),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(14),
      Q => \^up_dma_y_length_reg[23]_0\(14),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(15),
      Q => \^up_dma_y_length_reg[23]_0\(15),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(16),
      Q => \^up_dma_y_length_reg[23]_0\(16),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(17),
      Q => \^up_dma_y_length_reg[23]_0\(17),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(18),
      Q => \^up_dma_y_length_reg[23]_0\(18),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(19),
      Q => \^up_dma_y_length_reg[23]_0\(19),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(1),
      Q => \^up_dma_y_length_reg[23]_0\(1),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(20),
      Q => \^up_dma_y_length_reg[23]_0\(20),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(21),
      Q => \^up_dma_y_length_reg[23]_0\(21),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(22),
      Q => \^up_dma_y_length_reg[23]_0\(22),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(23),
      Q => \^up_dma_y_length_reg[23]_0\(23),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(2),
      Q => \^up_dma_y_length_reg[23]_0\(2),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(3),
      Q => \^up_dma_y_length_reg[23]_0\(3),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(4),
      Q => \^up_dma_y_length_reg[23]_0\(4),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(5),
      Q => \^up_dma_y_length_reg[23]_0\(5),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(6),
      Q => \^up_dma_y_length_reg[23]_0\(6),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(7),
      Q => \^up_dma_y_length_reg[23]_0\(7),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(8),
      Q => \^up_dma_y_length_reg[23]_0\(8),
      R => \^sr\(0)
    );
\up_dma_y_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_y_length_reg[23]_1\(0),
      D => \up_dma_src_address_reg[28]_1\(9),
      Q => \^up_dma_y_length_reg[23]_0\(9),
      R => \^sr\(0)
    );
\up_measured_transfer_length[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_clear_tl,
      I1 => \^response_ready_reg_0\,
      I2 => up_response_valid,
      O => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(3),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[3]_i_2_n_0\
    );
\up_measured_transfer_length[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[31]_0\(2),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[3]_i_3_n_0\
    );
\up_measured_transfer_length[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[31]_0\(1),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[3]_i_4_n_0\
    );
\up_measured_transfer_length[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[31]_0\(0),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[3]_i_5_n_0\
    );
\up_measured_transfer_length[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(6),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[7]_i_2_n_0\
    );
\up_measured_transfer_length[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(5),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[7]_i_3_n_0\
    );
\up_measured_transfer_length[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(4),
      I1 => req_measured_burst_length(0),
      O => \up_measured_transfer_length[7]_i_4_n_0\
    );
\up_measured_transfer_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[3]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[31]_0\(0),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[11]_i_1_n_5\,
      Q => up_measured_transfer_length(10),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[11]_i_1_n_4\,
      Q => up_measured_transfer_length(11),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[7]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[11]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[11]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[11]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[11]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[11]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[11]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[11]_i_1_n_7\,
      S(3 downto 0) => up_measured_transfer_length(11 downto 8)
    );
\up_measured_transfer_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[15]_i_1_n_7\,
      Q => up_measured_transfer_length(12),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[15]_i_1_n_6\,
      Q => up_measured_transfer_length(13),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[15]_i_1_n_5\,
      Q => up_measured_transfer_length(14),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[15]_i_1_n_4\,
      Q => up_measured_transfer_length(15),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[11]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[15]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[15]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[15]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[15]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[15]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[15]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[15]_i_1_n_7\,
      S(3 downto 0) => up_measured_transfer_length(15 downto 12)
    );
\up_measured_transfer_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[19]_i_1_n_7\,
      Q => up_measured_transfer_length(16),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[19]_i_1_n_6\,
      Q => up_measured_transfer_length(17),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[19]_i_1_n_5\,
      Q => up_measured_transfer_length(18),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[19]_i_1_n_4\,
      Q => up_measured_transfer_length(19),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[15]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[19]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[19]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[19]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[19]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[19]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[19]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[19]_i_1_n_7\,
      S(3 downto 0) => up_measured_transfer_length(19 downto 16)
    );
\up_measured_transfer_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[3]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[31]_0\(1),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[23]_i_1_n_7\,
      Q => up_measured_transfer_length(20),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[23]_i_1_n_6\,
      Q => up_measured_transfer_length(21),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[23]_i_1_n_5\,
      Q => up_measured_transfer_length(22),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[23]_i_1_n_4\,
      Q => up_measured_transfer_length(23),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[19]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[23]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[23]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[23]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[23]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[23]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[23]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[23]_i_1_n_7\,
      S(3 downto 0) => up_measured_transfer_length(23 downto 20)
    );
\up_measured_transfer_length_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[27]_i_1_n_7\,
      Q => up_measured_transfer_length(24),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[27]_i_1_n_6\,
      Q => up_measured_transfer_length(25),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[27]_i_1_n_5\,
      Q => up_measured_transfer_length(26),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[27]_i_1_n_4\,
      Q => up_measured_transfer_length(27),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[23]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[27]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[27]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[27]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[27]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[27]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[27]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[27]_i_1_n_7\,
      S(3 downto 0) => up_measured_transfer_length(27 downto 24)
    );
\up_measured_transfer_length_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[31]_i_3_n_7\,
      Q => up_measured_transfer_length(28),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[31]_i_3_n_6\,
      Q => \^up_measured_transfer_length_reg[31]_0\(3),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[3]_i_1_n_5\,
      Q => \^up_measured_transfer_length_reg[31]_0\(2),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[31]_i_3_n_5\,
      Q => \^up_measured_transfer_length_reg[31]_0\(4),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[31]_i_3_n_4\,
      Q => \^up_measured_transfer_length_reg[31]_0\(5),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[27]_i_1_n_0\,
      CO(3) => \NLW_up_measured_transfer_length_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \up_measured_transfer_length_reg[31]_i_3_n_1\,
      CO(1) => \up_measured_transfer_length_reg[31]_i_3_n_2\,
      CO(0) => \up_measured_transfer_length_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[31]_i_3_n_4\,
      O(2) => \up_measured_transfer_length_reg[31]_i_3_n_5\,
      O(1) => \up_measured_transfer_length_reg[31]_i_3_n_6\,
      O(0) => \up_measured_transfer_length_reg[31]_i_3_n_7\,
      S(3 downto 1) => \^up_measured_transfer_length_reg[31]_0\(5 downto 3),
      S(0) => up_measured_transfer_length(28)
    );
\up_measured_transfer_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[3]_i_1_n_4\,
      Q => up_measured_transfer_length(3),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \up_measured_transfer_length_reg[3]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[3]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[3]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3) => up_measured_transfer_length(3),
      DI(2 downto 0) => \^up_measured_transfer_length_reg[31]_0\(2 downto 0),
      O(3) => \up_measured_transfer_length_reg[3]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[3]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[3]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[3]_i_1_n_7\,
      S(3) => \up_measured_transfer_length[3]_i_2_n_0\,
      S(2) => \up_measured_transfer_length[3]_i_3_n_0\,
      S(1) => \up_measured_transfer_length[3]_i_4_n_0\,
      S(0) => \up_measured_transfer_length[3]_i_5_n_0\
    );
\up_measured_transfer_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[7]_i_1_n_7\,
      Q => up_measured_transfer_length(4),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[7]_i_1_n_6\,
      Q => up_measured_transfer_length(5),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[7]_i_1_n_5\,
      Q => up_measured_transfer_length(6),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[7]_i_1_n_4\,
      Q => up_measured_transfer_length(7),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[3]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[7]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[7]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[7]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => up_measured_transfer_length(6 downto 4),
      O(3) => \up_measured_transfer_length_reg[7]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[7]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[7]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[7]_i_1_n_7\,
      S(3) => up_measured_transfer_length(7),
      S(2) => \up_measured_transfer_length[7]_i_2_n_0\,
      S(1) => \up_measured_transfer_length[7]_i_3_n_0\,
      S(0) => \up_measured_transfer_length[7]_i_4_n_0\
    );
\up_measured_transfer_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[11]_i_1_n_7\,
      Q => up_measured_transfer_length(8),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
\up_measured_transfer_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_measured_transfer_length_reg[0]_0\(0),
      D => \up_measured_transfer_length_reg[11]_i_1_n_6\,
      Q => up_measured_transfer_length(9),
      R => \up_measured_transfer_length[31]_i_1_n_0\
    );
up_partial_length_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_transfer_lenghts_fifo_n_30,
      Q => \^up_partial_length_valid_reg_0\(3),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_rdata[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(7),
      I1 => up_measured_transfer_length(10),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[10]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[10]_0\
    );
\up_rdata[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(8),
      I1 => up_measured_transfer_length(11),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[11]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[11]_0\
    );
\up_rdata[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(9),
      I1 => up_measured_transfer_length(12),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[12]\,
      I4 => Q(2),
      O => \up_rdata[12]_i_6_n_0\
    );
\up_rdata[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(10),
      I1 => up_measured_transfer_length(13),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[13]\,
      I4 => Q(2),
      O => \up_rdata[13]_i_6_n_0\
    );
\up_rdata[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(11),
      I1 => up_measured_transfer_length(14),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[14]\,
      I4 => Q(2),
      O => \up_rdata[14]_i_6_n_0\
    );
\up_rdata[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(12),
      I1 => up_measured_transfer_length(15),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[15]\,
      I4 => Q(2),
      O => \up_rdata[15]_i_6_n_0\
    );
\up_rdata[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(13),
      I1 => up_measured_transfer_length(16),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[16]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[16]_0\
    );
\up_rdata[17]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(14),
      I1 => up_measured_transfer_length(17),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[17]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[17]_0\
    );
\up_rdata[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(15),
      I1 => up_measured_transfer_length(18),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[18]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[18]_0\
    );
\up_rdata[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(16),
      I1 => up_measured_transfer_length(19),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[19]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[19]_0\
    );
\up_rdata[20]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(17),
      I1 => up_measured_transfer_length(20),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[20]\,
      I4 => Q(2),
      O => \up_rdata[20]_i_6_n_0\
    );
\up_rdata[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(18),
      I1 => up_measured_transfer_length(21),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[21]\,
      I4 => Q(2),
      O => \up_rdata[21]_i_6_n_0\
    );
\up_rdata[22]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(19),
      I1 => up_measured_transfer_length(22),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[22]\,
      I4 => Q(2),
      O => \up_rdata[22]_i_6_n_0\
    );
\up_rdata[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(20),
      I1 => up_measured_transfer_length(23),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[23]\,
      I4 => Q(2),
      O => \up_rdata[23]_i_6_n_0\
    );
\up_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(0),
      I1 => Q(2),
      I2 => data8(3),
      I3 => Q(3),
      I4 => Q(4),
      I5 => up_measured_transfer_length(3),
      O => \up_dma_x_length_reg[3]_0\
    );
\up_rdata[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(1),
      I1 => up_measured_transfer_length(4),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[4]\,
      I4 => Q(2),
      O => \up_rdata[4]_i_6_n_0\
    );
\up_rdata[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(2),
      I1 => up_measured_transfer_length(5),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[5]\,
      I4 => Q(2),
      O => \up_rdata[5]_i_6_n_0\
    );
\up_rdata[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(3),
      I1 => up_measured_transfer_length(6),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[6]\,
      I4 => Q(2),
      O => \up_rdata[6]_i_6_n_0\
    );
\up_rdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(4),
      I1 => up_measured_transfer_length(7),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[7]\,
      I4 => Q(2),
      O => \up_rdata[7]_i_6_n_0\
    );
\up_rdata[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(5),
      I1 => up_measured_transfer_length(8),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[8]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[8]_0\
    );
\up_rdata[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(6),
      I1 => up_measured_transfer_length(9),
      I2 => Q(1),
      I3 => \up_dma_dest_stride_reg_n_0_[9]\,
      I4 => Q(2),
      O => \up_dma_x_length_reg[9]_0\
    );
\up_transfer_done_bitmap[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8F88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[0]_i_2_n_0\,
      I1 => up_eot,
      I2 => up_sot,
      I3 => \^up_transfer_id\(0),
      I4 => \^up_transfer_id\(1),
      I5 => \^up_partial_length_valid_reg_0\(0),
      O => \up_transfer_done_bitmap[0]_i_1_n_0\
    );
\up_transfer_done_bitmap[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[0]_i_2_n_0\
    );
\up_transfer_done_bitmap[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[1]_i_2_n_0\,
      I1 => up_eot,
      I2 => up_sot,
      I3 => \^up_transfer_id\(1),
      I4 => \^up_transfer_id\(0),
      I5 => \^up_partial_length_valid_reg_0\(1),
      O => \up_transfer_done_bitmap[1]_i_1_n_0\
    );
\up_transfer_done_bitmap[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => up_transfer_id_eot(1),
      O => \up_transfer_done_bitmap[1]_i_2_n_0\
    );
\up_transfer_done_bitmap[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[2]_i_2_n_0\,
      I1 => up_eot,
      I2 => up_sot,
      I3 => \^up_transfer_id\(0),
      I4 => \^up_transfer_id\(1),
      I5 => \^up_partial_length_valid_reg_0\(2),
      O => \up_transfer_done_bitmap[2]_i_1_n_0\
    );
\up_transfer_done_bitmap[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[2]_i_2_n_0\
    );
\up_transfer_done_bitmap[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[3]_i_2_n_0\,
      I1 => up_eot,
      I2 => up_sot,
      I3 => \^up_transfer_id\(0),
      I4 => \^up_transfer_id\(1),
      I5 => data8(3),
      O => \up_transfer_done_bitmap[3]_i_1_n_0\
    );
\up_transfer_done_bitmap[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[3]_i_2_n_0\
    );
\up_transfer_done_bitmap[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^response_ready_reg_0\,
      I1 => up_response_valid,
      I2 => \^up_dma_cyclic_reg_0\,
      I3 => up_req_eot,
      O => up_eot
    );
\up_transfer_done_bitmap_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[0]_i_1_n_0\,
      Q => \^up_partial_length_valid_reg_0\(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[1]_i_1_n_0\,
      Q => \^up_partial_length_valid_reg_0\(1),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[2]_i_1_n_0\,
      Q => \^up_partial_length_valid_reg_0\(2),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[3]_i_1_n_0\,
      Q => data8(3),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \^up_dma_req_valid_reg_0\,
      I1 => \^up_dma_cyclic_reg_0\,
      I2 => dbg_status(0),
      I3 => req_ready_gated,
      I4 => \^up_transfer_id\(0),
      O => \up_transfer_id[0]_i_1_n_0\
    );
\up_transfer_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \^up_transfer_id\(0),
      I1 => req_ready_gated,
      I2 => dbg_status(0),
      I3 => \^up_dma_cyclic_reg_0\,
      I4 => \^up_dma_req_valid_reg_0\,
      I5 => \^up_transfer_id\(1),
      O => \up_transfer_id[1]_i_1_n_0\
    );
\up_transfer_id_eot[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => up_req_eot,
      I1 => \^up_dma_cyclic_reg_0\,
      I2 => up_response_valid,
      I3 => \^response_ready_reg_0\,
      I4 => up_transfer_id_eot(0),
      O => \up_transfer_id_eot[0]_i_1_n_0\
    );
\up_transfer_id_eot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => \^response_ready_reg_0\,
      I2 => up_response_valid,
      I3 => \^up_dma_cyclic_reg_0\,
      I4 => up_req_eot,
      I5 => up_transfer_id_eot(1),
      O => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_eot_d[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => up_response_valid,
      I2 => \^response_ready_reg_0\,
      I3 => up_transfer_id_eot_d(0),
      O => \up_transfer_id_eot_d[0]_i_1_n_0\
    );
\up_transfer_id_eot_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_response_valid,
      I2 => \^response_ready_reg_0\,
      I3 => up_transfer_id_eot_d(1),
      O => \up_transfer_id_eot_d[1]_i_1_n_0\
    );
\up_transfer_id_eot_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot_d[0]_i_1_n_0\,
      Q => up_transfer_id_eot_d(0),
      R => '0'
    );
\up_transfer_id_eot_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot_d[1]_i_1_n_0\,
      Q => up_transfer_id_eot_d(1),
      R => '0'
    );
\up_transfer_id_eot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[0]_i_1_n_0\,
      Q => up_transfer_id_eot(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_eot_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[1]_i_1_n_0\,
      Q => up_transfer_id_eot(1),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[0]_i_1_n_0\,
      Q => \^up_transfer_id\(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[1]_i_1_n_0\,
      Q => \^up_transfer_id\(1),
      R => i_transfer_lenghts_fifo_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_dmac_request_arb is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_valid_reg : out STD_LOGIC;
    req_gen_ready : out STD_LOGIC;
    id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    dbg_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dma_response_valid : out STD_LOGIC;
    active_reg : out STD_LOGIC;
    s_axis_waddr_reg : out STD_LOGIC;
    m_axis_raddr_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \req_ready0__0\ : out STD_LOGIC;
    req_id0 : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : out STD_LOGIC;
    eot_id0 : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_id_reg[2]\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    \src_id_reg[3]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[3]_1\ : out STD_LOGIC;
    \response_id_reg[0]\ : out STD_LOGIC;
    \response_id_reg[1]\ : out STD_LOGIC;
    \response_id_reg[2]\ : out STD_LOGIC;
    \response_id_reg[3]\ : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    response_valid_reg : out STD_LOGIC;
    s_axis_waddr_reg_0 : out STD_LOGIC;
    \measured_burst_length_reg[0]\ : out STD_LOGIC;
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    dest_address1 : in STD_LOGIC;
    dma_req_valid : in STD_LOGIC;
    out_last : in STD_LOGIC;
    \req_eot0__2\ : in STD_LOGIC;
    dma_response_ready : in STD_LOGIC;
    enabled_reg_1 : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_rlast : in STD_LOGIC;
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    \burst_count_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    up_response_ready : in STD_LOGIC;
    req_measured_burst_length : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_dmac_request_arb : entity is "dmac_request_arb";
end zed_axi_dmac_0_0_dmac_request_arb;

architecture STRUCTURE of zed_axi_dmac_0_0_dmac_request_arb is
  signal \^active_reg\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 28 downto 3 );
  signal data_eot : STD_LOGIC;
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal dest_fifo_last : STD_LOGIC;
  signal dest_fifo_valid : STD_LOGIC;
  signal dest_req_valid : STD_LOGIC;
  signal dest_response_valid : STD_LOGIC;
  signal g : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal g0 : STD_LOGIC;
  signal i_dest_req_fifo_n_0 : STD_LOGIC;
  signal i_dest_req_fifo_n_2 : STD_LOGIC;
  signal i_dest_req_fifo_n_3 : STD_LOGIC;
  signal \i_response_generator/id0\ : STD_LOGIC;
  signal i_src_dma_mm_n_38 : STD_LOGIC;
  signal i_src_req_fifo_n_6 : STD_LOGIC;
  signal i_store_and_forward_n_71 : STD_LOGIC;
  signal i_store_and_forward_n_73 : STD_LOGIC;
  signal \^id\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^id_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^m_axis_raddr_reg\ : STD_LOGIC;
  signal \^m_src_axi_araddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal measured_last_burst_length : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal \^req_gen_ready\ : STD_LOGIC;
  signal request_eot : STD_LOGIC;
  signal response_eot : STD_LOGIC;
  signal src_address_eot : STD_LOGIC;
  signal src_dest_valid_hs : STD_LOGIC;
  signal src_req_dest_address_cur0 : STD_LOGIC;
  signal src_req_spltr_valid : STD_LOGIC;
  signal src_req_xlast_cur : STD_LOGIC;
  signal src_throttled_request_id0 : STD_LOGIC;
  signal \src_throttled_request_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id[3]_i_2_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[1]\ : STD_LOGIC;
  signal NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of eot_mem_dest_reg_r1_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of eot_mem_dest_reg_r1_0_15_0_0 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute XILINX_LEGACY_PRIM of eot_mem_dest_reg_r2_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute ram_addr_end of eot_mem_dest_reg_r2_0_15_0_0 : label is 15;
  attribute ram_slice_begin of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute ram_slice_end of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute XILINX_LEGACY_PRIM of eot_mem_src_reg_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end of eot_mem_src_reg_0_15_0_0 : label is 15;
  attribute ram_slice_begin of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_throttled_request_id[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \src_throttled_request_id[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \src_throttled_request_id[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \src_throttled_request_id[3]_i_2\ : label is "soft_lutpair89";
begin
  active_reg <= \^active_reg\;
  id(3 downto 0) <= \^id\(3 downto 0);
  \id_reg[3]_0\(3 downto 0) <= \^id_reg[3]_0\(3 downto 0);
  m_axis_raddr_reg <= \^m_axis_raddr_reg\;
  m_src_axi_araddr(25 downto 0) <= \^m_src_axi_araddr\(25 downto 0);
  req_gen_ready <= \^req_gen_ready\;
eot_mem_dest_reg_r1_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id\(0),
      A1 => \^id\(1),
      A2 => \^id\(2),
      A3 => \^id\(3),
      A4 => '0',
      D => src_address_eot,
      DPO => response_eot,
      DPRA0 => dbg_ids0(24),
      DPRA1 => dbg_ids0(25),
      DPRA2 => dbg_ids0(26),
      DPRA3 => dbg_ids0(27),
      DPRA4 => '0',
      SPO => NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED,
      WCLK => m_src_axi_aclk,
      WE => '1'
    );
eot_mem_dest_reg_r2_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id\(0),
      A1 => \^id\(1),
      A2 => \^id\(2),
      A3 => \^id\(3),
      A4 => '0',
      D => src_address_eot,
      DPO => data_eot,
      DPRA0 => g(0),
      DPRA1 => g(1),
      DPRA2 => g(2),
      DPRA3 => g(3),
      DPRA4 => '0',
      SPO => NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED,
      WCLK => m_src_axi_aclk,
      WE => '1'
    );
eot_mem_src_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id_reg[3]_0\(0),
      A1 => \^id_reg[3]_0\(1),
      A2 => \^id_reg[3]_0\(2),
      A3 => \^id_reg[3]_0\(3),
      A4 => '0',
      D => request_eot,
      DPO => src_address_eot,
      DPRA0 => \^id\(0),
      DPRA1 => \^id\(1),
      DPRA2 => \^id\(2),
      DPRA3 => \^id\(3),
      DPRA4 => '0',
      SPO => NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => '1'
    );
i_dest_dma_stream: entity work.zed_axi_dmac_0_0_dmac_dest_axi_stream
     port map (
      Q(0) => Q(0),
      active_reg_0 => \^active_reg\,
      active_reg_1 => i_dest_req_fifo_n_2,
      data_enabled_reg_0 => enabled_reg_1,
      data_eot => data_eot,
      dbg_ids0(3 downto 0) => dbg_ids0(27 downto 24),
      dest_fifo_last => dest_fifo_last,
      dest_fifo_valid => dest_fifo_valid,
      dest_response_valid => dest_response_valid,
      enabled_reg => dbg_status(0),
      enabled_reg_0 => enabled_reg_0,
      g(3 downto 0) => g(3 downto 0),
      id0 => \i_response_generator/id0\,
      \id_reg[0]_0\ => \id_reg[0]\,
      \id_reg[1]_0\ => \id_reg[1]\,
      \id_reg[2]_0\ => \id_reg[2]\,
      \id_reg[3]_0\ => \id_reg[3]_1\,
      m_axis_aclk => m_axis_aclk,
      m_axis_last => m_axis_last,
      m_axis_ready => m_axis_ready,
      m_src_axi_araddr(8 downto 5) => \^m_src_axi_araddr\(24 downto 21),
      m_src_axi_araddr(4 downto 1) => \^m_src_axi_araddr\(16 downto 13),
      m_src_axi_araddr(0) => \^m_src_axi_araddr\(1),
      req_xlast_d_reg_0 => i_dest_req_fifo_n_0,
      \response_id_reg[0]\ => \response_id_reg[0]\,
      \response_id_reg[1]\ => \response_id_reg[1]\,
      \response_id_reg[2]\ => \response_id_reg[2]\,
      \response_id_reg[3]\ => \response_id_reg[3]\,
      \up_rdata_reg[27]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[27]_0\ => \up_rdata_reg[3]_0\
    );
i_dest_req_fifo: entity work.\zed_axi_dmac_0_0_util_axis_fifo__parameterized0\
     port map (
      Q(0) => Q(0),
      active_reg => \^active_reg\,
      \cdc_sync_fifo_ram_reg[0]_0\ => i_dest_req_fifo_n_0,
      data_eot => data_eot,
      dest_fifo_last => dest_fifo_last,
      dest_req_valid => dest_req_valid,
      m_axis_aclk => m_axis_aclk,
      m_axis_raddr_reg_0 => i_dest_req_fifo_n_2,
      m_axis_raddr_reg_1 => i_dest_req_fifo_n_3,
      m_axis_ready => m_axis_ready,
      m_src_axi_aclk => m_src_axi_aclk,
      src_dest_valid_hs => src_dest_valid_hs,
      src_req_dest_address_cur0 => src_req_dest_address_cur0,
      src_req_xlast_cur => src_req_xlast_cur
    );
i_req_gen: entity work.zed_axi_dmac_0_0_dmac_request_generator
     port map (
      E(0) => src_throttled_request_id0,
      Q(0) => Q(0),
      \burst_count_reg[0]_0\ => enabled_reg_1,
      \burst_count_reg[16]_0\(16 downto 0) => \burst_count_reg[16]\(16 downto 0),
      dma_req_valid => dma_req_valid,
      \id_reg[3]_0\(3 downto 0) => \^id_reg[3]_0\(3 downto 0),
      req_ready_reg_0 => \^req_gen_ready\,
      request_eot => request_eot,
      response_id(3 downto 0) => dbg_ids0(27 downto 24),
      s_axi_aclk => s_axi_aclk,
      src_req_spltr_valid => src_req_spltr_valid,
      \src_throttled_request_id_reg[0]\(3) => p_1_in,
      \src_throttled_request_id_reg[0]\(2) => p_1_in1_in,
      \src_throttled_request_id_reg[0]\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[0]\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \src_throttled_request_id_reg[0]_0\ => i_store_and_forward_n_71,
      \src_throttled_request_id_reg[0]_1\ => i_store_and_forward_n_73
    );
i_response_manager: entity work.zed_axi_dmac_0_0_axi_dmac_response_manager
     port map (
      Q(0) => Q(0),
      dest_response_valid => dest_response_valid,
      dma_response_ready => dma_response_ready,
      eot_id0 => eot_id0,
      id0 => \i_response_generator/id0\,
      m_axis_aclk => m_axis_aclk,
      \measured_burst_length_reg[0]_0\ => \measured_burst_length_reg[0]\,
      \req_eot0__2\ => \req_eot0__2\,
      req_measured_burst_length(0) => req_measured_burst_length(0),
      \reset_gen[0].reset_sync_reg[0]\ => \reset_gen[0].reset_sync_reg[0]\,
      response_eot => response_eot,
      response_valid_reg_0 => dma_response_valid,
      response_valid_reg_1 => response_valid_reg,
      s_axi_aclk => s_axi_aclk,
      up_response_ready => up_response_ready
    );
i_src_dma_mm: entity work.zed_axi_dmac_0_0_dmac_src_mm_axi
     port map (
      Q(0) => Q(0),
      addr_valid_reg => addr_valid_reg,
      addr_valid_reg_0(3) => p_1_in,
      addr_valid_reg_0(2) => p_1_in1_in,
      addr_valid_reg_0(1) => \src_throttled_request_id_reg_n_0_[1]\,
      addr_valid_reg_0(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \address_reg[25]\(29 downto 4) => data(28 downto 3),
      \address_reg[25]\(3 downto 0) => measured_last_burst_length(3 downto 0),
      dbg_status(0) => dbg_status(1),
      dest_req_valid => dest_req_valid,
      enabled_reg_0 => enabled_reg,
      enabled_reg_1 => enabled_reg_1,
      g0 => g0,
      \id_reg[0]_0\ => \^id\(0),
      \id_reg[1]_0\ => \^id\(1),
      \id_reg[2]_0\ => \^id\(2),
      \id_reg[3]_0\ => \^id\(3),
      \id_reg[3]_1\(3 downto 0) => \id_reg[3]\(3 downto 0),
      m_axis_raddr_reg => i_src_dma_mm_n_38,
      m_axis_raddr_reg_0 => \^m_axis_raddr_reg\,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(25 downto 0) => \^m_src_axi_araddr\(25 downto 0),
      m_src_axi_arlen(3 downto 0) => m_src_axi_arlen(3 downto 0),
      m_src_axi_arready => m_src_axi_arready,
      src_address_eot => src_address_eot,
      src_req_dest_address_cur0 => src_req_dest_address_cur0,
      src_req_spltr_valid => src_req_spltr_valid,
      \up_rdata_reg[5]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[5]_0\ => \up_rdata_reg[3]_0\
    );
i_src_req_fifo: entity work.\zed_axi_dmac_0_0_util_axis_fifo__parameterized1\
     port map (
      D(30 downto 0) => D(30 downto 0),
      E(0) => E(0),
      Q(0) => Q(0),
      \cdc_sync_fifo_ram_reg[0]_0\ => i_src_req_fifo_n_6,
      \cdc_sync_fifo_ram_reg[34]_0\(29 downto 4) => data(28 downto 3),
      \cdc_sync_fifo_ram_reg[34]_0\(3 downto 0) => measured_last_burst_length(3 downto 0),
      \cdc_sync_fifo_ram_reg[34]_1\ => \^req_gen_ready\,
      dest_address1 => dest_address1,
      dma_req_valid => dma_req_valid,
      m_axis_raddr_reg_0 => \^m_axis_raddr_reg\,
      m_axis_raddr_reg_1 => i_src_dma_mm_n_38,
      m_src_axi_aclk => m_src_axi_aclk,
      out_last => out_last,
      req_id0 => req_id0,
      \req_ready0__0\ => \req_ready0__0\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg_0 => s_axis_waddr_reg,
      s_axis_waddr_reg_1 => s_axis_waddr_reg_0,
      src_req_dest_address_cur0 => src_req_dest_address_cur0,
      src_req_spltr_valid => src_req_spltr_valid,
      src_req_xlast_cur => src_req_xlast_cur
    );
i_store_and_forward: entity work.zed_axi_dmac_0_0_axi_dmac_burst_memory
     port map (
      Q(0) => Q(0),
      SR(0) => SR(0),
      dest_fifo_last => dest_fifo_last,
      dest_fifo_valid => dest_fifo_valid,
      g0 => g0,
      m_axis_aclk => m_axis_aclk,
      m_axis_data(63 downto 0) => m_axis_data(63 downto 0),
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      m_ram_reg => \^active_reg\,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(0) => \^m_src_axi_araddr\(0),
      m_src_axi_rdata(63 downto 0) => m_src_axi_rdata(63 downto 0),
      m_src_axi_rlast => m_src_axi_rlast,
      m_src_axi_rvalid => m_src_axi_rvalid,
      \src_id_reg[0]_0\ => ADDRBWRADDR(0),
      \src_id_reg[1]_0\ => ADDRBWRADDR(1),
      \src_id_reg[2]_0\ => \src_id_reg[2]\,
      \src_id_reg[3]_0\ => \src_id_reg[3]\,
      \src_throttled_request_id_reg[0]\ => i_store_and_forward_n_73,
      \src_throttled_request_id_reg[0]_0\(3) => p_1_in,
      \src_throttled_request_id_reg[0]_0\(2) => p_1_in1_in,
      \src_throttled_request_id_reg[0]_0\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[0]_0\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \src_throttled_request_id_reg[2]\ => i_store_and_forward_n_71,
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[3]_0\ => \up_rdata_reg[3]_0\
    );
src_dest_valid_hs_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => i_dest_req_fifo_n_3,
      Q => src_dest_valid_hs,
      R => Q(0)
    );
src_req_xlast_cur_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_src_axi_aclk,
      CE => '1',
      D => i_src_req_fifo_n_6,
      Q => src_req_xlast_cur,
      R => '0'
    );
\src_throttled_request_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => p_1_in1_in,
      O => \src_throttled_request_id[0]_i_1_n_0\
    );
\src_throttled_request_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => p_1_in,
      I2 => \src_throttled_request_id_reg_n_0_[1]\,
      I3 => \src_throttled_request_id_reg_n_0_[0]\,
      O => inc_id_return(1)
    );
\src_throttled_request_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => p_1_in,
      I1 => \src_throttled_request_id_reg_n_0_[0]\,
      I2 => p_1_in1_in,
      I3 => \src_throttled_request_id_reg_n_0_[1]\,
      O => inc_id_return(2)
    );
\src_throttled_request_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[1]\,
      I1 => p_1_in1_in,
      I2 => \src_throttled_request_id_reg_n_0_[0]\,
      I3 => p_1_in,
      O => \src_throttled_request_id[3]_i_2_n_0\
    );
\src_throttled_request_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[0]_i_1_n_0\,
      Q => \src_throttled_request_id_reg_n_0_[0]\,
      R => Q(0)
    );
\src_throttled_request_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => src_throttled_request_id0,
      D => inc_id_return(1),
      Q => \src_throttled_request_id_reg_n_0_[1]\,
      R => Q(0)
    );
\src_throttled_request_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => src_throttled_request_id0,
      D => inc_id_return(2),
      Q => p_1_in1_in,
      R => Q(0)
    );
\src_throttled_request_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_src_axi_aclk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[3]_i_2_n_0\,
      Q => p_1_in,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_regmap is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    irq : out STD_LOGIC;
    ctrl_enable : out STD_LOGIC;
    up_dma_cyclic : out STD_LOGIC;
    up_dma_req_valid : out STD_LOGIC;
    up_response_ready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    ctrl_pause : out STD_LOGIC;
    up_dma_last : out STD_LOGIC;
    up_axi_rvalid_int_reg : out STD_LOGIC;
    \up_raddr_int_reg[7]\ : out STD_LOGIC;
    \up_raddr_int_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \up_dma_x_length_reg[23]\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \up_dma_y_length_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \up_dma_src_stride_reg[23]\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    up_req_eot : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_response_valid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    dbg_ids1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \up_rdata_reg[26]_0\ : in STD_LOGIC;
    \up_rdata_reg[25]_0\ : in STD_LOGIC;
    \up_rdata_reg[24]_0\ : in STD_LOGIC;
    \up_rdata_reg[19]_0\ : in STD_LOGIC;
    \up_rdata_reg[18]_0\ : in STD_LOGIC;
    \up_rdata_reg[17]_0\ : in STD_LOGIC;
    \up_rdata_reg[16]_0\ : in STD_LOGIC;
    \up_rdata_reg[11]_0\ : in STD_LOGIC;
    \up_rdata_reg[10]_0\ : in STD_LOGIC;
    \up_rdata_reg[9]_0\ : in STD_LOGIC;
    \up_rdata_reg[8]_0\ : in STD_LOGIC;
    \up_rdata_reg[6]_0\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    \up_rdata_reg[4]_0\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    dbg_ids0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \up_rdata_reg[7]_0\ : in STD_LOGIC;
    m_src_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    req_ready_gated : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    req_measured_burst_length : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_regmap : entity is "axi_dmac_regmap";
end zed_axi_dmac_0_0_axi_dmac_regmap;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_regmap is
  signal \^q\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^ctrl_enable\ : STD_LOGIC;
  signal \^ctrl_pause\ : STD_LOGIC;
  signal data12 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_regmap_request_n_10 : STD_LOGIC;
  signal i_regmap_request_n_100 : STD_LOGIC;
  signal i_regmap_request_n_101 : STD_LOGIC;
  signal i_regmap_request_n_102 : STD_LOGIC;
  signal i_regmap_request_n_103 : STD_LOGIC;
  signal i_regmap_request_n_104 : STD_LOGIC;
  signal i_regmap_request_n_105 : STD_LOGIC;
  signal i_regmap_request_n_106 : STD_LOGIC;
  signal i_regmap_request_n_107 : STD_LOGIC;
  signal i_regmap_request_n_108 : STD_LOGIC;
  signal i_regmap_request_n_109 : STD_LOGIC;
  signal i_regmap_request_n_110 : STD_LOGIC;
  signal i_regmap_request_n_111 : STD_LOGIC;
  signal i_regmap_request_n_112 : STD_LOGIC;
  signal i_regmap_request_n_113 : STD_LOGIC;
  signal i_regmap_request_n_114 : STD_LOGIC;
  signal i_regmap_request_n_115 : STD_LOGIC;
  signal i_regmap_request_n_116 : STD_LOGIC;
  signal i_regmap_request_n_117 : STD_LOGIC;
  signal i_regmap_request_n_118 : STD_LOGIC;
  signal i_regmap_request_n_147 : STD_LOGIC;
  signal i_regmap_request_n_150 : STD_LOGIC;
  signal i_regmap_request_n_151 : STD_LOGIC;
  signal i_regmap_request_n_152 : STD_LOGIC;
  signal i_regmap_request_n_153 : STD_LOGIC;
  signal i_regmap_request_n_38 : STD_LOGIC;
  signal i_regmap_request_n_39 : STD_LOGIC;
  signal i_regmap_request_n_40 : STD_LOGIC;
  signal i_regmap_request_n_65 : STD_LOGIC;
  signal i_regmap_request_n_87 : STD_LOGIC;
  signal i_regmap_request_n_88 : STD_LOGIC;
  signal i_regmap_request_n_89 : STD_LOGIC;
  signal i_regmap_request_n_90 : STD_LOGIC;
  signal i_regmap_request_n_91 : STD_LOGIC;
  signal i_regmap_request_n_92 : STD_LOGIC;
  signal i_regmap_request_n_93 : STD_LOGIC;
  signal i_regmap_request_n_94 : STD_LOGIC;
  signal i_regmap_request_n_95 : STD_LOGIC;
  signal i_regmap_request_n_96 : STD_LOGIC;
  signal i_regmap_request_n_97 : STD_LOGIC;
  signal i_regmap_request_n_98 : STD_LOGIC;
  signal i_regmap_request_n_99 : STD_LOGIC;
  signal i_up_axi_n_10 : STD_LOGIC;
  signal i_up_axi_n_11 : STD_LOGIC;
  signal i_up_axi_n_12 : STD_LOGIC;
  signal i_up_axi_n_13 : STD_LOGIC;
  signal i_up_axi_n_14 : STD_LOGIC;
  signal i_up_axi_n_15 : STD_LOGIC;
  signal i_up_axi_n_37 : STD_LOGIC;
  signal i_up_axi_n_38 : STD_LOGIC;
  signal i_up_axi_n_39 : STD_LOGIC;
  signal i_up_axi_n_40 : STD_LOGIC;
  signal i_up_axi_n_41 : STD_LOGIC;
  signal i_up_axi_n_44 : STD_LOGIC;
  signal i_up_axi_n_45 : STD_LOGIC;
  signal i_up_axi_n_46 : STD_LOGIC;
  signal i_up_axi_n_7 : STD_LOGIC;
  signal i_up_axi_n_8 : STD_LOGIC;
  signal i_up_axi_n_87 : STD_LOGIC;
  signal i_up_axi_n_88 : STD_LOGIC;
  signal i_up_axi_n_89 : STD_LOGIC;
  signal i_up_axi_n_9 : STD_LOGIC;
  signal i_up_axi_n_90 : STD_LOGIC;
  signal i_up_axi_n_91 : STD_LOGIC;
  signal i_up_axi_n_92 : STD_LOGIC;
  signal i_up_axi_n_93 : STD_LOGIC;
  signal irq_i_1_n_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^up_dma_cyclic\ : STD_LOGIC;
  signal \^up_dma_last\ : STD_LOGIC;
  signal \^up_dma_req_valid\ : STD_LOGIC;
  signal up_dma_src_address : STD_LOGIC;
  signal \^up_dma_src_stride_reg[23]\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal up_dma_x_length0_in : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal up_dma_y_length : STD_LOGIC;
  signal \^up_dma_y_length_reg[23]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \up_irq_mask[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[1]\ : STD_LOGIC;
  signal up_irq_source : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_measured_transfer_length : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rack : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal up_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rreq : STD_LOGIC;
  signal up_scratch : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_transfer_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_wack : STD_LOGIC;
  signal up_wreq : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_irq_mask[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_1\ : label is "soft_lutpair45";
begin
  Q(25 downto 0) <= \^q\(25 downto 0);
  ctrl_enable <= \^ctrl_enable\;
  ctrl_pause <= \^ctrl_pause\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  up_dma_cyclic <= \^up_dma_cyclic\;
  up_dma_last <= \^up_dma_last\;
  up_dma_req_valid <= \^up_dma_req_valid\;
  \up_dma_src_stride_reg[23]\(20 downto 0) <= \^up_dma_src_stride_reg[23]\(20 downto 0);
  \up_dma_y_length_reg[23]\(23 downto 0) <= \^up_dma_y_length_reg[23]\(23 downto 0);
ctrl_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_93,
      Q => \^ctrl_enable\,
      R => \^s_axi_aresetn_0\
    );
ctrl_pause_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_92,
      Q => \^ctrl_pause\,
      R => \^s_axi_aresetn_0\
    );
i_regmap_request: entity work.zed_axi_dmac_0_0_axi_dmac_regmap_request
     port map (
      E(0) => i_up_axi_n_88,
      Q(4 downto 0) => up_raddr(4 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      \data_reg[24]\ => i_regmap_request_n_114,
      \data_reg[25]\ => i_regmap_request_n_115,
      \data_reg[26]\ => i_regmap_request_n_116,
      \data_reg[27]\ => i_regmap_request_n_117,
      \data_reg[28]\ => i_regmap_request_n_118,
      \data_reg[2]\ => i_regmap_request_n_40,
      \data_reg[33]\(5 downto 4) => data12(1 downto 0),
      \data_reg[33]\(3) => i_regmap_request_n_150,
      \data_reg[33]\(2) => i_regmap_request_n_151,
      \data_reg[33]\(1) => i_regmap_request_n_152,
      \data_reg[33]\(0) => i_regmap_request_n_153,
      dbg_status(0) => dbg_status(3),
      \level_reg[1]\ => \^ctrl_enable\,
      p_3_in(0) => p_3_in(2),
      p_8_in => p_8_in,
      req_measured_burst_length(0) => req_measured_burst_length(0),
      req_ready_gated => req_ready_gated,
      response_ready_reg_0 => up_response_ready,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      up_dma_cyclic_reg_0 => \^up_dma_cyclic\,
      up_dma_cyclic_reg_1 => i_up_axi_n_90,
      \up_dma_dest_stride_reg[3]_0\(0) => i_regmap_request_n_147,
      \up_dma_dest_stride_reg[3]_1\(0) => i_up_axi_n_87,
      up_dma_enable_tlen_reporting_reg_0 => i_up_axi_n_91,
      up_dma_last => \^up_dma_last\,
      up_dma_last_reg_0 => i_up_axi_n_89,
      up_dma_req_valid_reg_0 => \^up_dma_req_valid\,
      up_dma_req_valid_reg_1 => i_up_axi_n_7,
      \up_dma_src_address_reg[28]_0\(25 downto 0) => \^q\(25 downto 0),
      \up_dma_src_address_reg[28]_1\(28) => i_up_axi_n_11,
      \up_dma_src_address_reg[28]_1\(27) => i_up_axi_n_12,
      \up_dma_src_address_reg[28]_1\(26) => i_up_axi_n_13,
      \up_dma_src_address_reg[28]_1\(25) => i_up_axi_n_14,
      \up_dma_src_address_reg[28]_1\(24) => i_up_axi_n_15,
      \up_dma_src_address_reg[28]_1\(23 downto 3) => up_dma_x_length0_in(23 downto 3),
      \up_dma_src_address_reg[28]_1\(2) => i_up_axi_n_37,
      \up_dma_src_address_reg[28]_1\(1) => i_up_axi_n_38,
      \up_dma_src_address_reg[28]_1\(0) => i_up_axi_n_39,
      \up_dma_src_address_reg[28]_2\(0) => up_dma_src_address,
      \up_dma_src_stride_reg[23]_0\(20 downto 0) => \^up_dma_src_stride_reg[23]\(20 downto 0),
      \up_dma_src_stride_reg[3]_0\(0) => i_up_axi_n_46,
      \up_dma_x_length_reg[10]_0\ => i_regmap_request_n_94,
      \up_dma_x_length_reg[11]_0\ => i_regmap_request_n_96,
      \up_dma_x_length_reg[16]_0\ => i_regmap_request_n_102,
      \up_dma_x_length_reg[17]_0\ => i_regmap_request_n_104,
      \up_dma_x_length_reg[18]_0\ => i_regmap_request_n_106,
      \up_dma_x_length_reg[19]_0\ => i_regmap_request_n_108,
      \up_dma_x_length_reg[23]_0\(20 downto 0) => \up_dma_x_length_reg[23]\(20 downto 0),
      \up_dma_x_length_reg[3]_0\ => i_regmap_request_n_10,
      \up_dma_x_length_reg[8]_0\ => i_regmap_request_n_90,
      \up_dma_x_length_reg[9]_0\ => i_regmap_request_n_92,
      \up_dma_y_length_reg[10]_0\ => i_regmap_request_n_95,
      \up_dma_y_length_reg[11]_0\ => i_regmap_request_n_97,
      \up_dma_y_length_reg[16]_0\ => i_regmap_request_n_103,
      \up_dma_y_length_reg[17]_0\ => i_regmap_request_n_105,
      \up_dma_y_length_reg[18]_0\ => i_regmap_request_n_107,
      \up_dma_y_length_reg[19]_0\ => i_regmap_request_n_109,
      \up_dma_y_length_reg[23]_0\(23 downto 0) => \^up_dma_y_length_reg[23]\(23 downto 0),
      \up_dma_y_length_reg[23]_1\(0) => up_dma_y_length,
      \up_dma_y_length_reg[8]_0\ => i_regmap_request_n_91,
      \up_dma_y_length_reg[9]_0\ => i_regmap_request_n_93,
      \up_measured_transfer_length_reg[0]_0\(0) => E(0),
      \up_measured_transfer_length_reg[31]_0\(5 downto 3) => up_measured_transfer_length(31 downto 29),
      \up_measured_transfer_length_reg[31]_0\(2 downto 0) => up_measured_transfer_length(2 downto 0),
      up_partial_length_valid_reg_0(3) => data8(31),
      up_partial_length_valid_reg_0(2 downto 0) => data8(2 downto 0),
      \up_raddr_int_reg[0]\ => i_regmap_request_n_65,
      \up_raddr_int_reg[0]_0\ => i_regmap_request_n_87,
      \up_raddr_int_reg[0]_1\ => i_regmap_request_n_88,
      \up_raddr_int_reg[0]_10\ => i_regmap_request_n_113,
      \up_raddr_int_reg[0]_2\ => i_regmap_request_n_89,
      \up_raddr_int_reg[0]_3\ => i_regmap_request_n_98,
      \up_raddr_int_reg[0]_4\ => i_regmap_request_n_99,
      \up_raddr_int_reg[0]_5\ => i_regmap_request_n_100,
      \up_raddr_int_reg[0]_6\ => i_regmap_request_n_101,
      \up_raddr_int_reg[0]_7\ => i_regmap_request_n_110,
      \up_raddr_int_reg[0]_8\ => i_regmap_request_n_111,
      \up_raddr_int_reg[0]_9\ => i_regmap_request_n_112,
      up_req_eot => up_req_eot,
      up_response_valid => up_response_valid,
      up_sot => up_sot,
      up_transfer_id(1 downto 0) => up_transfer_id(1 downto 0),
      \up_transfer_id_eot_reg[0]_0\ => i_regmap_request_n_38,
      \up_transfer_id_eot_reg[1]_0\ => i_regmap_request_n_39
    );
i_up_axi: entity work.zed_axi_dmac_0_0_up_axi
     port map (
      D(1) => i_up_axi_n_40,
      D(0) => i_up_axi_n_41,
      E(0) => E(0),
      Q(31) => i_up_axi_n_8,
      Q(30) => i_up_axi_n_9,
      Q(29) => i_up_axi_n_10,
      Q(28) => i_up_axi_n_11,
      Q(27) => i_up_axi_n_12,
      Q(26) => i_up_axi_n_13,
      Q(25) => i_up_axi_n_14,
      Q(24) => i_up_axi_n_15,
      Q(23 downto 3) => up_dma_x_length0_in(23 downto 3),
      Q(2) => i_up_axi_n_37,
      Q(1) => i_up_axi_n_38,
      Q(0) => i_up_axi_n_39,
      SR(0) => \^s_axi_aresetn_0\,
      ctrl_enable_reg => \^ctrl_enable\,
      ctrl_pause => \^ctrl_pause\,
      dbg_ids0(2 downto 0) => dbg_ids0(2 downto 0),
      dbg_ids1(11 downto 0) => dbg_ids1(11 downto 0),
      dbg_status(2 downto 0) => dbg_status(2 downto 0),
      m_src_axi_araddr(8 downto 0) => m_src_axi_araddr(8 downto 0),
      p_3_in(0) => p_3_in(2),
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      up_axi_rvalid_int_reg_0 => up_axi_rvalid_int_reg,
      up_dma_cyclic => \^up_dma_cyclic\,
      up_dma_last => \^up_dma_last\,
      up_dma_req_valid => \^up_dma_req_valid\,
      up_dma_req_valid_reg => i_up_axi_n_7,
      \up_irq_source_reg[1]\(1 downto 0) => up_irq_source(1 downto 0),
      up_rack => up_rack,
      \up_raddr_int_reg[3]_0\ => \up_raddr_int_reg[3]\,
      \up_raddr_int_reg[4]_0\(4 downto 0) => up_raddr(4 downto 0),
      \up_raddr_int_reg[7]_0\ => \up_raddr_int_reg[7]\,
      \up_rdata[0]_i_4_0\ => i_regmap_request_n_38,
      \up_rdata[1]_i_4_0\(5 downto 4) => data12(1 downto 0),
      \up_rdata[1]_i_4_0\(3) => i_regmap_request_n_150,
      \up_rdata[1]_i_4_0\(2) => i_regmap_request_n_151,
      \up_rdata[1]_i_4_0\(1) => i_regmap_request_n_152,
      \up_rdata[1]_i_4_0\(0) => i_regmap_request_n_153,
      \up_rdata[1]_i_4_1\ => i_regmap_request_n_39,
      \up_rdata[31]_i_6_0\(3) => data8(31),
      \up_rdata[31]_i_6_0\(2 downto 0) => data8(2 downto 0),
      \up_rdata[3]_i_4_0\ => i_regmap_request_n_10,
      \up_rdata[3]_i_4_1\(0) => i_regmap_request_n_147,
      \up_rdata[3]_i_4_2\(2) => \^up_dma_y_length_reg[23]\(3),
      \up_rdata[3]_i_4_2\(1 downto 0) => \^up_dma_y_length_reg[23]\(1 downto 0),
      \up_rdata[3]_i_4_3\(0) => \^up_dma_src_stride_reg[23]\(0),
      \up_rdata_d_reg[31]_0\(31 downto 0) => up_rdata(31 downto 0),
      \up_rdata_reg[0]\ => \up_irq_mask_reg_n_0_[0]\,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]_0\,
      \up_rdata_reg[10]_0\ => i_regmap_request_n_95,
      \up_rdata_reg[10]_1\ => i_regmap_request_n_94,
      \up_rdata_reg[11]\ => \up_rdata_reg[11]_0\,
      \up_rdata_reg[11]_0\ => i_regmap_request_n_97,
      \up_rdata_reg[11]_1\ => i_regmap_request_n_96,
      \up_rdata_reg[12]\ => i_regmap_request_n_98,
      \up_rdata_reg[13]\ => i_regmap_request_n_99,
      \up_rdata_reg[14]\ => i_regmap_request_n_100,
      \up_rdata_reg[15]\ => i_regmap_request_n_101,
      \up_rdata_reg[16]\ => \up_rdata_reg[16]_0\,
      \up_rdata_reg[16]_0\ => i_regmap_request_n_103,
      \up_rdata_reg[16]_1\ => i_regmap_request_n_102,
      \up_rdata_reg[17]\ => \up_rdata_reg[17]_0\,
      \up_rdata_reg[17]_0\ => i_regmap_request_n_105,
      \up_rdata_reg[17]_1\ => i_regmap_request_n_104,
      \up_rdata_reg[18]\ => \up_rdata_reg[18]_0\,
      \up_rdata_reg[18]_0\ => i_regmap_request_n_107,
      \up_rdata_reg[18]_1\ => i_regmap_request_n_106,
      \up_rdata_reg[19]\ => \up_rdata_reg[19]_0\,
      \up_rdata_reg[19]_0\ => i_regmap_request_n_109,
      \up_rdata_reg[19]_1\ => i_regmap_request_n_108,
      \up_rdata_reg[1]\ => \up_irq_mask_reg_n_0_[1]\,
      \up_rdata_reg[20]\ => i_regmap_request_n_110,
      \up_rdata_reg[21]\ => i_regmap_request_n_111,
      \up_rdata_reg[22]\ => i_regmap_request_n_112,
      \up_rdata_reg[23]\ => i_regmap_request_n_113,
      \up_rdata_reg[24]\ => \up_rdata_reg[24]_0\,
      \up_rdata_reg[24]_0\ => i_regmap_request_n_114,
      \up_rdata_reg[25]\ => \up_rdata_reg[25]_0\,
      \up_rdata_reg[25]_0\ => i_regmap_request_n_115,
      \up_rdata_reg[26]\ => \up_rdata_reg[26]_0\,
      \up_rdata_reg[26]_0\ => i_regmap_request_n_116,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]_0\,
      \up_rdata_reg[27]_0\ => i_regmap_request_n_117,
      \up_rdata_reg[28]\(25 downto 0) => \^q\(25 downto 0),
      \up_rdata_reg[28]_0\ => i_regmap_request_n_118,
      \up_rdata_reg[2]\ => i_regmap_request_n_40,
      \up_rdata_reg[31]\(31 downto 0) => up_scratch(31 downto 0),
      \up_rdata_reg[31]_0\(5 downto 3) => up_measured_transfer_length(31 downto 29),
      \up_rdata_reg[31]_0\(2 downto 0) => up_measured_transfer_length(2 downto 0),
      \up_rdata_reg[3]\ => \up_rdata_reg[3]_0\,
      \up_rdata_reg[4]\ => \up_rdata_reg[4]_0\,
      \up_rdata_reg[4]_0\ => i_regmap_request_n_65,
      \up_rdata_reg[5]\ => \up_rdata_reg[5]_0\,
      \up_rdata_reg[5]_0\ => i_regmap_request_n_87,
      \up_rdata_reg[6]\ => \up_rdata_reg[6]_0\,
      \up_rdata_reg[6]_0\ => i_regmap_request_n_88,
      \up_rdata_reg[7]\ => i_regmap_request_n_89,
      \up_rdata_reg[7]_0\ => \up_rdata_reg[7]_0\,
      \up_rdata_reg[8]\ => \up_rdata_reg[8]_0\,
      \up_rdata_reg[8]_0\ => i_regmap_request_n_91,
      \up_rdata_reg[8]_1\ => i_regmap_request_n_90,
      \up_rdata_reg[9]\ => \up_rdata_reg[9]_0\,
      \up_rdata_reg[9]_0\ => i_regmap_request_n_93,
      \up_rdata_reg[9]_1\ => i_regmap_request_n_92,
      up_req_eot => up_req_eot,
      up_rreq => up_rreq,
      \up_scratch_reg[31]\(31 downto 0) => up_rdata_0(31 downto 0),
      up_sot => up_sot,
      up_transfer_id(1 downto 0) => up_transfer_id(1 downto 0),
      up_wack => up_wack,
      \up_waddr_int_reg[0]_0\(0) => i_up_axi_n_88,
      \up_waddr_int_reg[3]_0\(0) => i_up_axi_n_46,
      \up_waddr_int_reg[8]_0\(0) => i_up_axi_n_87,
      \up_wdata_int_reg[0]_0\ => i_up_axi_n_90,
      \up_wdata_int_reg[0]_1\ => i_up_axi_n_93,
      \up_wdata_int_reg[1]_0\ => i_up_axi_n_89,
      \up_wdata_int_reg[1]_1\ => i_up_axi_n_92,
      \up_wdata_int_reg[2]_0\ => i_up_axi_n_91,
      up_wreq => up_wreq,
      up_wreq_int_reg_0(0) => up_dma_src_address,
      up_wreq_int_reg_1(0) => up_dma_y_length,
      up_wreq_int_reg_2 => i_up_axi_n_44,
      up_wreq_int_reg_3(0) => i_up_axi_n_45
    );
irq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \up_irq_mask_reg_n_0_[0]\,
      I1 => up_irq_source(0),
      I2 => \up_irq_mask_reg_n_0_[1]\,
      I3 => up_irq_source(1),
      O => irq_i_1_n_0
    );
irq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_i_1_n_0,
      Q => irq,
      R => \^s_axi_aresetn_0\
    );
\up_irq_mask[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_39,
      I1 => i_up_axi_n_44,
      I2 => \up_irq_mask_reg_n_0_[0]\,
      O => \up_irq_mask[0]_i_1_n_0\
    );
\up_irq_mask[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_38,
      I1 => i_up_axi_n_44,
      I2 => \up_irq_mask_reg_n_0_[1]\,
      O => \up_irq_mask[1]_i_1_n_0\
    );
\up_irq_mask_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[0]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[0]\,
      S => \^s_axi_aresetn_0\
    );
\up_irq_mask_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[1]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[1]\,
      S => \^s_axi_aresetn_0\
    );
\up_irq_source_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_41,
      Q => up_irq_source(0),
      R => \^s_axi_aresetn_0\
    );
\up_irq_source_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_40,
      Q => up_irq_source(1),
      R => \^s_axi_aresetn_0\
    );
up_rack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq,
      Q => up_rack,
      R => \^s_axi_aresetn_0\
    );
\up_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(0),
      Q => up_rdata(0),
      R => '0'
    );
\up_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(10),
      Q => up_rdata(10),
      R => '0'
    );
\up_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(11),
      Q => up_rdata(11),
      R => '0'
    );
\up_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(12),
      Q => up_rdata(12),
      R => '0'
    );
\up_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(13),
      Q => up_rdata(13),
      R => '0'
    );
\up_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(14),
      Q => up_rdata(14),
      R => '0'
    );
\up_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(15),
      Q => up_rdata(15),
      R => '0'
    );
\up_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(16),
      Q => up_rdata(16),
      R => '0'
    );
\up_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(17),
      Q => up_rdata(17),
      R => '0'
    );
\up_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(18),
      Q => up_rdata(18),
      R => '0'
    );
\up_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(19),
      Q => up_rdata(19),
      R => '0'
    );
\up_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(1),
      Q => up_rdata(1),
      R => '0'
    );
\up_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(20),
      Q => up_rdata(20),
      R => '0'
    );
\up_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(21),
      Q => up_rdata(21),
      R => '0'
    );
\up_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(22),
      Q => up_rdata(22),
      R => '0'
    );
\up_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(23),
      Q => up_rdata(23),
      R => '0'
    );
\up_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(24),
      Q => up_rdata(24),
      R => '0'
    );
\up_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(25),
      Q => up_rdata(25),
      R => '0'
    );
\up_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(26),
      Q => up_rdata(26),
      R => '0'
    );
\up_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(27),
      Q => up_rdata(27),
      R => '0'
    );
\up_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(28),
      Q => up_rdata(28),
      R => '0'
    );
\up_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(29),
      Q => up_rdata(29),
      R => '0'
    );
\up_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(2),
      Q => up_rdata(2),
      R => '0'
    );
\up_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(30),
      Q => up_rdata(30),
      R => '0'
    );
\up_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(31),
      Q => up_rdata(31),
      R => '0'
    );
\up_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(3),
      Q => up_rdata(3),
      R => '0'
    );
\up_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(4),
      Q => up_rdata(4),
      R => '0'
    );
\up_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(5),
      Q => up_rdata(5),
      R => '0'
    );
\up_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(6),
      Q => up_rdata(6),
      R => '0'
    );
\up_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(7),
      Q => up_rdata(7),
      R => '0'
    );
\up_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(8),
      Q => up_rdata(8),
      R => '0'
    );
\up_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(9),
      Q => up_rdata(9),
      R => '0'
    );
\up_scratch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_39,
      Q => up_scratch(0),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(10),
      Q => up_scratch(10),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(11),
      Q => up_scratch(11),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(12),
      Q => up_scratch(12),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(13),
      Q => up_scratch(13),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(14),
      Q => up_scratch(14),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(15),
      Q => up_scratch(15),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(16),
      Q => up_scratch(16),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(17),
      Q => up_scratch(17),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(18),
      Q => up_scratch(18),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(19),
      Q => up_scratch(19),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_38,
      Q => up_scratch(1),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(20),
      Q => up_scratch(20),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(21),
      Q => up_scratch(21),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(22),
      Q => up_scratch(22),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(23),
      Q => up_scratch(23),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_15,
      Q => up_scratch(24),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_14,
      Q => up_scratch(25),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_13,
      Q => up_scratch(26),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_12,
      Q => up_scratch(27),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_11,
      Q => up_scratch(28),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_10,
      Q => up_scratch(29),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_37,
      Q => up_scratch(2),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_9,
      Q => up_scratch(30),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_8,
      Q => up_scratch(31),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(3),
      Q => up_scratch(3),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(4),
      Q => up_scratch(4),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(5),
      Q => up_scratch(5),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(6),
      Q => up_scratch(6),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(7),
      Q => up_scratch(7),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(8),
      Q => up_scratch(8),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(9),
      Q => up_scratch(9),
      R => \^s_axi_aresetn_0\
    );
up_wack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq,
      Q => up_wack,
      R => \^s_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac_transfer is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \src_id_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    do_enable_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up_req_eot : out STD_LOGIC;
    addr_valid_reg : out STD_LOGIC;
    dbg_ids1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    up_response_valid : out STD_LOGIC;
    req_measured_burst_length : out STD_LOGIC_VECTOR ( 0 to 0 );
    req_ready_gated : out STD_LOGIC;
    active_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_valid : out STD_LOGIC;
    up_sot : out STD_LOGIC;
    needs_reset_reg : out STD_LOGIC;
    do_enable_reg_0 : out STD_LOGIC;
    enabled_reg : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_0\ : out STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_1\ : out STD_LOGIC;
    \src_id_reg[3]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \response_id_reg[0]\ : out STD_LOGIC;
    \response_id_reg[1]\ : out STD_LOGIC;
    \response_id_reg[2]\ : out STD_LOGIC;
    \response_id_reg[3]\ : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    up_dma_last : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    \y_length_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    up_dma_req_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ctrl_pause : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_rlast : in STD_LOGIC;
    up_dma_cyclic : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    \up_rdata_reg[10]\ : in STD_LOGIC;
    \up_rdata_reg[10]_0\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \src_stride_reg[23]\ : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac_transfer : entity is "axi_dmac_transfer";
end zed_axi_dmac_0_0_axi_dmac_transfer;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac_transfer is
  signal dbg_status : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal dest_address1 : STD_LOGIC;
  signal dma_req_last : STD_LOGIC;
  signal dma_req_valid : STD_LOGIC;
  signal dma_response_ready : STD_LOGIC;
  signal dma_response_valid : STD_LOGIC;
  signal \^do_enable_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal eot_id0 : STD_LOGIC;
  signal i_2d_transfer_n_27 : STD_LOGIC;
  signal i_2d_transfer_n_28 : STD_LOGIC;
  signal i_2d_transfer_n_29 : STD_LOGIC;
  signal i_2d_transfer_n_30 : STD_LOGIC;
  signal i_request_arb_n_102 : STD_LOGIC;
  signal i_request_arb_n_103 : STD_LOGIC;
  signal i_request_arb_n_107 : STD_LOGIC;
  signal i_request_arb_n_131 : STD_LOGIC;
  signal i_request_arb_n_132 : STD_LOGIC;
  signal i_request_arb_n_133 : STD_LOGIC;
  signal i_reset_manager_n_3 : STD_LOGIC;
  signal \i_store_and_forward/src_beat_counter0\ : STD_LOGIC;
  signal \^m_src_axi_araddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal out_last : STD_LOGIC;
  signal req_burst_count : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \req_eot0__2\ : STD_LOGIC;
  signal req_gen_ready : STD_LOGIC;
  signal req_id0 : STD_LOGIC;
  signal \^req_measured_burst_length\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \req_ready0__0\ : STD_LOGIC;
  signal \^req_ready_gated\ : STD_LOGIC;
  signal src_address : STD_LOGIC;
  signal src_address_reg : STD_LOGIC_VECTOR ( 28 downto 3 );
begin
  do_enable_reg(3 downto 0) <= \^do_enable_reg\(3 downto 0);
  m_src_axi_araddr(25 downto 0) <= \^m_src_axi_araddr\(25 downto 0);
  req_measured_burst_length(0) <= \^req_measured_burst_length\(0);
  req_ready_gated <= \^req_ready_gated\;
i_2d_transfer: entity work.zed_axi_dmac_0_0_dmac_2d_transfer
     port map (
      D(30 downto 5) => src_address_reg(28 downto 3),
      D(4) => i_2d_transfer_n_27,
      D(3) => i_2d_transfer_n_28,
      D(2) => i_2d_transfer_n_29,
      D(1) => i_2d_transfer_n_30,
      D(0) => dma_req_last,
      E(0) => src_address,
      Q(0) => i_reset_manager_n_3,
      dest_address1 => dest_address1,
      dma_req_valid => dma_req_valid,
      dma_response_ready => dma_response_ready,
      dma_response_valid => dma_response_valid,
      eot_id0 => eot_id0,
      out_last => out_last,
      out_req_valid_reg_0 => i_request_arb_n_132,
      out_response_ready_reg_0 => i_request_arb_n_131,
      \req_eot0__2\ => \req_eot0__2\,
      req_eot_reg_0 => i_request_arb_n_107,
      req_gen_ready => req_gen_ready,
      req_id0 => req_id0,
      \req_id_reg[1]_0\ => i_request_arb_n_102,
      \req_id_reg[1]_1\ => i_request_arb_n_103,
      req_measured_burst_length(0) => \^req_measured_burst_length\(0),
      \req_measured_burst_length_reg[0]_0\ => i_request_arb_n_133,
      \req_ready0__0\ => \req_ready0__0\,
      req_ready_reg_0 => \^req_ready_gated\,
      req_ready_reg_1 => \^do_enable_reg\(3),
      req_response_valid_reg_0(0) => E(0),
      s_axi_aclk => s_axi_aclk,
      \src_address_reg[28]_0\(25 downto 0) => Q(25 downto 0),
      \src_stride_reg[23]_0\(20 downto 0) => \src_stride_reg[23]\(20 downto 0),
      up_dma_cyclic => up_dma_cyclic,
      up_dma_last => up_dma_last,
      up_dma_req_valid => up_dma_req_valid,
      up_req_eot => up_req_eot,
      up_response_ready => up_response_ready,
      up_response_valid => up_response_valid,
      up_sot => up_sot,
      \x_length_reg[23]_0\(16 downto 0) => req_burst_count(16 downto 0),
      \x_length_reg[23]_1\(20 downto 0) => D(20 downto 0),
      \y_length_reg[23]_0\(23 downto 0) => \y_length_reg[23]\(23 downto 0)
    );
i_request_arb: entity work.zed_axi_dmac_0_0_dmac_request_arb
     port map (
      ADDRBWRADDR(1 downto 0) => \src_id_reg[2]\(1 downto 0),
      D(30 downto 5) => src_address_reg(28 downto 3),
      D(4) => i_2d_transfer_n_27,
      D(3) => i_2d_transfer_n_28,
      D(2) => i_2d_transfer_n_29,
      D(1) => i_2d_transfer_n_30,
      D(0) => dma_req_last,
      E(0) => src_address,
      Q(0) => i_reset_manager_n_3,
      SR(0) => \i_store_and_forward/src_beat_counter0\,
      active_reg => active_reg,
      addr_valid_reg => addr_valid_reg,
      \burst_count_reg[16]\(16 downto 0) => req_burst_count(16 downto 0),
      dbg_status(1 downto 0) => dbg_status(5 downto 4),
      dest_address1 => dest_address1,
      dma_req_valid => dma_req_valid,
      dma_response_ready => dma_response_ready,
      dma_response_valid => dma_response_valid,
      enabled_reg => enabled_reg,
      enabled_reg_0 => enabled_reg_0,
      enabled_reg_1 => \^do_enable_reg\(3),
      eot_id0 => eot_id0,
      id(3 downto 0) => dbg_ids1(7 downto 4),
      \id_reg[0]\ => \id_reg[0]\,
      \id_reg[1]\ => \id_reg[1]\,
      \id_reg[2]\ => \id_reg[2]\,
      \id_reg[3]\(3 downto 0) => dbg_ids1(11 downto 8),
      \id_reg[3]_0\(3 downto 0) => dbg_ids1(3 downto 0),
      \id_reg[3]_1\ => \id_reg[3]\,
      m_axis_aclk => m_axis_aclk,
      m_axis_data(63 downto 0) => m_axis_data(63 downto 0),
      m_axis_last => m_axis_last,
      m_axis_raddr_reg => i_request_arb_n_103,
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(25 downto 0) => \^m_src_axi_araddr\(25 downto 0),
      m_src_axi_arlen(3 downto 0) => m_src_axi_arlen(3 downto 0),
      m_src_axi_arready => m_src_axi_arready,
      m_src_axi_rdata(63 downto 0) => m_src_axi_rdata(63 downto 0),
      m_src_axi_rlast => m_src_axi_rlast,
      m_src_axi_rvalid => m_src_axi_rvalid,
      \measured_burst_length_reg[0]\ => i_request_arb_n_133,
      out_last => out_last,
      \req_eot0__2\ => \req_eot0__2\,
      req_gen_ready => req_gen_ready,
      req_id0 => req_id0,
      req_measured_burst_length(0) => \^req_measured_burst_length\(0),
      \req_ready0__0\ => \req_ready0__0\,
      \reset_gen[0].reset_sync_reg[0]\ => i_request_arb_n_107,
      \response_id_reg[0]\ => \response_id_reg[0]\,
      \response_id_reg[1]\ => \response_id_reg[1]\,
      \response_id_reg[2]\ => \response_id_reg[2]\,
      \response_id_reg[3]\ => \response_id_reg[3]\,
      response_valid_reg => i_request_arb_n_131,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg => i_request_arb_n_102,
      s_axis_waddr_reg_0 => i_request_arb_n_132,
      \src_id_reg[2]\ => \src_id_reg[2]\(2),
      \src_id_reg[3]\ => \src_id_reg[3]\,
      \up_rdata_reg[3]\ => \up_rdata_reg[10]\,
      \up_rdata_reg[3]_0\ => \up_rdata_reg[10]_0\,
      up_response_ready => up_response_ready
    );
i_reset_manager: entity work.zed_axi_dmac_0_0_axi_dmac_reset_manager
     port map (
      \FSM_onehot_state[5]_i_2_0\(1 downto 0) => dbg_status(5 downto 4),
      Q(0) => i_reset_manager_n_3,
      SR(0) => \i_store_and_forward/src_beat_counter0\,
      SS(0) => SS(0),
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      dest_address1 => dest_address1,
      do_enable_reg_0 => \^do_enable_reg\(3),
      do_enable_reg_1 => do_enable_reg_0,
      m_axis_aclk => m_axis_aclk,
      m_src_axi_araddr(4 downto 1) => \^m_src_axi_araddr\(8 downto 5),
      m_src_axi_araddr(0) => \^m_src_axi_araddr\(3),
      m_src_axi_rlast => m_src_axi_rlast,
      m_src_axi_rvalid => m_src_axi_rvalid,
      needs_reset_reg_0 => needs_reset_reg,
      req_ready_gated => \^req_ready_gated\,
      \reset_gen[0].reset_sync_reg[0]_0\ => \reset_gen[0].reset_sync_reg[0]\,
      \reset_gen[0].reset_sync_reg[0]_1\ => \reset_gen[0].reset_sync_reg[0]_0\,
      \reset_gen[0].reset_sync_reg[0]_2\ => \reset_gen[0].reset_sync_reg[0]_1\,
      s_axi_aclk => s_axi_aclk,
      \state_reg[2]_0\(2 downto 0) => \^do_enable_reg\(2 downto 0),
      up_dma_req_valid => up_dma_req_valid,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]\,
      \up_rdata_reg[10]_0\ => \up_rdata_reg[10]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0_axi_dmac is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    m_dest_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_arvalid : out STD_LOGIC;
    m_dest_axi_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_dest_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arready : in STD_LOGIC;
    m_dest_axi_rvalid : in STD_LOGIC;
    m_dest_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_rready : out STD_LOGIC;
    m_dest_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_rlast : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_aresetn : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_arvalid : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rready : out STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    m_src_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_rlast : in STD_LOGIC;
    m_src_axi_awvalid : out STD_LOGIC;
    m_src_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_src_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awready : in STD_LOGIC;
    m_src_axi_wvalid : out STD_LOGIC;
    m_src_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_src_axi_wlast : out STD_LOGIC;
    m_src_axi_wready : in STD_LOGIC;
    m_src_axi_bvalid : in STD_LOGIC;
    m_src_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_bready : out STD_LOGIC;
    m_src_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_xfer_req : out STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_xfer_req : out STD_LOGIC;
    fifo_rd_clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_rd_underflow : out STD_LOGIC;
    fifo_rd_xfer_req : out STD_LOGIC;
    dest_diag_level_bursts : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ALLOW_ASYM_MEM : integer;
  attribute ALLOW_ASYM_MEM of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 1024;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 16;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of zed_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 8192;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute BYTES_PER_BURST_WIDTH : integer;
  attribute BYTES_PER_BURST_WIDTH of zed_axi_dmac_0_0_axi_dmac : entity is 7;
  attribute CYCLIC : string;
  attribute CYCLIC of zed_axi_dmac_0_0_axi_dmac : entity is "1'b1";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of zed_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of zed_axi_dmac_0_0_axi_dmac : entity is "1'b1";
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of zed_axi_dmac_0_0_axi_dmac : entity is 29;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 64;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 64;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of zed_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute DMA_LENGTH_ALIGN_DEST : integer;
  attribute DMA_LENGTH_ALIGN_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute DMA_LENGTH_ALIGN_SRC : integer;
  attribute DMA_LENGTH_ALIGN_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of zed_axi_dmac_0_0_axi_dmac : entity is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of zed_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of zed_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of zed_axi_dmac_0_0_axi_dmac : entity is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of zed_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute ENABLE_DIAGNOSTICS_IF : string;
  attribute ENABLE_DIAGNOSTICS_IF of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of zed_axi_dmac_0_0_axi_dmac : entity is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of zed_axi_dmac_0_0_axi_dmac : entity is "1'b1";
  attribute ID : integer;
  attribute ID of zed_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of zed_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of zed_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zed_axi_dmac_0_0_axi_dmac : entity is "axi_dmac";
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of zed_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of zed_axi_dmac_0_0_axi_dmac : entity is "1'b0";
end zed_axi_dmac_0_0_axi_dmac;

architecture STRUCTURE of zed_axi_dmac_0_0_axi_dmac is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal ctrl_enable : STD_LOGIC;
  signal ctrl_pause : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 28 downto 3 );
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dbg_ids1 : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal dbg_status : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_regmap_n_0 : STD_LOGIC;
  signal i_regmap_n_100 : STD_LOGIC;
  signal i_regmap_n_101 : STD_LOGIC;
  signal i_regmap_n_102 : STD_LOGIC;
  signal i_regmap_n_103 : STD_LOGIC;
  signal i_regmap_n_104 : STD_LOGIC;
  signal i_regmap_n_105 : STD_LOGIC;
  signal i_regmap_n_106 : STD_LOGIC;
  signal i_regmap_n_13 : STD_LOGIC;
  signal i_regmap_n_14 : STD_LOGIC;
  signal i_regmap_n_86 : STD_LOGIC;
  signal i_regmap_n_87 : STD_LOGIC;
  signal i_regmap_n_88 : STD_LOGIC;
  signal i_regmap_n_89 : STD_LOGIC;
  signal i_regmap_n_90 : STD_LOGIC;
  signal i_regmap_n_91 : STD_LOGIC;
  signal i_regmap_n_92 : STD_LOGIC;
  signal i_regmap_n_93 : STD_LOGIC;
  signal i_regmap_n_94 : STD_LOGIC;
  signal i_regmap_n_95 : STD_LOGIC;
  signal i_regmap_n_96 : STD_LOGIC;
  signal i_regmap_n_97 : STD_LOGIC;
  signal i_regmap_n_98 : STD_LOGIC;
  signal i_regmap_n_99 : STD_LOGIC;
  signal \i_regmap_request/p_7_in\ : STD_LOGIC;
  signal i_transfer_n_118 : STD_LOGIC;
  signal i_transfer_n_119 : STD_LOGIC;
  signal i_transfer_n_120 : STD_LOGIC;
  signal i_transfer_n_121 : STD_LOGIC;
  signal i_transfer_n_122 : STD_LOGIC;
  signal i_transfer_n_123 : STD_LOGIC;
  signal i_transfer_n_124 : STD_LOGIC;
  signal i_transfer_n_125 : STD_LOGIC;
  signal i_transfer_n_126 : STD_LOGIC;
  signal i_transfer_n_127 : STD_LOGIC;
  signal i_transfer_n_128 : STD_LOGIC;
  signal i_transfer_n_129 : STD_LOGIC;
  signal i_transfer_n_130 : STD_LOGIC;
  signal i_transfer_n_131 : STD_LOGIC;
  signal i_transfer_n_132 : STD_LOGIC;
  signal i_transfer_n_133 : STD_LOGIC;
  signal \^m_src_axi_araddr\ : STD_LOGIC_VECTOR ( 28 downto 3 );
  signal req_measured_burst_length : STD_LOGIC_VECTOR ( 0 to 0 );
  signal req_ready_gated : STD_LOGIC;
  signal up_dma_cyclic : STD_LOGIC;
  signal up_dma_last : STD_LOGIC;
  signal up_dma_req_valid : STD_LOGIC;
  signal up_dma_x_length : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal up_dma_y_length : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal up_req_eot : STD_LOGIC;
  signal up_response_ready : STD_LOGIC;
  signal up_response_valid : STD_LOGIC;
  signal up_sot : STD_LOGIC;
begin
  dest_diag_level_bursts(7) <= \<const0>\;
  dest_diag_level_bursts(6) <= \<const0>\;
  dest_diag_level_bursts(5) <= \<const0>\;
  dest_diag_level_bursts(4) <= \<const0>\;
  dest_diag_level_bursts(3) <= \<const0>\;
  dest_diag_level_bursts(2) <= \<const0>\;
  dest_diag_level_bursts(1) <= \<const0>\;
  dest_diag_level_bursts(0) <= \<const0>\;
  fifo_rd_dout(63) <= \<const0>\;
  fifo_rd_dout(62) <= \<const0>\;
  fifo_rd_dout(61) <= \<const0>\;
  fifo_rd_dout(60) <= \<const0>\;
  fifo_rd_dout(59) <= \<const0>\;
  fifo_rd_dout(58) <= \<const0>\;
  fifo_rd_dout(57) <= \<const0>\;
  fifo_rd_dout(56) <= \<const0>\;
  fifo_rd_dout(55) <= \<const0>\;
  fifo_rd_dout(54) <= \<const0>\;
  fifo_rd_dout(53) <= \<const0>\;
  fifo_rd_dout(52) <= \<const0>\;
  fifo_rd_dout(51) <= \<const0>\;
  fifo_rd_dout(50) <= \<const0>\;
  fifo_rd_dout(49) <= \<const0>\;
  fifo_rd_dout(48) <= \<const0>\;
  fifo_rd_dout(47) <= \<const0>\;
  fifo_rd_dout(46) <= \<const0>\;
  fifo_rd_dout(45) <= \<const0>\;
  fifo_rd_dout(44) <= \<const0>\;
  fifo_rd_dout(43) <= \<const0>\;
  fifo_rd_dout(42) <= \<const0>\;
  fifo_rd_dout(41) <= \<const0>\;
  fifo_rd_dout(40) <= \<const0>\;
  fifo_rd_dout(39) <= \<const0>\;
  fifo_rd_dout(38) <= \<const0>\;
  fifo_rd_dout(37) <= \<const0>\;
  fifo_rd_dout(36) <= \<const0>\;
  fifo_rd_dout(35) <= \<const0>\;
  fifo_rd_dout(34) <= \<const0>\;
  fifo_rd_dout(33) <= \<const0>\;
  fifo_rd_dout(32) <= \<const0>\;
  fifo_rd_dout(31) <= \<const0>\;
  fifo_rd_dout(30) <= \<const0>\;
  fifo_rd_dout(29) <= \<const0>\;
  fifo_rd_dout(28) <= \<const0>\;
  fifo_rd_dout(27) <= \<const0>\;
  fifo_rd_dout(26) <= \<const0>\;
  fifo_rd_dout(25) <= \<const0>\;
  fifo_rd_dout(24) <= \<const0>\;
  fifo_rd_dout(23) <= \<const0>\;
  fifo_rd_dout(22) <= \<const0>\;
  fifo_rd_dout(21) <= \<const0>\;
  fifo_rd_dout(20) <= \<const0>\;
  fifo_rd_dout(19) <= \<const0>\;
  fifo_rd_dout(18) <= \<const0>\;
  fifo_rd_dout(17) <= \<const0>\;
  fifo_rd_dout(16) <= \<const0>\;
  fifo_rd_dout(15) <= \<const0>\;
  fifo_rd_dout(14) <= \<const0>\;
  fifo_rd_dout(13) <= \<const0>\;
  fifo_rd_dout(12) <= \<const0>\;
  fifo_rd_dout(11) <= \<const0>\;
  fifo_rd_dout(10) <= \<const0>\;
  fifo_rd_dout(9) <= \<const0>\;
  fifo_rd_dout(8) <= \<const0>\;
  fifo_rd_dout(7) <= \<const0>\;
  fifo_rd_dout(6) <= \<const0>\;
  fifo_rd_dout(5) <= \<const0>\;
  fifo_rd_dout(4) <= \<const0>\;
  fifo_rd_dout(3) <= \<const0>\;
  fifo_rd_dout(2) <= \<const0>\;
  fifo_rd_dout(1) <= \<const0>\;
  fifo_rd_dout(0) <= \<const0>\;
  fifo_rd_underflow <= \<const0>\;
  fifo_rd_valid <= \<const0>\;
  fifo_rd_xfer_req <= \<const0>\;
  fifo_wr_overflow <= \<const0>\;
  fifo_wr_xfer_req <= \<const0>\;
  m_dest_axi_araddr(28) <= \<const0>\;
  m_dest_axi_araddr(27) <= \<const0>\;
  m_dest_axi_araddr(26) <= \<const0>\;
  m_dest_axi_araddr(25) <= \<const0>\;
  m_dest_axi_araddr(24) <= \<const0>\;
  m_dest_axi_araddr(23) <= \<const0>\;
  m_dest_axi_araddr(22) <= \<const0>\;
  m_dest_axi_araddr(21) <= \<const0>\;
  m_dest_axi_araddr(20) <= \<const0>\;
  m_dest_axi_araddr(19) <= \<const0>\;
  m_dest_axi_araddr(18) <= \<const0>\;
  m_dest_axi_araddr(17) <= \<const0>\;
  m_dest_axi_araddr(16) <= \<const0>\;
  m_dest_axi_araddr(15) <= \<const0>\;
  m_dest_axi_araddr(14) <= \<const0>\;
  m_dest_axi_araddr(13) <= \<const0>\;
  m_dest_axi_araddr(12) <= \<const0>\;
  m_dest_axi_araddr(11) <= \<const0>\;
  m_dest_axi_araddr(10) <= \<const0>\;
  m_dest_axi_araddr(9) <= \<const0>\;
  m_dest_axi_araddr(8) <= \<const0>\;
  m_dest_axi_araddr(7) <= \<const0>\;
  m_dest_axi_araddr(6) <= \<const0>\;
  m_dest_axi_araddr(5) <= \<const0>\;
  m_dest_axi_araddr(4) <= \<const0>\;
  m_dest_axi_araddr(3) <= \<const0>\;
  m_dest_axi_araddr(2) <= \<const0>\;
  m_dest_axi_araddr(1) <= \<const0>\;
  m_dest_axi_araddr(0) <= \<const0>\;
  m_dest_axi_arburst(1) <= \<const0>\;
  m_dest_axi_arburst(0) <= \<const0>\;
  m_dest_axi_arcache(3) <= \<const0>\;
  m_dest_axi_arcache(2) <= \<const0>\;
  m_dest_axi_arcache(1) <= \<const0>\;
  m_dest_axi_arcache(0) <= \<const0>\;
  m_dest_axi_arid(0) <= \<const0>\;
  m_dest_axi_arlen(7) <= \<const0>\;
  m_dest_axi_arlen(6) <= \<const0>\;
  m_dest_axi_arlen(5) <= \<const0>\;
  m_dest_axi_arlen(4) <= \<const0>\;
  m_dest_axi_arlen(3) <= \<const0>\;
  m_dest_axi_arlen(2) <= \<const0>\;
  m_dest_axi_arlen(1) <= \<const0>\;
  m_dest_axi_arlen(0) <= \<const0>\;
  m_dest_axi_arlock(0) <= \<const0>\;
  m_dest_axi_arprot(2) <= \<const0>\;
  m_dest_axi_arprot(1) <= \<const0>\;
  m_dest_axi_arprot(0) <= \<const0>\;
  m_dest_axi_arsize(2) <= \<const0>\;
  m_dest_axi_arsize(1) <= \<const0>\;
  m_dest_axi_arsize(0) <= \<const0>\;
  m_dest_axi_arvalid <= \<const0>\;
  m_dest_axi_awaddr(28) <= \<const0>\;
  m_dest_axi_awaddr(27) <= \<const0>\;
  m_dest_axi_awaddr(26) <= \<const0>\;
  m_dest_axi_awaddr(25) <= \<const0>\;
  m_dest_axi_awaddr(24) <= \<const0>\;
  m_dest_axi_awaddr(23) <= \<const0>\;
  m_dest_axi_awaddr(22) <= \<const0>\;
  m_dest_axi_awaddr(21) <= \<const0>\;
  m_dest_axi_awaddr(20) <= \<const0>\;
  m_dest_axi_awaddr(19) <= \<const0>\;
  m_dest_axi_awaddr(18) <= \<const0>\;
  m_dest_axi_awaddr(17) <= \<const0>\;
  m_dest_axi_awaddr(16) <= \<const0>\;
  m_dest_axi_awaddr(15) <= \<const0>\;
  m_dest_axi_awaddr(14) <= \<const0>\;
  m_dest_axi_awaddr(13) <= \<const0>\;
  m_dest_axi_awaddr(12) <= \<const0>\;
  m_dest_axi_awaddr(11) <= \<const0>\;
  m_dest_axi_awaddr(10) <= \<const0>\;
  m_dest_axi_awaddr(9) <= \<const0>\;
  m_dest_axi_awaddr(8) <= \<const0>\;
  m_dest_axi_awaddr(7) <= \<const0>\;
  m_dest_axi_awaddr(6) <= \<const0>\;
  m_dest_axi_awaddr(5) <= \<const0>\;
  m_dest_axi_awaddr(4) <= \<const0>\;
  m_dest_axi_awaddr(3) <= \<const0>\;
  m_dest_axi_awaddr(2) <= \<const0>\;
  m_dest_axi_awaddr(1) <= \<const0>\;
  m_dest_axi_awaddr(0) <= \<const0>\;
  m_dest_axi_awburst(1) <= \<const0>\;
  m_dest_axi_awburst(0) <= \<const0>\;
  m_dest_axi_awcache(3) <= \<const0>\;
  m_dest_axi_awcache(2) <= \<const0>\;
  m_dest_axi_awcache(1) <= \<const0>\;
  m_dest_axi_awcache(0) <= \<const0>\;
  m_dest_axi_awid(0) <= \<const0>\;
  m_dest_axi_awlen(7) <= \<const0>\;
  m_dest_axi_awlen(6) <= \<const0>\;
  m_dest_axi_awlen(5) <= \<const0>\;
  m_dest_axi_awlen(4) <= \<const0>\;
  m_dest_axi_awlen(3) <= \<const0>\;
  m_dest_axi_awlen(2) <= \<const0>\;
  m_dest_axi_awlen(1) <= \<const0>\;
  m_dest_axi_awlen(0) <= \<const0>\;
  m_dest_axi_awlock(0) <= \<const0>\;
  m_dest_axi_awprot(2) <= \<const0>\;
  m_dest_axi_awprot(1) <= \<const0>\;
  m_dest_axi_awprot(0) <= \<const0>\;
  m_dest_axi_awsize(2) <= \<const0>\;
  m_dest_axi_awsize(1) <= \<const0>\;
  m_dest_axi_awsize(0) <= \<const0>\;
  m_dest_axi_awvalid <= \<const0>\;
  m_dest_axi_bready <= \<const0>\;
  m_dest_axi_rready <= \<const0>\;
  m_dest_axi_wdata(63) <= \<const0>\;
  m_dest_axi_wdata(62) <= \<const0>\;
  m_dest_axi_wdata(61) <= \<const0>\;
  m_dest_axi_wdata(60) <= \<const0>\;
  m_dest_axi_wdata(59) <= \<const0>\;
  m_dest_axi_wdata(58) <= \<const0>\;
  m_dest_axi_wdata(57) <= \<const0>\;
  m_dest_axi_wdata(56) <= \<const0>\;
  m_dest_axi_wdata(55) <= \<const0>\;
  m_dest_axi_wdata(54) <= \<const0>\;
  m_dest_axi_wdata(53) <= \<const0>\;
  m_dest_axi_wdata(52) <= \<const0>\;
  m_dest_axi_wdata(51) <= \<const0>\;
  m_dest_axi_wdata(50) <= \<const0>\;
  m_dest_axi_wdata(49) <= \<const0>\;
  m_dest_axi_wdata(48) <= \<const0>\;
  m_dest_axi_wdata(47) <= \<const0>\;
  m_dest_axi_wdata(46) <= \<const0>\;
  m_dest_axi_wdata(45) <= \<const0>\;
  m_dest_axi_wdata(44) <= \<const0>\;
  m_dest_axi_wdata(43) <= \<const0>\;
  m_dest_axi_wdata(42) <= \<const0>\;
  m_dest_axi_wdata(41) <= \<const0>\;
  m_dest_axi_wdata(40) <= \<const0>\;
  m_dest_axi_wdata(39) <= \<const0>\;
  m_dest_axi_wdata(38) <= \<const0>\;
  m_dest_axi_wdata(37) <= \<const0>\;
  m_dest_axi_wdata(36) <= \<const0>\;
  m_dest_axi_wdata(35) <= \<const0>\;
  m_dest_axi_wdata(34) <= \<const0>\;
  m_dest_axi_wdata(33) <= \<const0>\;
  m_dest_axi_wdata(32) <= \<const0>\;
  m_dest_axi_wdata(31) <= \<const0>\;
  m_dest_axi_wdata(30) <= \<const0>\;
  m_dest_axi_wdata(29) <= \<const0>\;
  m_dest_axi_wdata(28) <= \<const0>\;
  m_dest_axi_wdata(27) <= \<const0>\;
  m_dest_axi_wdata(26) <= \<const0>\;
  m_dest_axi_wdata(25) <= \<const0>\;
  m_dest_axi_wdata(24) <= \<const0>\;
  m_dest_axi_wdata(23) <= \<const0>\;
  m_dest_axi_wdata(22) <= \<const0>\;
  m_dest_axi_wdata(21) <= \<const0>\;
  m_dest_axi_wdata(20) <= \<const0>\;
  m_dest_axi_wdata(19) <= \<const0>\;
  m_dest_axi_wdata(18) <= \<const0>\;
  m_dest_axi_wdata(17) <= \<const0>\;
  m_dest_axi_wdata(16) <= \<const0>\;
  m_dest_axi_wdata(15) <= \<const0>\;
  m_dest_axi_wdata(14) <= \<const0>\;
  m_dest_axi_wdata(13) <= \<const0>\;
  m_dest_axi_wdata(12) <= \<const0>\;
  m_dest_axi_wdata(11) <= \<const0>\;
  m_dest_axi_wdata(10) <= \<const0>\;
  m_dest_axi_wdata(9) <= \<const0>\;
  m_dest_axi_wdata(8) <= \<const0>\;
  m_dest_axi_wdata(7) <= \<const0>\;
  m_dest_axi_wdata(6) <= \<const0>\;
  m_dest_axi_wdata(5) <= \<const0>\;
  m_dest_axi_wdata(4) <= \<const0>\;
  m_dest_axi_wdata(3) <= \<const0>\;
  m_dest_axi_wdata(2) <= \<const0>\;
  m_dest_axi_wdata(1) <= \<const0>\;
  m_dest_axi_wdata(0) <= \<const0>\;
  m_dest_axi_wid(0) <= \<const0>\;
  m_dest_axi_wlast <= \<const0>\;
  m_dest_axi_wstrb(7) <= \<const0>\;
  m_dest_axi_wstrb(6) <= \<const0>\;
  m_dest_axi_wstrb(5) <= \<const0>\;
  m_dest_axi_wstrb(4) <= \<const0>\;
  m_dest_axi_wstrb(3) <= \<const0>\;
  m_dest_axi_wstrb(2) <= \<const0>\;
  m_dest_axi_wstrb(1) <= \<const0>\;
  m_dest_axi_wstrb(0) <= \<const0>\;
  m_dest_axi_wvalid <= \<const0>\;
  m_src_axi_araddr(28 downto 3) <= \^m_src_axi_araddr\(28 downto 3);
  m_src_axi_araddr(2) <= \<const0>\;
  m_src_axi_araddr(1) <= \<const0>\;
  m_src_axi_araddr(0) <= \<const0>\;
  m_src_axi_arburst(1) <= \<const0>\;
  m_src_axi_arburst(0) <= \<const1>\;
  m_src_axi_arcache(3) <= \<const0>\;
  m_src_axi_arcache(2) <= \<const0>\;
  m_src_axi_arcache(1) <= \<const1>\;
  m_src_axi_arcache(0) <= \<const1>\;
  m_src_axi_arid(0) <= \<const0>\;
  m_src_axi_arlock(1) <= \<const0>\;
  m_src_axi_arlock(0) <= \<const0>\;
  m_src_axi_arprot(2) <= \<const0>\;
  m_src_axi_arprot(1) <= \<const0>\;
  m_src_axi_arprot(0) <= \<const0>\;
  m_src_axi_arsize(2) <= \<const0>\;
  m_src_axi_arsize(1) <= \<const1>\;
  m_src_axi_arsize(0) <= \<const1>\;
  m_src_axi_awaddr(28) <= \<const0>\;
  m_src_axi_awaddr(27) <= \<const0>\;
  m_src_axi_awaddr(26) <= \<const0>\;
  m_src_axi_awaddr(25) <= \<const0>\;
  m_src_axi_awaddr(24) <= \<const0>\;
  m_src_axi_awaddr(23) <= \<const0>\;
  m_src_axi_awaddr(22) <= \<const0>\;
  m_src_axi_awaddr(21) <= \<const0>\;
  m_src_axi_awaddr(20) <= \<const0>\;
  m_src_axi_awaddr(19) <= \<const0>\;
  m_src_axi_awaddr(18) <= \<const0>\;
  m_src_axi_awaddr(17) <= \<const0>\;
  m_src_axi_awaddr(16) <= \<const0>\;
  m_src_axi_awaddr(15) <= \<const0>\;
  m_src_axi_awaddr(14) <= \<const0>\;
  m_src_axi_awaddr(13) <= \<const0>\;
  m_src_axi_awaddr(12) <= \<const0>\;
  m_src_axi_awaddr(11) <= \<const0>\;
  m_src_axi_awaddr(10) <= \<const0>\;
  m_src_axi_awaddr(9) <= \<const0>\;
  m_src_axi_awaddr(8) <= \<const0>\;
  m_src_axi_awaddr(7) <= \<const0>\;
  m_src_axi_awaddr(6) <= \<const0>\;
  m_src_axi_awaddr(5) <= \<const0>\;
  m_src_axi_awaddr(4) <= \<const0>\;
  m_src_axi_awaddr(3) <= \<const0>\;
  m_src_axi_awaddr(2) <= \<const0>\;
  m_src_axi_awaddr(1) <= \<const0>\;
  m_src_axi_awaddr(0) <= \<const0>\;
  m_src_axi_awburst(1) <= \<const0>\;
  m_src_axi_awburst(0) <= \<const0>\;
  m_src_axi_awcache(3) <= \<const0>\;
  m_src_axi_awcache(2) <= \<const0>\;
  m_src_axi_awcache(1) <= \<const0>\;
  m_src_axi_awcache(0) <= \<const0>\;
  m_src_axi_awid(0) <= \<const0>\;
  m_src_axi_awlen(3) <= \<const0>\;
  m_src_axi_awlen(2) <= \<const0>\;
  m_src_axi_awlen(1) <= \<const0>\;
  m_src_axi_awlen(0) <= \<const0>\;
  m_src_axi_awlock(1) <= \<const0>\;
  m_src_axi_awlock(0) <= \<const0>\;
  m_src_axi_awprot(2) <= \<const0>\;
  m_src_axi_awprot(1) <= \<const0>\;
  m_src_axi_awprot(0) <= \<const0>\;
  m_src_axi_awsize(2) <= \<const0>\;
  m_src_axi_awsize(1) <= \<const0>\;
  m_src_axi_awsize(0) <= \<const0>\;
  m_src_axi_awvalid <= \<const0>\;
  m_src_axi_bready <= \<const0>\;
  m_src_axi_rready <= \<const1>\;
  m_src_axi_wdata(63) <= \<const0>\;
  m_src_axi_wdata(62) <= \<const0>\;
  m_src_axi_wdata(61) <= \<const0>\;
  m_src_axi_wdata(60) <= \<const0>\;
  m_src_axi_wdata(59) <= \<const0>\;
  m_src_axi_wdata(58) <= \<const0>\;
  m_src_axi_wdata(57) <= \<const0>\;
  m_src_axi_wdata(56) <= \<const0>\;
  m_src_axi_wdata(55) <= \<const0>\;
  m_src_axi_wdata(54) <= \<const0>\;
  m_src_axi_wdata(53) <= \<const0>\;
  m_src_axi_wdata(52) <= \<const0>\;
  m_src_axi_wdata(51) <= \<const0>\;
  m_src_axi_wdata(50) <= \<const0>\;
  m_src_axi_wdata(49) <= \<const0>\;
  m_src_axi_wdata(48) <= \<const0>\;
  m_src_axi_wdata(47) <= \<const0>\;
  m_src_axi_wdata(46) <= \<const0>\;
  m_src_axi_wdata(45) <= \<const0>\;
  m_src_axi_wdata(44) <= \<const0>\;
  m_src_axi_wdata(43) <= \<const0>\;
  m_src_axi_wdata(42) <= \<const0>\;
  m_src_axi_wdata(41) <= \<const0>\;
  m_src_axi_wdata(40) <= \<const0>\;
  m_src_axi_wdata(39) <= \<const0>\;
  m_src_axi_wdata(38) <= \<const0>\;
  m_src_axi_wdata(37) <= \<const0>\;
  m_src_axi_wdata(36) <= \<const0>\;
  m_src_axi_wdata(35) <= \<const0>\;
  m_src_axi_wdata(34) <= \<const0>\;
  m_src_axi_wdata(33) <= \<const0>\;
  m_src_axi_wdata(32) <= \<const0>\;
  m_src_axi_wdata(31) <= \<const0>\;
  m_src_axi_wdata(30) <= \<const0>\;
  m_src_axi_wdata(29) <= \<const0>\;
  m_src_axi_wdata(28) <= \<const0>\;
  m_src_axi_wdata(27) <= \<const0>\;
  m_src_axi_wdata(26) <= \<const0>\;
  m_src_axi_wdata(25) <= \<const0>\;
  m_src_axi_wdata(24) <= \<const0>\;
  m_src_axi_wdata(23) <= \<const0>\;
  m_src_axi_wdata(22) <= \<const0>\;
  m_src_axi_wdata(21) <= \<const0>\;
  m_src_axi_wdata(20) <= \<const0>\;
  m_src_axi_wdata(19) <= \<const0>\;
  m_src_axi_wdata(18) <= \<const0>\;
  m_src_axi_wdata(17) <= \<const0>\;
  m_src_axi_wdata(16) <= \<const0>\;
  m_src_axi_wdata(15) <= \<const0>\;
  m_src_axi_wdata(14) <= \<const0>\;
  m_src_axi_wdata(13) <= \<const0>\;
  m_src_axi_wdata(12) <= \<const0>\;
  m_src_axi_wdata(11) <= \<const0>\;
  m_src_axi_wdata(10) <= \<const0>\;
  m_src_axi_wdata(9) <= \<const0>\;
  m_src_axi_wdata(8) <= \<const0>\;
  m_src_axi_wdata(7) <= \<const0>\;
  m_src_axi_wdata(6) <= \<const0>\;
  m_src_axi_wdata(5) <= \<const0>\;
  m_src_axi_wdata(4) <= \<const0>\;
  m_src_axi_wdata(3) <= \<const0>\;
  m_src_axi_wdata(2) <= \<const0>\;
  m_src_axi_wdata(1) <= \<const0>\;
  m_src_axi_wdata(0) <= \<const0>\;
  m_src_axi_wid(0) <= \<const0>\;
  m_src_axi_wlast <= \<const0>\;
  m_src_axi_wstrb(7) <= \<const0>\;
  m_src_axi_wstrb(6) <= \<const0>\;
  m_src_axi_wstrb(5) <= \<const0>\;
  m_src_axi_wstrb(4) <= \<const0>\;
  m_src_axi_wstrb(3) <= \<const0>\;
  m_src_axi_wstrb(2) <= \<const0>\;
  m_src_axi_wstrb(1) <= \<const0>\;
  m_src_axi_wstrb(0) <= \<const0>\;
  m_src_axi_wvalid <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axis_ready <= \<const0>\;
  s_axis_xfer_req <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_regmap: entity work.zed_axi_dmac_0_0_axi_dmac_regmap
     port map (
      E(0) => \i_regmap_request/p_7_in\,
      Q(25 downto 0) => data3(28 downto 3),
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      dbg_ids0(2 downto 0) => dbg_ids0(2 downto 0),
      dbg_ids1(11 downto 8) => dbg_ids1(27 downto 24),
      dbg_ids1(7 downto 4) => dbg_ids1(11 downto 8),
      dbg_ids1(3 downto 0) => dbg_ids1(3 downto 0),
      dbg_status(3) => dbg_status(6),
      dbg_status(2 downto 0) => dbg_status(2 downto 0),
      irq => irq,
      m_src_axi_araddr(8) => \^m_src_axi_araddr\(28),
      m_src_axi_araddr(7 downto 4) => \^m_src_axi_araddr\(23 downto 20),
      m_src_axi_araddr(3 downto 0) => \^m_src_axi_araddr\(15 downto 12),
      req_measured_burst_length(0) => req_measured_burst_length(0),
      req_ready_gated => req_ready_gated,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(10 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => i_regmap_n_0,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(10 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      up_axi_rvalid_int_reg => s_axi_rvalid,
      up_dma_cyclic => up_dma_cyclic,
      up_dma_last => up_dma_last,
      up_dma_req_valid => up_dma_req_valid,
      \up_dma_src_stride_reg[23]\(20) => i_regmap_n_86,
      \up_dma_src_stride_reg[23]\(19) => i_regmap_n_87,
      \up_dma_src_stride_reg[23]\(18) => i_regmap_n_88,
      \up_dma_src_stride_reg[23]\(17) => i_regmap_n_89,
      \up_dma_src_stride_reg[23]\(16) => i_regmap_n_90,
      \up_dma_src_stride_reg[23]\(15) => i_regmap_n_91,
      \up_dma_src_stride_reg[23]\(14) => i_regmap_n_92,
      \up_dma_src_stride_reg[23]\(13) => i_regmap_n_93,
      \up_dma_src_stride_reg[23]\(12) => i_regmap_n_94,
      \up_dma_src_stride_reg[23]\(11) => i_regmap_n_95,
      \up_dma_src_stride_reg[23]\(10) => i_regmap_n_96,
      \up_dma_src_stride_reg[23]\(9) => i_regmap_n_97,
      \up_dma_src_stride_reg[23]\(8) => i_regmap_n_98,
      \up_dma_src_stride_reg[23]\(7) => i_regmap_n_99,
      \up_dma_src_stride_reg[23]\(6) => i_regmap_n_100,
      \up_dma_src_stride_reg[23]\(5) => i_regmap_n_101,
      \up_dma_src_stride_reg[23]\(4) => i_regmap_n_102,
      \up_dma_src_stride_reg[23]\(3) => i_regmap_n_103,
      \up_dma_src_stride_reg[23]\(2) => i_regmap_n_104,
      \up_dma_src_stride_reg[23]\(1) => i_regmap_n_105,
      \up_dma_src_stride_reg[23]\(0) => i_regmap_n_106,
      \up_dma_x_length_reg[23]\(20 downto 0) => up_dma_x_length(23 downto 3),
      \up_dma_y_length_reg[23]\(23 downto 0) => up_dma_y_length(23 downto 0),
      \up_raddr_int_reg[3]\ => i_regmap_n_14,
      \up_raddr_int_reg[7]\ => i_regmap_n_13,
      \up_rdata_reg[10]_0\ => i_transfer_n_124,
      \up_rdata_reg[11]_0\ => i_transfer_n_118,
      \up_rdata_reg[16]_0\ => i_transfer_n_126,
      \up_rdata_reg[17]_0\ => i_transfer_n_127,
      \up_rdata_reg[18]_0\ => i_transfer_n_128,
      \up_rdata_reg[19]_0\ => i_transfer_n_129,
      \up_rdata_reg[24]_0\ => i_transfer_n_130,
      \up_rdata_reg[25]_0\ => i_transfer_n_131,
      \up_rdata_reg[26]_0\ => i_transfer_n_132,
      \up_rdata_reg[27]_0\ => i_transfer_n_133,
      \up_rdata_reg[3]_0\ => i_transfer_n_125,
      \up_rdata_reg[4]_0\ => i_transfer_n_121,
      \up_rdata_reg[5]_0\ => i_transfer_n_120,
      \up_rdata_reg[6]_0\ => i_transfer_n_119,
      \up_rdata_reg[7]_0\ => \^m_src_axi_araddr\(7),
      \up_rdata_reg[8]_0\ => i_transfer_n_122,
      \up_rdata_reg[9]_0\ => i_transfer_n_123,
      up_req_eot => up_req_eot,
      up_response_ready => up_response_ready,
      up_response_valid => up_response_valid,
      up_sot => up_sot
    );
i_transfer: entity work.zed_axi_dmac_0_0_axi_dmac_transfer
     port map (
      D(20 downto 0) => up_dma_x_length(23 downto 3),
      E(0) => \i_regmap_request/p_7_in\,
      Q(25 downto 0) => data3(28 downto 3),
      SS(0) => i_regmap_n_0,
      active_reg => m_axis_xfer_req,
      addr_valid_reg => m_src_axi_arvalid,
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      dbg_ids1(11 downto 8) => dbg_ids1(27 downto 24),
      dbg_ids1(7 downto 4) => dbg_ids1(11 downto 8),
      dbg_ids1(3 downto 0) => dbg_ids1(3 downto 0),
      do_enable_reg(3) => dbg_status(6),
      do_enable_reg(2 downto 0) => dbg_status(2 downto 0),
      do_enable_reg_0 => i_transfer_n_119,
      enabled_reg => i_transfer_n_120,
      enabled_reg_0 => i_transfer_n_121,
      \id_reg[0]\ => i_transfer_n_126,
      \id_reg[1]\ => i_transfer_n_127,
      \id_reg[2]\ => i_transfer_n_128,
      \id_reg[3]\ => i_transfer_n_129,
      m_axis_aclk => m_axis_aclk,
      m_axis_data(63 downto 0) => m_axis_data(63 downto 0),
      m_axis_last => m_axis_last,
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(25 downto 0) => \^m_src_axi_araddr\(28 downto 3),
      m_src_axi_arlen(3 downto 0) => m_src_axi_arlen(3 downto 0),
      m_src_axi_arready => m_src_axi_arready,
      m_src_axi_rdata(63 downto 0) => m_src_axi_rdata(63 downto 0),
      m_src_axi_rlast => m_src_axi_rlast,
      m_src_axi_rvalid => m_src_axi_rvalid,
      needs_reset_reg => i_transfer_n_118,
      req_measured_burst_length(0) => req_measured_burst_length(0),
      req_ready_gated => req_ready_gated,
      \reset_gen[0].reset_sync_reg[0]\ => i_transfer_n_122,
      \reset_gen[0].reset_sync_reg[0]_0\ => i_transfer_n_123,
      \reset_gen[0].reset_sync_reg[0]_1\ => i_transfer_n_124,
      \response_id_reg[0]\ => i_transfer_n_130,
      \response_id_reg[1]\ => i_transfer_n_131,
      \response_id_reg[2]\ => i_transfer_n_132,
      \response_id_reg[3]\ => i_transfer_n_133,
      s_axi_aclk => s_axi_aclk,
      \src_id_reg[2]\(2 downto 0) => dbg_ids0(2 downto 0),
      \src_id_reg[3]\ => i_transfer_n_125,
      \src_stride_reg[23]\(20) => i_regmap_n_86,
      \src_stride_reg[23]\(19) => i_regmap_n_87,
      \src_stride_reg[23]\(18) => i_regmap_n_88,
      \src_stride_reg[23]\(17) => i_regmap_n_89,
      \src_stride_reg[23]\(16) => i_regmap_n_90,
      \src_stride_reg[23]\(15) => i_regmap_n_91,
      \src_stride_reg[23]\(14) => i_regmap_n_92,
      \src_stride_reg[23]\(13) => i_regmap_n_93,
      \src_stride_reg[23]\(12) => i_regmap_n_94,
      \src_stride_reg[23]\(11) => i_regmap_n_95,
      \src_stride_reg[23]\(10) => i_regmap_n_96,
      \src_stride_reg[23]\(9) => i_regmap_n_97,
      \src_stride_reg[23]\(8) => i_regmap_n_98,
      \src_stride_reg[23]\(7) => i_regmap_n_99,
      \src_stride_reg[23]\(6) => i_regmap_n_100,
      \src_stride_reg[23]\(5) => i_regmap_n_101,
      \src_stride_reg[23]\(4) => i_regmap_n_102,
      \src_stride_reg[23]\(3) => i_regmap_n_103,
      \src_stride_reg[23]\(2) => i_regmap_n_104,
      \src_stride_reg[23]\(1) => i_regmap_n_105,
      \src_stride_reg[23]\(0) => i_regmap_n_106,
      up_dma_cyclic => up_dma_cyclic,
      up_dma_last => up_dma_last,
      up_dma_req_valid => up_dma_req_valid,
      \up_rdata_reg[10]\ => i_regmap_n_13,
      \up_rdata_reg[10]_0\ => i_regmap_n_14,
      up_req_eot => up_req_eot,
      up_response_ready => up_response_ready,
      up_response_valid => up_response_valid,
      up_sot => up_sot,
      \y_length_reg[23]\(23 downto 0) => up_dma_y_length(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zed_axi_dmac_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_aresetn : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_arvalid : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_src_axi_rready : out STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    m_src_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_xfer_req : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zed_axi_dmac_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zed_axi_dmac_0_0 : entity is "zed_axi_dmac_0_0,axi_dmac,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zed_axi_dmac_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zed_axi_dmac_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zed_axi_dmac_0_0 : entity is "axi_dmac,Vivado 2018.3.1";
end zed_axi_dmac_0_0;

architecture STRUCTURE of zed_axi_dmac_0_0 is
  signal NLW_inst_fifo_rd_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_wr_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_wr_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_diag_level_bursts_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_fifo_rd_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_dest_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_inst_m_dest_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_dest_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_dest_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_inst_m_dest_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_dest_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_dest_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_dest_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_src_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_inst_m_src_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_src_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ALLOW_ASYM_MEM : integer;
  attribute ALLOW_ASYM_MEM of inst : label is 1;
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of inst : label is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of inst : label is "1'b0";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of inst : label is "1'b0";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of inst : label is 1;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of inst : label is 1;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of inst : label is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of inst : label is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of inst : label is 1024;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of inst : label is 16;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of inst : label is 3;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of inst : label is 3;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of inst : label is 128;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of inst : label is 8192;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of inst : label is 128;
  attribute BYTES_PER_BURST_WIDTH : integer;
  attribute BYTES_PER_BURST_WIDTH of inst : label is 7;
  attribute CYCLIC : string;
  attribute CYCLIC of inst : label is "1'b1";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of inst : label is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of inst : label is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of inst : label is "1'b1";
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of inst : label is 29;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of inst : label is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of inst : label is 1;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of inst : label is 64;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of inst : label is 64;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of inst : label is 3;
  attribute DMA_LENGTH_ALIGN_DEST : integer;
  attribute DMA_LENGTH_ALIGN_DEST of inst : label is 3;
  attribute DMA_LENGTH_ALIGN_SRC : integer;
  attribute DMA_LENGTH_ALIGN_SRC of inst : label is 0;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of inst : label is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of inst : label is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of inst : label is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of inst : label is 1;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of inst : label is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of inst : label is 0;
  attribute ENABLE_DIAGNOSTICS_IF : string;
  attribute ENABLE_DIAGNOSTICS_IF of inst : label is "1'b0";
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of inst : label is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of inst : label is "1'b0";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of inst : label is "1'b1";
  attribute ID : integer;
  attribute ID of inst : label is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of inst : label is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of inst : label is 128;
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of inst : label is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of inst : label is "1'b0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m_axis_aclk CLK, xilinx.com:signal:clock:1.0 m_axis_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME m_axis_aclk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME m_axis_signal_clock, ASSOCIATED_BUSIF m_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_last : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_last : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_ready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_valid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_src_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m_src_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of m_src_axi_aclk : signal is "XIL_INTERFACENAME m_src_axi_aclk, ASSOCIATED_BUSIF m_src_axi, ASSOCIATED_RESET m_src_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_src_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m_src_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m_src_axi_aresetn : signal is "XIL_INTERFACENAME m_src_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_src_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARREADY";
  attribute X_INTERFACE_INFO of m_src_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARVALID";
  attribute X_INTERFACE_INFO of m_src_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_src_axi RLAST";
  attribute X_INTERFACE_PARAMETER of m_src_axi_rlast : signal is "XIL_INTERFACENAME m_src_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 29, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 0, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_src_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_src_axi RREADY";
  attribute X_INTERFACE_INFO of m_src_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_src_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of m_axis_data : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_src_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARADDR";
  attribute X_INTERFACE_INFO of m_src_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARBURST";
  attribute X_INTERFACE_INFO of m_src_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARCACHE";
  attribute X_INTERFACE_INFO of m_src_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARLEN";
  attribute X_INTERFACE_INFO of m_src_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARPROT";
  attribute X_INTERFACE_INFO of m_src_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_src_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_src_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_src_axi RDATA";
  attribute X_INTERFACE_INFO of m_src_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_src_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_PARAMETER of s_axi_rdata : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.zed_axi_dmac_0_0_axi_dmac
     port map (
      dest_diag_level_bursts(7 downto 0) => NLW_inst_dest_diag_level_bursts_UNCONNECTED(7 downto 0),
      fifo_rd_clk => '0',
      fifo_rd_dout(63 downto 0) => NLW_inst_fifo_rd_dout_UNCONNECTED(63 downto 0),
      fifo_rd_en => '0',
      fifo_rd_underflow => NLW_inst_fifo_rd_underflow_UNCONNECTED,
      fifo_rd_valid => NLW_inst_fifo_rd_valid_UNCONNECTED,
      fifo_rd_xfer_req => NLW_inst_fifo_rd_xfer_req_UNCONNECTED,
      fifo_wr_clk => '0',
      fifo_wr_din(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      fifo_wr_en => '0',
      fifo_wr_overflow => NLW_inst_fifo_wr_overflow_UNCONNECTED,
      fifo_wr_sync => '1',
      fifo_wr_xfer_req => NLW_inst_fifo_wr_xfer_req_UNCONNECTED,
      irq => irq,
      m_axis_aclk => m_axis_aclk,
      m_axis_data(63 downto 0) => m_axis_data(63 downto 0),
      m_axis_last => m_axis_last,
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      m_axis_xfer_req => m_axis_xfer_req,
      m_dest_axi_aclk => '0',
      m_dest_axi_araddr(28 downto 0) => NLW_inst_m_dest_axi_araddr_UNCONNECTED(28 downto 0),
      m_dest_axi_arburst(1 downto 0) => NLW_inst_m_dest_axi_arburst_UNCONNECTED(1 downto 0),
      m_dest_axi_arcache(3 downto 0) => NLW_inst_m_dest_axi_arcache_UNCONNECTED(3 downto 0),
      m_dest_axi_aresetn => '0',
      m_dest_axi_arid(0) => NLW_inst_m_dest_axi_arid_UNCONNECTED(0),
      m_dest_axi_arlen(7 downto 0) => NLW_inst_m_dest_axi_arlen_UNCONNECTED(7 downto 0),
      m_dest_axi_arlock(0) => NLW_inst_m_dest_axi_arlock_UNCONNECTED(0),
      m_dest_axi_arprot(2 downto 0) => NLW_inst_m_dest_axi_arprot_UNCONNECTED(2 downto 0),
      m_dest_axi_arready => '0',
      m_dest_axi_arsize(2 downto 0) => NLW_inst_m_dest_axi_arsize_UNCONNECTED(2 downto 0),
      m_dest_axi_arvalid => NLW_inst_m_dest_axi_arvalid_UNCONNECTED,
      m_dest_axi_awaddr(28 downto 0) => NLW_inst_m_dest_axi_awaddr_UNCONNECTED(28 downto 0),
      m_dest_axi_awburst(1 downto 0) => NLW_inst_m_dest_axi_awburst_UNCONNECTED(1 downto 0),
      m_dest_axi_awcache(3 downto 0) => NLW_inst_m_dest_axi_awcache_UNCONNECTED(3 downto 0),
      m_dest_axi_awid(0) => NLW_inst_m_dest_axi_awid_UNCONNECTED(0),
      m_dest_axi_awlen(7 downto 0) => NLW_inst_m_dest_axi_awlen_UNCONNECTED(7 downto 0),
      m_dest_axi_awlock(0) => NLW_inst_m_dest_axi_awlock_UNCONNECTED(0),
      m_dest_axi_awprot(2 downto 0) => NLW_inst_m_dest_axi_awprot_UNCONNECTED(2 downto 0),
      m_dest_axi_awready => '0',
      m_dest_axi_awsize(2 downto 0) => NLW_inst_m_dest_axi_awsize_UNCONNECTED(2 downto 0),
      m_dest_axi_awvalid => NLW_inst_m_dest_axi_awvalid_UNCONNECTED,
      m_dest_axi_bid(0) => '0',
      m_dest_axi_bready => NLW_inst_m_dest_axi_bready_UNCONNECTED,
      m_dest_axi_bresp(1 downto 0) => B"00",
      m_dest_axi_bvalid => '0',
      m_dest_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_dest_axi_rid(0) => '0',
      m_dest_axi_rlast => '0',
      m_dest_axi_rready => NLW_inst_m_dest_axi_rready_UNCONNECTED,
      m_dest_axi_rresp(1 downto 0) => B"00",
      m_dest_axi_rvalid => '0',
      m_dest_axi_wdata(63 downto 0) => NLW_inst_m_dest_axi_wdata_UNCONNECTED(63 downto 0),
      m_dest_axi_wid(0) => NLW_inst_m_dest_axi_wid_UNCONNECTED(0),
      m_dest_axi_wlast => NLW_inst_m_dest_axi_wlast_UNCONNECTED,
      m_dest_axi_wready => '0',
      m_dest_axi_wstrb(7 downto 0) => NLW_inst_m_dest_axi_wstrb_UNCONNECTED(7 downto 0),
      m_dest_axi_wvalid => NLW_inst_m_dest_axi_wvalid_UNCONNECTED,
      m_src_axi_aclk => m_src_axi_aclk,
      m_src_axi_araddr(28 downto 0) => m_src_axi_araddr(28 downto 0),
      m_src_axi_arburst(1 downto 0) => m_src_axi_arburst(1 downto 0),
      m_src_axi_arcache(3 downto 0) => m_src_axi_arcache(3 downto 0),
      m_src_axi_aresetn => m_src_axi_aresetn,
      m_src_axi_arid(0) => NLW_inst_m_src_axi_arid_UNCONNECTED(0),
      m_src_axi_arlen(3 downto 0) => m_src_axi_arlen(3 downto 0),
      m_src_axi_arlock(1 downto 0) => NLW_inst_m_src_axi_arlock_UNCONNECTED(1 downto 0),
      m_src_axi_arprot(2 downto 0) => m_src_axi_arprot(2 downto 0),
      m_src_axi_arready => m_src_axi_arready,
      m_src_axi_arsize(2 downto 0) => m_src_axi_arsize(2 downto 0),
      m_src_axi_arvalid => m_src_axi_arvalid,
      m_src_axi_awaddr(28 downto 0) => NLW_inst_m_src_axi_awaddr_UNCONNECTED(28 downto 0),
      m_src_axi_awburst(1 downto 0) => NLW_inst_m_src_axi_awburst_UNCONNECTED(1 downto 0),
      m_src_axi_awcache(3 downto 0) => NLW_inst_m_src_axi_awcache_UNCONNECTED(3 downto 0),
      m_src_axi_awid(0) => NLW_inst_m_src_axi_awid_UNCONNECTED(0),
      m_src_axi_awlen(3 downto 0) => NLW_inst_m_src_axi_awlen_UNCONNECTED(3 downto 0),
      m_src_axi_awlock(1 downto 0) => NLW_inst_m_src_axi_awlock_UNCONNECTED(1 downto 0),
      m_src_axi_awprot(2 downto 0) => NLW_inst_m_src_axi_awprot_UNCONNECTED(2 downto 0),
      m_src_axi_awready => '0',
      m_src_axi_awsize(2 downto 0) => NLW_inst_m_src_axi_awsize_UNCONNECTED(2 downto 0),
      m_src_axi_awvalid => NLW_inst_m_src_axi_awvalid_UNCONNECTED,
      m_src_axi_bid(0) => '0',
      m_src_axi_bready => NLW_inst_m_src_axi_bready_UNCONNECTED,
      m_src_axi_bresp(1 downto 0) => B"00",
      m_src_axi_bvalid => '0',
      m_src_axi_rdata(63 downto 0) => m_src_axi_rdata(63 downto 0),
      m_src_axi_rid(0) => '0',
      m_src_axi_rlast => m_src_axi_rlast,
      m_src_axi_rready => m_src_axi_rready,
      m_src_axi_rresp(1 downto 0) => m_src_axi_rresp(1 downto 0),
      m_src_axi_rvalid => m_src_axi_rvalid,
      m_src_axi_wdata(63 downto 0) => NLW_inst_m_src_axi_wdata_UNCONNECTED(63 downto 0),
      m_src_axi_wid(0) => NLW_inst_m_src_axi_wid_UNCONNECTED(0),
      m_src_axi_wlast => NLW_inst_m_src_axi_wlast_UNCONNECTED,
      m_src_axi_wready => '0',
      m_src_axi_wstrb(7 downto 0) => NLW_inst_m_src_axi_wstrb_UNCONNECTED(7 downto 0),
      m_src_axi_wvalid => NLW_inst_m_src_axi_wvalid_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => '0',
      s_axis_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_last => '0',
      s_axis_ready => NLW_inst_s_axis_ready_UNCONNECTED,
      s_axis_user(0) => '1',
      s_axis_valid => '0',
      s_axis_xfer_req => NLW_inst_s_axis_xfer_req_UNCONNECTED
    );
end STRUCTURE;
