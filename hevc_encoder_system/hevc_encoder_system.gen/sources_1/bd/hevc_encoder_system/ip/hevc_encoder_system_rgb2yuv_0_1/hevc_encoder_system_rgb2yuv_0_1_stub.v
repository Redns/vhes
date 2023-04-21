// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr 19 22:57:22 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/hevc_encoder_system_rgb2yuv_0_1_stub.v
// Design      : hevc_encoder_system_rgb2yuv_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rgb2yuv,Vivado 2022.1" *)
module hevc_encoder_system_rgb2yuv_0_1(clk_i, rst_n_i, hsync_i, vsync_i, de_i, rgb_i, yuv_o, 
  hsync_o, vsync_o, de_o)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_n_i,hsync_i,vsync_i,de_i,rgb_i[23:0],yuv_o[23:0],hsync_o,vsync_o,de_o" */;
  input clk_i;
  input rst_n_i;
  input hsync_i;
  input vsync_i;
  input de_i;
  input [23:0]rgb_i;
  output [23:0]yuv_o;
  output hsync_o;
  output vsync_o;
  output de_o;
endmodule
