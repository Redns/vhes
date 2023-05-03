/*
 * 将输入信号延迟 1.5 个时钟输出
*/
module time_shift
#(
    parameter DATA_WIDTH    =   128
)
(
    input clk_i,
    input rst_n_i,
    input [DATA_WIDTH - 1:0] data_i,
    output [DATA_WIDTH - 1:0] data_o
);

    reg [2 * DATA_WIDTH - 1:0] data;

    assign data_o = data[2 * DATA_WIDTH - 1: DATA_WIDTH];

    always@(negedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i)
            data <= 0;
        else
            data <= { data[DATA_WIDTH - 1:0], data_i };
    end

endmodule