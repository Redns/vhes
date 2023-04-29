module hdmi2rgb(
    input clk_i,            // 系统时钟输入
    input rst_n_i,          // 复位信号输入（低电平有效）
    inout adv_sda,          // ADV7611 IIC 数据信号
    output adv_scl,         // ADV7611 IIC 时钟信号
    output adv_rst_o,       // ADV7611 复位信号
    output adv_pen_o,       // ADV7611 电源使能信号
    output adv_cfg_done_o   // ADV7611 配置完成信号（高电平有效）
);

    assign adv_pen_o = 1'b1;
    assign adv_rst_o = 1'b1;

    // 例化 ADV7611 IIC 配置模块
    uicfg7611 uicfg7611(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .cfg_done(adv_cfg_done_o)
    );
    
endmodule