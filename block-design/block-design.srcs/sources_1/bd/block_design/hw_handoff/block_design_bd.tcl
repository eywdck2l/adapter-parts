
################################################################
# This is a generated script based on design: block_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source block_design_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# axi_stream_constant_generator_wrapper, reset_generator_wrapper, gen_tlast

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7s50csga324-1
   set_property BOARD_PART digilentinc.com:arty-s7-50:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name block_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_block_design_mig_7series_0_1 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>block_design_mig_7series_0_1</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7s50-csga324/-1</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>Single-Ended</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>1</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41K128M16XX-15E</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>3077</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>99.997</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>649</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 3.250</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>16</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>14</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.35V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>268435456</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U2" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="P6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T5" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V2" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T3" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R7" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U7" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V7" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V5" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T1" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U3" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V3" SLEW="FAST" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL135" PADName="T4" SLEW="FAST" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL135" PADName="R5" SLEW="FAST" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T2" SLEW="FAST" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R3" SLEW="FAST" VCCAUX_IO="" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="K4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="M3" SLEW="FAST" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="K2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="N1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="N5" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="M2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="P1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="M1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="P2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="K3" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="L4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="M6" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="K6" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="M4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="L5" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="L6" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="N4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="SSTL135" PADName="R1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="DIFF_SSTL135" PADName="L1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="DIFF_SSTL135" PADName="N2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="DIFF_SSTL135" PADName="K1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_50" IOSTANDARD="DIFF_SSTL135" PADName="N3" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="P5" SLEW="FAST" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U1" SLEW="FAST" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="J6" SLEW="FAST" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="P7" SLEW="FAST" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Clock>}
   puts $mig_prj_file {      <Pin Bank="34" PADName="R2(MRCC_P)" name="sys_clk_i"/>}
   puts $mig_prj_file {    </System_Clock>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="15" PADName="C18" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="15" PADName="J15" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="15" PADName="G17" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5.625" tfaw="45" tras="36" trcd="13.5" trefi="7.8" trfc="160" trp="13.5" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">5</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/6</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/6</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>28</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>1</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_block_design_mig_7series_0_1()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: sd_card_wrapper
proc create_hier_cell_sd_card_wrapper { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_sd_card_wrapper() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis


  # Create pins
  create_bd_pin -dir I -type rst resetn
  create_bd_pin -dir I -type clk s_axis_aclk
  create_bd_pin -dir I sd_device_if_clk
  create_bd_pin -dir IO sd_device_if_cmd
  create_bd_pin -dir IO -from 3 -to 0 sd_device_if_dat
  create_bd_pin -dir O sd_device_if_dat3_pullup
  create_bd_pin -dir O -type intr sd_device_interrupt_out

  # Create instance: sd_card, and set properties
  set sd_card [ create_bd_cell -type ip -vlnv user.org:user:axi_sd_card:1.0 sd_card ]

  # Create instance: sd_card_fifo_in, and set properties
  set sd_card_fifo_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 sd_card_fifo_in ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.FIFO_MODE {2} \
 ] $sd_card_fifo_in

  # Create instance: sd_card_fifo_out, and set properties
  set sd_card_fifo_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 sd_card_fifo_out ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {2048} \
   CONFIG.FIFO_MODE {2} \
   CONFIG.HAS_PROG_FULL {1} \
   CONFIG.PROG_FULL_THRESH {1025} \
 ] $sd_card_fifo_out

  # Create instance: sd_card_in_gen_tlast, and set properties
  set block_name gen_tlast
  set block_cell_name sd_card_in_gen_tlast
  if { [catch {set sd_card_in_gen_tlast [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sd_card_in_gen_tlast eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sd_card_out_drop_tlast, and set properties
  set sd_card_out_drop_tlast [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 sd_card_out_drop_tlast ]
  set_property -dict [ list \
   CONFIG.M_HAS_TLAST {0} \
   CONFIG.S_HAS_TLAST {1} \
 ] $sd_card_out_drop_tlast

  # Create interface connections
  connect_bd_intf_net -intf_net axi_sd_card_0_data_out [get_bd_intf_pins sd_card/data_out] [get_bd_intf_pins sd_card_fifo_out/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins sd_card/data_in] [get_bd_intf_pins sd_card_fifo_in/M_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M02_AXIS [get_bd_intf_pins s_axis] [get_bd_intf_pins sd_card_in_gen_tlast/s_axis]
  connect_bd_intf_net -intf_net gen_tlast_0_m_axis [get_bd_intf_pins sd_card_fifo_in/S_AXIS] [get_bd_intf_pins sd_card_in_gen_tlast/m_axis]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins sd_card/S_AXI]
  connect_bd_intf_net -intf_net sd_card_out_pass_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins sd_card_out_drop_tlast/M_AXIS]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins sd_device_if_cmd] [get_bd_pins sd_card/sd_cmd]
  connect_bd_net -net Net1 [get_bd_pins sd_device_if_dat] [get_bd_pins sd_card/sd_dat]
  connect_bd_net -net axi_sd_0_interrupt [get_bd_pins sd_device_interrupt_out] [get_bd_pins sd_card/interrupt]
  connect_bd_net -net axi_sd_card_0_fifo_in_resetn [get_bd_pins sd_card/fifo_in_resetn] [get_bd_pins sd_card_fifo_in/s_axis_aresetn] [get_bd_pins sd_card_in_gen_tlast/aresetn]
  connect_bd_net -net axi_sd_card_0_fifo_out_resetn [get_bd_pins sd_card/fifo_out_resetn] [get_bd_pins sd_card_fifo_out/s_axis_aresetn] [get_bd_pins sd_card_out_drop_tlast/aresetn]
  connect_bd_net -net axi_sd_card_0_fifo_out_tready_masked [get_bd_pins sd_card/fifo_out_tready_masked] [get_bd_pins sd_card_fifo_out/m_axis_tready]
  connect_bd_net -net axi_sd_card_0_sd_dat3_pullup [get_bd_pins sd_device_if_dat3_pullup] [get_bd_pins sd_card/sd_dat3_pullup]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins s_axis_aclk] [get_bd_pins sd_card/clk] [get_bd_pins sd_card_fifo_in/s_axis_aclk] [get_bd_pins sd_card_fifo_out/s_axis_aclk] [get_bd_pins sd_card_in_gen_tlast/aclk] [get_bd_pins sd_card_out_drop_tlast/aclk]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins resetn] [get_bd_pins sd_card/resetn]
  connect_bd_net -net sd_card_fifo_out_m_axis_tdata [get_bd_pins sd_card_fifo_out/m_axis_tdata] [get_bd_pins sd_card_out_drop_tlast/s_axis_tdata]
  connect_bd_net -net sd_card_fifo_out_m_axis_tlast [get_bd_pins sd_card_fifo_out/m_axis_tlast] [get_bd_pins sd_card_out_drop_tlast/s_axis_tlast]
  connect_bd_net -net sd_card_fifo_out_m_axis_tvalid [get_bd_pins sd_card/fifo_out_tvalid_in] [get_bd_pins sd_card_fifo_out/m_axis_tvalid]
  connect_bd_net -net sd_card_fifo_out_prog_full [get_bd_pins sd_card/fifo_out_almostfull] [get_bd_pins sd_card_fifo_out/prog_full]
  connect_bd_net -net sd_card_fifo_out_tvalid_masked [get_bd_pins sd_card/fifo_out_tvalid_masked] [get_bd_pins sd_card_out_drop_tlast/s_axis_tvalid]
  connect_bd_net -net sd_card_out_pass_s_axis_tready [get_bd_pins sd_card/fifo_out_tready_in] [get_bd_pins sd_card_out_drop_tlast/s_axis_tready]
  connect_bd_net -net sd_device_if_clk_1 [get_bd_pins sd_device_if_clk] [get_bd_pins sd_card/sd_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: encrypt_wrapper
proc create_hier_cell_encrypt_wrapper { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_encrypt_wrapper() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS


  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type rst resetn

  # Create instance: encrypt, and set properties
  set encrypt [ create_bd_cell -type ip -vlnv user.org:user:xts_aes:1.0 encrypt ]
  set_property -dict [ list \
   CONFIG.KEY_SIZE {512} \
   CONFIG.TWEAK_WIDTH {32} \
 ] $encrypt

  # Create instance: encrypt_in_width_converter, and set properties
  set encrypt_in_width_converter [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 encrypt_in_width_converter ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {16} \
 ] $encrypt_in_width_converter

  # Create instance: encrypt_out_fifo, and set properties
  set encrypt_out_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 encrypt_out_fifo ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {64} \
   CONFIG.HAS_PROG_FULL {1} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.PROG_FULL_THRESH {32} \
 ] $encrypt_out_fifo

  # Create instance: encrypt_out_width_converter, and set properties
  set encrypt_out_width_converter [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 encrypt_out_width_converter ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {1} \
 ] $encrypt_out_width_converter

  # Create interface connections
  connect_bd_intf_net -intf_net axis_dwidth_converter_0_M_AXIS [get_bd_intf_pins encrypt/data_in] [get_bd_intf_pins encrypt_in_width_converter/M_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M01_AXIS [get_bd_intf_pins S_AXIS] [get_bd_intf_pins encrypt_in_width_converter/S_AXIS]
  connect_bd_intf_net -intf_net encrypt_data_out [get_bd_intf_pins encrypt/data_out] [get_bd_intf_pins encrypt_out_fifo/S_AXIS]
  connect_bd_intf_net -intf_net encrypt_out_fifo_M_AXIS [get_bd_intf_pins encrypt_out_fifo/M_AXIS] [get_bd_intf_pins encrypt_out_width_converter/S_AXIS]
  connect_bd_intf_net -intf_net encrypt_out_width_converter_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins encrypt_out_width_converter/M_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins encrypt/S_AXI]

  # Create port connections
  connect_bd_net -net encrypt_fifo_out_resetn [get_bd_pins encrypt/fifo_out_resetn] [get_bd_pins encrypt_in_width_converter/aresetn] [get_bd_pins encrypt_out_fifo/s_axis_aresetn] [get_bd_pins encrypt_out_width_converter/aresetn]
  connect_bd_net -net encrypt_out_fifo_prog_full [get_bd_pins encrypt/fifo_out_almostfull] [get_bd_pins encrypt_out_fifo/prog_full]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins clk] [get_bd_pins encrypt/clk] [get_bd_pins encrypt_in_width_converter/aclk] [get_bd_pins encrypt_out_fifo/s_axis_aclk] [get_bd_pins encrypt_out_width_converter/aclk]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins resetn] [get_bd_pins encrypt/resetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr3_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram ]

  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set ddr_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 ddr_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $ddr_clock
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sd_device_if_clk [ create_bd_port -dir I -type data sd_device_if_clk ]
  set sd_device_if_cmd [ create_bd_port -dir IO -type data sd_device_if_cmd ]
  set sd_device_if_dat [ create_bd_port -dir IO -from 3 -to 0 -type data sd_device_if_dat ]
  set sd_device_if_dat3_pullup [ create_bd_port -dir O sd_device_if_dat3_pullup ]
  set sd_device_if_gnd [ create_bd_port -dir O -from 0 -to 0 sd_device_if_gnd ]
  set sd_device_interrupt_led [ create_bd_port -dir O sd_device_interrupt_led ]
  set sd_device_interrupt_out [ create_bd_port -dir O sd_device_interrupt_out ]
  set sd_host_if_clk [ create_bd_port -dir O -type data sd_host_if_clk ]
  set sd_host_if_cmd [ create_bd_port -dir IO -type data sd_host_if_cmd ]
  set sd_host_if_dat [ create_bd_port -dir IO -from 3 -to 0 -type data sd_host_if_dat ]
  set sd_host_if_gnd [ create_bd_port -dir O -from 1 -to 0 sd_host_if_gnd ]
  set sd_host_interrupt_led [ create_bd_port -dir O sd_host_interrupt_led ]
  set sd_host_interrupt_out [ create_bd_port -dir O sd_host_interrupt_out ]

  # Create instance: const_gen, and set properties
  set block_name axi_stream_constant_generator_wrapper
  set block_cell_name const_gen
  if { [catch {set const_gen [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $const_gen eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cpu_in_data_width_converter_0, and set properties
  set cpu_in_data_width_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 cpu_in_data_width_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {4} \
 ] $cpu_in_data_width_converter_0

  # Create instance: cpu_in_data_width_converter_1, and set properties
  set cpu_in_data_width_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 cpu_in_data_width_converter_1 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {4} \
 ] $cpu_in_data_width_converter_1

  # Create instance: cpu_out_data_width_converter_0, and set properties
  set cpu_out_data_width_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 cpu_out_data_width_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {1} \
 ] $cpu_out_data_width_converter_0

  # Create instance: cpu_out_data_width_converter_1, and set properties
  set cpu_out_data_width_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 cpu_out_data_width_converter_1 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {1} \
 ] $cpu_out_data_width_converter_1

  # Create instance: dram_controller, and set properties
  set dram_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 dram_controller ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $dram_controller ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_block_design_mig_7series_0_1 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $dram_controller

  # Create instance: encrypt_wrapper
  create_hier_cell_encrypt_wrapper [current_bd_instance .] encrypt_wrapper

  # Create instance: mdm_0, and set properties
  set mdm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_0 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {0} \
   CONFIG.C_AREA_OPTIMIZED {1} \
   CONFIG.C_CACHE_BYTE_SIZE {4096} \
   CONFIG.C_DCACHE_ADDR_TAG {0} \
   CONFIG.C_DCACHE_ALWAYS_USED {1} \
   CONFIG.C_DCACHE_BYTE_SIZE {4096} \
   CONFIG.C_DEBUG_ENABLED {2} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_ENABLE_DISCRETE_PORTS {1} \
   CONFIG.C_FSL_LINKS {2} \
   CONFIG.C_ICACHE_ALWAYS_USED {1} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {2} \
   CONFIG.C_MMU_ITLB_SIZE {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_EXTENDED_FSL_INSTR {1} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_INTERRUPT {2} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.C_USE_REORDER_INSTR {0} \
   CONFIG.G_TEMPLATE_LIST {8} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {11} \
   CONFIG.NUM_SI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $microblaze_0_xlconcat

  # Create instance: reset_generator_wrap_0, and set properties
  set block_name reset_generator_wrapper
  set block_cell_name reset_generator_wrap_0
  if { [catch {set reset_generator_wrap_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reset_generator_wrap_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_dram_controller_81M, and set properties
  set rst_dram_controller_81M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_dram_controller_81M ]

  # Create instance: sd_card_data_switch, and set properties
  set sd_card_data_switch [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 sd_card_data_switch ]
  set_property -dict [ list \
   CONFIG.DECODER_REG {1} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.M00_S00_CONNECTIVITY {0} \
   CONFIG.M00_S02_CONNECTIVITY {0} \
   CONFIG.M01_S01_CONNECTIVITY {0} \
   CONFIG.M02_S00_CONNECTIVITY {0} \
   CONFIG.M02_S02_CONNECTIVITY {0} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {3} \
   CONFIG.ROUTING_MODE {1} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
 ] $sd_card_data_switch

  # Create instance: sd_card_wrapper
  create_hier_cell_sd_card_wrapper [current_bd_instance .] sd_card_wrapper

  # Create instance: sd_host, and set properties
  set sd_host [ create_bd_cell -type ip -vlnv user.org:user:axi_sd_host:1.0 sd_host ]

  # Create instance: sd_host_data_switch, and set properties
  set sd_host_data_switch [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 sd_host_data_switch ]
  set_property -dict [ list \
   CONFIG.DECODER_REG {1} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.M00_S00_CONNECTIVITY {0} \
   CONFIG.M00_S04_CONNECTIVITY {0} \
   CONFIG.M01_S01_CONNECTIVITY {0} \
   CONFIG.M02_S02_CONNECTIVITY {0} \
   CONFIG.M03_S03_CONNECTIVITY {0} \
   CONFIG.M03_S04_CONNECTIVITY {1} \
   CONFIG.NUM_MI {4} \
   CONFIG.NUM_SI {5} \
   CONFIG.ROUTING_MODE {1} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
 ] $sd_host_data_switch

  # Create instance: timer, and set properties
  set timer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 timer ]
  set_property -dict [ list \
   CONFIG.enable_timer2 {1} \
 ] $timer

  # Create instance: uart, and set properties
  set uart [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 uart ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $uart

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_1

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {2} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_stream_constant_0_data_out [get_bd_intf_pins const_gen/data_out] [get_bd_intf_pins sd_host_data_switch/S04_AXIS]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins uart/UART]
  connect_bd_intf_net -intf_net axis_switch_0_M00_AXIS [get_bd_intf_pins sd_card_data_switch/M00_AXIS] [get_bd_intf_pins sd_host_data_switch/S02_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axis_switch_0_M00_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M01_AXIS [get_bd_intf_pins encrypt_wrapper/S_AXIS] [get_bd_intf_pins sd_host_data_switch/M01_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M01_AXIS1 [get_bd_intf_pins sd_card_data_switch/M01_AXIS] [get_bd_intf_pins sd_card_wrapper/s_axis]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axis_switch_0_M01_AXIS1]
  connect_bd_intf_net -intf_net axis_switch_0_M02_AXIS [get_bd_intf_pins cpu_in_data_width_converter_0/S_AXIS] [get_bd_intf_pins sd_card_data_switch/M02_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M03_AXIS [get_bd_intf_pins sd_host/data_in] [get_bd_intf_pins sd_host_data_switch/M03_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets axis_switch_0_M03_AXIS]
  connect_bd_intf_net -intf_net cpu_in_data_width_converter_1_M_AXIS [get_bd_intf_pins cpu_in_data_width_converter_1/M_AXIS] [get_bd_intf_pins microblaze_0/S1_AXIS]
  connect_bd_intf_net -intf_net cpu_in_data_width_converter_M_AXIS [get_bd_intf_pins cpu_in_data_width_converter_0/M_AXIS] [get_bd_intf_pins microblaze_0/S0_AXIS]
  connect_bd_intf_net -intf_net cpu_out_data_width_converter_1_M_AXIS [get_bd_intf_pins cpu_out_data_width_converter_1/M_AXIS] [get_bd_intf_pins sd_host_data_switch/S00_AXIS]
  connect_bd_intf_net -intf_net cpu_out_data_width_converter_M_AXIS [get_bd_intf_pins cpu_out_data_width_converter_0/M_AXIS] [get_bd_intf_pins sd_card_data_switch/S02_AXIS]
  connect_bd_intf_net -intf_net dram_controller_DDR3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins dram_controller/DDR3]
  connect_bd_intf_net -intf_net encrypt_out_width_converter_M_AXIS [get_bd_intf_pins encrypt_wrapper/M_AXIS] [get_bd_intf_pins sd_host_data_switch/S01_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_M0_AXIS [get_bd_intf_pins cpu_out_data_width_converter_0/S_AXIS] [get_bd_intf_pins microblaze_0/M0_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_M1_AXIS [get_bd_intf_pins cpu_out_data_width_converter_1/S_AXIS] [get_bd_intf_pins microblaze_0/M1_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI] [get_bd_intf_pins timer/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI] [get_bd_intf_pins uart/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI] [get_bd_intf_pins sd_host_data_switch/S_AXI_CTRL]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins encrypt_wrapper/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI] [get_bd_intf_pins sd_card_wrapper/S_AXI]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets microblaze_0_axi_periph_M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI] [get_bd_intf_pins sd_host/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins const_gen/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins dram_controller/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI] [get_bd_intf_pins reset_generator_wrap_0/s_axi]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI] [get_bd_intf_pins sd_card_data_switch/S_AXI_CTRL]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_0/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net sd_card_wrapper_M_AXIS [get_bd_intf_pins sd_card_data_switch/S01_AXIS] [get_bd_intf_pins sd_card_wrapper/M_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets sd_card_wrapper_M_AXIS]
  connect_bd_intf_net -intf_net sd_host_axis_switch_M02_AXIS [get_bd_intf_pins sd_card_data_switch/S00_AXIS] [get_bd_intf_pins sd_host_data_switch/M02_AXIS]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets sd_host_axis_switch_M02_AXIS]
  connect_bd_intf_net -intf_net sd_host_data_out [get_bd_intf_pins sd_host/data_out] [get_bd_intf_pins sd_host_data_switch/S03_AXIS]
  connect_bd_intf_net -intf_net sd_host_data_switch_M00_AXIS [get_bd_intf_pins cpu_in_data_width_converter_1/S_AXIS] [get_bd_intf_pins sd_host_data_switch/M00_AXIS]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports sd_device_if_cmd] [get_bd_pins sd_card_wrapper/sd_device_if_cmd]
  connect_bd_net -net Net1 [get_bd_ports sd_device_if_dat] [get_bd_pins sd_card_wrapper/sd_device_if_dat]
  connect_bd_net -net Net2 [get_bd_ports sd_host_if_cmd] [get_bd_pins sd_host/sd_cmd]
  connect_bd_net -net Net3 [get_bd_ports sd_host_if_dat] [get_bd_pins sd_host/sd_dat]
  connect_bd_net -net Net4 [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_dram_controller_81M/mb_reset]
  connect_bd_net -net Net5 [get_bd_pins microblaze_0/Interrupt] [get_bd_pins microblaze_0_axi_intc/irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net SYS_Rst_1 [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_dram_controller_81M/bus_struct_reset]
  connect_bd_net -net axi_sd_0_interrupt [get_bd_ports sd_device_interrupt_led] [get_bd_ports sd_device_interrupt_out] [get_bd_pins microblaze_0_xlconcat/In1] [get_bd_pins sd_card_wrapper/sd_device_interrupt_out]
  connect_bd_net -net axi_sd_card_0_sd_dat3_pullup [get_bd_ports sd_device_if_dat3_pullup] [get_bd_pins sd_card_wrapper/sd_device_if_dat3_pullup]
  connect_bd_net -net axi_sd_host_0_interrupt [get_bd_ports sd_host_interrupt_led] [get_bd_ports sd_host_interrupt_out] [get_bd_pins microblaze_0_xlconcat/In2] [get_bd_pins sd_host/interrupt]
  connect_bd_net -net axi_sd_host_0_sd_clk [get_bd_ports sd_host_if_clk] [get_bd_pins sd_host/sd_clk]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins microblaze_0_xlconcat/In0] [get_bd_pins uart/interrupt]
  connect_bd_net -net ddr_clock_1 [get_bd_ports ddr_clock] [get_bd_pins dram_controller/sys_clk_i]
  connect_bd_net -net dram_controller_mmcm_locked [get_bd_pins dram_controller/mmcm_locked] [get_bd_pins rst_dram_controller_81M/dcm_locked]
  connect_bd_net -net dram_controller_ui_addn_clk_0 [get_bd_pins dram_controller/clk_ref_i] [get_bd_pins dram_controller/ui_addn_clk_0]
  connect_bd_net -net dram_controller_ui_clk_sync_rst [get_bd_pins dram_controller/ui_clk_sync_rst] [get_bd_pins rst_dram_controller_81M/ext_reset_in]
  connect_bd_net -net mdm_0_Debug_SYS_Rst [get_bd_pins mdm_0/Debug_SYS_Rst] [get_bd_pins rst_dram_controller_81M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Dbg_Wakeup [get_bd_pins microblaze_0/Dbg_Wakeup] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins const_gen/aclk] [get_bd_pins cpu_in_data_width_converter_0/aclk] [get_bd_pins cpu_in_data_width_converter_1/aclk] [get_bd_pins cpu_out_data_width_converter_0/aclk] [get_bd_pins cpu_out_data_width_converter_1/aclk] [get_bd_pins dram_controller/ui_clk] [get_bd_pins encrypt_wrapper/clk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_axi_periph/S01_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins reset_generator_wrap_0/aclk] [get_bd_pins rst_dram_controller_81M/slowest_sync_clk] [get_bd_pins sd_card_data_switch/aclk] [get_bd_pins sd_card_data_switch/s_axi_ctrl_aclk] [get_bd_pins sd_card_wrapper/s_axis_aclk] [get_bd_pins sd_host/clk] [get_bd_pins sd_host_data_switch/aclk] [get_bd_pins sd_host_data_switch/s_axi_ctrl_aclk] [get_bd_pins timer/s_axi_aclk] [get_bd_pins uart/s_axi_aclk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins dram_controller/sys_rst]
  connect_bd_net -net reset_generator_wrap_0_out_aresetn [get_bd_pins reset_generator_wrap_0/out_aresetn] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net rst_dram_controller_81M_peripheral_aresetn [get_bd_pins const_gen/resetn] [get_bd_pins dram_controller/aresetn] [get_bd_pins encrypt_wrapper/resetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins microblaze_0_axi_periph/S01_ARESETN] [get_bd_pins reset_generator_wrap_0/aresetn] [get_bd_pins rst_dram_controller_81M/peripheral_aresetn] [get_bd_pins sd_card_data_switch/aresetn] [get_bd_pins sd_card_data_switch/s_axi_ctrl_aresetn] [get_bd_pins sd_card_wrapper/resetn] [get_bd_pins sd_host/resetn] [get_bd_pins sd_host_data_switch/aresetn] [get_bd_pins sd_host_data_switch/s_axi_ctrl_aresetn] [get_bd_pins timer/s_axi_aresetn] [get_bd_pins uart/s_axi_aresetn]
  connect_bd_net -net sd_device_if_clk_1 [get_bd_ports sd_device_if_clk] [get_bd_pins sd_card_wrapper/sd_device_if_clk]
  connect_bd_net -net timer_interrupt [get_bd_pins microblaze_0_xlconcat/In3] [get_bd_pins timer/interrupt]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins microblaze_0/Wakeup] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_ports sd_device_if_gnd] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports sd_host_if_gnd] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins cpu_in_data_width_converter_0/aresetn] [get_bd_pins cpu_out_data_width_converter_0/aresetn] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins cpu_in_data_width_converter_1/aresetn] [get_bd_pins cpu_out_data_width_converter_1/aresetn] [get_bd_pins xlslice_1/Dout]

  # Create address segments
  assign_bd_address -offset 0x44A20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sd_host_data_switch/S_AXI_CTRL/Reg] -force
  assign_bd_address -offset 0x44A50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sd_card_data_switch/S_AXI_CTRL/Reg] -force
  assign_bd_address -offset 0x44A40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs const_gen/s_axi/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x80000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs dram_controller/memmap/memaddr] -force
  assign_bd_address -offset 0x44A30000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs encrypt_wrapper/encrypt/S_AXI/S_AXI_reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A60000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs reset_generator_wrap_0/s_axi/reg0] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sd_card_wrapper/sd_card/S_AXI/S_AXI_reg] -force
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sd_host/S_AXI/REG] -force
  assign_bd_address -offset 0x41C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs timer/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs uart/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


