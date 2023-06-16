module perf_encode_mse#(
    parameter FRAME_WIDTH           =   1920,       // 帧宽度（单位：像素）
    parameter FRAME_HEIGHT          =   1080        // 帧高度（单位：像素）
)
(
    input clk_i,                                    // 时钟输入
    input rst_n_i,                                  // 复位信号输入
    input pixel_src_en,                             // 原始像素使能输入
    input pixel_rec_en,                             // 重建像素使能输入
    input [127:0] pixel_src_i,                      // 原始像素输入
    input [127:0] pixel_rec_i,                      // 重建像素输入
    output reg mse_valid_o,                         // 图像 MSE 有效标志输出 
    output reg [31:0] mse_o                         // 图像 MSE 
);

    localparam FRAME_PIXEL_NUMS     =   FRAME_HEIGHT * FRAME_WIDTH;         // 帧像素总数

    reg [31:0] mse_temp[15:0];
    reg [127:0] pixel_src_temp[15:0];
    reg [127:0] pixel_rec_temp[15:0];

    reg [31:0] pixel_calc_cnt;
    wire pixel_src_valid;
    wire [127:0] pixel_src;

    pixel_psnr_calc_fifo pixel_psnr_calc_fifo (
        .clk(clk_i),      
        .srst(rst_n_i),   
        .din(pixel_src_i),      
        .wr_en(pixel_src_en),  
        .rd_en(pixel_rec_en),  
        .dout(pixel_src),   
        .full(),  
        .empty(), 
        .valid(pixel_src_valid)  
    );

    // 输入像素打拍
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            pixel_src_temp[0]  <= 128'b0;
            pixel_src_temp[1]  <= 128'b0;
            pixel_src_temp[2]  <= 128'b0;
            pixel_src_temp[3]  <= 128'b0;
            pixel_src_temp[4]  <= 128'b0;
            pixel_src_temp[5]  <= 128'b0;
            pixel_src_temp[6]  <= 128'b0;
            pixel_src_temp[7]  <= 128'b0;
            pixel_src_temp[8]  <= 128'b0;
            pixel_src_temp[9]  <= 128'b0;
            pixel_src_temp[10] <= 128'b0;
            pixel_src_temp[11] <= 128'b0;
            pixel_src_temp[12] <= 128'b0;
            pixel_src_temp[13] <= 128'b0;
            pixel_src_temp[14] <= 128'b0;
            pixel_src_temp[15] <= 128'b0;

            pixel_rec_temp[0]  <= 128'b0;
            pixel_rec_temp[1]  <= 128'b0;
            pixel_rec_temp[2]  <= 128'b0;
            pixel_rec_temp[3]  <= 128'b0;
            pixel_rec_temp[4]  <= 128'b0;
            pixel_rec_temp[5]  <= 128'b0;
            pixel_rec_temp[6]  <= 128'b0;
            pixel_rec_temp[7]  <= 128'b0;
            pixel_rec_temp[8]  <= 128'b0;
            pixel_rec_temp[9]  <= 128'b0;
            pixel_rec_temp[10] <= 128'b0;
            pixel_rec_temp[11] <= 128'b0;
            pixel_rec_temp[12] <= 128'b0;
            pixel_rec_temp[13] <= 128'b0;
            pixel_rec_temp[14] <= 128'b0;
            pixel_rec_temp[15] <= 128'b0;
        end
        else begin
            if(pixel_rec_en) begin
                pixel_rec_temp[0]  <= pixel_rec_i;
                pixel_rec_temp[1]  <= pixel_rec_temp[0];
                pixel_rec_temp[2]  <= pixel_rec_temp[1];
                pixel_rec_temp[3]  <= pixel_rec_temp[2];
                pixel_rec_temp[4]  <= pixel_rec_temp[3];
                pixel_rec_temp[5]  <= pixel_rec_temp[4];
                pixel_rec_temp[6]  <= pixel_rec_temp[5];
                pixel_rec_temp[7]  <= pixel_rec_temp[6];
                pixel_rec_temp[8]  <= pixel_rec_temp[7];
                pixel_rec_temp[9]  <= pixel_rec_temp[8];
                pixel_rec_temp[10] <= pixel_rec_temp[9];
                pixel_rec_temp[11] <= pixel_rec_temp[10];
                pixel_rec_temp[12] <= pixel_rec_temp[11];
                pixel_rec_temp[13] <= pixel_rec_temp[12];
                pixel_rec_temp[14] <= pixel_rec_temp[13];
                pixel_rec_temp[15] <= pixel_rec_temp[14];
            end
            if(pixel_rec_en && pixel_src_valid) begin
                pixel_src_temp[0]  <= pixel_src;
                pixel_src_temp[1]  <= pixel_src_temp[0];
                pixel_src_temp[2]  <= pixel_src_temp[1];
                pixel_src_temp[3]  <= pixel_src_temp[2];
                pixel_src_temp[4]  <= pixel_src_temp[3];
                pixel_src_temp[5]  <= pixel_src_temp[4];
                pixel_src_temp[6]  <= pixel_src_temp[5];
                pixel_src_temp[7]  <= pixel_src_temp[6];
                pixel_src_temp[8]  <= pixel_src_temp[7];
                pixel_src_temp[9]  <= pixel_src_temp[8];
                pixel_src_temp[10] <= pixel_src_temp[9];
                pixel_src_temp[11] <= pixel_src_temp[10];
                pixel_src_temp[12] <= pixel_src_temp[11];
                pixel_src_temp[13] <= pixel_src_temp[12];
                pixel_src_temp[14] <= pixel_src_temp[13];
                pixel_src_temp[15] <= pixel_src_temp[14];
            end
        end
    end

    // 图像 MSE 计算结果打拍
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            mse_temp[0]  <= 32'b0;
            mse_temp[1]  <= 32'b0;
            mse_temp[2]  <= 32'b0;
            mse_temp[3]  <= 32'b0;
            mse_temp[4]  <= 32'b0;
            mse_temp[5]  <= 32'b0;
            mse_temp[6]  <= 32'b0;
            mse_temp[7]  <= 32'b0;
            mse_temp[8]  <= 32'b0;
            mse_temp[9]  <= 32'b0;
            mse_temp[10] <= 32'b0;
            mse_temp[11] <= 32'b0;
            mse_temp[12] <= 32'b0;
            mse_temp[13] <= 32'b0;
            mse_temp[14] <= 32'b0;
            mse_temp[15] <= 32'b0;
        end
        else begin 
            if(pixel_calc_cnt == FRAME_PIXEL_NUMS) begin
                mse_temp[0]  <= 32'b0;
                mse_temp[1]  <= 32'b0;
                mse_temp[2]  <= 32'b0;
                mse_temp[3]  <= 32'b0;
                mse_temp[4]  <= 32'b0;
                mse_temp[5]  <= 32'b0;
                mse_temp[6]  <= 32'b0;
                mse_temp[7]  <= 32'b0;
                mse_temp[8]  <= 32'b0;
                mse_temp[9]  <= 32'b0;
                mse_temp[10] <= 32'b0;
                mse_temp[11] <= 32'b0;
                mse_temp[12] <= 32'b0;
                mse_temp[13] <= 32'b0;
                mse_temp[14] <= 32'b0;
                mse_temp[15] <= 32'b0;
            end
            else if(pixel_rec_en && pixel_src_valid) begin
                mse_temp[0]  <= (pixel_src_temp[0][7:0] > pixel_rec_temp[0][7:0] ? (pixel_src_temp[0][7:0] - pixel_rec_temp[0][7:0]) : (pixel_rec_temp[0][7:0] - pixel_src_temp[0][7:0])) * (pixel_src_temp[0][7:0] > pixel_rec_temp[0][7:0] ? (pixel_src_temp[0][7:0] - pixel_rec_temp[0][7:0]) : (pixel_rec_temp[0][7:0] - pixel_src_temp[0][7:0]));
                mse_temp[1]  <= mse_temp[0] + (pixel_src_temp[1][15:8] > pixel_rec_temp[1][15:8] ? (pixel_src_temp[1][15:8] - pixel_rec_temp[1][15:8]) : (pixel_rec_temp[1][15:8] - pixel_src_temp[1][15:8])) * (pixel_src_temp[1][15:8] > pixel_rec_temp[1][15:8] ? (pixel_src_temp[1][15:8] - pixel_rec_temp[1][15:8]) : (pixel_rec_temp[1][15:8] - pixel_src_temp[1][15:8]));
                mse_temp[2]  <= mse_temp[1] + (pixel_src_temp[2][23:16] > pixel_rec_temp[2][23:16]? (pixel_src_temp[2][23:16] - pixel_rec_temp[2][23:16]) : (pixel_rec_temp[2][23:16] - pixel_src_temp[2][23:16])) * (pixel_src_temp[2][23:16] > pixel_rec_temp[2][23:16]? (pixel_src_temp[2][23:16] - pixel_rec_temp[2][23:16]) : (pixel_rec_temp[2][23:16] - pixel_src_temp[2][23:16]));
                mse_temp[3]  <= mse_temp[2] + (pixel_src_temp[3][31:24] > pixel_rec_temp[3][31:24] ? (pixel_src_temp[3][31:24] - pixel_rec_temp[3][31:24]) : (pixel_rec_temp[3][31:24] - pixel_src_temp[3][31:24])) * (pixel_src_temp[3][31:24] > pixel_rec_temp[3][31:24] ? (pixel_src_temp[3][31:24] - pixel_rec_temp[3][31:24]) : (pixel_rec_temp[3][31:24] - pixel_src_temp[3][31:24]));
                mse_temp[4]  <= mse_temp[3] + (pixel_src_temp[4][39:32] > pixel_rec_temp[4][39:32] ? (pixel_src_temp[4][39:32] - pixel_rec_temp[4][39:32]) : (pixel_rec_temp[4][39:32] - pixel_src_temp[4][39:32])) * (pixel_src_temp[4][39:32] > pixel_rec_temp[4][39:32] ? (pixel_src_temp[4][39:32] - pixel_rec_temp[4][39:32]) : (pixel_rec_temp[4][39:32] - pixel_src_temp[4][39:32]));
                mse_temp[5]  <= mse_temp[4] + (pixel_src_temp[5][47:40] > pixel_rec_temp[5][47:40] ? (pixel_src_temp[5][47:40] - pixel_rec_temp[5][47:40]) : (pixel_rec_temp[5][47:40] - pixel_src_temp[5][47:40])) * (pixel_src_temp[5][47:40] > pixel_rec_temp[5][47:40] ? (pixel_src_temp[5][47:40] - pixel_rec_temp[5][47:40]) : (pixel_rec_temp[5][47:40] - pixel_src_temp[5][47:40]));
                mse_temp[6]  <= mse_temp[5] + (pixel_src_temp[6][55:48] > pixel_rec_temp[6][55:48] ? (pixel_src_temp[6][55:48] - pixel_rec_temp[6][55:48]) : (pixel_rec_temp[6][55:48] - pixel_src_temp[6][55:48])) * (pixel_src_temp[6][55:48] > pixel_rec_temp[6][55:48] ? (pixel_src_temp[6][55:48] - pixel_rec_temp[6][55:48]) : (pixel_rec_temp[6][55:48] - pixel_src_temp[6][55:48]));
                mse_temp[7]  <= mse_temp[6] + (pixel_src_temp[7][63:56] > pixel_rec_temp[7][63:56] ? (pixel_src_temp[7][63:56] - pixel_rec_temp[7][63:56]) : (pixel_rec_temp[7][63:56] - pixel_src_temp[7][63:56])) * (pixel_src_temp[7][63:56] > pixel_rec_temp[7][63:56] ? (pixel_src_temp[7][63:56] - pixel_rec_temp[7][63:56]) : (pixel_rec_temp[7][63:56] - pixel_src_temp[7][63:56]));
                mse_temp[8]  <= mse_temp[7] + (pixel_src_temp[8][71:64] > pixel_rec_temp[8][71:64] ? (pixel_src_temp[8][71:64] - pixel_rec_temp[8][71:64]) : (pixel_rec_temp[8][71:64] - pixel_src_temp[8][71:64])) * (pixel_src_temp[8][71:64] > pixel_rec_temp[8][71:64] ? (pixel_src_temp[8][71:64] - pixel_rec_temp[8][71:64]) : (pixel_rec_temp[8][71:64] - pixel_src_temp[8][71:64]));
                mse_temp[9]  <= mse_temp[8] + (pixel_src_temp[9][79:72] > pixel_rec_temp[9][79:72] ? (pixel_src_temp[9][79:72] - pixel_rec_temp[9][79:72]) : (pixel_rec_temp[9][79:72] - pixel_src_temp[9][79:72])) * (pixel_src_temp[9][79:72] > pixel_rec_temp[9][79:72] ? (pixel_src_temp[9][79:72] - pixel_rec_temp[9][79:72]) : (pixel_rec_temp[9][79:72] - pixel_src_temp[9][79:72]));
                mse_temp[10] <= mse_temp[9] + (pixel_src_temp[10][87:80] > pixel_rec_temp[10][87:80] ? (pixel_src_temp[10][87:80] - pixel_rec_temp[10][87:80]) : (pixel_rec_temp[10][87:80] - pixel_src_temp[10][87:80])) * (pixel_src_temp[10][87:80] > pixel_rec_temp[10][87:80] ? (pixel_src_temp[10][87:80] - pixel_rec_temp[10][87:80]) : (pixel_rec_temp[10][87:80] - pixel_src_temp[10][87:80]));
                mse_temp[11] <= mse_temp[10] + (pixel_src_temp[11][95:88] > pixel_rec_temp[11][95:88] ? (pixel_src_temp[11][95:88] - pixel_rec_temp[11][95:88]) : (pixel_rec_temp[11][95:88] - pixel_src_temp[11][95:88])) * (pixel_src_temp[11][95:88] > pixel_rec_temp[11][95:88] ? (pixel_src_temp[11][95:88] - pixel_rec_temp[11][95:88]) : (pixel_rec_temp[11][95:88] - pixel_src_temp[11][95:88]));
                mse_temp[12] <= mse_temp[11] + (pixel_src_temp[12][103:96] > pixel_rec_temp[12][103:96] ? (pixel_src_temp[12][103:96] - pixel_rec_temp[12][103:96]) : (pixel_rec_temp[12][103:96] - pixel_src_temp[12][103:96])) * (pixel_src_temp[12][103:96] > pixel_rec_temp[12][103:96] ? (pixel_src_temp[12][103:96] - pixel_rec_temp[12][103:96]) : (pixel_rec_temp[12][103:96] - pixel_src_temp[12][103:96]));
                mse_temp[13] <= mse_temp[12] + (pixel_src_temp[13][111:104] > pixel_rec_temp[13][111:104] ? (pixel_src_temp[13][111:104] - pixel_rec_temp[13][111:104]) : (pixel_rec_temp[13][111:104] - pixel_src_temp[13][111:104])) * (pixel_src_temp[13][111:104] > pixel_rec_temp[13][111:104] ? (pixel_src_temp[13][111:104] - pixel_rec_temp[13][111:104]) : (pixel_rec_temp[13][111:104] - pixel_src_temp[13][111:104]));
                mse_temp[14] <= mse_temp[13] + (pixel_src_temp[14][119:112] > pixel_rec_temp[14][119:112] ? (pixel_src_temp[14][119:112] - pixel_rec_temp[14][119:112]) : (pixel_rec_temp[14][119:112] - pixel_src_temp[14][119:112])) * (pixel_src_temp[14][119:112] > pixel_rec_temp[14][119:112] ? (pixel_src_temp[14][119:112] - pixel_rec_temp[14][119:112]) : (pixel_rec_temp[14][119:112] - pixel_src_temp[14][119:112]));
                mse_temp[15] <= mse_temp[14] + (pixel_src_temp[15][127:120] > pixel_rec_temp[15][127:120] ? (pixel_src_temp[15][127:120] - pixel_rec_temp[15][127:120]) : (pixel_rec_temp[15][127:120] - pixel_src_temp[15][127:120])) * (pixel_src_temp[15][127:120] > pixel_rec_temp[15][127:120] ? (pixel_src_temp[15][127:120] - pixel_rec_temp[15][127:120]) : (pixel_rec_temp[15][127:120] - pixel_src_temp[15][127:120]));
        end
        end
    end

    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            pixel_calc_cnt <= 32'b0;
        end
        else begin 
            if(pixel_calc_cnt == FRAME_PIXEL_NUMS) begin
                pixel_calc_cnt <= 32'b0;
            end 
            else if(pixel_rec_en && pixel_src_valid) begin
                pixel_calc_cnt <= pixel_calc_cnt + 32'd16;
            end
        end
    end

    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            mse_valid_o <= 1'b0;
        end
        else begin
            if(mse_valid_o) begin
                mse_valid_o <= 1'b0;
            end
            else if(pixel_calc_cnt == FRAME_PIXEL_NUMS) begin
                mse_valid_o <= 1'b1;
            end
        end
    end

endmodule