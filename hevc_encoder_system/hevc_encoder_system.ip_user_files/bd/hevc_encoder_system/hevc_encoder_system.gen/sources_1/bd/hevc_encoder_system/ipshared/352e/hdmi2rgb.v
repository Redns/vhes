`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 14:47:52
// Design Name: 
// Module Name: hdmi2rgb
// Project Name: 
// Target Devices: MZ7035FD
// Tool Versions: Vivado 2022.1
// Description: 
// HDMI7611 FEP 视频采集卡初始化模块
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hdmi2rgb(
    input clk_i,            // 时钟输入
    input rst_n_i,          // 复位信号，低电平有效
    inout adv_sda,          // ADV7611 IIC 数据信号线
    output adv_scl,         // ADV7611 IIC 时钟信号线
    output adv_rst_o,       // ADV7611 IIC 复位信号线
    output adv_pen_o,       // ADV7611 电源使能
    output adv_cfg_done_o   // ADV7611 初始化完成信号
);

    assign adv_pen_o = 1'b1;
    assign adv_rst_o = 1'b1;

    // ADV7611 IIC 配置模块
    uicfg7611 uicfg7611(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .cfg_done(adv_cfg_done_o)
    );
    
endmodule