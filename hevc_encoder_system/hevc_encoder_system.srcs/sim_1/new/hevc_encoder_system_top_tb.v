`timescale 1ns / 1ps

`include "./hevc_encoder_system.srcs/sources_1/new/enc_core/rtl/enc_defines.v"

module hevc_encoder_system_top_tb;
    /* 系统信号 */
    reg rst_n;
    reg clk_100M;
    /* HDMI 行场同步信号 */
    reg pclk;
    reg hsync;
    reg vsync;
    reg [23:0] rgb;
    reg de;
    /* HEVC 码流输出 */ 
    reg bs_valid;
    reg [7:0] bs_data;
    /* DDR 相关信号 */
    reg [14:0]DDR3_o_addr;
    reg [2:0]DDR3_o_ba;
    reg DDR3_o_cas_n;
    reg [0:0]DDR3_o_ck_n;
    reg [0:0]DDR3_o_ck_p;
    reg [0:0]DDR3_o_cke;
    reg [0:0]DDR3_o_cs_n;
    reg [3:0]DDR3_o_dm;
    reg [31:0]DDR3_o_dq;
    reg [3:0]DDR3_o_dqs_n;
    reg [3:0]DDR3_o_dqs_p;
    reg [0:0]DDR3_o_odt;
    reg DDR3_o_ras_n;
    reg DDR3_o_reset_n;
    reg DDR3_o_we_n;



    hevc_encoder_system_top hevc_encoder_system_top(
        .rst_n_i(rst_n),
        .clk_100M_i(clk_100M),
        .pclk_i(pclk),
        .hsync_i(hsync),
        .vsync_i(vsync),
        .rgb_i(rgb),
        .de_i(de),
        .bs_valid_o(bs_valid),
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
