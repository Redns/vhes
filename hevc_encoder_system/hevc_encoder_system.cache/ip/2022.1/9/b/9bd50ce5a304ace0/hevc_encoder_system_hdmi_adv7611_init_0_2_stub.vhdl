-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Apr 19 22:57:25 2023
-- Host        : JingDevice running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hevc_encoder_system_hdmi_adv7611_init_0_2_stub.vhdl
-- Design      : hevc_encoder_system_hdmi_adv7611_init_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_n_i : in STD_LOGIC;
    adv_sda : inout STD_LOGIC;
    adv_scl : out STD_LOGIC;
    adv_rst_o : out STD_LOGIC;
    adv_pen_o : out STD_LOGIC;
    adv_cfg_done_o : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_n_i,adv_sda,adv_scl,adv_rst_o,adv_pen_o,adv_cfg_done_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi2rgb,Vivado 2022.1";
begin
end;
