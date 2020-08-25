#! /bin/csh

# Load amber16 program files
module load amber/16

# Create cpptraj_RMSD_Conf_.in files for the trajectory of interest and for each comparison structure - alpha carbon RMSD's calculated

rm cpptraj_RMSD_Conf1.in
cat > cpptraj_RMSD_Conf1.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf1.pdb
reference JIP1_Conf1.pdb parm JIP1_Conf1.pdb [JP1]
rms Conf1 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf1.dat
EOF

rm cpptraj_RMSD_Conf2.in
cat > cpptraj_RMSD_Conf2.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf2.pdb
reference JIP1_Conf2.pdb parm JIP1_Conf2.pdb [JP1]
rms Conf2 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf2.dat
EOF

rm cpptraj_RMSD_Conf3.in
cat > cpptraj_RMSD_Conf3.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf3.pdb
reference JIP1_Conf3.pdb parm JIP1_Conf3.pdb [JP1]
rms Conf3 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf3.dat
EOF

rm cpptraj_RMSD_Conf4.in
cat > cpptraj_RMSD_Conf4.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf4.pdb
reference JIP1_Conf4.pdb parm JIP1_Conf4.pdb [JP1]
rms Conf4 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf4.dat
EOF

rm cpptraj_RMSD_Conf5.in
cat > cpptraj_RMSD_Conf5.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf5.pdb
reference JIP1_Conf5.pdb parm JIP1_Conf5.pdb [JP1]
rms Conf5 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf5.dat
EOF

rm cpptraj_RMSD_Conf6.in
cat > cpptraj_RMSD_Conf6.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Conf6.pdb
reference JIP1_Conf6.pdb parm JIP1_Conf6.pdb [JP1]
rms Conf6 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf6.dat
EOF

rm cpptraj_RMSD_Conf7.in
cat > cpptraj_RMSD_Conf7.in << EOF
trajin JIP1_Uncapped_Seed1_2000ns_imaged.nc 1 20000 1
parm JIP1_Uncapped_Cluster_7.pdb
reference JIP1_Uncapped_Cluster_7.pdb parm JIP1_Uncapped_Cluster_7.pdb [JP1]
rms Conf7 ref [JP1] :1-10@CA :1-10@CA out RMSD_JIP1_Uncapped_to_Conf7.dat
EOF

# Run cpptraj_RMSD_Conf1.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf1.in

# Run cpptraj_RMSD_Conf2.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf2.in

# Run cpptraj_RMSD_Conf3.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf3.in

# Run cpptraj_RMSD_Conf4.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf4.in

# Run cpptraj_RMSD_Conf5.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf5.in

# Run cpptraj_RMSD_Conf6.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf6.in

# Run cpptraj_RMSD_Conf7.in file
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_RMSD_Conf7.in
