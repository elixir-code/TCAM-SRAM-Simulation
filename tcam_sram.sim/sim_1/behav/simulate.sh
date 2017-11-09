#!/bin/bash -f
xv_path="/home/SDx/2016.4/Vivado"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
xv_lib_path="/home/SDx/2016.4/Vivado/lib/lnx64.o"
ExecStep $xv_path/bin/xsim cu_tb_behav -key {Behavioral:sim_1:Functional:cu_tb} -tclbatch cu_tb.tcl -log simulate.log
