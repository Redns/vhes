# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Project\vhes\vhes\vhes.vitis\vhes_top\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Project\vhes\vhes\vhes.vitis\vhes_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vhes_top}\
-hw {E:\Project\vhes\vhes\vhes_top.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {E:/Project/vhes/vhes/vhes.vitis}

platform write
platform generate -domains 
bsp reload
bsp setlib -name lwip211 -ver 1.6
bsp write
bsp reload
catch {bsp regenerate}
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp removelib -name lwip211
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp setlib -name lwip211 -ver 1.6
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform clean
platform generate
platform config -updatehw {E:/Project/vhes/vhes/vhes_top.xsa}
platform generate -domains 
platform active {vhes_top}
platform config -updatehw {E:/Project/vhes/vhes/vhes_top.xsa}
platform generate -domains 
platform active {vhes_top}
platform config -updatehw {E:/Project/vhes/vhes/vhes_top.xsa}
platform generate -domains 
