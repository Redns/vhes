`timescale 1ns/1ns

module hdmi2yuv_top_tb;

/****************************** 宏定义 ***************************/
    `define HALF_PCLK           3
    `define FULL_PCLK           (`HALF_PCLK * 2)

    `define FRAME_WIDTH         64
    `define FRAME_HEIGHT        64
    `define FRAME_NUMS          10

    `define VIDEO_RGB_ORIGIN    "E:/Project/vhes/vhes_software_encoder/blue_sky.rgb"

/***************************** 相关变量 **************************/
    reg rst_n;
    reg convert_en_i;
    wire rst_done;

    reg pclk;
    reg rgb_hsync;
    reg rgb_vsync;
    reg rgb_de;
    reg [23:0] rgb_data;

    wire yuv_vsync;
    wire yuv_y_de;
    wire yuv_uv_de;
    wire [127:0] yuv_y_data;
    wire [127:0] yuv_uv_data;

    /* 遍历变量 */
    integer frame_row;
    integer frame_col;
    integer frame_serial_number;

    /* RGB 缓冲区 */
    integer fp_video_rgb;
    reg [23:0] video_read_buffer;
    reg [7:0] video_stream_r[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_g[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0];
    reg [7:0] video_stream_b[`FRAME_NUMS - 1:0][`FRAME_HEIGHT - 1:0][`FRAME_WIDTH - 1:0]; 

/***************************** 顶层例化 **************************/
    hdmi2yuv_top hdmi2yuv_top(
        .rst_n_i(rst_n),
        .rst_done_o(rst_done),
        .convert_en_i(convert_en_i),
        .pclk_i(pclk),
        .hsync_i(rgb_hsync),
        .vsync_i(rgb_vsync),
        .rgb_i(rgb_data),
        .de_i(rgb_de),
        .vsync_o(yuv_vsync),
        .y_de_o(yuv_y_de),
        .uv_de_o(yuv_uv_de),
        .y_o(yuv_y_data),
        .uv_o(yuv_uv_data)
    );

/***************************** 主体逻辑 **************************/
    // 像素时钟（166.67MHz，略低于1080P@60fps 148.5MHz）
    initial begin
        pclk = 1'b0;
        forever #(`HALF_PCLK) pclk = ~pclk;
    end

    // HDMI 时序模拟
    initial begin
        /****************** 初始化变量 *****************/
        rst_n = 1'b0;
        convert_en_i = 1'b0;

        rgb_hsync = 1'b0;
        rgb_vsync = 1'b0;
        rgb_de    = 1'b0;
        rgb_data  = 24'b0;

        /**************** 加载 RGB 文件 ****************/
            fp_video_rgb = $fopen(`VIDEO_RGB_ORIGIN, "rb");
            for(frame_serial_number = 0; frame_serial_number < `FRAME_NUMS; frame_serial_number = frame_serial_number + 1) begin
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                        $fread(video_read_buffer, fp_video_rgb);
                        video_stream_r[frame_serial_number][frame_row][frame_col] = video_read_buffer[7:0];
                        video_stream_g[frame_serial_number][frame_row][frame_col] = video_read_buffer[15:8];
                        video_stream_b[frame_serial_number][frame_row][frame_col] = video_read_buffer[23:16];
                    end
                end
            end
            $fclose(fp_video_rgb);

        /******************* 复位模块 ******************/
        #(10 * `FULL_PCLK) rst_n = 1'b1;
        #(100 * `FULL_PCLK) convert_en_i = 1'b1;
        
        /**************** 模拟 HDMI 时序 ***************/
            for(frame_serial_number = 0; frame_serial_number < `FRAME_NUMS; frame_serial_number = frame_serial_number + 1) begin
                @(posedge pclk) rgb_vsync = 1'b1;
                #(10 * `FULL_PCLK) rgb_vsync = 1'b0;
                for(frame_row = 0; frame_row < `FRAME_HEIGHT; frame_row = frame_row + 1) begin
                    @(posedge pclk) rgb_hsync = 1'b1;
                    #(44 * `FULL_PCLK) rgb_hsync = 1'b0;
                    #(148 * `FULL_PCLK);
                    for(frame_col = 0; frame_col < `FRAME_WIDTH; frame_col = frame_col + 1) begin
                        @(posedge pclk) begin
                            rgb_de = 1'b1;
                            rgb_data = { 
                                video_stream_r[frame_serial_number][frame_row][frame_col],
                                video_stream_g[frame_serial_number][frame_row][frame_col],
                                video_stream_b[frame_serial_number][frame_row][frame_col] 
                            };
                        end
                    end
                    @(negedge pclk) rgb_de = 1'b0;
                    #(88 * `FULL_PCLK);
                end
            end
    end

endmodule