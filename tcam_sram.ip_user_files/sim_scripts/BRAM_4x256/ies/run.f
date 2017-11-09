-makelib ies/xil_defaultlib -sv \
  "/home/SDx/2016.4/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/home/SDx/2016.4/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../tcam_sram.srcs/sources_1/ip/BRAM_4x256/sim/BRAM_4x256.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

