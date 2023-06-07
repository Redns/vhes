//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/11 00:39:54
// Design Name: 
// Module Name: hdmi2yuv_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 将输入的 HDMI RGB888 信号转换为 YUV444 信号
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module hdmi2yuv_top(
    /* 系统信号 */
    input rst_n_i,                                  // 复位信号（低电平有效）
    output rst_done_o,                              // 复位完成标志（高电平有效）
    input convert_en_i,                             // 转换使能信号（高电平有效）
    /* HDMI 行场同步信号 */ 
    input pclk_i,                                   // 像素时钟输入（1080P@60fps：148.5MHz）
    input hsync_i,                                  // 行同步信号输入
    input vsync_i,                                  // 场同步信号输入
    input [23:0] rgb_i,                             // RGB888 信号输入
    input de_i,                                     // 像素有效标志输入
    /* YUV 信号输出 */ 
    output vsync_o,
    output y_de_o,                                  // Y 分量有效标志输出
    output uv_de_o,                                 // UV 分量有效标志输出
    output [127:0] y_o,                             // Y 分量像素输出
    output [127:0] uv_o                             // UV 分量像素输出
);

/*************************** 信号线定义 ****************************/
    // 帧开始标志
    // 写入 FIFO 的数据应该从一帧的首个像素开始
    reg frame_start_flag;

    reg [1:0] hsync_state;

    // YUV 输出信号
    wire [23:0] yuv_data;
    wire yuv_hsync, yuv_vsync, yuv_de;

    // UV 分量行列存储标志
    // YUV420 格式下 UV 分量隔行隔列采样
    reg uv_row_recorded, uv_col_recorded;

    // 像素有效受三个因素影响：输入有效、帧开始标志和采样率
    // 新的一帧未开始时不采样任何像素，即系统永远从新的一帧开始采样
    // YUV420 格式下 UV 像素隔行隔列采样
    assign y_recorded  = frame_start_flag && yuv_de;
    assign uv_recorded = frame_start_flag && yuv_de && uv_row_recorded && uv_col_recorded;

    // YUV 场信号
    assign vsync_o = yuv_vsync;

    // 复位完成信号
    assign rst_done_o = rst_n_i;

/************************* RGB 转 YUV 模块 *************************/
    
    rgb2yuv rgb2yuv(
        .clk_i(~pclk_i),
        .rst_n_i(rst_n_i),
        .hsync_i(hsync_i),
        .vsync_i(vsync_i),
        .de_i(de_i),
        .rgb_i(rgb_i),
        .yuv_o(yuv_data),
        .hsync_o(yuv_hsync),
        .vsync_o(yuv_vsync),
        .de_o(yuv_de)
    );

/************************* YUV 像素数据拼接 *************************/
    // 场同步信号 vsync 有效时代表新的一帧开始
    // 实际上 SII9011 输出的场同步信号 vsync 和像素有效标志 de_i 不可能同时有效，此处是为了兼容其他解码芯片
    always@(posedge pclk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            frame_start_flag <= 1'b0;
        end
        else if(vsync_i && (!de_i) && convert_en_i) begin
            // 若 FIFO 不提供完成信号给该模块，则 FIFO 复位未完成时该模块可能已经开始输出像素
            // 若先复位 FIFO 再复位该模块则该模块复位完成前状态不可控，亦可能向 FIFO 输出错误数据
            // 故先复位该模块使其进入稳定状态，后复位 FIFO 保证数据写入有效，最后利用 FIFO 复位完成信号启动像素拼接
            frame_start_flag <= 1'b1;
        end
    end
    
    // UV 分量列存储标志
    always@(posedge pclk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            uv_col_recorded <= 1'b0;
        end
        else begin
            uv_col_recorded <= ~uv_col_recorded;
        end 
    end

    // UV 分量行存储标志
    always@(posedge pclk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            hsync_state <= 2'b0;
            uv_row_recorded <= 1'b0;
        end
        else begin
            hsync_state <= { hsync_state[0], yuv_hsync };
            if(!hsync_state[0] && yuv_hsync) begin
                uv_row_recorded <= ~uv_row_recorded;
            end
        end
    end

    // 将 Y 分量拼接至 128 位
    data_merge #(
        .DATA_IN_WIDTH(8),
        .DATA_OUT_WIDTH(128)
    ) y_merge_8_to_128(
        .clk_i(~pclk_i),
        .rst_n_i(rst_n_i),
        .de_i(y_recorded),
        .data_i(yuv_data[23:16]),
        .de_o(y_de_o),       
        .data_o(y_o)       
    );

    // 将 UV 分量拼接至 128 位
    data_merge #(
        .DATA_IN_WIDTH(16),
        .DATA_OUT_WIDTH(128)
    ) uv_merge_16_to_128(
        .clk_i(~pclk_i),
        .rst_n_i(rst_n_i),
        .de_i(uv_recorded),
        .data_i(yuv_data[15:0]),
        .de_o(uv_de_o),      
        .data_o(uv_o) 
    );

endmodule