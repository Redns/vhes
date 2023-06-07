onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+bram_sp_1024depth_32width -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_5 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bram_sp_1024depth_32width xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {bram_sp_1024depth_32width.udo}

run -all

endsim

quit -force
