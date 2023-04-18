module hevc_encoder_system_top(
    // clk and reset signal
    input clk_i,
    input rst_n_i,
    // adv7611 config signal
    inout adv_sda,
    output adv_scl,
    output adv_rst_o,
    output adv_pen_o,
    // adv7611 input
    input hs_i,
    input vs_i,
    input de_i,
    input pclk_i,
    input [23:0] rgb_i
);

    wire de_i;

    // hdmi to rgb888 module
    hdmi2rgb hdmi2rgb(
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .adv_rst_o(adv_rst_o),
        .adv_pen_o(adv_pen_o)
    );

    rgb2yuv rgb2yuv(
        .rst_n_i(rst_n),
        .r_i(rgb_i[23:16]),
        .g_i(rgb_i[15:8]),
        .b_i(rgb_i[7:0])
    );

endmodule