vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_1
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_16
vlib activehdl/blk_mem_gen_v8_4_3
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_13
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/mdm_v3_2_16
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_23
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v11_0_1 activehdl/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 activehdl/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 activehdl/blk_mem_gen_v8_4_3
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_13 activehdl/axi_intc_v4_1_13
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap mdm_v3_2_16 activehdl/mdm_v3_2_16
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_23 activehdl/axi_uartlite_v2_0_23
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_0/sim/adapter_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_v10_0/sim/adapter_dlmb_v10_0.vhd" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_v10_0/sim/adapter_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_bram_if_cntlr_0/sim/adapter_dlmb_bram_if_cntlr_0.vhd" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_bram_if_cntlr_0/sim/adapter_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_lmb_bram_0/sim/adapter_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_13 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_axi_intc_0/sim/adapter_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_xlconcat_0/sim/adapter_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_16 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_mdm_1_0/sim/adapter_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0_clk_wiz.v" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_rst_clk_wiz_1_100M_0/sim/adapter_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_23 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/0315/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_uartlite_0_0/sim/adapter_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8274/src/device.sv" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8274/src/sd_bus_interface.sv" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/sim/adapter_axi_sd_0_0.sv" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c923" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_xbar_0/sim/adapter_xbar_0.v" \
"../../../../adapter.srcs/sources_1/bd/adapter/sim/adapter.v" \

vlog -work xil_defaultlib \
"glbl.v"

