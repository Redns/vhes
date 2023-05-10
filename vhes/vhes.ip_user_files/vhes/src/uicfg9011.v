module uicfg9011#(
    // 输入时钟为 50MHz 时分频系数为 499
    // 输入时钟为 100MHz 时分频系数为 999
    parameter	 CLK_DIV  = 16'd999
)
(
    input  clk_i,
    input  rst_n,
    output sil_scl,
    inout  sil_sda,
    output reg sil_cfg_done
);	

    //reset counter for delay time
    reg  [8 :0] rst_cnt = 9'd0;
    always@(posedge clk_i) begin
        if(!rst_n)
            rst_cnt <= 9'd0;
        else if(!rst_cnt[8]) 
            rst_cnt <= rst_cnt + 1'b1;
    end

    reg  iic_en;
    wire iic_busy;   
    reg  [31:0] wr_data;
    reg  [1 :0] TS_S = 2'd0;
    reg  [8 :0] byte_cnt = 9'd0;
    wire [31:0] REG_DATA;
    wire [8 :0] REG_SIZE;
    reg  [8 :0] REG_INDEX; 

    //state machine write one byte and then read one byte
    always@(posedge clk_i) begin
        if(!rst_cnt[8])begin
            REG_INDEX<= 9'd0;
            iic_en  <= 1'b0;
            wr_data <= 32'd0;
            sil_cfg_done<= 1'b0;
            TS_S    <= 2'd0;    
        end
        else begin
            case(TS_S)
                0:if(sil_cfg_done == 1'b0)
                    TS_S <= 2'd1;
                1:if(!iic_busy)begin//write data
                    iic_en  <= 1'b1; 
                    wr_data[7  :0] <= REG_DATA[23:16];   
                    wr_data[15 :8] <= REG_DATA[15: 8];   
                    wr_data[23:16] <= REG_DATA[7 : 0];
                end
                else 
                    TS_S    <= 2'd2;
                2:begin
                    iic_en  <= 1'b0; 
                    if(!iic_busy)begin 
                    REG_INDEX<= REG_INDEX + 1'b1;
                    TS_S    <= 2'd3;
                    end
                end
                3:begin//read rtc register
                    if(REG_INDEX == REG_SIZE)begin
                        sil_cfg_done <= 1'b1;
                    end
                    TS_S 	<= 2'd0;
                end 
            endcase
        end
    end

    uii2c#
    (
        .WMEN_LEN(4),
        .RMEN_LEN(1),
        .CLK_DIV(CLK_DIV)
    )
    uii2c_inst
    (
        .clk_i(clk_i),
        .iic_scl(sil_scl),
        .iic_sda(sil_sda),
        .wr_data(wr_data),
        .wr_cnt(8'd3),//write data max len = 4BYTES
        .rd_data(),   //read not used
        .rd_cnt(8'd0),//read not used
        .iic_mode(1'b0),
        .iic_en(iic_en),
        .iic_busy(iic_busy)
    );

    sil9011reg  sil9011reg_inst(
        .REG_SIZE(REG_SIZE),
        .REG_INDEX(REG_INDEX),
        .REG_DATA(REG_DATA)
    );   

endmodule