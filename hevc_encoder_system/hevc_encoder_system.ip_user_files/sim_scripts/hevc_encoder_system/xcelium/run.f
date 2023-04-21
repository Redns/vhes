-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_processing_system7_0_1/sim/hevc_encoder_system_processing_system7_0_1.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_14 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_28 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_14 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_14 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_axi_vdma_0_1/sim/hevc_encoder_system_axi_vdma_0_1.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v5_0_1 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/b872/hdl/v_vid_in_axi4s_v5_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_v_vid_in_axi4s_0_1/sim/hevc_encoder_system_v_vid_in_axi4s_0_1.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_proc_sys_reset_0_1/sim/hevc_encoder_system_proc_sys_reset_0_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_xbar_0/sim/hevc_encoder_system_xbar_0.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/ui7611reg.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uicfg7611.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/uii2c.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/352e/hdmi2rgb.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/sim/hevc_encoder_system_hdmi_adv7611_init_0_2.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_rgb2yuv_0_1/sim/hevc_encoder_system_rgb2yuv_0_1.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_2 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_util_vector_logic_0_0/sim/hevc_encoder_system_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_0/sim/hevc_encoder_system_auto_pc_0.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_1/sim/hevc_encoder_system_auto_pc_1.v" \
  "../../../../hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/sim/hevc_encoder_system.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

