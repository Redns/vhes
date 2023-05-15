vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/7bbf/fs_cap.v" \
"../../../bd/system/ipshared/7bbf/ui_axisbufw.v" \
"../../../bd/system/ip/system_ui_axisbufw_0_0/sim/system_ui_axisbufw_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d5b8_g_inst_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../vhes.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_us_0/sim/system_auto_us_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

