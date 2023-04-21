// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Apr 21 16:08:17 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Project/xk265/extif/extif.gen/sources_1/ip/test_fifo/test_fifo_sim_netlist.v
// Design      : test_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module test_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "12" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "11" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  test_fifo_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module test_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module test_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module test_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module test_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module test_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module test_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 108432)
`pragma protect data_block
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
u+VquiLRJyQWfq2OuPx75UsM
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
