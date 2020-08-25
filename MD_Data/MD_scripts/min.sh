#! /bin/csh -f

# 7 Minimization steps
$AMBERHOME/bin/pmemd.cuda -O -i min1.mdin -p JIP1_solv.prmtop -c JIP1_solv.inpcrd -ref JIP1_solv.inpcrd -o min1.mdout -r min1.rst7 -x min1.nc

$AMBERHOME/bin/pmemd.cuda -O -i min2.mdin -p JIP1_solv.prmtop -c min1.rst7 -ref min1.rst7 -o min2.mdout -r min2.rst7 -x min2.nc

$AMBERHOME/bin/pmemd.cuda -O -i min3.mdin -p JIP1_solv.prmtop -c min2.rst7 -ref min2.rst7 -o min3.mdout -r min3.rst7 -x min3.nc

$AMBERHOME/bin/pmemd.cuda -O -i min4.mdin -p JIP1_solv.prmtop -c min3.rst7 -ref min3.rst7 -o min4.mdout -r min4.rst7 -x min4.nc

$AMBERHOME/bin/pmemd.cuda -O -i min5.mdin -p JIP1_solv.prmtop -c min4.rst7 -ref min4.rst7 -o min5.mdout -r min5.rst7 -x min5.nc

$AMBERHOME/bin/pmemd.cuda -O -i min6.mdin -p JIP1_solv.prmtop -c min5.rst7 -ref min5.rst7 -o min6.mdout -r min6.rst7 -x min6.nc

$AMBERHOME/bin/pmemd.cuda -O -i min7.mdin -p JIP1_solv.prmtop -c min6.rst7 -ref min6.rst7 -o min7.mdout -r min7.rst7 -x min7.nc
