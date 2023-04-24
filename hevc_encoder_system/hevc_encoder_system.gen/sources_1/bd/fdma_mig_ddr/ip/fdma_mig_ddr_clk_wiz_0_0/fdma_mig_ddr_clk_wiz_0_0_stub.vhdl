-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Apr 24 17:44:09 2023
-- Host        : JingDevice running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0_stub.vhdl
-- Design      : fdma_mig_ddr_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fdma_mig_ddr_clk_wiz_0_0 is
  Port ( 
    clk_200M : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end fdma_mig_ddr_clk_wiz_0_0;

architecture stub of fdma_mig_ddr_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_200M,resetn,locked,clk_in1";
begin
end;
