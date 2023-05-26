create_clock -add -name sysclk -period 10.000  [get_ports {sysclk}]

set_property PACKAGE_PIN C8 [get_ports sysclk]
set_property IOSTANDARD SSTL135 [get_ports sysclk]

set_property PACKAGE_PIN D9 [get_ports init_calib_complete]
set_property IOSTANDARD SSTL135 [get_ports init_calib_complete]


set_property DCI_CASCADE {34} [get_iobanks 33]

set_property BITSTREAM.GENERAL.COMPRESS true [current_design]