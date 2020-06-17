connect_debug_port u_ila_0/clk [get_nets [list block_design_i/dram_controller/u_block_design_mig_7series_0_1_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i_0]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_gen_ui_extra_clocks.mmcm_i_0]







create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list block_design_i/dram_controller/u_block_design_mig_7series_0_1_mig/u_ddr3_infrastructure/clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[16]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[17]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[18]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[19]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[20]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[21]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[22]} {block_design_i/sd_host_axis_switch_M02_AXIS_TDATA[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {block_design_i/sd_card_wrapper_M_AXIS_TDATA[0]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[1]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[2]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[3]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[4]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[5]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[6]} {block_design_i/sd_card_wrapper_M_AXIS_TDATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {block_design_i/microblaze_0_axi_periph_M05_AXI_WSTRB[0]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WSTRB[1]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WSTRB[2]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[0]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[1]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[2]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[3]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[4]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[5]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[6]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[7]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[8]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[9]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[10]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[11]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[12]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[13]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[14]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[15]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[16]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[17]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[18]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[19]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[20]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[21]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[22]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[23]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[24]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[25]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[26]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[27]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[28]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[29]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[30]} {block_design_i/microblaze_0_axi_periph_M05_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[0]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[1]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[2]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[3]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[4]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[5]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[6]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[7]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[8]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[9]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[10]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[11]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[12]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[13]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[14]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[15]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[16]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[17]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[18]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[19]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[20]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[21]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[22]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[23]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[24]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[25]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[26]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[27]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[28]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[29]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[30]} {block_design_i/microblaze_0_axi_periph_M05_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 7 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[0]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[1]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[2]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[3]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[4]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[5]} {block_design_i/microblaze_0_axi_periph_M05_AXI_AWADDR[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 7 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[0]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[1]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[2]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[3]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[4]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[5]} {block_design_i/microblaze_0_axi_periph_M05_AXI_ARADDR[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {block_design_i/axis_switch_0_M03_AXIS_TDATA[24]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[25]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[26]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[27]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[28]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[29]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[30]} {block_design_i/axis_switch_0_M03_AXIS_TDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 8 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {block_design_i/axis_switch_0_M00_AXIS_TDATA[0]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[1]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[2]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[3]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[4]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[5]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[6]} {block_design_i/axis_switch_0_M00_AXIS_TDATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 8 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {block_design_i/axis_switch_0_M01_AXIS1_TDATA[8]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[9]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[10]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[11]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[12]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[13]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[14]} {block_design_i/axis_switch_0_M01_AXIS1_TDATA[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 4 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_t[0]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_t[1]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_t[2]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_t[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 4 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_o[0]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_o[1]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_o[2]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_o[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 4 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_i[0]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_i[1]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_i[2]} {block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_dat_i[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list block_design_i/axis_switch_0_M00_AXIS_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list block_design_i/axis_switch_0_M00_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list block_design_i/axis_switch_0_M00_AXIS_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list block_design_i/axis_switch_0_M01_AXIS1_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list block_design_i/axis_switch_0_M01_AXIS1_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list block_design_i/axis_switch_0_M01_AXIS1_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list block_design_i/axis_switch_0_M03_AXIS_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list block_design_i/axis_switch_0_M03_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list block_design_i/axis_switch_0_M03_AXIS_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list block_design_i/microblaze_0_axi_periph_M05_AXI_WVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list block_design_i/sd_card_wrapper_M_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list block_design_i/sd_card_wrapper_M_AXIS_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_clk_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_cmd_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_cmd_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list block_design_i/sd_card_wrapper/sd_card/inst/device/sd_bus_interface/sd_cmd_t]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list block_design_i/sd_host_axis_switch_M02_AXIS_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list block_design_i/sd_host_axis_switch_M02_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list block_design_i/sd_host_axis_switch_M02_AXIS_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk]
