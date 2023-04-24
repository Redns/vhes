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
    output hevc_sys_start_o,
    output hevc_sys_type_o,
    input hevc_sys_done_o,
    input hevc_exif_start_i,
    output hevc_exif_done_o,
    input [4:0] hevc_exif_mode_i,
    input [11:0] hevc_exif_x_i,
    input [11:0] hevc_exif_y_i,
    input [7:0] hevc_exif_width_i,
    input [7:0] hevc_exif_height_i
);

/*************************** 参数定义 ****************************/
    // DDR 内存地址分配
    // 输入视频流缓存地址
    // 为解决画面撕裂和速率不同步问题，将开辟 3 帧缓存区
    `define     VIDEO_FRAME1_BASEADDR   =   32'h000_0000;
    `define     VIDEO_FRAME2_BASEADDR   =   32'h100_0000;
    `define     VIDEO_FRAME3_BASEADDR   =   32'h200_0000;
    // 重建图像缓存
    `define     VIDEO_REC_BASEADDR      =   32'h300_0000;
    
    parameter   S0_INIT         =   0,
                S1_FIFO_READ    =   1,
                S2_EXIF         =   2,
                S3_HEVC_ENC     =   3;

/************************** 信号线定义 ***************************/
    reg [1:0] state;
    reg exif_start;
    reg frame_last_block_come;

    reg hevc_enc_done;

    reg [1:0] current_read_frame_serial_number;
    reg [1:0] previous_write_frame_serial_number;

/**************************** 标志位 *****************************/
    // 帧尾像素块到来标志
    always@(posedge frame_last_block_come_i or negedge rst_n_i) begin
        if(!rst_n_i)
            frame_last_block_come <= 1'b0;
        else
            frame_last_block_come <= frame_last_block_cnt_i > 0;
    end

    // HEVC 请求 EXIF 交互标志
    always@(posedge hevc_exif_start_i or negedge rst_n_i) begin
        if(!rst_n_i)
            exif_start <= 1'b0;
        else
            exif_start <= 1'b1;
    end

    // HEVC 编码完成标志
    always@(posedge hevc_sys_done_o or negedge rst_n_i) begin
        if(!rst_n_i)
            hevc_enc_done <= 1'b0;
        else
            hevc_enc_done <= 1'b1;
    end

/*************************** 状态转换 ****************************/
    always@(posedge clk_ui or negedge rst_n_i) begin
        if(!rst_n_i) begin
            // 重置状态
            state <= S0_INIT;
            // 重置帧操作序号
            current_read_frame_serial_number <= 2'b0;
            previous_write_frame_serial_number <= 2'b0;
        end
        else case(state)
            S0_INIT: begin
                if(frame_last_block_come || pixel_buffer_full_i) 
                    state <= S1_FIFO_READ; 
                else 
                    state <= S0_INIT;
            end
            S1_FIFO_READ: begin
                if(frame_last_block_come || pixel_buffer_full_i || fdma_busy_i) begin
                    // TODO 读取 YUV FIFO 至 DDR
                    state <= S1_FIFO_READ;
                end
                else if(exif_start)
                    state <= S2_EXIF;
                else
                    state <= S3_HEVC_ENC;
            end
            S2_EXIF: begin
                if(exif_start || fdma_busy_i) begin
                    // TODO 根据 exif_mode 与 HEVC 交互数据
                end
                else if(frame_last_block_come || pixel_buffer_full_i)
                    state <= S1_FIFO_READ;
                else
                    state <= S3_HEVC_ENC;
            end
            S3_HEVC_ENC: begin
                if(frame_last_block_come || pixel_buffer_full_i)
                    state <= S1_FIFO_READ;
                else if(previous_write_frame_serial_number == 2'b0 || 
                       (hevc_enc_done && (current_read_frame_serial_number == previous_write_frame_serial_number))) begin
                    state <= S3_HEVC_ENC;
                end
                else begin
                    // 启动 HEVC 编码
                end
            end
        endcase
    end
endmodule