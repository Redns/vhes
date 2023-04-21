module video_buffer_top_tb;

    `define FRAME_WIDTH         32
    `define FRAME_HEIGHT        16
    `define FRAME_CNT           3
    `define FRAME_X_BLANK       8
    `define FRAME_Y_BLANK       8

    `define PIXEL_HALF_CLK      2
    `define FIFO_READ_HALF_CLK  1

    // 复位信号
    reg rst_n;
    
    // YUV 视频源输入
    reg pclk;
    reg [23:0] pixel;
    reg hsync;
    reg vsync;
    reg de;

    // 视频缓冲区输出
    reg rd_clk;
    wire pixel_buffer_rst_busy_o;
    wire pixel_buffer_full_o;
    wire pixel_buffer_empty_o;
    wire pixel_buffer_valid_o;
    wire [127:0] pixel_o;

/**************************** 时钟信号 *****************************/
    // 像素时钟
    initial pclk = 1'b0;
    always #(`PIXEL_HALF_CLK) pclk = ~pclk;

    // FIFO 读时钟
    initial rd_clk = 1'b0;
    always #(`FIFO_READ_HALF_CLK) rd_clk = ~rd_clk;

/**************************** 复位信号 *****************************/
    initial begin
        rst_n = 1'b1;
        #10 rst_n = 1'b0;
        #10 rst_n = 1'b1;
    end

/**************************** 例化模块 *****************************/
    video_buffer_top video_buffer_top(
        .rst_n_i(rst_n),
        .pclk_i(pclk),
        .pixel_i(pixel),
        .hsync_i(hsync),
        .vsync_i(vsync),
        .de_i(de),
        .rd_clk_i(rd_clk),
        .pixel_type_i(1'b1),
        .pixel_rd_en_i(1'b1),
        .pixel_buffer_rst_busy(pixel_buffer_rst_busy_o),
        .pixel_buffer_full_o(pixel_buffer_full_o),
        .pixel_buffer_empty_o(pixel_buffer_empty_o),
        .pixel_o(pixel_o),
        .pixel_valid_o(pixel_buffer_valid_o)
    );

/************************** 模拟像素生成 ***************************/
    integer frame_cnt;
    integer pixel_width, pixel_height;

    always@(posedge pclk) pixel = pixel - 24'h1fffff;

    initial begin
        hsync = 1'b0;
        vsync = 1'b0;
        de = 1'b0;
        pixel = 24'hffffff;

        // 在场信号未改变的情况下输出像素
        for(pixel_height = 0; pixel_height < `FRAME_HEIGHT / 2; pixel_height = pixel_height + 1'b1) begin
            @(posedge pclk) begin
                #10 hsync = 1'b1;
                #(`FRAME_X_BLANK) @(posedge pclk) de = 1'b1;
            end
            for(pixel_width = 0; pixel_width < `FRAME_WIDTH; pixel_width = pixel_width + 1'b1) begin
                @(negedge pclk);
            end
            @(posedge pclk) begin
                de = 1'b0;
                #(`FRAME_X_BLANK) hsync = 1'b0;
            end
        end

        for(frame_cnt = 0; frame_cnt < `FRAME_CNT; frame_cnt = frame_cnt + 1'b1) begin
            // 场信号改变
            // 新的一帧开始传输
            #10 @(negedge pclk) begin
                de = 1'b0;
                hsync = 1'b0;
                vsync = 1'b1;
            end 
            for(pixel_height = 0; pixel_height < `FRAME_HEIGHT; pixel_height = pixel_height + 1'b1) begin
                @(posedge pclk) begin
                    #10 hsync = 1'b1;
                    #(`FRAME_X_BLANK) @(posedge pclk) de = 1'b1;
                end
                for(pixel_width = 0; pixel_width < `FRAME_WIDTH; pixel_width = pixel_width + 1'b1) begin
                    @(negedge pclk);
                end
                @(posedge pclk) begin
                    de = 1'b0;
                    #(`FRAME_X_BLANK) hsync = 1'b0;
                end
            end
            @(negedge pclk) vsync = 1'b0;
        end
        
    end

endmodule