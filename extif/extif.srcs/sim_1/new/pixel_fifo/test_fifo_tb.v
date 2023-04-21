module test_fifo_tb;

    reg rst;
    reg wr_clk, rd_clk;
    reg wr_en, rd_en;
    reg [7:0] din;

    wire [7:0] dout;
    wire full, empty, prog_full;
    wire wr_rst_busy, rd_rst_busy;

    integer wr_index, rd_index;

    // 例化 FIFO
    test_fifo test_fifo (
        .rst(rst),                  
        .wr_clk(wr_clk),           
        .rd_clk(rd_clk),           
        .din(din),                 
        .wr_en(wr_en),              
        .rd_en(rd_en),              
        .dout(dout),                
        .full(full),               
        .empty(empty),             
        .prog_full(prog_full),      
        .wr_rst_busy(wr_rst_busy),  
        .rd_rst_busy(rd_rst_busy)  
    );

    initial wr_clk = 1'b0;
    always #4 wr_clk = ~wr_clk;

    initial rd_clk = 1'b0;
    always #1 rd_clk = ~rd_clk;

    initial begin
        rst = 1'b1;
        wr_en = 1'b0;
        rd_en = 1'b0;
        din = 8'b0;
        #10;
        rst = 1'b0;

        // 写入数据
        @(negedge wr_rst_busy) begin
            wr_en = 1'b1;
            for(wr_index = 0; wr_index < 32; wr_index = wr_index + 1) begin
                @(negedge wr_clk) begin
                    if(!prog_full)
                        din = wr_index;
                    else
                        wr_en = 1'b0;
                end
            end
        end

        // 读取数据
        wait(!rd_rst_busy) rd_en = 1'b1;
        for(rd_index = 0; rd_index < 32; rd_index = rd_index + 1) begin
            @(negedge rd_clk) begin
                if(empty)
                    rd_en = 1'b0;
            end
        end
    end

endmodule