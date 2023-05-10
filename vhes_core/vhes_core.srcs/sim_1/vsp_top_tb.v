`timescale 1ns/1ps

module vsp_top_tb;

    `define HALF_UI_CLK     1
    `define FULL_UI_CLK     `HALF_UI_CLK * 2
    `define HALF_BS_RD_CLK  4
    `define FULL_BS_RD_CLK  `HALF_BS_RD_CLK * 2

    reg ui_clk;
    reg bs_rd_clk;

    reg rst_n;
    reg hevc_encode_start;
    reg hevc_encode_done;
    reg [7:0] bs_data;
    reg bs_valid;

    wire rst_done;
    wire hevc_bs_valid;
    wire [31:0] hevc_bs_data;

    integer frame_cnt, bs_cnt;

    vsp_top vsp_top(
        .clk_i(ui_clk),
        .bs_rd_clk_i(bs_rd_clk),
        .rst_n_i(rst_n),
        .rst_done_o(rst_done),
        .hevc_encode_start_i(hevc_encode_start),
        .hevc_encode_done_i(hevc_encode_done),
        .bs_data_i(bs_data),
        .bs_valid_i(bs_valid),
        .hevc_bs_valid_o(hevc_bs_valid),
        .hevc_bs_data_o(hevc_bs_data)
    );

    initial begin
        ui_clk = 1'b0;
        forever begin
            #(`HALF_UI_CLK) ui_clk = ~ui_clk;
        end
    end

    initial begin
        bs_rd_clk = 1'b0;
        forever begin
            #(`HALF_BS_RD_CLK) bs_rd_clk = ~bs_rd_clk;
        end
    end

    initial begin
        // 初始化输入信号
        rst_n = 1'b0;
        hevc_encode_start = 1'b0;
        hevc_encode_done = 1'b0;
        bs_data = 8'b0;
        bs_valid = 1'b0;
        #(10 * `FULL_UI_CLK) rst_n = 1'b1;
        // 等待模块复位完成
        wait(rst_done);
        // 输出码流
        for(frame_cnt = 0; frame_cnt < 10; frame_cnt = frame_cnt + 1) begin
            // 置位编码开始标志
            @(posedge ui_clk) hevc_encode_start = 1'b1;
            @(posedge ui_clk) hevc_encode_start = 1'b0;
            #(100 * `FULL_UI_CLK);
            // 输出 HEVC LCU 裸流
            for(bs_cnt = 0; bs_cnt < 50; bs_cnt = bs_cnt + 1) begin
                @(posedge ui_clk) begin
                    bs_data = bs_data + 1'b1;
                    bs_valid = bs_data % 2;
                end
            end
            // 输出帧编码完成标志
            @(posedge ui_clk) hevc_encode_done = 1'b1;
            @(posedge ui_clk) hevc_encode_done = 1'b0;
        end
    end
endmodule