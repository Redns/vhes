-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Apr 19 22:57:26 2023
-- Host        : JingDevice running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/hevc_encoder_system_hdmi_adv7611_init_0_2_sim_netlist.vhdl
-- Design      : hevc_encoder_system_hdmi_adv7611_init_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c is
  port (
    adv_scl : out STD_LOGIC;
    REG_INDEX_reg_0_sp_1 : out STD_LOGIC;
    REG_INDEX_reg_8_sp_1 : out STD_LOGIC;
    \FSM_sequential_TS_S_reg[0]\ : out STD_LOGIC;
    iic_busy_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cfg_done_reg : out STD_LOGIC;
    iic_busy_reg_1 : out STD_LOGIC;
    REG_INDEX_reg_6_sp_1 : out STD_LOGIC;
    REG_INDEX_reg_5_sp_1 : out STD_LOGIC;
    REG_INDEX_reg_4_sp_1 : out STD_LOGIC;
    \REG_INDEX_reg[0]_0\ : out STD_LOGIC;
    REG_INDEX_reg_3_sp_1 : out STD_LOGIC;
    \REG_INDEX_reg[0]_1\ : out STD_LOGIC;
    REG_INDEX_reg_2_sp_1 : out STD_LOGIC;
    iic_busy_reg_2 : out STD_LOGIC;
    adv_sda : inout STD_LOGIC;
    clk_i : in STD_LOGIC;
    REG_INDEX_reg : in STD_LOGIC_VECTOR ( 8 downto 0 );
    TS_S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    REG_INDEX_reg_7_sp_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IIC_S_reg[0]_0\ : in STD_LOGIC;
    adv_cfg_done_o : in STD_LOGIC;
    \REG_INDEX_reg[6]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c : entity is "uii2c";
end hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c;

architecture STRUCTURE of hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c is
  signal CEA2 : STD_LOGIC;
  signal IIC_S : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \IIC_S[0]_i_1_n_0\ : STD_LOGIC;
  signal \IIC_S[1]_i_1_n_0\ : STD_LOGIC;
  signal \IIC_S[2]_i_1_n_0\ : STD_LOGIC;
  signal \IIC_S[2]_i_2_n_0\ : STD_LOGIC;
  signal \IIC_S[2]_i_3_n_0\ : STD_LOGIC;
  signal IOBUF_inst_i_2_n_0 : STD_LOGIC;
  signal IOBUF_inst_i_3_n_0 : STD_LOGIC;
  signal \REG_INDEX[7]_i_3_n_0\ : STD_LOGIC;
  signal REG_INDEX_reg_0_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_2_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_3_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_4_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_5_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_6_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_7_sn_1 : STD_LOGIC;
  signal REG_INDEX_reg_8_sn_1 : STD_LOGIC;
  signal \^adv_scl\ : STD_LOGIC;
  signal \bcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \bcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \bcnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \bcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bcnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \bcnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \bcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \clkdiv[8]_i_3_n_0\ : STD_LOGIC;
  signal \clkdiv[8]_i_4_n_0\ : STD_LOGIC;
  signal clkdiv_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal iic_busy : STD_LOGIC;
  signal iic_busy_i_1_n_0 : STD_LOGIC;
  signal iic_scl_i_1_n_0 : STD_LOGIC;
  signal iic_scl_i_3_n_0 : STD_LOGIC;
  signal iic_sda_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rcnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \rcnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \rcnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \rcnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \rcnt[7]_i_1_n_0\ : STD_LOGIC;
  signal scl_clk : STD_LOGIC;
  signal scl_clk_i_1_n_0 : STD_LOGIC;
  signal scl_offset : STD_LOGIC;
  signal sda_i : STD_LOGIC;
  signal sda_o1_out : STD_LOGIC;
  signal sda_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sda_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \sda_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \sda_r[7]_i_3_n_0\ : STD_LOGIC;
  signal wcnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \wcnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \wcnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \wcnt[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_TS_S[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IIC_S[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IIC_S[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IIC_S[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IIC_S[2]_i_3\ : label is "soft_lutpair5";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of IOBUF_inst_i_3 : label is "soft_lutpair11";
  attribute BOX_TYPE of PULLUP_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \REG_INDEX[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \REG_INDEX[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \REG_INDEX[7]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bcnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bcnt[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bcnt[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clkdiv[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clkdiv[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clkdiv[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clkdiv[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clkdiv[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clkdiv[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clkdiv[8]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of iic_busy_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of iic_en_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of iic_scl_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rcnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rcnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rcnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rcnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sda_r[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sda_r[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sda_r[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sda_r[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sda_r[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sda_r[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wcnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wcnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wcnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wcnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wcnt[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_data[23]_i_1\ : label is "soft_lutpair12";
begin
  REG_INDEX_reg_0_sp_1 <= REG_INDEX_reg_0_sn_1;
  REG_INDEX_reg_2_sp_1 <= REG_INDEX_reg_2_sn_1;
  REG_INDEX_reg_3_sp_1 <= REG_INDEX_reg_3_sn_1;
  REG_INDEX_reg_4_sp_1 <= REG_INDEX_reg_4_sn_1;
  REG_INDEX_reg_5_sp_1 <= REG_INDEX_reg_5_sn_1;
  REG_INDEX_reg_6_sp_1 <= REG_INDEX_reg_6_sn_1;
  REG_INDEX_reg_7_sn_1 <= REG_INDEX_reg_7_sp_1;
  REG_INDEX_reg_8_sp_1 <= REG_INDEX_reg_8_sn_1;
  adv_scl <= \^adv_scl\;
\FSM_sequential_TS_S[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"031D"
    )
        port map (
      I0 => adv_cfg_done_o,
      I1 => TS_S(1),
      I2 => iic_busy,
      I3 => TS_S(0),
      O => cfg_done_reg
    );
\FSM_sequential_TS_S[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => iic_busy,
      I1 => TS_S(1),
      I2 => TS_S(0),
      O => iic_busy_reg_1
    );
\IIC_S[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEA4"
    )
        port map (
      I0 => IIC_S(2),
      I1 => \IIC_S_reg[0]_0\,
      I2 => IIC_S(1),
      I3 => \bcnt[0]_i_2_n_0\,
      I4 => IIC_S(0),
      O => \IIC_S[0]_i_1_n_0\
    );
\IIC_S[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => IIC_S(2),
      I1 => IIC_S(0),
      I2 => IIC_S(1),
      O => \IIC_S[1]_i_1_n_0\
    );
\IIC_S[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFFE0000000"
    )
        port map (
      I0 => \IIC_S[2]_i_2_n_0\,
      I1 => iic_sda_r,
      I2 => IIC_S(1),
      I3 => IIC_S(0),
      I4 => \IIC_S[2]_i_3_n_0\,
      I5 => IIC_S(2),
      O => \IIC_S[2]_i_1_n_0\
    );
\IIC_S[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEFFFF"
    )
        port map (
      I0 => wcnt(3),
      I1 => wcnt(6),
      I2 => wcnt(1),
      I3 => wcnt(0),
      I4 => \bcnt[2]_i_4_n_0\,
      O => \IIC_S[2]_i_2_n_0\
    );
\IIC_S[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEEFEA"
    )
        port map (
      I0 => IIC_S(0),
      I1 => \bcnt[0]_i_2_n_0\,
      I2 => IIC_S(1),
      I3 => \IIC_S_reg[0]_0\,
      I4 => IIC_S(2),
      O => \IIC_S[2]_i_3_n_0\
    );
\IIC_S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \IIC_S[0]_i_1_n_0\,
      Q => IIC_S(0),
      R => '0'
    );
\IIC_S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \IIC_S[1]_i_1_n_0\,
      Q => IIC_S(1),
      R => '0'
    );
\IIC_S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \IIC_S[2]_i_1_n_0\,
      Q => IIC_S(2),
      R => '0'
    );
IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sda_o1_out,
      IO => adv_sda,
      O => sda_i,
      T => sda_o1_out
    );
IOBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => IOBUF_inst_i_2_n_0,
      I1 => rcnt(7),
      I2 => rcnt(3),
      I3 => rcnt(5),
      I4 => IIC_S(1),
      I5 => IOBUF_inst_i_3_n_0,
      O => sda_o1_out
    );
IOBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => rcnt(0),
      I1 => rcnt(1),
      I2 => rcnt(4),
      I3 => IIC_S(2),
      I4 => rcnt(2),
      I5 => rcnt(6),
      O => IOBUF_inst_i_2_n_0
    );
IOBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA5D"
    )
        port map (
      I0 => IIC_S(1),
      I1 => sda_r(7),
      I2 => IIC_S(2),
      I3 => IIC_S(0),
      O => IOBUF_inst_i_3_n_0
    );
PULLUP_inst: unisim.vcomponents.PULLUP
     port map (
      O => adv_sda
    );
\REG_INDEX[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => REG_INDEX_reg(0),
      I1 => TS_S(0),
      I2 => TS_S(1),
      I3 => iic_busy,
      O => REG_INDEX_reg_0_sn_1
    );
\REG_INDEX[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => REG_INDEX_reg(0),
      I1 => iic_busy,
      I2 => TS_S(1),
      I3 => TS_S(0),
      I4 => REG_INDEX_reg(1),
      O => \REG_INDEX_reg[0]_1\
    );
\REG_INDEX[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AAAAAAAAAAAAA"
    )
        port map (
      I0 => REG_INDEX_reg(2),
      I1 => TS_S(0),
      I2 => TS_S(1),
      I3 => iic_busy,
      I4 => REG_INDEX_reg(1),
      I5 => REG_INDEX_reg(0),
      O => REG_INDEX_reg_2_sn_1
    );
\REG_INDEX[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => REG_INDEX_reg(3),
      I1 => \REG_INDEX[7]_i_3_n_0\,
      I2 => REG_INDEX_reg(0),
      I3 => REG_INDEX_reg(1),
      I4 => REG_INDEX_reg(2),
      O => REG_INDEX_reg_3_sn_1
    );
\REG_INDEX[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => REG_INDEX_reg(0),
      I1 => REG_INDEX_reg(1),
      I2 => REG_INDEX_reg(2),
      I3 => REG_INDEX_reg(3),
      I4 => \REG_INDEX[7]_i_3_n_0\,
      I5 => REG_INDEX_reg(4),
      O => \REG_INDEX_reg[0]_0\
    );
\REG_INDEX[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000800"
    )
        port map (
      I0 => \REG_INDEX_reg[6]_0\,
      I1 => REG_INDEX_reg(4),
      I2 => iic_busy,
      I3 => TS_S(1),
      I4 => TS_S(0),
      I5 => REG_INDEX_reg(5),
      O => REG_INDEX_reg_4_sn_1
    );
\REG_INDEX[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => REG_INDEX_reg(5),
      I1 => REG_INDEX_reg(4),
      I2 => \REG_INDEX_reg[6]_0\,
      I3 => \REG_INDEX[7]_i_3_n_0\,
      I4 => REG_INDEX_reg(6),
      O => REG_INDEX_reg_5_sn_1
    );
\REG_INDEX[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07080F00"
    )
        port map (
      I0 => REG_INDEX_reg_7_sn_1,
      I1 => REG_INDEX_reg(6),
      I2 => E(0),
      I3 => REG_INDEX_reg(7),
      I4 => \REG_INDEX[7]_i_3_n_0\,
      O => REG_INDEX_reg_6_sn_1
    );
\REG_INDEX[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => iic_busy,
      I1 => TS_S(1),
      I2 => TS_S(0),
      O => \REG_INDEX[7]_i_3_n_0\
    );
\REG_INDEX[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => REG_INDEX_reg(8),
      I1 => REG_INDEX_reg(7),
      I2 => \REG_INDEX[7]_i_3_n_0\,
      I3 => REG_INDEX_reg(6),
      I4 => REG_INDEX_reg_7_sn_1,
      O => REG_INDEX_reg_8_sn_1
    );
REG_INDEX_reg_rep_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => TS_S(0),
      I1 => TS_S(1),
      I2 => iic_busy,
      I3 => E(0),
      O => \FSM_sequential_TS_S_reg[0]\
    );
\bcnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFBFFFB33F40004"
    )
        port map (
      I0 => \bcnt[0]_i_2_n_0\,
      I1 => IIC_S(1),
      I2 => IIC_S(0),
      I3 => IIC_S(2),
      I4 => \bcnt[2]_i_3_n_0\,
      I5 => \bcnt_reg_n_0_[0]\,
      O => \bcnt[0]_i_1_n_0\
    );
\bcnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bcnt_reg_n_0_[2]\,
      I1 => \bcnt_reg_n_0_[1]\,
      I2 => \bcnt_reg_n_0_[0]\,
      O => \bcnt[0]_i_2_n_0\
    );
\bcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FF8B00"
    )
        port map (
      I0 => \bcnt[2]_i_3_n_0\,
      I1 => IIC_S(0),
      I2 => \bcnt_reg_n_0_[0]\,
      I3 => \bcnt[1]_i_2_n_0\,
      I4 => \bcnt_reg_n_0_[1]\,
      O => \bcnt[1]_i_1_n_0\
    );
\bcnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3334333433F43334"
    )
        port map (
      I0 => \bcnt[0]_i_2_n_0\,
      I1 => IIC_S(1),
      I2 => IIC_S(0),
      I3 => IIC_S(2),
      I4 => \bcnt[2]_i_4_n_0\,
      I5 => \bcnt[1]_i_3_n_0\,
      O => \bcnt[1]_i_2_n_0\
    );
\bcnt[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => wcnt(0),
      I1 => wcnt(1),
      I2 => wcnt(6),
      I3 => wcnt(3),
      O => \bcnt[1]_i_3_n_0\
    );
\bcnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA9FF8AAAAAAA8A"
    )
        port map (
      I0 => \bcnt_reg_n_0_[2]\,
      I1 => \bcnt[2]_i_2_n_0\,
      I2 => IIC_S(1),
      I3 => IIC_S(0),
      I4 => IIC_S(2),
      I5 => \bcnt[2]_i_3_n_0\,
      O => \bcnt[2]_i_1_n_0\
    );
\bcnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bcnt_reg_n_0_[0]\,
      I1 => \bcnt_reg_n_0_[1]\,
      O => \bcnt[2]_i_2_n_0\
    );
\bcnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555DDD"
    )
        port map (
      I0 => IIC_S(1),
      I1 => \bcnt[2]_i_4_n_0\,
      I2 => wcnt(0),
      I3 => wcnt(1),
      I4 => wcnt(6),
      I5 => wcnt(3),
      O => \bcnt[2]_i_3_n_0\
    );
\bcnt[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wcnt(4),
      I1 => wcnt(2),
      I2 => wcnt(7),
      I3 => wcnt(5),
      O => \bcnt[2]_i_4_n_0\
    );
\bcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \bcnt[0]_i_1_n_0\,
      Q => \bcnt_reg_n_0_[0]\,
      R => '0'
    );
\bcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \bcnt[1]_i_1_n_0\,
      Q => \bcnt_reg_n_0_[1]\,
      R => '0'
    );
\bcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \bcnt[2]_i_1_n_0\,
      Q => \bcnt_reg_n_0_[2]\,
      R => '0'
    );
\clkdiv[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clkdiv_reg(0),
      O => p_0_in(0)
    );
\clkdiv[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clkdiv_reg(0),
      I1 => clkdiv_reg(1),
      O => p_0_in(1)
    );
\clkdiv[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => clkdiv_reg(2),
      I1 => clkdiv_reg(1),
      I2 => clkdiv_reg(0),
      O => p_0_in(2)
    );
\clkdiv[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clkdiv_reg(2),
      I1 => clkdiv_reg(1),
      I2 => clkdiv_reg(0),
      I3 => clkdiv_reg(3),
      O => p_0_in(3)
    );
\clkdiv[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => clkdiv_reg(4),
      I1 => clkdiv_reg(2),
      I2 => clkdiv_reg(1),
      I3 => clkdiv_reg(0),
      I4 => clkdiv_reg(3),
      O => p_0_in(4)
    );
\clkdiv[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => clkdiv_reg(5),
      I1 => clkdiv_reg(3),
      I2 => clkdiv_reg(0),
      I3 => clkdiv_reg(1),
      I4 => clkdiv_reg(2),
      I5 => clkdiv_reg(4),
      O => p_0_in(5)
    );
\clkdiv[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => clkdiv_reg(6),
      I1 => clkdiv_reg(4),
      I2 => clkdiv_reg(5),
      I3 => \clkdiv[8]_i_4_n_0\,
      O => p_0_in(6)
    );
\clkdiv[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => clkdiv_reg(7),
      I1 => \clkdiv[8]_i_4_n_0\,
      I2 => clkdiv_reg(5),
      I3 => clkdiv_reg(4),
      I4 => clkdiv_reg(6),
      O => p_0_in(7)
    );
\clkdiv[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => clkdiv_reg(2),
      I1 => clkdiv_reg(3),
      I2 => clkdiv_reg(0),
      I3 => clkdiv_reg(1),
      I4 => \clkdiv[8]_i_3_n_0\,
      O => clear
    );
\clkdiv[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => clkdiv_reg(8),
      I1 => clkdiv_reg(7),
      I2 => clkdiv_reg(6),
      I3 => clkdiv_reg(4),
      I4 => clkdiv_reg(5),
      I5 => \clkdiv[8]_i_4_n_0\,
      O => p_0_in(8)
    );
\clkdiv[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => clkdiv_reg(8),
      I1 => clkdiv_reg(6),
      I2 => clkdiv_reg(7),
      I3 => clkdiv_reg(4),
      I4 => clkdiv_reg(5),
      O => \clkdiv[8]_i_3_n_0\
    );
\clkdiv[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => clkdiv_reg(3),
      I1 => clkdiv_reg(0),
      I2 => clkdiv_reg(1),
      I3 => clkdiv_reg(2),
      O => \clkdiv[8]_i_4_n_0\
    );
\clkdiv_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(0),
      Q => clkdiv_reg(0),
      R => clear
    );
\clkdiv_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(1),
      Q => clkdiv_reg(1),
      R => clear
    );
\clkdiv_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(2),
      Q => clkdiv_reg(2),
      R => clear
    );
\clkdiv_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(3),
      Q => clkdiv_reg(3),
      R => clear
    );
\clkdiv_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(4),
      Q => clkdiv_reg(4),
      R => clear
    );
\clkdiv_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(5),
      Q => clkdiv_reg(5),
      R => clear
    );
\clkdiv_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(6),
      Q => clkdiv_reg(6),
      R => clear
    );
\clkdiv_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(7),
      Q => clkdiv_reg(7),
      R => clear
    );
\clkdiv_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => p_0_in(8),
      Q => clkdiv_reg(8),
      R => clear
    );
iic_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \IIC_S_reg[0]_0\,
      I1 => IIC_S(1),
      I2 => IIC_S(0),
      I3 => IIC_S(2),
      I4 => iic_busy,
      O => iic_busy_i_1_n_0
    );
iic_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => iic_busy_i_1_n_0,
      Q => iic_busy,
      R => '0'
    );
iic_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F310"
    )
        port map (
      I0 => iic_busy,
      I1 => TS_S(1),
      I2 => TS_S(0),
      I3 => \IIC_S_reg[0]_0\,
      O => iic_busy_reg_2
    );
iic_scl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3333FAAAAAAAA"
    )
        port map (
      I0 => \^adv_scl\,
      I1 => scl_clk,
      I2 => IIC_S(2),
      I3 => IIC_S(0),
      I4 => IIC_S(1),
      I5 => scl_offset,
      O => iic_scl_i_1_n_0
    );
iic_scl_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => iic_scl_i_3_n_0,
      I1 => clkdiv_reg(7),
      I2 => clkdiv_reg(5),
      I3 => clkdiv_reg(4),
      I4 => clkdiv_reg(6),
      I5 => clkdiv_reg(8),
      O => scl_offset
    );
iic_scl_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => clkdiv_reg(3),
      I1 => clkdiv_reg(0),
      I2 => clkdiv_reg(1),
      I3 => clkdiv_reg(2),
      O => iic_scl_i_3_n_0
    );
iic_scl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => iic_scl_i_1_n_0,
      Q => \^adv_scl\,
      R => '0'
    );
iic_sda_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => sda_i,
      Q => iic_sda_r,
      R => '0'
    );
\rcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rcnt(0),
      O => \rcnt[0]_i_1_n_0\
    );
\rcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => IIC_S(2),
      I1 => IIC_S(0),
      I2 => IIC_S(1),
      I3 => \IIC_S_reg[0]_0\,
      I4 => rcnt(1),
      O => \rcnt[1]_i_1_n_0\
    );
\rcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rcnt(2),
      I1 => rcnt(0),
      I2 => rcnt(1),
      O => \rcnt[2]_i_1_n_0\
    );
\rcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rcnt(3),
      I1 => rcnt(2),
      I2 => rcnt(1),
      I3 => rcnt(0),
      O => \rcnt[3]_i_1_n_0\
    );
\rcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rcnt(4),
      I1 => rcnt(3),
      I2 => rcnt(0),
      I3 => rcnt(1),
      I4 => rcnt(2),
      O => \rcnt[4]_i_1_n_0\
    );
\rcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rcnt(5),
      I1 => rcnt(4),
      I2 => rcnt(2),
      I3 => rcnt(1),
      I4 => rcnt(0),
      I5 => rcnt(3),
      O => \rcnt[5]_i_1_n_0\
    );
\rcnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \IIC_S_reg[0]_0\,
      I1 => IIC_S(1),
      I2 => IIC_S(0),
      I3 => IIC_S(2),
      O => \rcnt[6]_i_1_n_0\
    );
\rcnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => IIC_S(2),
      I1 => IIC_S(0),
      I2 => IIC_S(1),
      I3 => \IIC_S_reg[0]_0\,
      O => \rcnt[6]_i_2_n_0\
    );
\rcnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rcnt(6),
      I1 => \rcnt[6]_i_4_n_0\,
      O => \rcnt[6]_i_3_n_0\
    );
\rcnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rcnt(5),
      I1 => rcnt(4),
      I2 => rcnt(2),
      I3 => rcnt(1),
      I4 => rcnt(0),
      I5 => rcnt(3),
      O => \rcnt[6]_i_4_n_0\
    );
\rcnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => \rcnt[6]_i_4_n_0\,
      I1 => rcnt(6),
      I2 => IIC_S(2),
      I3 => \rcnt[6]_i_2_n_0\,
      I4 => rcnt(7),
      O => \rcnt[7]_i_1_n_0\
    );
\rcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[0]_i_1_n_0\,
      Q => rcnt(0),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \rcnt[1]_i_1_n_0\,
      Q => rcnt(1),
      R => '0'
    );
\rcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[2]_i_1_n_0\,
      Q => rcnt(2),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[3]_i_1_n_0\,
      Q => rcnt(3),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[4]_i_1_n_0\,
      Q => rcnt(4),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[5]_i_1_n_0\,
      Q => rcnt(5),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \rcnt[6]_i_2_n_0\,
      D => \rcnt[6]_i_3_n_0\,
      Q => rcnt(6),
      R => \rcnt[6]_i_1_n_0\
    );
\rcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \rcnt[7]_i_1_n_0\,
      Q => rcnt(7),
      R => '0'
    );
scl_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01110000FEEE"
    )
        port map (
      I0 => clkdiv_reg(2),
      I1 => clkdiv_reg(3),
      I2 => clkdiv_reg(0),
      I3 => clkdiv_reg(1),
      I4 => \clkdiv[8]_i_3_n_0\,
      I5 => scl_clk,
      O => scl_clk_i_1_n_0
    );
scl_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => scl_clk_i_1_n_0,
      Q => scl_clk,
      R => '0'
    );
\sda_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCFA"
    )
        port map (
      I0 => sda_r(0),
      I1 => \sda_r[0]_i_2_n_0\,
      I2 => IIC_S(1),
      I3 => IIC_S(0),
      I4 => IIC_S(2),
      O => \sda_r[0]_i_1_n_0\
    );
\sda_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(0),
      I1 => wcnt(1),
      I2 => Q(14),
      I3 => wcnt(0),
      I4 => Q(6),
      I5 => wcnt(2),
      O => \sda_r[0]_i_2_n_0\
    );
\sda_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(0),
      I1 => IIC_S(0),
      I2 => \sda_r[1]_i_2_n_0\,
      O => \sda_r[1]_i_1_n_0\
    );
\sda_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(0),
      I1 => wcnt(1),
      I2 => Q(15),
      I3 => wcnt(0),
      I4 => Q(7),
      I5 => wcnt(2),
      O => \sda_r[1]_i_2_n_0\
    );
\sda_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(1),
      I1 => IIC_S(0),
      I2 => \sda_r[2]_i_2_n_0\,
      O => \sda_r[2]_i_1_n_0\
    );
\sda_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(1),
      I1 => wcnt(1),
      I2 => Q(16),
      I3 => wcnt(0),
      I4 => Q(8),
      I5 => wcnt(2),
      O => \sda_r[2]_i_2_n_0\
    );
\sda_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(2),
      I1 => IIC_S(0),
      I2 => \sda_r[3]_i_2_n_0\,
      O => \sda_r[3]_i_1_n_0\
    );
\sda_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(2),
      I1 => wcnt(1),
      I2 => Q(17),
      I3 => wcnt(0),
      I4 => Q(9),
      I5 => wcnt(2),
      O => \sda_r[3]_i_2_n_0\
    );
\sda_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(3),
      I1 => IIC_S(0),
      I2 => \sda_r[4]_i_2_n_0\,
      O => \sda_r[4]_i_1_n_0\
    );
\sda_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(5),
      I1 => wcnt(1),
      I2 => Q(18),
      I3 => wcnt(0),
      I4 => Q(10),
      I5 => wcnt(2),
      O => \sda_r[4]_i_2_n_0\
    );
\sda_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(4),
      I1 => IIC_S(0),
      I2 => \sda_r[5]_i_2_n_0\,
      O => \sda_r[5]_i_1_n_0\
    );
\sda_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(3),
      I1 => wcnt(1),
      I2 => Q(19),
      I3 => wcnt(0),
      I4 => Q(11),
      I5 => wcnt(2),
      O => \sda_r[5]_i_2_n_0\
    );
\sda_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(5),
      I1 => IIC_S(0),
      I2 => \sda_r[6]_i_2_n_0\,
      O => \sda_r[6]_i_1_n_0\
    );
\sda_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(4),
      I1 => wcnt(1),
      I2 => Q(20),
      I3 => wcnt(0),
      I4 => Q(12),
      I5 => wcnt(2),
      O => \sda_r[6]_i_2_n_0\
    );
\sda_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => IIC_S(1),
      I1 => IIC_S(0),
      I2 => IIC_S(2),
      O => \sda_r[7]_i_1_n_0\
    );
\sda_r[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => sda_r(6),
      I1 => IIC_S(0),
      I2 => \sda_r[7]_i_3_n_0\,
      O => \sda_r[7]_i_2_n_0\
    );
\sda_r[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => Q(5),
      I1 => wcnt(1),
      I2 => Q(21),
      I3 => wcnt(0),
      I4 => Q(13),
      I5 => wcnt(2),
      O => \sda_r[7]_i_3_n_0\
    );
\sda_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \sda_r[0]_i_1_n_0\,
      Q => sda_r(0),
      R => '0'
    );
\sda_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[1]_i_1_n_0\,
      Q => sda_r(1),
      R => '0'
    );
\sda_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[2]_i_1_n_0\,
      Q => sda_r(2),
      R => '0'
    );
\sda_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[3]_i_1_n_0\,
      Q => sda_r(3),
      R => '0'
    );
\sda_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[4]_i_1_n_0\,
      Q => sda_r(4),
      R => '0'
    );
\sda_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[5]_i_1_n_0\,
      Q => sda_r(5),
      R => '0'
    );
\sda_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[6]_i_1_n_0\,
      Q => sda_r(6),
      R => '0'
    );
\sda_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => \sda_r[7]_i_1_n_0\,
      D => \sda_r[7]_i_2_n_0\,
      Q => sda_r(7),
      R => '0'
    );
\wcnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => IIC_S(1),
      I1 => wcnt(0),
      O => \wcnt[0]_i_1_n_0\
    );
\wcnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => wcnt(0),
      I1 => IIC_S(1),
      I2 => CEA2,
      I3 => wcnt(1),
      O => \wcnt[1]_i_1_n_0\
    );
\wcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => IIC_S(1),
      I1 => wcnt(2),
      I2 => wcnt(0),
      I3 => wcnt(1),
      O => \wcnt[2]_i_1_n_0\
    );
\wcnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => IIC_S(1),
      I1 => wcnt(3),
      I2 => wcnt(2),
      I3 => wcnt(1),
      I4 => wcnt(0),
      O => \wcnt[3]_i_1_n_0\
    );
\wcnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => IIC_S(1),
      I1 => wcnt(4),
      I2 => wcnt(3),
      I3 => wcnt(0),
      I4 => wcnt(1),
      I5 => wcnt(2),
      O => \wcnt[4]_i_1_n_0\
    );
\wcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wcnt(5),
      I1 => wcnt(4),
      I2 => wcnt(2),
      I3 => wcnt(1),
      I4 => wcnt(0),
      I5 => wcnt(3),
      O => \wcnt[5]_i_1_n_0\
    );
\wcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CEA2,
      I1 => IIC_S(1),
      O => \wcnt[6]_i_1_n_0\
    );
\wcnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03010001"
    )
        port map (
      I0 => \IIC_S_reg[0]_0\,
      I1 => IIC_S(0),
      I2 => IIC_S(2),
      I3 => IIC_S(1),
      I4 => \bcnt[0]_i_2_n_0\,
      O => CEA2
    );
\wcnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => wcnt(6),
      I1 => wcnt(3),
      I2 => \wcnt[6]_i_4_n_0\,
      I3 => wcnt(2),
      I4 => wcnt(4),
      I5 => wcnt(5),
      O => \wcnt[6]_i_3_n_0\
    );
\wcnt[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => wcnt(1),
      I1 => wcnt(0),
      O => \wcnt[6]_i_4_n_0\
    );
\wcnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => \wcnt[7]_i_2_n_0\,
      I1 => wcnt(6),
      I2 => IIC_S(1),
      I3 => CEA2,
      I4 => wcnt(7),
      O => \wcnt[7]_i_1_n_0\
    );
\wcnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => wcnt(5),
      I1 => wcnt(4),
      I2 => wcnt(2),
      I3 => wcnt(1),
      I4 => wcnt(0),
      I5 => wcnt(3),
      O => \wcnt[7]_i_2_n_0\
    );
\wcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[0]_i_1_n_0\,
      Q => wcnt(0),
      R => '0'
    );
\wcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \wcnt[1]_i_1_n_0\,
      Q => wcnt(1),
      R => '0'
    );
\wcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[2]_i_1_n_0\,
      Q => wcnt(2),
      R => '0'
    );
\wcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[3]_i_1_n_0\,
      Q => wcnt(3),
      R => '0'
    );
\wcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[4]_i_1_n_0\,
      Q => wcnt(4),
      R => '0'
    );
\wcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[5]_i_1_n_0\,
      Q => wcnt(5),
      R => \wcnt[6]_i_1_n_0\
    );
\wcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => CEA2,
      D => \wcnt[6]_i_3_n_0\,
      Q => wcnt(6),
      R => \wcnt[6]_i_1_n_0\
    );
\wcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => scl_clk,
      CE => '1',
      D => \wcnt[7]_i_1_n_0\,
      Q => wcnt(7),
      R => '0'
    );
\wr_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => iic_busy,
      I1 => TS_S(0),
      I2 => TS_S(1),
      O => iic_busy_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611 is
  port (
    adv_cfg_done_o : out STD_LOGIC;
    adv_scl : out STD_LOGIC;
    adv_sda : inout STD_LOGIC;
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611 : entity is "uicfg7611";
end hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611;

architecture STRUCTURE of hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611 is
  signal \REG_INDEX[7]_i_2_n_0\ : STD_LOGIC;
  signal REG_INDEX_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal REG_INDEX_reg_rep_i_10_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_2_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_3_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_4_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_5_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_6_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_7_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_8_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_i_9_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_0 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_1 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_10 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_11 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_12 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_13 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_14 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_15 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_2 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_28 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_29 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_3 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_30 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_31 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_32 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_33 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_4 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_5 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_6 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_7 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_8 : STD_LOGIC;
  signal REG_INDEX_reg_rep_n_9 : STD_LOGIC;
  signal TS_S : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^adv_cfg_done_o\ : STD_LOGIC;
  signal cfg_done_i_1_n_0 : STD_LOGIC;
  signal cfg_done_i_2_n_0 : STD_LOGIC;
  signal cfg_done_i_3_n_0 : STD_LOGIC;
  signal iic_en_reg_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal rst_cnt_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \rst_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal uii2c_inst_n_1 : STD_LOGIC;
  signal uii2c_inst_n_10 : STD_LOGIC;
  signal uii2c_inst_n_11 : STD_LOGIC;
  signal uii2c_inst_n_12 : STD_LOGIC;
  signal uii2c_inst_n_13 : STD_LOGIC;
  signal uii2c_inst_n_14 : STD_LOGIC;
  signal uii2c_inst_n_2 : STD_LOGIC;
  signal uii2c_inst_n_3 : STD_LOGIC;
  signal uii2c_inst_n_4 : STD_LOGIC;
  signal uii2c_inst_n_5 : STD_LOGIC;
  signal uii2c_inst_n_6 : STD_LOGIC;
  signal uii2c_inst_n_7 : STD_LOGIC;
  signal uii2c_inst_n_8 : STD_LOGIC;
  signal uii2c_inst_n_9 : STD_LOGIC;
  signal \wr_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_data_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_REG_INDEX_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal NLW_REG_INDEX_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_TS_S_reg[0]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_TS_S_reg[1]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of REG_INDEX_reg_rep : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of REG_INDEX_reg_rep : label is "p0_d4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of REG_INDEX_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of REG_INDEX_reg_rep : label is 5632;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of REG_INDEX_reg_rep : label is "inst/uicfg7611/REG_INDEX_reg_rep";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of REG_INDEX_reg_rep : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of REG_INDEX_reg_rep : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of REG_INDEX_reg_rep : label is 256;
  attribute ram_ext_slice_begin : integer;
  attribute ram_ext_slice_begin of REG_INDEX_reg_rep : label is 18;
  attribute ram_ext_slice_end : integer;
  attribute ram_ext_slice_end of REG_INDEX_reg_rep : label is 21;
  attribute ram_offset : integer;
  attribute ram_offset of REG_INDEX_reg_rep : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of REG_INDEX_reg_rep : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of REG_INDEX_reg_rep : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cfg_done_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rst_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rst_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rst_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rst_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rst_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rst_cnt[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rst_cnt[7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rst_cnt[7]_i_3\ : label is "soft_lutpair21";
  attribute inverted : string;
  attribute inverted of \rst_cnt_reg[8]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \wr_data[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wr_data[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wr_data[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wr_data[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_data[14]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_data[15]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_data[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_data[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_data[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_data[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wr_data[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wr_data[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_data[22]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_data[23]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wr_data[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wr_data[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wr_data[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_data[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_data[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wr_data[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wr_data[9]_i_1\ : label is "soft_lutpair30";
begin
  adv_cfg_done_o <= \^adv_cfg_done_o\;
\FSM_sequential_TS_S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_5,
      Q => TS_S(0),
      R => rst_cnt_reg(8)
    );
\FSM_sequential_TS_S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_6,
      Q => TS_S(1),
      R => rst_cnt_reg(8)
    );
\REG_INDEX[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => REG_INDEX_reg(0),
      I1 => REG_INDEX_reg(1),
      I2 => REG_INDEX_reg(2),
      I3 => REG_INDEX_reg(3),
      I4 => REG_INDEX_reg(4),
      I5 => REG_INDEX_reg(5),
      O => \REG_INDEX[7]_i_2_n_0\
    );
\REG_INDEX_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_1,
      Q => REG_INDEX_reg(0),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_12,
      Q => REG_INDEX_reg(1),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_13,
      Q => REG_INDEX_reg(2),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_11,
      Q => REG_INDEX_reg(3),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_10,
      Q => REG_INDEX_reg(4),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_9,
      Q => REG_INDEX_reg(5),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_8,
      Q => REG_INDEX_reg(6),
      R => rst_cnt_reg(8)
    );
\REG_INDEX_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_7,
      Q => REG_INDEX_reg(7),
      R => '0'
    );
\REG_INDEX_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_2,
      Q => REG_INDEX_reg(8),
      R => rst_cnt_reg(8)
    );
REG_INDEX_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000002A0000000000",
      INITP_01 => X"000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAA",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0C420B4406A705280442034002F700130105FD44FB68FA6CF964F84CF57CF480",
      INIT_01 => X"C801C701C601C501C401C301C201C1019B0340817C01BA01143F3340198A1580",
      INIT_02 => X"6CA37510580157DA1A8A8E1E8D048770851F6F0883FE0000CC01CB01CA01C901",
      INIT_03 => X"0D000C010B000A2909A30820070006FF05FF04FF03FF02FF01FF000074002070",
      INIT_04 => X"1D421C541BA71A3019F3180A177816411573148013031201111210230F000E00",
      INIT_05 => X"2D012C012B012A0129012801274F2661250024C8232522542150200F1F261EAA",
      INIT_06 => X"3D403C2D3B383A7139183880373A36023501340133013201310130012F012E01",
      INIT_07 => X"4DE04C204B8A4AD0490A488C471E46004500444243884280410040453F2C3E58",
      INIT_08 => X"5DFC5C005B005A0059185800570056425588548053005296513E50104F104E2D",
      INIT_09 => X"6D006C006B206A2069206820670A66206520642063206249614D60445F485E00",
      INIT_0A => X"7D207C207B207A2079207820770A7600750F7445731F7255713270006FFD6E00",
      INIT_0B => X"0000000000000000000000000000000000000000F4006CA220F074017F247E01",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0009000900090009000900090009000900090009000900090009000900090009",
      INIT_21 => X"0007000700070007000700070007000700070006000400040009000900090009",
      INIT_22 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_23 => X"0007000700070007000700070007000700070007000700070007000700060009",
      INIT_24 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_25 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_26 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_27 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_28 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_29 => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_2A => X"0007000700070007000700070007000700070007000700070007000700070007",
      INIT_2B => X"0000000000000000000000000000000000000000000900070009000600070007",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => REG_INDEX_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => REG_INDEX_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => REG_INDEX_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => REG_INDEX_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => REG_INDEX_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => REG_INDEX_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => REG_INDEX_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => REG_INDEX_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"10",
      ADDRBWRADDR(11) => REG_INDEX_reg_rep_i_2_n_0,
      ADDRBWRADDR(10) => REG_INDEX_reg_rep_i_3_n_0,
      ADDRBWRADDR(9) => REG_INDEX_reg_rep_i_4_n_0,
      ADDRBWRADDR(8) => REG_INDEX_reg_rep_i_5_n_0,
      ADDRBWRADDR(7) => REG_INDEX_reg_rep_i_6_n_0,
      ADDRBWRADDR(6) => REG_INDEX_reg_rep_i_7_n_0,
      ADDRBWRADDR(5) => REG_INDEX_reg_rep_i_8_n_0,
      ADDRBWRADDR(4) => REG_INDEX_reg_rep_i_9_n_0,
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clk_i,
      CLKBWRCLK => clk_i,
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15) => REG_INDEX_reg_rep_n_0,
      DOADO(14) => REG_INDEX_reg_rep_n_1,
      DOADO(13) => REG_INDEX_reg_rep_n_2,
      DOADO(12) => REG_INDEX_reg_rep_n_3,
      DOADO(11) => REG_INDEX_reg_rep_n_4,
      DOADO(10) => REG_INDEX_reg_rep_n_5,
      DOADO(9) => REG_INDEX_reg_rep_n_6,
      DOADO(8) => REG_INDEX_reg_rep_n_7,
      DOADO(7) => REG_INDEX_reg_rep_n_8,
      DOADO(6) => REG_INDEX_reg_rep_n_9,
      DOADO(5) => REG_INDEX_reg_rep_n_10,
      DOADO(4) => REG_INDEX_reg_rep_n_11,
      DOADO(3) => REG_INDEX_reg_rep_n_12,
      DOADO(2) => REG_INDEX_reg_rep_n_13,
      DOADO(1) => REG_INDEX_reg_rep_n_14,
      DOADO(0) => REG_INDEX_reg_rep_n_15,
      DOBDO(15 downto 4) => NLW_REG_INDEX_reg_rep_DOBDO_UNCONNECTED(15 downto 4),
      DOBDO(3) => REG_INDEX_reg_rep_n_28,
      DOBDO(2) => REG_INDEX_reg_rep_n_29,
      DOBDO(1) => REG_INDEX_reg_rep_n_30,
      DOBDO(0) => REG_INDEX_reg_rep_n_31,
      DOPADOP(1) => REG_INDEX_reg_rep_n_32,
      DOPADOP(0) => REG_INDEX_reg_rep_n_33,
      DOPBDOP(1 downto 0) => NLW_REG_INDEX_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => uii2c_inst_n_3,
      ENBWREN => uii2c_inst_n_3,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
REG_INDEX_reg_rep_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => REG_INDEX_reg(3),
      I1 => REG_INDEX_reg(2),
      I2 => REG_INDEX_reg(1),
      I3 => REG_INDEX_reg(0),
      O => REG_INDEX_reg_rep_i_10_n_0
    );
REG_INDEX_reg_rep_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => REG_INDEX_reg(6),
      I1 => REG_INDEX_reg(5),
      I2 => REG_INDEX_reg(4),
      I3 => REG_INDEX_reg_rep_i_10_n_0,
      I4 => REG_INDEX_reg(7),
      I5 => rst_cnt_reg(8),
      O => REG_INDEX_reg_rep_i_2_n_0
    );
REG_INDEX_reg_rep_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => REG_INDEX_reg_rep_i_10_n_0,
      I1 => REG_INDEX_reg(4),
      I2 => REG_INDEX_reg(5),
      I3 => REG_INDEX_reg(6),
      I4 => rst_cnt_reg(8),
      O => REG_INDEX_reg_rep_i_3_n_0
    );
REG_INDEX_reg_rep_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => REG_INDEX_reg(4),
      I1 => REG_INDEX_reg_rep_i_10_n_0,
      I2 => REG_INDEX_reg(5),
      I3 => rst_cnt_reg(8),
      O => REG_INDEX_reg_rep_i_4_n_0
    );
REG_INDEX_reg_rep_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => REG_INDEX_reg(3),
      I1 => REG_INDEX_reg(2),
      I2 => REG_INDEX_reg(1),
      I3 => REG_INDEX_reg(0),
      I4 => REG_INDEX_reg(4),
      I5 => rst_cnt_reg(8),
      O => REG_INDEX_reg_rep_i_5_n_0
    );
REG_INDEX_reg_rep_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => rst_cnt_reg(8),
      I1 => REG_INDEX_reg(0),
      I2 => REG_INDEX_reg(1),
      I3 => REG_INDEX_reg(2),
      I4 => REG_INDEX_reg(3),
      O => REG_INDEX_reg_rep_i_6_n_0
    );
REG_INDEX_reg_rep_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => rst_cnt_reg(8),
      I1 => REG_INDEX_reg(1),
      I2 => REG_INDEX_reg(0),
      I3 => REG_INDEX_reg(2),
      O => REG_INDEX_reg_rep_i_7_n_0
    );
REG_INDEX_reg_rep_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => REG_INDEX_reg(0),
      I1 => REG_INDEX_reg(1),
      I2 => rst_cnt_reg(8),
      O => REG_INDEX_reg_rep_i_8_n_0
    );
REG_INDEX_reg_rep_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_cnt_reg(8),
      I1 => REG_INDEX_reg(0),
      O => REG_INDEX_reg_rep_i_9_n_0
    );
cfg_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => cfg_done_i_2_n_0,
      I1 => TS_S(0),
      I2 => TS_S(1),
      I3 => \^adv_cfg_done_o\,
      O => cfg_done_i_1_n_0
    );
cfg_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => REG_INDEX_reg(3),
      I1 => REG_INDEX_reg(0),
      I2 => REG_INDEX_reg(8),
      I3 => cfg_done_i_3_n_0,
      O => cfg_done_i_2_n_0
    );
cfg_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => REG_INDEX_reg(1),
      I1 => REG_INDEX_reg(2),
      I2 => REG_INDEX_reg(6),
      I3 => REG_INDEX_reg(7),
      I4 => REG_INDEX_reg(5),
      I5 => REG_INDEX_reg(4),
      O => cfg_done_i_3_n_0
    );
cfg_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => cfg_done_i_1_n_0,
      Q => \^adv_cfg_done_o\,
      R => rst_cnt_reg(8)
    );
iic_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => uii2c_inst_n_14,
      Q => iic_en_reg_n_0,
      R => rst_cnt_reg(8)
    );
\rst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\rst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\rst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[2]\,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => \rst_cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(2)
    );
\rst_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[1]\,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => \rst_cnt_reg_n_0_[2]\,
      I3 => \rst_cnt_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\rst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[4]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[2]\,
      I4 => \rst_cnt_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\rst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[5]\,
      I1 => \rst_cnt_reg_n_0_[3]\,
      I2 => \rst_cnt_reg_n_0_[2]\,
      I3 => \rst_cnt_reg_n_0_[0]\,
      I4 => \rst_cnt_reg_n_0_[1]\,
      I5 => \rst_cnt_reg_n_0_[4]\,
      O => \p_0_in__0\(5)
    );
\rst_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[6]\,
      I1 => \rst_cnt_reg_n_0_[4]\,
      I2 => \rst_cnt[7]_i_3_n_0\,
      I3 => \rst_cnt_reg_n_0_[5]\,
      O => \p_0_in__0\(6)
    );
\rst_cnt[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_i,
      O => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[7]\,
      I1 => \rst_cnt_reg_n_0_[5]\,
      I2 => \rst_cnt[7]_i_3_n_0\,
      I3 => \rst_cnt_reg_n_0_[4]\,
      I4 => \rst_cnt_reg_n_0_[6]\,
      O => \p_0_in__0\(7)
    );
\rst_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[3]\,
      I1 => \rst_cnt_reg_n_0_[2]\,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[1]\,
      O => \rst_cnt[7]_i_3_n_0\
    );
\rst_cnt[8]_inv_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[6]\,
      I1 => \rst_cnt_reg_n_0_[4]\,
      I2 => \rst_cnt[7]_i_3_n_0\,
      I3 => \rst_cnt_reg_n_0_[5]\,
      I4 => \rst_cnt_reg_n_0_[7]\,
      O => \p_0_in__0\(8)
    );
\rst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(0),
      Q => \rst_cnt_reg_n_0_[0]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(1),
      Q => \rst_cnt_reg_n_0_[1]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(2),
      Q => \rst_cnt_reg_n_0_[2]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(3),
      Q => \rst_cnt_reg_n_0_[3]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(4),
      Q => \rst_cnt_reg_n_0_[4]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(5),
      Q => \rst_cnt_reg_n_0_[5]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(6),
      Q => \rst_cnt_reg_n_0_[6]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(7),
      Q => \rst_cnt_reg_n_0_[7]\,
      R => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt_reg[8]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => rst_cnt_reg(8),
      D => \p_0_in__0\(8),
      Q => rst_cnt_reg(8),
      S => \rst_cnt[7]_i_1_n_0\
    );
uii2c_inst: entity work.hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c
     port map (
      E(0) => rst_cnt_reg(8),
      \FSM_sequential_TS_S_reg[0]\ => uii2c_inst_n_3,
      \IIC_S_reg[0]_0\ => iic_en_reg_n_0,
      Q(21) => \wr_data_reg_n_0_[23]\,
      Q(20) => \wr_data_reg_n_0_[22]\,
      Q(19) => \wr_data_reg_n_0_[21]\,
      Q(18) => \wr_data_reg_n_0_[20]\,
      Q(17) => \wr_data_reg_n_0_[19]\,
      Q(16) => \wr_data_reg_n_0_[18]\,
      Q(15) => \wr_data_reg_n_0_[17]\,
      Q(14) => \wr_data_reg_n_0_[16]\,
      Q(13) => \wr_data_reg_n_0_[15]\,
      Q(12) => \wr_data_reg_n_0_[14]\,
      Q(11) => \wr_data_reg_n_0_[13]\,
      Q(10) => \wr_data_reg_n_0_[12]\,
      Q(9) => \wr_data_reg_n_0_[11]\,
      Q(8) => \wr_data_reg_n_0_[10]\,
      Q(7) => \wr_data_reg_n_0_[9]\,
      Q(6) => \wr_data_reg_n_0_[8]\,
      Q(5) => \wr_data_reg_n_0_[7]\,
      Q(4) => \wr_data_reg_n_0_[6]\,
      Q(3) => \wr_data_reg_n_0_[5]\,
      Q(2) => \wr_data_reg_n_0_[3]\,
      Q(1) => \wr_data_reg_n_0_[2]\,
      Q(0) => \wr_data_reg_n_0_[1]\,
      REG_INDEX_reg(8 downto 0) => REG_INDEX_reg(8 downto 0),
      \REG_INDEX_reg[0]_0\ => uii2c_inst_n_10,
      \REG_INDEX_reg[0]_1\ => uii2c_inst_n_12,
      \REG_INDEX_reg[6]_0\ => REG_INDEX_reg_rep_i_10_n_0,
      REG_INDEX_reg_0_sp_1 => uii2c_inst_n_1,
      REG_INDEX_reg_2_sp_1 => uii2c_inst_n_13,
      REG_INDEX_reg_3_sp_1 => uii2c_inst_n_11,
      REG_INDEX_reg_4_sp_1 => uii2c_inst_n_9,
      REG_INDEX_reg_5_sp_1 => uii2c_inst_n_8,
      REG_INDEX_reg_6_sp_1 => uii2c_inst_n_7,
      REG_INDEX_reg_7_sp_1 => \REG_INDEX[7]_i_2_n_0\,
      REG_INDEX_reg_8_sp_1 => uii2c_inst_n_2,
      TS_S(1 downto 0) => TS_S(1 downto 0),
      adv_cfg_done_o => \^adv_cfg_done_o\,
      adv_scl => adv_scl,
      adv_sda => adv_sda,
      cfg_done_reg => uii2c_inst_n_5,
      clk_i => clk_i,
      iic_busy_reg_0(0) => uii2c_inst_n_4,
      iic_busy_reg_1 => uii2c_inst_n_6,
      iic_busy_reg_2 => uii2c_inst_n_14
    );
\wr_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_5,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(10)
    );
\wr_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_4,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(11)
    );
\wr_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_3,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(12)
    );
\wr_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_2,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(13)
    );
\wr_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_1,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(14)
    );
\wr_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_0,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(15)
    );
\wr_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_15,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(0)
    );
\wr_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_14,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(1)
    );
\wr_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_13,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(2)
    );
\wr_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_12,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(3)
    );
\wr_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_33,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(17)
    );
\wr_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_11,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(4)
    );
\wr_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_10,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(5)
    );
\wr_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_9,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(6)
    );
\wr_data[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_8,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(7)
    );
\wr_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_32,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(18)
    );
\wr_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_31,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(19)
    );
\wr_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_30,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(21)
    );
\wr_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_29,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(22)
    );
\wr_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_28,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(23)
    );
\wr_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_7,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(8)
    );
\wr_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => REG_INDEX_reg_rep_n_6,
      I1 => REG_INDEX_reg(8),
      O => p_2_out(9)
    );
\wr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(10),
      Q => \wr_data_reg_n_0_[10]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(11),
      Q => \wr_data_reg_n_0_[11]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(12),
      Q => \wr_data_reg_n_0_[12]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(13),
      Q => \wr_data_reg_n_0_[13]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(14),
      Q => \wr_data_reg_n_0_[14]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(15),
      Q => \wr_data_reg_n_0_[15]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(0),
      Q => \wr_data_reg_n_0_[16]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(1),
      Q => \wr_data_reg_n_0_[17]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(2),
      Q => \wr_data_reg_n_0_[18]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(3),
      Q => \wr_data_reg_n_0_[19]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(17),
      Q => \wr_data_reg_n_0_[1]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(4),
      Q => \wr_data_reg_n_0_[20]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(5),
      Q => \wr_data_reg_n_0_[21]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(6),
      Q => \wr_data_reg_n_0_[22]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(7),
      Q => \wr_data_reg_n_0_[23]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(18),
      Q => \wr_data_reg_n_0_[2]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(19),
      Q => \wr_data_reg_n_0_[3]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(21),
      Q => \wr_data_reg_n_0_[5]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(22),
      Q => \wr_data_reg_n_0_[6]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(23),
      Q => \wr_data_reg_n_0_[7]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(8),
      Q => \wr_data_reg_n_0_[8]\,
      R => rst_cnt_reg(8)
    );
\wr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => uii2c_inst_n_4,
      D => p_2_out(9),
      Q => \wr_data_reg_n_0_[9]\,
      R => rst_cnt_reg(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb is
  port (
    adv_cfg_done_o : out STD_LOGIC;
    adv_scl : out STD_LOGIC;
    adv_sda : inout STD_LOGIC;
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb : entity is "hdmi2rgb";
end hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb;

architecture STRUCTURE of hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb is
begin
uicfg7611: entity work.hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611
     port map (
      adv_cfg_done_o => adv_cfg_done_o,
      adv_scl => adv_scl,
      adv_sda => adv_sda,
      clk_i => clk_i,
      rst_n_i => rst_n_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_hdmi_adv7611_init_0_2 is
  port (
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC;
    adv_sda : inout STD_LOGIC;
    adv_scl : out STD_LOGIC;
    adv_rst_o : out STD_LOGIC;
    adv_pen_o : out STD_LOGIC;
    adv_cfg_done_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hevc_encoder_system_hdmi_adv7611_init_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hevc_encoder_system_hdmi_adv7611_init_0_2 : entity is "hevc_encoder_system_hdmi_adv7611_init_0_2,hdmi2rgb,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hevc_encoder_system_hdmi_adv7611_init_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hevc_encoder_system_hdmi_adv7611_init_0_2 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hevc_encoder_system_hdmi_adv7611_init_0_2 : entity is "hdmi2rgb,Vivado 2022.1";
end hevc_encoder_system_hdmi_adv7611_init_0_2;

architecture STRUCTURE of hevc_encoder_system_hdmi_adv7611_init_0_2 is
  signal \<const1>\ : STD_LOGIC;
begin
  adv_pen_o <= \<const1>\;
  adv_rst_o <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb
     port map (
      adv_cfg_done_o => adv_cfg_done_o,
      adv_scl => adv_scl,
      adv_sda => adv_sda,
      clk_i => clk_i,
      rst_n_i => rst_n_i
    );
end STRUCTURE;
