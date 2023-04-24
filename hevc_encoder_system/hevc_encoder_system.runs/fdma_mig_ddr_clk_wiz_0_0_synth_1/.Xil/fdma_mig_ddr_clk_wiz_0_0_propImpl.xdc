set_property SRC_FILE_INFO {cfile:e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0.xdc rfile:../../../hevc_encoder_system.gen/sources_1/bd/fdma_mig_ddr/ip/fdma_mig_ddr_clk_wiz_0_0/fdma_mig_ddr_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
