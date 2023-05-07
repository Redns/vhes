module hdmi2rgb(
    input clk_i,            // 系统时钟输入
    input rst_n_i,          // 复位信号输入（低电平有效）
    inout sil_sda,          // SIL9011 IIC 数据信号
    output sil_scl,         // SIL9011 IIC 时钟信号
    output sil_cfg_done_o   // SIL9011 配置完成信号（高电平有效）
);

    // 例化 SIL9011 IIC 配置模块
    uicfg9011 uicfg9011(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .sil_sda(sil_sda),
        .sil_scl(sil_scl),
        .sil_cfg_done(sil_cfg_done_o)
    );
    
endmodule