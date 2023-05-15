`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/11 00:39:54
// Design Name: 
// Module Name: vhes_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vhes_top(
    /* HDMI 信号 */ 
    input pclk_i,                                   // 像素时钟（1080P@60fps：148.5MHz）
    input hsync_i,                                  // 行同步信号
    input vsync_i,                                  // 场同步信号
    input [23:0] rgb_i,                             // RGB888 格式像素数据
    input de_i,                                     // RGB888 格式像素数据有效标志
    /* HDMI 解析芯片 SII9011 配置信号 */ 
    inout sii_sda,                                  // SII9011 IIC 数据线
    inout sii_scl,                                  // sii9011 IIC 时钟线
    output sii_rst_n,                               // SII9011 复位信号
    /* PL DDR 相关信号 */ 
    output [14:0]DDR_PL_addr,
    output [2:0]DDR_PL_ba,
    output DDR_PL_cas_n,
    output [0:0]DDR_PL_ck_n,
    output [0:0]DDR_PL_ck_p,
    output [0:0]DDR_PL_cke,
    output [0:0]DDR_PL_cs_n,
    output [3:0]DDR_PL_dm,
    inout [31:0]DDR_PL_dq,
    inout [3:0]DDR_PL_dqs_n,
    inout [3:0]DDR_PL_dqs_p,
    output [0:0]DDR_PL_odt,
    output DDR_PL_ras_n,
    output DDR_PL_reset_n,
    output DDR_PL_we_n,
    /* PS DDR 相关信号 */ 
    inout [14:0]DDR_PS_addr,
    inout [2:0]DDR_PS_ba,
    inout DDR_PS_cas_n,
    inout DDR_PS_ck_n,
    inout DDR_PS_ck_p,
    inout DDR_PS_cke,
    inout DDR_PS_cs_n,
    inout [3:0]DDR_PS_dm,
    inout [31:0]DDR_PS_dq,
    inout [3:0]DDR_PS_dqs_n,
    inout [3:0]DDR_PS_dqs_p,
    inout DDR_PS_odt,
    inout DDR_PS_ras_n,
    inout DDR_PS_reset_n,
    inout DDR_PS_we_n,
    /* PS FIXED IO */ 
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb
);

/************************** 信号线定义 *************************/
    wire clk_100M;
    wire vhes_core_rst_n;
    wire vhes_core_rst_done;

    wire hevc_bs_valid;
    wire [31:0] hevc_bs_data;

    vhes_core_top#
    (
        .FRAME_WIDTH(1920),
        .FRAME_HEIGHT(1080),
        .INITIAL_QP(20),
        .GOP_LENGTH(1),
        .ENABLE_IINP(0),
        .ENABLE_DB(0),
        .ENABLE_SAO(0),
        .POSI4x4BIT(0)
    ) vhes_core_top
    (
        .rst_n_i(vhes_core_rst_n),
        .clk_100M_i(clk_100M),
        .rst_done_o(vhes_core_rst_done),
        .pclk_i(pclk_i),
        .hsync_i(hsync_i),
        .vsync_i(vsync_i),
        .rgb_i(rgb_i),
        .de_i(de_i),
        .bs_rd_clk_i(clk_100M),
        .bs_valid_o(hevc_bs_valid),
        .bs_data_o(hevc_bs_data),
        .DDR_PL_addr(DDR_PL_addr),
        .DDR_PL_ba(DDR_PL_ba),
        .DDR_PL_cas_n(DDR_PL_cas_n),
        .DDR_PL_ck_n(DDR_PL_ck_n),
        .DDR_PL_ck_p(DDR_PL_ck_p),
        .DDR_PL_cke(DDR_PL_cke),
        .DDR_PL_cs_n(DDR_PL_cs_n),
        .DDR_PL_dm(DDR_PL_dm),
        .DDR_PL_dq(DDR_PL_dq),
        .DDR_PL_dqs_n(DDR_PL_dqs_n),
        .DDR_PL_dqs_p(DDR_PL_dqs_p),
        .DDR_PL_odt(DDR_PL_odt),
        .DDR_PL_ras_n(DDR_PL_ras_n),
        .DDR_PL_reset_n(DDR_PL_reset_n),
        .DDR_PL_we_n(DDR_PL_we_n)
    );

    system_wrapper sys_wrapper(
        .DDR_PS_addr(DDR_PS_addr),
        .DDR_PS_ba(DDR_PS_ba),
        .DDR_PS_cas_n(DDR_PS_cas_n),
        .DDR_PS_ck_n(DDR_PS_ck_n),
        .DDR_PS_ck_p(DDR_PS_ck_p),
        .DDR_PS_cke(DDR_PS_cke),
        .DDR_PS_cs_n(DDR_PS_cs_n),
        .DDR_PS_dm(DDR_PS_dm),
        .DDR_PS_dq(DDR_PS_dq),
        .DDR_PS_dqs_n(DDR_PS_dqs_n),
        .DDR_PS_dqs_p(DDR_PS_dqs_p),
        .DDR_PS_odt(DDR_PS_odt),
        .DDR_PS_ras_n(DDR_PS_ras_n),
        .DDR_PS_reset_n(DDR_PS_reset_n),
        .DDR_PS_we_n(DDR_PS_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .axis_transform_data_i(hevc_bs_data),
        .axis_transform_en_i(hevc_bs_valid),
        .axis_transform_start_i(vhes_core_rst_done),
        .clk_100M_o(clk_100M),
        .rst_n_o(vhes_core_rst_n),
        .sii_scl_io(sii_scl),
        .sii_sda_io(sii_sda),
        .sii_rst_n_o(sii_rst_n)
    );

endmodule
