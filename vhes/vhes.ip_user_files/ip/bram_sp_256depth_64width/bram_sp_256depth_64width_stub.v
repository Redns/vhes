// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jun  7 22:23:00 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Project/vhes/vhes/vhes.gen/sources_1/ip/bram_sp_256depth_64width/bram_sp_256depth_64width_stub.v
// Design      : bram_sp_256depth_64width
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module bram_sp_256depth_64width(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[7:0],dina[63:0],clkb,addrb[7:0],doutb[63:0]" */;
  input clka;
  input [0:0]wea;
  input [7:0]addra;
  input [63:0]dina;
  input clkb;
  input [7:0]addrb;
  output [63:0]doutb;
endmodule
