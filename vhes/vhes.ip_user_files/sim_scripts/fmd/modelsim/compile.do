vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/fmd/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
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

vcom -work xil_defaultlib  -93 \
"../../../bd/fmd/ip/fmd_proc_sys_reset_0_0/sim/fmd_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/fmd/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/fmd/ipshared/4624/uiFDMA.v" \
"../../../bd/fmd/ip/fmd_uiFDMA_0_0/sim/fmd_uiFDMA_0_0.v" \
"../../../bd/fmd/ip/fmd_s00_regslice_0/sim/fmd_s00_regslice_0.v" \
"../../../bd/fmd/ip/fmd_auto_us_df_0/sim/fmd_auto_us_df_0.v" \
"../../../bd/fmd/sim/fmd.v" \

vlog -work xil_defaultlib \
"glbl.v"

