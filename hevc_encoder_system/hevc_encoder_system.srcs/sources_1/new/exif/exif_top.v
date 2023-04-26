module exif_top(
    /* 系统信号 */
    input rst_n_i,                              // 复位信号输入（低电平有效）
    output rst_done_o,                          // 复位完成输出（高电平有效）
    input clk_100M_i,                           // 100MHz 时钟信号输入
    output clk_ui_200M_o,                       // 200MHz 用户操作时钟输出（与 DDR 交互必须使用此时钟）
    /* YUV FIFO 相关信号 */ 
    input pclk_i,                               // 像素时钟输入（1080P@60fps：148.5MHz）
    input vsync_i,                              // 场同步信号输入
    input y_de_i,                               // Y 分量像素有效标志输入（高电平有效）
    input uv_de_i,                              // UV 分量像素有效标志输入（高电平有效）
    input [127:0] y_i,                          // Y 分量输入
    input [127:0] uv_i,                         // UV 分量输入
    input pixel_type_i,                         // 读取像素类型输入（0：Y；1：UV）
    input pixel_rd_en_i,                        // 缓冲区像素读取标志输入（高电平有效）
    output pixel_buffer_full_o,                 // 像素缓冲区满标志位（高电平有效）
    output pixel_buffer_empty_o,                // 像素缓冲区空标志位（高电平有效）
    output [13:0] pixel_fifo_rd_cnt_o,
    output frame_last_block_come_o,             // 帧尾到达标志输出（高电平有效）
    output reg [13:0] frame_last_block_cnt_o,   // 帧尾待读像素块数目
    /* EXIF 相关信号 */
    input exif_wr_en_i,
    input exif_rd_en_i,
    input [127:0] exif_data_i,
    output [127:0] exif_data_o,
    output hevc_rd_en_o,
    output hevc_wr_en_o,
    /* FDMA 相关信号 */ 
    input [31:0] FDMA_S_i_fdma_addr,
    input [15:0] FDMA_S_i_fdma_size,
    output FDMA_S_i_fdma_busy,
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
    
    wire video_buffer_rst_done;

    wire video_buffer_pixel_valid_out;
    wire [127:0] video_buffer_pixel_out;

    wire FDMA_S_i_fdma_wvalid, FDMA_S_i_fdma_rvalid;

    wire FDMA_S_i_fdma_wbusy, FDMA_S_i_fdma_rbusy;
    
    // 系统上电为非复位状态时，复位顺序应遵照数据流向
    // 因此该模块复位顺序为：Video Buffer --> FDMA MIG DDR
    assign fdma_mig_ddr_rst_n = rst_n_i && !video_buffer_rst_done;

    // Video Buffer 读使能
    // pixel_rd_en_i 代表系统要求读取 FIFO 数据至 DDR 中
    // FDMA_S_i_fdma_wvalid 代表 FDMA 要求发送待写入 DDR 的数据至总线上 
    assign video_buffer_rd_en = pixel_rd_en_i && FDMA_S_i_fdma_wvalid;

    // FDMA 写入数据
    // 该接口可能由 YUV FIFO 或 HEVC 写入，因此需要通过 FIFO 读使能判断具体哪一个写数据
    assign fdma_mig_ddr_wdata = pixel_rd_en_i ? video_buffer_pixel_out : exif_data_i;
    assign fdma_mig_ddr_wareq = pixel_rd_en_i || exif_wr_en_i;

    assign FDMA_S_i_fdma_busy = FDMA_S_i_fdma_wbusy || FDMA_S_i_fdma_rbusy;

    // 在 vsync 下降沿时读取 FIFO 中帧尾数据个数
    // vsync 取反后同一时刻帧尾来临信号发出
    assign frame_last_block_come_o = ~vsync_i;

/*********************** YUV FIFO 视频缓冲区 ************************/
    video_in_buffer video_in_buffer(
        .rst_n_i(rst_n_i),
        .rst_done_o(video_buffer_rst_done),
        .wr_clk_i(pclk_i),
        .rd_clk_i(clk_ui_200M_o),
        .y_de_i(y_de_i),
        .uv_de_i(uv_de_i),
        .y_i(y_i),
        .uv_i(uv_i),
        .pixel_type_i(pixel_type_i),
        .pixel_rd_en_i(video_buffer_rd_en),
        .pixel_buffer_full_o(pixel_buffer_full_o),
        .pixel_buffer_empty_o(pixel_buffer_empty_o),
        .pixel_buffer_rd_cnt_o(pixel_fifo_rd_cnt_o),
        .pixel_valid_o(video_buffer_pixel_valid_out),
        .pixel_o(video_buffer_pixel_out)
    );

/************************** FDMA MIG DDR **************************/
    fdma_mig_ddr_wrapper fdma_mig_ddr_wrapper(
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
        .DDR3_o_we_n(DDR3_o_we_n),
        .FDMA_S_i_fdma_raddr(FDMA_S_i_fdma_addr),
        .FDMA_S_i_fdma_rareq(exif_rd_en_i),
        .FDMA_S_i_fdma_rbusy(FDMA_S_i_fdma_rbusy),
        .FDMA_S_i_fdma_rdata(exif_data_o),
        .FDMA_S_i_fdma_rready(1'b1),
        .FDMA_S_i_fdma_rsize(FDMA_S_i_fdma_size),
        .FDMA_S_i_fdma_rvalid(hevc_wr_en_o),
        .FDMA_S_i_fdma_waddr(FDMA_S_i_fdma_addr),
        .FDMA_S_i_fdma_wareq(fdma_mig_ddr_wareq),
        .FDMA_S_i_fdma_wbusy(FDMA_S_i_fdma_wbusy),
        .FDMA_S_i_fdma_wdata(fdma_mig_ddr_wdata),
        .FDMA_S_i_fdma_wready(1'b1),
        .FDMA_S_i_fdma_wsize(FDMA_S_i_fdma_size),
        .FDMA_S_i_fdma_wvalid(hevc_rd_en_o),
        .clk_100M_i(clk_100M_i),
        .init_calib_complete_o(rst_done_o),
        .rst_n_i(fdma_mig_ddr_rst_n),
        .ui_clk_200M_o(clk_ui_200M_o)
    );

/************************ YUV FIFO 帧尾数据 ************************/
    always@(negedge vsync_i or negedge rst_n_i) begin
        if(!rst_n_i) 
            frame_last_block_cnt_o <= 14'b0;
        else
            frame_last_block_cnt_o <= pixel_fifo_rd_cnt_o;  
    end

endmodule