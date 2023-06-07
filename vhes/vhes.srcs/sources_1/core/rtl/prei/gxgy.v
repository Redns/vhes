module gxgy(
	input clk_i,
	input rst_n_i,
	input en_i,
	input [71:0] pixel_i,
	output reg signed [10:0] gx_o,
	output reg signed [10:0] gy_o
);

    wire [23:0] pixel_row1 = pixel_i[71:48];
    wire [23:0] pixel_row2 = pixel_i[47:24];
	wire [23:0] pixel_row3 = pixel_i[23:0];

	always@(posedge clk_i or negedge rst_n_i) begin
		if(!rst_n_i) begin
            gx_o <= 11'b0;
            gy_o <= 11'b0;
        end
		else if(en_i) begin
            // TODO 此处移位运算可能溢出
            // gx <= pixel_row1[7:0] + (pixel_row2[7:0] << 1) + pixel_row3[7:0] - pixel_row3[23:16] - (pixel_row2[23:16] << 1) - pixel_row1[23:16];
            // gy <= pixel_row1[7:0] + (pixel_row1[15:8] << 1) + pixel_row1[23:16] - pixel_row3[7:0] - (pixel_row3[15:8] << 1) - pixel_row3[23:16];
            gx_o <= pixel_row1[7:0] + (pixel_row2[7:0] * 2) + pixel_row3[7:0] - pixel_row3[23:16] - (pixel_row2[23:16] * 2) - pixel_row1[23:16];
            gy_o <= pixel_row1[7:0] + (pixel_row1[15:8] * 2) + pixel_row1[23:16] - pixel_row3[7:0] - (pixel_row3[15:8] * 2) - pixel_row3[23:16];
        end
    end

endmodule