`include "enc_defines.v"

module hevc_encoder_system_ctrl(
    input clk_ui,
    input rst_n_i,
    /* Video Buffer 相关信号 */
    output reg pixel_type_o,
    output reg pixel_buffer_rd_en_o,
    input pixel_buffer_full_i,
    input pixel_buffer_empty_i,
    input [13:0] pixel_buffer_rd_cnt_i,
    input frame_last_block_come_i,
    input [13:0] frame_last_block_cnt_i,
    /* EXIF 相关信号 */
    output reg exif_wr_en_o,
    output reg exif_rd_en_o,
    output reg [31:0] fdma_addr_o,
    output reg [15:0] fdma_size_o,
    input fdma_busy_i,
    /* HEVC 编码核相关信号*/
    output reg hevc_sys_start_o,
    output reg hevc_sys_type_o,
    input hevc_sys_done_i,
    input hevc_exif_start_i,
    output reg hevc_exif_done_o,
    input [4:0] hevc_exif_mode_i,
    input [11:0] hevc_exif_x_i,
    input [11:0] hevc_exif_y_i,
    input [7:0] hevc_exif_width_i,
    input [7:0] hevc_exif_height_i
);

/*************************** 参数定义 ****************************/
    // 状态机状态
    parameter   S0_INIT         =   0,
                S1_FIFO_READ    =   1,
                S2_EXIF         =   2,
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
    reg frdw_busy;
    reg exif_busy;
    reg hevc_enc_busy;
    reg frame_last_block_come;

    // 帧缓存序号
    reg [15:0] hevc_enc_frame_nums;
    reg [1:0] current_read_frame_serial_number;
    reg [1:0] current_write_frame_serial_number;
    reg [1:0] previous_write_frame_serial_number;

    // EXIF 已操作的行数
    reg [7:0] hevc_exif_operated_rows;

    // DDR 内存地址分配
    // 输入视频流缓存地址
    // 为解决画面撕裂和速率不同步问题，将开辟 3 帧缓存区（首位不用）
    reg [31:0] video_frame_baseaddr[1:0];

/**************************** 标志位 *****************************/    
    // EXIF 数据交互开始标志
    // hevc_exif_start_i 置位表明 HEVC 编码核要求缓冲交互数据
    // hevc_exif_done_o 清零表明 HEVC 编码核与缓存的数据交互结束
    always@(posedge hevc_exif_start_i or posedge hevc_exif_done_o or negedge fdma_busy_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            exif_busy <= 1'b0;
            hevc_exif_operated_rows <= 8'b0;
        end
        else if(hevc_exif_start_i) begin
            exif_busy <= 1'b1;
            hevc_exif_operated_rows <= 8'b0;
        end
        else if(!fdma_busy_i) 
            hevc_exif_operated_rows <= hevc_exif_operated_rows + 1'b1;
        else if(hevc_exif_done_o) begin
            exif_busy <= 1'b0;
        end
        else begin
            exif_busy <= exif_busy;
            hevc_exif_operated_rows <= hevc_exif_operated_rows;
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

    // 帧尾块到达标志
    // frame_last_block_come_i 置位表明该帧的最后块到达
    // frdw_busy 清零表明该帧最后的 Y 和 UV 块均已被写入 DDR 
    always@(posedge frame_last_block_come_i or negedge frdw_busy or negedge rst_n_i) begin
        if(!rst_n_i)
            frame_last_block_come <= 1'b0;
        else if(frame_last_block_come_i)
            frame_last_block_come <= 1'b1;
        else if(!frdw_busy)
            frame_last_block_come <= 1'b0;
        else
            frame_last_block_come <= frame_last_block_come;
    end

    // 帧写入序号切换
    // frame_last_block_come 清零表明该帧最后像素块已经写入 DDR，可以开始写入新的帧缓冲区
    always@(negedge frame_last_block_come or negedge rst_n_i) begin
        if(!rst_n_i) begin
            current_write_frame_serial_number <= 1'b1;
            previous_write_frame_serial_number <= 1'b0;
        end
        else if(!frame_last_block_come) begin
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
            // 初始化标志位
            frdw_busy <= 1'b0;
            // 初始化帧操作序号
            current_read_frame_serial_number <= 2'b0;
            // 初始化帧缓冲区地址
            video_frame_baseaddr[0] <= 32'h000_0000;
            video_frame_baseaddr[1] <= 32'h100_0000;
            video_frame_baseaddr[2] <= 32'h200_0000;
            video_frame_baseaddr[3] <= 32'h300_0000;
            // 初始化读写使能信号
            pixel_type_o <= 1'b0;
            pixel_buffer_rd_en_o <= 1'b0;
            // 初始化 EXIF 相关信号
            exif_wr_en_o <= 1'b0;
            exif_rd_en_o <= 1'b0;
            // 初始化 fdma 相关信号
            fdma_addr_o <= 32'b0;
            fdma_size_o <= 16'b0;
            // 初始化 HEVC 相关信号
            hevc_sys_start_o <= 1'b0;
            hevc_exif_done_o <= 1'b0;
        end
        else begin
            // 状态机实体
            // 由于标志位置位与 case 块并行执行，相关运算会延后一个时钟
            case(state)
                S0_INIT: begin
                    if(frame_last_block_come || pixel_buffer_full_i)
                        state <= S1_FIFO_READ;
                    else
                        state <= S0_INIT;
                end
                S1_FIFO_READ: begin
                    // 将 YUV 缓冲区 FIFO 数据写入 DDR
                    if(frame_last_block_come || pixel_buffer_full_i || frdw_busy) begin
                        
                    end
                    else if(exif_busy)
                        state <= S2_EXIF;
                    else
                        state <= S3_HEVC_ENC;
                end
                S2_EXIF: begin
                    if(exif_busy) begin
                        case(hevc_exif_mode_i)
                            LOAD_CUR_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_exif_height_i - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[current_read_frame_serial_number] + (hevc_exif_y_i + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_rd_en_o)
                                        exif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_exif_done_o)
                                    hevc_exif_done_o <= 1'b1;
                            end
                            LOAD_CUR_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_exif_height_i / 2 - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[current_read_frame_serial_number] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_exif_y_i / 2 + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_rd_en_o)
                                        exif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_exif_done_o)
                                    hevc_exif_done_o <= 1'b1;
                            end
                            LOAD_DB_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_exif_height_i - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + (hevc_exif_y_i + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_rd_en_o)
                                        exif_rd_en_o <= 1'b0;
                                end
                                else if(!hevc_exif_done_o)
                                    hevc_exif_done_o <= 1'b1;
                            end
                            LOAD_DB_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_exif_height_i / 2 - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_rd_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_exif_y_i / 2 + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_rd_en_o)
                                        exif_rd_en_o <= 1'b0;
                                end
                                else begin
                                    if(!hevc_exif_done_o)
                                        hevc_exif_done_o <= 1'b1;
                                end 
                            end
                            STORE_DB_LUMA: begin
                                // TODO 此处考虑将阈值修改为 hevc_exif_height_i - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据写入
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_wr_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + (hevc_exif_y_i + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_wr_en_o)
                                        exif_wr_en_o <= 1'b0;
                                end
                                else if(!hevc_exif_done_o)
                                    hevc_exif_done_o <= 1'b1;
                            end
                            STORE_DB_CHROMA: begin
                                // TODO 考虑将此处的阈值修改为 hevc_exif_height_i / 2 - 1'b1
                                if(hevc_exif_operated_rows < hevc_exif_height_i / 2) begin
                                    if(!fdma_busy_i) begin
                                        // 启动 EXIF 数据读取
                                        // 设置读取起始地址和突发传输数目
                                        // 一行需要传输的字节数为 hevc_exif_width_i，fdma 单次传输 16 字节，因此突发传输数量为 hevc_exif_width / 16
                                        exif_wr_en_o <= 1'b1;
                                        fdma_addr_o <= video_frame_baseaddr[0] + `FRAME_WIDTH * `FRAME_HEIGHT + (hevc_exif_y_i / 2 + hevc_exif_operated_rows) * `FRAME_WIDTH + hevc_exif_x_i;
                                        fdma_size_o <= (hevc_exif_width_i >> 4);
                                    end
                                    else if(exif_wr_en_o)
                                        exif_wr_en_o <= 1'b0;
                                end
                                else begin
                                    if(!hevc_exif_done_o)
                                        hevc_exif_done_o <= 1'b1;
                                end 
                            end
                            default begin
                                if(!hevc_exif_done_o)
                                    hevc_exif_done_o <= 1'b1;
                                else
                                    hevc_exif_done_o <= 1'b0;
                            end 
                        endcase
                    end
                    else begin
                        if(hevc_exif_done_o)
                            // 由于 exif_busy 信号绑定 hevc_exif_done_o 上升沿，则 hevc_exif_done_o 置位后
                            // 不会再进入上述语句，故 hevc_exif_done_o 需要放在此处清除
                            hevc_exif_done_o <= 1'b0;
                        if(frame_last_block_come || pixel_buffer_full_i)
                            state <= S1_FIFO_READ;
                        else
                            state <= S3_HEVC_ENC;
                    end
                end
                S3_HEVC_ENC: begin
                    if(frame_last_block_come || pixel_buffer_full_i)
                        state <= S1_FIFO_READ;
                    else if(exif_busy) 
                        state <= S2_EXIF;
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