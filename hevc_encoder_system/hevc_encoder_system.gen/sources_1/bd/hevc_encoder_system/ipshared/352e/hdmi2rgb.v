`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 14:47:52
// Design Name: 
// Module Name: hdmi2rgb
// Project Name: 
// Target Devices: MZ7035FD
// Tool Versions: Vivado 2022.1
// Description: 
// HDMI7611 FEP ��Ƶ�ɼ�����ʼ��ģ��
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hdmi2rgb(
    input clk_i,            // ʱ������
    input rst_n_i,          // ��λ�źţ��͵�ƽ��Ч
    inout adv_sda,          // ADV7611 IIC �����ź���
    output adv_scl,         // ADV7611 IIC ʱ���ź���
    output adv_rst_o,       // ADV7611 IIC ��λ�ź���
    output adv_pen_o,       // ADV7611 ��Դʹ��
    output adv_cfg_done_o   // ADV7611 ��ʼ������ź�
);

    assign adv_pen_o = 1'b1;
    assign adv_rst_o = 1'b1;

    // ADV7611 IIC ����ģ��
    uicfg7611 uicfg7611(
        .clk_i(clk_i),
        .rst_n(rst_n_i),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .cfg_done(adv_cfg_done_o)
    );
    
endmodule