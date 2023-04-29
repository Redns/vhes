module video_in_buffer(
    input rst_n_i,                          // 复位信号输入，低电平有效
    output rst_done_o,
    // 视频缓冲区输出
    input wr_clk_i,
    input rd_clk_i,                         // 缓冲区读时钟
    input y_de_i,
    input uv_de_i,
    input [127:0] y_i,
    input [127:0] uv_i,
    input pixel_type_i,                     // 读取像素类型输入（0：Y；1：UV）
    input pixel_rd_en_i,                    // 缓冲区像素读取标志输入
    output pixel_buffer_full_o,             // 像素缓冲区满标志位
    output pixel_buffer_empty_o,            // 像素缓冲区空标志位
    output [13:0] pixel_buffer_rd_cnt_o,    // 待读像素块数目
    output pixel_valid_o,                   // 像素输出有效
    output [127:0] pixel_o                  // 像素数据输出
);

/* 信号线定义 */
    // FIFO Output Valid
    wire y_fifo_valid_o, uv_fifo_valid_o;

    // FIFO 待读元素数目
    wire [13:0] y_fifo_rd_count, uv_fifo_rd_count;

    // FIFO 数据输出
    wire [127:0] y_fifo_data_out, uv_fifo_data_out;                

    // FIFO full & empty
    wire y_fifo_full, y_fifo_empty, uv_fifo_full, uv_fifo_empty;

    // FIFO wr_rst_busy & rd_rst_busy
    wire y_fifo_wr_rst_busy, y_fifo_rd_rst_busy;
    wire uv_fifo_wr_rst_busy, uv_fifo_rd_rst_busy;

    // FIFO 读使能信号
    // pixel_type_i 为 1 时读 Y 分量，为 0 时读 UV 分量
    assign y_fifo_rd_en = pixel_rd_en_i & !pixel_type_i;
    assign uv_fifo_rd_en = pixel_rd_en_i & pixel_type_i;

    // FIFO 复位忙信号
    // 该信号应用于其他模块复位，即 FIFO 应在所有模块前完成复位
    assign rst_done_o = !y_fifo_wr_rst_busy  && !y_fifo_rd_rst_busy &&
                        !uv_fifo_wr_rst_busy && !uv_fifo_rd_rst_busy;

    // FIFO 空满信号
    assign pixel_buffer_full_o  = !pixel_type_i ? y_fifo_full : uv_fifo_full;
    assign pixel_buffer_empty_o = !pixel_type_i ? y_fifo_empty : uv_fifo_empty;

    // FIFO 输出有效标志
    assign pixel_valid_o = !pixel_type_i ? y_fifo_valid_o : uv_fifo_valid_o;

    // FIFO 待读元素数目
    assign pixel_buffer_rd_cnt_o = !pixel_type_i ? y_fifo_rd_count : uv_fifo_rd_count;

    // FIFO 输出
    assign pixel_o = !pixel_type_i ? y_fifo_data_out : uv_fifo_data_out;

/* FIFO */
    // Y 分量 FIFO
    pixel_fifo pixel_y_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(wr_clk_i),           
        .rd_clk(rd_clk_i),           
        .din(y_i),                 
        .wr_en(y_de_i),              
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
    pixel_fifo pixel_uv_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(wr_clk_i),           
        .rd_clk(rd_clk_i),           
        .din(uv_i),                 
        .wr_en(uv_de_i),              
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