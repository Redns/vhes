`timescale 1ns/1ns

`include "enc_defines.v"

module vhes_core_top_tb;
/****************************** 宏定义 ***************************/
    // 时钟周期
    `define HALF_PCLK           3
    `define FULL_PCLK           (`HALF_PCLK * 2)
    `define HALF_SYS_CLK        5
    `define FULL_SYS_CLK        (`HALF_SYS_CLK * 2)

    `define CHECK_BS
    `define STORE_BS
    `define STORE_PERF

    `define FRAME_WIDTH         1920
    `define FRAME_HEIGHT        1080
    `define FRAME_NUMS          100

    `define INITIAL_QP          20
    `define GOP_LENGTH          1
    `define ENABLE_IINP         0
    `define ENABLE_DB           0
    `define ENABLE_SAO          0
    `define POSI4x4BIT          0      

    `define FILE_VIDEO_ORIGIN   "E:/Project/vhes/vhes_software_encoder/blue_sky.rgb"   
    `define FILE_BS             "E:/Project/vhes/vhes_software_encoder/blue_sky.hevc"
    `define FILE_PERFORMANCE    "E:/Project/vhes/vhes_software_encoder/blue_sky_perf.dat"
    `define FILE_CHECK_BS       "E:/Project/vhes/vhes_software_encoder/s_bit_stream.dat"

/***************************** 相关变量 **************************/
    /* 系统信号 */
    reg rst_n;
    reg clk_100M;
    wire rst_done;
    /* HDMI 解析芯片 SII9011 配置信号 */ 
    wire sii_sda;
    wire sii_scl;
    wire sii_rst_n;
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
    wire [14:0]DDR_PL_addr; 
    wire [2:0]DDR_PL_ba;
    wire DDR_PL_cas_n;
    wire [0:0]DDR_PL_ck_n;
    wire [0:0]DDR_PL_ck_p;
    wire [0:0]DDR_PL_cke;
    wire [0:0]DDR_PL_cs_n;
    wire [3:0]DDR_PL_dm;
    wire [31:0]DDR_PL_dq;
    wire [3:0]DDR_PL_dqs_n;
    wire [3:0]DDR_PL_dqs_p;
    wire [0:0]DDR_PL_odt;
    wire DDR_PL_ras_n;
    wire DDR_PL_reset_n;
    wire DDR_PL_we_n;

    reg [7:0] check_bs;
    reg [31:0] bs_check_byte_cnt;

    /* 文件句柄 */
    integer fp_video_origin;
    integer fp_video_bitstream;
    integer fp_performance;
    integer fp_video_check_bitstream;

    /* 遍历变量 */
    integer frame_serial_number;
    integer frame_row, frame_col;

    /* 性能评估参数 */
    integer frame_encode_time;
    integer frame_average_bitrate;
    integer frame_psnr;

    reg [23:0] video_read_buffer;
    reg [7:0] video_stream_r[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_g[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_b[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0]; 

/*************************** 例化顶层模块 ************************/
    vhes_core_top#
    (
        .FRAME_WIDTH(`FRAME_WIDTH),
        .FRAME_HEIGHT(`FRAME_HEIGHT),
        .INITIAL_QP(`INITIAL_QP),
        .GOP_LENGTH(`GOP_LENGTH),
        .ENABLE_IINP(`ENABLE_IINP),
        .ENABLE_DB(`ENABLE_DB),
        .ENABLE_SAO(`ENABLE_SAO),
        .POSI4x4BIT(`POSI4x4BIT)
    ) vhes_core_top
    (
        .rst_n_i(rst_n),
        .clk_100M_i(clk_100M),
        .rst_done_o(rst_done),
        .pclk_i(pclk),
        .hsync_i(hsync),
        .vsync_i(vsync),
        .rgb_i(rgb),
        .de_i(de),
        .bs_rd_clk_i(clk_100M),
        .bs_valid_o(bs_valid),
        .bs_data_o(bs_data),
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

    ddr3_model u_ddr3_part1(
        .rst_n(DDR_PL_reset_n),
        .ck(DDR_PL_ck_p),
        .ck_n(DDR_PL_ck_n),
        .cke(DDR_PL_cke),
        .cs_n(DDR_PL_cs_n),
        .ras_n(DDR_PL_ras_n),
        .cas_n(DDR_PL_cas_n),
        .we_n(DDR_PL_we_n),
        .dm_tdqs(DDR_PL_dm[1:0]),
        .ba(DDR_PL_ba),
        .addr(DDR_PL_addr),
        .dq(DDR_PL_dq[15:0]),
        .dqs(DDR_PL_dqs_p[1:0]),
        .dqs_n(DDR_PL_dqs_n[1:0]),
        .tdqs_n(),
        .odt(DDR_PL_odt)
    );

    ddr3_model u_ddr3_part2(
        .rst_n(DDR_PL_reset_n),
        .ck(DDR_PL_ck_p),
        .ck_n(DDR_PL_ck_n),
        .cke(DDR_PL_cke),
        .cs_n(DDR_PL_cs_n),
        .ras_n(DDR_PL_ras_n),
        .cas_n(DDR_PL_cas_n),
        .we_n(DDR_PL_we_n),
        .dm_tdqs(DDR_PL_dm[3:2]),
        .ba(DDR_PL_ba),
        .addr(DDR_PL_addr),
        .dq(DDR_PL_dq[31:16]),
        .dqs(DDR_PL_dqs_p[3:2]),
        .dqs_n(DDR_PL_dqs_n[3:2]),
        .tdqs_n(),
        .odt(DDR_PL_odt)
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

        /**************** 加载 RGB 文件 ****************/
            fp_video_origin = $fopen(`FILE_VIDEO_ORIGIN, "rb");
            fp_video_bitstream = $fopen(`FILE_BS, "wb");
            fp_performance = $fopen(`FILE_PERFORMANCE, "wb");
            fp_video_check_bitstream = $fopen(`FILE_CHECK_BS, "rb");
            for(frame_serial_number = 0; frame_serial_number < `FRAME_NUMS; frame_serial_number = frame_serial_number + 1) begin
                // 读取 Y 分量
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                        $fread(video_read_buffer, fp_video_origin);
                        video_stream_r[frame_serial_number][frame_row][frame_col] = video_read_buffer[7:0];
                        video_stream_g[frame_serial_number][frame_row][frame_col] = video_read_buffer[15:8];
                        video_stream_b[frame_serial_number][frame_row][frame_col] = video_read_buffer[23:16];
                    end
                end
            end
            $fclose(fp_video_origin);
        
        /******************* 复位模块 ******************/
            #(10 * `FULL_SYS_CLK) rst_n = 0;
            #(10 * `FULL_SYS_CLK) rst_n = 1;
            wait(vhes_core_top.vsp_top.rst_done_o);
        
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
                            rgb = { 
                                    video_stream_r[frame_serial_number][frame_row][frame_col],
                                    video_stream_g[frame_serial_number][frame_row][frame_col],
                                    video_stream_b[frame_serial_number][frame_row][frame_col] 
                                  };
                        end
                    end
                    @(negedge pclk) de = 1'b0;
                    #(88 * `FULL_PCLK);
                end
            end
        $fclose(fp_performance);
        $fclose(fp_video_bitstream);
    end

/***************************** 码流检查 **************************/
    // `ifdef CHECK_BS 
    //     always@(posedge ui_clk) begin
    //         if(bs_valid) begin
    //             $fscanf(fp_video_check_bitstream, "%h", check_bs);
    //             if (check_bs != bs_data) begin
    //                 $display("ERROR at BS at bs_byte_cnt = %5d, f265 is %h, h265 is %h", bs_check_byte_cnt, check_bs, bs_data);
    //                 $finish;
    //             end
    //             bs_check_byte_cnt <= bs_check_byte_cnt + 1'b1;
    //         end
    //     end 
    // `endif

/***************************** 保存码流 **************************/
    `ifdef STORE_BS
        always@(bs_valid or bs_data) begin
            if(bs_valid) begin
                $fwrite(fp_video_bitstream, bs_data);
            end
        end
    `endif

    `ifdef STORE_PERF
        always@(posedge vhes_core_top.enc_core_top.sys_start_i or posedge vhes_core_top.enc_core_top.sys_done_o) begin
            if(vhes_core_top.enc_core_top.sys_start_i) begin
                frame_encode_time = $time;
            end
            else if(vhes_core_top.enc_core_top.sys_done_o) begin
                $fwrite(fp_performance, "%d fps\n", 1000_000_000 / ($time - frame_encode_time));
            end
        end
    `endif 

endmodule