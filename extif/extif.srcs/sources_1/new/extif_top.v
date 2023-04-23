`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/20 19:47:07
// Design Name: 
// Module Name: extif_top
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


module extif_top(
    // 输入信号
    input rst_n_i,                      // 复位信号
    input clk_100M_i,                   // 100MHz 时钟信号输入
    // YUV 视频源输入
    input piexl_clk_i,                  // 像素时钟输入
    input [23:0] yuv_i,                 // YUV 像素输入
    input hsync_i,                      // 行同步信号输入
    input vsync_i,                      // 场同步信号输入
    input de_i,                         // 像素信号有效标志输入
    // HEVC 码流输出
    output bs_valid_o,                  // 码流有效标志输出
    output [7:0] bs_data_o,             // 码流数据（LCU 裸流）
    // DDR 信号线
    output [14:0]DDR3_o_addr,
    output [2:0]DDR3_o_ba,
    output DDR3_o_cas_n,
    output [0:0]DDR3_o_ck_n,
    output [0:0]DDR3_o_ck_p,
    output [0:0]DDR3_o_cke,
    output [0:0]DDR3_o_cs_n,
    output [3:0]DDR3_o_dm,
    inout [31:0]DDR3_o_dq,
    inout [3:0]DDR3_o_dqs_n,
    inout [3:0]DDR3_o_dqs_p,
    output [0:0]DDR3_o_odt,
    output DDR3_o_ras_n,
    output DDR3_o_reset_n,
    output DDR3_o_we_n
);

/*************************** 信号线定义 ****************************/
    parameter   S0_INIT         =   0,  // 初始化状态
                S1_HEVC_ENC     =   1,  // HEVC 编码启动
                S2_VIDEO_FLUSH  =   2,  // 视频缓冲区刷新
                S3_EXIF         =   3;  // HEVC 数据读写

    reg [1:0]   STATE           =   S0_INIT;

    reg pixel_rd_type;
    reg pixel_rd_en;

    /*************************** Video Buffer 信号 ****************************/
        wire video_buffer_rst_busy;
        wire video_buffer_full;
        wire video_buffer_empty;
        wire [13:0] video_buffer_rd_cnt;
        wire video_buffer_out_valid;
        wire [127:0] video_buffer_data_out;

    /*************************** FDMA 信号 ****************************/
        wire [31:0]FDMA_S_in_fdma_raddr;
        wire FDMA_S_in_fdma_rareq;
        wire FDMA_S_in_fdma_rbusy;
        wire [127:0]FDMA_S_in_fdma_rdata;
        wire FDMA_S_in_fdma_rready;
        wire [15:0]FDMA_S_in_fdma_rsize;
        wire FDMA_S_in_fdma_rvalid;
        wire [31:0]FDMA_S_in_fdma_waddr;
        wire FDMA_S_in_fdma_wareq;
        wire FDMA_S_in_fdma_wbusy;
        wire [127:0]FDMA_S_in_fdma_wdata;
        wire FDMA_S_in_fdma_wready;
        wire [15:0]FDMA_S_in_fdma_wsize;
        wire FDMA_S_in_fdma_wvalid;
        wire [0:0]fdma_rstn_o;
        wire init_calib_complete_o;
        wire fdma_user_clk;

    /**************************** 复位信号 *****************************/
        // 复位顺序：DDR --> Video Buffer --> HEVC Encoder 
        assign hevc_encoder_rst_n = rst_n_i && ~video_buffer_rst_busy;
        assign video_buffer_rst_n = rst_n_i && fdma_rstn_o && init_calib_complete_o;

/*************************** 视频缓冲区 ****************************/
    video_buffer_top video_buffer_top(
        .rst_n_i(video_buffer_rst_n),
        .pclk_i(piexl_clk_i),
        .pixel_i(yuv_i),
        .hsync_i(hsync_i),
        .vsync_i(vsync_i),
        .de_i(de_i),
        .rd_clk_i(fdma_user_clk),
        .pixel_type_i(pixel_rd_type),
        .pixel_rd_en_i(pixel_rd_en),
        .pixel_fifo_rst_busy(video_buffer_rst_busy),
        .pixel_buffer_full_o(video_buffer_full),
        .pixel_buffer_empty_o(video_buffer_empty),
        .pixel_buffer_rd_cnt_o(video_buffer_rd_cnt),
        .pixel_valid_o(video_buffer_out_valid),
        .pixel_o(video_buffer_data_out)
    );

/****************************** DDR *******************************/
    fdma_mig_ddr_wrapper fdma_mig_ddr_wrapper(
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
        .DDR3_o_we_n(DDR3_o_we_n),
        .FDMA_S_in_fdma_raddr(FDMA_S_in_fdma_raddr),
        .FDMA_S_in_fdma_rareq(FDMA_S_in_fdma_rareq),
        .FDMA_S_in_fdma_rbusy(FDMA_S_in_fdma_rbusy),
        .FDMA_S_in_fdma_rdata(FDMA_S_in_fdma_rdata),
        .FDMA_S_in_fdma_rready(FDMA_S_in_fdma_rready),
        .FDMA_S_in_fdma_rsize(FDMA_S_in_fdma_rsize),
        .FDMA_S_in_fdma_rvalid(FDMA_S_in_fdma_rvalid),
        .FDMA_S_in_fdma_waddr(FDMA_S_in_fdma_waddr),
        .FDMA_S_in_fdma_wareq(FDMA_S_in_fdma_wareq),
        .FDMA_S_in_fdma_wbusy(FDMA_S_in_fdma_wbusy),
        .FDMA_S_in_fdma_wdata(FDMA_S_in_fdma_wdata),
        .FDMA_S_in_fdma_wready(FDMA_S_in_fdma_wready),
        .FDMA_S_in_fdma_wsize(FDMA_S_in_fdma_wsize),
        .FDMA_S_in_fdma_wvalid(FDMA_S_in_fdma_wvalid),
        .clk_100M_in(clk_100M_i),
        .fdma_rstn_o(fdma_rstn_o),
        .init_calib_complete_o(init_calib_complete_o),
        .rst_n_in(rst_n_i),
        .ui_clk_200M_o(fdma_user_clk)
    );

endmodule
