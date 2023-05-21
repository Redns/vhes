`timescale 1ps/1ps

module fmd_tb;

    /****************************** 宏定义 ***************************/
    // 时钟周期
    `define HALF_SYS_CLK        2500
    `define FULL_SYS_CLK        (`HALF_SYS_CLK * 2)

    `define BASE_ADDR           32'h0100_0000
    `define BRUST_LEN           1

    /****************************** 信号线 ***************************/
    /* 系统信号 */ 
    reg rst_n;
    reg clk_200M_p;
    assign clk_200M_n = ~clk_200M_p;

    wire rst_done;
    wire clk_ui_200M;
    /* FDMA 相关信号 */ 
    reg [31:0] fdma_addr;
    reg [15:0] fdma_size;
    reg [127:0] fdma_wdata;
    wire [127:0] fdma_rdata;
    reg fdma_rareq, fdma_wareq;
    wire fdma_wbusy, fdma_rbusy;
    wire fdma_rvalid, fdma_wvalid;
    /* DDR 相关信号 */ 
    wire [14:0]DDR_PL_addr;
    wire [2:0]DDR_PL_ba;
    wire DDR_PL_cas_n;
    wire [0:0]DDR_PL_ck_n;
    wire [0:0]DDR_PL_ck_p;
    wire [0:0]DDR_PL_cke;
    wire [0:0]DDR_PL_cs_n;
    wire [3:0]DDR_PL_dm;
    wire [31:0]DDR_PL_dq;
    wire [3:0]DDR_PL_dqs_n;
    wire [3:0]DDR_PL_dqs_p;
    wire [0:0]DDR_PL_odt;
    wire DDR_PL_ras_n;
    wire DDR_PL_reset_n;
    wire DDR_PL_we_n;

    fmd_wrapper fmd_wrapper(
        .rst_n_i(rst_n),
        .clk_200M_i_clk_n(clk_200M_n),
        .clk_200M_i_clk_p(clk_200M_p),
        .rst_done_o(rst_done),
        .clk_ui_200M_o(clk_ui_200M),
        .DDR_PL_addr(DDR_PL_addr),
        .DDR_PL_ba(DDR_PL_ba),
        .DDR_PL_cas_n(DDR_PL_cas_n),
        .DDR_PL_ck_n(DDR_PL_ck_n),
        .DDR_PL_ck_p(DDR_PL_ck_p),
        .DDR_PL_cke(DDR_PL_cke),
        .DDR_PL_cs_n(DDR_PL_cs_n),
        .DDR_PL_dm(DDR_PL_dm),
        .DDR_PL_dq(DDR_PL_dq),
        .DDR_PL_dqs_n(DDR_PL_dqs_n),
        .DDR_PL_dqs_p(DDR_PL_dqs_p),
        .DDR_PL_odt(DDR_PL_odt),
        .DDR_PL_ras_n(DDR_PL_ras_n),
        .DDR_PL_reset_n(DDR_PL_reset_n),
        .DDR_PL_we_n(DDR_PL_we_n),
        .FDMA_S_i_fdma_raddr(fdma_addr),
        .FDMA_S_i_fdma_rareq(fdma_rareq),
        .FDMA_S_i_fdma_rbusy(fdma_rbusy),
        .FDMA_S_i_fdma_rdata(fdma_rdata),
        .FDMA_S_i_fdma_rready(1'b1),
        .FDMA_S_i_fdma_rsize(fdma_size),
        .FDMA_S_i_fdma_rvalid(fdma_rvalid),
        .FDMA_S_i_fdma_waddr(fdma_addr),
        .FDMA_S_i_fdma_wareq(fdma_wareq),
        .FDMA_S_i_fdma_wbusy(fdma_wbusy),
        .FDMA_S_i_fdma_wdata(fdma_wdata),
        .FDMA_S_i_fdma_wready(1'b1),
        .FDMA_S_i_fdma_wsize(fdma_size),
        .FDMA_S_i_fdma_wvalid(fdma_wvalid)
    );

    ddr3_model u_ddr3_part1(
        .rst_n(DDR_PL_reset_n),
        .ck(DDR_PL_ck_p),
        .ck_n(DDR_PL_ck_n),
        .cke(DDR_PL_cke),
        .cs_n(DDR_PL_cs_n),
        .ras_n(DDR_PL_ras_n),
        .cas_n(DDR_PL_cas_n),
        .we_n(DDR_PL_we_n),
        .dm_tdqs(DDR_PL_dm[1:0]),
        .ba(DDR_PL_ba),
        .addr(DDR_PL_addr),
        .dq(DDR_PL_dq[15:0]),
        .dqs(DDR_PL_dqs_p[1:0]),
        .dqs_n(DDR_PL_dqs_n[1:0]),
        .tdqs_n(),
        .odt(DDR_PL_odt)
    );

    ddr3_model u_ddr3_part2(
        .rst_n(DDR_PL_reset_n),
        .ck(DDR_PL_ck_p),
        .ck_n(DDR_PL_ck_n),
        .cke(DDR_PL_cke),
        .cs_n(DDR_PL_cs_n),
        .ras_n(DDR_PL_ras_n),
        .cas_n(DDR_PL_cas_n),
        .we_n(DDR_PL_we_n),
        .dm_tdqs(DDR_PL_dm[3:2]),
        .ba(DDR_PL_ba),
        .addr(DDR_PL_addr),
        .dq(DDR_PL_dq[31:16]),
        .dqs(DDR_PL_dqs_p[3:2]),
        .dqs_n(DDR_PL_dqs_n[3:2]),
        .tdqs_n(),
        .odt(DDR_PL_odt)
    );

    /***************************** 主体逻辑 **************************/
    // 系统输入时钟（200MHz）
    initial begin
        clk_200M_p <= 1'b0;
        forever #(`HALF_SYS_CLK) begin
             clk_200M_p = ~clk_200M_p;
        end
    end

    initial begin
        rst_n = 1'b1;
        fdma_addr = 32'b0;
        fdma_size = 16'b0;
        fdma_rareq = 1'b0;
        fdma_wareq = 1'b0;
        fdma_wdata = 128'h1234_5678_9abc_def;
        // 复位模块
        #(100 * `FULL_SYS_CLK) rst_n = 1'b0;
        #(100 * `FULL_SYS_CLK) rst_n = 1'b1;
        // 等待复位完成
        wait(rst_done);
        // 写入 16 次数据（共 16 * 128bit）
        @(posedge clk_ui_200M) begin
            fdma_wareq = 1'b1;
            fdma_addr  = `BASE_ADDR;
            fdma_size  = `BRUST_LEN;
        end
        @(posedge clk_ui_200M) begin
            fdma_wareq = 1'b0;
        end
        @(negedge fdma_wvalid);
        // 读取 16 次数据（共 16 * 128bit）
        @(posedge clk_ui_200M) begin
            fdma_rareq = 1'b1;
            fdma_addr  = `BASE_ADDR;
            fdma_size  = `BRUST_LEN;
        end
        @(posedge clk_ui_200M) begin
            fdma_rareq = 1'b0;
        end
        @(negedge fdma_rvalid);
        #(10 * `FULL_SYS_CLK) $stop;
    end

    // always@(posedge clk_ui_200M) begin
    //     if(!rst_n) begin
    //         fdma_wdata = 128'b0;
    //     end
    //     else if(fdma_wvalid) begin
    //         fdma_wdata = fdma_wdata + 1'b1;
    //     end
    // end

endmodule