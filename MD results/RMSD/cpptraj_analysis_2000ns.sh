#! /bin/csh
module load amber/16

#Create cpptraj_analysis.in file
rm cpptraj_analysis.in
cat > cpptraj_analysis.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed2_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed3_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed4_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed5_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed6_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed7_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed8_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed9_2000ns_imaged.nc
trajin JIP1_Uncapped_Seed10_2000ns_imaged.nc

rmsd all :1-10 out RMSD_JIP1_Uncapped_all_20000ns.dat
rmsd protein :1-10@CA out RMSD_JIP1_Uncapped_all_protein_20000ns.dat
atomicfluct out RMSF_JIP1_Uncapped_all_20000ns.dat @CA,C,N byres

EOF

#Run cpptraj_analysis.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_analysis.in

# Modify rmsd_all.dat file
cat RMSD_JIP1_Uncapped_all_20000ns.dat | awk '{print 0.1*$1, $2}' > RMSD_JIP1_Uncapped_all_new_20000ns.dat

#Graph the RMSD and RMSF data
rm gnuplot.in
cat > gnuplot.in << EOF
set term png size 2000, 1200 font '/usr/share/fonts/liberation/LiberationSans-Regular.ttf, 40'
set output "RMSD_JIP1_Uncapped_all_new_20000ns.png
set title "RMSD JIP1 all seeds"
set xlabel "Time (ns)
set ylabel "RMSD (Å)"
set nokey
plot 'RMSD_JIP1_Uncapped_all_new_20000ns.dat' w l lw 2

set output "RMSF_JIP1_Uncapped_all_new_20000ns.png
set title "RMSF JIP1 all 20000ns
set xlabel "Residue"
set xrange [1:12]
set ylabel "RMSF (Å)"
set nokey
plot 'RMSF_JIP1_Uncapped_all_20000ns.dat' w l lw 2
EOF
gnuplot gnuplot.in
