module video_buffer_top(
    input rst_n_i,                          // 复位信号输入，低电平有效
    // YUV 视频源输入
    input pclk_i,                           // 像素时钟输入（1080P@60fps：148.5MHz）
    input [23:0] pixel_i,                   // 像素数据输入（YUV）
    input hsync_i,                          // 行同步信号输入
    input vsync_i,                          // 场同步信号输入
    input de_i,                             // 像素数据有效标志输入
    // 视频缓冲区输出
    input rd_clk_i,                         // 缓冲区读时钟
    input pixel_type_i,                     // 读取像素类型输入（0：Y；1：UV）
    input pixel_rd_en_i,                    // 缓冲区像素读取标志输入
    output pixel_fifo_rst_busy,           // 缓冲区复位繁忙输出（0：复位完成；1：正在复位中）
    output pixel_buffer_full_o,             // 像素缓冲区满标志位
    output pixel_buffer_empty_o,            // 像素缓冲区空标志位
    output [13:0] pixel_buffer_rd_cnt_o,    // 待读像素块数目
    output pixel_valid_o,                   // 像素输出有效
    output [127:0] pixel_o                  // 像素数据输出
);

/* 信号线定义 */
    // 复位信号
    wire data_merge_rst_n, pixel_fifo_rst;

    // 帧开始标志
    // 写入 FIFO 的数据应该从一帧的首个像素开始
    reg frame_start_flag;

    // 拼接输出数据有效标志
    wire y_data_merge_de_o, uv_data_merge_de_o;

    // UV 分量行列存储标志
    // YUV420 格式下 UV 分量隔行隔列采样
    reg uv_row_recorded, uv_col_recorded;   

    // FIFO Output Valid
    wire y_fifo_valid_o, uv_fifo_valid_o;

    // FIFO 待读元素数目
    wire [13:0] y_fifo_rd_count;
    wire [12:0] uv_fifo_rd_count;

    // FIFO 数据输入 & 输出
    wire [127:0] y_fifo_data_in, y_fifo_data_out;               
    wire [127:0] uv_fifo_data_in, uv_fifo_data_out;     

    // FIFO full & empty
    wire y_fifo_full, y_fifo_empty;
    wire uv_fifo_full, uv_fifo_empty;

    // FIFO wr_rst_busy & rd_rst_busy
    wire y_fifo_wr_rst_busy, y_fifo_rd_rst_busy;
    wire uv_fifo_wr_rst_busy, uv_fifo_rd_rst_busy;

    // FIFO 为高电平复位
    // data_merge 模块需要等待 FIFO 完成复位后再复位
    assign pixel_fifo_rst = ~rst_n_i;
    assign data_merge_rst_n = rst_n_i & !pixel_fifo_rst_busy;

    // 像素有效受三个因素影响：输入有效、帧开始标志和采样率
    // 新的一帧未开始时不采样任何像素，即系统永远从新的一帧开始采样
    // YUV420 格式下 UV 像素隔行隔列采样
    assign y_recorded  = frame_start_flag && de_i;
    assign uv_recorded = frame_start_flag && de_i && uv_row_recorded && uv_col_recorded;

    // FIFO 读使能信号
    // pixel_type_i 为 1 时读 Y 分量，为 0 时读 UV 分量
    assign y_fifo_rd_en = pixel_rd_en_i & !pixel_type_i;
    assign uv_fifo_rd_en = pixel_rd_en_i & pixel_type_i;

    // FIFO 复位忙信号
    // 该信号应用于其他模块复位，即 FIFO 应在所有模块前完成复位
    assign pixel_fifo_rst_busy = y_fifo_wr_rst_busy  || y_fifo_rd_rst_busy ||
                                 uv_fifo_wr_rst_busy || uv_fifo_rd_rst_busy;

    // FIFO 空满信号
    assign pixel_buffer_full_o  = !pixel_type_i ? y_fifo_full : uv_fifo_full;
    assign pixel_buffer_empty_o = !pixel_type_i ? y_fifo_empty : uv_fifo_empty;

    // FIFO 输出有效标志
    assign pixel_valid_o = !pixel_type_i ? y_fifo_valid_o : uv_fifo_valid_o;

    // FIFO 待读元素数目
    assign pixel_buffer_rd_cnt_o = !pixel_type_i ? y_fifo_rd_count : uv_fifo_rd_count;

    // FIFO 输出
    assign pixel_o = !pixel_type_i ? y_fifo_data_out : uv_fifo_data_out;

/* YUV 像素数据拼接 */
    // 检测到场同步信号 vsync 上升沿时代表新的一帧开始
    always@(posedge vsync_i or negedge data_merge_rst_n) begin
        if(!data_merge_rst_n)
            frame_start_flag = 1'b0;
        else
            frame_start_flag = 1'b1;
    end
    
    // UV 分量行列存储标志
    always@(posedge pclk_i or negedge data_merge_rst_n) begin
        if(!data_merge_rst_n)
            uv_col_recorded <= 1'b1;
        else 
            uv_col_recorded <= ~uv_col_recorded; 
    end

    always@(posedge hsync_i or negedge data_merge_rst_n) begin
        if(!data_merge_rst_n)
            uv_row_recorded <= 1'b1;
        else
            uv_row_recorded <= ~uv_row_recorded;
    end

    // 将 Y 分量拼接至 128 位
    data_merge #(
        .DATA_IN_WIDTH(8),
        .DATA_OUT_WIDTH(128)
    ) data_merge_8_to_128(
        .clk_i(pclk_i),
        .rst_n_i(data_merge_rst_n),
        .de_i(y_recorded),
        .data_i(pixel_i[23:16]),
        .de_o(y_data_merge_de_o),       
        .data_o(y_fifo_data_in)       
    );

    // 将 UV 分量拼接至 128 位
    data_merge #(
        .DATA_IN_WIDTH(16),
        .DATA_OUT_WIDTH(128)
    ) data_merge_16_to_128(
        .clk_i(pclk_i),
        .rst_n_i(data_merge_rst_n),
        .de_i(uv_recorded),
        .data_i(pixel_i[15:0]),
        .de_o(uv_data_merge_de_o),      
        .data_o(uv_fifo_data_in) 
    );

/* FIFO */
    // Y 分量 FIFO
    pixel_y_fifo pixel_y_fifo(
        .rst(pixel_fifo_rst),                  
        .wr_clk(pclk_i),           
        .rd_clk(rd_clk_i),           
        .din(y_fifo_data_in),                 
        .wr_en(y_data_merge_de_o),              
        .rd_en(y_fifo_rd_en),         
        .valid(y_fifo_valid_o),     
        .rd_data_count(y_fifo_rd_count),
        .dout(y_fifo_data_out),                            
        .empty(y_fifo_empty),             
        .prog_full(y_fifo_full),      
        .wr_rst_busy(y_fifo_wr_rst_busy),  
        .rd_rst_busy(y_fifo_rd_rst_busy)  
    );

    // UV 分量 FIFO
    pixel_uv_fifo pixel_uv_fifo(
        .rst(pixel_fifo_rst),                  
        .wr_clk(pclk_i),           
        .rd_clk(rd_clk_i),           
        .din(uv_fifo_data_in),                 
        .wr_en(uv_data_merge_de_o),              
        .rd_en(uv_fifo_rd_en),        
        .valid(uv_fifo_valid_o),      
        .rd_data_count(uv_fifo_rd_count),
        .dout(uv_fifo_data_out),                             
        .empty(uv_fifo_empty),             
        .prog_full(uv_fifo_full),      
        .wr_rst_busy(uv_fifo_wr_rst_busy),  
        .rd_rst_busy(uv_fifo_rd_rst_busy)  
    );

endmodule