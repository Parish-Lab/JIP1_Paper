#! /bin/csh -f

# 200ns (25ns steps) of unrestrained MD at 300 K - Example script, scripts used for MD run 2000ns total
$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c eq7.rst7 -ref eq7.rst7 -o JIP1_Seed1_solv_md001.mdout -r JIP1_Seed1_solv_md001.rst7 -x JIP1_Seed1_solv_md001.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md001.rst7 -ref JIP1_Seed1_solv_md001.rst7 -o JIP1_Seed1_solv_md002.mdout -r JIP1_Seed1_solv_md002.rst7 -x JIP1_Seed1_solv_md002.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md002.rst7 -ref JIP1_Seed1_solv_md002.rst7 -o JIP1_Seed1_solv_md003.mdout -r JIP1_Seed1_solv_md003.rst7 -x JIP1_Seed1_solv_md003.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md003.rst7 -ref JIP1_Seed1_solv_md003.rst7 -o JIP1_Seed1_solv_md004.mdout -r JIP1_Seed1_solv_md004.rst7 -x JIP1_Seed1_solv_md004.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md004.rst7 -ref JIP1_Seed1_solv_md004.rst7 -o JIP1_Seed1_solv_md005.mdout -r JIP1_Seed1_solv_md005.rst7 -x JIP1_Seed1_solv_md005.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md005.rst7 -ref JIP1_Seed1_solv_md005.rst7 -o JIP1_Seed1_solv_md006.mdout -r JIP1_Seed1_solv_md006.rst7 -x JIP1_Seed1_solv_md006.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md006.rst7 -ref JIP1_Seed1_solv_md006.rst7 -o JIP1_Seed1_solv_md007.mdout -r JIP1_Seed1_solv_md007.rst7 -x JIP1_Seed1_solv_md007.nc

$AMBERHOME/bin/pmemd.cuda -O -i md.mdin -p JIP1_solv.prmtop -c JIP1_Seed1_solv_md007.rst7 -ref JIP1_Seed1_solv_md007.rst7 -o JIP1_Seed1_solv_md008.mdout -r JIP1_Seed1_solv_md008.rst7 -x JIP1_Seed1_solv_md008.nc
