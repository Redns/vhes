vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vhes.gen/sources_1/ip/bram_32depth_128width/sim/bram_32depth_128width.v" \


vlog -work xil_defaultlib \
"glbl.v"

