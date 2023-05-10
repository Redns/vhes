module hdmi2rgb(
    input clk_i,            // 系统时钟输入
    input rst_n_i,          // 复位信号输入（低电平有效）
    inout sii_sda,          // SII9011 IIC 数据信号
    output sii_scl,         // SII9011 IIC 时钟信号
    output sii_rst_n,       // SII9011 复位信号
    output sii_cfg_done_o   // SII9011 配置完成信号（高电平有效）
);

    // 例化 SII9011 IIC 配置模块
    uicfg9011 uicfg9011(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .sii_sda(sii_sda),
        .sii_scl(sii_scl),
        .sii_rst_n(sii_rst_n),
        .sii_cfg_done(sii_cfg_done_o)
    );
    
endmodule