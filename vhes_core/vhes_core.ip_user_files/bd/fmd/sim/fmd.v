//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Wed May 10 13:58:02 2023
//Host        : JingDevice running 64-bit major release  (build 9200)
//Command     : generate_target fmd.bd
//Design      : fmd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fmd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fmd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fmd.hwdef" *) 
module fmd
   (DDR3_o_addr,
    DDR3_o_ba,
    DDR3_o_cas_n,
    DDR3_o_ck_n,
    DDR3_o_ck_p,
    DDR3_o_cke,
    DDR3_o_cs_n,
    DDR3_o_dm,
    DDR3_o_dq,
    DDR3_o_dqs_n,
    DDR3_o_dqs_p,
    DDR3_o_odt,
    DDR3_o_ras_n,
    DDR3_o_reset_n,
    DDR3_o_we_n,
    FDMA_S_i_fdma_raddr,
    FDMA_S_i_fdma_rareq,
    FDMA_S_i_fdma_rbusy,
    FDMA_S_i_fdma_rdata,
    FDMA_S_i_fdma_rready,
    FDMA_S_i_fdma_rsize,
    FDMA_S_i_fdma_rvalid,
    FDMA_S_i_fdma_waddr,
    FDMA_S_i_fdma_wareq,
    FDMA_S_i_fdma_wbusy,
    FDMA_S_i_fdma_wdata,
    FDMA_S_i_fdma_wready,
    FDMA_S_i_fdma_wsize,
    FDMA_S_i_fdma_wvalid,
    clk_100M_i,
    clk_ui_200M_o,
    init_calib_complete_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3_o, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_o_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o BA" *) output [2:0]DDR3_o_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o CAS_N" *) output DDR3_o_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o CK_N" *) output [0:0]DDR3_o_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o CK_P" *) output [0:0]DDR3_o_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o CKE" *) output [0:0]DDR3_o_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o CS_N" *) output [0:0]DDR3_o_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o DM" *) output [3:0]DDR3_o_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o DQ" *) inout [31:0]DDR3_o_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o DQS_N" *) inout [3:0]DDR3_o_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o DQS_P" *) inout [3:0]DDR3_o_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o ODT" *) output [0:0]DDR3_o_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o RAS_N" *) output DDR3_o_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o RESET_N" *) output DDR3_o_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_o WE_N" *) output DDR3_o_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_raddr" *) input [31:0]FDMA_S_i_fdma_raddr;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rareq" *) input FDMA_S_i_fdma_rareq;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rbusy" *) output FDMA_S_i_fdma_rbusy;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rdata" *) output [127:0]FDMA_S_i_fdma_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rready" *) input FDMA_S_i_fdma_rready;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rsize" *) input [15:0]FDMA_S_i_fdma_rsize;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_rvalid" *) output FDMA_S_i_fdma_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_waddr" *) input [31:0]FDMA_S_i_fdma_waddr;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wareq" *) input FDMA_S_i_fdma_wareq;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wbusy" *) output FDMA_S_i_fdma_wbusy;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wdata" *) input [127:0]FDMA_S_i_fdma_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wready" *) input FDMA_S_i_fdma_wready;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wsize" *) input [15:0]FDMA_S_i_fdma_wsize;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S_i fdma_wvalid" *) output FDMA_S_i_fdma_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100M_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100M_I, CLK_DOMAIN fmd_clk_100M_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100M_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_UI_200M_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_UI_200M_O, CLK_DOMAIN fmd_mig_7series_0_0_ui_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output clk_ui_200M_o;
  output init_calib_complete_o;

  wire [31:0]FDMA_S_0_1_fdma_raddr;
  wire FDMA_S_0_1_fdma_rareq;
  wire FDMA_S_0_1_fdma_rbusy;
  wire [127:0]FDMA_S_0_1_fdma_rdata;
  wire FDMA_S_0_1_fdma_rready;
  wire [15:0]FDMA_S_0_1_fdma_rsize;
  wire FDMA_S_0_1_fdma_rvalid;
  wire [31:0]FDMA_S_0_1_fdma_waddr;
  wire FDMA_S_0_1_fdma_wareq;
  wire FDMA_S_0_1_fdma_wbusy;
  wire [127:0]FDMA_S_0_1_fdma_wdata;
  wire FDMA_S_0_1_fdma_wready;
  wire [15:0]FDMA_S_0_1_fdma_wsize;
  wire FDMA_S_0_1_fdma_wvalid;
  wire [29:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [29:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [255:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [255:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [31:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_200M_o;
  wire clk_wiz_0_locked;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [3:0]mig_7series_0_DDR3_DM;
  wire [31:0]mig_7series_0_DDR3_DQ;
  wire [3:0]mig_7series_0_DDR3_DQS_N;
  wire [3:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk1;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [31:0]uiFDMA_0_M_AXI_ARADDR;
  wire [1:0]uiFDMA_0_M_AXI_ARBURST;
  wire [3:0]uiFDMA_0_M_AXI_ARCACHE;
  wire [0:0]uiFDMA_0_M_AXI_ARID;
  wire [7:0]uiFDMA_0_M_AXI_ARLEN;
  wire uiFDMA_0_M_AXI_ARLOCK;
  wire [2:0]uiFDMA_0_M_AXI_ARPROT;
  wire [3:0]uiFDMA_0_M_AXI_ARQOS;
  wire uiFDMA_0_M_AXI_ARREADY;
  wire [2:0]uiFDMA_0_M_AXI_ARSIZE;
  wire uiFDMA_0_M_AXI_ARVALID;
  wire [31:0]uiFDMA_0_M_AXI_AWADDR;
  wire [1:0]uiFDMA_0_M_AXI_AWBURST;
  wire [3:0]uiFDMA_0_M_AXI_AWCACHE;
  wire [0:0]uiFDMA_0_M_AXI_AWID;
  wire [7:0]uiFDMA_0_M_AXI_AWLEN;
  wire uiFDMA_0_M_AXI_AWLOCK;
  wire [2:0]uiFDMA_0_M_AXI_AWPROT;
  wire [3:0]uiFDMA_0_M_AXI_AWQOS;
  wire uiFDMA_0_M_AXI_AWREADY;
  wire [2:0]uiFDMA_0_M_AXI_AWSIZE;
  wire uiFDMA_0_M_AXI_AWVALID;
  wire [0:0]uiFDMA_0_M_AXI_BID;
  wire uiFDMA_0_M_AXI_BREADY;
  wire [1:0]uiFDMA_0_M_AXI_BRESP;
  wire uiFDMA_0_M_AXI_BVALID;
  wire [127:0]uiFDMA_0_M_AXI_RDATA;
  wire [0:0]uiFDMA_0_M_AXI_RID;
  wire uiFDMA_0_M_AXI_RLAST;
  wire uiFDMA_0_M_AXI_RREADY;
  wire [1:0]uiFDMA_0_M_AXI_RRESP;
  wire uiFDMA_0_M_AXI_RVALID;
  wire [127:0]uiFDMA_0_M_AXI_WDATA;
  wire uiFDMA_0_M_AXI_WLAST;
  wire uiFDMA_0_M_AXI_WREADY;
  wire [15:0]uiFDMA_0_M_AXI_WSTRB;
  wire uiFDMA_0_M_AXI_WVALID;

  assign DDR3_o_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_o_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_o_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_o_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_o_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_o_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_o_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign DDR3_o_dm[3:0] = mig_7series_0_DDR3_DM;
  assign DDR3_o_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_o_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_o_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_o_we_n = mig_7series_0_DDR3_WE_N;
  assign FDMA_S_0_1_fdma_raddr = FDMA_S_i_fdma_raddr[31:0];
  assign FDMA_S_0_1_fdma_rareq = FDMA_S_i_fdma_rareq;
  assign FDMA_S_0_1_fdma_rready = FDMA_S_i_fdma_rready;
  assign FDMA_S_0_1_fdma_rsize = FDMA_S_i_fdma_rsize[15:0];
  assign FDMA_S_0_1_fdma_waddr = FDMA_S_i_fdma_waddr[31:0];
  assign FDMA_S_0_1_fdma_wareq = FDMA_S_i_fdma_wareq;
  assign FDMA_S_0_1_fdma_wdata = FDMA_S_i_fdma_wdata[127:0];
  assign FDMA_S_0_1_fdma_wready = FDMA_S_i_fdma_wready;
  assign FDMA_S_0_1_fdma_wsize = FDMA_S_i_fdma_wsize[15:0];
  assign FDMA_S_i_fdma_rbusy = FDMA_S_0_1_fdma_rbusy;
  assign FDMA_S_i_fdma_rdata[127:0] = FDMA_S_0_1_fdma_rdata;
  assign FDMA_S_i_fdma_rvalid = FDMA_S_0_1_fdma_rvalid;
  assign FDMA_S_i_fdma_wbusy = FDMA_S_0_1_fdma_wbusy;
  assign FDMA_S_i_fdma_wvalid = FDMA_S_0_1_fdma_wvalid;
  assign clk_in1_0_1 = clk_100M_i;
  assign clk_ui_200M_o = mig_7series_0_ui_clk1;
  assign init_calib_complete_o = mig_7series_0_init_calib_complete;
  fmd_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(uiFDMA_0_M_AXI_ARADDR),
        .S00_AXI_arburst(uiFDMA_0_M_AXI_ARBURST),
        .S00_AXI_arcache(uiFDMA_0_M_AXI_ARCACHE),
        .S00_AXI_arid(uiFDMA_0_M_AXI_ARID),
        .S00_AXI_arlen(uiFDMA_0_M_AXI_ARLEN),
        .S00_AXI_arlock(uiFDMA_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(uiFDMA_0_M_AXI_ARPROT),
        .S00_AXI_arqos(uiFDMA_0_M_AXI_ARQOS),
        .S00_AXI_arready(uiFDMA_0_M_AXI_ARREADY),
        .S00_AXI_arsize(uiFDMA_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(uiFDMA_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(uiFDMA_0_M_AXI_AWADDR),
        .S00_AXI_awburst(uiFDMA_0_M_AXI_AWBURST),
        .S00_AXI_awcache(uiFDMA_0_M_AXI_AWCACHE),
        .S00_AXI_awid(uiFDMA_0_M_AXI_AWID),
        .S00_AXI_awlen(uiFDMA_0_M_AXI_AWLEN),
        .S00_AXI_awlock(uiFDMA_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(uiFDMA_0_M_AXI_AWPROT),
        .S00_AXI_awqos(uiFDMA_0_M_AXI_AWQOS),
        .S00_AXI_awready(uiFDMA_0_M_AXI_AWREADY),
        .S00_AXI_awsize(uiFDMA_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(uiFDMA_0_M_AXI_AWVALID),
        .S00_AXI_bid(uiFDMA_0_M_AXI_BID),
        .S00_AXI_bready(uiFDMA_0_M_AXI_BREADY),
        .S00_AXI_bresp(uiFDMA_0_M_AXI_BRESP),
        .S00_AXI_bvalid(uiFDMA_0_M_AXI_BVALID),
        .S00_AXI_rdata(uiFDMA_0_M_AXI_RDATA),
        .S00_AXI_rid(uiFDMA_0_M_AXI_RID),
        .S00_AXI_rlast(uiFDMA_0_M_AXI_RLAST),
        .S00_AXI_rready(uiFDMA_0_M_AXI_RREADY),
        .S00_AXI_rresp(uiFDMA_0_M_AXI_RRESP),
        .S00_AXI_rvalid(uiFDMA_0_M_AXI_RVALID),
        .S00_AXI_wdata(uiFDMA_0_M_AXI_WDATA),
        .S00_AXI_wlast(uiFDMA_0_M_AXI_WLAST),
        .S00_AXI_wready(uiFDMA_0_M_AXI_WREADY),
        .S00_AXI_wstrb(uiFDMA_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(uiFDMA_0_M_AXI_WVALID),
        .aclk(mig_7series_0_ui_clk1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  fmd_clk_wiz_0_0 clk_wiz_0
       (.clk_200M_o(clk_wiz_0_clk_200M_o),
        .clk_in1(clk_in1_0_1),
        .locked(clk_wiz_0_locked));
  fmd_mig_7series_0_0 mig_7series_0
       (.aresetn(proc_sys_reset_0_peripheral_aresetn),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_o_dq[31:0]),
        .ddr3_dqs_n(DDR3_o_dqs_n[3:0]),
        .ddr3_dqs_p(DDR3_o_dqs_p[3:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_200M_o),
        .sys_rst(clk_wiz_0_locked),
        .ui_clk(mig_7series_0_ui_clk1),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  fmd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk1));
  fmd_uiFDMA_0_0 uiFDMA_0
       (.M_AXI_ACLK(mig_7series_0_ui_clk1),
        .M_AXI_ARADDR(uiFDMA_0_M_AXI_ARADDR),
        .M_AXI_ARBURST(uiFDMA_0_M_AXI_ARBURST),
        .M_AXI_ARCACHE(uiFDMA_0_M_AXI_ARCACHE),
        .M_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M_AXI_ARID(uiFDMA_0_M_AXI_ARID),
        .M_AXI_ARLEN(uiFDMA_0_M_AXI_ARLEN),
        .M_AXI_ARLOCK(uiFDMA_0_M_AXI_ARLOCK),
        .M_AXI_ARPROT(uiFDMA_0_M_AXI_ARPROT),
        .M_AXI_ARQOS(uiFDMA_0_M_AXI_ARQOS),
        .M_AXI_ARREADY(uiFDMA_0_M_AXI_ARREADY),
        .M_AXI_ARSIZE(uiFDMA_0_M_AXI_ARSIZE),
        .M_AXI_ARVALID(uiFDMA_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(uiFDMA_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(uiFDMA_0_M_AXI_AWBURST),
        .M_AXI_AWCACHE(uiFDMA_0_M_AXI_AWCACHE),
        .M_AXI_AWID(uiFDMA_0_M_AXI_AWID),
        .M_AXI_AWLEN(uiFDMA_0_M_AXI_AWLEN),
        .M_AXI_AWLOCK(uiFDMA_0_M_AXI_AWLOCK),
        .M_AXI_AWPROT(uiFDMA_0_M_AXI_AWPROT),
        .M_AXI_AWQOS(uiFDMA_0_M_AXI_AWQOS),
        .M_AXI_AWREADY(uiFDMA_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(uiFDMA_0_M_AXI_AWSIZE),
        .M_AXI_AWVALID(uiFDMA_0_M_AXI_AWVALID),
        .M_AXI_BID(uiFDMA_0_M_AXI_BID),
        .M_AXI_BREADY(uiFDMA_0_M_AXI_BREADY),
        .M_AXI_BRESP(uiFDMA_0_M_AXI_BRESP),
        .M_AXI_BVALID(uiFDMA_0_M_AXI_BVALID),
        .M_AXI_RDATA(uiFDMA_0_M_AXI_RDATA),
        .M_AXI_RID(uiFDMA_0_M_AXI_RID),
        .M_AXI_RLAST(uiFDMA_0_M_AXI_RLAST),
        .M_AXI_RREADY(uiFDMA_0_M_AXI_RREADY),
        .M_AXI_RRESP(uiFDMA_0_M_AXI_RRESP),
        .M_AXI_RVALID(uiFDMA_0_M_AXI_RVALID),
        .M_AXI_WDATA(uiFDMA_0_M_AXI_WDATA),
        .M_AXI_WLAST(uiFDMA_0_M_AXI_WLAST),
        .M_AXI_WREADY(uiFDMA_0_M_AXI_WREADY),
        .M_AXI_WSTRB(uiFDMA_0_M_AXI_WSTRB),
        .M_AXI_WVALID(uiFDMA_0_M_AXI_WVALID),
        .fdma_raddr(FDMA_S_0_1_fdma_raddr),
        .fdma_rareq(FDMA_S_0_1_fdma_rareq),
        .fdma_rbusy(FDMA_S_0_1_fdma_rbusy),
        .fdma_rdata(FDMA_S_0_1_fdma_rdata),
        .fdma_rready(FDMA_S_0_1_fdma_rready),
        .fdma_rsize(FDMA_S_0_1_fdma_rsize),
        .fdma_rvalid(FDMA_S_0_1_fdma_rvalid),
        .fdma_waddr(FDMA_S_0_1_fdma_waddr),
        .fdma_wareq(FDMA_S_0_1_fdma_wareq),
        .fdma_wbusy(FDMA_S_0_1_fdma_wbusy),
        .fdma_wdata(FDMA_S_0_1_fdma_wdata),
        .fdma_wready(FDMA_S_0_1_fdma_wready),
        .fdma_wsize(FDMA_S_0_1_fdma_wsize),
        .fdma_wvalid(FDMA_S_0_1_fdma_wvalid));
endmodule
