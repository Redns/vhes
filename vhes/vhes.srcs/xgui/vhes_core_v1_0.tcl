# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  set FRAME_WIDTH [ipgui::add_param $IPINST -name "FRAME_WIDTH"]
  set_property tooltip {输入帧宽度（单位：像素）} ${FRAME_WIDTH}
  set FRAME_HEIGHT [ipgui::add_param $IPINST -name "FRAME_HEIGHT"]
  set_property tooltip {输入帧高度（单位：像素）} ${FRAME_HEIGHT}
  set GOP_LENGTH [ipgui::add_param $IPINST -name "GOP_LENGTH"]
  set_property tooltip {输出视频流 GOP} ${GOP_LENGTH}
  set ENABLE_IINP [ipgui::add_param $IPINST -name "ENABLE_IINP"]
  set_property tooltip {是否使能 IinP} ${ENABLE_IINP}
  set INITIAL_QP [ipgui::add_param $IPINST -name "INITIAL_QP"]
  set_property tooltip {初始量化参数} ${INITIAL_QP}
  set ENABLE_SAO [ipgui::add_param $IPINST -name "ENABLE_SAO"]
  set_property tooltip {使能边缘补偿} ${ENABLE_SAO}
  set ENABLE_DB [ipgui::add_param $IPINST -name "ENABLE_DB"]
  set_property tooltip {使能解块滤波} ${ENABLE_DB}
  ipgui::add_param $IPINST -name "POSI4x4BIT"

}

proc update_PARAM_VALUE.ENABLE_DB { PARAM_VALUE.ENABLE_DB } {
	# Procedure called to update ENABLE_DB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_DB { PARAM_VALUE.ENABLE_DB } {
	# Procedure called to validate ENABLE_DB
	return true
}

proc update_PARAM_VALUE.ENABLE_IINP { PARAM_VALUE.ENABLE_IINP } {
	# Procedure called to update ENABLE_IINP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_IINP { PARAM_VALUE.ENABLE_IINP } {
	# Procedure called to validate ENABLE_IINP
	return true
}

proc update_PARAM_VALUE.ENABLE_SAO { PARAM_VALUE.ENABLE_SAO } {
	# Procedure called to update ENABLE_SAO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_SAO { PARAM_VALUE.ENABLE_SAO } {
	# Procedure called to validate ENABLE_SAO
	return true
}

proc update_PARAM_VALUE.FRAME_HEIGHT { PARAM_VALUE.FRAME_HEIGHT } {
	# Procedure called to update FRAME_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_HEIGHT { PARAM_VALUE.FRAME_HEIGHT } {
	# Procedure called to validate FRAME_HEIGHT
	return true
}

proc update_PARAM_VALUE.FRAME_WIDTH { PARAM_VALUE.FRAME_WIDTH } {
	# Procedure called to update FRAME_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_WIDTH { PARAM_VALUE.FRAME_WIDTH } {
	# Procedure called to validate FRAME_WIDTH
	return true
}

proc update_PARAM_VALUE.GOP_LENGTH { PARAM_VALUE.GOP_LENGTH } {
	# Procedure called to update GOP_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GOP_LENGTH { PARAM_VALUE.GOP_LENGTH } {
	# Procedure called to validate GOP_LENGTH
	return true
}

proc update_PARAM_VALUE.INITIAL_QP { PARAM_VALUE.INITIAL_QP } {
	# Procedure called to update INITIAL_QP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INITIAL_QP { PARAM_VALUE.INITIAL_QP } {
	# Procedure called to validate INITIAL_QP
	return true
}

proc update_PARAM_VALUE.POSI4x4BIT { PARAM_VALUE.POSI4x4BIT } {
	# Procedure called to update POSI4x4BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POSI4x4BIT { PARAM_VALUE.POSI4x4BIT } {
	# Procedure called to validate POSI4x4BIT
	return true
}


proc update_MODELPARAM_VALUE.FRAME_WIDTH { MODELPARAM_VALUE.FRAME_WIDTH PARAM_VALUE.FRAME_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_WIDTH}] ${MODELPARAM_VALUE.FRAME_WIDTH}
}

proc update_MODELPARAM_VALUE.FRAME_HEIGHT { MODELPARAM_VALUE.FRAME_HEIGHT PARAM_VALUE.FRAME_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_HEIGHT}] ${MODELPARAM_VALUE.FRAME_HEIGHT}
}

proc update_MODELPARAM_VALUE.INITIAL_QP { MODELPARAM_VALUE.INITIAL_QP PARAM_VALUE.INITIAL_QP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INITIAL_QP}] ${MODELPARAM_VALUE.INITIAL_QP}
}

proc update_MODELPARAM_VALUE.GOP_LENGTH { MODELPARAM_VALUE.GOP_LENGTH PARAM_VALUE.GOP_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GOP_LENGTH}] ${MODELPARAM_VALUE.GOP_LENGTH}
}

proc update_MODELPARAM_VALUE.ENABLE_IINP { MODELPARAM_VALUE.ENABLE_IINP PARAM_VALUE.ENABLE_IINP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_IINP}] ${MODELPARAM_VALUE.ENABLE_IINP}
}

proc update_MODELPARAM_VALUE.ENABLE_DB { MODELPARAM_VALUE.ENABLE_DB PARAM_VALUE.ENABLE_DB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_DB}] ${MODELPARAM_VALUE.ENABLE_DB}
}

proc update_MODELPARAM_VALUE.ENABLE_SAO { MODELPARAM_VALUE.ENABLE_SAO PARAM_VALUE.ENABLE_SAO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_SAO}] ${MODELPARAM_VALUE.ENABLE_SAO}
}

proc update_MODELPARAM_VALUE.POSI4x4BIT { MODELPARAM_VALUE.POSI4x4BIT PARAM_VALUE.POSI4x4BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POSI4x4BIT}] ${MODELPARAM_VALUE.POSI4x4BIT}
}

