`timescale 1ns/1ps

module vsps_tb;

    reg [2:0] type;
    reg [7:0] index;
    reg [7:0] frame_cnt;
    reg [15:0] trail_sn_init;
    wire [7:0] data;
    wire [7:0] data_size;

    vsps vsps(
        .type_i(type),
        .index_i(index),
        .frame_cnt_i(frame_cnt),
        .trail_sn_init_i(trail_sn_init),
        .data_o(data),
        .data_size_o(data_size)
    );

    initial begin
        type = 3'd5;
        index = 8'd2;
        frame_cnt = 8'd1;
        trail_sn_init = 16'hd80f;
        #10 index = 8'd3;
        #10 frame_cnt = 8'd255;
        #10 index = 8'd2;
    end

endmodule