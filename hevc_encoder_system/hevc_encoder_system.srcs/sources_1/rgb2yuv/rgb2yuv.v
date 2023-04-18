module rgb2yuv(
    input rst_n_i,
    input [7:0] r_i,
    input [7:0] g_i,
    input [7:0] b_i,
    output [7:0] y_o,
    output [7:0] u_o,
    output [7:0] v_o
);

    reg [15:0] y, u, v;

    assign y_o = y[15:8];
    assign u_o = u[15:8];
    assign v_o = v[15:8];

    always@(r_i or g_i or b_i or rst_n_i) begin
        if(!rst_n_i) begin
            y <= 16'b0;
            u <= 16'b0;
            v <= 16'b0;
        end
        else begin
            y <= 16'h1000 + 66  * r_i + 129 * g_i + 25  * b_i;
            u <= 16'h8000 - 38  * r_i - 75  * g_i + 112 * b_i;
            v <= 16'h8000 + 112 * r_i - 94  * g_i - 18  * b_i;  
        end
    end

endmodule