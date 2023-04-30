`include "enc_defines.v"

module xk265_ctrl(
    input clk_ui,
    input rst_n_i,
    /* Video Buffer 相关信号 */
    output reg pixel_type_o,
    output reg pixel_buffer_rd_en_o,
    input pixel_buffer_full_i,
    input pixel_buffer_empty_i,
    input [13:0] pixel_buffer_rd_cnt_i,
    /* extif 相关信号 */
    output reg extif_wr_en_o,
    output reg extif_rd_en_o,
    output reg [31:0] fdma_addr_o,
    output reg [15:0] fdma_size_o,
    input fdma_busy_i,
    /* HEVC 编码核相关信号*/
    output reg hevc_sys_start_o,
    output reg hevc_sys_type_o,
    input hevc_sys_done_i,
    input hevc_extif_start_i,
    output reg hevc_extif_done_o,
    input [4:0] hevc_extif_mode_i,
    input [11:0] hevc_extif_x_i,
    input [11:0] hevc_extif_y_i,
    input [7:0] hevc_extif_width_i,
    input [7:0] hevc_extif_height_i
);

/*************************** 参数定义 ****************************/
    // 状态机状态
    parameter   S0_INIT         =   0,
                S1_FIFO_READ    =   1,
                S2_extif         =   2,
                S3_HEVC_ENC     =   3;

    // 外部存储数据访问操作
    parameter   LOAD_CUR_SUB      = 01 ,
                LOAD_REF_SUB      = 02 ,
                LOAD_CUR_LUMA     = 03 ,    // 加载当前 LCU 的亮度块
                LOAD_REF_LUMA     = 04 ,    
                LOAD_CUR_CHROMA   = 05 ,    // 加载当前色度块
                LOAD_REF_CHROMA   = 06 ,
                LOAD_DB_LUMA      = 07 ,    // 加载重建后的亮度块
                LOAD_DB_CHROMA    = 08 ,    // 加载重建后的色度块
                STORE_DB_LUMA     = 09 ,    // 保存重建后的亮度块
                STORE_DB_CHROMA   = 10 ;    // 保存重建后的色度块

/************************** 信号线定义 ***************************/
    // 状态机当前状态
    reg [1:0] state;

    // 相关标志位
    reg extif_busy;
    reg frdw_busy;
    reg hevc_enc_busy;

    // 帧缓存序号
    reg [15:0] hevc_enc_frame_nums;
    reg [1:0] current_read_frame_serial_number;
    reg [1:0] current_write_frame_serial_number;
    reg [1:0] previous_write_frame_serial_number;

    // extif 已操作的行数
    reg [7:0] hevc_extif_operated_rows;

    // DDR 内存地址分配
    // 输入视频流缓存地址
    // 为解决画面撕裂和速率不同步问题，将开辟 3 帧缓存区（首位不用）
    reg [31:0] video_frame_baseaddr[1:0];

    reg [31:0] video_buffer_y_write_in_cnt;
    reg [31:0] video_buffer_uv_write_in_cnt;

/**************************** 标志位 *****************************/    
    // extif 数据交互开始标志
    // hevc_extif_start_i 置位表明 HEVC 编码核要求缓冲交互数据
    // hevc_extif_done_o 清零表明 HEVC 编码核与缓存的数据交互结束
    always@(posedge hevc_extif_start_i or posedge hevc_extif_done_o or negedge fdma_busy_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            extif_busy <= 1'b0;
            hevc_extif_operated_rows <= 8'b0;
        end
        else if(hevc_extif_start_i) begin
            extif_busy <= 1'b1;
            hevc_extif_operated_rows <= 8'b0;
        end
        else if(!fdma_busy_i) 
            hevc_extif_operated_rows <= hevc_extif_operated_rows + 1'b1;
        else if(hevc_extif_done_o) begin
            extif_busy <= 1'b0;
        end
        else begin
            extif_busy <= extif_busy;
            hevc_extif_operated_rows <= hevc_extif_operated_rows;
        end
    end

    // HEVC 编码开始标志
    // hevc_sys_start_o 置位表明要求 HEVC 开始编码
    // hevc_sys_done_i 置位表明 HEVC 该帧编码结束
    always@(posedge hevc_sys_start_o or posedge hevc_sys_done_i or negedge rst_n_i) begin
        if(!rst_n_i)
            hevc_enc_busy <= 1'b0;
        else if(hevc_sys_start_o)
            hevc_enc_busy <= 1'b1;
        else if(hevc_sys_done_i)
            hevc_enc_busy <= 1'b0;
        else
            hevc_enc_busy <= hevc_enc_busy;
    end

    // FIFO 读取 DDR 写入繁忙标志
    // pixel_buffer_full_i 上升沿代表 FIFO 已满需要读取
    // pixel_type_o 下降沿代表 uv 分量已读取完成
    always@(posedge pixel_buffer_full_i or negedge pixel_type_o or negedge rst_n_i) begin
        if(!rst_n_i) begin
            frdw_busy <= 1'b0;
            current_write_frame_serial_number <= 2'b1;
            previous_write_frame_serial_number <= 2'b0;
        end
        else if(pixel_buffer_full_i) begin
            frdw_busy <= 1'b1;
        end
        else if(!pixel_type_o) begin 
            frdw_busy <= 1'b0;
            if(video_buffer_y_write_in_cnt >= `FRAME_WIDTH * `FRAME_HEIGHT) begin
                if((current_write_frame_serial_number % 3 + 2'b1) == current_read_frame_serial_number)
                    current_write_frame_serial_number <= (current_write_frame_serial_number % 3 + 2'd2);
                else 
                    current_write_frame_serial_number <= (current_write_frame_serial_number % 3 + 2'd1);
                previous_write_frame_serial_number <= current_write_frame_serial_number;
            end
            else begin
                current_write_frame_serial_number <= current_write_frame_serial_number;
                previous_write_frame_serial_number <= previous_write_frame_serial_number;
            end
        end
        else
            frdw_busy <= frdw_busy;
    end
    
    // HEVC 编码模式设置（帧内/帧间）
    // GOP 首帧采用帧内编码，其余采用帧间编码
    always@(posedge hevc_sys_done_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            hevc_sys_type_o <= `INTRA;
            hevc_enc_frame_nums <= 16'b0;
        end
        else begin
            hevc_sys_type_o <= (hevc_enc_frame_nums < `GOP_LENGTH - 1'b1) ? `INTER : `INTRA;
            hevc_enc_frame_nums <= (hevc_enc_frame_nums < `GOP_LENGTH - 1'b1) ? (hevc_enc_frame_nums + 1'b1) : 16'b0;
        end
    end

/*************************** 状态转换 ****************************/
    always@(posedge clk_ui or negedge rst_n_i) begin
        if(!rst_n_i) begin
            // 初始化状态
            state <= S0_INIT;
            // 初始化帧操作序号
            current_read_frame_serial_number <= 2'b0;
            // 初始化帧缓冲区地址
            video_frame_baseaddr[0] <= 32'h000_0000;
            video_frame_baseaddr[1] <= 32'h100_0000;
            video_frame_baseaddr[2] <= 32'h200_0000;
            video_frame_baseaddr[3] <= 32'h300_0000;
            // 初始化 video_buffer 读取计数器
            video_buffer_y_write_in_cnt <= 32'h0;
            video_buffer_uv_write_in_cnt <= 32'h0;
            // 初始化读写使能信号
            pixel_type_o <= 1'b0;
            pixel_buffer_rd_en_o <= 1'b0;
            // 初始化 extif 相关信号
            extif_wr_en_o <= 1'b0;
            extif_rd_en_o <= 1'b0;
            // 初始化 fdma 相关信号
            fdma_addr_o <= 32'b0;
            fdma_size_o <= 16'b0;
            // 初始化 HEVC 相关信号
            hevc_sys_start_o <= 1'b0;
            hevc_extif_done_o <= 1'b0;
        end
        else begin
            // 状态机实体
            // 由于标志位置位与 case 块并行执行，相关运算会延后一个时钟
            case(state)
                S0_INIT: begin
                    if(frdw_busy)
                        state <= S1_FIFO_READ;
                    else
                        state <= S0_INIT;
                end
                S1_FIFO_READ: begin
                    // 将 YUV 缓冲区 FIFO 数据写入 DDR
                    if(frdw_busy) begin
                        if(!fdma_busy_i && !pixel_buffer_rd_en_o) begin
                            if(video_buffer_y_write_in_cnt == (video_buffer_uv_write_in_cnt << 1)) begin
                                pixel_type_o <= 1'b0;
                                pixel_buffer_rd_en_o <= 1'b1;
                                fdma_addr_o <= video_frame_baseaddr[current_write_frame_serial_number] + video_buffer_y_write_in_cnt;
                                if(pixel_buffer_rd_cnt_i >= ((`FRAME_WIDTH * `FRAME_HEIGHT - video_buffer_y_write_in_cnt) >> 4)) begin 
                                    video_buffer_y_write_in_cnt <= `FRAME_WIDTH * `FRAME_HEIGHT;
                                    fdma_size_o <= (`FRAME_WIDTH * `FRAME_HEIGHT - video_buffer_y_write_in_cnt) >> 4;
                                end
                                else begin
                                    // 注意此处读取的 128bit 块数量必须为 16 的整数倍
                                    // 否则最后一次读取计算所需的块数量时（>> 4）可能丢失某些块（如最后应该需要 100 块，但实际上取了 96 块）
                                    video_buffer_y_write_in_cnt <= video_buffer_y_write_in_cnt + ((pixel_buffer_rd_cnt_i >> 4) << 4);
                                    fdma_size_o <= ((pixel_buffer_rd_cnt_i >> 4) << 4);
                                end
                            end
                            else begin
                                if(!pixel_type_o) begin
                                    pixel_type_o <= 1'b1;
                                    pixel_buffer_rd_en_o <= 1'b1;
                                    video_buffer_uv_write_in_cnt <= video_buffer_uv_write_in_cnt + (video_buffer_y_write_in_cnt - video_buffer_uv_write_in_cnt) >> 1;
                                    fdma_size_o <= (video_buffer_y_write_in_cnt - video_buffer_uv_write_in_cnt) >> (1 + 4);
                                    fdma_addr_o <= video_frame_baseaddr[current_write_frame_serial_number] + `FRAME_WIDTH * `FRAME_HEIGHT + video_buffer_uv_write_in_cnt;
                                end
                                else
                                    pixel_type_o <= 1'b0;
                            end
                        end
                        else begin
                            if(pixel_buffer_rd_en_o)
                                pixel_buffer_rd_en_o <= 1'b0;
                        end
                    end
                    else if(extif_busy)
                        state <= S2_extif;
                    else
                        state <= S3_HEVC_ENC;
                end
                S2_extif: begin
                    if(extif_busy) begin
                        case(hevc_extif_mode_i)
                            LOAD_CUR_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_extif_height_i - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[current_read_frame_serial_number] + (hevc_extif_y_i + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_rd_en_o)
                                        extif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_extif_done_o)
                                    hevc_extif_done_o <= 1'b1;
                            end
                            LOAD_CUR_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_extif_height_i / 2 - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[current_read_frame_serial_number] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_extif_y_i / 2 + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_rd_en_o)
                                        extif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_extif_done_o)
                                    hevc_extif_done_o <= 1'b1;
                            end
                            LOAD_DB_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_extif_height_i - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + (hevc_extif_y_i + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_rd_en_o)
                                        extif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_extif_done_o)
                                    hevc_extif_done_o <= 1'b1;
                            end
                            LOAD_DB_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_extif_height_i / 2 - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_extif_y_i / 2 + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_rd_en_o)
                                        extif_rd_en_o <= 1'b0;
                                end
                                else begin
                                    if(!hevc_extif_done_o)
                                        hevc_extif_done_o <= 1'b1;
                                end 
                            end
                            STORE_DB_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_extif_height_i - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据写入
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_wr_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + (hevc_extif_y_i + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_wr_en_o)
                                        extif_wr_en_o <= 1'b0;
                                end
                                else if(!hevc_extif_done_o)
                                    hevc_extif_done_o <= 1'b1;
                            end
                            STORE_DB_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_extif_height_i / 2 - 1'b1
                                if(hevc_extif_operated_rows < hevc_extif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 extif 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_extif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_extif_width / 16
                                        extif_wr_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_extif_y_i / 2 + hevc_extif_operated_rows) * `FRAME_WIDTH + hevc_extif_x_i;
                                        fdma_size_o <= (hevc_extif_width_i >> 4);
                                    end
                                    else if(extif_wr_en_o)
                                        extif_wr_en_o <= 1'b0;
                                end
                                else begin
                                    if(!hevc_extif_done_o)
                                        hevc_extif_done_o <= 1'b1;
                                end 
                            end
                            default begin
                                if(!hevc_extif_done_o)
                                    hevc_extif_done_o <= 1'b1;
                                else
                                    hevc_extif_done_o <= 1'b0;
                            end 
                        endcase
                    end
                    else begin
                        if(hevc_extif_done_o)
                            // 由于 extif_busy 信号绑定 hevc_extif_done_o 上升沿，则 hevc_extif_done_o 置位后
                            // 不会再进入上述语句，故 hevc_extif_done_o 需要放在此处清除
                            hevc_extif_done_o <= 1'b0;
                        if(frdw_busy)
                            state <= S1_FIFO_READ;
                        else
                            state <= S3_HEVC_ENC;
                    end
                end
                S3_HEVC_ENC: begin
                    if(frdw_busy)
                        state <= S1_FIFO_READ;
                    else if(extif_busy) 
                        state <= S2_extif;
                    else begin
                        // 根据 pwfsn 和 crfsn 启动 HEVC 编码
                        if(hevc_enc_busy) 
                            hevc_sys_start_o <= 1'b0;
                        else begin
                            if((previous_write_frame_serial_number > 0) && (current_read_frame_serial_number != previous_write_frame_serial_number)) begin
                                hevc_sys_start_o <= 1'b1;
                                current_read_frame_serial_number <= previous_write_frame_serial_number;
                            end
                        end
                        state <= S3_HEVC_ENC;
                    end
                end
            endcase
        end
    end
endmodule