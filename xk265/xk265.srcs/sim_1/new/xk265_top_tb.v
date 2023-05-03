`timescale 1ns/1ps

`include "enc_defines.v"

module xk265_top_tb;
/****************************** 宏定义 ***************************/
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

    reg [7:0] check_bs;
    reg [31:0] bs_check_byte_cnt;

    integer fp_video_origin;
    integer fp_video_bitstream;
    integer frame_serial_number;
    integer frame_row, frame_col;

    reg [7:0] video_read_buffer;
    reg [7:0] video_stream_y[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_u[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_v[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0]; 

    // TODO delete this
    wire ui_clk;

/*************************** 例化顶层模块 ************************/
    xk265_top xk265_top(
        .rst_n_i(rst_n),
        .clk_100M_i(clk_100M),
        .pclk_i(pclk),
        .hsync_i(hsync),
        .vsync_i(vsync),
        .rgb_i(rgb),
        .de_i(de),
        .bs_valid_o(bs_valid),
        .bs_data_o(bs_data),
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
        // TODO 此端口仅供信号测试
        .clk_ui_200M(ui_clk)
    );

    ddr3_model u_ddr3_part1(
        .rst_n(DDR3_o_reset_n),
        .ck(DDR3_o_ck_p),
        .ck_n(DDR3_o_ck_n),
        .cke(DDR3_o_cke),
        .cs_n(DDR3_o_cs_n),
        .ras_n(DDR3_o_ras_n),
        .cas_n(DDR3_o_cas_n),
        .we_n(DDR3_o_we_n),
        .dm_tdqs(DDR3_o_dm[1:0]),
        .ba(DDR3_o_ba),
        .addr(DDR3_o_addr),
        .dq(DDR3_o_dq[15:0]),
        .dqs(DDR3_o_dqs_p[1:0]),
        .dqs_n(DDR3_o_dqs_n[1:0]),
        .tdqs_n(),
        .odt(DDR3_o_odt)
    );

    ddr3_model u_ddr3_part2(
        .rst_n(DDR3_o_reset_n),
        .ck(DDR3_o_ck_p),
        .ck_n(DDR3_o_ck_n),
        .cke(DDR3_o_cke),
        .cs_n(DDR3_o_cs_n),
        .ras_n(DDR3_o_ras_n),
        .cas_n(DDR3_o_cas_n),
        .we_n(DDR3_o_we_n),
        .dm_tdqs(DDR3_o_dm[3:2]),
        .ba(DDR3_o_ba),
        .addr(DDR3_o_addr),
        .dq(DDR3_o_dq[31:16]),
        .dqs(DDR3_o_dqs_p[3:2]),
        .dqs_n(DDR3_o_dqs_n[3:2]),
        .tdqs_n(),
        .odt(DDR3_o_odt)
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
        /****************** 初始化变量 *****************/
            rst_n = 1'b1;
            hsync = 1'b0;
            vsync = 1'b0;
            rgb = 24'b0;
            de = 1'b0;

            check_bs = 8'b0;
            bs_check_byte_cnt = 32'b0;

        /**************** 加载 yuv 文件 ****************/
            fp_video_origin = $fopen(`FILE_VIDEO_ORIGIN, "r");
            fp_video_bitstream = $fopen(`FILE_CHECK_BS, "r");
            for(frame_serial_number = 0; frame_serial_number < `FRAME_NUMS; frame_serial_number = frame_serial_number + 1) begin
                // 读取 Y 分量
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                        $fread(video_read_buffer, fp_video_origin);
                        video_stream_y[frame_serial_number][frame_row][frame_col] = video_read_buffer;
                    end
                end
                // 读取 U 分量
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 2) begin
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 2) begin
                        $fread(video_read_buffer, fp_video_origin);
                        video_stream_u[frame_serial_number][frame_row][frame_col] = video_read_buffer;
                        video_stream_u[frame_serial_number][frame_row][frame_col + 1] = video_read_buffer;
                        video_stream_u[frame_serial_number][frame_row + 1][frame_col] = video_read_buffer;
                        video_stream_u[frame_serial_number][frame_row + 1][frame_col + 1] = video_read_buffer;
                    end
                end
                // 读取 V 分量
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 2) begin
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 2) begin
                        $fread(video_read_buffer, fp_video_origin);
                        video_stream_v[frame_serial_number][frame_row][frame_col] = video_read_buffer;
                        video_stream_v[frame_serial_number][frame_row][frame_col + 1] = video_read_buffer;
                        video_stream_v[frame_serial_number][frame_row + 1][frame_col] = video_read_buffer;
                        video_stream_v[frame_serial_number][frame_row + 1][frame_col + 1] = video_read_buffer;
                    end
                end
            end
            $fclose(fp_video_origin);
        
        /******************* 复位模块 ******************/
            #(10 * `FULL_SYS_CLK) rst_n = 0;
            #(10 * `FULL_SYS_CLK) rst_n = 1;
            wait(xk265_top.hevc_enc_core_top.rstn);
        
        /******************* 监控变量 ******************/
            $monitor( "\tat %08d, Frame Number = %02d, mb_x_first = %02d, mb_y_first = %02d", $time, frame_serial_number, xk265_top.hevc_enc_core_top.u_enc_ctrl.pre_l_x_o, xk265_top.hevc_enc_core_top.u_enc_ctrl.pre_l_y_o);
        
        /**************** 模拟 HDMI 时序 ***************/
            for(frame_serial_number = 0; frame_serial_number < `FRAME_NUMS; frame_serial_number = frame_serial_number + 1) begin
                vsync = 1'b1;
                #(10 * `FULL_PCLK) vsync = 1'b0;
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                    hsync = 1'b1;
                    #(44 * `FULL_PCLK) hsync = 1'b0;
                    #(148 * `FULL_PCLK);
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                        @(posedge pclk) begin
                            de = 1'b1;
                            rgb = { video_stream_y[frame_serial_number][frame_row][frame_col],
                                     video_stream_u[frame_serial_number][frame_row][frame_col],
                                     video_stream_v[frame_serial_number][frame_row][frame_col] 
                            };
                        end
                    end
                    @(negedge pclk) de = 1'b0;
                    #(88 * `FULL_PCLK);
                end
            end
    end

/***************************** 码流检查 **************************/
    `ifdef CHECK_BS 
        always@(posedge ui_clk) begin
            if(bs_valid) begin
                $fscanf(fp_video_bitstream, "%h", check_bs);
                if (check_bs != bs_data) begin
                    $display("ERROR at BS at bs_byte_cnt = %5d, f265 is %h, h265 is %h", bs_check_byte_cnt, check_bs, bs_data);
                    $finish;
                end
                bs_check_byte_cnt <= bs_check_byte_cnt + 1'b1;
            end
        end 
    `endif

endmodule