-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/fmd_mig_7series_0_0_mig_sim.v" \
  "../../../bd/fmd/ip/fmd_mig_7series_0_0/fmd_mig_7series_0_0/user_design/rtl/fmd_mig_7series_0_0.v" \
  "../../../bd/fmd/ipshared/4624/uiFDMA.v" \
  "../../../bd/fmd/ip/fmd_uiFDMA_0_0/sim/fmd_uiFDMA_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_proc_sys_reset_0_0/sim/fmd_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/sim/bd_51bb.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_0/sim/bd_51bb_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_1/sim/bd_51bb_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_2/sim/bd_51bb_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_3/sim/bd_51bb_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_4/sim/bd_51bb_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_5/sim/bd_51bb_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_6/sim/bd_51bb_sarn_0.sv" \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_7/sim/bd_51bb_srn_0.sv" \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_8/sim/bd_51bb_sawn_0.sv" \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_9/sim/bd_51bb_swn_0.sv" \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_10/sim/bd_51bb_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_11/sim/bd_51bb_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/fmd/ip/fmd_axi_smc_0/bd_0/ip/ip_12/sim/bd_51bb_m00e_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../vhes.gen/sources_1/bd/fmd/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fmd/ip/fmd_axi_smc_0/sim/fmd_axi_smc_0.v" \
  "../../../bd/fmd/ip/fmd_clk_wiz_0_0/fmd_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/fmd/ip/fmd_clk_wiz_0_0/fmd_clk_wiz_0_0.v" \
  "../../../bd/fmd/sim/fmd.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

