# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Project\xk265\vhes\vhes.vitis\vhes_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Project\xk265\vhes\vhes.vitis\vhes_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vhes_wrapper}\
-hw {E:\Project\xk265\vhes\vhes_wrapper.xsa}\
-out {E:/Project/xk265/vhes/vhes.vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {vhes_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {E:/Project/xk265/vhes/vhes_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
platform generate -domains 
platform clean
platform generate
bsp reload
domain active {zynq_fsbl}
bsp reload
platform clean
platform generate
platform clean
platform generate
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate -domains 
