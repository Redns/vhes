`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/20 21:21:14
// Design Name: 
// Module Name: merge_data_8_to_128_tb
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


module merge_data_16_to_128_tb;
    reg clk;
    reg rst_n;
    reg de;
    reg [15:0] data;

    wire de_o;
    wire [127:0] data_o;

    integer i;

    // 例化数据拼接块
    data_merge_16_to_128 data_merge_16_to_128(
        .clk_i(clk),
        .rst_n_i(rst_n),
        .de_i(de),
        .data_i(data),
        .de_o(de_o),
        .data_o(data_o)
    );

    initial clk = 1'b0;
    always #1 clk = ~clk;

    initial begin
        rst_n = 1'b0;
        de = 1'b1;
        data = 16'b0;
        #10;
        @(negedge clk)
            rst_n = 1'b1;
        for(i = 0; i < 32; i = i + 1) begin
            data = i;
            if(i % 2) 
                de = 1'b0;
            else
                de = 1'b1;
            @(negedge clk);
        end
        #10 $stop;
    end


endmodule