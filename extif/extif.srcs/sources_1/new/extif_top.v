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
    input rst_n_i,
    // YUV 视频源输入
    input piexl_clk_i,
    input [23:0] yuv_i,
    input hsync_i,
    input vsync_i,
    input de_i,
    // HEVC 数据接口
    input hevc_clk_i,
    input [4:0] mode_i,
    input start_i,
    input [7:0] lcu_height_i,
    input [7:0] lcu_width_i,
    input [11:0] lcu_x_i,
    input [11:0] lcu_y_i,
    input [127:0] lcu_data_i,
    output lcu_data_operate_done_o,
    output [127:0] lcu_data_o,
    output rden_o,
    output wren_o
    );

endmodule
