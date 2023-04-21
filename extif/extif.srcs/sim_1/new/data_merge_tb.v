`timescale 1ps/1ps

module data_merge_tb;
    reg clk;
    reg rst_n;
    reg de;
    reg [7:0] data_8bit;
    reg [15:0] data_16bit;

    wire de_8bit_o, de_16bit_o;
    wire [127:0] data_8bit_o, data_16bit_o;

    integer i;

/************************** 例化数据拼接块 ***************************/
    // 8bit 转 128bit
    data_merge #(
        .DATA_IN_WIDTH(8),
        .DATA_OUT_WIDTH(128)
    )
    data_merge_8_to_128(
        .clk_i(clk),
        .rst_n_i(rst_n),
        .de_i(de),
        .data_i(data_8bit),
        .de_o(de_8bit_o),
        .data_o(data_8bit_o)
    );

    // 16bit 转 128bit
    data_merge #(
        .DATA_IN_WIDTH(16),
        .DATA_OUT_WIDTH(128)
    )
    data_merge_16_to_128 (
        .clk_i(clk),
        .rst_n_i(rst_n),
        .de_i(de),
        .data_i(data_16bit),
        .de_o(de_16bit_o),
        .data_o(data_16bit_o)
    );

    initial clk = 1'b0;
    always #1 clk = ~clk;

    initial begin
        rst_n = 1'b0;
        data_8bit = 8'b0;
        data_16bit = 16'b0;
        #10;
        @(negedge clk) rst_n = 1'b1;
        for(i = 0; i < 32; i = i + 1) begin
            @(posedge clk) begin
                if(i % 2)
                    de = 1'b0;
                else
                    de = 1'b1;
                data_8bit = i;
                data_16bit = i;
            end
        end
        #10 $stop;
    end
endmodule