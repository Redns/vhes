//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Apr 30 02:48:09 2023
//Host        : JingDevice running 64-bit major release  (build 9200)
//Command     : generate_target fdma_mig_ddr_wrapper.bd
//Design      : fdma_mig_ddr_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fdma_mig_ddr_wrapper
   (DDR3_o_addr,
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
    DDR3_o_we_n,
    FDMA_S_i_fdma_raddr,
    FDMA_S_i_fdma_rareq,
    FDMA_S_i_fdma_rbusy,
    FDMA_S_i_fdma_rdata,
    FDMA_S_i_fdma_rready,
    FDMA_S_i_fdma_rsize,
    FDMA_S_i_fdma_rvalid,
    FDMA_S_i_fdma_waddr,
    FDMA_S_i_fdma_wareq,
    FDMA_S_i_fdma_wbusy,
    FDMA_S_i_fdma_wdata,
    FDMA_S_i_fdma_wready,
    FDMA_S_i_fdma_wsize,
    FDMA_S_i_fdma_wvalid,
    clk_100M_i,
    init_calib_complete_o,
    ui_clk_200M_o);
  output [14:0]DDR3_o_addr;
  output [2:0]DDR3_o_ba;
  output DDR3_o_cas_n;
  output [0:0]DDR3_o_ck_n;
  output [0:0]DDR3_o_ck_p;
  output [0:0]DDR3_o_cke;
  output [0:0]DDR3_o_cs_n;
  output [3:0]DDR3_o_dm;
  inout [31:0]DDR3_o_dq;
  inout [3:0]DDR3_o_dqs_n;
  inout [3:0]DDR3_o_dqs_p;
  output [0:0]DDR3_o_odt;
  output DDR3_o_ras_n;
  output DDR3_o_reset_n;
  output DDR3_o_we_n;
  input [31:0]FDMA_S_i_fdma_raddr;
  input FDMA_S_i_fdma_rareq;
  output FDMA_S_i_fdma_rbusy;
  output [127:0]FDMA_S_i_fdma_rdata;
  input FDMA_S_i_fdma_rready;
  input [15:0]FDMA_S_i_fdma_rsize;
  output FDMA_S_i_fdma_rvalid;
  input [31:0]FDMA_S_i_fdma_waddr;
  input FDMA_S_i_fdma_wareq;
  output FDMA_S_i_fdma_wbusy;
  input [127:0]FDMA_S_i_fdma_wdata;
  input FDMA_S_i_fdma_wready;
  input [15:0]FDMA_S_i_fdma_wsize;
  output FDMA_S_i_fdma_wvalid;
  input clk_100M_i;
  output init_calib_complete_o;
  output ui_clk_200M_o;

  wire [14:0]DDR3_o_addr;
  wire [2:0]DDR3_o_ba;
  wire DDR3_o_cas_n;
  wire [0:0]DDR3_o_ck_n;
  wire [0:0]DDR3_o_ck_p;
  wire [0:0]DDR3_o_cke;
  wire [0:0]DDR3_o_cs_n;
  wire [3:0]DDR3_o_dm;
  wire [31:0]DDR3_o_dq;
  wire [3:0]DDR3_o_dqs_n;
  wire [3:0]DDR3_o_dqs_p;
  wire [0:0]DDR3_o_odt;
  wire DDR3_o_ras_n;
  wire DDR3_o_reset_n;
  wire DDR3_o_we_n;
  wire [31:0]FDMA_S_i_fdma_raddr;
  wire FDMA_S_i_fdma_rareq;
  wire FDMA_S_i_fdma_rbusy;
  wire [127:0]FDMA_S_i_fdma_rdata;
  wire FDMA_S_i_fdma_rready;
  wire [15:0]FDMA_S_i_fdma_rsize;
  wire FDMA_S_i_fdma_rvalid;
  wire [31:0]FDMA_S_i_fdma_waddr;
  wire FDMA_S_i_fdma_wareq;
  wire FDMA_S_i_fdma_wbusy;
  wire [127:0]FDMA_S_i_fdma_wdata;
  wire FDMA_S_i_fdma_wready;
  wire [15:0]FDMA_S_i_fdma_wsize;
  wire FDMA_S_i_fdma_wvalid;
  wire clk_100M_i;
  wire init_calib_complete_o;
  wire ui_clk_200M_o;

  fdma_mig_ddr fdma_mig_ddr_i
       (.DDR3_o_addr(DDR3_o_addr),
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
        .DDR3_o_we_n(DDR3_o_we_n),
        .FDMA_S_i_fdma_raddr(FDMA_S_i_fdma_raddr),
        .FDMA_S_i_fdma_rareq(FDMA_S_i_fdma_rareq),
        .FDMA_S_i_fdma_rbusy(FDMA_S_i_fdma_rbusy),
        .FDMA_S_i_fdma_rdata(FDMA_S_i_fdma_rdata),
        .FDMA_S_i_fdma_rready(FDMA_S_i_fdma_rready),
        .FDMA_S_i_fdma_rsize(FDMA_S_i_fdma_rsize),
        .FDMA_S_i_fdma_rvalid(FDMA_S_i_fdma_rvalid),
        .FDMA_S_i_fdma_waddr(FDMA_S_i_fdma_waddr),
        .FDMA_S_i_fdma_wareq(FDMA_S_i_fdma_wareq),
        .FDMA_S_i_fdma_wbusy(FDMA_S_i_fdma_wbusy),
        .FDMA_S_i_fdma_wdata(FDMA_S_i_fdma_wdata),
        .FDMA_S_i_fdma_wready(FDMA_S_i_fdma_wready),
        .FDMA_S_i_fdma_wsize(FDMA_S_i_fdma_wsize),
        .FDMA_S_i_fdma_wvalid(FDMA_S_i_fdma_wvalid),
        .clk_100M_i(clk_100M_i),
        .init_calib_complete_o(init_calib_complete_o),
        .ui_clk_200M_o(ui_clk_200M_o));
endmodule