#! /bin/csh
module load amber/16

# Create Hbond input file
rm cpptraj_Hbond.in
cat > cpptraj_Hbond.in << EOF
trajin JIP1_all_imaged_stripped.nc

hbond all :1-294 out hbvtime_all_seeds.dat solventdonor :WAT solventacceptor :WAT@O avgout JIP1_UU_all_seeds.dat solvout JIP1_UV_all_seeds.dat bridgeout JIP1_bridge_all_seeds.dat

#hbond Backbone :1-10@C,O,N,H avgout JIP1_BB_all_seeds.dat series uuseries JIP1_BB.gnu
hbond full :1-10 avgout JIP1_all_Hbonds.dat series uuseries JIP1_all.gnu

create JIP1_UU_nhbvtime_all_seeds.dat all[UU]
create JIP1_BB_UU_nhbvtime_all_seeds.dat Backbone[UU]
create JIP1_UV_nhbvtime_all_seeds.dat all[UV]
create JIP1_Bridge_nhbvtime_all_seeds.dat all[Bridge]

rms BBrmsd :1-294@C,CA,N out JIP1_BBrmsd_all_seeds.dat
EOF

# Run Hbond analysis
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_Hbond.in

# Create a .dat file containing only ligand Hbonds (assumes ligand residue name is UNK)
#sed -n '/UNK/p' JIP1_UU_all_seeds.dat > JIP1_Ligand_Only_all_seeds.dat
