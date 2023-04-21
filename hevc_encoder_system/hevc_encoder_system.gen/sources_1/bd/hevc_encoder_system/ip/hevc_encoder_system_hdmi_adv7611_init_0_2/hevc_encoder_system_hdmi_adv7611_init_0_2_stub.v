// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr 19 22:57:26 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/hevc_encoder_system_hdmi_adv7611_init_0_2_stub.v
// Design      : hevc_encoder_system_hdmi_adv7611_init_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi2rgb,Vivado 2022.1" *)
module hevc_encoder_system_hdmi_adv7611_init_0_2(clk_i, rst_n_i, adv_sda, adv_scl, adv_rst_o, 
  adv_pen_o, adv_cfg_done_o)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_n_i,adv_sda,adv_scl,adv_rst_o,adv_pen_o,adv_cfg_done_o" */;
  input clk_i;
  input rst_n_i;
  inout adv_sda;
  output adv_scl;
  output adv_rst_o;
  output adv_pen_o;
  output adv_cfg_done_o;
endmodule
