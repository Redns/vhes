# SiI9011 输出行场/像素信号引脚绑定
set_property PACKAGE_PIN AD23 [get_ports pclk_i]
set_property PACKAGE_PIN AF24 [get_ports de_i]
set_property PACKAGE_PIN AE21 [get_ports hsync_i]
set_property PACKAGE_PIN AD21 [get_ports vsync_i]
set_property PACKAGE_PIN AF23 [get_ports {rgb_i[0]}]
set_property PACKAGE_PIN AE23 [get_ports {rgb_i[1]}]
set_property PACKAGE_PIN AD24 [get_ports {rgb_i[2]}]
set_property PACKAGE_PIN AC24 [get_ports {rgb_i[3]}]
set_property PACKAGE_PIN AA24 [get_ports {rgb_i[4]}]
set_property PACKAGE_PIN AB24 [get_ports {rgb_i[5]}]
set_property PACKAGE_PIN Y22 [get_ports {rgb_i[6]}]
set_property PACKAGE_PIN Y23 [get_ports {rgb_i[7]}]
set_property PACKAGE_PIN AA22 [get_ports {rgb_i[8]}]
set_property PACKAGE_PIN AA23 [get_ports {rgb_i[9]}]
set_property PACKAGE_PIN AJ24 [get_ports {rgb_i[10]}]
set_property PACKAGE_PIN AJ23 [get_ports {rgb_i[11]}]
set_property PACKAGE_PIN AJ21 [get_ports {rgb_i[12]}]
set_property PACKAGE_PIN AK21 [get_ports {rgb_i[13]}]
set_property PACKAGE_PIN AK23 [get_ports {rgb_i[14]}]
set_property PACKAGE_PIN AK22 [get_ports {rgb_i[15]}]
set_property PACKAGE_PIN AH24 [get_ports {rgb_i[16]}]
set_property PACKAGE_PIN AH23 [get_ports {rgb_i[17]}]
set_property PACKAGE_PIN AJ20 [get_ports {rgb_i[18]}]
set_property PACKAGE_PIN AK20 [get_ports {rgb_i[19]}]
set_property PACKAGE_PIN AH21 [get_ports {rgb_i[20]}]
set_property PACKAGE_PIN AG21 [get_ports {rgb_i[21]}]
set_property PACKAGE_PIN AG20 [get_ports {rgb_i[22]}]
set_property PACKAGE_PIN AF20 [get_ports {rgb_i[23]}]
set_property PACKAGE_PIN AB21 [get_ports {sii_rst_n_o[0]}]
set_property PACKAGE_PIN AC23 [get_ports sii_scl_io]
set_property PACKAGE_PIN AC22 [get_ports sii_sda_io]

# SiI9011 IIC 配置接口
set_property PULLUP true [get_ports sii_sda_io]
set_property PULLUP true [get_ports sii_scl_io]

# 输出标志位
set_property PACKAGE_PIN AJ16 [get_ports mig_init_complete_o]
set_property PACKAGE_PIN AK16 [get_ports sys_init_done_o]
set_property PACKAGE_PIN AE16 [get_ports bs_overflow_o]
set_property PACKAGE_PIN AE15 [get_ports skip_frame_flag_o]

# DDR DCI 设置
set_property DCI_CASCADE {33} [get_iobanks 34]

# SiI9011 输出行场/像素信号引脚电平约束
set_property IOSTANDARD LVCMOS33 [get_ports pclk_i]
set_property IOSTANDARD LVCMOS33 [get_ports de_i]
set_property IOSTANDARD LVCMOS33 [get_ports hsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports vsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_i[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports sii_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports {sii_rst_n_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports sii_sda_io]

# 输出标志位引脚电平约束
set_property IOSTANDARD LVCMOS33 [get_ports mig_init_complete_o]
set_property IOSTANDARD LVCMOS33 [get_ports sys_init_done_o]
set_property IOSTANDARD LVCMOS33 [get_ports bs_overflow_o]
set_property IOSTANDARD LVCMOS33 [get_ports skip_frame_flag_o]

# 输入像素时钟约束
create_clock -period 6.734 -name pclk_i -waveform {0.000 3.367} [get_ports pclk_i]
set_input_delay -clock [get_clocks pclk_i] -min -add_delay 1.010 [get_ports {rgb_i[*]}]
set_input_delay -clock [get_clocks pclk_i] -max -add_delay 2.500 [get_ports {rgb_i[*]}]
set_input_delay -clock [get_clocks pclk_i] -min -add_delay 1.010 [get_ports de_i]
set_input_delay -clock [get_clocks pclk_i] -max -add_delay 2.500 [get_ports de_i]
set_input_delay -clock [get_clocks pclk_i] -min -add_delay 1.010 [get_ports hsync_i]
set_input_delay -clock [get_clocks pclk_i] -max -add_delay 2.500 [get_ports hsync_i]
set_input_delay -clock [get_clocks pclk_i] -min -add_delay 1.010 [get_ports vsync_i]
set_input_delay -clock [get_clocks pclk_i] -max -add_delay 2.500 [get_ports vsync_i]

# 设置异步时钟
# set_clock_groups -asynchronous -group [get_clocks pclk_i] -group [get_clocks clk_200M_p_i]
# set_clock_groups -asynchronous -group [get_clocks pclk_i] -group [get_clocks clk_fpga_0]
# set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_pll_i]

set_false_path -from [get_pins {vhes_core_top/software_control_reset/peripheral_rst_n_o_reg[1]/C}] -to [get_pins {vhes_core_top/enc_core_top/u_enc_core/u_prei_top_buf/u_prei_top/hevc_md_top1/md_top1/compare1/mode6_reg64_reg[0]/CLR}]
