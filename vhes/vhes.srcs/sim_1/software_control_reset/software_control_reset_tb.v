`timescale 1ns/1ns

module software_control_reset_tb;

    `define HALF_SYS_CLK    5
    `define FULL_SYS_CLK    10

    reg clk;
    reg ext_rst_n;
    wire[1:0] peripheral_rst;
    wire[2:0] peripheral_rst_n;

    software_control_reset#
    (
        .EXT_RESETN_VALID_WIDTH(4),
        .PERIPHERAL_RESET_WIDTH(2),
        .PERIPHERAL_RESET_VALID_WIDTH(8),
        .PERIPHERAL_RESETN_WIDTH(3),
        .PERIPHERAL_RESETN_VALID_WIDTH(64)
    ) software_control_reset
    (
        .clk_i(clk),
        .ext_rst_n_i(ext_rst_n),
        .peripheral_rst_o(peripheral_rst),
        .peripheral_rst_n_o(peripheral_rst_n)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #(`HALF_SYS_CLK) clk = ~clk;
        end
    end

    initial begin
        ext_rst_n = 1'b1;
        // 外部复位输入无效
        #(5 * `FULL_SYS_CLK) ext_rst_n = 1'b0;
        #(3 * `FULL_SYS_CLK) ext_rst_n = 1'b1;
        #(20 * `FULL_SYS_CLK);
        // 外部复位输入有效
        #(5 * `FULL_SYS_CLK) ext_rst_n = 1'b0;
        #(8 * `FULL_SYS_CLK) ext_rst_n = 1'b1;
        #(200 * `FULL_SYS_CLK) $stop;
    end

endmodule