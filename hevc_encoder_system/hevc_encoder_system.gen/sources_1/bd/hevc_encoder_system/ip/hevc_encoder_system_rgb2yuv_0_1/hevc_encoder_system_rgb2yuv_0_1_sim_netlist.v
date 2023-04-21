// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr 19 22:57:22 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/hevc_encoder_system_rgb2yuv_0_1_sim_netlist.v
// Design      : hevc_encoder_system_rgb2yuv_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hevc_encoder_system_rgb2yuv_0_1,rgb2yuv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rgb2yuv,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module hevc_encoder_system_rgb2yuv_0_1
   (clk_i,
    rst_n_i,
    hsync_i,
    vsync_i,
    de_i,
    rgb_i,
    yuv_o,
    hsync_o,
    vsync_o,
    de_o);
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

  wire clk_i;
  wire de_i;
  wire de_o;
  wire hsync_i;
  wire hsync_o;
  wire [23:0]rgb_i;
  wire rst_n_i;
  wire vsync_i;
  wire vsync_o;
  wire [23:0]yuv_o;

  hevc_encoder_system_rgb2yuv_0_1_rgb2yuv inst
       (.clk_i(clk_i),
        .de_i(de_i),
        .de_o(de_o),
        .hsync_i(hsync_i),
        .hsync_o(hsync_o),
        .rgb_i(rgb_i),
        .rst_n_i(rst_n_i),
        .vsync_i(vsync_i),
        .vsync_o(vsync_o),
        .yuv_o(yuv_o));
endmodule

(* ORIG_REF_NAME = "rgb2yuv" *) 
module hevc_encoder_system_rgb2yuv_0_1_rgb2yuv
   (yuv_o,
    hsync_o,
    vsync_o,
    de_o,
    rgb_i,
    clk_i,
    hsync_i,
    vsync_i,
    de_i,
    rst_n_i);
  output [23:0]yuv_o;
  output hsync_o;
  output vsync_o;
  output de_o;
  input [23:0]rgb_i;
  input clk_i;
  input hsync_i;
  input vsync_i;
  input de_i;
  input rst_n_i;

  wire clk_i;
  wire [0:0]de;
  wire de_i;
  wire de_o;
  wire [0:0]hsync;
  wire hsync_i;
  wire hsync_o;
  wire [1:1]p_0_in;
  wire [23:0]rgb_i;
  wire rst_n_i;
  wire u0_carry__0_i_1_n_0;
  wire u0_carry__0_i_2_n_0;
  wire u0_carry__0_i_3_n_0;
  wire u0_carry__0_i_4_n_0;
  wire u0_carry__0_i_5_n_0;
  wire u0_carry__0_i_6_n_0;
  wire u0_carry__0_i_7_n_0;
  wire u0_carry__0_i_8_n_0;
  wire u0_carry__0_n_0;
  wire u0_carry__0_n_1;
  wire u0_carry__0_n_2;
  wire u0_carry__0_n_3;
  wire u0_carry__1_i_1_n_0;
  wire u0_carry__1_i_2_n_0;
  wire u0_carry__1_i_3_n_0;
  wire u0_carry__1_i_4_n_0;
  wire u0_carry__1_i_5_n_0;
  wire u0_carry__1_i_6_n_0;
  wire u0_carry__1_i_7_n_0;
  wire u0_carry__1_i_8_n_0;
  wire u0_carry__1_n_0;
  wire u0_carry__1_n_1;
  wire u0_carry__1_n_2;
  wire u0_carry__1_n_3;
  wire u0_carry__1_n_4;
  wire u0_carry__1_n_5;
  wire u0_carry__1_n_6;
  wire u0_carry__1_n_7;
  wire u0_carry__2_i_1_n_0;
  wire u0_carry__2_i_2_n_0;
  wire u0_carry__2_i_3_n_0;
  wire u0_carry__2_i_4_n_0;
  wire u0_carry__2_i_5_n_0;
  wire u0_carry__2_i_6_n_0;
  wire u0_carry__2_i_7_n_0;
  wire u0_carry__2_n_1;
  wire u0_carry__2_n_2;
  wire u0_carry__2_n_3;
  wire u0_carry__2_n_4;
  wire u0_carry__2_n_5;
  wire u0_carry__2_n_6;
  wire u0_carry__2_n_7;
  wire u0_carry_i_1_n_0;
  wire u0_carry_i_2_n_0;
  wire u0_carry_i_4_n_0;
  wire u0_carry_i_5_n_0;
  wire u0_carry_i_6_n_0;
  wire u0_carry_i_7_n_0;
  wire u0_carry_n_0;
  wire u0_carry_n_1;
  wire u0_carry_n_2;
  wire u0_carry_n_3;
  wire [13:2]u_temp1;
  wire [13:2]u_temp10;
  wire u_temp10__19_carry__0_i_1_n_0;
  wire u_temp10__19_carry__0_i_2_n_0;
  wire u_temp10__19_carry__0_i_3_n_0;
  wire u_temp10__19_carry__0_i_4_n_0;
  wire u_temp10__19_carry__0_n_0;
  wire u_temp10__19_carry__0_n_1;
  wire u_temp10__19_carry__0_n_2;
  wire u_temp10__19_carry__0_n_3;
  wire u_temp10__19_carry__1_i_1_n_0;
  wire u_temp10__19_carry__1_n_3;
  wire u_temp10__19_carry_i_1_n_0;
  wire u_temp10__19_carry_i_2_n_0;
  wire u_temp10__19_carry_i_3_n_0;
  wire u_temp10__19_carry_n_0;
  wire u_temp10__19_carry_n_1;
  wire u_temp10__19_carry_n_2;
  wire u_temp10__19_carry_n_3;
  wire u_temp10_carry__0_i_1_n_0;
  wire u_temp10_carry__0_i_2_n_0;
  wire u_temp10_carry__0_i_3_n_0;
  wire u_temp10_carry__0_i_4_n_0;
  wire u_temp10_carry__0_n_0;
  wire u_temp10_carry__0_n_1;
  wire u_temp10_carry__0_n_2;
  wire u_temp10_carry__0_n_3;
  wire u_temp10_carry__0_n_4;
  wire u_temp10_carry__0_n_5;
  wire u_temp10_carry__0_n_6;
  wire u_temp10_carry__0_n_7;
  wire u_temp10_carry__1_i_1_n_0;
  wire u_temp10_carry__1_i_2_n_0;
  wire u_temp10_carry__1_n_2;
  wire u_temp10_carry__1_n_3;
  wire u_temp10_carry__1_n_5;
  wire u_temp10_carry__1_n_6;
  wire u_temp10_carry__1_n_7;
  wire u_temp10_carry_i_1_n_0;
  wire u_temp10_carry_i_2_n_0;
  wire u_temp10_carry_i_3_n_0;
  wire u_temp10_carry_n_0;
  wire u_temp10_carry_n_1;
  wire u_temp10_carry_n_2;
  wire u_temp10_carry_n_3;
  wire u_temp10_carry_n_4;
  wire [14:1]u_temp2;
  wire [14:1]u_temp20;
  wire u_temp20__21_carry__0_i_1_n_0;
  wire u_temp20__21_carry__0_i_2_n_0;
  wire u_temp20__21_carry__0_i_3_n_0;
  wire u_temp20__21_carry__0_i_4_n_0;
  wire u_temp20__21_carry__0_i_5_n_0;
  wire u_temp20__21_carry__0_i_6_n_0;
  wire u_temp20__21_carry__0_i_7_n_0;
  wire u_temp20__21_carry__0_n_0;
  wire u_temp20__21_carry__0_n_1;
  wire u_temp20__21_carry__0_n_2;
  wire u_temp20__21_carry__0_n_3;
  wire u_temp20__21_carry__1_i_1_n_0;
  wire u_temp20__21_carry__1_i_2_n_0;
  wire u_temp20__21_carry__1_i_3_n_0;
  wire u_temp20__21_carry__1_i_4_n_0;
  wire u_temp20__21_carry__1_i_5_n_0;
  wire u_temp20__21_carry__1_i_6_n_0;
  wire u_temp20__21_carry__1_i_7_n_0;
  wire u_temp20__21_carry__1_i_8_n_0;
  wire u_temp20__21_carry__1_n_0;
  wire u_temp20__21_carry__1_n_1;
  wire u_temp20__21_carry__1_n_2;
  wire u_temp20__21_carry__1_n_3;
  wire u_temp20__21_carry__2_i_1_n_0;
  wire u_temp20__21_carry_i_1_n_0;
  wire u_temp20__21_carry_i_2_n_0;
  wire u_temp20__21_carry_i_3_n_0;
  wire u_temp20__21_carry_n_0;
  wire u_temp20__21_carry_n_1;
  wire u_temp20__21_carry_n_2;
  wire u_temp20__21_carry_n_3;
  wire u_temp20_carry__0_i_1_n_0;
  wire u_temp20_carry__0_i_2_n_0;
  wire u_temp20_carry__0_i_3_n_0;
  wire u_temp20_carry__0_i_4_n_0;
  wire u_temp20_carry__0_n_0;
  wire u_temp20_carry__0_n_1;
  wire u_temp20_carry__0_n_2;
  wire u_temp20_carry__0_n_3;
  wire u_temp20_carry__0_n_4;
  wire u_temp20_carry__0_n_5;
  wire u_temp20_carry__0_n_6;
  wire u_temp20_carry__0_n_7;
  wire u_temp20_carry__1_i_1_n_0;
  wire u_temp20_carry__1_i_2_n_0;
  wire u_temp20_carry__1_n_1;
  wire u_temp20_carry__1_n_3;
  wire u_temp20_carry__1_n_6;
  wire u_temp20_carry__1_n_7;
  wire u_temp20_carry_i_1_n_0;
  wire u_temp20_carry_i_2_n_0;
  wire u_temp20_carry_i_3_n_0;
  wire u_temp20_carry_n_0;
  wire u_temp20_carry_n_1;
  wire u_temp20_carry_n_2;
  wire u_temp20_carry_n_3;
  wire u_temp20_carry_n_4;
  wire u_temp20_carry_n_5;
  wire [14:4]u_temp3;
  wire [14:4]u_temp30;
  wire u_temp30__25_carry__0_i_1_n_0;
  wire u_temp30__25_carry__0_i_2_n_0;
  wire u_temp30__25_carry__0_i_3_n_0;
  wire u_temp30__25_carry__0_i_4_n_0;
  wire u_temp30__25_carry__0_n_0;
  wire u_temp30__25_carry__0_n_1;
  wire u_temp30__25_carry__0_n_2;
  wire u_temp30__25_carry__0_n_3;
  wire u_temp30__25_carry__1_i_1_n_0;
  wire u_temp30__25_carry__1_n_3;
  wire u_temp30__25_carry_i_1_n_0;
  wire u_temp30__25_carry_i_2_n_0;
  wire u_temp30__25_carry_i_3_n_0;
  wire u_temp30__25_carry_n_0;
  wire u_temp30__25_carry_n_1;
  wire u_temp30__25_carry_n_2;
  wire u_temp30__25_carry_n_3;
  wire u_temp30_carry__0_i_1_n_0;
  wire u_temp30_carry__0_i_2_n_0;
  wire u_temp30_carry__0_i_3_n_0;
  wire u_temp30_carry__0_i_4_n_0;
  wire u_temp30_carry__0_n_0;
  wire u_temp30_carry__0_n_1;
  wire u_temp30_carry__0_n_2;
  wire u_temp30_carry__0_n_3;
  wire u_temp30_carry__0_n_4;
  wire u_temp30_carry__0_n_5;
  wire u_temp30_carry__0_n_6;
  wire u_temp30_carry__0_n_7;
  wire u_temp30_carry__1_i_1_n_0;
  wire u_temp30_carry__1_i_2_n_0;
  wire u_temp30_carry__1_n_2;
  wire u_temp30_carry__1_n_3;
  wire u_temp30_carry__1_n_5;
  wire u_temp30_carry__1_n_6;
  wire u_temp30_carry__1_n_7;
  wire u_temp30_carry_i_1_n_0;
  wire u_temp30_carry_i_2_n_0;
  wire u_temp30_carry_i_3_n_0;
  wire u_temp30_carry_n_0;
  wire u_temp30_carry_n_1;
  wire u_temp30_carry_n_2;
  wire u_temp30_carry_n_3;
  wire u_temp30_carry_n_4;
  wire u_temp30_carry_n_5;
  wire u_temp30_carry_n_6;
  wire [15:8]v0;
  wire v0_carry__0_i_1_n_0;
  wire v0_carry__0_i_2_n_0;
  wire v0_carry__0_i_3_n_0;
  wire v0_carry__0_i_4_n_0;
  wire v0_carry__0_i_5_n_0;
  wire v0_carry__0_i_6_n_0;
  wire v0_carry__0_i_7_n_0;
  wire v0_carry__0_i_8_n_0;
  wire v0_carry__0_n_0;
  wire v0_carry__0_n_1;
  wire v0_carry__0_n_2;
  wire v0_carry__0_n_3;
  wire v0_carry__1_i_1_n_0;
  wire v0_carry__1_i_2_n_0;
  wire v0_carry__1_i_3_n_0;
  wire v0_carry__1_i_4_n_0;
  wire v0_carry__1_i_5_n_0;
  wire v0_carry__1_i_6_n_0;
  wire v0_carry__1_i_7_n_0;
  wire v0_carry__1_i_8_n_0;
  wire v0_carry__1_n_0;
  wire v0_carry__1_n_1;
  wire v0_carry__1_n_2;
  wire v0_carry__1_n_3;
  wire v0_carry__2_i_1_n_0;
  wire v0_carry__2_i_2_n_0;
  wire v0_carry__2_i_3_n_0;
  wire v0_carry__2_n_3;
  wire v0_carry_i_1_n_0;
  wire v0_carry_i_2_n_0;
  wire v0_carry_i_3_n_0;
  wire v0_carry_i_4_n_0;
  wire v0_carry_i_5_n_0;
  wire v0_carry_i_6_n_0;
  wire v0_carry_i_7_n_0;
  wire v0_carry_i_8_n_0;
  wire v0_carry_n_0;
  wire v0_carry_n_1;
  wire v0_carry_n_2;
  wire v0_carry_n_3;
  wire [14:4]v_temp1;
  wire [14:4]v_temp10;
  wire v_temp10__19_carry__0_i_1_n_0;
  wire v_temp10__19_carry__0_i_2_n_0;
  wire v_temp10__19_carry__0_i_3_n_0;
  wire v_temp10__19_carry__0_i_4_n_0;
  wire v_temp10__19_carry__0_n_0;
  wire v_temp10__19_carry__0_n_1;
  wire v_temp10__19_carry__0_n_2;
  wire v_temp10__19_carry__0_n_3;
  wire v_temp10__19_carry__1_i_1_n_0;
  wire v_temp10__19_carry__1_n_3;
  wire v_temp10__19_carry_i_1_n_0;
  wire v_temp10__19_carry_i_2_n_0;
  wire v_temp10__19_carry_i_3_n_0;
  wire v_temp10__19_carry_n_0;
  wire v_temp10__19_carry_n_1;
  wire v_temp10__19_carry_n_2;
  wire v_temp10__19_carry_n_3;
  wire v_temp10_carry__0_i_1_n_0;
  wire v_temp10_carry__0_i_2_n_0;
  wire v_temp10_carry__0_i_3_n_0;
  wire v_temp10_carry__0_i_4_n_0;
  wire v_temp10_carry__0_n_0;
  wire v_temp10_carry__0_n_1;
  wire v_temp10_carry__0_n_2;
  wire v_temp10_carry__0_n_3;
  wire v_temp10_carry__0_n_4;
  wire v_temp10_carry__0_n_5;
  wire v_temp10_carry__0_n_6;
  wire v_temp10_carry__0_n_7;
  wire v_temp10_carry__1_i_1_n_0;
  wire v_temp10_carry__1_i_2_n_0;
  wire v_temp10_carry__1_n_2;
  wire v_temp10_carry__1_n_3;
  wire v_temp10_carry__1_n_5;
  wire v_temp10_carry__1_n_6;
  wire v_temp10_carry__1_n_7;
  wire v_temp10_carry_i_1_n_0;
  wire v_temp10_carry_i_2_n_0;
  wire v_temp10_carry_i_3_n_0;
  wire v_temp10_carry_n_0;
  wire v_temp10_carry_n_1;
  wire v_temp10_carry_n_2;
  wire v_temp10_carry_n_3;
  wire v_temp10_carry_n_4;
  wire v_temp10_carry_n_5;
  wire v_temp10_carry_n_6;
  wire [14:1]v_temp2;
  wire [14:2]v_temp20;
  wire v_temp20__19_carry__0_i_1_n_0;
  wire v_temp20__19_carry__0_i_2_n_0;
  wire v_temp20__19_carry__0_i_3_n_0;
  wire v_temp20__19_carry__0_i_4_n_0;
  wire v_temp20__19_carry__0_n_0;
  wire v_temp20__19_carry__0_n_1;
  wire v_temp20__19_carry__0_n_2;
  wire v_temp20__19_carry__0_n_3;
  wire v_temp20__19_carry__0_n_4;
  wire v_temp20__19_carry__0_n_5;
  wire v_temp20__19_carry__0_n_6;
  wire v_temp20__19_carry__0_n_7;
  wire v_temp20__19_carry__1_i_1_n_0;
  wire v_temp20__19_carry__1_i_2_n_0;
  wire v_temp20__19_carry__1_n_1;
  wire v_temp20__19_carry__1_n_3;
  wire v_temp20__19_carry__1_n_6;
  wire v_temp20__19_carry__1_n_7;
  wire v_temp20__19_carry_i_1_n_0;
  wire v_temp20__19_carry_i_2_n_0;
  wire v_temp20__19_carry_i_3_n_0;
  wire v_temp20__19_carry_n_0;
  wire v_temp20__19_carry_n_1;
  wire v_temp20__19_carry_n_2;
  wire v_temp20__19_carry_n_3;
  wire v_temp20__19_carry_n_4;
  wire v_temp20__19_carry_n_5;
  wire v_temp20__19_carry_n_6;
  wire v_temp20__41_carry__0_i_1_n_0;
  wire v_temp20__41_carry__0_i_2_n_0;
  wire v_temp20__41_carry__0_i_3_n_0;
  wire v_temp20__41_carry__0_i_4_n_0;
  wire v_temp20__41_carry__0_i_5_n_0;
  wire v_temp20__41_carry__0_i_6_n_0;
  wire v_temp20__41_carry__0_i_7_n_0;
  wire v_temp20__41_carry__0_i_8_n_0;
  wire v_temp20__41_carry__0_n_0;
  wire v_temp20__41_carry__0_n_1;
  wire v_temp20__41_carry__0_n_2;
  wire v_temp20__41_carry__0_n_3;
  wire v_temp20__41_carry__1_i_1_n_0;
  wire v_temp20__41_carry__1_i_2_n_0;
  wire v_temp20__41_carry__1_i_3_n_0;
  wire v_temp20__41_carry__1_i_4_n_0;
  wire v_temp20__41_carry__1_i_5_n_0;
  wire v_temp20__41_carry__1_i_6_n_0;
  wire v_temp20__41_carry__1_i_7_n_0;
  wire v_temp20__41_carry__1_n_1;
  wire v_temp20__41_carry__1_n_2;
  wire v_temp20__41_carry__1_n_3;
  wire v_temp20__41_carry_i_1_n_0;
  wire v_temp20__41_carry_i_2_n_0;
  wire v_temp20__41_carry_i_3_n_0;
  wire v_temp20__41_carry_i_4_n_0;
  wire v_temp20__41_carry_n_0;
  wire v_temp20__41_carry_n_1;
  wire v_temp20__41_carry_n_2;
  wire v_temp20__41_carry_n_3;
  wire v_temp20_carry__0_i_1_n_0;
  wire v_temp20_carry__0_i_2_n_0;
  wire v_temp20_carry__0_i_3_n_0;
  wire v_temp20_carry__0_i_4_n_0;
  wire v_temp20_carry__0_n_0;
  wire v_temp20_carry__0_n_1;
  wire v_temp20_carry__0_n_2;
  wire v_temp20_carry__0_n_3;
  wire v_temp20_carry__0_n_4;
  wire v_temp20_carry__0_n_5;
  wire v_temp20_carry__0_n_6;
  wire v_temp20_carry__0_n_7;
  wire v_temp20_carry__1_i_1_n_0;
  wire v_temp20_carry__1_i_2_n_0;
  wire v_temp20_carry__1_n_1;
  wire v_temp20_carry__1_n_3;
  wire v_temp20_carry__1_n_6;
  wire v_temp20_carry__1_n_7;
  wire v_temp20_carry_i_1_n_0;
  wire v_temp20_carry_i_2_n_0;
  wire v_temp20_carry_i_3_n_0;
  wire v_temp20_carry_n_0;
  wire v_temp20_carry_n_1;
  wire v_temp20_carry_n_2;
  wire v_temp20_carry_n_3;
  wire v_temp20_carry_n_4;
  wire v_temp20_carry_n_5;
  wire v_temp20_carry_n_7;
  wire [12:3]v_temp3;
  wire [12:3]v_temp30;
  wire \v_temp3[10]_i_2_n_0 ;
  wire \v_temp3[10]_i_3_n_0 ;
  wire \v_temp3[6]_i_2_n_0 ;
  wire \v_temp3[6]_i_3_n_0 ;
  wire \v_temp3[6]_i_4_n_0 ;
  wire \v_temp3_reg[10]_i_1_n_0 ;
  wire \v_temp3_reg[10]_i_1_n_1 ;
  wire \v_temp3_reg[10]_i_1_n_2 ;
  wire \v_temp3_reg[10]_i_1_n_3 ;
  wire \v_temp3_reg[6]_i_1_n_0 ;
  wire \v_temp3_reg[6]_i_1_n_1 ;
  wire \v_temp3_reg[6]_i_1_n_2 ;
  wire \v_temp3_reg[6]_i_1_n_3 ;
  wire [0:0]vsync;
  wire vsync_i;
  wire vsync_o;
  wire y0__1_carry__0_i_1_n_0;
  wire y0__1_carry__0_i_2_n_0;
  wire y0__1_carry__0_i_3_n_0;
  wire y0__1_carry__0_i_4_n_0;
  wire y0__1_carry__0_i_5_n_0;
  wire y0__1_carry__0_i_6_n_0;
  wire y0__1_carry__0_i_7_n_0;
  wire y0__1_carry__0_i_8_n_0;
  wire y0__1_carry__0_n_0;
  wire y0__1_carry__0_n_1;
  wire y0__1_carry__0_n_2;
  wire y0__1_carry__0_n_3;
  wire y0__1_carry__1_i_1_n_0;
  wire y0__1_carry__1_i_2_n_0;
  wire y0__1_carry__1_i_3_n_0;
  wire y0__1_carry__1_i_4_n_0;
  wire y0__1_carry__1_i_5_n_0;
  wire y0__1_carry__1_i_6_n_0;
  wire y0__1_carry__1_i_7_n_0;
  wire y0__1_carry__1_i_8_n_0;
  wire y0__1_carry__1_n_0;
  wire y0__1_carry__1_n_1;
  wire y0__1_carry__1_n_2;
  wire y0__1_carry__1_n_3;
  wire y0__1_carry__1_n_4;
  wire y0__1_carry__1_n_5;
  wire y0__1_carry__1_n_6;
  wire y0__1_carry__1_n_7;
  wire y0__1_carry__2_i_1_n_0;
  wire y0__1_carry__2_i_2_n_0;
  wire y0__1_carry__2_i_3_n_0;
  wire y0__1_carry__2_i_4_n_0;
  wire y0__1_carry__2_i_5_n_0;
  wire y0__1_carry__2_i_6_n_0;
  wire y0__1_carry__2_i_7_n_0;
  wire y0__1_carry__2_n_1;
  wire y0__1_carry__2_n_2;
  wire y0__1_carry__2_n_3;
  wire y0__1_carry__2_n_4;
  wire y0__1_carry__2_n_5;
  wire y0__1_carry__2_n_6;
  wire y0__1_carry__2_n_7;
  wire y0__1_carry_i_1_n_0;
  wire y0__1_carry_i_2_n_0;
  wire y0__1_carry_i_3_n_0;
  wire y0__1_carry_i_4_n_0;
  wire y0__1_carry_i_5_n_0;
  wire y0__1_carry_i_6_n_0;
  wire y0__1_carry_i_7_n_0;
  wire y0__1_carry_n_0;
  wire y0__1_carry_n_1;
  wire y0__1_carry_n_2;
  wire y0__1_carry_n_3;
  wire \y[15]_i_1_n_0 ;
  wire [14:1]y_temp1;
  wire [14:5]y_temp10;
  wire \y_temp1[8]_i_2_n_0 ;
  wire \y_temp1[8]_i_3_n_0 ;
  wire \y_temp1[8]_i_4_n_0 ;
  wire \y_temp1_reg[12]_i_1_n_0 ;
  wire \y_temp1_reg[12]_i_1_n_1 ;
  wire \y_temp1_reg[12]_i_1_n_2 ;
  wire \y_temp1_reg[12]_i_1_n_3 ;
  wire \y_temp1_reg[8]_i_1_n_0 ;
  wire \y_temp1_reg[8]_i_1_n_1 ;
  wire \y_temp1_reg[8]_i_1_n_2 ;
  wire \y_temp1_reg[8]_i_1_n_3 ;
  wire [15:1]y_temp2;
  wire [15:6]y_temp20;
  wire \y_temp2[9]_i_2_n_0 ;
  wire \y_temp2_reg[13]_i_1_n_0 ;
  wire \y_temp2_reg[13]_i_1_n_1 ;
  wire \y_temp2_reg[13]_i_1_n_2 ;
  wire \y_temp2_reg[13]_i_1_n_3 ;
  wire \y_temp2_reg[9]_i_1_n_0 ;
  wire \y_temp2_reg[9]_i_1_n_1 ;
  wire \y_temp2_reg[9]_i_1_n_2 ;
  wire \y_temp2_reg[9]_i_1_n_3 ;
  wire [12:0]y_temp3;
  wire [12:3]y_temp30;
  wire y_temp30_carry__0_i_1_n_0;
  wire y_temp30_carry__0_i_2_n_0;
  wire y_temp30_carry__0_i_3_n_0;
  wire y_temp30_carry__0_i_4_n_0;
  wire y_temp30_carry__0_i_5_n_0;
  wire y_temp30_carry__0_i_6_n_0;
  wire y_temp30_carry__0_i_7_n_0;
  wire y_temp30_carry__0_i_8_n_0;
  wire y_temp30_carry__0_n_0;
  wire y_temp30_carry__0_n_1;
  wire y_temp30_carry__0_n_2;
  wire y_temp30_carry__0_n_3;
  wire y_temp30_carry__1_i_1_n_0;
  wire y_temp30_carry__1_i_2_n_0;
  wire y_temp30_carry__1_i_3_n_0;
  wire y_temp30_carry__1_n_3;
  wire y_temp30_carry_i_1_n_0;
  wire y_temp30_carry_i_2_n_0;
  wire y_temp30_carry_i_3_n_0;
  wire y_temp30_carry_i_4_n_0;
  wire y_temp30_carry_i_5_n_0;
  wire y_temp30_carry_i_6_n_0;
  wire y_temp30_carry_i_7_n_0;
  wire y_temp30_carry_n_0;
  wire y_temp30_carry_n_1;
  wire y_temp30_carry_n_2;
  wire y_temp30_carry_n_3;
  wire [23:0]yuv_o;
  wire [3:0]NLW_u0_carry_O_UNCONNECTED;
  wire [3:0]NLW_u0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_u0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_u_temp10__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_u_temp10__19_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_u_temp10_carry_O_UNCONNECTED;
  wire [3:2]NLW_u_temp10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_u_temp10_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_u_temp20__21_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_u_temp20__21_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_u_temp20_carry_O_UNCONNECTED;
  wire [3:1]NLW_u_temp20_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_u_temp20_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_u_temp30__25_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_u_temp30__25_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_u_temp30_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_u_temp30_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_v0_carry_O_UNCONNECTED;
  wire [1:0]NLW_v0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_v0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_v0_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_v_temp10__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_v_temp10__19_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_v_temp10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_v_temp10_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_v_temp20__19_carry_O_UNCONNECTED;
  wire [3:1]NLW_v_temp20__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_v_temp20__19_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_v_temp20__41_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_v_temp20_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_v_temp20_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_v_temp3_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_y0__1_carry_O_UNCONNECTED;
  wire [3:0]NLW_y0__1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_y0__1_carry__2_CO_UNCONNECTED;
  wire [3:0]\NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_y_temp1_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_y_temp2_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_y_temp30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_y_temp30_carry__1_O_UNCONNECTED;

  FDRE \de_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(de_i),
        .Q(de),
        .R(1'b0));
  FDRE \de_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(de),
        .Q(de_o),
        .R(1'b0));
  FDRE \hsync_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(hsync_i),
        .Q(hsync),
        .R(1'b0));
  FDRE \hsync_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(hsync),
        .Q(hsync_o),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u0_carry
       (.CI(1'b0),
        .CO({u0_carry_n_0,u0_carry_n_1,u0_carry_n_2,u0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({u0_carry_i_1_n_0,u0_carry_i_2_n_0,p_0_in,v_temp2[1]}),
        .O(NLW_u0_carry_O_UNCONNECTED[3:0]),
        .S({u0_carry_i_4_n_0,u0_carry_i_5_n_0,u0_carry_i_6_n_0,u0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u0_carry__0
       (.CI(u0_carry_n_0),
        .CO({u0_carry__0_n_0,u0_carry__0_n_1,u0_carry__0_n_2,u0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u0_carry__0_i_1_n_0,u0_carry__0_i_2_n_0,u0_carry__0_i_3_n_0,u0_carry__0_i_4_n_0}),
        .O(NLW_u0_carry__0_O_UNCONNECTED[3:0]),
        .S({u0_carry__0_i_5_n_0,u0_carry__0_i_6_n_0,u0_carry__0_i_7_n_0,u0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__0_i_1
       (.I0(u_temp2[6]),
        .I1(u_temp3[6]),
        .I2(u_temp1[6]),
        .O(u0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__0_i_2
       (.I0(u_temp2[5]),
        .I1(u_temp3[5]),
        .I2(u_temp1[5]),
        .O(u0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__0_i_3
       (.I0(u_temp2[4]),
        .I1(u_temp3[4]),
        .I2(u_temp1[4]),
        .O(u0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    u0_carry__0_i_4
       (.I0(u_temp2[3]),
        .I1(u_temp1[3]),
        .O(u0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__0_i_5
       (.I0(u_temp2[7]),
        .I1(u_temp3[7]),
        .I2(u_temp1[7]),
        .I3(u0_carry__0_i_1_n_0),
        .O(u0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__0_i_6
       (.I0(u_temp2[6]),
        .I1(u_temp3[6]),
        .I2(u_temp1[6]),
        .I3(u0_carry__0_i_2_n_0),
        .O(u0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__0_i_7
       (.I0(u_temp2[5]),
        .I1(u_temp3[5]),
        .I2(u_temp1[5]),
        .I3(u0_carry__0_i_3_n_0),
        .O(u0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__0_i_8
       (.I0(u_temp2[4]),
        .I1(u_temp3[4]),
        .I2(u_temp1[4]),
        .I3(u0_carry__0_i_4_n_0),
        .O(u0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u0_carry__1
       (.CI(u0_carry__0_n_0),
        .CO({u0_carry__1_n_0,u0_carry__1_n_1,u0_carry__1_n_2,u0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u0_carry__1_i_1_n_0,u0_carry__1_i_2_n_0,u0_carry__1_i_3_n_0,u0_carry__1_i_4_n_0}),
        .O({u0_carry__1_n_4,u0_carry__1_n_5,u0_carry__1_n_6,u0_carry__1_n_7}),
        .S({u0_carry__1_i_5_n_0,u0_carry__1_i_6_n_0,u0_carry__1_i_7_n_0,u0_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__1_i_1
       (.I0(u_temp2[10]),
        .I1(u_temp3[10]),
        .I2(u_temp1[10]),
        .O(u0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__1_i_2
       (.I0(u_temp2[9]),
        .I1(u_temp3[9]),
        .I2(u_temp1[9]),
        .O(u0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__1_i_3
       (.I0(u_temp2[8]),
        .I1(u_temp3[8]),
        .I2(u_temp1[8]),
        .O(u0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__1_i_4
       (.I0(u_temp2[7]),
        .I1(u_temp3[7]),
        .I2(u_temp1[7]),
        .O(u0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__1_i_5
       (.I0(u_temp2[11]),
        .I1(u_temp3[11]),
        .I2(u_temp1[11]),
        .I3(u0_carry__1_i_1_n_0),
        .O(u0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__1_i_6
       (.I0(u_temp2[10]),
        .I1(u_temp3[10]),
        .I2(u_temp1[10]),
        .I3(u0_carry__1_i_2_n_0),
        .O(u0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__1_i_7
       (.I0(u_temp2[9]),
        .I1(u_temp3[9]),
        .I2(u_temp1[9]),
        .I3(u0_carry__1_i_3_n_0),
        .O(u0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__1_i_8
       (.I0(u_temp2[8]),
        .I1(u_temp3[8]),
        .I2(u_temp1[8]),
        .I3(u0_carry__1_i_4_n_0),
        .O(u0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u0_carry__2
       (.CI(u0_carry__1_n_0),
        .CO({NLW_u0_carry__2_CO_UNCONNECTED[3],u0_carry__2_n_1,u0_carry__2_n_2,u0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,u0_carry__2_i_1_n_0,u0_carry__2_i_2_n_0,u0_carry__2_i_3_n_0}),
        .O({u0_carry__2_n_4,u0_carry__2_n_5,u0_carry__2_n_6,u0_carry__2_n_7}),
        .S({u0_carry__2_i_4_n_0,u0_carry__2_i_5_n_0,u0_carry__2_i_6_n_0,u0_carry__2_i_7_n_0}));
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__2_i_1
       (.I0(u_temp2[13]),
        .I1(u_temp3[13]),
        .I2(u_temp1[13]),
        .O(u0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__2_i_2
       (.I0(u_temp2[12]),
        .I1(u_temp3[12]),
        .I2(u_temp1[12]),
        .O(u0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    u0_carry__2_i_3
       (.I0(u_temp2[11]),
        .I1(u_temp3[11]),
        .I2(u_temp1[11]),
        .O(u0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    u0_carry__2_i_4
       (.I0(u_temp2[14]),
        .I1(u_temp3[14]),
        .O(u0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    u0_carry__2_i_5
       (.I0(u_temp1[13]),
        .I1(u_temp3[13]),
        .I2(u_temp2[13]),
        .I3(u_temp2[14]),
        .I4(u_temp3[14]),
        .O(u0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__2_i_6
       (.I0(u0_carry__2_i_2_n_0),
        .I1(u_temp3[13]),
        .I2(u_temp2[13]),
        .I3(u_temp1[13]),
        .O(u0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u0_carry__2_i_7
       (.I0(u_temp2[12]),
        .I1(u_temp3[12]),
        .I2(u_temp1[12]),
        .I3(u0_carry__2_i_3_n_0),
        .O(u0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    u0_carry_i_1
       (.I0(u_temp1[2]),
        .I1(u_temp2[2]),
        .O(u0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    u0_carry_i_2
       (.I0(y_temp1[1]),
        .I1(u_temp2[1]),
        .O(u0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u0_carry_i_3
       (.I0(v_temp2[1]),
        .O(p_0_in));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    u0_carry_i_4
       (.I0(u_temp2[3]),
        .I1(u_temp1[3]),
        .I2(u_temp1[2]),
        .I3(u_temp2[2]),
        .O(u0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    u0_carry_i_5
       (.I0(y_temp1[1]),
        .I1(u_temp2[1]),
        .I2(u_temp2[2]),
        .I3(u_temp1[2]),
        .O(u0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    u0_carry_i_6
       (.I0(v_temp2[1]),
        .I1(u_temp2[1]),
        .I2(y_temp1[1]),
        .O(u0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u0_carry_i_7
       (.I0(v_temp2[1]),
        .O(u0_carry_i_7_n_0));
  FDCE \u_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__1_n_5),
        .Q(yuv_o[10]));
  FDCE \u_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__1_n_4),
        .Q(yuv_o[11]));
  FDCE \u_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__2_n_7),
        .Q(yuv_o[12]));
  FDCE \u_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__2_n_6),
        .Q(yuv_o[13]));
  FDCE \u_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__2_n_5),
        .Q(yuv_o[14]));
  FDCE \u_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__2_n_4),
        .Q(yuv_o[15]));
  FDCE \u_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__1_n_7),
        .Q(yuv_o[8]));
  FDCE \u_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u0_carry__1_n_6),
        .Q(yuv_o[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp10__19_carry
       (.CI(1'b0),
        .CO({u_temp10__19_carry_n_0,u_temp10__19_carry_n_1,u_temp10__19_carry_n_2,u_temp10__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[18:16],1'b0}),
        .O(u_temp10[7:4]),
        .S({u_temp10__19_carry_i_1_n_0,u_temp10__19_carry_i_2_n_0,u_temp10__19_carry_i_3_n_0,u_temp10_carry_n_4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp10__19_carry__0
       (.CI(u_temp10__19_carry_n_0),
        .CO({u_temp10__19_carry__0_n_0,u_temp10__19_carry__0_n_1,u_temp10__19_carry__0_n_2,u_temp10__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[22:19]),
        .O(u_temp10[11:8]),
        .S({u_temp10__19_carry__0_i_1_n_0,u_temp10__19_carry__0_i_2_n_0,u_temp10__19_carry__0_i_3_n_0,u_temp10__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry__0_i_1
       (.I0(rgb_i[22]),
        .I1(u_temp10_carry__1_n_5),
        .O(u_temp10__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry__0_i_2
       (.I0(rgb_i[21]),
        .I1(u_temp10_carry__1_n_6),
        .O(u_temp10__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry__0_i_3
       (.I0(rgb_i[20]),
        .I1(u_temp10_carry__1_n_7),
        .O(u_temp10__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry__0_i_4
       (.I0(rgb_i[19]),
        .I1(u_temp10_carry__0_n_4),
        .O(u_temp10__19_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp10__19_carry__1
       (.CI(u_temp10__19_carry__0_n_0),
        .CO({NLW_u_temp10__19_carry__1_CO_UNCONNECTED[3:1],u_temp10__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_i[23]}),
        .O({NLW_u_temp10__19_carry__1_O_UNCONNECTED[3:2],u_temp10[13:12]}),
        .S({1'b0,1'b0,u_temp10_carry__1_n_5,u_temp10__19_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry__1_i_1
       (.I0(rgb_i[23]),
        .I1(u_temp10_carry__1_n_5),
        .O(u_temp10__19_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry_i_1
       (.I0(rgb_i[18]),
        .I1(u_temp10_carry__0_n_5),
        .O(u_temp10__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry_i_2
       (.I0(rgb_i[17]),
        .I1(u_temp10_carry__0_n_6),
        .O(u_temp10__19_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp10__19_carry_i_3
       (.I0(rgb_i[16]),
        .I1(u_temp10_carry__0_n_7),
        .O(u_temp10__19_carry_i_3_n_0));
  CARRY4 u_temp10_carry
       (.CI(1'b0),
        .CO({u_temp10_carry_n_0,u_temp10_carry_n_1,u_temp10_carry_n_2,u_temp10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[17:16],1'b0,1'b1}),
        .O({u_temp10_carry_n_4,u_temp10[3:2],NLW_u_temp10_carry_O_UNCONNECTED[0]}),
        .S({u_temp10_carry_i_1_n_0,u_temp10_carry_i_2_n_0,u_temp10_carry_i_3_n_0,rgb_i[16]}));
  CARRY4 u_temp10_carry__0
       (.CI(u_temp10_carry_n_0),
        .CO({u_temp10_carry__0_n_0,u_temp10_carry__0_n_1,u_temp10_carry__0_n_2,u_temp10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[21:18]),
        .O({u_temp10_carry__0_n_4,u_temp10_carry__0_n_5,u_temp10_carry__0_n_6,u_temp10_carry__0_n_7}),
        .S({u_temp10_carry__0_i_1_n_0,u_temp10_carry__0_i_2_n_0,u_temp10_carry__0_i_3_n_0,u_temp10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry__0_i_1
       (.I0(rgb_i[21]),
        .I1(rgb_i[23]),
        .O(u_temp10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry__0_i_2
       (.I0(rgb_i[20]),
        .I1(rgb_i[22]),
        .O(u_temp10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry__0_i_3
       (.I0(rgb_i[19]),
        .I1(rgb_i[21]),
        .O(u_temp10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry__0_i_4
       (.I0(rgb_i[18]),
        .I1(rgb_i[20]),
        .O(u_temp10_carry__0_i_4_n_0));
  CARRY4 u_temp10_carry__1
       (.CI(u_temp10_carry__0_n_0),
        .CO({NLW_u_temp10_carry__1_CO_UNCONNECTED[3:2],u_temp10_carry__1_n_2,u_temp10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[23:22]}),
        .O({NLW_u_temp10_carry__1_O_UNCONNECTED[3],u_temp10_carry__1_n_5,u_temp10_carry__1_n_6,u_temp10_carry__1_n_7}),
        .S({1'b0,1'b1,u_temp10_carry__1_i_1_n_0,u_temp10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp10_carry__1_i_1
       (.I0(rgb_i[23]),
        .O(u_temp10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp10_carry__1_i_2
       (.I0(rgb_i[22]),
        .O(u_temp10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry_i_1
       (.I0(rgb_i[17]),
        .I1(rgb_i[19]),
        .O(u_temp10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp10_carry_i_2
       (.I0(rgb_i[16]),
        .I1(rgb_i[18]),
        .O(u_temp10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp10_carry_i_3
       (.I0(rgb_i[17]),
        .O(u_temp10_carry_i_3_n_0));
  FDCE \u_temp1_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[10]),
        .Q(u_temp1[10]));
  FDCE \u_temp1_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[11]),
        .Q(u_temp1[11]));
  FDCE \u_temp1_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[12]),
        .Q(u_temp1[12]));
  FDCE \u_temp1_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[13]),
        .Q(u_temp1[13]));
  FDCE \u_temp1_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[2]),
        .Q(u_temp1[2]));
  FDCE \u_temp1_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[3]),
        .Q(u_temp1[3]));
  FDCE \u_temp1_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[4]),
        .Q(u_temp1[4]));
  FDCE \u_temp1_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[5]),
        .Q(u_temp1[5]));
  FDCE \u_temp1_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[6]),
        .Q(u_temp1[6]));
  FDCE \u_temp1_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[7]),
        .Q(u_temp1[7]));
  FDCE \u_temp1_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[8]),
        .Q(u_temp1[8]));
  FDCE \u_temp1_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp10[9]),
        .Q(u_temp1[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp20__21_carry
       (.CI(1'b0),
        .CO({u_temp20__21_carry_n_0,u_temp20__21_carry_n_1,u_temp20__21_carry_n_2,u_temp20__21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_temp20_carry__0_n_6,u_temp20_carry__0_n_7,u_temp20_carry_n_4,1'b0}),
        .O(u_temp20[5:2]),
        .S({u_temp20__21_carry_i_1_n_0,u_temp20__21_carry_i_2_n_0,u_temp20__21_carry_i_3_n_0,u_temp20_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp20__21_carry__0
       (.CI(u_temp20__21_carry_n_0),
        .CO({u_temp20__21_carry__0_n_0,u_temp20__21_carry__0_n_1,u_temp20__21_carry__0_n_2,u_temp20__21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_temp20__21_carry__0_i_1_n_0,u_temp20__21_carry__0_i_2_n_0,u_temp20__21_carry__0_i_3_n_0,rgb_i[8]}),
        .O(u_temp20[9:6]),
        .S({u_temp20__21_carry__0_i_4_n_0,u_temp20__21_carry__0_i_5_n_0,u_temp20__21_carry__0_i_6_n_0,u_temp20__21_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    u_temp20__21_carry__0_i_1
       (.I0(rgb_i[13]),
        .I1(u_temp20_carry__1_n_7),
        .I2(rgb_i[10]),
        .O(u_temp20__21_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    u_temp20__21_carry__0_i_2
       (.I0(rgb_i[12]),
        .I1(u_temp20_carry__0_n_4),
        .I2(rgb_i[9]),
        .O(u_temp20__21_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    u_temp20__21_carry__0_i_3
       (.I0(rgb_i[9]),
        .I1(rgb_i[12]),
        .I2(u_temp20_carry__0_n_4),
        .O(u_temp20__21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    u_temp20__21_carry__0_i_4
       (.I0(rgb_i[14]),
        .I1(u_temp20_carry__1_n_6),
        .I2(rgb_i[11]),
        .I3(u_temp20__21_carry__0_i_1_n_0),
        .O(u_temp20__21_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    u_temp20__21_carry__0_i_5
       (.I0(rgb_i[13]),
        .I1(u_temp20_carry__1_n_7),
        .I2(rgb_i[10]),
        .I3(u_temp20__21_carry__0_i_2_n_0),
        .O(u_temp20__21_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    u_temp20__21_carry__0_i_6
       (.I0(rgb_i[12]),
        .I1(u_temp20_carry__0_n_4),
        .I2(rgb_i[9]),
        .I3(u_temp20_carry__0_n_5),
        .I4(rgb_i[11]),
        .O(u_temp20__21_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    u_temp20__21_carry__0_i_7
       (.I0(rgb_i[11]),
        .I1(u_temp20_carry__0_n_5),
        .I2(rgb_i[8]),
        .O(u_temp20__21_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp20__21_carry__1
       (.CI(u_temp20__21_carry__0_n_0),
        .CO({u_temp20__21_carry__1_n_0,u_temp20__21_carry__1_n_1,u_temp20__21_carry__1_n_2,u_temp20__21_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u_temp20__21_carry__1_i_1_n_0,u_temp20__21_carry__1_i_2_n_0,u_temp20__21_carry__1_i_3_n_0,u_temp20__21_carry__1_i_4_n_0}),
        .O(u_temp20[13:10]),
        .S({u_temp20__21_carry__1_i_5_n_0,u_temp20__21_carry__1_i_6_n_0,u_temp20__21_carry__1_i_7_n_0,u_temp20__21_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    u_temp20__21_carry__1_i_1
       (.I0(rgb_i[14]),
        .I1(u_temp20_carry__1_n_1),
        .O(u_temp20__21_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    u_temp20__21_carry__1_i_2
       (.I0(rgb_i[13]),
        .I1(u_temp20_carry__1_n_1),
        .O(u_temp20__21_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    u_temp20__21_carry__1_i_3
       (.I0(u_temp20_carry__1_n_1),
        .I1(rgb_i[15]),
        .I2(rgb_i[12]),
        .O(u_temp20__21_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    u_temp20__21_carry__1_i_4
       (.I0(rgb_i[14]),
        .I1(u_temp20_carry__1_n_6),
        .I2(rgb_i[11]),
        .O(u_temp20__21_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    u_temp20__21_carry__1_i_5
       (.I0(rgb_i[14]),
        .I1(u_temp20_carry__1_n_1),
        .I2(rgb_i[15]),
        .O(u_temp20__21_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    u_temp20__21_carry__1_i_6
       (.I0(rgb_i[13]),
        .I1(u_temp20_carry__1_n_1),
        .I2(rgb_i[14]),
        .O(u_temp20__21_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    u_temp20__21_carry__1_i_7
       (.I0(rgb_i[12]),
        .I1(rgb_i[15]),
        .I2(u_temp20_carry__1_n_1),
        .I3(rgb_i[13]),
        .O(u_temp20__21_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    u_temp20__21_carry__1_i_8
       (.I0(u_temp20__21_carry__1_i_4_n_0),
        .I1(u_temp20_carry__1_n_1),
        .I2(rgb_i[15]),
        .I3(rgb_i[12]),
        .O(u_temp20__21_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp20__21_carry__2
       (.CI(u_temp20__21_carry__1_n_0),
        .CO(NLW_u_temp20__21_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_u_temp20__21_carry__2_O_UNCONNECTED[3:1],u_temp20[14]}),
        .S({1'b0,1'b0,1'b0,u_temp20__21_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    u_temp20__21_carry__2_i_1
       (.I0(rgb_i[15]),
        .I1(u_temp20_carry__1_n_1),
        .O(u_temp20__21_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp20__21_carry_i_1
       (.I0(u_temp20_carry__0_n_6),
        .I1(rgb_i[10]),
        .O(u_temp20__21_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp20__21_carry_i_2
       (.I0(u_temp20_carry__0_n_7),
        .I1(rgb_i[9]),
        .O(u_temp20__21_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp20__21_carry_i_3
       (.I0(u_temp20_carry_n_4),
        .I1(rgb_i[8]),
        .O(u_temp20__21_carry_i_3_n_0));
  CARRY4 u_temp20_carry
       (.CI(1'b0),
        .CO({u_temp20_carry_n_0,u_temp20_carry_n_1,u_temp20_carry_n_2,u_temp20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[9:8],1'b0,1'b1}),
        .O({u_temp20_carry_n_4,u_temp20_carry_n_5,u_temp20[1],NLW_u_temp20_carry_O_UNCONNECTED[0]}),
        .S({u_temp20_carry_i_1_n_0,u_temp20_carry_i_2_n_0,u_temp20_carry_i_3_n_0,rgb_i[8]}));
  CARRY4 u_temp20_carry__0
       (.CI(u_temp20_carry_n_0),
        .CO({u_temp20_carry__0_n_0,u_temp20_carry__0_n_1,u_temp20_carry__0_n_2,u_temp20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[13:10]),
        .O({u_temp20_carry__0_n_4,u_temp20_carry__0_n_5,u_temp20_carry__0_n_6,u_temp20_carry__0_n_7}),
        .S({u_temp20_carry__0_i_1_n_0,u_temp20_carry__0_i_2_n_0,u_temp20_carry__0_i_3_n_0,u_temp20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry__0_i_1
       (.I0(rgb_i[13]),
        .I1(rgb_i[15]),
        .O(u_temp20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry__0_i_2
       (.I0(rgb_i[12]),
        .I1(rgb_i[14]),
        .O(u_temp20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry__0_i_3
       (.I0(rgb_i[11]),
        .I1(rgb_i[13]),
        .O(u_temp20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry__0_i_4
       (.I0(rgb_i[10]),
        .I1(rgb_i[12]),
        .O(u_temp20_carry__0_i_4_n_0));
  CARRY4 u_temp20_carry__1
       (.CI(u_temp20_carry__0_n_0),
        .CO({NLW_u_temp20_carry__1_CO_UNCONNECTED[3],u_temp20_carry__1_n_1,NLW_u_temp20_carry__1_CO_UNCONNECTED[1],u_temp20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[15:14]}),
        .O({NLW_u_temp20_carry__1_O_UNCONNECTED[3:2],u_temp20_carry__1_n_6,u_temp20_carry__1_n_7}),
        .S({1'b0,1'b1,u_temp20_carry__1_i_1_n_0,u_temp20_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp20_carry__1_i_1
       (.I0(rgb_i[15]),
        .O(u_temp20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp20_carry__1_i_2
       (.I0(rgb_i[14]),
        .O(u_temp20_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry_i_1
       (.I0(rgb_i[9]),
        .I1(rgb_i[11]),
        .O(u_temp20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp20_carry_i_2
       (.I0(rgb_i[8]),
        .I1(rgb_i[10]),
        .O(u_temp20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp20_carry_i_3
       (.I0(rgb_i[9]),
        .O(u_temp20_carry_i_3_n_0));
  FDCE \u_temp2_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[10]),
        .Q(u_temp2[10]));
  FDCE \u_temp2_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[11]),
        .Q(u_temp2[11]));
  FDCE \u_temp2_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[12]),
        .Q(u_temp2[12]));
  FDCE \u_temp2_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[13]),
        .Q(u_temp2[13]));
  FDCE \u_temp2_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[14]),
        .Q(u_temp2[14]));
  FDCE \u_temp2_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[1]),
        .Q(u_temp2[1]));
  FDCE \u_temp2_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[2]),
        .Q(u_temp2[2]));
  FDCE \u_temp2_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[3]),
        .Q(u_temp2[3]));
  FDCE \u_temp2_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[4]),
        .Q(u_temp2[4]));
  FDCE \u_temp2_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[5]),
        .Q(u_temp2[5]));
  FDCE \u_temp2_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[6]),
        .Q(u_temp2[6]));
  FDCE \u_temp2_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[7]),
        .Q(u_temp2[7]));
  FDCE \u_temp2_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[8]),
        .Q(u_temp2[8]));
  FDCE \u_temp2_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp20[9]),
        .Q(u_temp2[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp30__25_carry
       (.CI(1'b0),
        .CO({u_temp30__25_carry_n_0,u_temp30__25_carry_n_1,u_temp30__25_carry_n_2,u_temp30__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[2:0],1'b0}),
        .O(u_temp30[8:5]),
        .S({u_temp30__25_carry_i_1_n_0,u_temp30__25_carry_i_2_n_0,u_temp30__25_carry_i_3_n_0,u_temp30_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp30__25_carry__0
       (.CI(u_temp30__25_carry_n_0),
        .CO({u_temp30__25_carry__0_n_0,u_temp30__25_carry__0_n_1,u_temp30__25_carry__0_n_2,u_temp30__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[6:3]),
        .O(u_temp30[12:9]),
        .S({u_temp30__25_carry__0_i_1_n_0,u_temp30__25_carry__0_i_2_n_0,u_temp30__25_carry__0_i_3_n_0,u_temp30__25_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry__0_i_1
       (.I0(rgb_i[6]),
        .I1(u_temp30_carry__1_n_7),
        .O(u_temp30__25_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry__0_i_2
       (.I0(rgb_i[5]),
        .I1(u_temp30_carry__0_n_4),
        .O(u_temp30__25_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry__0_i_3
       (.I0(rgb_i[4]),
        .I1(u_temp30_carry__0_n_5),
        .O(u_temp30__25_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry__0_i_4
       (.I0(rgb_i[3]),
        .I1(u_temp30_carry__0_n_6),
        .O(u_temp30__25_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_temp30__25_carry__1
       (.CI(u_temp30__25_carry__0_n_0),
        .CO({NLW_u_temp30__25_carry__1_CO_UNCONNECTED[3:1],u_temp30__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_i[7]}),
        .O({NLW_u_temp30__25_carry__1_O_UNCONNECTED[3:2],u_temp30[14:13]}),
        .S({1'b0,1'b0,u_temp30_carry__1_n_5,u_temp30__25_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry__1_i_1
       (.I0(rgb_i[7]),
        .I1(u_temp30_carry__1_n_6),
        .O(u_temp30__25_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry_i_1
       (.I0(rgb_i[2]),
        .I1(u_temp30_carry__0_n_7),
        .O(u_temp30__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry_i_2
       (.I0(rgb_i[1]),
        .I1(u_temp30_carry_n_4),
        .O(u_temp30__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_temp30__25_carry_i_3
       (.I0(rgb_i[0]),
        .I1(u_temp30_carry_n_5),
        .O(u_temp30__25_carry_i_3_n_0));
  CARRY4 u_temp30_carry
       (.CI(1'b0),
        .CO({u_temp30_carry_n_0,u_temp30_carry_n_1,u_temp30_carry_n_2,u_temp30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[1:0],1'b0,1'b1}),
        .O({u_temp30_carry_n_4,u_temp30_carry_n_5,u_temp30_carry_n_6,u_temp30[4]}),
        .S({u_temp30_carry_i_1_n_0,u_temp30_carry_i_2_n_0,u_temp30_carry_i_3_n_0,rgb_i[0]}));
  CARRY4 u_temp30_carry__0
       (.CI(u_temp30_carry_n_0),
        .CO({u_temp30_carry__0_n_0,u_temp30_carry__0_n_1,u_temp30_carry__0_n_2,u_temp30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[5:2]),
        .O({u_temp30_carry__0_n_4,u_temp30_carry__0_n_5,u_temp30_carry__0_n_6,u_temp30_carry__0_n_7}),
        .S({u_temp30_carry__0_i_1_n_0,u_temp30_carry__0_i_2_n_0,u_temp30_carry__0_i_3_n_0,u_temp30_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry__0_i_1
       (.I0(rgb_i[7]),
        .I1(rgb_i[5]),
        .O(u_temp30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry__0_i_2
       (.I0(rgb_i[6]),
        .I1(rgb_i[4]),
        .O(u_temp30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry__0_i_3
       (.I0(rgb_i[5]),
        .I1(rgb_i[3]),
        .O(u_temp30_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry__0_i_4
       (.I0(rgb_i[2]),
        .I1(rgb_i[4]),
        .O(u_temp30_carry__0_i_4_n_0));
  CARRY4 u_temp30_carry__1
       (.CI(u_temp30_carry__0_n_0),
        .CO({NLW_u_temp30_carry__1_CO_UNCONNECTED[3:2],u_temp30_carry__1_n_2,u_temp30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[7:6]}),
        .O({NLW_u_temp30_carry__1_O_UNCONNECTED[3],u_temp30_carry__1_n_5,u_temp30_carry__1_n_6,u_temp30_carry__1_n_7}),
        .S({1'b0,1'b1,u_temp30_carry__1_i_1_n_0,u_temp30_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp30_carry__1_i_1
       (.I0(rgb_i[7]),
        .O(u_temp30_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp30_carry__1_i_2
       (.I0(rgb_i[6]),
        .O(u_temp30_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry_i_1
       (.I0(rgb_i[1]),
        .I1(rgb_i[3]),
        .O(u_temp30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_temp30_carry_i_2
       (.I0(rgb_i[0]),
        .I1(rgb_i[2]),
        .O(u_temp30_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_temp30_carry_i_3
       (.I0(rgb_i[1]),
        .O(u_temp30_carry_i_3_n_0));
  FDCE \u_temp3_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[10]),
        .Q(u_temp3[10]));
  FDCE \u_temp3_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[11]),
        .Q(u_temp3[11]));
  FDCE \u_temp3_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[12]),
        .Q(u_temp3[12]));
  FDCE \u_temp3_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[13]),
        .Q(u_temp3[13]));
  FDCE \u_temp3_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[14]),
        .Q(u_temp3[14]));
  FDCE \u_temp3_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[4]),
        .Q(u_temp3[4]));
  FDCE \u_temp3_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[5]),
        .Q(u_temp3[5]));
  FDCE \u_temp3_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[6]),
        .Q(u_temp3[6]));
  FDCE \u_temp3_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[7]),
        .Q(u_temp3[7]));
  FDCE \u_temp3_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[8]),
        .Q(u_temp3[8]));
  FDCE \u_temp3_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(u_temp30[9]),
        .Q(u_temp3[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry
       (.CI(1'b0),
        .CO({v0_carry_n_0,v0_carry_n_1,v0_carry_n_2,v0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({v0_carry_i_1_n_0,v0_carry_i_2_n_0,v0_carry_i_3_n_0,v0_carry_i_4_n_0}),
        .O(NLW_v0_carry_O_UNCONNECTED[3:0]),
        .S({v0_carry_i_5_n_0,v0_carry_i_6_n_0,v0_carry_i_7_n_0,v0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__0
       (.CI(v0_carry_n_0),
        .CO({v0_carry__0_n_0,v0_carry__0_n_1,v0_carry__0_n_2,v0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({v0_carry__0_i_1_n_0,v0_carry__0_i_2_n_0,v0_carry__0_i_3_n_0,v0_carry__0_i_4_n_0}),
        .O({v0[9:8],NLW_v0_carry__0_O_UNCONNECTED[1:0]}),
        .S({v0_carry__0_i_5_n_0,v0_carry__0_i_6_n_0,v0_carry__0_i_7_n_0,v0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__0_i_1
       (.I0(v_temp2[8]),
        .I1(v_temp3[8]),
        .I2(v_temp1[8]),
        .O(v0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__0_i_2
       (.I0(v_temp2[7]),
        .I1(v_temp3[7]),
        .I2(v_temp1[7]),
        .O(v0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__0_i_3
       (.I0(v_temp2[6]),
        .I1(v_temp3[6]),
        .I2(v_temp1[6]),
        .O(v0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__0_i_4
       (.I0(v_temp2[5]),
        .I1(v_temp3[5]),
        .I2(v_temp1[5]),
        .O(v0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__0_i_5
       (.I0(v_temp2[9]),
        .I1(v_temp3[9]),
        .I2(v_temp1[9]),
        .I3(v0_carry__0_i_1_n_0),
        .O(v0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__0_i_6
       (.I0(v_temp2[8]),
        .I1(v_temp3[8]),
        .I2(v_temp1[8]),
        .I3(v0_carry__0_i_2_n_0),
        .O(v0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__0_i_7
       (.I0(v_temp2[7]),
        .I1(v_temp3[7]),
        .I2(v_temp1[7]),
        .I3(v0_carry__0_i_3_n_0),
        .O(v0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__0_i_8
       (.I0(v_temp2[6]),
        .I1(v_temp3[6]),
        .I2(v_temp1[6]),
        .I3(v0_carry__0_i_4_n_0),
        .O(v0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__1
       (.CI(v0_carry__0_n_0),
        .CO({v0_carry__1_n_0,v0_carry__1_n_1,v0_carry__1_n_2,v0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({v0_carry__1_i_1_n_0,v0_carry__1_i_2_n_0,v0_carry__1_i_3_n_0,v0_carry__1_i_4_n_0}),
        .O(v0[13:10]),
        .S({v0_carry__1_i_5_n_0,v0_carry__1_i_6_n_0,v0_carry__1_i_7_n_0,v0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__1_i_1
       (.I0(v_temp2[12]),
        .I1(v_temp3[12]),
        .I2(v_temp1[12]),
        .O(v0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__1_i_2
       (.I0(v_temp2[11]),
        .I1(v_temp3[11]),
        .I2(v_temp1[11]),
        .O(v0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__1_i_3
       (.I0(v_temp2[10]),
        .I1(v_temp3[10]),
        .I2(v_temp1[10]),
        .O(v0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry__1_i_4
       (.I0(v_temp2[9]),
        .I1(v_temp3[9]),
        .I2(v_temp1[9]),
        .O(v0_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    v0_carry__1_i_5
       (.I0(v_temp1[12]),
        .I1(v_temp3[12]),
        .I2(v_temp2[12]),
        .I3(v_temp2[13]),
        .I4(v_temp1[13]),
        .O(v0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__1_i_6
       (.I0(v0_carry__1_i_2_n_0),
        .I1(v_temp3[12]),
        .I2(v_temp2[12]),
        .I3(v_temp1[12]),
        .O(v0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__1_i_7
       (.I0(v_temp2[11]),
        .I1(v_temp3[11]),
        .I2(v_temp1[11]),
        .I3(v0_carry__1_i_3_n_0),
        .O(v0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry__1_i_8
       (.I0(v_temp2[10]),
        .I1(v_temp3[10]),
        .I2(v_temp1[10]),
        .I3(v0_carry__1_i_4_n_0),
        .O(v0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__2
       (.CI(v0_carry__1_n_0),
        .CO({NLW_v0_carry__2_CO_UNCONNECTED[3:1],v0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,v0_carry__2_i_1_n_0}),
        .O({NLW_v0_carry__2_O_UNCONNECTED[3:2],v0[15:14]}),
        .S({1'b0,1'b0,v0_carry__2_i_2_n_0,v0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'hD)) 
    v0_carry__2_i_1
       (.I0(v_temp2[13]),
        .I1(v_temp1[13]),
        .O(v0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    v0_carry__2_i_2
       (.I0(v_temp2[14]),
        .I1(v_temp1[14]),
        .O(v0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    v0_carry__2_i_3
       (.I0(v_temp1[13]),
        .I1(v_temp2[13]),
        .I2(v_temp2[14]),
        .I3(v_temp1[14]),
        .O(v0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h71)) 
    v0_carry_i_1
       (.I0(v_temp2[4]),
        .I1(v_temp3[4]),
        .I2(v_temp1[4]),
        .O(v0_carry_i_1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    v0_carry_i_2
       (.I0(v_temp2[3]),
        .I1(v_temp3[3]),
        .O(v0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v0_carry_i_3
       (.I0(y_temp3[1]),
        .I1(v_temp2[2]),
        .O(v0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    v0_carry_i_4
       (.I0(y_temp3[0]),
        .I1(v_temp2[1]),
        .O(v0_carry_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry_i_5
       (.I0(v_temp2[5]),
        .I1(v_temp3[5]),
        .I2(v_temp1[5]),
        .I3(v0_carry_i_1_n_0),
        .O(v0_carry_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v0_carry_i_6
       (.I0(v_temp2[4]),
        .I1(v_temp3[4]),
        .I2(v_temp1[4]),
        .I3(v0_carry_i_2_n_0),
        .O(v0_carry_i_6_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    v0_carry_i_7
       (.I0(v_temp2[3]),
        .I1(v_temp3[3]),
        .I2(y_temp3[1]),
        .I3(v_temp2[2]),
        .O(v0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    v0_carry_i_8
       (.I0(y_temp3[0]),
        .I1(v_temp2[1]),
        .I2(v_temp2[2]),
        .I3(y_temp3[1]),
        .O(v0_carry_i_8_n_0));
  FDCE \v_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[10]),
        .Q(yuv_o[2]));
  FDCE \v_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[11]),
        .Q(yuv_o[3]));
  FDCE \v_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[12]),
        .Q(yuv_o[4]));
  FDCE \v_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[13]),
        .Q(yuv_o[5]));
  FDCE \v_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[14]),
        .Q(yuv_o[6]));
  FDCE \v_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[15]),
        .Q(yuv_o[7]));
  FDCE \v_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[8]),
        .Q(yuv_o[0]));
  FDCE \v_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v0[9]),
        .Q(yuv_o[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp10__19_carry
       (.CI(1'b0),
        .CO({v_temp10__19_carry_n_0,v_temp10__19_carry_n_1,v_temp10__19_carry_n_2,v_temp10__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[18:16],1'b0}),
        .O(v_temp10[8:5]),
        .S({v_temp10__19_carry_i_1_n_0,v_temp10__19_carry_i_2_n_0,v_temp10__19_carry_i_3_n_0,v_temp10_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp10__19_carry__0
       (.CI(v_temp10__19_carry_n_0),
        .CO({v_temp10__19_carry__0_n_0,v_temp10__19_carry__0_n_1,v_temp10__19_carry__0_n_2,v_temp10__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[22:19]),
        .O(v_temp10[12:9]),
        .S({v_temp10__19_carry__0_i_1_n_0,v_temp10__19_carry__0_i_2_n_0,v_temp10__19_carry__0_i_3_n_0,v_temp10__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry__0_i_1
       (.I0(rgb_i[22]),
        .I1(v_temp10_carry__1_n_7),
        .O(v_temp10__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry__0_i_2
       (.I0(rgb_i[21]),
        .I1(v_temp10_carry__0_n_4),
        .O(v_temp10__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry__0_i_3
       (.I0(rgb_i[20]),
        .I1(v_temp10_carry__0_n_5),
        .O(v_temp10__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry__0_i_4
       (.I0(rgb_i[19]),
        .I1(v_temp10_carry__0_n_6),
        .O(v_temp10__19_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp10__19_carry__1
       (.CI(v_temp10__19_carry__0_n_0),
        .CO({NLW_v_temp10__19_carry__1_CO_UNCONNECTED[3:1],v_temp10__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_i[23]}),
        .O({NLW_v_temp10__19_carry__1_O_UNCONNECTED[3:2],v_temp10[14:13]}),
        .S({1'b0,1'b0,v_temp10_carry__1_n_5,v_temp10__19_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry__1_i_1
       (.I0(rgb_i[23]),
        .I1(v_temp10_carry__1_n_6),
        .O(v_temp10__19_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry_i_1
       (.I0(rgb_i[18]),
        .I1(v_temp10_carry__0_n_7),
        .O(v_temp10__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry_i_2
       (.I0(rgb_i[17]),
        .I1(v_temp10_carry_n_4),
        .O(v_temp10__19_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp10__19_carry_i_3
       (.I0(rgb_i[16]),
        .I1(v_temp10_carry_n_5),
        .O(v_temp10__19_carry_i_3_n_0));
  CARRY4 v_temp10_carry
       (.CI(1'b0),
        .CO({v_temp10_carry_n_0,v_temp10_carry_n_1,v_temp10_carry_n_2,v_temp10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[17:16],1'b0,1'b1}),
        .O({v_temp10_carry_n_4,v_temp10_carry_n_5,v_temp10_carry_n_6,v_temp10[4]}),
        .S({v_temp10_carry_i_1_n_0,v_temp10_carry_i_2_n_0,v_temp10_carry_i_3_n_0,rgb_i[16]}));
  CARRY4 v_temp10_carry__0
       (.CI(v_temp10_carry_n_0),
        .CO({v_temp10_carry__0_n_0,v_temp10_carry__0_n_1,v_temp10_carry__0_n_2,v_temp10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[21:18]),
        .O({v_temp10_carry__0_n_4,v_temp10_carry__0_n_5,v_temp10_carry__0_n_6,v_temp10_carry__0_n_7}),
        .S({v_temp10_carry__0_i_1_n_0,v_temp10_carry__0_i_2_n_0,v_temp10_carry__0_i_3_n_0,v_temp10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry__0_i_1
       (.I0(rgb_i[21]),
        .I1(rgb_i[23]),
        .O(v_temp10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry__0_i_2
       (.I0(rgb_i[20]),
        .I1(rgb_i[22]),
        .O(v_temp10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry__0_i_3
       (.I0(rgb_i[19]),
        .I1(rgb_i[21]),
        .O(v_temp10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry__0_i_4
       (.I0(rgb_i[18]),
        .I1(rgb_i[20]),
        .O(v_temp10_carry__0_i_4_n_0));
  CARRY4 v_temp10_carry__1
       (.CI(v_temp10_carry__0_n_0),
        .CO({NLW_v_temp10_carry__1_CO_UNCONNECTED[3:2],v_temp10_carry__1_n_2,v_temp10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[23:22]}),
        .O({NLW_v_temp10_carry__1_O_UNCONNECTED[3],v_temp10_carry__1_n_5,v_temp10_carry__1_n_6,v_temp10_carry__1_n_7}),
        .S({1'b0,1'b1,v_temp10_carry__1_i_1_n_0,v_temp10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp10_carry__1_i_1
       (.I0(rgb_i[23]),
        .O(v_temp10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp10_carry__1_i_2
       (.I0(rgb_i[22]),
        .O(v_temp10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry_i_1
       (.I0(rgb_i[17]),
        .I1(rgb_i[19]),
        .O(v_temp10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp10_carry_i_2
       (.I0(rgb_i[16]),
        .I1(rgb_i[18]),
        .O(v_temp10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp10_carry_i_3
       (.I0(rgb_i[17]),
        .O(v_temp10_carry_i_3_n_0));
  FDCE \v_temp1_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[10]),
        .Q(v_temp1[10]));
  FDCE \v_temp1_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[11]),
        .Q(v_temp1[11]));
  FDCE \v_temp1_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[12]),
        .Q(v_temp1[12]));
  FDCE \v_temp1_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[13]),
        .Q(v_temp1[13]));
  FDCE \v_temp1_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[14]),
        .Q(v_temp1[14]));
  FDCE \v_temp1_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[4]),
        .Q(v_temp1[4]));
  FDCE \v_temp1_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[5]),
        .Q(v_temp1[5]));
  FDCE \v_temp1_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[6]),
        .Q(v_temp1[6]));
  FDCE \v_temp1_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[7]),
        .Q(v_temp1[7]));
  FDCE \v_temp1_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[8]),
        .Q(v_temp1[8]));
  FDCE \v_temp1_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp10[9]),
        .Q(v_temp1[9]));
  CARRY4 v_temp20__19_carry
       (.CI(1'b0),
        .CO({v_temp20__19_carry_n_0,v_temp20__19_carry_n_1,v_temp20__19_carry_n_2,v_temp20__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[9:8],1'b0,1'b1}),
        .O({v_temp20__19_carry_n_4,v_temp20__19_carry_n_5,v_temp20__19_carry_n_6,NLW_v_temp20__19_carry_O_UNCONNECTED[0]}),
        .S({v_temp20__19_carry_i_1_n_0,v_temp20__19_carry_i_2_n_0,v_temp20__19_carry_i_3_n_0,rgb_i[8]}));
  CARRY4 v_temp20__19_carry__0
       (.CI(v_temp20__19_carry_n_0),
        .CO({v_temp20__19_carry__0_n_0,v_temp20__19_carry__0_n_1,v_temp20__19_carry__0_n_2,v_temp20__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[13:10]),
        .O({v_temp20__19_carry__0_n_4,v_temp20__19_carry__0_n_5,v_temp20__19_carry__0_n_6,v_temp20__19_carry__0_n_7}),
        .S({v_temp20__19_carry__0_i_1_n_0,v_temp20__19_carry__0_i_2_n_0,v_temp20__19_carry__0_i_3_n_0,v_temp20__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry__0_i_1
       (.I0(rgb_i[13]),
        .I1(rgb_i[15]),
        .O(v_temp20__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry__0_i_2
       (.I0(rgb_i[12]),
        .I1(rgb_i[14]),
        .O(v_temp20__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry__0_i_3
       (.I0(rgb_i[11]),
        .I1(rgb_i[13]),
        .O(v_temp20__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry__0_i_4
       (.I0(rgb_i[10]),
        .I1(rgb_i[12]),
        .O(v_temp20__19_carry__0_i_4_n_0));
  CARRY4 v_temp20__19_carry__1
       (.CI(v_temp20__19_carry__0_n_0),
        .CO({NLW_v_temp20__19_carry__1_CO_UNCONNECTED[3],v_temp20__19_carry__1_n_1,NLW_v_temp20__19_carry__1_CO_UNCONNECTED[1],v_temp20__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[15:14]}),
        .O({NLW_v_temp20__19_carry__1_O_UNCONNECTED[3:2],v_temp20__19_carry__1_n_6,v_temp20__19_carry__1_n_7}),
        .S({1'b0,1'b1,v_temp20__19_carry__1_i_1_n_0,v_temp20__19_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20__19_carry__1_i_1
       (.I0(rgb_i[15]),
        .O(v_temp20__19_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20__19_carry__1_i_2
       (.I0(rgb_i[14]),
        .O(v_temp20__19_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry_i_1
       (.I0(rgb_i[9]),
        .I1(rgb_i[11]),
        .O(v_temp20__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20__19_carry_i_2
       (.I0(rgb_i[8]),
        .I1(rgb_i[10]),
        .O(v_temp20__19_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20__19_carry_i_3
       (.I0(rgb_i[9]),
        .O(v_temp20__19_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp20__41_carry
       (.CI(1'b0),
        .CO({v_temp20__41_carry_n_0,v_temp20__41_carry_n_1,v_temp20__41_carry_n_2,v_temp20__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[8],v_temp20_carry__0_n_7,v_temp20_carry_n_4,v_temp20_carry_n_5}),
        .O(v_temp20[6:3]),
        .S({v_temp20__41_carry_i_1_n_0,v_temp20__41_carry_i_2_n_0,v_temp20__41_carry_i_3_n_0,v_temp20__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp20__41_carry__0
       (.CI(v_temp20__41_carry_n_0),
        .CO({v_temp20__41_carry__0_n_0,v_temp20__41_carry__0_n_1,v_temp20__41_carry__0_n_2,v_temp20__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({v_temp20__41_carry__0_i_1_n_0,v_temp20__41_carry__0_i_2_n_0,v_temp20__41_carry__0_i_3_n_0,v_temp20__41_carry__0_i_4_n_0}),
        .O(v_temp20[10:7]),
        .S({v_temp20__41_carry__0_i_5_n_0,v_temp20__41_carry__0_i_6_n_0,v_temp20__41_carry__0_i_7_n_0,v_temp20__41_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    v_temp20__41_carry__0_i_1
       (.I0(v_temp20__19_carry__0_n_5),
        .I1(v_temp20_carry__1_n_7),
        .I2(rgb_i[11]),
        .O(v_temp20__41_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    v_temp20__41_carry__0_i_2
       (.I0(v_temp20__19_carry__0_n_6),
        .I1(v_temp20_carry__0_n_4),
        .I2(rgb_i[10]),
        .O(v_temp20__41_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    v_temp20__41_carry__0_i_3
       (.I0(v_temp20__19_carry__0_n_7),
        .I1(v_temp20_carry__0_n_5),
        .I2(rgb_i[9]),
        .O(v_temp20__41_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    v_temp20__41_carry__0_i_4
       (.I0(rgb_i[9]),
        .I1(v_temp20__19_carry__0_n_7),
        .I2(v_temp20_carry__0_n_5),
        .O(v_temp20__41_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v_temp20__41_carry__0_i_5
       (.I0(v_temp20__19_carry__0_n_4),
        .I1(v_temp20_carry__1_n_6),
        .I2(rgb_i[12]),
        .I3(v_temp20__41_carry__0_i_1_n_0),
        .O(v_temp20__41_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v_temp20__41_carry__0_i_6
       (.I0(v_temp20__19_carry__0_n_5),
        .I1(v_temp20_carry__1_n_7),
        .I2(rgb_i[11]),
        .I3(v_temp20__41_carry__0_i_2_n_0),
        .O(v_temp20__41_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    v_temp20__41_carry__0_i_7
       (.I0(v_temp20__19_carry__0_n_6),
        .I1(v_temp20_carry__0_n_4),
        .I2(rgb_i[10]),
        .I3(v_temp20__41_carry__0_i_3_n_0),
        .O(v_temp20__41_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    v_temp20__41_carry__0_i_8
       (.I0(v_temp20__19_carry__0_n_7),
        .I1(v_temp20_carry__0_n_5),
        .I2(rgb_i[9]),
        .I3(v_temp20_carry__0_n_6),
        .I4(v_temp20__19_carry_n_4),
        .O(v_temp20__41_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_temp20__41_carry__1
       (.CI(v_temp20__41_carry__0_n_0),
        .CO({NLW_v_temp20__41_carry__1_CO_UNCONNECTED[3],v_temp20__41_carry__1_n_1,v_temp20__41_carry__1_n_2,v_temp20__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v_temp20__41_carry__1_i_1_n_0,v_temp20__41_carry__1_i_2_n_0,v_temp20__41_carry__1_i_3_n_0}),
        .O(v_temp20[14:11]),
        .S({v_temp20__41_carry__1_i_4_n_0,v_temp20__41_carry__1_i_5_n_0,v_temp20__41_carry__1_i_6_n_0,v_temp20__41_carry__1_i_7_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    v_temp20__41_carry__1_i_1
       (.I0(v_temp20_carry__1_n_1),
        .I1(v_temp20__19_carry__1_n_6),
        .I2(rgb_i[14]),
        .O(v_temp20__41_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    v_temp20__41_carry__1_i_2
       (.I0(v_temp20_carry__1_n_1),
        .I1(v_temp20__19_carry__1_n_7),
        .I2(rgb_i[13]),
        .O(v_temp20__41_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    v_temp20__41_carry__1_i_3
       (.I0(v_temp20__19_carry__0_n_4),
        .I1(v_temp20_carry__1_n_6),
        .I2(rgb_i[12]),
        .O(v_temp20__41_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    v_temp20__41_carry__1_i_4
       (.I0(rgb_i[15]),
        .I1(v_temp20__19_carry__1_n_1),
        .I2(v_temp20_carry__1_n_1),
        .O(v_temp20__41_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    v_temp20__41_carry__1_i_5
       (.I0(v_temp20__41_carry__1_i_1_n_0),
        .I1(v_temp20_carry__1_n_1),
        .I2(v_temp20__19_carry__1_n_1),
        .I3(rgb_i[15]),
        .O(v_temp20__41_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    v_temp20__41_carry__1_i_6
       (.I0(v_temp20_carry__1_n_1),
        .I1(v_temp20__19_carry__1_n_6),
        .I2(rgb_i[14]),
        .I3(v_temp20__41_carry__1_i_2_n_0),
        .O(v_temp20__41_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    v_temp20__41_carry__1_i_7
       (.I0(v_temp20_carry__1_n_1),
        .I1(v_temp20__19_carry__1_n_7),
        .I2(rgb_i[13]),
        .I3(v_temp20__41_carry__1_i_3_n_0),
        .O(v_temp20__41_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    v_temp20__41_carry_i_1
       (.I0(v_temp20__19_carry_n_4),
        .I1(v_temp20_carry__0_n_6),
        .I2(rgb_i[8]),
        .O(v_temp20__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp20__41_carry_i_2
       (.I0(v_temp20_carry__0_n_7),
        .I1(v_temp20__19_carry_n_5),
        .O(v_temp20__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp20__41_carry_i_3
       (.I0(v_temp20_carry_n_4),
        .I1(v_temp20__19_carry_n_6),
        .O(v_temp20__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v_temp20__41_carry_i_4
       (.I0(v_temp20_carry_n_5),
        .I1(v_temp20_carry_n_7),
        .O(v_temp20__41_carry_i_4_n_0));
  CARRY4 v_temp20_carry
       (.CI(1'b0),
        .CO({v_temp20_carry_n_0,v_temp20_carry_n_1,v_temp20_carry_n_2,v_temp20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_i[9:8],1'b0,1'b1}),
        .O({v_temp20_carry_n_4,v_temp20_carry_n_5,v_temp20[2],v_temp20_carry_n_7}),
        .S({v_temp20_carry_i_1_n_0,v_temp20_carry_i_2_n_0,v_temp20_carry_i_3_n_0,rgb_i[8]}));
  CARRY4 v_temp20_carry__0
       (.CI(v_temp20_carry_n_0),
        .CO({v_temp20_carry__0_n_0,v_temp20_carry__0_n_1,v_temp20_carry__0_n_2,v_temp20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_i[13:10]),
        .O({v_temp20_carry__0_n_4,v_temp20_carry__0_n_5,v_temp20_carry__0_n_6,v_temp20_carry__0_n_7}),
        .S({v_temp20_carry__0_i_1_n_0,v_temp20_carry__0_i_2_n_0,v_temp20_carry__0_i_3_n_0,v_temp20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry__0_i_1
       (.I0(rgb_i[13]),
        .I1(rgb_i[15]),
        .O(v_temp20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry__0_i_2
       (.I0(rgb_i[12]),
        .I1(rgb_i[14]),
        .O(v_temp20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry__0_i_3
       (.I0(rgb_i[11]),
        .I1(rgb_i[13]),
        .O(v_temp20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry__0_i_4
       (.I0(rgb_i[10]),
        .I1(rgb_i[12]),
        .O(v_temp20_carry__0_i_4_n_0));
  CARRY4 v_temp20_carry__1
       (.CI(v_temp20_carry__0_n_0),
        .CO({NLW_v_temp20_carry__1_CO_UNCONNECTED[3],v_temp20_carry__1_n_1,NLW_v_temp20_carry__1_CO_UNCONNECTED[1],v_temp20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[15:14]}),
        .O({NLW_v_temp20_carry__1_O_UNCONNECTED[3:2],v_temp20_carry__1_n_6,v_temp20_carry__1_n_7}),
        .S({1'b0,1'b1,v_temp20_carry__1_i_1_n_0,v_temp20_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20_carry__1_i_1
       (.I0(rgb_i[15]),
        .O(v_temp20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20_carry__1_i_2
       (.I0(rgb_i[14]),
        .O(v_temp20_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry_i_1
       (.I0(rgb_i[9]),
        .I1(rgb_i[11]),
        .O(v_temp20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    v_temp20_carry_i_2
       (.I0(rgb_i[8]),
        .I1(rgb_i[10]),
        .O(v_temp20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    v_temp20_carry_i_3
       (.I0(rgb_i[9]),
        .O(v_temp20_carry_i_3_n_0));
  FDCE \v_temp2_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[10]),
        .Q(v_temp2[10]));
  FDCE \v_temp2_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[11]),
        .Q(v_temp2[11]));
  FDCE \v_temp2_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[12]),
        .Q(v_temp2[12]));
  FDCE \v_temp2_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[13]),
        .Q(v_temp2[13]));
  FDCE \v_temp2_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[14]),
        .Q(v_temp2[14]));
  FDCE \v_temp2_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[8]),
        .Q(v_temp2[1]));
  FDCE \v_temp2_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[2]),
        .Q(v_temp2[2]));
  FDCE \v_temp2_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[3]),
        .Q(v_temp2[3]));
  FDCE \v_temp2_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[4]),
        .Q(v_temp2[4]));
  FDCE \v_temp2_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[5]),
        .Q(v_temp2[5]));
  FDCE \v_temp2_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[6]),
        .Q(v_temp2[6]));
  FDCE \v_temp2_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[7]),
        .Q(v_temp2[7]));
  FDCE \v_temp2_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[8]),
        .Q(v_temp2[8]));
  FDCE \v_temp2_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp20[9]),
        .Q(v_temp2[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \v_temp3[10]_i_2 
       (.I0(rgb_i[4]),
        .I1(rgb_i[7]),
        .O(\v_temp3[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \v_temp3[10]_i_3 
       (.I0(rgb_i[3]),
        .I1(rgb_i[6]),
        .O(\v_temp3[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \v_temp3[6]_i_2 
       (.I0(rgb_i[2]),
        .I1(rgb_i[5]),
        .O(\v_temp3[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \v_temp3[6]_i_3 
       (.I0(rgb_i[1]),
        .I1(rgb_i[4]),
        .O(\v_temp3[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \v_temp3[6]_i_4 
       (.I0(rgb_i[0]),
        .I1(rgb_i[3]),
        .O(\v_temp3[6]_i_4_n_0 ));
  FDCE \v_temp3_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[10]),
        .Q(v_temp3[10]));
  CARRY4 \v_temp3_reg[10]_i_1 
       (.CI(\v_temp3_reg[6]_i_1_n_0 ),
        .CO({\v_temp3_reg[10]_i_1_n_0 ,\v_temp3_reg[10]_i_1_n_1 ,\v_temp3_reg[10]_i_1_n_2 ,\v_temp3_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[4:3]}),
        .O(v_temp30[10:7]),
        .S({rgb_i[6:5],\v_temp3[10]_i_2_n_0 ,\v_temp3[10]_i_3_n_0 }));
  FDCE \v_temp3_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[11]),
        .Q(v_temp3[11]));
  FDCE \v_temp3_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[12]),
        .Q(v_temp3[12]));
  CARRY4 \v_temp3_reg[12]_i_1 
       (.CI(\v_temp3_reg[10]_i_1_n_0 ),
        .CO({\NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED [3:2],v_temp30[12],\NLW_v_temp3_reg[12]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v_temp3_reg[12]_i_1_O_UNCONNECTED [3:1],v_temp30[11]}),
        .S({1'b0,1'b0,1'b1,rgb_i[7]}));
  FDCE \v_temp3_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[3]),
        .Q(v_temp3[3]));
  FDCE \v_temp3_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[4]),
        .Q(v_temp3[4]));
  FDCE \v_temp3_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[5]),
        .Q(v_temp3[5]));
  FDCE \v_temp3_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[6]),
        .Q(v_temp3[6]));
  CARRY4 \v_temp3_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\v_temp3_reg[6]_i_1_n_0 ,\v_temp3_reg[6]_i_1_n_1 ,\v_temp3_reg[6]_i_1_n_2 ,\v_temp3_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_i[2:0],1'b0}),
        .O(v_temp30[6:3]),
        .S({\v_temp3[6]_i_2_n_0 ,\v_temp3[6]_i_3_n_0 ,\v_temp3[6]_i_4_n_0 ,rgb_i[2]}));
  FDCE \v_temp3_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[7]),
        .Q(v_temp3[7]));
  FDCE \v_temp3_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[8]),
        .Q(v_temp3[8]));
  FDCE \v_temp3_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(v_temp30[9]),
        .Q(v_temp3[9]));
  FDRE \vsync_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(vsync_i),
        .Q(vsync),
        .R(1'b0));
  FDRE \vsync_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(vsync),
        .Q(vsync_o),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0__1_carry
       (.CI(1'b0),
        .CO({y0__1_carry_n_0,y0__1_carry_n_1,y0__1_carry_n_2,y0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0__1_carry_i_1_n_0,y0__1_carry_i_2_n_0,y0__1_carry_i_3_n_0,1'b0}),
        .O(NLW_y0__1_carry_O_UNCONNECTED[3:0]),
        .S({y0__1_carry_i_4_n_0,y0__1_carry_i_5_n_0,y0__1_carry_i_6_n_0,y0__1_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0__1_carry__0
       (.CI(y0__1_carry_n_0),
        .CO({y0__1_carry__0_n_0,y0__1_carry__0_n_1,y0__1_carry__0_n_2,y0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0__1_carry__0_i_1_n_0,y0__1_carry__0_i_2_n_0,y0__1_carry__0_i_3_n_0,y0__1_carry__0_i_4_n_0}),
        .O(NLW_y0__1_carry__0_O_UNCONNECTED[3:0]),
        .S({y0__1_carry__0_i_5_n_0,y0__1_carry__0_i_6_n_0,y0__1_carry__0_i_7_n_0,y0__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__0_i_1
       (.I0(y_temp2[6]),
        .I1(y_temp3[6]),
        .I2(y_temp1[6]),
        .O(y0__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__0_i_2
       (.I0(y_temp2[5]),
        .I1(y_temp3[5]),
        .I2(y_temp1[5]),
        .O(y0__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__0_i_3
       (.I0(y_temp2[4]),
        .I1(y_temp3[4]),
        .I2(y_temp1[4]),
        .O(y0__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__0_i_4
       (.I0(y_temp2[3]),
        .I1(y_temp3[3]),
        .I2(y_temp1[3]),
        .O(y0__1_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__0_i_5
       (.I0(y_temp2[7]),
        .I1(y_temp3[7]),
        .I2(y_temp1[7]),
        .I3(y0__1_carry__0_i_1_n_0),
        .O(y0__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__0_i_6
       (.I0(y_temp2[6]),
        .I1(y_temp3[6]),
        .I2(y_temp1[6]),
        .I3(y0__1_carry__0_i_2_n_0),
        .O(y0__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__0_i_7
       (.I0(y_temp2[5]),
        .I1(y_temp3[5]),
        .I2(y_temp1[5]),
        .I3(y0__1_carry__0_i_3_n_0),
        .O(y0__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__0_i_8
       (.I0(y_temp2[4]),
        .I1(y_temp3[4]),
        .I2(y_temp1[4]),
        .I3(y0__1_carry__0_i_4_n_0),
        .O(y0__1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0__1_carry__1
       (.CI(y0__1_carry__0_n_0),
        .CO({y0__1_carry__1_n_0,y0__1_carry__1_n_1,y0__1_carry__1_n_2,y0__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0__1_carry__1_i_1_n_0,y0__1_carry__1_i_2_n_0,y0__1_carry__1_i_3_n_0,y0__1_carry__1_i_4_n_0}),
        .O({y0__1_carry__1_n_4,y0__1_carry__1_n_5,y0__1_carry__1_n_6,y0__1_carry__1_n_7}),
        .S({y0__1_carry__1_i_5_n_0,y0__1_carry__1_i_6_n_0,y0__1_carry__1_i_7_n_0,y0__1_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__1_i_1
       (.I0(y_temp2[10]),
        .I1(y_temp3[10]),
        .I2(y_temp1[10]),
        .O(y0__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__1_i_2
       (.I0(y_temp2[9]),
        .I1(y_temp3[9]),
        .I2(y_temp1[9]),
        .O(y0__1_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__1_i_3
       (.I0(y_temp2[8]),
        .I1(y_temp3[8]),
        .I2(y_temp1[8]),
        .O(y0__1_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry__1_i_4
       (.I0(y_temp2[7]),
        .I1(y_temp3[7]),
        .I2(y_temp1[7]),
        .O(y0__1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__1_i_5
       (.I0(y0__1_carry__1_i_1_n_0),
        .I1(y_temp3[11]),
        .I2(y_temp2[11]),
        .I3(y_temp1[11]),
        .O(y0__1_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__1_i_6
       (.I0(y_temp2[10]),
        .I1(y_temp3[10]),
        .I2(y_temp1[10]),
        .I3(y0__1_carry__1_i_2_n_0),
        .O(y0__1_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__1_i_7
       (.I0(y_temp2[9]),
        .I1(y_temp3[9]),
        .I2(y_temp1[9]),
        .I3(y0__1_carry__1_i_3_n_0),
        .O(y0__1_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry__1_i_8
       (.I0(y_temp2[8]),
        .I1(y_temp3[8]),
        .I2(y_temp1[8]),
        .I3(y0__1_carry__1_i_4_n_0),
        .O(y0__1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y0__1_carry__2
       (.CI(y0__1_carry__1_n_0),
        .CO({NLW_y0__1_carry__2_CO_UNCONNECTED[3],y0__1_carry__2_n_1,y0__1_carry__2_n_2,y0__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,y0__1_carry__2_i_1_n_0,y0__1_carry__2_i_2_n_0,y0__1_carry__2_i_3_n_0}),
        .O({y0__1_carry__2_n_4,y0__1_carry__2_n_5,y0__1_carry__2_n_6,y0__1_carry__2_n_7}),
        .S({y0__1_carry__2_i_4_n_0,y0__1_carry__2_i_5_n_0,y0__1_carry__2_i_6_n_0,y0__1_carry__2_i_7_n_0}));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    y0__1_carry__2_i_1
       (.I0(y_temp2[13]),
        .I1(y_temp1[13]),
        .I2(y_temp2[12]),
        .I3(y_temp3[12]),
        .O(y0__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    y0__1_carry__2_i_2
       (.I0(y_temp1[12]),
        .I1(y_temp2[12]),
        .I2(y_temp3[12]),
        .O(y0__1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    y0__1_carry__2_i_3
       (.I0(y_temp2[12]),
        .I1(y_temp3[12]),
        .I2(y_temp1[12]),
        .O(y0__1_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h0F7878F0)) 
    y0__1_carry__2_i_4
       (.I0(y_temp2[13]),
        .I1(y_temp1[13]),
        .I2(y_temp2[15]),
        .I3(y_temp2[14]),
        .I4(y_temp1[14]),
        .O(y0__1_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    y0__1_carry__2_i_5
       (.I0(y0__1_carry__2_i_1_n_0),
        .I1(y_temp1[14]),
        .I2(y_temp2[14]),
        .I3(y_temp2[13]),
        .I4(y_temp1[13]),
        .O(y0__1_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT5 #(
    .INIT(32'h66699996)) 
    y0__1_carry__2_i_6
       (.I0(y_temp2[13]),
        .I1(y_temp1[13]),
        .I2(y_temp2[12]),
        .I3(y_temp3[12]),
        .I4(y0__1_carry__2_i_2_n_0),
        .O(y0__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    y0__1_carry__2_i_7
       (.I0(y_temp1[12]),
        .I1(y_temp3[12]),
        .I2(y_temp2[12]),
        .I3(y_temp1[11]),
        .I4(y_temp3[11]),
        .I5(y_temp2[11]),
        .O(y0__1_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry_i_1
       (.I0(y_temp2[2]),
        .I1(y_temp3[2]),
        .I2(y_temp1[2]),
        .O(y0__1_carry_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y0__1_carry_i_2
       (.I0(y_temp2[1]),
        .I1(y_temp3[1]),
        .I2(y_temp1[1]),
        .O(y0__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    y0__1_carry_i_3
       (.I0(v_temp2[1]),
        .I1(y_temp3[0]),
        .O(y0__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry_i_4
       (.I0(y_temp2[3]),
        .I1(y_temp3[3]),
        .I2(y_temp1[3]),
        .I3(y0__1_carry_i_1_n_0),
        .O(y0__1_carry_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry_i_5
       (.I0(y_temp2[2]),
        .I1(y_temp3[2]),
        .I2(y_temp1[2]),
        .I3(y0__1_carry_i_2_n_0),
        .O(y0__1_carry_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y0__1_carry_i_6
       (.I0(y_temp2[1]),
        .I1(y_temp3[1]),
        .I2(y_temp1[1]),
        .I3(y0__1_carry_i_3_n_0),
        .O(y0__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    y0__1_carry_i_7
       (.I0(v_temp2[1]),
        .I1(y_temp3[0]),
        .O(y0__1_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \y[15]_i_1 
       (.I0(rst_n_i),
        .O(\y[15]_i_1_n_0 ));
  FDCE \y_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__1_n_5),
        .Q(yuv_o[18]));
  FDCE \y_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__1_n_4),
        .Q(yuv_o[19]));
  FDCE \y_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__2_n_7),
        .Q(yuv_o[20]));
  FDCE \y_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__2_n_6),
        .Q(yuv_o[21]));
  FDCE \y_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__2_n_5),
        .Q(yuv_o[22]));
  FDCE \y_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__2_n_4),
        .Q(yuv_o[23]));
  FDCE \y_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__1_n_7),
        .Q(yuv_o[16]));
  FDCE \y_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y0__1_carry__1_n_6),
        .Q(yuv_o[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \y_temp1[8]_i_2 
       (.I0(rgb_i[18]),
        .I1(rgb_i[23]),
        .O(\y_temp1[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_temp1[8]_i_3 
       (.I0(rgb_i[17]),
        .I1(rgb_i[22]),
        .O(\y_temp1[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_temp1[8]_i_4 
       (.I0(rgb_i[16]),
        .I1(rgb_i[21]),
        .O(\y_temp1[8]_i_4_n_0 ));
  FDCE \y_temp1_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[10]),
        .Q(y_temp1[10]));
  FDCE \y_temp1_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[11]),
        .Q(y_temp1[11]));
  FDCE \y_temp1_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[12]),
        .Q(y_temp1[12]));
  CARRY4 \y_temp1_reg[12]_i_1 
       (.CI(\y_temp1_reg[8]_i_1_n_0 ),
        .CO({\y_temp1_reg[12]_i_1_n_0 ,\y_temp1_reg[12]_i_1_n_1 ,\y_temp1_reg[12]_i_1_n_2 ,\y_temp1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_temp10[12:9]),
        .S(rgb_i[22:19]));
  FDCE \y_temp1_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[13]),
        .Q(y_temp1[13]));
  FDCE \y_temp1_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[14]),
        .Q(y_temp1[14]));
  CARRY4 \y_temp1_reg[14]_i_1 
       (.CI(\y_temp1_reg[12]_i_1_n_0 ),
        .CO({\NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED [3:2],y_temp10[14],\NLW_y_temp1_reg[14]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_temp1_reg[14]_i_1_O_UNCONNECTED [3:1],y_temp10[13]}),
        .S({1'b0,1'b0,1'b1,rgb_i[23]}));
  FDCE \y_temp1_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[16]),
        .Q(y_temp1[1]));
  FDCE \y_temp1_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[17]),
        .Q(y_temp1[2]));
  FDCE \y_temp1_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[18]),
        .Q(y_temp1[3]));
  FDCE \y_temp1_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[19]),
        .Q(y_temp1[4]));
  FDCE \y_temp1_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[5]),
        .Q(y_temp1[5]));
  FDCE \y_temp1_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[6]),
        .Q(y_temp1[6]));
  FDCE \y_temp1_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[7]),
        .Q(y_temp1[7]));
  FDCE \y_temp1_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[8]),
        .Q(y_temp1[8]));
  CARRY4 \y_temp1_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\y_temp1_reg[8]_i_1_n_0 ,\y_temp1_reg[8]_i_1_n_1 ,\y_temp1_reg[8]_i_1_n_2 ,\y_temp1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_i[18:16],1'b0}),
        .O(y_temp10[8:5]),
        .S({\y_temp1[8]_i_2_n_0 ,\y_temp1[8]_i_3_n_0 ,\y_temp1[8]_i_4_n_0 ,rgb_i[20]}));
  FDCE \y_temp1_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp10[9]),
        .Q(y_temp1[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \y_temp2[9]_i_2 
       (.I0(rgb_i[8]),
        .I1(rgb_i[15]),
        .O(\y_temp2[9]_i_2_n_0 ));
  FDCE \y_temp2_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[10]),
        .Q(y_temp2[10]));
  FDCE \y_temp2_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[11]),
        .Q(y_temp2[11]));
  FDCE \y_temp2_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[12]),
        .Q(y_temp2[12]));
  FDCE \y_temp2_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[13]),
        .Q(y_temp2[13]));
  CARRY4 \y_temp2_reg[13]_i_1 
       (.CI(\y_temp2_reg[9]_i_1_n_0 ),
        .CO({\y_temp2_reg[13]_i_1_n_0 ,\y_temp2_reg[13]_i_1_n_1 ,\y_temp2_reg[13]_i_1_n_2 ,\y_temp2_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_temp20[13:10]),
        .S(rgb_i[14:11]));
  FDCE \y_temp2_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[14]),
        .Q(y_temp2[14]));
  FDCE \y_temp2_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[15]),
        .Q(y_temp2[15]));
  CARRY4 \y_temp2_reg[15]_i_1 
       (.CI(\y_temp2_reg[13]_i_1_n_0 ),
        .CO({\NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED [3:2],y_temp20[15],\NLW_y_temp2_reg[15]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_temp2_reg[15]_i_1_O_UNCONNECTED [3:1],y_temp20[14]}),
        .S({1'b0,1'b0,1'b1,rgb_i[15]}));
  FDCE \y_temp2_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[9]),
        .Q(y_temp2[1]));
  FDCE \y_temp2_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[10]),
        .Q(y_temp2[2]));
  FDCE \y_temp2_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[11]),
        .Q(y_temp2[3]));
  FDCE \y_temp2_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[12]),
        .Q(y_temp2[4]));
  FDCE \y_temp2_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[13]),
        .Q(y_temp2[5]));
  FDCE \y_temp2_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[6]),
        .Q(y_temp2[6]));
  FDCE \y_temp2_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[7]),
        .Q(y_temp2[7]));
  FDCE \y_temp2_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[8]),
        .Q(y_temp2[8]));
  FDCE \y_temp2_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp20[9]),
        .Q(y_temp2[9]));
  CARRY4 \y_temp2_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\y_temp2_reg[9]_i_1_n_0 ,\y_temp2_reg[9]_i_1_n_1 ,\y_temp2_reg[9]_i_1_n_2 ,\y_temp2_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_i[8],1'b0}),
        .O(y_temp20[9:6]),
        .S({rgb_i[10:9],\y_temp2[9]_i_2_n_0 ,rgb_i[14]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_temp30_carry
       (.CI(1'b0),
        .CO({y_temp30_carry_n_0,y_temp30_carry_n_1,y_temp30_carry_n_2,y_temp30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_temp30_carry_i_1_n_0,y_temp30_carry_i_2_n_0,y_temp30_carry_i_3_n_0,1'b0}),
        .O(y_temp30[6:3]),
        .S({y_temp30_carry_i_4_n_0,y_temp30_carry_i_5_n_0,y_temp30_carry_i_6_n_0,y_temp30_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_temp30_carry__0
       (.CI(y_temp30_carry_n_0),
        .CO({y_temp30_carry__0_n_0,y_temp30_carry__0_n_1,y_temp30_carry__0_n_2,y_temp30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y_temp30_carry__0_i_1_n_0,y_temp30_carry__0_i_2_n_0,y_temp30_carry__0_i_3_n_0,y_temp30_carry__0_i_4_n_0}),
        .O(y_temp30[10:7]),
        .S({y_temp30_carry__0_i_5_n_0,y_temp30_carry__0_i_6_n_0,y_temp30_carry__0_i_7_n_0,y_temp30_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    y_temp30_carry__0_i_1
       (.I0(rgb_i[4]),
        .I1(rgb_i[6]),
        .O(y_temp30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y_temp30_carry__0_i_2
       (.I0(rgb_i[3]),
        .I1(rgb_i[5]),
        .O(y_temp30_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_temp30_carry__0_i_3
       (.I0(rgb_i[4]),
        .I1(rgb_i[7]),
        .I2(rgb_i[2]),
        .O(y_temp30_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_temp30_carry__0_i_4
       (.I0(rgb_i[3]),
        .I1(rgb_i[6]),
        .I2(rgb_i[1]),
        .O(y_temp30_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    y_temp30_carry__0_i_5
       (.I0(rgb_i[6]),
        .I1(rgb_i[4]),
        .I2(rgb_i[7]),
        .I3(rgb_i[5]),
        .O(y_temp30_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    y_temp30_carry__0_i_6
       (.I0(rgb_i[5]),
        .I1(rgb_i[3]),
        .I2(rgb_i[6]),
        .I3(rgb_i[4]),
        .O(y_temp30_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    y_temp30_carry__0_i_7
       (.I0(rgb_i[2]),
        .I1(rgb_i[7]),
        .I2(rgb_i[4]),
        .I3(rgb_i[5]),
        .I4(rgb_i[3]),
        .O(y_temp30_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_temp30_carry__0_i_8
       (.I0(rgb_i[1]),
        .I1(rgb_i[6]),
        .I2(rgb_i[3]),
        .I3(rgb_i[4]),
        .I4(rgb_i[7]),
        .I5(rgb_i[2]),
        .O(y_temp30_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_temp30_carry__1
       (.CI(y_temp30_carry__0_n_0),
        .CO({NLW_y_temp30_carry__1_CO_UNCONNECTED[3:1],y_temp30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,y_temp30_carry__1_i_1_n_0}),
        .O({NLW_y_temp30_carry__1_O_UNCONNECTED[3:2],y_temp30[12:11]}),
        .S({1'b0,1'b0,y_temp30_carry__1_i_2_n_0,y_temp30_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    y_temp30_carry__1_i_1
       (.I0(rgb_i[5]),
        .I1(rgb_i[7]),
        .O(y_temp30_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_temp30_carry__1_i_2
       (.I0(rgb_i[6]),
        .I1(rgb_i[7]),
        .O(y_temp30_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    y_temp30_carry__1_i_3
       (.I0(rgb_i[7]),
        .I1(rgb_i[5]),
        .I2(rgb_i[6]),
        .O(y_temp30_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_temp30_carry_i_1
       (.I0(rgb_i[2]),
        .I1(rgb_i[5]),
        .I2(rgb_i[0]),
        .O(y_temp30_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    y_temp30_carry_i_2
       (.I0(rgb_i[2]),
        .I1(rgb_i[5]),
        .I2(rgb_i[0]),
        .O(y_temp30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y_temp30_carry_i_3
       (.I0(rgb_i[3]),
        .I1(rgb_i[0]),
        .O(y_temp30_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_temp30_carry_i_4
       (.I0(rgb_i[0]),
        .I1(rgb_i[5]),
        .I2(rgb_i[2]),
        .I3(rgb_i[3]),
        .I4(rgb_i[6]),
        .I5(rgb_i[1]),
        .O(y_temp30_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    y_temp30_carry_i_5
       (.I0(rgb_i[2]),
        .I1(rgb_i[5]),
        .I2(rgb_i[0]),
        .I3(rgb_i[1]),
        .I4(rgb_i[4]),
        .O(y_temp30_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    y_temp30_carry_i_6
       (.I0(rgb_i[0]),
        .I1(rgb_i[3]),
        .I2(rgb_i[4]),
        .I3(rgb_i[1]),
        .O(y_temp30_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_temp30_carry_i_7
       (.I0(rgb_i[0]),
        .I1(rgb_i[3]),
        .O(y_temp30_carry_i_7_n_0));
  FDCE \y_temp3_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[0]),
        .Q(y_temp3[0]));
  FDCE \y_temp3_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[10]),
        .Q(y_temp3[10]));
  FDCE \y_temp3_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[11]),
        .Q(y_temp3[11]));
  FDCE \y_temp3_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[12]),
        .Q(y_temp3[12]));
  FDCE \y_temp3_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[1]),
        .Q(y_temp3[1]));
  FDCE \y_temp3_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(rgb_i[2]),
        .Q(y_temp3[2]));
  FDCE \y_temp3_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[3]),
        .Q(y_temp3[3]));
  FDCE \y_temp3_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[4]),
        .Q(y_temp3[4]));
  FDCE \y_temp3_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[5]),
        .Q(y_temp3[5]));
  FDCE \y_temp3_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[6]),
        .Q(y_temp3[6]));
  FDCE \y_temp3_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[7]),
        .Q(y_temp3[7]));
  FDCE \y_temp3_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[8]),
        .Q(y_temp3[8]));
  FDCE \y_temp3_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\y[15]_i_1_n_0 ),
        .D(y_temp30[9]),
        .Q(y_temp3[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
