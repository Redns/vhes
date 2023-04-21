vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/processing_system7_vip_v1_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/lib_bmg_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_28
vlib activehdl/axi_vdma_v6_3_14
vlib activehdl/v_vid_in_axi4s_v5_0_1
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/util_vector_logic_v2_0_2
vlib activehdl/axi_protocol_converter_v2_1_26

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 activehdl/processing_system7_vip_v1_0_14
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap lib_bmg_v1_0_14 activehdl/lib_bmg_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_28 activehdl/axi_datamover_v5_1_28
vmap axi_vdma_v6_3_14 activehdl/axi_vdma_v6_3_14
vmap v_vid_in_axi4s_v5_0_1 activehdl/v_vid_in_axi4s_v5_0_1
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap util_vector_logic_v2_0_2 activehdl/util_vector_logic_v2_0_2
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_processing_system7_0_1/sim/hevc_encoder_system_processing_system7_0_1.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_14 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_14  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_14 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_axi_vdma_0_1/sim/hevc_encoder_system_axi_vdma_0_1.vhd" \

vlog -work v_vid_in_axi4s_v5_0_1  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/b872/hdl/v_vid_in_axi4s_v5_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_v_vid_in_axi4s_0_1/sim/hevc_encoder_system_v_vid_in_axi4s_0_1.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_proc_sys_reset_0_1/sim/hevc_encoder_system_proc_sys_reset_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_xbar_0/sim/hevc_encoder_system_xbar_0.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/ui7611reg.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uicfg7611.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uii2c.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/hdmi2rgb.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/sim/hevc_encoder_system_hdmi_adv7611_init_0_2.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/sim/hevc_encoder_system_rgb2yuv_0_1.v" \

vlog -work util_vector_logic_v2_0_2  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_util_vector_logic_0_0/sim/hevc_encoder_system_util_vector_logic_0_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_0/sim/hevc_encoder_system_auto_pc_0.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_1/sim/hevc_encoder_system_auto_pc_1.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/sim/hevc_encoder_system.v" \

vlog -work xil_defaultlib \
"glbl.v"

