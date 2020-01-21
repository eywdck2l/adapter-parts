# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "KEY_SIZE" -widget comboBox
  ipgui::add_param $IPINST -name "WORKER_COUNT"
  ipgui::add_param $IPINST -name "TWEAK_WIDTH"
  ipgui::add_param $IPINST -name "DATA_UNIT_SIZE"

}

proc update_PARAM_VALUE.DATA_UNIT_SIZE { PARAM_VALUE.DATA_UNIT_SIZE } {
	# Procedure called to update DATA_UNIT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_UNIT_SIZE { PARAM_VALUE.DATA_UNIT_SIZE } {
	# Procedure called to validate DATA_UNIT_SIZE
	return true
}

proc update_PARAM_VALUE.KEY_SIZE { PARAM_VALUE.KEY_SIZE } {
	# Procedure called to update KEY_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY_SIZE { PARAM_VALUE.KEY_SIZE } {
	# Procedure called to validate KEY_SIZE
	return true
}

proc update_PARAM_VALUE.TWEAK_WIDTH { PARAM_VALUE.TWEAK_WIDTH } {
	# Procedure called to update TWEAK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TWEAK_WIDTH { PARAM_VALUE.TWEAK_WIDTH } {
	# Procedure called to validate TWEAK_WIDTH
	return true
}

proc update_PARAM_VALUE.WORKER_COUNT { PARAM_VALUE.WORKER_COUNT } {
	# Procedure called to update WORKER_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WORKER_COUNT { PARAM_VALUE.WORKER_COUNT } {
	# Procedure called to validate WORKER_COUNT
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.KEY_SIZE { MODELPARAM_VALUE.KEY_SIZE PARAM_VALUE.KEY_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY_SIZE}] ${MODELPARAM_VALUE.KEY_SIZE}
}

proc update_MODELPARAM_VALUE.WORKER_COUNT { MODELPARAM_VALUE.WORKER_COUNT PARAM_VALUE.WORKER_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WORKER_COUNT}] ${MODELPARAM_VALUE.WORKER_COUNT}
}

proc update_MODELPARAM_VALUE.TWEAK_WIDTH { MODELPARAM_VALUE.TWEAK_WIDTH PARAM_VALUE.TWEAK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TWEAK_WIDTH}] ${MODELPARAM_VALUE.TWEAK_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_UNIT_SIZE { MODELPARAM_VALUE.DATA_UNIT_SIZE PARAM_VALUE.DATA_UNIT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_UNIT_SIZE}] ${MODELPARAM_VALUE.DATA_UNIT_SIZE}
}

