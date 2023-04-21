`timescale 1ps/1ps

module async_fifo_tb;

    reg rst;
    reg wr_clk, rd_clk;
    reg wr_en, rd_en;
    reg [7:0] din;

    wire [7:0] dout;
    wire full, empty, prog_full;
    wire [3:0] rd_data_count;
    wire valid;
    wire wr_rst_busy, rd_rst_busy;

    // 例化 FIFO
    async_fifo async_fifo (
        .rst(rst),                  
        .wr_clk(wr_clk),           
        .rd_clk(rd_clk),           
        .din(din),                 
        .wr_en(wr_en),              
        .rd_en(rd_en),          
        .valid(valid),    
        .dout(dout),                
        .full(full),               
        .empty(empty),       
        .rd_data_count(rd_data_count),      
        .prog_full(prog_full),      
        .wr_rst_busy(wr_rst_busy),  
        .rd_rst_busy(rd_rst_busy)  
    );

/************************** FIFO 读写时钟 ******************************/
    initial wr_clk = 1'b0;
    always #4 wr_clk = ~wr_clk;

    initial rd_clk = 1'b0;
    always #1 rd_clk = ~rd_clk;

/*************************** FIFO 初始化 *******************************/
    initial begin
        rst = 1'b1;
        wr_en = 1'b0;
        rd_en = 1'b0;
        din = 8'b0;
        #100 rst = 1'b0;
        /*************************** FIFO 写数据 *******************************/
            @(negedge wr_rst_busy);
            while(!full) begin
                @(posedge wr_clk) begin
                    wr_en = 1'b1;
                    din = din + 1'b1;
                end
            end
            wr_en = 1'b0;
        /*************************** FIFO 读数据 *******************************/
            wait(!rd_rst_busy);
            while(!empty) begin
                @(posedge rd_clk) rd_en = 1'b1; 
            end
            rd_en = 1'b0;
        #100 $stop;
    end

endmodule