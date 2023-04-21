// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Apr 22 00:02:03 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Project/xk265/extif/extif.gen/sources_1/ip/async_fifo/async_fifo_sim_netlist.v
// Design      : async_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo,fifo_generator_v13_2_7,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_async_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module async_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count,
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
  output valid;
  output [3:0]rd_data_count;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire [3:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire valid;
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
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
  (* C_USE_EMBEDDED_REG = "1" *) 
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
  async_fifo_fifo_generator_v13_2_7 U0
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
        .rd_data_count(rd_data_count),
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
        .valid(valid),
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
module async_fifo_xpm_cdc_gray
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
module async_fifo_xpm_cdc_gray__2
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
module async_fifo_xpm_cdc_single
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
module async_fifo_xpm_cdc_single__2
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
module async_fifo_xpm_cdc_sync_rst
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
module async_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 105648)
`pragma protect data_block
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
tmuBZ+ZAiEWlPvBTNrKgOCgbNhbpRiLWriKY
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
