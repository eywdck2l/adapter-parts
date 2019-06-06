vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_0
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_12
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/mdm_v3_2_15
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_22

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_0 questa_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_12 questa_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_15 questa_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 questa_lib/msim/axi_uartlite_v2_0_22

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_0/sim/adapter_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_v10_0/sim/adapter_dlmb_v10_0.vhd" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_v10_0/sim/adapter_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_bram_if_cntlr_0/sim/adapter_dlmb_bram_if_cntlr_0.vhd" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_bram_if_cntlr_0/sim/adapter_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_lmb_bram_0/sim/adapter_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_xbar_0/sim/adapter_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_axi_intc_0/sim/adapter_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_xlconcat_0/sim/adapter_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_mdm_1_0/sim/adapter_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0_clk_wiz.v" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_rst_clk_wiz_1_100M_0/sim/adapter_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_uartlite_0_0/sim/adapter_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8fb0/src/cmd_if.sv" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8fb0/src/device.sv" \
"../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8fb0/src/axi_sd_v1_0_S_AXI.sv" \
"../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/sim/adapter_axi_sd_0_0.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl" "+incdir+../../../../adapter.srcs/sources_1/bd/adapter/ipshared/85a3" \
"../../../../adapter.srcs/sources_1/bd/adapter/sim/adapter.v" \

vlog -work xil_defaultlib \
"glbl.v"

