`timescale 1ns / 1ps

`include "enc_defines.v"

module hevc_encoder_system_top_tb;
/****************************** 宏定义 ***************************/
    // 视频源信息
    `define FRAME_WIDTH         1920
    `define FRAME_HEIGHT        1080
    `define frame_serial_numberS          130
    `define FILE_VIDEO_ORIGIN   "E:/Project/xk265/core/sim/top_testbench/tv/blue_sky.yuv"   

    // 时钟周期
    `define HALF_PCLK           3
    `define FULL_PCLK           (`HALF_PCLK * 2)
    `define HALF_SYS_CLK        5
    `define FULL_SYS_CLK        (`HALF_SYS_CLK * 2)

/***************************** 相关变量 **************************/
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
    wire bs_valid;
    wire [7:0] bs_data;
    /* DDR 相关信号 */
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

    integer frame_serial_number;
    integer frame_read_pixel_cnt; 

    integer frame_row;
    integer frame_col;

    integer fp_video_origin;
    reg [31:0] video_write_baseaddr;
    reg [7:0] video_read_buffer_8bit;
    reg [127:0] video_read_buffer_128bit;
    reg [`FRAME_WIDTH * `FRAME_HEIGHT - 1:0] video_stream_y[7:0];
    reg [`FRAME_WIDTH * `FRAME_HEIGHT - 1:0] video_stream_u[7:0];
    reg [`FRAME_WIDTH * `FRAME_HEIGHT - 1:0] video_stream_v[7:0]; 

/*************************** 例化顶层模块 ************************/
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

/***************************** 主体逻辑 **************************/
    // 像素时钟（166.67MHz，略低于1080P@60fps 148.5MHz）
    initial begin
        pclk = 1'b0;
        forever #(`HALF_PCLK) pclk = ~pclk;
    end

    // 系统输入时钟（100MHz）
    initial begin
        clk_100M = 1'b0;
        forever #(`HALF_SYS_CLK) clk_100M = ~clk_100M;
    end

    initial begin
        // 初始化变量
        rst_n = 1'b1;
        hsync = 1'b0;
        vsync = 1'b0;
        rgb = 24'b0;
        de = 1'b0;
        force hdmi2yuv_top.hdmi2rgb.adv_cfg_done_o = 0;
        // 加载 yuv 文件
        fp_video_origin = $fopen(`FILE_VIDEO_ORIGIN, "r");
        for(frame_serial_number = 0; frame_serial_number < `frame_serial_numberS; frame_serial_number = frame_serial_number + 1) begin
            // 设置帧起始地址
            video_write_baseaddr = (`FRAME_WIDTH * `FRAME_HEIGHT * 3 * frame_serial_number) >> 2;
            // 读取 Y 分量
            for(frame_read_pixel_cnt = 0; frame_read_pixel_cnt < `FRAME_WIDTH * `FRAME_HEIGHT; frame_read_pixel_cnt = frame_read_pixel_cnt + 16) begin
                $fread(video_read_buffer_128bit, fp_video_origin);
                video_stream_y[frame_serial_number][(video_write_baseaddr + frame_read_pixel_cnt + 128 - 1) -:128] = video_read_buffer_128bit;
            end
            // 读取 U 分量
            for(frame_read_pixel_cnt = 0; frame_read_pixel_cnt < (`FRAME_WIDTH * `FRAME_HEIGHT >> 2); frame_read_pixel_cnt = frame_read_pixel_cnt + 1) begin
                $fread(video_read_buffer_8bit, fp_video_origin);
                video_stream_u[frame_serial_number][frame_read_pixel_cnt * 2] = video_read_buffer_8bit;
                video_stream_u[frame_serial_number][frame_read_pixel_cnt * 2 + 1] = video_read_buffer_8bit;
                video_stream_u[frame_serial_number][frame_read_pixel_cnt * 2 + `FRAME_WIDTH] = video_read_buffer_8bit;
                video_stream_u[frame_serial_number][frame_read_pixel_cnt * 2 + `FRAME_WIDTH + 1] = video_read_buffer_8bit;
            end
            // 读取 V 分量
            for(frame_read_pixel_cnt = 0; frame_read_pixel_cnt < (`FRAME_WIDTH * `FRAME_HEIGHT >> 2); frame_read_pixel_cnt = frame_read_pixel_cnt + 1) begin
                $fread(video_read_buffer_8bit, fp_video_origin);
                video_stream_v[frame_serial_number][frame_read_pixel_cnt * 2] = video_read_buffer_8bit;
                video_stream_v[frame_serial_number][frame_read_pixel_cnt * 2 + 1] = video_read_buffer_8bit;
                video_stream_v[frame_serial_number][frame_read_pixel_cnt * 2 + `FRAME_WIDTH] = video_read_buffer_8bit;
                video_stream_v[frame_serial_number][frame_read_pixel_cnt * 2 + `FRAME_WIDTH + 1] = video_read_buffer_8bit;
            end
        end
        // 复位模块
        #(10 * `FULL_SYS_CLK) rst_n = 0;
        #(10 * `FULL_SYS_CLK) rst_n = 1;
        #(10 * `FULL_SYS_CLK) force hdmi2yuv_top.hdmi2rgb.adv_cfg_done_o = 1;
        // wait(h265enc_top.rstn);
        // 监控变量的任何一个发生变化时打印相关信息
        $monitor( "\tat %08d, Frame Number = %02d, mb_x_first = %02d, mb_y_first = %02d", $time, frame_serial_number, h265enc_top.u_enc_ctrl.pre_l_x_o, h265enc_top.u_enc_ctrl.pre_l_y_o);
        // 模拟 HDMI 时序
        for(frame_serial_number = 0; frame_serial_number < `frame_serial_numberS; frame_serial_number = frame_serial_number + 1) begin
            vsync = 1'b1;
            #(10 * `FULL_PCLK) vsync = 1'b0;
            for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                hsync = 1'b1;
                #(44 * `FULL_PCLK) hsync = 1'b0;
                #(148 * `FULL_PCLK);
                for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                    @(posedge pclk) begin
                        de = 1'b1;
                        rgb = { video_stream_y[frame_serial_number][frame_row * `FRAME_WIDTH + frame_col],
                                video_stream_u[frame_serial_number][frame_row * `FRAME_WIDTH + frame_col],
                                video_stream_v[frame_serial_number][frame_row * `FRAME_WIDTH + frame_col] 
                        };
                    end
                end
                @(negedge pclk) de = 1'b0;
                #(88 * `FULL_PCLK);
            end
        end
    end

endmodule
