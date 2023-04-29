module data_merge
#(
    parameter DATA_IN_WIDTH     =   8,      // 输入数据位宽
    parameter DATA_OUT_WIDTH    =   128     // 输出数据位宽
)
(
    input clk_i,
    input rst_n_i,
    input de_i,
    input [DATA_IN_WIDTH - 1:0] data_i,
    output reg de_o,
    output reg [DATA_OUT_WIDTH - 1:0] data_o
);

    // 最高支持 2^32 = 42_9496_7296 个输入拼接为输出
    reg [31:0] cnt;
    reg [31:0] cnt_threshold;

    // 数据拼接块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i)
            data_o <= 0;
        else if(de_i)
            data_o <= { data_o[DATA_OUT_WIDTH - DATA_IN_WIDTH - 1:0], data_i };
        else
            data_o <= data_o;
    end

    // 计数块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            cnt <= 32'b0;
            cnt_threshold <= DATA_OUT_WIDTH / DATA_IN_WIDTH - 1'b1;
        end
        else if(de_i)
            if(cnt == cnt_threshold)
                cnt <= 32'b0;
            else 
                cnt <= cnt + 1'b1;
        else
            cnt <= cnt;
    end

    // 数据使能块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) 
            de_o <= 0;
        else if(de_i)
            if(cnt == cnt_threshold)
                de_o <= 1'b1;
            else
                de_o <= 1'b0;
        else
            de_o <= 1'b0;
    end

endmodule