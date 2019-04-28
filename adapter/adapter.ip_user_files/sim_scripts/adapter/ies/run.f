-makelib ies_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v11_0_0 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_0/sim/adapter_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_v10_0/sim/adapter_dlmb_v10_0.vhd" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_v10_0/sim/adapter_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_dlmb_bram_if_cntlr_0/sim/adapter_dlmb_bram_if_cntlr_0.vhd" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_ilmb_bram_if_cntlr_0/sim/adapter_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_lmb_bram_0/sim/adapter_lmb_bram_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_xbar_0/sim/adapter_xbar_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_intc_v4_1_12 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_axi_intc_0/sim/adapter_microblaze_0_axi_intc_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_microblaze_0_xlconcat_0/sim/adapter_microblaze_0_xlconcat_0.v" \
-endlib
-makelib ies_lib/mdm_v3_2_15 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_mdm_1_0/sim/adapter_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0_clk_wiz.v" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_clk_wiz_1_0/adapter_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_rst_clk_wiz_1_100M_0/sim/adapter_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_22 \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_uartlite_0_0/sim/adapter_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/4fa3/src/cmd_if.sv" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/4fa3/src/controller.sv" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/4fa3/src/controller_cmd.sv" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ipshared/4fa3/src/axi_sd_v1_0_S_AXI.sv" \
  "../../../../adapter.srcs/sources_1/bd/adapter/ip/adapter_axi_sd_0_0/sim/adapter_axi_sd_0_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adapter.srcs/sources_1/bd/adapter/sim/adapter.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

