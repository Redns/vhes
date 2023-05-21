module video_in_buffer_sim_only(
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
    output [13:0] pixel_buffer_rd_cnt_o,    // 待读像素块数目
    output [127:0] pixel_o                  // 像素数据输出
);

/* 信号线定义 */
    // FIFO Output Valid
    wire y_fifo_valid_o, uv_fifo_valid_o;

    // FIFO 数据输出
    wire [127:0] y_fifo_data_out, uv_fifo_data_out;                

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

    // FIFO 输出
    assign pixel_o = !pixel_type_i ? y_fifo_data_out : uv_fifo_data_out;

/* FIFO */
    // Y 分量 FIFO
    pixel_fifo_sim_only pixel_y_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(wr_clk_i),           
        .rd_clk(rd_clk_i),           
        .din(y_i),                 
        .wr_en(y_de_i),              
        .rd_en(y_fifo_rd_en),            
        .rd_data_count(pixel_buffer_rd_cnt_o),
        .dout(y_fifo_data_out),                                      
        .prog_full(pixel_buffer_full_o),      
        .wr_rst_busy(y_fifo_wr_rst_busy),  
        .rd_rst_busy(y_fifo_rd_rst_busy)  
    );

    // UV 分量 FIFO
    pixel_fifo_sim_only pixel_uv_fifo(
        .rst(~rst_n_i),                  
        .wr_clk(wr_clk_i),           
        .rd_clk(rd_clk_i),           
        .din(uv_i),                 
        .wr_en(uv_de_i),              
        .rd_en(uv_fifo_rd_en),           
        .dout(uv_fifo_data_out),                                 
        .wr_rst_busy(uv_fifo_wr_rst_busy),  
        .rd_rst_busy(uv_fifo_rd_rst_busy)  
    );

endmodule