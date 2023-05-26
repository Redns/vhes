module software_control_reset#
(
    parameter   EXT_RESETN_VALID_WIDTH          =   4,
    parameter   PERIPHERAL_RESET_WIDTH          =   1,
    parameter   PERIPHERAL_RESET_VALID_WIDTH    =   8,
    parameter   PERIPHERAL_RESETN_WIDTH         =   1,
    parameter   PERIPHERAL_RESETN_VALID_WIDTH   =   8
)
(
    input clk_i,
    input ext_rst_n_i,
    output reg[PERIPHERAL_RESET_WIDTH - 1:0] peripheral_rst_o,
    output reg[PERIPHERAL_RESETN_WIDTH - 1:0] peripheral_rst_n_o
);

    reg peripheral_rst_start;
    reg peripheral_rst_n_start;
    reg [9:0] ext_rst_valid_cnt = 10'b0;
    reg [9:0] peripheral_rst_cnt = 10'b0;
    reg [9:0] peripheral_rst_n_cnt = 10'b0;

    always@(posedge clk_i) begin
        if(ext_rst_n_i) begin
            ext_rst_valid_cnt <= 10'b0;
        end
        else if(ext_rst_valid_cnt <= EXT_RESETN_VALID_WIDTH) begin
            ext_rst_valid_cnt <= ext_rst_valid_cnt + 1'b1;
        end
    end

    always@(posedge clk_i) begin
        if(peripheral_rst_start) begin
            if(peripheral_rst_cnt > PERIPHERAL_RESET_VALID_WIDTH) begin
                peripheral_rst_o <= 'd0;
                peripheral_rst_start <= 1'b0;
            end
            else begin
                peripheral_rst_o <= ~0;
                peripheral_rst_cnt <= peripheral_rst_cnt + 1'b1;
            end
        end
        else begin
            if(ext_rst_valid_cnt > EXT_RESETN_VALID_WIDTH) begin
                peripheral_rst_o <= ~0;
                peripheral_rst_cnt <= 10'b0;
                peripheral_rst_start <= 1'b1;
            end
            else begin
                peripheral_rst_o <= 'd0;
            end
        end
    end

    always@(posedge clk_i) begin
        if(peripheral_rst_n_start) begin
            if(peripheral_rst_n_cnt > PERIPHERAL_RESETN_VALID_WIDTH) begin
                peripheral_rst_n_o <= 'd0;
                peripheral_rst_n_start <= 1'b0;
            end
            else begin
                peripheral_rst_n_o <= 'd0;
                peripheral_rst_n_cnt <= peripheral_rst_n_cnt + 1'b1;
            end
        end
        else begin
            if(ext_rst_valid_cnt > EXT_RESETN_VALID_WIDTH) begin
                peripheral_rst_n_o <= 'd0;
                peripheral_rst_n_cnt <= 10'b0;
                peripheral_rst_n_start <= 1'b1;
            end
            else begin
                peripheral_rst_n_o <= ~0;
            end
        end
    end
    
endmodule