module data_merge_8_to_128(
    input clk_i,
    input rst_n_i,
    input de_i,
    input [7:0] data_i,
    output reg de_o,
    output reg [127:0] data_o
);

    reg [3:0] cnt;

    // 数据拼接块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i)
            data_o <= 128'b0;
        else if(de_i)
            data_o <= { data_o[119:0], data_i };
        else
            data_o <= data_o;
    end

    // 计数块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i)
            cnt <= 4'b0;
        else if(de_i)
            if(cnt == 4'd15)
                cnt <= 4'b0;
            else 
                cnt <= cnt + 1'b1;
        else
            cnt <= cnt;
    end

    // 数据使能块
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) 
            de_o <= 1'b0;
        else if(de_i)
            if(cnt == 4'd15)
                de_o <= 1'b1;
            else
                de_o <= 1'b0;
        else
            de_o <= de_o;
    end

endmodule