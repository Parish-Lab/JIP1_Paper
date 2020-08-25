#! /bin/csh -f

# 7 Equilibration steps
$AMBERHOME/bin/pmemd.cuda -O -i eq1.mdin -p JIP1_solv.prmtop -c heat.rst7 -ref heat.rst7 -o eq1.mdout -r eq1.rst7 -x eq1.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq2.mdin -p JIP1_solv.prmtop -c eq1.rst7 -ref eq1.rst7 -o eq2.mdout -r eq2.rst7 -x eq2.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq3.mdin -p JIP1_solv.prmtop -c eq2.rst7 -ref eq2.rst7 -o eq3.mdout -r eq3.rst7 -x eq3.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq4.mdin -p JIP1_solv.prmtop -c eq3.rst7 -ref eq3.rst7 -o eq4.mdout -r eq4.rst7 -x eq4.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq5.mdin -p JIP1_solv.prmtop -c eq4.rst7 -ref eq4.rst7 -o eq5.mdout -r eq5.rst7 -x eq5.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq6.mdin -p JIP1_solv.prmtop -c eq5.rst7 -ref eq5.rst7 -o eq6.mdout -r eq6.rst7 -x eq6.nc

$AMBERHOME/bin/pmemd.cuda -O -i eq7.mdin -p JIP1_solv.prmtop -c eq6.rst7 -ref eq6.rst7 -o eq7.mdout -r eq7.rst7 -x eq7.nc
