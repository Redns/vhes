vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/axi_datamover_v5_1_28
vlib modelsim_lib/msim/axi_vdma_v6_3_14
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap axi_datamover_v5_1_28 modelsim_lib/msim/axi_datamover_v5_1_28
vmap axi_vdma_v6_3_14 modelsim_lib/msim/axi_vdma_v6_3_14
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_processing_system7_0_1/sim/hevc_encoder_system_processing_system7_0_1.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_14  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_14  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_axi_vdma_0_1/sim/hevc_encoder_system_axi_vdma_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_v_vid_in_axi4s_0_1/sim/hevc_encoder_system_v_vid_in_axi4s_0_1.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_proc_sys_reset_0_1/sim/hevc_encoder_system_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl" "+incdir+../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_xbar_0/sim/hevc_encoder_system_xbar_0.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/ui7611reg.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uicfg7611.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uii2c.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/hdmi2rgb.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/sim/hevc_encoder_system_hdmi_adv7611_init_0_2.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/sim/hevc_encoder_system_rgb2yuv_0_1.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_util_vector_logic_0_0/sim/hevc_encoder_system_util_vector_logic_0_0.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_0/sim/hevc_encoder_system_auto_pc_0.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_1/sim/hevc_encoder_system_auto_pc_1.v" \
"../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/sim/hevc_encoder_system.v" \

vlog -work xil_defaultlib \
"glbl.v"

