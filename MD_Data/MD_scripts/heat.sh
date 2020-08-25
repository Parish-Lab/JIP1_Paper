#! /bin/csh -f

# Heating step 
$AMBERHOME/bin/pmemd.cuda -O -i heat.mdin -p JIP1_solv.prmtop -c min7.rst7 -ref min7.rst7 -o heat.mdout -r heat.rst7 -x heat.nc
