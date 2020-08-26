# Understanding the Structure and Apo Dynamics of the Functionally Active JIP1 Fragment
Lauren M. McRae, Neda Ojaghlou, Justin Airas, Cooper A. Taylor, Bill R. Miller III†, and Carol A. Parish\
Department of Chemistry, University of Richmond, Richmond, VA, 23173\
†Department of Chemistry, Truman State University, Kirksville, MO 63501
#### Abstract
Recent experiments indicate that the C-Jun Amino-Terminal Kinase-Interacting Protein 1 (JIP1) binds to and activates the c-Jun N-terminal Kinase (JNK) protein. JNK is an integral part of cell apoptosis, and misregulation of this process is a causative factor in diseases such as Alzheimer’s Disease (AD), obesity and cancer. It has also been shown that JIP1 may increase the phosphorylation of tau by facilitating the interaction between the tau protein and JNK, which could also be a causative factor in AD. Very little is known about the structure and dynamics of JIP1; however, the amino acid composition of the first 350 residues suggests that it contains an intrinsically disordered region. Molecular dynamics (MD) simulations using AMBER 14 were used to study the structure and dynamics of a functionally active 10mer JIP1 fragment, to better understand the solution behavior of the fragment, and to compare it to the JNK-bound structure. 2 μs of unbiased MD was performed on the JIP1 10mer fragment in 10 different seeds; and from this, 7 structurally stable conformations of the 10mer fragment were identified via classical clustering. The 10mer ensemble was also used to build a Markov state model that identified four metastable states that encompassed 5 of the 7 conformational families identified by classical dimensional reduction.

## All Files
#### Clustering
Contains all structures and raw data related to clustering analysis

[Average structures of all 7 conformers](JIP1_Paper/Clustering/Avg_Conformer_Struct/)

[Raw data from MMTSB clustering](JIP1_Paper/Clustering/MMTSB/)
- PDBfit folder - all identified structures
- clustering.out - list of generated clusters
- clustering10.out - list of structures for 10 most populated clusters

[Raw data from cpptraj clustering](JIP1_Paper/Clustering/cpptraj/)
- Other_Clusters folder - Low populated clusters not associated with any identified Conformer
- JIP1_Uncapped_All_20000ns_summary_Pairdist_all_S5_C115_E_NA.out - clustering summary file
- JIP1_Uncapped_All_Pairdist_all_S5_C115_E_NA_Clust.c*.pdb - strucutres associated with 7 Conformers
- JIP1_Uncapped_All_Pairdist_all_S5_C115_E_NA_Clust.out - cluster sampled by frame
- JIP1_Uncapped_Pairdist_all_20000ns_CA.dat - paired distances raw data file
- cpptraj_clustering_Pairdist_C115_S5.sh - pairwise cpptraj clustering script

[cpptraj clustering bootstrapping Juypter Notebook](JIP1_Paper/Clustering/cpptraj_bootstrapping/)

#### MD Data
All MD input files, scripts, parameter topology, input coordinates, trajectories, and analysis - including lifetime, H-bond, and RMSD analysis 

[Full ensemble H-bond summary file and script](JIP1_Paper/MD_Data/Hbond)
- JIP1_all_Hbonds.dat - H-bond analysis summary
- cpptraj_hbond.sh - cpptraj H-bond analysis script

[Lifetime calculation and bootstrapping raw data](JIP1_Paper/MD_Data/Lifetime)
- JIP1_Lifetime_Bootstrapping_2A_corrected.xlsx - raw bootsampled lifetimes
- lifetime_analysis_CLS_edit_corrected_2.0_conf7_added.xlsb - lifetimes calculated from ensemble

[Amber minimization, heating, equilibration, and unrestrained MD input files](JIP1_Paper/MD_Data/MD_input)

[Amber tleap preparation, minimization, heating, equilibration, and unrestrained MD scripts](JIP1_Paper/MD_Data/MD_scripts)

[cpptraj RMSD analysis scripts, and RMSD data files the input coordinates and each Conformer average structure as the reference](JIP1_Paper/MD_Data/RMSD)
- RMSD aCarbon Percent Occurrence JIP1 Conformers All Seeds.xlsx - % occurrences of Conformers in each seed, alpha carbon RMSD cutoff of 2 angstroms
- RMSD_Conf*_to_Full_JIP1_Trajectory.dat - alpha carbon RMSD of all Conformers to the full ensemble
- RMSD_JIP1_Uncapped_all_new_20000ns.dat - all atom RMSD of full ensemble from input coordinates
- cpptraj_analysis_2000ns.sh - cpptraj script for all atom RMSD from input coordinates analysis of the full ensemble
- cpptraj_reference_RMSD_2000ns.sh - cpptraj script for alpha carbon RMSD of all Conformers to the full ensemble analysis

[Unsolvated MD trajectories for all JIP1 unrestrained MD seeds](JIP1_Paper/MD_Data/Trajectories)

[Initial PDB, and solvated/unsolvated parameter topology and input coordinate files](JIP1_Paper/MD_Data/prmtop_inpcrd)

#### MSM
All MSM input files, scripts, Python code, input coordinates, and analysis - including Feature selection, MSM Validation, TPT analysis 
./[Feature's selection with Vamp 2 score](JIP1_Paper/MSM/Select_Features/Features_Vamp2_score.html)
.
