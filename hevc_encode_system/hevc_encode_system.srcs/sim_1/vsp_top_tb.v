`timescale 1ns/1ps

module vsp_top_tb;

    `define HALF_CLK    1
    `define FULL_CLK    `HALF_CLK * 2

    reg clk;
    reg rst_n;
    reg hevc_encode_start;
    reg hevc_encode_done;
    reg [7:0] bs_data;
    reg bs_data_valid;

    wire rst_done;
    wire hevc_bs_data_valid;
    wire [31:0] hevc_bs_data;

    integer frame_cnt, bs_cnt;

    vsp_top vsp_top(
        .clk_i(clk),
        .rst_n_i(rst_n),
        .rst_done_o(rst_done),
        .hevc_encode_start_i(hevc_encode_start),
        .hevc_encode_done_i(hevc_encode_done),
        .bs_data_i(bs_data),
        .bs_data_valid_i(bs_data_valid),
        .hevc_bs_data_valid_o(hevc_bs_data_valid),
        .hevc_bs_data_o(hevc_bs_data)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #(`HALF_CLK) clk = ~clk;
        end
    end

    initial begin
        // 初始化输入信号
        rst_n = 1'b0;
        hevc_encode_start = 1'b0;
        hevc_encode_done = 1'b0;
        bs_data = 8'b0;
        bs_data_valid = 1'b0;
        #(10 * `FULL_CLK) rst_n = 1'b1;
        // 等待模块复位完成
        wait(rst_done);
        // 输出码流
        for(frame_cnt = 0; frame_cnt < 10; frame_cnt = frame_cnt + 1) begin
            // 置位编码开始标志
            @(posedge clk) hevc_encode_start = 1'b1;
            @(posedge clk) hevc_encode_start = 1'b0;
            #(100 * `FULL_CLK);
            // 输出 HEVC LCU 裸流
            for(bs_cnt = 0; bs_cnt < 50; bs_cnt = bs_cnt + 1) begin
                @(posedge clk) begin
                    bs_data = bs_data + 1'b1;
                    bs_data_valid = bs_data % 2;
                end
            end
            // 输出帧编码完成标志
            @(posedge clk) hevc_encode_done = 1'b1;
            @(posedge clk) hevc_encode_done = 1'b0;
        end
    end
endmodule