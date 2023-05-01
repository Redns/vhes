-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_proc_sys_reset_0_0/sim/fdma_mig_ddr_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fdma_mig_ddr/ipshared/4624/uiFDMA.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_uiFDMA_0_0/sim/fdma_mig_ddr_uiFDMA_0_0.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/fdma_mig_ddr_mig_7series_0_0_mig_sim.v" \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_mig_7series_0_0/fdma_mig_ddr_mig_7series_0_0/user_design/rtl/fdma_mig_ddr_mig_7series_0_0.v" \
  "../../../bd/fdma_mig_ddr/sim/fdma_mig_ddr.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_s00_regslice_0/sim/fdma_mig_ddr_s00_regslice_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_24 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_25 \
  "../../../../xk265.gen/sources_1/bd/fdma_mig_ddr/ipshared/38b4/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_auto_us_df_0/sim/fdma_mig_ddr_auto_us_df_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

