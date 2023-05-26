module rgb2yuv(
    input clk_i,                // 像素时钟输入
    input rst_n_i,              // 复位信号输入（低电平有效）
    input hsync_i,              // 行同步信号输入（上升沿代表一行结束）
    input vsync_i,              // 场同步信号输入（上升沿代表一帧开始）
    input de_i,                 // 像素有效信号输入（高电平有效）
    input [23:0] rgb_i,         // RGB888 格式信号输入
    output [23:0] yuv_o,        // YUV444 格式信号输出
    output hsync_o,             // 行同步信号输出
    output vsync_o,             // 场同步信号输出
    output de_o                 // 像素有效信号输出
);

    // 行场同步/使能信号缓存
    reg [10:0] de;
    reg [10:0] hsync;
    reg [10:0] vsync;

    // 像素空间转换计算缓存区域
    reg [15:0] y_temp[10:0];
    reg [15:0] u_temp[10:0];
    reg [15:0] v_temp[10:0];

    // RGB 输入
    reg [23:0] rgb[10:0];

    // YUV 像素输出
    assign de_o = de[10];
    assign hsync_o = hsync[10];
    assign vsync_o = vsync[10];
    assign yuv_o = { y_temp[10][15:8], u_temp[10][15:8], v_temp[10][15:8] };

    // 对输入 RGB 数据进行打拍
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            rgb[0] <= 24'b0;
            rgb[1] <= 24'b0;
            rgb[2] <= 24'b0;
            rgb[3] <= 24'b0;
            rgb[4] <= 24'b0;
            rgb[5] <= 24'b0;
            rgb[6] <= 24'b0;
            rgb[7] <= 24'b0;
            rgb[8] <= 24'b0;
            rgb[9] <= 24'b0;
            rgb[10] <= 24'b0;
        end
        else begin
            rgb[0] <= rgb_i;
            rgb[1] <= rgb[0];
            rgb[2] <= rgb[1];
            rgb[3] <= rgb[2];
            rgb[4] <= rgb[3];
            rgb[5] <= rgb[4];
            rgb[6] <= rgb[5];
            rgb[7] <= rgb[6];
            rgb[8] <= rgb[7];
            rgb[9] <= rgb[8];
            rgb[10] <= rgb[9];
        end
    end

    // 对移位运算进行打拍
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            y_temp[0]  <= 16'b0;
            y_temp[1]  <= 16'b0;
            y_temp[2]  <= 16'b0;
            y_temp[3]  <= 16'b0;
            y_temp[4]  <= 16'b0;
            y_temp[5]  <= 16'b0;
            y_temp[6]  <= 16'b0;
            y_temp[7]  <= 16'b0;
            y_temp[8]  <= 16'b0;
            y_temp[9]  <= 16'b0;
            y_temp[10] <= 16'b0;

            u_temp[0]  <= 16'b0;
            u_temp[1]  <= 16'b0;
            u_temp[2]  <= 16'b0;
            u_temp[3]  <= 16'b0;
            u_temp[4]  <= 16'b0;
            u_temp[5]  <= 16'b0;
            u_temp[6]  <= 16'b0;
            u_temp[7]  <= 16'b0;
            u_temp[8]  <= 16'b0;
            u_temp[9]  <= 16'b0;
            u_temp[10] <= 16'b0;

            v_temp[0]  <= 16'b0;
            v_temp[1]  <= 16'b0;
            v_temp[2]  <= 16'b0;
            v_temp[3]  <= 16'b0;
            v_temp[4]  <= 16'b0;
            v_temp[5]  <= 16'b0;
            v_temp[6]  <= 16'b0;
            v_temp[7]  <= 16'b0;
            v_temp[8]  <= 16'b0;
            v_temp[9]  <= 16'b0;
            v_temp[10] <= 16'b0;
        end
        else begin
            y_temp[0]  <= 16'h1000;
            y_temp[1]  <= y_temp[0] + (rgb[0][23:16] << 6);
            y_temp[2]  <= y_temp[1] + (rgb[1][23:16] << 1);
            y_temp[3]  <= y_temp[2] + (rgb[2][15:8] << 7);
            y_temp[4]  <= y_temp[3] + (rgb[3][15:8]);
            y_temp[5]  <= y_temp[4] + (rgb[4][7:0] << 4);
            y_temp[6]  <= y_temp[5] + (rgb[5][7:0] << 3);
            y_temp[7]  <= y_temp[6] + (rgb[6][7:0]);
            y_temp[8]  <= y_temp[7];
            y_temp[9]  <= y_temp[8];
            y_temp[10] <= y_temp[9];

            u_temp[0]  <= 16'h8000;
            u_temp[1]  <= u_temp[0] - (rgb[0][23:16] << 5);
            u_temp[2]  <= u_temp[1] - (rgb[1][23:16] << 2);
            u_temp[3]  <= u_temp[2] - (rgb[2][23:16] << 1);
            u_temp[4]  <= u_temp[3] - (rgb[3][15:8] << 6);
            u_temp[5]  <= u_temp[4] - (rgb[4][15:8] << 3);
            u_temp[6]  <= u_temp[5] - (rgb[5][15:8] << 1);
            u_temp[7]  <= u_temp[6] - (rgb[6][15:8]);
            u_temp[8]  <= u_temp[7] + (rgb[7][7:0] << 6);
            u_temp[9]  <= u_temp[8] + (rgb[8][7:0] << 5);
            u_temp[10] <= u_temp[9] + (rgb[9][7:0] << 4);

            v_temp[0]  <= 16'h8000;
            v_temp[1]  <= v_temp[0] + (rgb[0][23:16] << 6);
            v_temp[2]  <= v_temp[1] + (rgb[1][23:16] << 5);
            v_temp[3]  <= v_temp[2] + (rgb[2][23:16] << 4);
            v_temp[4]  <= v_temp[3] - (rgb[3][15:8] << 6);
            v_temp[5]  <= v_temp[4] - (rgb[4][15:8] << 4);
            v_temp[6]  <= v_temp[5] - (rgb[5][15:8] << 3);
            v_temp[7]  <= v_temp[6] - (rgb[6][15:8] << 2);
            v_temp[8]  <= v_temp[7] - (rgb[7][15:8] << 1);
            v_temp[9]  <= v_temp[8] - (rgb[8][7:0] << 4);
            v_temp[10] <= v_temp[9] - (rgb[9][7:0] << 1);
        end
    end

    // 最后同步行场信号
    always @(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            hsync <= 11'b0;
            vsync <= 11'b0;
            de <= 11'b0;
        end
        else begin
            de <= { de[9:0], de_i };
            hsync <= { hsync[9:0], hsync_i };
            vsync <= { vsync[9:0], vsync_i };
        end
    end

endmodule