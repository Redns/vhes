# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "S0_INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S1_WRITE_VPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S2_WRITE_SPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S3_WRITE_PPS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S4_WRITE_IDR_HEADER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S5_WRITE_IDR_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S6_WRITE_TRAIL_HEADER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S7_WRITE_TRAIL_DATA" -parent ${Page_0}


}

proc update_PARAM_VALUE.S0_INIT { PARAM_VALUE.S0_INIT } {
	# Procedure called to update S0_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S0_INIT { PARAM_VALUE.S0_INIT } {
	# Procedure called to validate S0_INIT
	return true
}

proc update_PARAM_VALUE.S1_WRITE_VPS { PARAM_VALUE.S1_WRITE_VPS } {
	# Procedure called to update S1_WRITE_VPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S1_WRITE_VPS { PARAM_VALUE.S1_WRITE_VPS } {
	# Procedure called to validate S1_WRITE_VPS
	return true
}

proc update_PARAM_VALUE.S2_WRITE_SPS { PARAM_VALUE.S2_WRITE_SPS } {
	# Procedure called to update S2_WRITE_SPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S2_WRITE_SPS { PARAM_VALUE.S2_WRITE_SPS } {
	# Procedure called to validate S2_WRITE_SPS
	return true
}

proc update_PARAM_VALUE.S3_WRITE_PPS { PARAM_VALUE.S3_WRITE_PPS } {
	# Procedure called to update S3_WRITE_PPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S3_WRITE_PPS { PARAM_VALUE.S3_WRITE_PPS } {
	# Procedure called to validate S3_WRITE_PPS
	return true
}

proc update_PARAM_VALUE.S4_WRITE_IDR_HEADER { PARAM_VALUE.S4_WRITE_IDR_HEADER } {
	# Procedure called to update S4_WRITE_IDR_HEADER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S4_WRITE_IDR_HEADER { PARAM_VALUE.S4_WRITE_IDR_HEADER } {
	# Procedure called to validate S4_WRITE_IDR_HEADER
	return true
}

proc update_PARAM_VALUE.S5_WRITE_IDR_DATA { PARAM_VALUE.S5_WRITE_IDR_DATA } {
	# Procedure called to update S5_WRITE_IDR_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S5_WRITE_IDR_DATA { PARAM_VALUE.S5_WRITE_IDR_DATA } {
	# Procedure called to validate S5_WRITE_IDR_DATA
	return true
}

proc update_PARAM_VALUE.S6_WRITE_TRAIL_HEADER { PARAM_VALUE.S6_WRITE_TRAIL_HEADER } {
	# Procedure called to update S6_WRITE_TRAIL_HEADER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S6_WRITE_TRAIL_HEADER { PARAM_VALUE.S6_WRITE_TRAIL_HEADER } {
	# Procedure called to validate S6_WRITE_TRAIL_HEADER
	return true
}

proc update_PARAM_VALUE.S7_WRITE_TRAIL_DATA { PARAM_VALUE.S7_WRITE_TRAIL_DATA } {
	# Procedure called to update S7_WRITE_TRAIL_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S7_WRITE_TRAIL_DATA { PARAM_VALUE.S7_WRITE_TRAIL_DATA } {
	# Procedure called to validate S7_WRITE_TRAIL_DATA
	return true
}


proc update_MODELPARAM_VALUE.S0_INIT { MODELPARAM_VALUE.S0_INIT PARAM_VALUE.S0_INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S0_INIT}] ${MODELPARAM_VALUE.S0_INIT}
}

proc update_MODELPARAM_VALUE.S1_WRITE_VPS { MODELPARAM_VALUE.S1_WRITE_VPS PARAM_VALUE.S1_WRITE_VPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S1_WRITE_VPS}] ${MODELPARAM_VALUE.S1_WRITE_VPS}
}

proc update_MODELPARAM_VALUE.S2_WRITE_SPS { MODELPARAM_VALUE.S2_WRITE_SPS PARAM_VALUE.S2_WRITE_SPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S2_WRITE_SPS}] ${MODELPARAM_VALUE.S2_WRITE_SPS}
}

proc update_MODELPARAM_VALUE.S3_WRITE_PPS { MODELPARAM_VALUE.S3_WRITE_PPS PARAM_VALUE.S3_WRITE_PPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S3_WRITE_PPS}] ${MODELPARAM_VALUE.S3_WRITE_PPS}
}

proc update_MODELPARAM_VALUE.S4_WRITE_IDR_HEADER { MODELPARAM_VALUE.S4_WRITE_IDR_HEADER PARAM_VALUE.S4_WRITE_IDR_HEADER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S4_WRITE_IDR_HEADER}] ${MODELPARAM_VALUE.S4_WRITE_IDR_HEADER}
}

proc update_MODELPARAM_VALUE.S5_WRITE_IDR_DATA { MODELPARAM_VALUE.S5_WRITE_IDR_DATA PARAM_VALUE.S5_WRITE_IDR_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S5_WRITE_IDR_DATA}] ${MODELPARAM_VALUE.S5_WRITE_IDR_DATA}
}

proc update_MODELPARAM_VALUE.S6_WRITE_TRAIL_HEADER { MODELPARAM_VALUE.S6_WRITE_TRAIL_HEADER PARAM_VALUE.S6_WRITE_TRAIL_HEADER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S6_WRITE_TRAIL_HEADER}] ${MODELPARAM_VALUE.S6_WRITE_TRAIL_HEADER}
}

proc update_MODELPARAM_VALUE.S7_WRITE_TRAIL_DATA { MODELPARAM_VALUE.S7_WRITE_TRAIL_DATA PARAM_VALUE.S7_WRITE_TRAIL_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S7_WRITE_TRAIL_DATA}] ${MODELPARAM_VALUE.S7_WRITE_TRAIL_DATA}
}

