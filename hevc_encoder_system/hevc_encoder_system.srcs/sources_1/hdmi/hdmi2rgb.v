`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 14:47:52
// Design Name: 
// Module Name: hdmi2rgb
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


module hdmi2rgb(
    // clk and reset signal
    input clk_i,
    input rst_n_i,
    // adv7611 config signal
    inout adv_sda,
    output adv_scl,
    output adv_rst_o,
    output adv_pen_o,
    output adv_cfg_done_o
);

    assign adv_pen_o = 1'b1;
    assign adv_rst_o = 1'b1;

    // adv7611 config module
    uicfg7611 uicfg7611(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .cfg_done(adv_cfg_done_o)
    );
    
endmodule