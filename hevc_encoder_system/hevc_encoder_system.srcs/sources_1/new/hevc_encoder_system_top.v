`include "enc_defines.v"

module hevc_encoder_system_top(
    /* 系统信号 */
    input rst_n_i,                                  // 复位信号输入（低电平有效）
    input clk_100M_i,                               // 100MHz 时钟信号输入
    /* FEP 视频采集卡 ADV7611 配置信号 */ 
    inout adv_sda,                                  // ADV7611 IIC 数据信号
    output adv_scl,                                 // ADV7611 IIC 时钟信号
    output adv_rst_o,                               // ADV7611 复位信号
    output adv_pen_o,                               // ADV7611 电源使能信号
    /* HDMI 行场同步信号 */ 
    input pclk_i,                                   // 像素时钟输入（1080P@60fps：148.5MHz）
    input hsync_i,                                  // 行同步信号输入
    input vsync_i,                                  // 场同步信号输入
    input [23:0] rgb_i,                             // RGB888 信号输入
    input de_i,                                     // 像素有效标志输入
    /* HEVC 码流输出 */ 
    output bs_valid_o,                              // 码流有效标志输出
    output [7:0] bs_data_o,                         // 码流数据（LCU 裸流）
    /* DDR 相关信号 */ 
    output [14:0]DDR3_o_addr,
    output [2:0]DDR3_o_ba,
    output DDR3_o_cas_n,
    output [0:0]DDR3_o_ck_n,
    output [0:0]DDR3_o_ck_p,
    output [0:0]DDR3_o_cke,
    output [0:0]DDR3_o_cs_n,
    output [3:0]DDR3_o_dm,
    inout [31:0]DDR3_o_dq,
    inout [3:0]DDR3_o_dqs_n,
    inout [3:0]DDR3_o_dqs_p,
    output [0:0]DDR3_o_odt,
    output DDR3_o_ras_n,
    output DDR3_o_reset_n,
    output DDR3_o_we_n
);

/*************************** 信号线定义 ****************************/
    // 复位信号
    // 复位顺序：HDMI to RGB --> EXIF --> HEVC CORE 
    wire hdmi2rgb_rst_done, exif_top_rst_done;

    assign exif_top_rst_n = rst_n_i && !hdmi2rgb_rst_done;
    assign hevc_core_rst_n = rst_n_i && !exif_top_rst_done;

    // 时钟信号
    wire clk_ui_200M;

    // HDMI2RGB & EXIF
    wire vsync;
    wire [127:0] pixel_y, pixel_uv;
    wire pixel_y_de, pixel_uv_de;

    // CTRL & EXIF
    wire pixel_type;
    wire pixel_buffer_rd_en;

    wire pixel_buffer_full;
    wire pixel_buffer_empty;
    wire [13:0] pixel_buffer_rd_cnt;
    wire frame_last_block_come;
    wire [13:0] frame_last_block_cnt;

    // CTRL & EXIF
    wire exif_wr_en, exif_rd_en;
    wire [31:0] fdma_addr;
    wire [15:0] fdma_size;
    wire fdma_busy;

    // CTRL & HEVC
    wire hevc_sys_type;
    wire [4:0] hevc_exif_mode;
    wire hevc_sys_start, hevc_sys_done;
    wire hevc_exif_start, hevc_exif_done;
    wire [11:0] hevc_exif_x, hevc_exif_y;
    wire [7:0] hevc_exif_width, hevc_exif_height;

    // EXIF & HEVC
    wire hevc_wr_en, hevc_rd_en;
    wire [127:0] exif_data_in_hevc_data_out, exif_data_out_hevc_data_in; 

/************************ HDMI 转 RGB 模块 *************************/
    hdmi2yuv_top hdmi2yuv_top(
        .rst_n_i(rst_n_i),
        .clk_100M_i(clk_100M_i),
        .rst_done_o(hdmi2rgb_rst_done),
        .adv_sda(adv_sda),
        .adv_scl(adv_scl),
        .adv_rst_o(adv_rst_o),
        .adv_pen_o(adv_pen_o),
        .pclk_i(pclk_i),
        .hsync_i(hsync_i),
        .vsync_i(vsync_i),
        .rgb_i(rgb_i),
        .de_i(de_i),
        .vsync_o(vsync),
        .y_de_o(pixel_y_de),
        .uv_de_o(pixel_uv_de),
        .y_o(pixel_y),
        .uv_o(pixel_uv)
    );

/**************************** 缓存模块 *****************************/
    exif_top exif_top(
        .rst_n_i(exif_top_rst_n),
        .rst_done_o(exif_top_rst_done),
        .clk_100M_i(clk_100M_i),
        .clk_ui_200M_o(clk_ui_200M),
        .pclk_i(pclk_i),
        .vsync_i(vsync),
        .y_de_i(pixel_y_de),
        .uv_de_i(pixel_uv_de),
        .y_i(pixel_y),
        .uv_i(pixel_uv),
        .pixel_type_i(pixel_type),
        .pixel_rd_en_i(pixel_buffer_rd_en),
        .pixel_buffer_full_o(pixel_buffer_full),
        .pixel_buffer_empty_o(pixel_buffer_empty),
        .pixel_fifo_rd_cnt_o(pixel_buffer_rd_cnt),
        .frame_last_block_come_o(frame_last_block_come),
        .frame_last_block_cnt_o(frame_last_block_cnt),
        .exif_wr_en_i(exif_wr_en),
        .exif_rd_en_i(exif_rd_en),
        .exif_data_i(exif_data_in_hevc_data_out),
        .exif_data_o(exif_data_out_hevc_data_in),
        .hevc_rd_en_o(hevc_rd_en),
        .hevc_wr_en_o(hevc_wr_en),
        .FDMA_S_i_fdma_addr(fdma_addr),
        .FDMA_S_i_fdma_size(fdma_size),
        .FDMA_S_i_fdma_busy(fdma_busy),
        .DDR3_o_addr(DDR3_o_addr),
        .DDR3_o_ba(DDR3_o_ba),
        .DDR3_o_cas_n(DDR3_o_cas_n),
        .DDR3_o_ck_n(DDR3_o_ck_n),
        .DDR3_o_ck_p(DDR3_o_ck_p),
        .DDR3_o_cke(DDR3_o_cke),
        .DDR3_o_cs_n(DDR3_o_cs_n),
        .DDR3_o_dm(DDR3_o_dm),
        .DDR3_o_dq(DDR3_o_dq),
        .DDR3_o_dqs_n(DDR3_o_dqs_n),
        .DDR3_o_dqs_p(DDR3_o_dqs_p),
        .DDR3_o_odt(DDR3_o_odt),
        .DDR3_o_ras_n(DDR3_o_ras_n),
        .DDR3_o_reset_n(DDR3_o_reset_n),
        .DDR3_o_we_n(DDR3_o_we_n)
    );

/************************** HEVC 编码核 ***************************/
    h265enc_top u_enc_top(
        // TODO 考虑采用动态时钟
        // 加载数据时使用 200MHz DDR 用户时钟
        // 执行编码时使用 400MHz 时钟
        .clk(clk_ui_200M),
        .rstn(hevc_core_rst_n),
        /* 系统配置 */
        .sys_start_i(hevc_sys_start),
        .sys_type_i(hevc_sys_type),
        .sys_all_x_i(`FRAME_WIDTH),
        .sys_all_y_i(`FRAME_HEIGHT),
        .sys_init_qp_i(`INITIAL_QP),
        .sys_done_o(hevc_sys_done),
        .sys_IinP_ena_i(`ENABLE_IinP),
        .sys_db_ena_i(`ENABLE_DBSAO),
        .sys_sao_ena_i(`ENABLE_DBSAO),
        .sys_posi4x4bit_i(`POSI4x4BIT),
        /* 跳过阈值 */ 
        .skip_cost_thresh_08(`SKIP_COST_THRESH_8),
        .skip_cost_thresh_16(`SKIP_COST_THRESH_16),
        .skip_cost_thresh_32(`SKIP_COST_THRESH_32),
        .skip_cost_thresh_64(`SKIP_COST_THRESH_64),
        /* 重建配置 */ 
        .sys_rc_mod64_sum_o(),
        .sys_rc_bitnum_i(10000),
        .sys_rc_k(0),
        .sys_rc_roi_height(1),
        .sys_rc_roi_width(1),
        .sys_rc_roi_x(4),
        .sys_rc_roi_y(2),
        .sys_rc_roi_enable(0),
        .sys_rc_L1_frame_byte(100),
        .sys_rc_L2_frame_byte(300),
        .sys_rc_lcu_en(0),
        .sys_rc_max_qp(51),
        .sys_rc_min_qp(10),
        .sys_rc_delta_qp(4),
        /* 运动估计配置 */
        .sys_ime_cmd_num_i(3'h1),
        .sys_ime_cmd_dat_i(232'h5292000a284),
        /* 缓存接口 */
        .extif_start_o(hevc_exif_start),
        .extif_done_i(hevc_exif_done),
        .extif_mode_o(hevc_exif_mode),
        .extif_x_o(hevc_exif_x),
        .extif_y_o(hevc_exif_y),
        .extif_width_o(hevc_exif_width),
        .extif_height_o(hevc_exif_height),
        .extif_wren_i(hevc_wr_en),
        .extif_rden_i(hevc_rd_en),
        .extif_data_i(exif_data_out_hevc_data_in),
        .extif_data_o(exif_data_in_hevc_data_out),
        /* 码流输出 */
        .bs_val_o(bs_valid_o),
        .bs_dat_o(bs_data_o)
    );

/************************** 编码控制模块 ***************************/
    hevc_encoder_system_ctrl hevc_encoder_system_ctrl(
        .clk_ui(clk_ui_200M),
        .rst_n_i(rst_n_i),
        .pixel_type_o(pixel_type),
        .pixel_buffer_rd_en_o(pixel_buffer_rd_en),
        .pixel_buffer_full_i(pixel_buffer_full),
        .pixel_buffer_empty_i(pixel_buffer_empty),
        .pixel_buffer_rd_cnt_i(pixel_buffer_rd_cnt),
        .exif_wr_en_o(exif_wr_en),
        .exif_rd_en_o(exif_rd_en),
        .fdma_addr_o(fdma_addr),
        .fdma_size_o(fdma_size),
        .fdma_busy_i(fdma_busy),
        .hevc_sys_start_o(hevc_sys_start),
        .hevc_sys_type_o(hevc_sys_type),
        .hevc_sys_done_i(hevc_sys_done),
        .hevc_exif_start_i(hevc_exif_start),
        .hevc_exif_done_o(hevc_exif_done),
        .hevc_exif_mode_i(hevc_exif_mode),
        .hevc_exif_x_i(hevc_exif_x),
        .hevc_exif_y_i(hevc_exif_y),
        .hevc_exif_width_i(hevc_exif_width),
        .hevc_exif_height_i(hevc_exif_height)
    );

endmodule