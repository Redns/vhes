module hevc_encoder_system_top(
    /* 系统信号 */
    input rst_n_i,                                  // 复位信号输入（低电平有效）
    input clk_100M_i,                               // 100MHz 时钟信号输入
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
    /* HEVC 码流输出 */ 
    output bs_valid_o,                              // 码流有效标志输出
    output [7:0] bs_data_o                          // 码流数据（LCU 裸流）
);

/*************************** HDMI 转 RGB 模块 ****************************/
    hdmi2rgb hdmi2rgb(
        .rst_n_i(rst_n_i),
        .clk_100M_i(clk_100M_i),
        .rst_done_o(),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .adv_rst_o(adv_rst_o),
        .adv_pen_o(adv_pen_o),
        .pclk_i(pclk_i),
        .hsync_i(hsync_i),
        .vsync_i(vsync_i),
        .rgb_i(rgb_i),
        .de_i(de_i),
        .y_de_o(),
        .uv_de_o(),
        .y_o(),
        .uv_o()
    );

endmodule