proc create_ipi_design { offsetfile design_name } {
    create_bd_design $design_name
    open_bd_design $design_name

    # Create Clock and Reset Ports
    set ACLK [ create_bd_port -dir I -type clk ACLK ]
    set_property -dict [ list CONFIG.FREQ_HZ {100000000} \
			     CONFIG.PHASE {0.000} \
			     CONFIG.CLK_DOMAIN "${design_name}_ACLK" ] $ACLK
    set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
    set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $ARESETN
    set_property CONFIG.ASSOCIATED_RESET ARESETN $ACLK

    # Create the DUT
    set xts_aes_0 [ create_bd_cell -type ip \
			-vlnv user.org:user:xts_aes:1.0 \
			xts_aes_0]
    set_property -dict [ list \
			     CONFIG.KEY_SIZE {256} \
			     CONFIG.WORKER_COUNT {1} \
			     CONFIG.TWEAK_WIDTH {32} \
			     CONFIG.DATA_UNIT_SIZE {128} \
			    ] $xts_aes_0

    # Output fifo
    set axis_data_fifo_out [ create_bd_cell -type ip \
				 -vlnv xilinx.com:ip:axis_data_fifo:2.0 \
				 axis_data_fifo_out ]
    set_property -dict [ list \
			     CONFIG.FIFO_DEPTH {64} \
			     CONFIG.HAS_PROG_FULL {1} \
			     CONFIG.PROG_FULL_THRESH {32} \
			    ] $axis_data_fifo_out

    # AXI4-LITE master
    set master_0 [ create_bd_cell -type ip \
		       -vlnv xilinx.com:ip:axi_vip master_0]
    set_property -dict [ list CONFIG.PROTOCOL {AXI4LITE} \
			     CONFIG.INTERFACE_MODE {MASTER} ] $master_0

    # AXI4-Stream master for feeding data to the DUT
    set axi4stream_mst [ create_bd_cell -type ip \
			     -vlnv xilinx.com:ip:axi4stream_vip:1.1 \
			     axi4stream_vip_mst ]
    set_property -dict [ list \
			     CONFIG.HAS_ACLKEN {0} \
			     CONFIG.HAS_ARESETN {1} \
			     CONFIG.HAS_TKEEP {0} \
			     CONFIG.HAS_TLAST {0} \
			     CONFIG.HAS_TREADY {1} \
			     CONFIG.HAS_TSTRB {0} \
			     CONFIG.HAS_TUSER_BITS_PER_BYTE {0} \
			     CONFIG.INTERFACE_MODE {MASTER} \
			     CONFIG.TDATA_NUM_BYTES {16} \
			     CONFIG.TDEST_WIDTH {0} \
			     CONFIG.TID_WIDTH {0} \
			     CONFIG.TUSER_WIDTH {0} \
			     CONFIG.USER_BITS_PER_BYTE {0} \
			    ] $axi4stream_mst

    # AXI4-Stream slave for reading data from the DUT
    set axi4stream_slv [ create_bd_cell -type ip \
			     -vlnv xilinx.com:ip:axi4stream_vip:1.1 \
			     axi4stream_vip_slv ]
    set_property -dict [ list \
			     CONFIG.HAS_ACLKEN {0} \
			     CONFIG.HAS_ARESETN {1} \
			     CONFIG.HAS_TUSER_BITS_PER_BYTE {0} \
			     CONFIG.INTERFACE_MODE {SLAVE} \
			     CONFIG.TDATA_NUM_BYTES {16} \
			     CONFIG.TUSER_WIDTH {0} \
			     CONFIG.USER_BITS_PER_BYTE {0} \
			    ] $axi4stream_slv

    # Connect the FIFOs' resets

    connect_bd_net [get_bd_pins xts_aes_0/fifo_out_resetn] \
	[get_bd_pins axis_data_fifo_out/s_axis_aresetn]

    # AXI connection
    connect_bd_intf_net [get_bd_intf_pins master_0/M_AXI ] \
	[get_bd_intf_pins xts_aes_0/S_AXI]

    # Data connections
    connect_bd_intf_net [get_bd_intf_pins axi4stream_vip_mst/M_AXIS] \
	[get_bd_intf_pins xts_aes_0/data_in]
    connect_bd_intf_net [get_bd_intf_pins xts_aes_0/data_out] \
	[get_bd_intf_pins axis_data_fifo_out/S_AXIS]
    connect_bd_intf_net [get_bd_intf_pins axis_data_fifo_out/M_AXIS] \
	[get_bd_intf_pins axi4stream_vip_slv/S_AXIS]
    connect_bd_net [get_bd_pins xts_aes_0/fifo_out_almostfull] \
	[get_bd_pins axis_data_fifo_out/prog_full]

    # Connections to outside the block design
    connect_bd_net [get_bd_ports ACLK] \
	[get_bd_pins axi4stream_vip_mst/aclk] \
	[get_bd_pins axi4stream_vip_slv/aclk] \
	[get_bd_pins xts_aes_0/clk] \
	[get_bd_pins axis_data_fifo_out/s_axis_aclk] \
	[get_bd_pins master_0/aclk]
    connect_bd_net [get_bd_ports ARESETN] \
	[get_bd_pins axi4stream_vip_mst/aresetn] \
	[get_bd_pins axi4stream_vip_slv/aresetn] \
	[get_bd_pins xts_aes_0/resetn] \
	[get_bd_pins master_0/aresetn]

    set_property target_simulator XSim [current_project]
    set_property -name {xsim.simulate.runtime} -value {100ms} \
	-objects [get_filesets sim_1]

    # Auto assign address
    assign_bd_address

    # Copy all address to interface_address.vh file
    set bd_path [file dirname [get_property NAME [get_files ${design_name}.bd]]]
    upvar 1 $offsetfile offset_file
    set offset_file "${bd_path}/xts_aes_v1_0_tb_include.svh"
    set fp [open $offset_file "w"]
    puts $fp "`ifndef xts_aes_v1_0_tb_include_vh_"
    puts $fp "`define xts_aes_v1_0_tb_include_vh_\n"
    puts $fp "//Configuration current bd names"
    puts $fp "`define BD_NAME ${design_name}"
    puts $fp "`define BD_INST_NAME ${design_name}_i"
    puts $fp "`define BD_WRAPPER ${design_name}_wrapper\n"
    puts $fp "//Configuration address parameters"

    puts $fp "`endif"
    close $fp
}

set ip_path [file dirname [file normalize [get_property XML_FILE_NAME [ipx::get_cores user.org:user:xts_aes:1.0]]]]
set interface_address_vh_file ""

# Set IP Repository and Update IP Catalogue
set repo_paths [get_property ip_repo_paths [current_fileset]]
if { [lsearch -exact -nocase $repo_paths $ip_path ] == -1 } {
    set_property ip_repo_paths "$ip_path [get_property ip_repo_paths [current_fileset]]" [current_fileset]
    update_ip_catalog
}

set design_name ""
set all_bd {}
set all_bd_files [get_files *.bd -quiet]
foreach file $all_bd_files {
    set file_name [string range $file [expr {[string last "/" $file] + 1}] end]
    set bd_name [string range $file_name 0 [expr {[string last "." $file_name] -1}]]
    lappend all_bd $bd_name
}

for { set i 1 } { 1 } { incr i } {
    set design_name "xts_aes_v1_0_bfm_${i}"
    if { [lsearch -exact -nocase $all_bd $design_name ] == -1 } {
	break
    }
}

create_ipi_design interface_address_vh_file ${design_name}
validate_bd_design

set wrapper_file [make_wrapper -files [get_files ${design_name}.bd] -top -force]
import_files -force -norecurse $wrapper_file

set sources ${ip_path}/example_designs/bfm_design

set_property SOURCE_SET sources_1 [get_filesets sim_1]
import_files -fileset sim_1 -norecurse -force \
    $sources/xts_aes_v1_0_tb.sv \
    [glob -directory $sources tv-*]
remove_files -quiet -fileset sim_1 xts_aes_v1_0_tb_include.vh
import_files -fileset sim_1 -norecurse -force $interface_address_vh_file
set_property top xts_aes_v1_0_tb [get_filesets sim_1]
set_property top_lib {} [get_filesets sim_1]
set_property top_file {} [get_filesets sim_1]
launch_simulation -simset sim_1 -mode behavioral
