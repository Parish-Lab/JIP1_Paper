#! /bin/csh

# Load amber16 program files
module load amber/16

# Create cpptraj input file - pairwise distances calculation, clustering based on pairdist data -- sieve 5 (40,000 frames initially clustered, remaining filled in afterwards) clusters 115 (sorts frames into 115 total clusters)
rm cpptraj_clustering_Pairdist.in
cat > cpptraj_clustering_Pairdist.in << EOF
trajin JIP1_all_imaged_stripped.nc 1 200000 1
pairdist all out JIP1_Uncapped_Pairdist_all_20000ns_CA.dat mask :1-10

cluster pairdist JIP1_Uncapped_Pairdist_all_20000ns_CA.dat sieve 5 clusters 115 out JIP1_Uncapped_All_Pairdist_all_S5_C115_E_NA_Clust.out summary JIP1_Uncapped_All_20000ns_summary_Pairdist_all_S5_C115_E_NA.out avgout JIP1_Uncapped_All_Pairdist_all_S5_C115_E_NA_Clust avgfmt pdb
EOF

# Run cpptraj clustering
$AMBERHOME/bin/cpptraj -p JIP1.prmtop -i cpptraj_clustering_Pairdist.in
