vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../vhes.gen/sources_1/ip/pixel_fifo/sim/pixel_fifo.v" \


vlog -work xil_defaultlib \
"glbl.v"

