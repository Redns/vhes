// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr 20 16:54:40 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hevc_encoder_system_auto_pc_0_sim_netlist.v
// Design      : hevc_encoder_system_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
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
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "hevc_encoder_system_auto_pc_0,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71296)
`pragma protect data_block
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
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
