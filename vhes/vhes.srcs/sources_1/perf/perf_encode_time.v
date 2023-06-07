module perf_encode_time(
    input clk_i,                            // 时钟输入
    input rst_n_i,                          // 复位信号输入（低电平有效）
    input encode_start_i,                   // 编码起始信号输入（高电平有效）
    output reg encode_time_valid_o,         // 编码时间有效标志输出（高电平有效）
    output reg [31:0] encode_time_o         // 编码时间输出
);

    reg [31:0] encode_time_cnt;

    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            encode_time_valid_o <= 1'b0;
            encode_time_o <= 32'b0;
            encode_time_cnt <= 32'b0;
        end        
        else begin
            if(encode_start_i) begin
                if(encode_time_cnt > 0) begin
                    encode_time_valid_o <= 1'b1;
                    encode_time_o <= encode_time_cnt;
                    encode_time_cnt <= 32'b0;
                end
                else begin
                    encode_time_valid_o <= 1'b0;
                    encode_time_o <= 32'b0;
                end
            end
            else begin
                if(encode_time_valid_o) begin
                    encode_time_valid_o <= 1'b0;
                end
                encode_time_cnt <= encode_time_cnt + 1'b1;
            end
        end 
    end

endmodule