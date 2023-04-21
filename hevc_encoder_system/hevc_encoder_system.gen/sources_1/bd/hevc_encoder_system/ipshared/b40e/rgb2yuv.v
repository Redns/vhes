module rgb2yuv(
    input clk_i,
    input rst_n_i,
    input hsync_i,
    input vsync_i,
    input de_i,
    input [23:0] rgb_i,
    output [23:0] yuv_o,
    output hsync_o,
    output vsync_o,
    output de_o
);

    reg [1:0] hsync;
    reg [1:0] vsync;
    reg [1:0] de;

    reg [15:0] y, y_temp1, y_temp2, y_temp3;
    reg [15:0] u, u_temp1, u_temp2, u_temp3;
    reg [15:0] v, v_temp1, v_temp2, v_temp3;

    assign yuv_o = { y[15:8], u[15:8], v[15:8] };

    assign hsync_o = hsync[1];
    assign vsync_o = vsync[1];
    assign de_o = de[1];

    // �Ƚ��г˷�����
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            y_temp1 <= 16'b0;
            y_temp2 <= 16'b0;
            y_temp3 <= 16'b0;

            u_temp1 <= 16'b0;
            u_temp2 <= 16'b0;
            u_temp3 <= 16'b0;

            v_temp1 <= 16'b0;
            v_temp2 <= 16'b0;
            v_temp3 <= 16'b0;
        end
        else begin
            y_temp1 <= 66  * rgb_i[23:16];
            y_temp2 <= 129 * rgb_i[15:8];
            y_temp3 <= 25  * rgb_i[7:0];
 
            u_temp1 <= 38  * rgb_i[23:16];
            u_temp2 <= 75  * rgb_i[15:8];
            u_temp3 <= 112 * rgb_i[7:0];

            v_temp1 <= 112 * rgb_i[23:16];
            v_temp2 <= 94  * rgb_i[15:8];
            v_temp3 <= 18  * rgb_i[7:0];
        end
    end

    // Ȼ����мӷ�����
    always@(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            y <= 16'b0;
            u <= 16'b0;
            v <= 16'b0;
        end
        else begin
            y <= 16'h1000 + y_temp1 + y_temp2 + y_temp3;
            u <= 16'h8000 - u_temp1 - u_temp2 + u_temp3;
            v <= 16'h8000 + v_temp1 - v_temp2 - v_temp3;
        end
    end

    // ���ͬ��ʱ��
    // ��ת�����̷�Ϊ����ʱ��������ɣ�yuv ������ rgb �����Ӻ�һ��ʱ������
    // hsync��vsync��de �൱��״̬ FIFO
    always @(posedge clk_i) begin
        hsync <= { hsync[0], hsync_i };
        vsync <= { vsync[0], vsync_i };
        de <= { de[0], de_i };
    end

endmodule