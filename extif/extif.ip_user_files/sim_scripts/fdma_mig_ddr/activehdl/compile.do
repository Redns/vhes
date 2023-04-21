vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_protocol_converter_v2_1_26
vlib activehdl/axi_clock_converter_v2_1_25
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/axi_dwidth_converter_v2_1_26

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26
vmap axi_clock_converter_v2_1_25 activehdl/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 activehdl/axi_dwidth_converter_v2_1_26

vlog -work xpm  -sv2k12 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
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
"../../../bd/fdma_mig_ddr/ipshared/4624/uiFDMA.v" \
"../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_uiFDMA_0_0/sim/fdma_mig_ddr_uiFDMA_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_proc_sys_reset_0_0/sim/fdma_mig_ddr_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_s00_regslice_0/sim/fdma_mig_ddr_s00_regslice_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_25  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../extif.gen/sources_1/bd/fdma_mig_ddr/ipshared/ec67/hdl" \
"../../../bd/fdma_mig_ddr/ip/fdma_mig_ddr_auto_us_df_0/sim/fdma_mig_ddr_auto_us_df_0.v" \
"../../../bd/fdma_mig_ddr/sim/fdma_mig_ddr.v" \

vlog -work xil_defaultlib \
"glbl.v"

