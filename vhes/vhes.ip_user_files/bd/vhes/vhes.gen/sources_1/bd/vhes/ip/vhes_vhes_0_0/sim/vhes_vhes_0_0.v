// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:vhes:1.0
// IP Revision: 6

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vhes_vhes_0_0 (
  rst_n_i,
  clk_100M_i,
  rst_done_o,
  sil_sda,
  sil_scl,
  pclk_i,
  hsync_i,
  vsync_i,
  rgb_i,
  de_i,
  bs_rd_clk_i,
  bs_valid_o,
  bs_data_o,
  DDR3_o_addr,
  DDR3_o_ba,
  DDR3_o_cas_n,
  DDR3_o_ck_n,
  DDR3_o_ck_p,
  DDR3_o_cke,
  DDR3_o_cs_n,
  DDR3_o_dm,
  DDR3_o_dq,
  DDR3_o_dqs_n,
  DDR3_o_dqs_p,
  DDR3_o_odt,
  DDR3_o_ras_n,
  DDR3_o_reset_n,
  DDR3_o_we_n
);

(* X_INTERFACE_INFO = "xilinx.com:user:SYS_SIG:1.0 SYS rst_n_i" *)
input wire rst_n_i;
(* X_INTERFACE_INFO = "xilinx.com:user:SYS_SIG:1.0 SYS clk_100M_i" *)
input wire clk_100M_i;
output wire rst_done_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_SIL9013 SDA_T" *)
inout wire sil_sda;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_SIL9013 SCL_T" *)
output wire sil_scl;
(* X_INTERFACE_INFO = "xilinx.com:user:HDMI:1.0 HDMI pclk_i" *)
input wire pclk_i;
(* X_INTERFACE_INFO = "xilinx.com:user:HDMI:1.0 HDMI hsync_i" *)
input wire hsync_i;
(* X_INTERFACE_INFO = "xilinx.com:user:HDMI:1.0 HDMI vsync_i" *)
input wire vsync_i;
(* X_INTERFACE_INFO = "xilinx.com:user:HDMI:1.0 HDMI rgb_i" *)
input wire [23 : 0] rgb_i;
(* X_INTERFACE_INFO = "xilinx.com:user:HDMI:1.0 HDMI de_i" *)
input wire de_i;
(* X_INTERFACE_INFO = "xilinx.com:user:H265_BS:1.0 BS bs_rd_clk_i" *)
input wire bs_rd_clk_i;
(* X_INTERFACE_INFO = "xilinx.com:user:H265_BS:1.0 BS bs_valid_o" *)
output wire bs_valid_o;
(* X_INTERFACE_INFO = "xilinx.com:user:H265_BS:1.0 BS bs_data_o" *)
output wire [31 : 0] bs_data_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL ADDR" *)
output wire [14 : 0] DDR3_o_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL BA" *)
output wire [2 : 0] DDR3_o_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL CAS_N" *)
output wire DDR3_o_cas_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL CK_N" *)
output wire [0 : 0] DDR3_o_ck_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL CK_P" *)
output wire [0 : 0] DDR3_o_ck_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL CKE" *)
output wire [0 : 0] DDR3_o_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL CS_N" *)
output wire [0 : 0] DDR3_o_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL DM" *)
output wire [3 : 0] DDR3_o_dm;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL DQ" *)
inout wire [31 : 0] DDR3_o_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL DQS_N" *)
inout wire [3 : 0] DDR3_o_dqs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL DQS_P" *)
inout wire [3 : 0] DDR3_o_dqs_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL ODT" *)
output wire [0 : 0] DDR3_o_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL RAS_N" *)
output wire DDR3_o_ras_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL RESET_N" *)
output wire DDR3_o_reset_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_PL, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_PL WE_N" *)
output wire DDR3_o_we_n;

  vhes_top inst (
    .rst_n_i(rst_n_i),
    .clk_100M_i(clk_100M_i),
    .rst_done_o(rst_done_o),
    .sil_sda(sil_sda),
    .sil_scl(sil_scl),
    .pclk_i(pclk_i),
    .hsync_i(hsync_i),
    .vsync_i(vsync_i),
    .rgb_i(rgb_i),
    .de_i(de_i),
    .bs_rd_clk_i(bs_rd_clk_i),
    .bs_valid_o(bs_valid_o),
    .bs_data_o(bs_data_o),
    .DDR3_o_addr(DDR3_o_addr),
    .DDR3_o_ba(DDR3_o_ba),
    .DDR3_o_cas_n(DDR3_o_cas_n),
    .DDR3_o_ck_n(DDR3_o_ck_n),
    .DDR3_o_ck_p(DDR3_o_ck_p),
    .DDR3_o_cke(DDR3_o_cke),
    .DDR3_o_cs_n(DDR3_o_cs_n),
    .DDR3_o_dm(DDR3_o_dm),
    .DDR3_o_dq(DDR3_o_dq),
    .DDR3_o_dqs_n(DDR3_o_dqs_n),
    .DDR3_o_dqs_p(DDR3_o_dqs_p),
    .DDR3_o_odt(DDR3_o_odt),
    .DDR3_o_ras_n(DDR3_o_ras_n),
    .DDR3_o_reset_n(DDR3_o_reset_n),
    .DDR3_o_we_n(DDR3_o_we_n)
  );
endmodule
