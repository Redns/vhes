module perf_encode_psnr#(
    parameter FRAME_WIDTH           =   1920,
    parameter FRAME_HEIGHT          =   1080,
    parameter PIXEL_WIDTH           =   8,
    parameter PIXEL_BUNCH_WIDTH     =   128
)
(
    input clk_i,
    input rst_n_i,
    input pixel_src_en,
    input pixel_rec_en,
    input [127:0] pixel_src_i,
    input [127:0] pixel_rec_i,
    output reg psnr_valid_o,
    output [31:0] psnr_o
);

    localparam PIXEL_MAX            =   (2 << PIXEL_WIDTH - 1);
    localparam FRAME_PIXEL_NUMS     =   FRAME_HEIGHT * FRAME_WIDTH;
    localparam MULTIPLY_OPERATOR    =   PIXEL_MAX * PIXEL_MAX * FRAME_HEIGHT * FRAME_WIDTH * 3.010325;
    localparam PSNR_CALC_COL        =   PIXEL_BUNCH_WIDTH / PIXEL_WIDTH;

    reg [31:0] psnr;
    reg [31:0] pixel_cnt;
    wire pixel_src_valid;
    wire [127:0] pixel_src;

    wire psnr_o = MULTIPLY_OPERATOR * $clog2(psnr);

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

    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            pixel_cnt <= 32'b0;
            psnr_valid_o <= 1'b0;
            psnr_o <= 32'b0;
        end
        else begin
            if(pixel_rec_en && pixel_src_valid) begin
                genvar i;
                generate
                    for(i = 0; i < PSNR_CALC_COL; i++) begin
                        psnr_o <= psnr_o + 1 / ((pixel_rec_i[(i * 8 + 7):(i * 8)] > pixel_src[(i * 8 + 7):(i * 8)] ? (pixel_rec_i[(i * 8 + 7):(i * 8)] - pixel_src[(i * 8 + 7):(i * 8)]) : (pixel_src[(i * 8 + 7):(i * 8)] - pixel_rec_i[(i * 8 + 7):(i * 8)])) * (pixel_rec_i[(i * 8 + 7):(i * 8)] > pixel_src[(i * 8 + 7):(i * 8)] ? (pixel_rec_i[(i * 8 + 7):(i * 8)] - pixel_src[(i * 8 + 7):(i * 8)]) : (pixel_src[(i * 8 + 7):(i * 8)] - pixel_rec_i[(i * 8 + 7):(i * 8)])))  
                        pixel_cnt <= pixel_cnt + 1;
                        if(pixel_cnt == FRAME_PIXEL_NUMS) begin
                            psnr_valid_o <= 1'b1;
                        end
                    end
                endgenerate
            end
            if(psnr_valid_o) begin
                psnr_valid_o <= 1'b0;
            end
        end
    end

endmodule