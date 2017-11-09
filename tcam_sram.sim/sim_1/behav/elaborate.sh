#!/bin/bash -f
xv_path="/home/SDx/2016.4/Vivado"
xv_lib_path="/home/SDx/2016.4/Vivado/lib/lnx64.o"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 3ce83eaf826e455286aafc9ae052c4b1 -m64 --debug typical --relax --mt 8 -L blk_mem_gen_v8_3_5 -L xil_defaultlib -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_3 -L xbip_dsp48_addsub_v3_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L c_gate_bit_v12_0_3 -L xbip_counter_v3_0_3 -L c_counter_binary_v12_0_10 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot cu_tb_behav xil_defaultlib.cu_tb xil_defaultlib.glbl -log elaborate.log
