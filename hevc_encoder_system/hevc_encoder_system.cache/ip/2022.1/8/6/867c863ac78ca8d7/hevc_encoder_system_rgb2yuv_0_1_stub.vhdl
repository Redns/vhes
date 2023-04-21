-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Apr 19 22:57:22 2023
-- Host        : JingDevice running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hevc_encoder_system_rgb2yuv_0_1_stub.vhdl
-- Design      : hevc_encoder_system_rgb2yuv_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_n_i,hsync_i,vsync_i,de_i,rgb_i[23:0],yuv_o[23:0],hsync_o,vsync_o,de_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb2yuv,Vivado 2022.1";
begin
end;
