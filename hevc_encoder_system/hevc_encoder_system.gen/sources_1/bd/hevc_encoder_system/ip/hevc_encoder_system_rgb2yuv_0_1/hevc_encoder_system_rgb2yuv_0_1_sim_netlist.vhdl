-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Apr 19 22:57:22 2023
-- Host        : JingDevice running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/hevc_encoder_system_rgb2yuv_0_1_sim_netlist.vhdl
-- Design      : hevc_encoder_system_rgb2yuv_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_rgb2yuv_0_1_rgb2yuv is
  port (
    yuv_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hsync_o : out STD_LOGIC;
    vsync_o : out STD_LOGIC;
    de_o : out STD_LOGIC;
    rgb_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk_i : in STD_LOGIC;
    hsync_i : in STD_LOGIC;
    vsync_i : in STD_LOGIC;
    de_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hevc_encoder_system_rgb2yuv_0_1_rgb2yuv : entity is "rgb2yuv";
end hevc_encoder_system_rgb2yuv_0_1_rgb2yuv;

architecture STRUCTURE of hevc_encoder_system_rgb2yuv_0_1_rgb2yuv is
  signal de : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hsync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \u0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \u0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \u0_carry__0_n_0\ : STD_LOGIC;
  signal \u0_carry__0_n_1\ : STD_LOGIC;
  signal \u0_carry__0_n_2\ : STD_LOGIC;
  signal \u0_carry__0_n_3\ : STD_LOGIC;
  signal \u0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \u0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \u0_carry__1_n_0\ : STD_LOGIC;
  signal \u0_carry__1_n_1\ : STD_LOGIC;
  signal \u0_carry__1_n_2\ : STD_LOGIC;
  signal \u0_carry__1_n_3\ : STD_LOGIC;
  signal \u0_carry__1_n_4\ : STD_LOGIC;
  signal \u0_carry__1_n_5\ : STD_LOGIC;
  signal \u0_carry__1_n_6\ : STD_LOGIC;
  signal \u0_carry__1_n_7\ : STD_LOGIC;
  signal \u0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \u0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \u0_carry__2_n_1\ : STD_LOGIC;
  signal \u0_carry__2_n_2\ : STD_LOGIC;
  signal \u0_carry__2_n_3\ : STD_LOGIC;
  signal \u0_carry__2_n_4\ : STD_LOGIC;
  signal \u0_carry__2_n_5\ : STD_LOGIC;
  signal \u0_carry__2_n_6\ : STD_LOGIC;
  signal \u0_carry__2_n_7\ : STD_LOGIC;
  signal u0_carry_i_1_n_0 : STD_LOGIC;
  signal u0_carry_i_2_n_0 : STD_LOGIC;
  signal u0_carry_i_4_n_0 : STD_LOGIC;
  signal u0_carry_i_5_n_0 : STD_LOGIC;
  signal u0_carry_i_6_n_0 : STD_LOGIC;
  signal u0_carry_i_7_n_0 : STD_LOGIC;
  signal u0_carry_n_0 : STD_LOGIC;
  signal u0_carry_n_1 : STD_LOGIC;
  signal u0_carry_n_2 : STD_LOGIC;
  signal u0_carry_n_3 : STD_LOGIC;
  signal u_temp1 : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal u_temp10 : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \u_temp10__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp10__19_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp10__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp10__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry_n_0\ : STD_LOGIC;
  signal \u_temp10__19_carry_n_1\ : STD_LOGIC;
  signal \u_temp10__19_carry_n_2\ : STD_LOGIC;
  signal \u_temp10__19_carry_n_3\ : STD_LOGIC;
  signal \u_temp10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_4\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_5\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_6\ : STD_LOGIC;
  signal \u_temp10_carry__0_n_7\ : STD_LOGIC;
  signal \u_temp10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \u_temp10_carry__1_n_2\ : STD_LOGIC;
  signal \u_temp10_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp10_carry__1_n_5\ : STD_LOGIC;
  signal \u_temp10_carry__1_n_6\ : STD_LOGIC;
  signal \u_temp10_carry__1_n_7\ : STD_LOGIC;
  signal u_temp10_carry_i_1_n_0 : STD_LOGIC;
  signal u_temp10_carry_i_2_n_0 : STD_LOGIC;
  signal u_temp10_carry_i_3_n_0 : STD_LOGIC;
  signal u_temp10_carry_n_0 : STD_LOGIC;
  signal u_temp10_carry_n_1 : STD_LOGIC;
  signal u_temp10_carry_n_2 : STD_LOGIC;
  signal u_temp10_carry_n_3 : STD_LOGIC;
  signal u_temp10_carry_n_4 : STD_LOGIC;
  signal u_temp2 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal u_temp20 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \u_temp20__21_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp20__21_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_n_1\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_n_2\ : STD_LOGIC;
  signal \u_temp20__21_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp20__21_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry_i_2_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry_i_3_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry_n_0\ : STD_LOGIC;
  signal \u_temp20__21_carry_n_1\ : STD_LOGIC;
  signal \u_temp20__21_carry_n_2\ : STD_LOGIC;
  signal \u_temp20__21_carry_n_3\ : STD_LOGIC;
  signal \u_temp20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_4\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_5\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_6\ : STD_LOGIC;
  signal \u_temp20_carry__0_n_7\ : STD_LOGIC;
  signal \u_temp20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \u_temp20_carry__1_n_1\ : STD_LOGIC;
  signal \u_temp20_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp20_carry__1_n_6\ : STD_LOGIC;
  signal \u_temp20_carry__1_n_7\ : STD_LOGIC;
  signal u_temp20_carry_i_1_n_0 : STD_LOGIC;
  signal u_temp20_carry_i_2_n_0 : STD_LOGIC;
  signal u_temp20_carry_i_3_n_0 : STD_LOGIC;
  signal u_temp20_carry_n_0 : STD_LOGIC;
  signal u_temp20_carry_n_1 : STD_LOGIC;
  signal u_temp20_carry_n_2 : STD_LOGIC;
  signal u_temp20_carry_n_3 : STD_LOGIC;
  signal u_temp20_carry_n_4 : STD_LOGIC;
  signal u_temp20_carry_n_5 : STD_LOGIC;
  signal u_temp3 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal u_temp30 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \u_temp30__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp30__25_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp30__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp30__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry_n_0\ : STD_LOGIC;
  signal \u_temp30__25_carry_n_1\ : STD_LOGIC;
  signal \u_temp30__25_carry_n_2\ : STD_LOGIC;
  signal \u_temp30__25_carry_n_3\ : STD_LOGIC;
  signal \u_temp30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_1\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_2\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_3\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_4\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_5\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_6\ : STD_LOGIC;
  signal \u_temp30_carry__0_n_7\ : STD_LOGIC;
  signal \u_temp30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \u_temp30_carry__1_n_2\ : STD_LOGIC;
  signal \u_temp30_carry__1_n_3\ : STD_LOGIC;
  signal \u_temp30_carry__1_n_5\ : STD_LOGIC;
  signal \u_temp30_carry__1_n_6\ : STD_LOGIC;
  signal \u_temp30_carry__1_n_7\ : STD_LOGIC;
  signal u_temp30_carry_i_1_n_0 : STD_LOGIC;
  signal u_temp30_carry_i_2_n_0 : STD_LOGIC;
  signal u_temp30_carry_i_3_n_0 : STD_LOGIC;
  signal u_temp30_carry_n_0 : STD_LOGIC;
  signal u_temp30_carry_n_1 : STD_LOGIC;
  signal u_temp30_carry_n_2 : STD_LOGIC;
  signal u_temp30_carry_n_3 : STD_LOGIC;
  signal u_temp30_carry_n_4 : STD_LOGIC;
  signal u_temp30_carry_n_5 : STD_LOGIC;
  signal u_temp30_carry_n_6 : STD_LOGIC;
  signal v0 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \v0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \v0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \v0_carry__0_n_0\ : STD_LOGIC;
  signal \v0_carry__0_n_1\ : STD_LOGIC;
  signal \v0_carry__0_n_2\ : STD_LOGIC;
  signal \v0_carry__0_n_3\ : STD_LOGIC;
  signal \v0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \v0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \v0_carry__1_n_0\ : STD_LOGIC;
  signal \v0_carry__1_n_1\ : STD_LOGIC;
  signal \v0_carry__1_n_2\ : STD_LOGIC;
  signal \v0_carry__1_n_3\ : STD_LOGIC;
  signal \v0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \v0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \v0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \v0_carry__2_n_3\ : STD_LOGIC;
  signal v0_carry_i_1_n_0 : STD_LOGIC;
  signal v0_carry_i_2_n_0 : STD_LOGIC;
  signal v0_carry_i_3_n_0 : STD_LOGIC;
  signal v0_carry_i_4_n_0 : STD_LOGIC;
  signal v0_carry_i_5_n_0 : STD_LOGIC;
  signal v0_carry_i_6_n_0 : STD_LOGIC;
  signal v0_carry_i_7_n_0 : STD_LOGIC;
  signal v0_carry_i_8_n_0 : STD_LOGIC;
  signal v0_carry_n_0 : STD_LOGIC;
  signal v0_carry_n_1 : STD_LOGIC;
  signal v0_carry_n_2 : STD_LOGIC;
  signal v0_carry_n_3 : STD_LOGIC;
  signal v_temp1 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal v_temp10 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \v_temp10__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_n_1\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_n_2\ : STD_LOGIC;
  signal \v_temp10__19_carry__0_n_3\ : STD_LOGIC;
  signal \v_temp10__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry__1_n_3\ : STD_LOGIC;
  signal \v_temp10__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry_n_0\ : STD_LOGIC;
  signal \v_temp10__19_carry_n_1\ : STD_LOGIC;
  signal \v_temp10__19_carry_n_2\ : STD_LOGIC;
  signal \v_temp10__19_carry_n_3\ : STD_LOGIC;
  signal \v_temp10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_1\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_2\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_3\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_4\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_5\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_6\ : STD_LOGIC;
  signal \v_temp10_carry__0_n_7\ : STD_LOGIC;
  signal \v_temp10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v_temp10_carry__1_n_2\ : STD_LOGIC;
  signal \v_temp10_carry__1_n_3\ : STD_LOGIC;
  signal \v_temp10_carry__1_n_5\ : STD_LOGIC;
  signal \v_temp10_carry__1_n_6\ : STD_LOGIC;
  signal \v_temp10_carry__1_n_7\ : STD_LOGIC;
  signal v_temp10_carry_i_1_n_0 : STD_LOGIC;
  signal v_temp10_carry_i_2_n_0 : STD_LOGIC;
  signal v_temp10_carry_i_3_n_0 : STD_LOGIC;
  signal v_temp10_carry_n_0 : STD_LOGIC;
  signal v_temp10_carry_n_1 : STD_LOGIC;
  signal v_temp10_carry_n_2 : STD_LOGIC;
  signal v_temp10_carry_n_3 : STD_LOGIC;
  signal v_temp10_carry_n_4 : STD_LOGIC;
  signal v_temp10_carry_n_5 : STD_LOGIC;
  signal v_temp10_carry_n_6 : STD_LOGIC;
  signal v_temp2 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal v_temp20 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \v_temp20__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_1\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_2\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_3\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_4\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_5\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_6\ : STD_LOGIC;
  signal \v_temp20__19_carry__0_n_7\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_n_1\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_n_3\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_n_6\ : STD_LOGIC;
  signal \v_temp20__19_carry__1_n_7\ : STD_LOGIC;
  signal \v_temp20__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_0\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_1\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_2\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_3\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_4\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_5\ : STD_LOGIC;
  signal \v_temp20__19_carry_n_6\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_n_1\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_n_2\ : STD_LOGIC;
  signal \v_temp20__41_carry__0_n_3\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_n_1\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_n_2\ : STD_LOGIC;
  signal \v_temp20__41_carry__1_n_3\ : STD_LOGIC;
  signal \v_temp20__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry_n_0\ : STD_LOGIC;
  signal \v_temp20__41_carry_n_1\ : STD_LOGIC;
  signal \v_temp20__41_carry_n_2\ : STD_LOGIC;
  signal \v_temp20__41_carry_n_3\ : STD_LOGIC;
  signal \v_temp20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_1\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_2\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_3\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_4\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_5\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_6\ : STD_LOGIC;
  signal \v_temp20_carry__0_n_7\ : STD_LOGIC;
  signal \v_temp20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v_temp20_carry__1_n_1\ : STD_LOGIC;
  signal \v_temp20_carry__1_n_3\ : STD_LOGIC;
  signal \v_temp20_carry__1_n_6\ : STD_LOGIC;
  signal \v_temp20_carry__1_n_7\ : STD_LOGIC;
  signal v_temp20_carry_i_1_n_0 : STD_LOGIC;
  signal v_temp20_carry_i_2_n_0 : STD_LOGIC;
  signal v_temp20_carry_i_3_n_0 : STD_LOGIC;
  signal v_temp20_carry_n_0 : STD_LOGIC;
  signal v_temp20_carry_n_1 : STD_LOGIC;
  signal v_temp20_carry_n_2 : STD_LOGIC;
  signal v_temp20_carry_n_3 : STD_LOGIC;
  signal v_temp20_carry_n_4 : STD_LOGIC;
  signal v_temp20_carry_n_5 : STD_LOGIC;
  signal v_temp20_carry_n_7 : STD_LOGIC;
  signal v_temp3 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal v_temp30 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \v_temp3[10]_i_2_n_0\ : STD_LOGIC;
  signal \v_temp3[10]_i_3_n_0\ : STD_LOGIC;
  signal \v_temp3[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_temp3[6]_i_3_n_0\ : STD_LOGIC;
  signal \v_temp3[6]_i_4_n_0\ : STD_LOGIC;
  signal \v_temp3_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_temp3_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \v_temp3_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \v_temp3_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \v_temp3_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_temp3_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \v_temp3_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \v_temp3_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal vsync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \y0__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_n_0\ : STD_LOGIC;
  signal \y0__1_carry__0_n_1\ : STD_LOGIC;
  signal \y0__1_carry__0_n_2\ : STD_LOGIC;
  signal \y0__1_carry__0_n_3\ : STD_LOGIC;
  signal \y0__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_n_0\ : STD_LOGIC;
  signal \y0__1_carry__1_n_1\ : STD_LOGIC;
  signal \y0__1_carry__1_n_2\ : STD_LOGIC;
  signal \y0__1_carry__1_n_3\ : STD_LOGIC;
  signal \y0__1_carry__1_n_4\ : STD_LOGIC;
  signal \y0__1_carry__1_n_5\ : STD_LOGIC;
  signal \y0__1_carry__1_n_6\ : STD_LOGIC;
  signal \y0__1_carry__1_n_7\ : STD_LOGIC;
  signal \y0__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \y0__1_carry__2_n_1\ : STD_LOGIC;
  signal \y0__1_carry__2_n_2\ : STD_LOGIC;
  signal \y0__1_carry__2_n_3\ : STD_LOGIC;
  signal \y0__1_carry__2_n_4\ : STD_LOGIC;
  signal \y0__1_carry__2_n_5\ : STD_LOGIC;
  signal \y0__1_carry__2_n_6\ : STD_LOGIC;
  signal \y0__1_carry__2_n_7\ : STD_LOGIC;
  signal \y0__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \y0__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \y0__1_carry_n_0\ : STD_LOGIC;
  signal \y0__1_carry_n_1\ : STD_LOGIC;
  signal \y0__1_carry_n_2\ : STD_LOGIC;
  signal \y0__1_carry_n_3\ : STD_LOGIC;
  signal \y[15]_i_1_n_0\ : STD_LOGIC;
  signal y_temp1 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal y_temp10 : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \y_temp1[8]_i_2_n_0\ : STD_LOGIC;
  signal \y_temp1[8]_i_3_n_0\ : STD_LOGIC;
  signal \y_temp1[8]_i_4_n_0\ : STD_LOGIC;
  signal \y_temp1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \y_temp1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \y_temp1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \y_temp1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \y_temp1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_temp1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \y_temp1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \y_temp1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal y_temp2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal y_temp20 : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \y_temp2[9]_i_2_n_0\ : STD_LOGIC;
  signal \y_temp2_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \y_temp2_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \y_temp2_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \y_temp2_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \y_temp2_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \y_temp2_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \y_temp2_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \y_temp2_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal y_temp3 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal y_temp30 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \y_temp30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__0_n_1\ : STD_LOGIC;
  signal \y_temp30_carry__0_n_2\ : STD_LOGIC;
  signal \y_temp30_carry__0_n_3\ : STD_LOGIC;
  signal \y_temp30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_temp30_carry__1_n_3\ : STD_LOGIC;
  signal y_temp30_carry_i_1_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_2_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_3_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_4_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_5_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_6_n_0 : STD_LOGIC;
  signal y_temp30_carry_i_7_n_0 : STD_LOGIC;
  signal y_temp30_carry_n_0 : STD_LOGIC;
  signal y_temp30_carry_n_1 : STD_LOGIC;
  signal y_temp30_carry_n_2 : STD_LOGIC;
  signal y_temp30_carry_n_3 : STD_LOGIC;
  signal NLW_u0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_u_temp10__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_u_temp10__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_u_temp10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_u_temp10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_u_temp10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_u_temp20__21_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_temp20__21_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_u_temp20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_u_temp20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_u_temp20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_u_temp30__25_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_u_temp30__25_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_u_temp30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_u_temp30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_v0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_temp10__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v_temp10__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_temp10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_temp10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_temp20__19_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_v_temp20__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v_temp20__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_temp20__41_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_temp20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v_temp20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_temp3_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y0__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y0__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y0__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_temp1_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_temp2_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_temp30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_temp30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of u0_carry : label is 35;
  attribute ADDER_THRESHOLD of \u0_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \u0_carry__0_i_1\ : label is "lutpair30";
  attribute HLUTNM of \u0_carry__0_i_2\ : label is "lutpair29";
  attribute HLUTNM of \u0_carry__0_i_3\ : label is "lutpair28";
  attribute HLUTNM of \u0_carry__0_i_4\ : label is "lutpair38";
  attribute HLUTNM of \u0_carry__0_i_5\ : label is "lutpair31";
  attribute HLUTNM of \u0_carry__0_i_6\ : label is "lutpair30";
  attribute HLUTNM of \u0_carry__0_i_7\ : label is "lutpair29";
  attribute HLUTNM of \u0_carry__0_i_8\ : label is "lutpair28";
  attribute ADDER_THRESHOLD of \u0_carry__1\ : label is 35;
  attribute HLUTNM of \u0_carry__1_i_1\ : label is "lutpair34";
  attribute HLUTNM of \u0_carry__1_i_2\ : label is "lutpair33";
  attribute HLUTNM of \u0_carry__1_i_3\ : label is "lutpair32";
  attribute HLUTNM of \u0_carry__1_i_4\ : label is "lutpair31";
  attribute HLUTNM of \u0_carry__1_i_5\ : label is "lutpair35";
  attribute HLUTNM of \u0_carry__1_i_6\ : label is "lutpair34";
  attribute HLUTNM of \u0_carry__1_i_7\ : label is "lutpair33";
  attribute HLUTNM of \u0_carry__1_i_8\ : label is "lutpair32";
  attribute ADDER_THRESHOLD of \u0_carry__2\ : label is 35;
  attribute HLUTNM of \u0_carry__2_i_2\ : label is "lutpair36";
  attribute HLUTNM of \u0_carry__2_i_3\ : label is "lutpair35";
  attribute HLUTNM of \u0_carry__2_i_7\ : label is "lutpair36";
  attribute HLUTNM of u0_carry_i_4 : label is "lutpair38";
  attribute ADDER_THRESHOLD of \u_temp10__19_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp10__19_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp10__19_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp20__21_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp20__21_carry__0\ : label is 35;
  attribute HLUTNM of \u_temp20__21_carry__0_i_1\ : label is "lutpair7";
  attribute HLUTNM of \u_temp20__21_carry__0_i_2\ : label is "lutpair6";
  attribute HLUTNM of \u_temp20__21_carry__0_i_5\ : label is "lutpair7";
  attribute HLUTNM of \u_temp20__21_carry__0_i_6\ : label is "lutpair6";
  attribute ADDER_THRESHOLD of \u_temp20__21_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp20__21_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp30__25_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp30__25_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \u_temp30__25_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of v0_carry : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__0\ : label is 35;
  attribute HLUTNM of \v0_carry__0_i_1\ : label is "lutpair12";
  attribute HLUTNM of \v0_carry__0_i_2\ : label is "lutpair11";
  attribute HLUTNM of \v0_carry__0_i_3\ : label is "lutpair10";
  attribute HLUTNM of \v0_carry__0_i_4\ : label is "lutpair9";
  attribute HLUTNM of \v0_carry__0_i_5\ : label is "lutpair13";
  attribute HLUTNM of \v0_carry__0_i_6\ : label is "lutpair12";
  attribute HLUTNM of \v0_carry__0_i_7\ : label is "lutpair11";
  attribute HLUTNM of \v0_carry__0_i_8\ : label is "lutpair10";
  attribute ADDER_THRESHOLD of \v0_carry__1\ : label is 35;
  attribute HLUTNM of \v0_carry__1_i_2\ : label is "lutpair15";
  attribute HLUTNM of \v0_carry__1_i_3\ : label is "lutpair14";
  attribute HLUTNM of \v0_carry__1_i_4\ : label is "lutpair13";
  attribute HLUTNM of \v0_carry__1_i_7\ : label is "lutpair15";
  attribute HLUTNM of \v0_carry__1_i_8\ : label is "lutpair14";
  attribute ADDER_THRESHOLD of \v0_carry__2\ : label is 35;
  attribute HLUTNM of v0_carry_i_1 : label is "lutpair8";
  attribute HLUTNM of v0_carry_i_2 : label is "lutpair37";
  attribute HLUTNM of v0_carry_i_5 : label is "lutpair9";
  attribute HLUTNM of v0_carry_i_6 : label is "lutpair8";
  attribute HLUTNM of v0_carry_i_7 : label is "lutpair37";
  attribute ADDER_THRESHOLD of \v_temp10__19_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \v_temp10__19_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v_temp10__19_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v_temp20__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \v_temp20__41_carry__0\ : label is 35;
  attribute HLUTNM of \v_temp20__41_carry__0_i_1\ : label is "lutpair2";
  attribute HLUTNM of \v_temp20__41_carry__0_i_2\ : label is "lutpair1";
  attribute HLUTNM of \v_temp20__41_carry__0_i_3\ : label is "lutpair0";
  attribute HLUTNM of \v_temp20__41_carry__0_i_5\ : label is "lutpair3";
  attribute HLUTNM of \v_temp20__41_carry__0_i_6\ : label is "lutpair2";
  attribute HLUTNM of \v_temp20__41_carry__0_i_7\ : label is "lutpair1";
  attribute HLUTNM of \v_temp20__41_carry__0_i_8\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \v_temp20__41_carry__1\ : label is 35;
  attribute HLUTNM of \v_temp20__41_carry__1_i_1\ : label is "lutpair5";
  attribute HLUTNM of \v_temp20__41_carry__1_i_2\ : label is "lutpair4";
  attribute HLUTNM of \v_temp20__41_carry__1_i_3\ : label is "lutpair3";
  attribute HLUTNM of \v_temp20__41_carry__1_i_6\ : label is "lutpair5";
  attribute HLUTNM of \v_temp20__41_carry__1_i_7\ : label is "lutpair4";
  attribute ADDER_THRESHOLD of \y0__1_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \y0__1_carry__0\ : label is 35;
  attribute HLUTNM of \y0__1_carry__0_i_1\ : label is "lutpair22";
  attribute HLUTNM of \y0__1_carry__0_i_2\ : label is "lutpair21";
  attribute HLUTNM of \y0__1_carry__0_i_3\ : label is "lutpair20";
  attribute HLUTNM of \y0__1_carry__0_i_4\ : label is "lutpair19";
  attribute HLUTNM of \y0__1_carry__0_i_5\ : label is "lutpair23";
  attribute HLUTNM of \y0__1_carry__0_i_6\ : label is "lutpair22";
  attribute HLUTNM of \y0__1_carry__0_i_7\ : label is "lutpair21";
  attribute HLUTNM of \y0__1_carry__0_i_8\ : label is "lutpair20";
  attribute ADDER_THRESHOLD of \y0__1_carry__1\ : label is 35;
  attribute HLUTNM of \y0__1_carry__1_i_1\ : label is "lutpair26";
  attribute HLUTNM of \y0__1_carry__1_i_2\ : label is "lutpair25";
  attribute HLUTNM of \y0__1_carry__1_i_3\ : label is "lutpair24";
  attribute HLUTNM of \y0__1_carry__1_i_4\ : label is "lutpair23";
  attribute HLUTNM of \y0__1_carry__1_i_6\ : label is "lutpair26";
  attribute HLUTNM of \y0__1_carry__1_i_7\ : label is "lutpair25";
  attribute HLUTNM of \y0__1_carry__1_i_8\ : label is "lutpair24";
  attribute ADDER_THRESHOLD of \y0__1_carry__2\ : label is 35;
  attribute HLUTNM of \y0__1_carry__2_i_1\ : label is "lutpair27";
  attribute HLUTNM of \y0__1_carry__2_i_6\ : label is "lutpair27";
  attribute HLUTNM of \y0__1_carry_i_1\ : label is "lutpair18";
  attribute HLUTNM of \y0__1_carry_i_2\ : label is "lutpair17";
  attribute HLUTNM of \y0__1_carry_i_3\ : label is "lutpair16";
  attribute HLUTNM of \y0__1_carry_i_4\ : label is "lutpair19";
  attribute HLUTNM of \y0__1_carry_i_5\ : label is "lutpair18";
  attribute HLUTNM of \y0__1_carry_i_6\ : label is "lutpair17";
  attribute HLUTNM of \y0__1_carry_i_7\ : label is "lutpair16";
  attribute ADDER_THRESHOLD of y_temp30_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_temp30_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_temp30_carry__1\ : label is 35;
begin
\de_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => de_i,
      Q => de(0),
      R => '0'
    );
\de_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => de(0),
      Q => de_o,
      R => '0'
    );
\hsync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => hsync_i,
      Q => hsync(0),
      R => '0'
    );
\hsync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => hsync(0),
      Q => hsync_o,
      R => '0'
    );
u0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u0_carry_n_0,
      CO(2) => u0_carry_n_1,
      CO(1) => u0_carry_n_2,
      CO(0) => u0_carry_n_3,
      CYINIT => '1',
      DI(3) => u0_carry_i_1_n_0,
      DI(2) => u0_carry_i_2_n_0,
      DI(1) => p_0_in(1),
      DI(0) => v_temp2(1),
      O(3 downto 0) => NLW_u0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u0_carry_i_4_n_0,
      S(2) => u0_carry_i_5_n_0,
      S(1) => u0_carry_i_6_n_0,
      S(0) => u0_carry_i_7_n_0
    );
\u0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => u0_carry_n_0,
      CO(3) => \u0_carry__0_n_0\,
      CO(2) => \u0_carry__0_n_1\,
      CO(1) => \u0_carry__0_n_2\,
      CO(0) => \u0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \u0_carry__0_i_1_n_0\,
      DI(2) => \u0_carry__0_i_2_n_0\,
      DI(1) => \u0_carry__0_i_3_n_0\,
      DI(0) => \u0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_u0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \u0_carry__0_i_5_n_0\,
      S(2) => \u0_carry__0_i_6_n_0\,
      S(1) => \u0_carry__0_i_7_n_0\,
      S(0) => \u0_carry__0_i_8_n_0\
    );
\u0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(6),
      I1 => u_temp3(6),
      I2 => u_temp1(6),
      O => \u0_carry__0_i_1_n_0\
    );
\u0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(5),
      I1 => u_temp3(5),
      I2 => u_temp1(5),
      O => \u0_carry__0_i_2_n_0\
    );
\u0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(4),
      I1 => u_temp3(4),
      I2 => u_temp1(4),
      O => \u0_carry__0_i_3_n_0\
    );
\u0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => u_temp2(3),
      I1 => u_temp1(3),
      O => \u0_carry__0_i_4_n_0\
    );
\u0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(7),
      I1 => u_temp3(7),
      I2 => u_temp1(7),
      I3 => \u0_carry__0_i_1_n_0\,
      O => \u0_carry__0_i_5_n_0\
    );
\u0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(6),
      I1 => u_temp3(6),
      I2 => u_temp1(6),
      I3 => \u0_carry__0_i_2_n_0\,
      O => \u0_carry__0_i_6_n_0\
    );
\u0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(5),
      I1 => u_temp3(5),
      I2 => u_temp1(5),
      I3 => \u0_carry__0_i_3_n_0\,
      O => \u0_carry__0_i_7_n_0\
    );
\u0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(4),
      I1 => u_temp3(4),
      I2 => u_temp1(4),
      I3 => \u0_carry__0_i_4_n_0\,
      O => \u0_carry__0_i_8_n_0\
    );
\u0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u0_carry__0_n_0\,
      CO(3) => \u0_carry__1_n_0\,
      CO(2) => \u0_carry__1_n_1\,
      CO(1) => \u0_carry__1_n_2\,
      CO(0) => \u0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \u0_carry__1_i_1_n_0\,
      DI(2) => \u0_carry__1_i_2_n_0\,
      DI(1) => \u0_carry__1_i_3_n_0\,
      DI(0) => \u0_carry__1_i_4_n_0\,
      O(3) => \u0_carry__1_n_4\,
      O(2) => \u0_carry__1_n_5\,
      O(1) => \u0_carry__1_n_6\,
      O(0) => \u0_carry__1_n_7\,
      S(3) => \u0_carry__1_i_5_n_0\,
      S(2) => \u0_carry__1_i_6_n_0\,
      S(1) => \u0_carry__1_i_7_n_0\,
      S(0) => \u0_carry__1_i_8_n_0\
    );
\u0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(10),
      I1 => u_temp3(10),
      I2 => u_temp1(10),
      O => \u0_carry__1_i_1_n_0\
    );
\u0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(9),
      I1 => u_temp3(9),
      I2 => u_temp1(9),
      O => \u0_carry__1_i_2_n_0\
    );
\u0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(8),
      I1 => u_temp3(8),
      I2 => u_temp1(8),
      O => \u0_carry__1_i_3_n_0\
    );
\u0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(7),
      I1 => u_temp3(7),
      I2 => u_temp1(7),
      O => \u0_carry__1_i_4_n_0\
    );
\u0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(11),
      I1 => u_temp3(11),
      I2 => u_temp1(11),
      I3 => \u0_carry__1_i_1_n_0\,
      O => \u0_carry__1_i_5_n_0\
    );
\u0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(10),
      I1 => u_temp3(10),
      I2 => u_temp1(10),
      I3 => \u0_carry__1_i_2_n_0\,
      O => \u0_carry__1_i_6_n_0\
    );
\u0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(9),
      I1 => u_temp3(9),
      I2 => u_temp1(9),
      I3 => \u0_carry__1_i_3_n_0\,
      O => \u0_carry__1_i_7_n_0\
    );
\u0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(8),
      I1 => u_temp3(8),
      I2 => u_temp1(8),
      I3 => \u0_carry__1_i_4_n_0\,
      O => \u0_carry__1_i_8_n_0\
    );
\u0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \u0_carry__1_n_0\,
      CO(3) => \NLW_u0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \u0_carry__2_n_1\,
      CO(1) => \u0_carry__2_n_2\,
      CO(0) => \u0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \u0_carry__2_i_1_n_0\,
      DI(1) => \u0_carry__2_i_2_n_0\,
      DI(0) => \u0_carry__2_i_3_n_0\,
      O(3) => \u0_carry__2_n_4\,
      O(2) => \u0_carry__2_n_5\,
      O(1) => \u0_carry__2_n_6\,
      O(0) => \u0_carry__2_n_7\,
      S(3) => \u0_carry__2_i_4_n_0\,
      S(2) => \u0_carry__2_i_5_n_0\,
      S(1) => \u0_carry__2_i_6_n_0\,
      S(0) => \u0_carry__2_i_7_n_0\
    );
\u0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(13),
      I1 => u_temp3(13),
      I2 => u_temp1(13),
      O => \u0_carry__2_i_1_n_0\
    );
\u0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(12),
      I1 => u_temp3(12),
      I2 => u_temp1(12),
      O => \u0_carry__2_i_2_n_0\
    );
\u0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => u_temp2(11),
      I1 => u_temp3(11),
      I2 => u_temp1(11),
      O => \u0_carry__2_i_3_n_0\
    );
\u0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => u_temp2(14),
      I1 => u_temp3(14),
      O => \u0_carry__2_i_4_n_0\
    );
\u0_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => u_temp1(13),
      I1 => u_temp3(13),
      I2 => u_temp2(13),
      I3 => u_temp2(14),
      I4 => u_temp3(14),
      O => \u0_carry__2_i_5_n_0\
    );
\u0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \u0_carry__2_i_2_n_0\,
      I1 => u_temp3(13),
      I2 => u_temp2(13),
      I3 => u_temp1(13),
      O => \u0_carry__2_i_6_n_0\
    );
\u0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => u_temp2(12),
      I1 => u_temp3(12),
      I2 => u_temp1(12),
      I3 => \u0_carry__2_i_3_n_0\,
      O => \u0_carry__2_i_7_n_0\
    );
u0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => u_temp1(2),
      I1 => u_temp2(2),
      O => u0_carry_i_1_n_0
    );
u0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_temp1(1),
      I1 => u_temp2(1),
      O => u0_carry_i_2_n_0
    );
u0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_temp2(1),
      O => p_0_in(1)
    );
u0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => u_temp2(3),
      I1 => u_temp1(3),
      I2 => u_temp1(2),
      I3 => u_temp2(2),
      O => u0_carry_i_4_n_0
    );
u0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => y_temp1(1),
      I1 => u_temp2(1),
      I2 => u_temp2(2),
      I3 => u_temp1(2),
      O => u0_carry_i_5_n_0
    );
u0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => v_temp2(1),
      I1 => u_temp2(1),
      I2 => y_temp1(1),
      O => u0_carry_i_6_n_0
    );
u0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_temp2(1),
      O => u0_carry_i_7_n_0
    );
\u_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__1_n_5\,
      Q => yuv_o(10)
    );
\u_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__1_n_4\,
      Q => yuv_o(11)
    );
\u_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__2_n_7\,
      Q => yuv_o(12)
    );
\u_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__2_n_6\,
      Q => yuv_o(13)
    );
\u_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__2_n_5\,
      Q => yuv_o(14)
    );
\u_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__2_n_4\,
      Q => yuv_o(15)
    );
\u_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__1_n_7\,
      Q => yuv_o(8)
    );
\u_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \u0_carry__1_n_6\,
      Q => yuv_o(9)
    );
\u_temp10__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u_temp10__19_carry_n_0\,
      CO(2) => \u_temp10__19_carry_n_1\,
      CO(1) => \u_temp10__19_carry_n_2\,
      CO(0) => \u_temp10__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_i(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => u_temp10(7 downto 4),
      S(3) => \u_temp10__19_carry_i_1_n_0\,
      S(2) => \u_temp10__19_carry_i_2_n_0\,
      S(1) => \u_temp10__19_carry_i_3_n_0\,
      S(0) => u_temp10_carry_n_4
    );
\u_temp10__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp10__19_carry_n_0\,
      CO(3) => \u_temp10__19_carry__0_n_0\,
      CO(2) => \u_temp10__19_carry__0_n_1\,
      CO(1) => \u_temp10__19_carry__0_n_2\,
      CO(0) => \u_temp10__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(22 downto 19),
      O(3 downto 0) => u_temp10(11 downto 8),
      S(3) => \u_temp10__19_carry__0_i_1_n_0\,
      S(2) => \u_temp10__19_carry__0_i_2_n_0\,
      S(1) => \u_temp10__19_carry__0_i_3_n_0\,
      S(0) => \u_temp10__19_carry__0_i_4_n_0\
    );
\u_temp10__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(22),
      I1 => \u_temp10_carry__1_n_5\,
      O => \u_temp10__19_carry__0_i_1_n_0\
    );
\u_temp10__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(21),
      I1 => \u_temp10_carry__1_n_6\,
      O => \u_temp10__19_carry__0_i_2_n_0\
    );
\u_temp10__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(20),
      I1 => \u_temp10_carry__1_n_7\,
      O => \u_temp10__19_carry__0_i_3_n_0\
    );
\u_temp10__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(19),
      I1 => \u_temp10_carry__0_n_4\,
      O => \u_temp10__19_carry__0_i_4_n_0\
    );
\u_temp10__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp10__19_carry__0_n_0\,
      CO(3 downto 1) => \NLW_u_temp10__19_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \u_temp10__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_i(23),
      O(3 downto 2) => \NLW_u_temp10__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => u_temp10(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \u_temp10_carry__1_n_5\,
      S(0) => \u_temp10__19_carry__1_i_1_n_0\
    );
\u_temp10__19_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(23),
      I1 => \u_temp10_carry__1_n_5\,
      O => \u_temp10__19_carry__1_i_1_n_0\
    );
\u_temp10__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(18),
      I1 => \u_temp10_carry__0_n_5\,
      O => \u_temp10__19_carry_i_1_n_0\
    );
\u_temp10__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(17),
      I1 => \u_temp10_carry__0_n_6\,
      O => \u_temp10__19_carry_i_2_n_0\
    );
\u_temp10__19_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(16),
      I1 => \u_temp10_carry__0_n_7\,
      O => \u_temp10__19_carry_i_3_n_0\
    );
u_temp10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u_temp10_carry_n_0,
      CO(2) => u_temp10_carry_n_1,
      CO(1) => u_temp10_carry_n_2,
      CO(0) => u_temp10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(17 downto 16),
      DI(1 downto 0) => B"01",
      O(3) => u_temp10_carry_n_4,
      O(2 downto 1) => u_temp10(3 downto 2),
      O(0) => NLW_u_temp10_carry_O_UNCONNECTED(0),
      S(3) => u_temp10_carry_i_1_n_0,
      S(2) => u_temp10_carry_i_2_n_0,
      S(1) => u_temp10_carry_i_3_n_0,
      S(0) => rgb_i(16)
    );
\u_temp10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => u_temp10_carry_n_0,
      CO(3) => \u_temp10_carry__0_n_0\,
      CO(2) => \u_temp10_carry__0_n_1\,
      CO(1) => \u_temp10_carry__0_n_2\,
      CO(0) => \u_temp10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(21 downto 18),
      O(3) => \u_temp10_carry__0_n_4\,
      O(2) => \u_temp10_carry__0_n_5\,
      O(1) => \u_temp10_carry__0_n_6\,
      O(0) => \u_temp10_carry__0_n_7\,
      S(3) => \u_temp10_carry__0_i_1_n_0\,
      S(2) => \u_temp10_carry__0_i_2_n_0\,
      S(1) => \u_temp10_carry__0_i_3_n_0\,
      S(0) => \u_temp10_carry__0_i_4_n_0\
    );
\u_temp10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(21),
      I1 => rgb_i(23),
      O => \u_temp10_carry__0_i_1_n_0\
    );
\u_temp10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(20),
      I1 => rgb_i(22),
      O => \u_temp10_carry__0_i_2_n_0\
    );
\u_temp10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(19),
      I1 => rgb_i(21),
      O => \u_temp10_carry__0_i_3_n_0\
    );
\u_temp10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(18),
      I1 => rgb_i(20),
      O => \u_temp10_carry__0_i_4_n_0\
    );
\u_temp10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_u_temp10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \u_temp10_carry__1_n_2\,
      CO(0) => \u_temp10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(23 downto 22),
      O(3) => \NLW_u_temp10_carry__1_O_UNCONNECTED\(3),
      O(2) => \u_temp10_carry__1_n_5\,
      O(1) => \u_temp10_carry__1_n_6\,
      O(0) => \u_temp10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \u_temp10_carry__1_i_1_n_0\,
      S(0) => \u_temp10_carry__1_i_2_n_0\
    );
\u_temp10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(23),
      O => \u_temp10_carry__1_i_1_n_0\
    );
\u_temp10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(22),
      O => \u_temp10_carry__1_i_2_n_0\
    );
u_temp10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(17),
      I1 => rgb_i(19),
      O => u_temp10_carry_i_1_n_0
    );
u_temp10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(16),
      I1 => rgb_i(18),
      O => u_temp10_carry_i_2_n_0
    );
u_temp10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(17),
      O => u_temp10_carry_i_3_n_0
    );
\u_temp1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(10),
      Q => u_temp1(10)
    );
\u_temp1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(11),
      Q => u_temp1(11)
    );
\u_temp1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(12),
      Q => u_temp1(12)
    );
\u_temp1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(13),
      Q => u_temp1(13)
    );
\u_temp1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(2),
      Q => u_temp1(2)
    );
\u_temp1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(3),
      Q => u_temp1(3)
    );
\u_temp1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(4),
      Q => u_temp1(4)
    );
\u_temp1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(5),
      Q => u_temp1(5)
    );
\u_temp1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(6),
      Q => u_temp1(6)
    );
\u_temp1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(7),
      Q => u_temp1(7)
    );
\u_temp1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(8),
      Q => u_temp1(8)
    );
\u_temp1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp10(9),
      Q => u_temp1(9)
    );
\u_temp20__21_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u_temp20__21_carry_n_0\,
      CO(2) => \u_temp20__21_carry_n_1\,
      CO(1) => \u_temp20__21_carry_n_2\,
      CO(0) => \u_temp20__21_carry_n_3\,
      CYINIT => '0',
      DI(3) => \u_temp20_carry__0_n_6\,
      DI(2) => \u_temp20_carry__0_n_7\,
      DI(1) => u_temp20_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => u_temp20(5 downto 2),
      S(3) => \u_temp20__21_carry_i_1_n_0\,
      S(2) => \u_temp20__21_carry_i_2_n_0\,
      S(1) => \u_temp20__21_carry_i_3_n_0\,
      S(0) => u_temp20_carry_n_5
    );
\u_temp20__21_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp20__21_carry_n_0\,
      CO(3) => \u_temp20__21_carry__0_n_0\,
      CO(2) => \u_temp20__21_carry__0_n_1\,
      CO(1) => \u_temp20__21_carry__0_n_2\,
      CO(0) => \u_temp20__21_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \u_temp20__21_carry__0_i_1_n_0\,
      DI(2) => \u_temp20__21_carry__0_i_2_n_0\,
      DI(1) => \u_temp20__21_carry__0_i_3_n_0\,
      DI(0) => rgb_i(8),
      O(3 downto 0) => u_temp20(9 downto 6),
      S(3) => \u_temp20__21_carry__0_i_4_n_0\,
      S(2) => \u_temp20__21_carry__0_i_5_n_0\,
      S(1) => \u_temp20__21_carry__0_i_6_n_0\,
      S(0) => \u_temp20__21_carry__0_i_7_n_0\
    );
\u_temp20__21_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_i(13),
      I1 => \u_temp20_carry__1_n_7\,
      I2 => rgb_i(10),
      O => \u_temp20__21_carry__0_i_1_n_0\
    );
\u_temp20__21_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_i(12),
      I1 => \u_temp20_carry__0_n_4\,
      I2 => rgb_i(9),
      O => \u_temp20__21_carry__0_i_2_n_0\
    );
\u_temp20__21_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_i(9),
      I1 => rgb_i(12),
      I2 => \u_temp20_carry__0_n_4\,
      O => \u_temp20__21_carry__0_i_3_n_0\
    );
\u_temp20__21_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_i(14),
      I1 => \u_temp20_carry__1_n_6\,
      I2 => rgb_i(11),
      I3 => \u_temp20__21_carry__0_i_1_n_0\,
      O => \u_temp20__21_carry__0_i_4_n_0\
    );
\u_temp20__21_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_i(13),
      I1 => \u_temp20_carry__1_n_7\,
      I2 => rgb_i(10),
      I3 => \u_temp20__21_carry__0_i_2_n_0\,
      O => \u_temp20__21_carry__0_i_5_n_0\
    );
\u_temp20__21_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => rgb_i(12),
      I1 => \u_temp20_carry__0_n_4\,
      I2 => rgb_i(9),
      I3 => \u_temp20_carry__0_n_5\,
      I4 => rgb_i(11),
      O => \u_temp20__21_carry__0_i_6_n_0\
    );
\u_temp20__21_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_i(11),
      I1 => \u_temp20_carry__0_n_5\,
      I2 => rgb_i(8),
      O => \u_temp20__21_carry__0_i_7_n_0\
    );
\u_temp20__21_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp20__21_carry__0_n_0\,
      CO(3) => \u_temp20__21_carry__1_n_0\,
      CO(2) => \u_temp20__21_carry__1_n_1\,
      CO(1) => \u_temp20__21_carry__1_n_2\,
      CO(0) => \u_temp20__21_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \u_temp20__21_carry__1_i_1_n_0\,
      DI(2) => \u_temp20__21_carry__1_i_2_n_0\,
      DI(1) => \u_temp20__21_carry__1_i_3_n_0\,
      DI(0) => \u_temp20__21_carry__1_i_4_n_0\,
      O(3 downto 0) => u_temp20(13 downto 10),
      S(3) => \u_temp20__21_carry__1_i_5_n_0\,
      S(2) => \u_temp20__21_carry__1_i_6_n_0\,
      S(1) => \u_temp20__21_carry__1_i_7_n_0\,
      S(0) => \u_temp20__21_carry__1_i_8_n_0\
    );
\u_temp20__21_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_i(14),
      I1 => \u_temp20_carry__1_n_1\,
      O => \u_temp20__21_carry__1_i_1_n_0\
    );
\u_temp20__21_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_i(13),
      I1 => \u_temp20_carry__1_n_1\,
      O => \u_temp20__21_carry__1_i_2_n_0\
    );
\u_temp20__21_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \u_temp20_carry__1_n_1\,
      I1 => rgb_i(15),
      I2 => rgb_i(12),
      O => \u_temp20__21_carry__1_i_3_n_0\
    );
\u_temp20__21_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_i(14),
      I1 => \u_temp20_carry__1_n_6\,
      I2 => rgb_i(11),
      O => \u_temp20__21_carry__1_i_4_n_0\
    );
\u_temp20__21_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_i(14),
      I1 => \u_temp20_carry__1_n_1\,
      I2 => rgb_i(15),
      O => \u_temp20__21_carry__1_i_5_n_0\
    );
\u_temp20__21_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_i(13),
      I1 => \u_temp20_carry__1_n_1\,
      I2 => rgb_i(14),
      O => \u_temp20__21_carry__1_i_6_n_0\
    );
\u_temp20__21_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => rgb_i(12),
      I1 => rgb_i(15),
      I2 => \u_temp20_carry__1_n_1\,
      I3 => rgb_i(13),
      O => \u_temp20__21_carry__1_i_7_n_0\
    );
\u_temp20__21_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \u_temp20__21_carry__1_i_4_n_0\,
      I1 => \u_temp20_carry__1_n_1\,
      I2 => rgb_i(15),
      I3 => rgb_i(12),
      O => \u_temp20__21_carry__1_i_8_n_0\
    );
\u_temp20__21_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp20__21_carry__1_n_0\,
      CO(3 downto 0) => \NLW_u_temp20__21_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_u_temp20__21_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => u_temp20(14),
      S(3 downto 1) => B"000",
      S(0) => \u_temp20__21_carry__2_i_1_n_0\
    );
\u_temp20__21_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(15),
      I1 => \u_temp20_carry__1_n_1\,
      O => \u_temp20__21_carry__2_i_1_n_0\
    );
\u_temp20__21_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u_temp20_carry__0_n_6\,
      I1 => rgb_i(10),
      O => \u_temp20__21_carry_i_1_n_0\
    );
\u_temp20__21_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u_temp20_carry__0_n_7\,
      I1 => rgb_i(9),
      O => \u_temp20__21_carry_i_2_n_0\
    );
\u_temp20__21_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u_temp20_carry_n_4,
      I1 => rgb_i(8),
      O => \u_temp20__21_carry_i_3_n_0\
    );
u_temp20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u_temp20_carry_n_0,
      CO(2) => u_temp20_carry_n_1,
      CO(1) => u_temp20_carry_n_2,
      CO(0) => u_temp20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => u_temp20_carry_n_4,
      O(2) => u_temp20_carry_n_5,
      O(1) => u_temp20(1),
      O(0) => NLW_u_temp20_carry_O_UNCONNECTED(0),
      S(3) => u_temp20_carry_i_1_n_0,
      S(2) => u_temp20_carry_i_2_n_0,
      S(1) => u_temp20_carry_i_3_n_0,
      S(0) => rgb_i(8)
    );
\u_temp20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => u_temp20_carry_n_0,
      CO(3) => \u_temp20_carry__0_n_0\,
      CO(2) => \u_temp20_carry__0_n_1\,
      CO(1) => \u_temp20_carry__0_n_2\,
      CO(0) => \u_temp20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(13 downto 10),
      O(3) => \u_temp20_carry__0_n_4\,
      O(2) => \u_temp20_carry__0_n_5\,
      O(1) => \u_temp20_carry__0_n_6\,
      O(0) => \u_temp20_carry__0_n_7\,
      S(3) => \u_temp20_carry__0_i_1_n_0\,
      S(2) => \u_temp20_carry__0_i_2_n_0\,
      S(1) => \u_temp20_carry__0_i_3_n_0\,
      S(0) => \u_temp20_carry__0_i_4_n_0\
    );
\u_temp20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(13),
      I1 => rgb_i(15),
      O => \u_temp20_carry__0_i_1_n_0\
    );
\u_temp20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(12),
      I1 => rgb_i(14),
      O => \u_temp20_carry__0_i_2_n_0\
    );
\u_temp20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(11),
      I1 => rgb_i(13),
      O => \u_temp20_carry__0_i_3_n_0\
    );
\u_temp20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(10),
      I1 => rgb_i(12),
      O => \u_temp20_carry__0_i_4_n_0\
    );
\u_temp20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp20_carry__0_n_0\,
      CO(3) => \NLW_u_temp20_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \u_temp20_carry__1_n_1\,
      CO(1) => \NLW_u_temp20_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \u_temp20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(15 downto 14),
      O(3 downto 2) => \NLW_u_temp20_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \u_temp20_carry__1_n_6\,
      O(0) => \u_temp20_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \u_temp20_carry__1_i_1_n_0\,
      S(0) => \u_temp20_carry__1_i_2_n_0\
    );
\u_temp20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(15),
      O => \u_temp20_carry__1_i_1_n_0\
    );
\u_temp20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(14),
      O => \u_temp20_carry__1_i_2_n_0\
    );
u_temp20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(9),
      I1 => rgb_i(11),
      O => u_temp20_carry_i_1_n_0
    );
u_temp20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(8),
      I1 => rgb_i(10),
      O => u_temp20_carry_i_2_n_0
    );
u_temp20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(9),
      O => u_temp20_carry_i_3_n_0
    );
\u_temp2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(10),
      Q => u_temp2(10)
    );
\u_temp2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(11),
      Q => u_temp2(11)
    );
\u_temp2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(12),
      Q => u_temp2(12)
    );
\u_temp2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(13),
      Q => u_temp2(13)
    );
\u_temp2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(14),
      Q => u_temp2(14)
    );
\u_temp2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(1),
      Q => u_temp2(1)
    );
\u_temp2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(2),
      Q => u_temp2(2)
    );
\u_temp2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(3),
      Q => u_temp2(3)
    );
\u_temp2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(4),
      Q => u_temp2(4)
    );
\u_temp2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(5),
      Q => u_temp2(5)
    );
\u_temp2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(6),
      Q => u_temp2(6)
    );
\u_temp2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(7),
      Q => u_temp2(7)
    );
\u_temp2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(8),
      Q => u_temp2(8)
    );
\u_temp2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp20(9),
      Q => u_temp2(9)
    );
\u_temp30__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u_temp30__25_carry_n_0\,
      CO(2) => \u_temp30__25_carry_n_1\,
      CO(1) => \u_temp30__25_carry_n_2\,
      CO(0) => \u_temp30__25_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_i(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => u_temp30(8 downto 5),
      S(3) => \u_temp30__25_carry_i_1_n_0\,
      S(2) => \u_temp30__25_carry_i_2_n_0\,
      S(1) => \u_temp30__25_carry_i_3_n_0\,
      S(0) => u_temp30_carry_n_6
    );
\u_temp30__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp30__25_carry_n_0\,
      CO(3) => \u_temp30__25_carry__0_n_0\,
      CO(2) => \u_temp30__25_carry__0_n_1\,
      CO(1) => \u_temp30__25_carry__0_n_2\,
      CO(0) => \u_temp30__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(6 downto 3),
      O(3 downto 0) => u_temp30(12 downto 9),
      S(3) => \u_temp30__25_carry__0_i_1_n_0\,
      S(2) => \u_temp30__25_carry__0_i_2_n_0\,
      S(1) => \u_temp30__25_carry__0_i_3_n_0\,
      S(0) => \u_temp30__25_carry__0_i_4_n_0\
    );
\u_temp30__25_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(6),
      I1 => \u_temp30_carry__1_n_7\,
      O => \u_temp30__25_carry__0_i_1_n_0\
    );
\u_temp30__25_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(5),
      I1 => \u_temp30_carry__0_n_4\,
      O => \u_temp30__25_carry__0_i_2_n_0\
    );
\u_temp30__25_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(4),
      I1 => \u_temp30_carry__0_n_5\,
      O => \u_temp30__25_carry__0_i_3_n_0\
    );
\u_temp30__25_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(3),
      I1 => \u_temp30_carry__0_n_6\,
      O => \u_temp30__25_carry__0_i_4_n_0\
    );
\u_temp30__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp30__25_carry__0_n_0\,
      CO(3 downto 1) => \NLW_u_temp30__25_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \u_temp30__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_i(7),
      O(3 downto 2) => \NLW_u_temp30__25_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => u_temp30(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \u_temp30_carry__1_n_5\,
      S(0) => \u_temp30__25_carry__1_i_1_n_0\
    );
\u_temp30__25_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(7),
      I1 => \u_temp30_carry__1_n_6\,
      O => \u_temp30__25_carry__1_i_1_n_0\
    );
\u_temp30__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(2),
      I1 => \u_temp30_carry__0_n_7\,
      O => \u_temp30__25_carry_i_1_n_0\
    );
\u_temp30__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(1),
      I1 => u_temp30_carry_n_4,
      O => \u_temp30__25_carry_i_2_n_0\
    );
\u_temp30__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(0),
      I1 => u_temp30_carry_n_5,
      O => \u_temp30__25_carry_i_3_n_0\
    );
u_temp30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u_temp30_carry_n_0,
      CO(2) => u_temp30_carry_n_1,
      CO(1) => u_temp30_carry_n_2,
      CO(0) => u_temp30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => u_temp30_carry_n_4,
      O(2) => u_temp30_carry_n_5,
      O(1) => u_temp30_carry_n_6,
      O(0) => u_temp30(4),
      S(3) => u_temp30_carry_i_1_n_0,
      S(2) => u_temp30_carry_i_2_n_0,
      S(1) => u_temp30_carry_i_3_n_0,
      S(0) => rgb_i(0)
    );
\u_temp30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => u_temp30_carry_n_0,
      CO(3) => \u_temp30_carry__0_n_0\,
      CO(2) => \u_temp30_carry__0_n_1\,
      CO(1) => \u_temp30_carry__0_n_2\,
      CO(0) => \u_temp30_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(5 downto 2),
      O(3) => \u_temp30_carry__0_n_4\,
      O(2) => \u_temp30_carry__0_n_5\,
      O(1) => \u_temp30_carry__0_n_6\,
      O(0) => \u_temp30_carry__0_n_7\,
      S(3) => \u_temp30_carry__0_i_1_n_0\,
      S(2) => \u_temp30_carry__0_i_2_n_0\,
      S(1) => \u_temp30_carry__0_i_3_n_0\,
      S(0) => \u_temp30_carry__0_i_4_n_0\
    );
\u_temp30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(7),
      I1 => rgb_i(5),
      O => \u_temp30_carry__0_i_1_n_0\
    );
\u_temp30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(6),
      I1 => rgb_i(4),
      O => \u_temp30_carry__0_i_2_n_0\
    );
\u_temp30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(5),
      I1 => rgb_i(3),
      O => \u_temp30_carry__0_i_3_n_0\
    );
\u_temp30_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(4),
      O => \u_temp30_carry__0_i_4_n_0\
    );
\u_temp30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u_temp30_carry__0_n_0\,
      CO(3 downto 2) => \NLW_u_temp30_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \u_temp30_carry__1_n_2\,
      CO(0) => \u_temp30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(7 downto 6),
      O(3) => \NLW_u_temp30_carry__1_O_UNCONNECTED\(3),
      O(2) => \u_temp30_carry__1_n_5\,
      O(1) => \u_temp30_carry__1_n_6\,
      O(0) => \u_temp30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \u_temp30_carry__1_i_1_n_0\,
      S(0) => \u_temp30_carry__1_i_2_n_0\
    );
\u_temp30_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(7),
      O => \u_temp30_carry__1_i_1_n_0\
    );
\u_temp30_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(6),
      O => \u_temp30_carry__1_i_2_n_0\
    );
u_temp30_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(1),
      I1 => rgb_i(3),
      O => u_temp30_carry_i_1_n_0
    );
u_temp30_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(0),
      I1 => rgb_i(2),
      O => u_temp30_carry_i_2_n_0
    );
u_temp30_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(1),
      O => u_temp30_carry_i_3_n_0
    );
\u_temp3_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(10),
      Q => u_temp3(10)
    );
\u_temp3_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(11),
      Q => u_temp3(11)
    );
\u_temp3_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(12),
      Q => u_temp3(12)
    );
\u_temp3_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(13),
      Q => u_temp3(13)
    );
\u_temp3_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(14),
      Q => u_temp3(14)
    );
\u_temp3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(4),
      Q => u_temp3(4)
    );
\u_temp3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(5),
      Q => u_temp3(5)
    );
\u_temp3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(6),
      Q => u_temp3(6)
    );
\u_temp3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(7),
      Q => u_temp3(7)
    );
\u_temp3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(8),
      Q => u_temp3(8)
    );
\u_temp3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => u_temp30(9),
      Q => u_temp3(9)
    );
v0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v0_carry_n_0,
      CO(2) => v0_carry_n_1,
      CO(1) => v0_carry_n_2,
      CO(0) => v0_carry_n_3,
      CYINIT => '1',
      DI(3) => v0_carry_i_1_n_0,
      DI(2) => v0_carry_i_2_n_0,
      DI(1) => v0_carry_i_3_n_0,
      DI(0) => v0_carry_i_4_n_0,
      O(3 downto 0) => NLW_v0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v0_carry_i_5_n_0,
      S(2) => v0_carry_i_6_n_0,
      S(1) => v0_carry_i_7_n_0,
      S(0) => v0_carry_i_8_n_0
    );
\v0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v0_carry_n_0,
      CO(3) => \v0_carry__0_n_0\,
      CO(2) => \v0_carry__0_n_1\,
      CO(1) => \v0_carry__0_n_2\,
      CO(0) => \v0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v0_carry__0_i_1_n_0\,
      DI(2) => \v0_carry__0_i_2_n_0\,
      DI(1) => \v0_carry__0_i_3_n_0\,
      DI(0) => \v0_carry__0_i_4_n_0\,
      O(3 downto 2) => v0(9 downto 8),
      O(1 downto 0) => \NLW_v0_carry__0_O_UNCONNECTED\(1 downto 0),
      S(3) => \v0_carry__0_i_5_n_0\,
      S(2) => \v0_carry__0_i_6_n_0\,
      S(1) => \v0_carry__0_i_7_n_0\,
      S(0) => \v0_carry__0_i_8_n_0\
    );
\v0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(8),
      I1 => v_temp3(8),
      I2 => v_temp1(8),
      O => \v0_carry__0_i_1_n_0\
    );
\v0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(7),
      I1 => v_temp3(7),
      I2 => v_temp1(7),
      O => \v0_carry__0_i_2_n_0\
    );
\v0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(6),
      I1 => v_temp3(6),
      I2 => v_temp1(6),
      O => \v0_carry__0_i_3_n_0\
    );
\v0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(5),
      I1 => v_temp3(5),
      I2 => v_temp1(5),
      O => \v0_carry__0_i_4_n_0\
    );
\v0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(9),
      I1 => v_temp3(9),
      I2 => v_temp1(9),
      I3 => \v0_carry__0_i_1_n_0\,
      O => \v0_carry__0_i_5_n_0\
    );
\v0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(8),
      I1 => v_temp3(8),
      I2 => v_temp1(8),
      I3 => \v0_carry__0_i_2_n_0\,
      O => \v0_carry__0_i_6_n_0\
    );
\v0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(7),
      I1 => v_temp3(7),
      I2 => v_temp1(7),
      I3 => \v0_carry__0_i_3_n_0\,
      O => \v0_carry__0_i_7_n_0\
    );
\v0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(6),
      I1 => v_temp3(6),
      I2 => v_temp1(6),
      I3 => \v0_carry__0_i_4_n_0\,
      O => \v0_carry__0_i_8_n_0\
    );
\v0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__0_n_0\,
      CO(3) => \v0_carry__1_n_0\,
      CO(2) => \v0_carry__1_n_1\,
      CO(1) => \v0_carry__1_n_2\,
      CO(0) => \v0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \v0_carry__1_i_1_n_0\,
      DI(2) => \v0_carry__1_i_2_n_0\,
      DI(1) => \v0_carry__1_i_3_n_0\,
      DI(0) => \v0_carry__1_i_4_n_0\,
      O(3 downto 0) => v0(13 downto 10),
      S(3) => \v0_carry__1_i_5_n_0\,
      S(2) => \v0_carry__1_i_6_n_0\,
      S(1) => \v0_carry__1_i_7_n_0\,
      S(0) => \v0_carry__1_i_8_n_0\
    );
\v0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(12),
      I1 => v_temp3(12),
      I2 => v_temp1(12),
      O => \v0_carry__1_i_1_n_0\
    );
\v0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(11),
      I1 => v_temp3(11),
      I2 => v_temp1(11),
      O => \v0_carry__1_i_2_n_0\
    );
\v0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(10),
      I1 => v_temp3(10),
      I2 => v_temp1(10),
      O => \v0_carry__1_i_3_n_0\
    );
\v0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(9),
      I1 => v_temp3(9),
      I2 => v_temp1(9),
      O => \v0_carry__1_i_4_n_0\
    );
\v0_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => v_temp1(12),
      I1 => v_temp3(12),
      I2 => v_temp2(12),
      I3 => v_temp2(13),
      I4 => v_temp1(13),
      O => \v0_carry__1_i_5_n_0\
    );
\v0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \v0_carry__1_i_2_n_0\,
      I1 => v_temp3(12),
      I2 => v_temp2(12),
      I3 => v_temp1(12),
      O => \v0_carry__1_i_6_n_0\
    );
\v0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(11),
      I1 => v_temp3(11),
      I2 => v_temp1(11),
      I3 => \v0_carry__1_i_3_n_0\,
      O => \v0_carry__1_i_7_n_0\
    );
\v0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(10),
      I1 => v_temp3(10),
      I2 => v_temp1(10),
      I3 => \v0_carry__1_i_4_n_0\,
      O => \v0_carry__1_i_8_n_0\
    );
\v0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_v0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \v0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \v0_carry__2_i_1_n_0\,
      O(3 downto 2) => \NLW_v0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => v0(15 downto 14),
      S(3 downto 2) => B"00",
      S(1) => \v0_carry__2_i_2_n_0\,
      S(0) => \v0_carry__2_i_3_n_0\
    );
\v0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => v_temp2(13),
      I1 => v_temp1(13),
      O => \v0_carry__2_i_1_n_0\
    );
\v0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_temp2(14),
      I1 => v_temp1(14),
      O => \v0_carry__2_i_2_n_0\
    );
\v0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => v_temp1(13),
      I1 => v_temp2(13),
      I2 => v_temp2(14),
      I3 => v_temp1(14),
      O => \v0_carry__2_i_3_n_0\
    );
v0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => v_temp2(4),
      I1 => v_temp3(4),
      I2 => v_temp1(4),
      O => v0_carry_i_1_n_0
    );
v0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_temp2(3),
      I1 => v_temp3(3),
      O => v0_carry_i_2_n_0
    );
v0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_temp3(1),
      I1 => v_temp2(2),
      O => v0_carry_i_3_n_0
    );
v0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_temp3(0),
      I1 => v_temp2(1),
      O => v0_carry_i_4_n_0
    );
v0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(5),
      I1 => v_temp3(5),
      I2 => v_temp1(5),
      I3 => v0_carry_i_1_n_0,
      O => v0_carry_i_5_n_0
    );
v0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => v_temp2(4),
      I1 => v_temp3(4),
      I2 => v_temp1(4),
      I3 => v0_carry_i_2_n_0,
      O => v0_carry_i_6_n_0
    );
v0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => v_temp2(3),
      I1 => v_temp3(3),
      I2 => y_temp3(1),
      I3 => v_temp2(2),
      O => v0_carry_i_7_n_0
    );
v0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => y_temp3(0),
      I1 => v_temp2(1),
      I2 => v_temp2(2),
      I3 => y_temp3(1),
      O => v0_carry_i_8_n_0
    );
\v_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(10),
      Q => yuv_o(2)
    );
\v_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(11),
      Q => yuv_o(3)
    );
\v_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(12),
      Q => yuv_o(4)
    );
\v_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(13),
      Q => yuv_o(5)
    );
\v_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(14),
      Q => yuv_o(6)
    );
\v_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(15),
      Q => yuv_o(7)
    );
\v_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(8),
      Q => yuv_o(0)
    );
\v_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v0(9),
      Q => yuv_o(1)
    );
\v_temp10__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_temp10__19_carry_n_0\,
      CO(2) => \v_temp10__19_carry_n_1\,
      CO(1) => \v_temp10__19_carry_n_2\,
      CO(0) => \v_temp10__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_i(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => v_temp10(8 downto 5),
      S(3) => \v_temp10__19_carry_i_1_n_0\,
      S(2) => \v_temp10__19_carry_i_2_n_0\,
      S(1) => \v_temp10__19_carry_i_3_n_0\,
      S(0) => v_temp10_carry_n_6
    );
\v_temp10__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp10__19_carry_n_0\,
      CO(3) => \v_temp10__19_carry__0_n_0\,
      CO(2) => \v_temp10__19_carry__0_n_1\,
      CO(1) => \v_temp10__19_carry__0_n_2\,
      CO(0) => \v_temp10__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(22 downto 19),
      O(3 downto 0) => v_temp10(12 downto 9),
      S(3) => \v_temp10__19_carry__0_i_1_n_0\,
      S(2) => \v_temp10__19_carry__0_i_2_n_0\,
      S(1) => \v_temp10__19_carry__0_i_3_n_0\,
      S(0) => \v_temp10__19_carry__0_i_4_n_0\
    );
\v_temp10__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(22),
      I1 => \v_temp10_carry__1_n_7\,
      O => \v_temp10__19_carry__0_i_1_n_0\
    );
\v_temp10__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(21),
      I1 => \v_temp10_carry__0_n_4\,
      O => \v_temp10__19_carry__0_i_2_n_0\
    );
\v_temp10__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(20),
      I1 => \v_temp10_carry__0_n_5\,
      O => \v_temp10__19_carry__0_i_3_n_0\
    );
\v_temp10__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(19),
      I1 => \v_temp10_carry__0_n_6\,
      O => \v_temp10__19_carry__0_i_4_n_0\
    );
\v_temp10__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp10__19_carry__0_n_0\,
      CO(3 downto 1) => \NLW_v_temp10__19_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \v_temp10__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_i(23),
      O(3 downto 2) => \NLW_v_temp10__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => v_temp10(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \v_temp10_carry__1_n_5\,
      S(0) => \v_temp10__19_carry__1_i_1_n_0\
    );
\v_temp10__19_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(23),
      I1 => \v_temp10_carry__1_n_6\,
      O => \v_temp10__19_carry__1_i_1_n_0\
    );
\v_temp10__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(18),
      I1 => \v_temp10_carry__0_n_7\,
      O => \v_temp10__19_carry_i_1_n_0\
    );
\v_temp10__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(17),
      I1 => v_temp10_carry_n_4,
      O => \v_temp10__19_carry_i_2_n_0\
    );
\v_temp10__19_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(16),
      I1 => v_temp10_carry_n_5,
      O => \v_temp10__19_carry_i_3_n_0\
    );
v_temp10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_temp10_carry_n_0,
      CO(2) => v_temp10_carry_n_1,
      CO(1) => v_temp10_carry_n_2,
      CO(0) => v_temp10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(17 downto 16),
      DI(1 downto 0) => B"01",
      O(3) => v_temp10_carry_n_4,
      O(2) => v_temp10_carry_n_5,
      O(1) => v_temp10_carry_n_6,
      O(0) => v_temp10(4),
      S(3) => v_temp10_carry_i_1_n_0,
      S(2) => v_temp10_carry_i_2_n_0,
      S(1) => v_temp10_carry_i_3_n_0,
      S(0) => rgb_i(16)
    );
\v_temp10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_temp10_carry_n_0,
      CO(3) => \v_temp10_carry__0_n_0\,
      CO(2) => \v_temp10_carry__0_n_1\,
      CO(1) => \v_temp10_carry__0_n_2\,
      CO(0) => \v_temp10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(21 downto 18),
      O(3) => \v_temp10_carry__0_n_4\,
      O(2) => \v_temp10_carry__0_n_5\,
      O(1) => \v_temp10_carry__0_n_6\,
      O(0) => \v_temp10_carry__0_n_7\,
      S(3) => \v_temp10_carry__0_i_1_n_0\,
      S(2) => \v_temp10_carry__0_i_2_n_0\,
      S(1) => \v_temp10_carry__0_i_3_n_0\,
      S(0) => \v_temp10_carry__0_i_4_n_0\
    );
\v_temp10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(21),
      I1 => rgb_i(23),
      O => \v_temp10_carry__0_i_1_n_0\
    );
\v_temp10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(20),
      I1 => rgb_i(22),
      O => \v_temp10_carry__0_i_2_n_0\
    );
\v_temp10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(19),
      I1 => rgb_i(21),
      O => \v_temp10_carry__0_i_3_n_0\
    );
\v_temp10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(18),
      I1 => rgb_i(20),
      O => \v_temp10_carry__0_i_4_n_0\
    );
\v_temp10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_v_temp10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_temp10_carry__1_n_2\,
      CO(0) => \v_temp10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(23 downto 22),
      O(3) => \NLW_v_temp10_carry__1_O_UNCONNECTED\(3),
      O(2) => \v_temp10_carry__1_n_5\,
      O(1) => \v_temp10_carry__1_n_6\,
      O(0) => \v_temp10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \v_temp10_carry__1_i_1_n_0\,
      S(0) => \v_temp10_carry__1_i_2_n_0\
    );
\v_temp10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(23),
      O => \v_temp10_carry__1_i_1_n_0\
    );
\v_temp10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(22),
      O => \v_temp10_carry__1_i_2_n_0\
    );
v_temp10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(17),
      I1 => rgb_i(19),
      O => v_temp10_carry_i_1_n_0
    );
v_temp10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(16),
      I1 => rgb_i(18),
      O => v_temp10_carry_i_2_n_0
    );
v_temp10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(17),
      O => v_temp10_carry_i_3_n_0
    );
\v_temp1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(10),
      Q => v_temp1(10)
    );
\v_temp1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(11),
      Q => v_temp1(11)
    );
\v_temp1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(12),
      Q => v_temp1(12)
    );
\v_temp1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(13),
      Q => v_temp1(13)
    );
\v_temp1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(14),
      Q => v_temp1(14)
    );
\v_temp1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(4),
      Q => v_temp1(4)
    );
\v_temp1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(5),
      Q => v_temp1(5)
    );
\v_temp1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(6),
      Q => v_temp1(6)
    );
\v_temp1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(7),
      Q => v_temp1(7)
    );
\v_temp1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(8),
      Q => v_temp1(8)
    );
\v_temp1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp10(9),
      Q => v_temp1(9)
    );
\v_temp20__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_temp20__19_carry_n_0\,
      CO(2) => \v_temp20__19_carry_n_1\,
      CO(1) => \v_temp20__19_carry_n_2\,
      CO(0) => \v_temp20__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => \v_temp20__19_carry_n_4\,
      O(2) => \v_temp20__19_carry_n_5\,
      O(1) => \v_temp20__19_carry_n_6\,
      O(0) => \NLW_v_temp20__19_carry_O_UNCONNECTED\(0),
      S(3) => \v_temp20__19_carry_i_1_n_0\,
      S(2) => \v_temp20__19_carry_i_2_n_0\,
      S(1) => \v_temp20__19_carry_i_3_n_0\,
      S(0) => rgb_i(8)
    );
\v_temp20__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp20__19_carry_n_0\,
      CO(3) => \v_temp20__19_carry__0_n_0\,
      CO(2) => \v_temp20__19_carry__0_n_1\,
      CO(1) => \v_temp20__19_carry__0_n_2\,
      CO(0) => \v_temp20__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(13 downto 10),
      O(3) => \v_temp20__19_carry__0_n_4\,
      O(2) => \v_temp20__19_carry__0_n_5\,
      O(1) => \v_temp20__19_carry__0_n_6\,
      O(0) => \v_temp20__19_carry__0_n_7\,
      S(3) => \v_temp20__19_carry__0_i_1_n_0\,
      S(2) => \v_temp20__19_carry__0_i_2_n_0\,
      S(1) => \v_temp20__19_carry__0_i_3_n_0\,
      S(0) => \v_temp20__19_carry__0_i_4_n_0\
    );
\v_temp20__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(13),
      I1 => rgb_i(15),
      O => \v_temp20__19_carry__0_i_1_n_0\
    );
\v_temp20__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(12),
      I1 => rgb_i(14),
      O => \v_temp20__19_carry__0_i_2_n_0\
    );
\v_temp20__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(11),
      I1 => rgb_i(13),
      O => \v_temp20__19_carry__0_i_3_n_0\
    );
\v_temp20__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(10),
      I1 => rgb_i(12),
      O => \v_temp20__19_carry__0_i_4_n_0\
    );
\v_temp20__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp20__19_carry__0_n_0\,
      CO(3) => \NLW_v_temp20__19_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \v_temp20__19_carry__1_n_1\,
      CO(1) => \NLW_v_temp20__19_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \v_temp20__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(15 downto 14),
      O(3 downto 2) => \NLW_v_temp20__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \v_temp20__19_carry__1_n_6\,
      O(0) => \v_temp20__19_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \v_temp20__19_carry__1_i_1_n_0\,
      S(0) => \v_temp20__19_carry__1_i_2_n_0\
    );
\v_temp20__19_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(15),
      O => \v_temp20__19_carry__1_i_1_n_0\
    );
\v_temp20__19_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(14),
      O => \v_temp20__19_carry__1_i_2_n_0\
    );
\v_temp20__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(9),
      I1 => rgb_i(11),
      O => \v_temp20__19_carry_i_1_n_0\
    );
\v_temp20__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(8),
      I1 => rgb_i(10),
      O => \v_temp20__19_carry_i_2_n_0\
    );
\v_temp20__19_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(9),
      O => \v_temp20__19_carry_i_3_n_0\
    );
\v_temp20__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_temp20__41_carry_n_0\,
      CO(2) => \v_temp20__41_carry_n_1\,
      CO(1) => \v_temp20__41_carry_n_2\,
      CO(0) => \v_temp20__41_carry_n_3\,
      CYINIT => '0',
      DI(3) => rgb_i(8),
      DI(2) => \v_temp20_carry__0_n_7\,
      DI(1) => v_temp20_carry_n_4,
      DI(0) => v_temp20_carry_n_5,
      O(3 downto 0) => v_temp20(6 downto 3),
      S(3) => \v_temp20__41_carry_i_1_n_0\,
      S(2) => \v_temp20__41_carry_i_2_n_0\,
      S(1) => \v_temp20__41_carry_i_3_n_0\,
      S(0) => \v_temp20__41_carry_i_4_n_0\
    );
\v_temp20__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp20__41_carry_n_0\,
      CO(3) => \v_temp20__41_carry__0_n_0\,
      CO(2) => \v_temp20__41_carry__0_n_1\,
      CO(1) => \v_temp20__41_carry__0_n_2\,
      CO(0) => \v_temp20__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v_temp20__41_carry__0_i_1_n_0\,
      DI(2) => \v_temp20__41_carry__0_i_2_n_0\,
      DI(1) => \v_temp20__41_carry__0_i_3_n_0\,
      DI(0) => \v_temp20__41_carry__0_i_4_n_0\,
      O(3 downto 0) => v_temp20(10 downto 7),
      S(3) => \v_temp20__41_carry__0_i_5_n_0\,
      S(2) => \v_temp20__41_carry__0_i_6_n_0\,
      S(1) => \v_temp20__41_carry__0_i_7_n_0\,
      S(0) => \v_temp20__41_carry__0_i_8_n_0\
    );
\v_temp20__41_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_5\,
      I1 => \v_temp20_carry__1_n_7\,
      I2 => rgb_i(11),
      O => \v_temp20__41_carry__0_i_1_n_0\
    );
\v_temp20__41_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_6\,
      I1 => \v_temp20_carry__0_n_4\,
      I2 => rgb_i(10),
      O => \v_temp20__41_carry__0_i_2_n_0\
    );
\v_temp20__41_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_7\,
      I1 => \v_temp20_carry__0_n_5\,
      I2 => rgb_i(9),
      O => \v_temp20__41_carry__0_i_3_n_0\
    );
\v_temp20__41_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_i(9),
      I1 => \v_temp20__19_carry__0_n_7\,
      I2 => \v_temp20_carry__0_n_5\,
      O => \v_temp20__41_carry__0_i_4_n_0\
    );
\v_temp20__41_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_4\,
      I1 => \v_temp20_carry__1_n_6\,
      I2 => rgb_i(12),
      I3 => \v_temp20__41_carry__0_i_1_n_0\,
      O => \v_temp20__41_carry__0_i_5_n_0\
    );
\v_temp20__41_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_5\,
      I1 => \v_temp20_carry__1_n_7\,
      I2 => rgb_i(11),
      I3 => \v_temp20__41_carry__0_i_2_n_0\,
      O => \v_temp20__41_carry__0_i_6_n_0\
    );
\v_temp20__41_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_6\,
      I1 => \v_temp20_carry__0_n_4\,
      I2 => rgb_i(10),
      I3 => \v_temp20__41_carry__0_i_3_n_0\,
      O => \v_temp20__41_carry__0_i_7_n_0\
    );
\v_temp20__41_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_7\,
      I1 => \v_temp20_carry__0_n_5\,
      I2 => rgb_i(9),
      I3 => \v_temp20_carry__0_n_6\,
      I4 => \v_temp20__19_carry_n_4\,
      O => \v_temp20__41_carry__0_i_8_n_0\
    );
\v_temp20__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp20__41_carry__0_n_0\,
      CO(3) => \NLW_v_temp20__41_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \v_temp20__41_carry__1_n_1\,
      CO(1) => \v_temp20__41_carry__1_n_2\,
      CO(0) => \v_temp20__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \v_temp20__41_carry__1_i_1_n_0\,
      DI(1) => \v_temp20__41_carry__1_i_2_n_0\,
      DI(0) => \v_temp20__41_carry__1_i_3_n_0\,
      O(3 downto 0) => v_temp20(14 downto 11),
      S(3) => \v_temp20__41_carry__1_i_4_n_0\,
      S(2) => \v_temp20__41_carry__1_i_5_n_0\,
      S(1) => \v_temp20__41_carry__1_i_6_n_0\,
      S(0) => \v_temp20__41_carry__1_i_7_n_0\
    );
\v_temp20__41_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \v_temp20_carry__1_n_1\,
      I1 => \v_temp20__19_carry__1_n_6\,
      I2 => rgb_i(14),
      O => \v_temp20__41_carry__1_i_1_n_0\
    );
\v_temp20__41_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \v_temp20_carry__1_n_1\,
      I1 => \v_temp20__19_carry__1_n_7\,
      I2 => rgb_i(13),
      O => \v_temp20__41_carry__1_i_2_n_0\
    );
\v_temp20__41_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \v_temp20__19_carry__0_n_4\,
      I1 => \v_temp20_carry__1_n_6\,
      I2 => rgb_i(12),
      O => \v_temp20__41_carry__1_i_3_n_0\
    );
\v_temp20__41_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => rgb_i(15),
      I1 => \v_temp20__19_carry__1_n_1\,
      I2 => \v_temp20_carry__1_n_1\,
      O => \v_temp20__41_carry__1_i_4_n_0\
    );
\v_temp20__41_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \v_temp20__41_carry__1_i_1_n_0\,
      I1 => \v_temp20_carry__1_n_1\,
      I2 => \v_temp20__19_carry__1_n_1\,
      I3 => rgb_i(15),
      O => \v_temp20__41_carry__1_i_5_n_0\
    );
\v_temp20__41_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \v_temp20_carry__1_n_1\,
      I1 => \v_temp20__19_carry__1_n_6\,
      I2 => rgb_i(14),
      I3 => \v_temp20__41_carry__1_i_2_n_0\,
      O => \v_temp20__41_carry__1_i_6_n_0\
    );
\v_temp20__41_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \v_temp20_carry__1_n_1\,
      I1 => \v_temp20__19_carry__1_n_7\,
      I2 => rgb_i(13),
      I3 => \v_temp20__41_carry__1_i_3_n_0\,
      O => \v_temp20__41_carry__1_i_7_n_0\
    );
\v_temp20__41_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \v_temp20__19_carry_n_4\,
      I1 => \v_temp20_carry__0_n_6\,
      I2 => rgb_i(8),
      O => \v_temp20__41_carry_i_1_n_0\
    );
\v_temp20__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_temp20_carry__0_n_7\,
      I1 => \v_temp20__19_carry_n_5\,
      O => \v_temp20__41_carry_i_2_n_0\
    );
\v_temp20__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_temp20_carry_n_4,
      I1 => \v_temp20__19_carry_n_6\,
      O => \v_temp20__41_carry_i_3_n_0\
    );
\v_temp20__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_temp20_carry_n_5,
      I1 => v_temp20_carry_n_7,
      O => \v_temp20__41_carry_i_4_n_0\
    );
v_temp20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_temp20_carry_n_0,
      CO(2) => v_temp20_carry_n_1,
      CO(1) => v_temp20_carry_n_2,
      CO(0) => v_temp20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_i(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => v_temp20_carry_n_4,
      O(2) => v_temp20_carry_n_5,
      O(1) => v_temp20(2),
      O(0) => v_temp20_carry_n_7,
      S(3) => v_temp20_carry_i_1_n_0,
      S(2) => v_temp20_carry_i_2_n_0,
      S(1) => v_temp20_carry_i_3_n_0,
      S(0) => rgb_i(8)
    );
\v_temp20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_temp20_carry_n_0,
      CO(3) => \v_temp20_carry__0_n_0\,
      CO(2) => \v_temp20_carry__0_n_1\,
      CO(1) => \v_temp20_carry__0_n_2\,
      CO(0) => \v_temp20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_i(13 downto 10),
      O(3) => \v_temp20_carry__0_n_4\,
      O(2) => \v_temp20_carry__0_n_5\,
      O(1) => \v_temp20_carry__0_n_6\,
      O(0) => \v_temp20_carry__0_n_7\,
      S(3) => \v_temp20_carry__0_i_1_n_0\,
      S(2) => \v_temp20_carry__0_i_2_n_0\,
      S(1) => \v_temp20_carry__0_i_3_n_0\,
      S(0) => \v_temp20_carry__0_i_4_n_0\
    );
\v_temp20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(13),
      I1 => rgb_i(15),
      O => \v_temp20_carry__0_i_1_n_0\
    );
\v_temp20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(12),
      I1 => rgb_i(14),
      O => \v_temp20_carry__0_i_2_n_0\
    );
\v_temp20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(11),
      I1 => rgb_i(13),
      O => \v_temp20_carry__0_i_3_n_0\
    );
\v_temp20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(10),
      I1 => rgb_i(12),
      O => \v_temp20_carry__0_i_4_n_0\
    );
\v_temp20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp20_carry__0_n_0\,
      CO(3) => \NLW_v_temp20_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \v_temp20_carry__1_n_1\,
      CO(1) => \NLW_v_temp20_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \v_temp20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(15 downto 14),
      O(3 downto 2) => \NLW_v_temp20_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \v_temp20_carry__1_n_6\,
      O(0) => \v_temp20_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \v_temp20_carry__1_i_1_n_0\,
      S(0) => \v_temp20_carry__1_i_2_n_0\
    );
\v_temp20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(15),
      O => \v_temp20_carry__1_i_1_n_0\
    );
\v_temp20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(14),
      O => \v_temp20_carry__1_i_2_n_0\
    );
v_temp20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(9),
      I1 => rgb_i(11),
      O => v_temp20_carry_i_1_n_0
    );
v_temp20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(8),
      I1 => rgb_i(10),
      O => v_temp20_carry_i_2_n_0
    );
v_temp20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_i(9),
      O => v_temp20_carry_i_3_n_0
    );
\v_temp2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(10),
      Q => v_temp2(10)
    );
\v_temp2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(11),
      Q => v_temp2(11)
    );
\v_temp2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(12),
      Q => v_temp2(12)
    );
\v_temp2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(13),
      Q => v_temp2(13)
    );
\v_temp2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(14),
      Q => v_temp2(14)
    );
\v_temp2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(8),
      Q => v_temp2(1)
    );
\v_temp2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(2),
      Q => v_temp2(2)
    );
\v_temp2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(3),
      Q => v_temp2(3)
    );
\v_temp2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(4),
      Q => v_temp2(4)
    );
\v_temp2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(5),
      Q => v_temp2(5)
    );
\v_temp2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(6),
      Q => v_temp2(6)
    );
\v_temp2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(7),
      Q => v_temp2(7)
    );
\v_temp2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(8),
      Q => v_temp2(8)
    );
\v_temp2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp20(9),
      Q => v_temp2(9)
    );
\v_temp3[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(4),
      I1 => rgb_i(7),
      O => \v_temp3[10]_i_2_n_0\
    );
\v_temp3[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(3),
      I1 => rgb_i(6),
      O => \v_temp3[10]_i_3_n_0\
    );
\v_temp3[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(5),
      O => \v_temp3[6]_i_2_n_0\
    );
\v_temp3[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(1),
      I1 => rgb_i(4),
      O => \v_temp3[6]_i_3_n_0\
    );
\v_temp3[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(0),
      I1 => rgb_i(3),
      O => \v_temp3[6]_i_4_n_0\
    );
\v_temp3_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(10),
      Q => v_temp3(10)
    );
\v_temp3_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp3_reg[6]_i_1_n_0\,
      CO(3) => \v_temp3_reg[10]_i_1_n_0\,
      CO(2) => \v_temp3_reg[10]_i_1_n_1\,
      CO(1) => \v_temp3_reg[10]_i_1_n_2\,
      CO(0) => \v_temp3_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_i(4 downto 3),
      O(3 downto 0) => v_temp30(10 downto 7),
      S(3 downto 2) => rgb_i(6 downto 5),
      S(1) => \v_temp3[10]_i_2_n_0\,
      S(0) => \v_temp3[10]_i_3_n_0\
    );
\v_temp3_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(11),
      Q => v_temp3(11)
    );
\v_temp3_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(12),
      Q => v_temp3(12)
    );
\v_temp3_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_temp3_reg[10]_i_1_n_0\,
      CO(3 downto 2) => \NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => v_temp30(12),
      CO(0) => \NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_v_temp3_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => v_temp30(11),
      S(3 downto 1) => B"001",
      S(0) => rgb_i(7)
    );
\v_temp3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(3),
      Q => v_temp3(3)
    );
\v_temp3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(4),
      Q => v_temp3(4)
    );
\v_temp3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(5),
      Q => v_temp3(5)
    );
\v_temp3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(6),
      Q => v_temp3(6)
    );
\v_temp3_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_temp3_reg[6]_i_1_n_0\,
      CO(2) => \v_temp3_reg[6]_i_1_n_1\,
      CO(1) => \v_temp3_reg[6]_i_1_n_2\,
      CO(0) => \v_temp3_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_i(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => v_temp30(6 downto 3),
      S(3) => \v_temp3[6]_i_2_n_0\,
      S(2) => \v_temp3[6]_i_3_n_0\,
      S(1) => \v_temp3[6]_i_4_n_0\,
      S(0) => rgb_i(2)
    );
\v_temp3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(7),
      Q => v_temp3(7)
    );
\v_temp3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(8),
      Q => v_temp3(8)
    );
\v_temp3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => v_temp30(9),
      Q => v_temp3(9)
    );
\vsync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => vsync_i,
      Q => vsync(0),
      R => '0'
    );
\vsync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => vsync(0),
      Q => vsync_o,
      R => '0'
    );
\y0__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y0__1_carry_n_0\,
      CO(2) => \y0__1_carry_n_1\,
      CO(1) => \y0__1_carry_n_2\,
      CO(0) => \y0__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y0__1_carry_i_1_n_0\,
      DI(2) => \y0__1_carry_i_2_n_0\,
      DI(1) => \y0__1_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_y0__1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \y0__1_carry_i_4_n_0\,
      S(2) => \y0__1_carry_i_5_n_0\,
      S(1) => \y0__1_carry_i_6_n_0\,
      S(0) => \y0__1_carry_i_7_n_0\
    );
\y0__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0__1_carry_n_0\,
      CO(3) => \y0__1_carry__0_n_0\,
      CO(2) => \y0__1_carry__0_n_1\,
      CO(1) => \y0__1_carry__0_n_2\,
      CO(0) => \y0__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y0__1_carry__0_i_1_n_0\,
      DI(2) => \y0__1_carry__0_i_2_n_0\,
      DI(1) => \y0__1_carry__0_i_3_n_0\,
      DI(0) => \y0__1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_y0__1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \y0__1_carry__0_i_5_n_0\,
      S(2) => \y0__1_carry__0_i_6_n_0\,
      S(1) => \y0__1_carry__0_i_7_n_0\,
      S(0) => \y0__1_carry__0_i_8_n_0\
    );
\y0__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(6),
      I1 => y_temp3(6),
      I2 => y_temp1(6),
      O => \y0__1_carry__0_i_1_n_0\
    );
\y0__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(5),
      I1 => y_temp3(5),
      I2 => y_temp1(5),
      O => \y0__1_carry__0_i_2_n_0\
    );
\y0__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(4),
      I1 => y_temp3(4),
      I2 => y_temp1(4),
      O => \y0__1_carry__0_i_3_n_0\
    );
\y0__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(3),
      I1 => y_temp3(3),
      I2 => y_temp1(3),
      O => \y0__1_carry__0_i_4_n_0\
    );
\y0__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(7),
      I1 => y_temp3(7),
      I2 => y_temp1(7),
      I3 => \y0__1_carry__0_i_1_n_0\,
      O => \y0__1_carry__0_i_5_n_0\
    );
\y0__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(6),
      I1 => y_temp3(6),
      I2 => y_temp1(6),
      I3 => \y0__1_carry__0_i_2_n_0\,
      O => \y0__1_carry__0_i_6_n_0\
    );
\y0__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(5),
      I1 => y_temp3(5),
      I2 => y_temp1(5),
      I3 => \y0__1_carry__0_i_3_n_0\,
      O => \y0__1_carry__0_i_7_n_0\
    );
\y0__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(4),
      I1 => y_temp3(4),
      I2 => y_temp1(4),
      I3 => \y0__1_carry__0_i_4_n_0\,
      O => \y0__1_carry__0_i_8_n_0\
    );
\y0__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0__1_carry__0_n_0\,
      CO(3) => \y0__1_carry__1_n_0\,
      CO(2) => \y0__1_carry__1_n_1\,
      CO(1) => \y0__1_carry__1_n_2\,
      CO(0) => \y0__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y0__1_carry__1_i_1_n_0\,
      DI(2) => \y0__1_carry__1_i_2_n_0\,
      DI(1) => \y0__1_carry__1_i_3_n_0\,
      DI(0) => \y0__1_carry__1_i_4_n_0\,
      O(3) => \y0__1_carry__1_n_4\,
      O(2) => \y0__1_carry__1_n_5\,
      O(1) => \y0__1_carry__1_n_6\,
      O(0) => \y0__1_carry__1_n_7\,
      S(3) => \y0__1_carry__1_i_5_n_0\,
      S(2) => \y0__1_carry__1_i_6_n_0\,
      S(1) => \y0__1_carry__1_i_7_n_0\,
      S(0) => \y0__1_carry__1_i_8_n_0\
    );
\y0__1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(10),
      I1 => y_temp3(10),
      I2 => y_temp1(10),
      O => \y0__1_carry__1_i_1_n_0\
    );
\y0__1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(9),
      I1 => y_temp3(9),
      I2 => y_temp1(9),
      O => \y0__1_carry__1_i_2_n_0\
    );
\y0__1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(8),
      I1 => y_temp3(8),
      I2 => y_temp1(8),
      O => \y0__1_carry__1_i_3_n_0\
    );
\y0__1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(7),
      I1 => y_temp3(7),
      I2 => y_temp1(7),
      O => \y0__1_carry__1_i_4_n_0\
    );
\y0__1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \y0__1_carry__1_i_1_n_0\,
      I1 => y_temp3(11),
      I2 => y_temp2(11),
      I3 => y_temp1(11),
      O => \y0__1_carry__1_i_5_n_0\
    );
\y0__1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(10),
      I1 => y_temp3(10),
      I2 => y_temp1(10),
      I3 => \y0__1_carry__1_i_2_n_0\,
      O => \y0__1_carry__1_i_6_n_0\
    );
\y0__1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(9),
      I1 => y_temp3(9),
      I2 => y_temp1(9),
      I3 => \y0__1_carry__1_i_3_n_0\,
      O => \y0__1_carry__1_i_7_n_0\
    );
\y0__1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(8),
      I1 => y_temp3(8),
      I2 => y_temp1(8),
      I3 => \y0__1_carry__1_i_4_n_0\,
      O => \y0__1_carry__1_i_8_n_0\
    );
\y0__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y0__1_carry__1_n_0\,
      CO(3) => \NLW_y0__1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \y0__1_carry__2_n_1\,
      CO(1) => \y0__1_carry__2_n_2\,
      CO(0) => \y0__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \y0__1_carry__2_i_1_n_0\,
      DI(1) => \y0__1_carry__2_i_2_n_0\,
      DI(0) => \y0__1_carry__2_i_3_n_0\,
      O(3) => \y0__1_carry__2_n_4\,
      O(2) => \y0__1_carry__2_n_5\,
      O(1) => \y0__1_carry__2_n_6\,
      O(0) => \y0__1_carry__2_n_7\,
      S(3) => \y0__1_carry__2_i_4_n_0\,
      S(2) => \y0__1_carry__2_i_5_n_0\,
      S(1) => \y0__1_carry__2_i_6_n_0\,
      S(0) => \y0__1_carry__2_i_7_n_0\
    );
\y0__1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => y_temp2(13),
      I1 => y_temp1(13),
      I2 => y_temp2(12),
      I3 => y_temp3(12),
      O => \y0__1_carry__2_i_1_n_0\
    );
\y0__1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => y_temp1(12),
      I1 => y_temp2(12),
      I2 => y_temp3(12),
      O => \y0__1_carry__2_i_2_n_0\
    );
\y0__1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => y_temp2(12),
      I1 => y_temp3(12),
      I2 => y_temp1(12),
      O => \y0__1_carry__2_i_3_n_0\
    );
\y0__1_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7878F0"
    )
        port map (
      I0 => y_temp2(13),
      I1 => y_temp1(13),
      I2 => y_temp2(15),
      I3 => y_temp2(14),
      I4 => y_temp1(14),
      O => \y0__1_carry__2_i_4_n_0\
    );
\y0__1_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \y0__1_carry__2_i_1_n_0\,
      I1 => y_temp1(14),
      I2 => y_temp2(14),
      I3 => y_temp2(13),
      I4 => y_temp1(13),
      O => \y0__1_carry__2_i_5_n_0\
    );
\y0__1_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699996"
    )
        port map (
      I0 => y_temp2(13),
      I1 => y_temp1(13),
      I2 => y_temp2(12),
      I3 => y_temp3(12),
      I4 => \y0__1_carry__2_i_2_n_0\,
      O => \y0__1_carry__2_i_6_n_0\
    );
\y0__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => y_temp1(12),
      I1 => y_temp3(12),
      I2 => y_temp2(12),
      I3 => y_temp1(11),
      I4 => y_temp3(11),
      I5 => y_temp2(11),
      O => \y0__1_carry__2_i_7_n_0\
    );
\y0__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(2),
      I1 => y_temp3(2),
      I2 => y_temp1(2),
      O => \y0__1_carry_i_1_n_0\
    );
\y0__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => y_temp2(1),
      I1 => y_temp3(1),
      I2 => y_temp1(1),
      O => \y0__1_carry_i_2_n_0\
    );
\y0__1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_temp2(1),
      I1 => y_temp3(0),
      O => \y0__1_carry_i_3_n_0\
    );
\y0__1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(3),
      I1 => y_temp3(3),
      I2 => y_temp1(3),
      I3 => \y0__1_carry_i_1_n_0\,
      O => \y0__1_carry_i_4_n_0\
    );
\y0__1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(2),
      I1 => y_temp3(2),
      I2 => y_temp1(2),
      I3 => \y0__1_carry_i_2_n_0\,
      O => \y0__1_carry_i_5_n_0\
    );
\y0__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => y_temp2(1),
      I1 => y_temp3(1),
      I2 => y_temp1(1),
      I3 => \y0__1_carry_i_3_n_0\,
      O => \y0__1_carry_i_6_n_0\
    );
\y0__1_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_temp2(1),
      I1 => y_temp3(0),
      O => \y0__1_carry_i_7_n_0\
    );
\y[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_i,
      O => \y[15]_i_1_n_0\
    );
\y_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__1_n_5\,
      Q => yuv_o(18)
    );
\y_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__1_n_4\,
      Q => yuv_o(19)
    );
\y_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__2_n_7\,
      Q => yuv_o(20)
    );
\y_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__2_n_6\,
      Q => yuv_o(21)
    );
\y_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__2_n_5\,
      Q => yuv_o(22)
    );
\y_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__2_n_4\,
      Q => yuv_o(23)
    );
\y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__1_n_7\,
      Q => yuv_o(16)
    );
\y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => \y0__1_carry__1_n_6\,
      Q => yuv_o(17)
    );
\y_temp1[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(18),
      I1 => rgb_i(23),
      O => \y_temp1[8]_i_2_n_0\
    );
\y_temp1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(17),
      I1 => rgb_i(22),
      O => \y_temp1[8]_i_3_n_0\
    );
\y_temp1[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(16),
      I1 => rgb_i(21),
      O => \y_temp1[8]_i_4_n_0\
    );
\y_temp1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(10),
      Q => y_temp1(10)
    );
\y_temp1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(11),
      Q => y_temp1(11)
    );
\y_temp1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(12),
      Q => y_temp1(12)
    );
\y_temp1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_temp1_reg[8]_i_1_n_0\,
      CO(3) => \y_temp1_reg[12]_i_1_n_0\,
      CO(2) => \y_temp1_reg[12]_i_1_n_1\,
      CO(1) => \y_temp1_reg[12]_i_1_n_2\,
      CO(0) => \y_temp1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_temp10(12 downto 9),
      S(3 downto 0) => rgb_i(22 downto 19)
    );
\y_temp1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(13),
      Q => y_temp1(13)
    );
\y_temp1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(14),
      Q => y_temp1(14)
    );
\y_temp1_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_temp1_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => y_temp10(14),
      CO(0) => \NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_temp1_reg[14]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => y_temp10(13),
      S(3 downto 1) => B"001",
      S(0) => rgb_i(23)
    );
\y_temp1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(16),
      Q => y_temp1(1)
    );
\y_temp1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(17),
      Q => y_temp1(2)
    );
\y_temp1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(18),
      Q => y_temp1(3)
    );
\y_temp1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(19),
      Q => y_temp1(4)
    );
\y_temp1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(5),
      Q => y_temp1(5)
    );
\y_temp1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(6),
      Q => y_temp1(6)
    );
\y_temp1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(7),
      Q => y_temp1(7)
    );
\y_temp1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(8),
      Q => y_temp1(8)
    );
\y_temp1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_temp1_reg[8]_i_1_n_0\,
      CO(2) => \y_temp1_reg[8]_i_1_n_1\,
      CO(1) => \y_temp1_reg[8]_i_1_n_2\,
      CO(0) => \y_temp1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_i(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => y_temp10(8 downto 5),
      S(3) => \y_temp1[8]_i_2_n_0\,
      S(2) => \y_temp1[8]_i_3_n_0\,
      S(1) => \y_temp1[8]_i_4_n_0\,
      S(0) => rgb_i(20)
    );
\y_temp1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp10(9),
      Q => y_temp1(9)
    );
\y_temp2[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(8),
      I1 => rgb_i(15),
      O => \y_temp2[9]_i_2_n_0\
    );
\y_temp2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(10),
      Q => y_temp2(10)
    );
\y_temp2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(11),
      Q => y_temp2(11)
    );
\y_temp2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(12),
      Q => y_temp2(12)
    );
\y_temp2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(13),
      Q => y_temp2(13)
    );
\y_temp2_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_temp2_reg[9]_i_1_n_0\,
      CO(3) => \y_temp2_reg[13]_i_1_n_0\,
      CO(2) => \y_temp2_reg[13]_i_1_n_1\,
      CO(1) => \y_temp2_reg[13]_i_1_n_2\,
      CO(0) => \y_temp2_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_temp20(13 downto 10),
      S(3 downto 0) => rgb_i(14 downto 11)
    );
\y_temp2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(14),
      Q => y_temp2(14)
    );
\y_temp2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(15),
      Q => y_temp2(15)
    );
\y_temp2_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_temp2_reg[13]_i_1_n_0\,
      CO(3 downto 2) => \NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => y_temp20(15),
      CO(0) => \NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_temp2_reg[15]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => y_temp20(14),
      S(3 downto 1) => B"001",
      S(0) => rgb_i(15)
    );
\y_temp2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(9),
      Q => y_temp2(1)
    );
\y_temp2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(10),
      Q => y_temp2(2)
    );
\y_temp2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(11),
      Q => y_temp2(3)
    );
\y_temp2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(12),
      Q => y_temp2(4)
    );
\y_temp2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(13),
      Q => y_temp2(5)
    );
\y_temp2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(6),
      Q => y_temp2(6)
    );
\y_temp2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(7),
      Q => y_temp2(7)
    );
\y_temp2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(8),
      Q => y_temp2(8)
    );
\y_temp2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp20(9),
      Q => y_temp2(9)
    );
\y_temp2_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_temp2_reg[9]_i_1_n_0\,
      CO(2) => \y_temp2_reg[9]_i_1_n_1\,
      CO(1) => \y_temp2_reg[9]_i_1_n_2\,
      CO(0) => \y_temp2_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => rgb_i(8),
      DI(0) => '0',
      O(3 downto 0) => y_temp20(9 downto 6),
      S(3 downto 2) => rgb_i(10 downto 9),
      S(1) => \y_temp2[9]_i_2_n_0\,
      S(0) => rgb_i(14)
    );
y_temp30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_temp30_carry_n_0,
      CO(2) => y_temp30_carry_n_1,
      CO(1) => y_temp30_carry_n_2,
      CO(0) => y_temp30_carry_n_3,
      CYINIT => '0',
      DI(3) => y_temp30_carry_i_1_n_0,
      DI(2) => y_temp30_carry_i_2_n_0,
      DI(1) => y_temp30_carry_i_3_n_0,
      DI(0) => '0',
      O(3 downto 0) => y_temp30(6 downto 3),
      S(3) => y_temp30_carry_i_4_n_0,
      S(2) => y_temp30_carry_i_5_n_0,
      S(1) => y_temp30_carry_i_6_n_0,
      S(0) => y_temp30_carry_i_7_n_0
    );
\y_temp30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_temp30_carry_n_0,
      CO(3) => \y_temp30_carry__0_n_0\,
      CO(2) => \y_temp30_carry__0_n_1\,
      CO(1) => \y_temp30_carry__0_n_2\,
      CO(0) => \y_temp30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y_temp30_carry__0_i_1_n_0\,
      DI(2) => \y_temp30_carry__0_i_2_n_0\,
      DI(1) => \y_temp30_carry__0_i_3_n_0\,
      DI(0) => \y_temp30_carry__0_i_4_n_0\,
      O(3 downto 0) => y_temp30(10 downto 7),
      S(3) => \y_temp30_carry__0_i_5_n_0\,
      S(2) => \y_temp30_carry__0_i_6_n_0\,
      S(1) => \y_temp30_carry__0_i_7_n_0\,
      S(0) => \y_temp30_carry__0_i_8_n_0\
    );
\y_temp30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_i(4),
      I1 => rgb_i(6),
      O => \y_temp30_carry__0_i_1_n_0\
    );
\y_temp30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_i(3),
      I1 => rgb_i(5),
      O => \y_temp30_carry__0_i_2_n_0\
    );
\y_temp30_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_i(4),
      I1 => rgb_i(7),
      I2 => rgb_i(2),
      O => \y_temp30_carry__0_i_3_n_0\
    );
\y_temp30_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_i(3),
      I1 => rgb_i(6),
      I2 => rgb_i(1),
      O => \y_temp30_carry__0_i_4_n_0\
    );
\y_temp30_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rgb_i(6),
      I1 => rgb_i(4),
      I2 => rgb_i(7),
      I3 => rgb_i(5),
      O => \y_temp30_carry__0_i_5_n_0\
    );
\y_temp30_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rgb_i(5),
      I1 => rgb_i(3),
      I2 => rgb_i(6),
      I3 => rgb_i(4),
      O => \y_temp30_carry__0_i_6_n_0\
    );
\y_temp30_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(7),
      I2 => rgb_i(4),
      I3 => rgb_i(5),
      I4 => rgb_i(3),
      O => \y_temp30_carry__0_i_7_n_0\
    );
\y_temp30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_i(1),
      I1 => rgb_i(6),
      I2 => rgb_i(3),
      I3 => rgb_i(4),
      I4 => rgb_i(7),
      I5 => rgb_i(2),
      O => \y_temp30_carry__0_i_8_n_0\
    );
\y_temp30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_temp30_carry__0_n_0\,
      CO(3 downto 1) => \NLW_y_temp30_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y_temp30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y_temp30_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_y_temp30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => y_temp30(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \y_temp30_carry__1_i_2_n_0\,
      S(0) => \y_temp30_carry__1_i_3_n_0\
    );
\y_temp30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_i(5),
      I1 => rgb_i(7),
      O => \y_temp30_carry__1_i_1_n_0\
    );
\y_temp30_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_i(6),
      I1 => rgb_i(7),
      O => \y_temp30_carry__1_i_2_n_0\
    );
\y_temp30_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => rgb_i(7),
      I1 => rgb_i(5),
      I2 => rgb_i(6),
      O => \y_temp30_carry__1_i_3_n_0\
    );
y_temp30_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(5),
      I2 => rgb_i(0),
      O => y_temp30_carry_i_1_n_0
    );
y_temp30_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(5),
      I2 => rgb_i(0),
      O => y_temp30_carry_i_2_n_0
    );
y_temp30_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb_i(3),
      I1 => rgb_i(0),
      O => y_temp30_carry_i_3_n_0
    );
y_temp30_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_i(0),
      I1 => rgb_i(5),
      I2 => rgb_i(2),
      I3 => rgb_i(3),
      I4 => rgb_i(6),
      I5 => rgb_i(1),
      O => y_temp30_carry_i_4_n_0
    );
y_temp30_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => rgb_i(2),
      I1 => rgb_i(5),
      I2 => rgb_i(0),
      I3 => rgb_i(1),
      I4 => rgb_i(4),
      O => y_temp30_carry_i_5_n_0
    );
y_temp30_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => rgb_i(0),
      I1 => rgb_i(3),
      I2 => rgb_i(4),
      I3 => rgb_i(1),
      O => y_temp30_carry_i_6_n_0
    );
y_temp30_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_i(0),
      I1 => rgb_i(3),
      O => y_temp30_carry_i_7_n_0
    );
\y_temp3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(0),
      Q => y_temp3(0)
    );
\y_temp3_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(10),
      Q => y_temp3(10)
    );
\y_temp3_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(11),
      Q => y_temp3(11)
    );
\y_temp3_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(12),
      Q => y_temp3(12)
    );
\y_temp3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(1),
      Q => y_temp3(1)
    );
\y_temp3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => rgb_i(2),
      Q => y_temp3(2)
    );
\y_temp3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(3),
      Q => y_temp3(3)
    );
\y_temp3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(4),
      Q => y_temp3(4)
    );
\y_temp3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(5),
      Q => y_temp3(5)
    );
\y_temp3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(6),
      Q => y_temp3(6)
    );
\y_temp3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(7),
      Q => y_temp3(7)
    );
\y_temp3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(8),
      Q => y_temp3(8)
    );
\y_temp3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \y[15]_i_1_n_0\,
      D => y_temp30(9),
      Q => y_temp3(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hevc_encoder_system_rgb2yuv_0_1 is
  port (
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC;
    hsync_i : in STD_LOGIC;
    vsync_i : in STD_LOGIC;
    de_i : in STD_LOGIC;
    rgb_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    yuv_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hsync_o : out STD_LOGIC;
    vsync_o : out STD_LOGIC;
    de_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hevc_encoder_system_rgb2yuv_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hevc_encoder_system_rgb2yuv_0_1 : entity is "hevc_encoder_system_rgb2yuv_0_1,rgb2yuv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hevc_encoder_system_rgb2yuv_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hevc_encoder_system_rgb2yuv_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hevc_encoder_system_rgb2yuv_0_1 : entity is "rgb2yuv,Vivado 2022.1";
end hevc_encoder_system_rgb2yuv_0_1;

architecture STRUCTURE of hevc_encoder_system_rgb2yuv_0_1 is
begin
inst: entity work.hevc_encoder_system_rgb2yuv_0_1_rgb2yuv
     port map (
      clk_i => clk_i,
      de_i => de_i,
      de_o => de_o,
      hsync_i => hsync_i,
      hsync_o => hsync_o,
      rgb_i(23 downto 0) => rgb_i(23 downto 0),
      rst_n_i => rst_n_i,
      vsync_i => vsync_i,
      vsync_o => vsync_o,
      yuv_o(23 downto 0) => yuv_o(23 downto 0)
    );
end STRUCTURE;
