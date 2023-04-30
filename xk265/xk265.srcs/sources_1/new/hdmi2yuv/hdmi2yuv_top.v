module hdmi2yuv_top(
    /* 系统信号 */
    input rst_n_i,                                  // 复位信号输入（低电平有效）
    input clk_100M_i,                               // 100MHz 时钟信号输入
    input video_buffer_init_done_i,                 // VIDEO BUFFER 初始化完成信号
    output rst_done_o,                              // 复位完成信号输出（高电平有效）
    /* FEP 视频采集卡 ADV7611 配置信号 */ 
    inout adv_sda,                                  // ADV7611 IIC 数据信号
    output adv_scl,                                 // ADV7611 IIC 时钟信号
    output adv_rst_o,                               // ADV7611 复位信号
    output adv_pen_o,                               // ADV7611 电源使能信号
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

    // YUV 输出信号
    // TODO 取消注释，注释掉紧跟的 wire 语句
    // wire [23:0] yuv_data;
    // wire yuv_hsync, yuv_vsync, yuv_de;
    wire [23:0] yuv_data = rgb_i;
    wire yuv_hsync = hsync_i;
    wire yuv_vsync = vsync_i;
    wire yuv_de = de_i;

    // UV 分量行列存储标志
    // YUV420 格式下 UV 分量隔行隔列采样
    reg uv_row_recorded, uv_col_recorded;
    
    // 复位信号
    assign rgb2yuv_rst_n = rst_n_i & !rst_done_o;
    assign yuv_data_merge_rst_n = rst_n_i & rst_done_o;

    // 像素有效受三个因素影响：输入有效、帧开始标志和采样率
    // 新的一帧未开始时不采样任何像素，即系统永远从新的一帧开始采样
    // YUV420 格式下 UV 像素隔行隔列采样
    assign y_recorded  = frame_start_flag && yuv_de;
    assign uv_recorded = frame_start_flag && yuv_de && uv_row_recorded && uv_col_recorded;

    assign vsync_o = yuv_vsync;
    // TODO 删除此处 rst_done_o
    assign rst_done_o = rst_n_i;

/************************ ADV7611 配置模块 *************************/
    hdmi2rgb hdmi2rgb(
        .clk_i(clk_100M_i),
        .rst_n_i(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .adv_rst_o(adv_rst_o),
        .adv_pen_o(adv_pen_o),
        // TODO 输出信号接到 rst_done_o
        .adv_cfg_done_o()
    );

/************************* RGB 转 YUV 模块 *************************/
    // TODO 取消注释，启用该模块
    // rgb2yuv rgb2yuv(
    //     .clk_i(pclk_i),
    //     .rst_n_i(rgb2yuv_rst_n),
    //     .hsync_i(hsync_i),
    //     .vsync_i(vsync_i),
    //     .de_i(de_i),
    //     .rgb_i(rgb_i),
    //     .yuv_o(yuv_data),
    //     .hsync_o(yuv_hsync),
    //     .vsync_o(yuv_vsync),
    //     .de_o(yuv_de)
    // );

/************************* YUV 像素数据拼接 *************************/
    // 检测到场同步信号 vsync 上升沿时代表新的一帧开始
    always@(posedge yuv_vsync or negedge yuv_data_merge_rst_n) begin
        if(!yuv_data_merge_rst_n)
            frame_start_flag <= 1'b0;
        else if(video_buffer_init_done_i)
            // 若 FIFO 不提供完成信号给该模块，则 FIFO 复位未完成时该模块可能已经开始输出像素
            // 若先复位 FIFO 再复位该模块则该模块复位完成前状态不可控，亦可能向 FIFO 输出错误数据
            // 故先复位该模块使其进入稳定状态，后复位 FIFO 保证数据写入有效，最后利用 FIFO 复位完成信号启动像素拼接
            frame_start_flag <= 1'b1;
        else
            frame_start_flag <= frame_start_flag;
    end
    
    // UV 分量列存储标志
    always@(posedge pclk_i or negedge yuv_data_merge_rst_n) begin
        if(!yuv_data_merge_rst_n)
            uv_col_recorded <= 1'b1;
        else 
            uv_col_recorded <= ~uv_col_recorded; 
    end

    // UV 分量行存储标志
    always@(posedge yuv_hsync or negedge yuv_data_merge_rst_n) begin
        if(!yuv_data_merge_rst_n)
            uv_row_recorded <= 1'b1;
        else
            uv_row_recorded <= ~uv_row_recorded;
    end

    // 将 Y 分量拼接至 128 位
    data_merge #(
        .DATA_IN_WIDTH(8),
        .DATA_OUT_WIDTH(128)
    ) y_merge_8_to_128(
        .clk_i(pclk_i),
        .rst_n_i(yuv_data_merge_rst_n),
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
        .clk_i(pclk_i),
        .rst_n_i(yuv_data_merge_rst_n),
        .de_i(uv_recorded),
        .data_i(yuv_data[15:0]),
        .de_o(uv_de_o),      
        .data_o(uv_o) 
    );

endmodule