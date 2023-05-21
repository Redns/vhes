`timescale 1ns/1ps

module time_shift_tb;

    reg clk;
    reg rst_n;
    reg [7:0] data;
    wire [7:0] data_o;

    integer cnt;

    initial begin
        clk = 1'b0;
        forever begin 
            #1 clk = ~clk;
        end
    end

    initial begin
        rst_n = 1'b0;
        data = 8'hff;
        #10 @(negedge clk) rst_n = 1'b1;
        for(cnt = 0; cnt < 100; cnt = cnt + 1) begin
            @(posedge clk) begin
                data = cnt;
            end
        end
    end

    time_shift#(
        .DATA_WIDTH(8)
    ) time_shift(
        .clk_i(clk),
        .rst_n_i(rst_n),
        .data_i(data),
        .data_o(data_o)
    );

endmodule