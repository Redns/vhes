// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Apr 29 17:22:40 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Project/xk265/xk265/xk265.gen/sources_1/bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0_stub.v
// Design      : fdma_mig_ddr_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module fdma_mig_ddr_clk_wiz_0_0(clk_200M_o, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_200M_o,resetn,locked,clk_in1" */;
  output clk_200M_o;
  input resetn;
  output locked;
  input clk_in1;
endmodule
