// TODO 1080P@60fps 下 vsps 信息可能不同
module vsp_top(
    input clk_i,
    input clk_bs_rd_i,
    input rst_n_i,
    output reg rst_done_o,
    input hevc_encode_done_i,
    input [7:0] bs_data_i,
    input bs_valid_i,
    input hevc_bs_rd_en_i,
    output hevc_bs_valid_o,
    output [31:0] hevc_bs_data_o,
    output hevc_bs_overflow_o
);

    parameter   S0_INIT                 =   0,
                S1_WRITE_VPS            =   1,
                S2_WRITE_SPS            =   2,
                S3_WRITE_PPS            =   3,
                S4_WRITE_IDR_HEADER     =   4,
                S5_WRITE_IDR_DATA       =   5,
                S6_WRITE_TRAIL_HEADER   =   6,
                S7_WRITE_TRAIL_DATA     =   7;

    // 状态机状态
    // 帧序号（0 ~ 255）
    reg [2:0] state; 
    reg [7:0] frame_sn_i;

    // VSPS 相关端口
    reg vsps_data_valid;
    reg [2:0] vsps_type;
    reg [7:0] vsps_index;
    wire [7:0] vsps_data;
    wire [7:0] vsps_data_size;

    // 复位信号
    wire bs_fifo_full;
    wire bs_fifo_wr_rst_busy;
    wire bs_fifo_rd_rst_busy;

    wire hevc_bs_valid;
    wire [31:0] hevc_bs_data;

    wire state_rst_n;
    assign hevc_bs_overflow_o = bs_fifo_full && hevc_bs_valid && !hevc_bs_rd_en_i;
    assign hevc_bs_fifo_rst_done = !bs_fifo_wr_rst_busy && !bs_fifo_rd_rst_busy;

    wire [7:0] hevc_bare_bs_data = vsps_data_valid ? vsps_data : bs_data_i;
    wire hevc_bare_bs_data_valid = vsps_data_valid ? vsps_data_valid : bs_valid_i;
    
    // VSPS
    vsps vsps(
        .type_i(vsps_type),
        .index_i(vsps_index),
        .frame_sn_i(frame_sn_i),
        .trail_sn_init_i(16'hd80f),
        .data_o(vsps_data),
        .data_size_o(vsps_data_size)
    );

    data_merge#
    (
        .DATA_IN_WIDTH(8),
        .DATA_OUT_WIDTH(32)
    ) hevc_bs_data_merge
    (
        .clk_i(~clk_i),
        .rst_n_i(rst_n_i),
        .de_i(hevc_bare_bs_data_valid),
        .data_i(hevc_bare_bs_data),
        .de_o(hevc_bs_valid),
        .data_o(hevc_bs_data)
    );

    // TODO 此处可能导致 AXIS 数据转换丢失第一个数据
    // 若确实数据丢书考虑将模式改为 STANDARD FIFO 以取代 FIRST WORD FALL THROUGH
    hevc_bs_fifo hevc_bs_fifo (
        .rst(~rst_n_i),                 
        .wr_clk(clk_i),            
        .rd_clk(clk_bs_rd_i),           
        .din(hevc_bs_data),                  
        .wr_en(hevc_bs_valid),             
        .rd_en(hevc_bs_rd_en_i),              
        .dout(hevc_bs_data_o),               
        .full(bs_fifo_full),       
        .empty(),              
        .valid(hevc_bs_valid_o),              
        .wr_rst_busy(bs_fifo_wr_rst_busy),  
        .rd_rst_busy(bs_fifo_rd_rst_busy)  
    );

    software_control_reset#
    (
        .EXT_RESETN_VALID_WIDTH(4),
        .PERIPHERAL_RESETN_WIDTH(1),
        .PERIPHERAL_RESETN_VALID_WIDTH(60)
    ) software_control_reset
    (
        .clk_i(clk_bs_rd_i),
        .ext_rst_n_i(hevc_bs_fifo_rst_done),
        .peripheral_rst_o(),
        .peripheral_rst_n_o(state_rst_n)
    );

    // 帧序号进程
    always@(posedge clk_i or negedge state_rst_n) begin
        if(!state_rst_n)
            frame_sn_i <= 8'b0;
        else if(hevc_encode_done_i)
            frame_sn_i <= frame_sn_i + 1'b1;
        else
            frame_sn_i <= frame_sn_i;
    end

    // 状态机进程
    always@(posedge clk_i or negedge state_rst_n) begin
        if(!state_rst_n) begin
            // 初始化状态
            state <= S0_INIT;
            // 初始化 VSPS
            vsps_type <= 3'd0;
            vsps_index <= 8'd0;
            vsps_data_valid <= 1'b0;
            // 初始化系统参数
            rst_done_o <= 1'b0;
        end
        else begin
            case(state)
                S0_INIT: begin
                    state <= S1_WRITE_VPS;
                    // 清零 VSPS 数据有效标志
                    vsps_data_valid <= 1'b0;
                end 
                S1_WRITE_VPS: begin
                    if(!vsps_data_valid) begin
                        // 使能 VSPS 数据输入
                        vsps_type <= 3'd0;
                        vsps_index <= 8'd0;
                        vsps_data_valid <= 1'b1;
                    end
                    else begin
                        // 写入起始码
                        if((vsps_type == 3'd0) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            vsps_type <= 3'd1;
                            vsps_index <= 8'd0;
                        end
                        else if((vsps_type == 3'd1) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            state <= S2_WRITE_SPS;
                            // 清零 VSPS 数据有效标志
                            vsps_data_valid <= 1'b0;
                        end
                        else begin
                            vsps_index <= vsps_index + 1'b1;
                        end
                    end 
                end
                S2_WRITE_SPS: begin
                    if(!vsps_data_valid) begin
                        // 使能 VSPS 数据输入
                        vsps_type <= 3'd0;
                        vsps_index <= 8'd0;
                        vsps_data_valid <= 1'b1;
                    end
                    else begin
                        // 写入起始码
                        if((vsps_type == 3'd0) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            vsps_type <= 3'd2;
                            vsps_index <= 8'd0;
                        end
                        else if((vsps_type == 3'd2) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            state <= S3_WRITE_PPS;
                            // 清零 VSPS 数据有效标志
                            vsps_data_valid <= 1'b0;
                        end
                        else begin
                            vsps_index <= vsps_index + 1'b1;
                        end
                    end 
                end
                S3_WRITE_PPS: begin
                    if(!vsps_data_valid) begin
                        // 使能 VSPS 数据输入
                        vsps_type <= 3'd0;
                        vsps_index <= 8'd0;
                        vsps_data_valid <= 1'b1;
                    end
                    else begin
                        // 写入起始码
                        if((vsps_type == 3'd0) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            vsps_type <= 3'd3;
                            vsps_index <= 8'd0;
                        end
                        else if((vsps_type == 3'd3) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            state <= S4_WRITE_IDR_HEADER;
                            // 清零 VSPS 数据有效标志
                            vsps_data_valid <= 1'b0;
                            // 复位完成
                            rst_done_o <= 1'b1;
                        end
                        else begin
                            vsps_index <= vsps_index + 1'b1;
                        end
                    end 
                end
                S4_WRITE_IDR_HEADER: begin
                    if(!vsps_data_valid) begin
                        // 使能 VSPS 数据输入
                        vsps_type <= 3'd0;
                        vsps_index <= 8'd0;
                        vsps_data_valid <= 1'b1;
                    end
                    else begin
                        // 写入起始码
                        if((vsps_type == 3'd0) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            vsps_type <= 3'd4;
                            vsps_index <= 8'd0;
                        end
                        else if((vsps_type == 3'd4) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            state <= S5_WRITE_IDR_DATA;
                            // 清零 VSPS 数据有效标志
                            vsps_data_valid <= 1'b0;
                        end
                        else begin
                            vsps_index <= vsps_index + 1'b1;
                        end
                    end 
                end
                S5_WRITE_IDR_DATA: begin
                    vsps_data_valid <= 1'b0;
                    if(hevc_encode_done_i) begin
                        state <= S6_WRITE_TRAIL_HEADER;
                    end
                end
                S6_WRITE_TRAIL_HEADER: begin
                    if(!vsps_data_valid) begin
                        // 使能 VSPS 数据输入
                        vsps_type <= 3'd0;
                        vsps_index <= 8'd0;
                        vsps_data_valid <= 1'b1;
                    end
                    else begin
                        // 写入起始码
                        if((vsps_type == 3'd0) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            vsps_type <= 3'd5;
                            vsps_index <= 8'd0;
                        end
                        else if((vsps_type == 3'd5) && (vsps_index >= vsps_data_size - 1'b1)) begin
                            state <= S7_WRITE_TRAIL_DATA;
                            // 清零 VSPS 数据有效标志
                            vsps_data_valid <= 1'b0;
                        end
                        else begin
                            vsps_index <= vsps_index + 1'b1;
                        end
                    end 
                end
                S7_WRITE_TRAIL_DATA: begin
                    vsps_data_valid <= 1'b0;
                    if(hevc_encode_done_i) begin
                        state <= S6_WRITE_TRAIL_HEADER;
                    end
                end
            endcase
        end
    end
    
endmodule