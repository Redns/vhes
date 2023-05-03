onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_25 -L xil_defaultlib -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_6 -L axi_data_fifo_v2_1_24 -L axi_protocol_converter_v2_1_25 -L axi_clock_converter_v2_1_24 -L blk_mem_gen_v8_4_5 -L axi_dwidth_converter_v2_1_25 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.fdma_mig_ddr xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fdma_mig_ddr.udo}

run -all

quit -force
