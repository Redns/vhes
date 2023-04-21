module video_buffer_top(
    input rst_n_i,                          // 复位信号输入，低电平有效
    // YUV 视频源输入
    input piexl_clk_i,                      // 像素时钟输入（1080P@60fps：148.5MHz）
    input [23:0] pixel_i,                   // 像素数据输入（YUV）
    input hsync_i,                          // 行同步信号输入
    input vsync_i,                          // 场同步信号输入
    input de_i,                             // 像素数据有效标志输入
    // 视频缓冲区输出
    input rd_clk_i,                         // 缓冲区读时钟
    input pixel_type_i,                     // 读取像素类型输入（0：Y；1：UV）
    input pixel_rd_en_in,                   // 缓冲区像素读取标志输入
    output pixel_buffer_rst_busy,           // 缓冲区复位繁忙输出（0：复位完成；1：正在复位中）
    output pixel_buffer_full_o,             // 像素缓冲区满标志位
    output pixel_buffer_empty_o,            // 像素缓冲区空标志位
    output [127:0] pixel_o                  // 像素数据输出
);

/* 信号线定义 */
    // UV 分量行列存储标志
    // YUV420 格式下 UV 分量隔行隔列采样
    reg uv_row_recorded, uv_col_recorded;   

    // FIFO 写时钟
    wire y_fifo_wr_clk, uv_fifo_wr_clk; 

    // FIFO 数据输入 & 输出
    wire [127:0] y_fifo_data_in, y_fifo_data_out;               
    wire [127:0] uv_fifo_data_in, uv_fifo_data_out;     

    // FIFO full & empty
    wire y_fifo_full, y_fifo_empty;
    wire uv_fifo_full, uv_fifo_empty;

    // FIFO wr_rst_busy & rd_rst_busy
    wire y_fifo_wr_rst_busy, y_fifo_rd_rst_busy;
    wire uv_fifo_wr_rst_busy, uv_fifo_rd_rst_busy;

    assign y_recorded  = de_i;
    assign uv_recorded = de_i && uv_row_recorded && uv_col_recorded;

    assign y_fifo_rd_en = pixel_rd_en_in & !pixel_type_i;
    assign uv_fifo_rd_en = pixel_rd_en_in & pixel_type_i;

    assign pixel_buffer_rst_busy = y_fifo_wr_rst_busy  || y_fifo_rd_rst_busy ||
                                   uv_fifo_wr_rst_busy || uv_fifo_rd_rst_busy;

    assign pixel_buffer_full_o = pixel_type_i ? y_fifo_full : uv_fifo_full;
    assign pixel_buffer_empty_o = pixel_type_i ? y_fifo_empty : uv_fifo_empty;

    assign pixel_o = pixel_type_i ? y_fifo_data_out : uv_fifo_data_out;

/* YUV 像素数据拼接 */

    // 像素 U、V 分量行、列存储标志
    always@(posedge piexl_clk_i or negedge rst_n_i) begin
        if(!rst_n_i)
            uv_col_recorded <= 1'b1;
        else 
            uv_col_recorded <= ~uv_col_recorded; 
    end

    always@(posedge hsync_i or negedge rst_n_i) begin
        if(!rst_n_i)
            uv_row_recorded <= 1'b1;
        else
            uv_row_recorded <= ~uv_row_recorded;
    end

    // 将 Y 像素拼接至 128 位
    data_merge_8_to_128 data_merge_8_to_128(
        .clk_i(piexl_clk_i),
        .rst_n_i(rst_n_i),
        .de_i(y_recorded),
        .data_i(pixel_i[23:16]),
        .de_o(y_fifo_wr_clk),       
        .data_o(y_fifo_data_in)       
    );

    // 将 UV 像素拼接至 128 位
    data_merge_16_to_128 data_merge_16_to_128(
        .clk_i(piexl_clk_i),
        .rst_n_i(rst_n_i),
        .de_i(uv_recorded),
        .data_i(pixel_i[15:0]),
        .de_o(uv_fifo_wr_clk),      
        .data_o(uv_fifo_data_in) 
    );

/* FIFO */

    // Y 分量 FIFO
    pixel_y_fifo pixel_y_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(y_fifo_wr_clk),           
        .rd_clk(rd_clk_i),           
        .din(y_fifo_data_in),                 
        .wr_en(1'b1),              
        .rd_en(y_fifo_rd_en),              
        .dout(y_fifo_data_out),                
        .full(),               
        .empty(y_fifo_empty),             
        .prog_full(y_fifo_full),      
        .wr_rst_busy(y_fifo_wr_rst_busy),  
        .rd_rst_busy(y_fifo_rd_rst_busy)  
    );

    // UV 分量 FIFO
    pixel_uv_fifo pixel_uv_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(uv_fifo_wr_clk),           
        .rd_clk(rd_clk_i),           
        .din(uv_fifo_data_in),                 
        .wr_en(1'b1),              
        .rd_en(uv_fifo_rd_en),              
        .dout(uv_fifo_data_out),                
        .full(),               
        .empty(uv_fifo_empty),             
        .prog_full(uv_fifo_full),      
        .wr_rst_busy(uv_fifo_wr_rst_busy),  
        .rd_rst_busy(uv_fifo_rd_rst_busy)  
    );


endmodule