module extif_top_sim_only(
    /* 系统信号 */
    input rst_n_i,                              // 复位信号输入（低电平有效）
    output rst_done_o,                          // 复位完成输出（高电平有效）
    input clk_200M_p_i,                         // 200MHz 差分时钟 P 端信号输入
    input clk_200M_n_i,                         // 200MHz 差分时钟 N 端信号输入
    output clk_ui_200M_o,                       // 200MHz 用户操作时钟输出（与 DDR 交互必须使用此时钟）
    /* YUV FIFO 相关信号 */ 
    input pclk_i,                               // 像素时钟输入（1080P@60fps：148.5MHz）
    input y_de_i,                               // Y 分量像素有效标志输入（高电平有效）
    input uv_de_i,                              // UV 分量像素有效标志输入（高电平有效）
    input [127:0] y_i,                          // Y 分量输入
    input [127:0] uv_i,                         // UV 分量输入
    input pixel_type_i,                         // 读取像素类型输入（0：Y；1：UV）
    input pixel_rd_en_i,                        // 缓冲区像素读取标志输入（高电平有效）
    output pixel_buffer_full_o,                 // 像素缓冲区满标志位（高电平有效）
    output [13:0] pixel_fifo_rd_cnt_o,
    /* extif 相关信号 */
    input extif_wr_en_i,
    input extif_rd_en_i,
    input [127:0] extif_data_i,
    output [127:0] extif_data_o,
    output hevc_rd_en_o,
    output hevc_wr_en_o,
    /* FDMA 相关信号 */ 
    input [31:0] FDMA_S_i_fdma_addr,
    input [15:0] FDMA_S_i_fdma_size,
    output FDMA_S_i_fdma_busy,
    /* DDR 相关信号 */ 
    output [14:0]DDR_PL_addr,
    output [2:0]DDR_PL_ba,
    output DDR_PL_cas_n,
    output [0:0]DDR_PL_ck_n,
    output [0:0]DDR_PL_ck_p,
    output [0:0]DDR_PL_cke,
    output [0:0]DDR_PL_cs_n,
    output [3:0]DDR_PL_dm,
    inout [31:0]DDR_PL_dq,
    inout [3:0]DDR_PL_dqs_n,
    inout [3:0]DDR_PL_dqs_p,
    output [0:0]DDR_PL_odt,
    output DDR_PL_ras_n,
    output DDR_PL_reset_n,
    output DDR_PL_we_n
);

/*************************** 信号线定义 ****************************/
    reg is_fifo_write;

    wire [127:0] video_buffer_pixel_out;

    wire FDMA_S_i_fdma_wbusy, FDMA_S_i_fdma_rbusy;
    wire FDMA_S_i_fdma_wvalid, FDMA_S_i_fdma_rvalid;
    
    // 该模块复位顺序为：FDMA_MIG_DDR >> VIDEO_BUFFER >> TIME_SHIFT 
    // 整个系统除 hdmi2rgb 模块外均工作在 ui_clk_200M 时钟下，若先复位 Video Buffer 则由于没有 ui_clk 直接系统锁死
    wire fdma_mig_ddr_rst_done;
    wire video_buffer_rst_done;

    // 系统复位完成标志
    assign rst_done_o = video_buffer_rst_done;

    // 各模块复位信号
    assign fdma_mig_ddr_rst_n = rst_n_i;
    assign video_buffer_rst_n = fdma_mig_ddr_rst_done;
    assign time_shift_rst_n = video_buffer_rst_done;

    // Video Buffer 读使能
    // pixel_rd_en_i 代表系统要求读取 FIFO 数据至 DDR 中
    // FDMA_S_i_fdma_wvalid 代表 FDMA 要求发送待写入 DDR 的数据至总线上 
    assign video_buffer_rd_en = is_fifo_write && FDMA_S_i_fdma_wvalid;
    // hevc ---> ddr
    assign hevc_rd_en_o = !is_fifo_write && FDMA_S_i_fdma_wvalid;

    // FDMA 写入数据
    // 该接口可能由 YUV FIFO 或 HEVC 写入，因此需要通过 FIFO 读使能判断具体哪一个写数据
    wire [127:0] fdma_mig_ddr_rdata;
    wire [127:0] fdma_mig_ddr_wdata = is_fifo_write ? video_buffer_pixel_out : extif_data_i;
    assign fdma_mig_ddr_wareq = pixel_rd_en_i || extif_wr_en_i;

    // FDMA 读写繁忙标志
    assign FDMA_S_i_fdma_busy = FDMA_S_i_fdma_wbusy || FDMA_S_i_fdma_rbusy;

    always@(posedge clk_ui_200M_o) begin
        if(!rst_n_i) 
            is_fifo_write <= 1'b1;
        else if(pixel_rd_en_i)
            is_fifo_write <= 1'b1;
        else if(extif_wr_en_i)
            is_fifo_write <= 1'b0;
        else 
            is_fifo_write <= is_fifo_write;
    end

/*********************** YUV FIFO 视频缓冲区 ************************/
    video_in_buffer_sim_only video_in_buffer(
        .rst_n_i(video_buffer_rst_n),
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
        .pixel_buffer_rd_cnt_o(pixel_fifo_rd_cnt_o),
        .pixel_o(video_buffer_pixel_out)
    );

/************************** FDMA MIG DDR **************************/
    fmd_wrapper fmd_wrapper(
        .rst_n_i(fdma_mig_ddr_rst_n),
        .clk_200M_i_clk_n(clk_200M_n_i),
        .clk_200M_i_clk_p(clk_200M_p_i),
        .rst_done_o(fdma_mig_ddr_rst_done),
        .clk_ui_200M_o(clk_ui_200M_o),
        .DDR_PL_addr(DDR_PL_addr),
        .DDR_PL_ba(DDR_PL_ba),
        .DDR_PL_cas_n(DDR_PL_cas_n),
        .DDR_PL_ck_n(DDR_PL_ck_n),
        .DDR_PL_ck_p(DDR_PL_ck_p),
        .DDR_PL_cke(DDR_PL_cke),
        .DDR_PL_cs_n(DDR_PL_cs_n),
        .DDR_PL_dm(DDR_PL_dm),
        .DDR_PL_dq(DDR_PL_dq),
        .DDR_PL_dqs_n(DDR_PL_dqs_n),
        .DDR_PL_dqs_p(DDR_PL_dqs_p),
        .DDR_PL_odt(DDR_PL_odt),
        .DDR_PL_ras_n(DDR_PL_ras_n),
        .DDR_PL_reset_n(DDR_PL_reset_n),
        .DDR_PL_we_n(DDR_PL_we_n),
        .FDMA_S_i_fdma_raddr(FDMA_S_i_fdma_addr),
        .FDMA_S_i_fdma_rareq(extif_rd_en_i),
        .FDMA_S_i_fdma_rbusy(FDMA_S_i_fdma_rbusy),
        .FDMA_S_i_fdma_rdata(fdma_mig_ddr_rdata),
        .FDMA_S_i_fdma_rready(1'b1),
        .FDMA_S_i_fdma_rsize(FDMA_S_i_fdma_size),
        .FDMA_S_i_fdma_rvalid(FDMA_S_i_fdma_rvalid),
        .FDMA_S_i_fdma_waddr(FDMA_S_i_fdma_addr),
        .FDMA_S_i_fdma_wareq(fdma_mig_ddr_wareq),
        .FDMA_S_i_fdma_wbusy(FDMA_S_i_fdma_wbusy),
        .FDMA_S_i_fdma_wdata(fdma_mig_ddr_wdata),
        .FDMA_S_i_fdma_wready(1'b1),
        .FDMA_S_i_fdma_wsize(FDMA_S_i_fdma_size),
        .FDMA_S_i_fdma_wvalid(FDMA_S_i_fdma_wvalid)
    );

    time_shift#(
        .DATA_WIDTH(1)
    ) hevc_wr_en_shift(
        .clk_i(clk_ui_200M_o),
        .rst_n_i(time_shift_rst_n),
        .data_i(FDMA_S_i_fdma_rvalid),
        .data_o(hevc_wr_en_o)
    );

    time_shift#(
        .DATA_WIDTH(128)
    ) extif_data_o_shift(
        .clk_i(clk_ui_200M_o),
        .rst_n_i(time_shift_rst_n),
        .data_i(fdma_mig_ddr_rdata),
        .data_o(extif_data_o)
    );

endmodule