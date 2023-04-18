`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 18:24:17
// Design Name: 
// Module Name: rgb2yuv_tb
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


module rgb2yuv_tb();

    reg rst_n;

    reg [7:0] r;
    reg [7:0] g;
    reg [7:0] b;

    wire [7:0] y;
    wire [7:0] u;
    wire [7:0] v;

    rgb2yuv rgb2yuv(
        .rst_n_i(rst_n),
        .r_i(r),
        .g_i(g),
        .b_i(b),
        .y_o(y),
        .u_o(u),
        .v_o(v)
    );

    initial begin
        rst_n = 1'b0;
        r = 104;
        g = 79;
        b = 57;
        #10;
        rst_n = 1'b1;
        #10;
        r = 100;
        g = 68;
        b = 55;
        #10;
        r = 141;
        g = 136;
        b = 142;
        #10 $stop;
    end
endmodule
