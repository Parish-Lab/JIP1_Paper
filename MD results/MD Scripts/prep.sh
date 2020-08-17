#! /bin/csh
module load amber/16

# If the ligand contains no H atoms, run reduce to neutalize the ligand.
#$AMBERHOME/bin/reduce ligand.pdb > ligand_w_H.pdb

# Run antechamber on the neutralized ligand to generate mol2 files.
#$AMBERHOME/bin/antechamber -i ligand_w_H.pdb -fi pdb -o ligand_w_H.mol2 -fo mol2 -c bcc -s 2 -nc 0 -m 1

# Run parmchk to generate a force field modification specific to the ligand being bound
#$AMBERHOME/bin/parmchk -i ligand_w_H.mol2 -f mol2 -o ligand_w_H.frcmod

# Create leap.in file -- note that depending on the ligand different leaprc forcefields may need to be loaded in. Also note that the type of ion added depends on the charge of the ligand-receptor com, and as such Na+ is added to negative coms and Cl- is added to positive coms.
rm leap.in
cat > leap.in << EOF
source leaprc.protein.ff14SB
source leaprc.water.tip3p
source leaprc.gaff
loadamberparams frcmod.ionsjc_tip3p
#LIG=loadmol2 ligand_w_H.mol2
#loadamberparms ligand_w_H.mol2
JIP=loadpdb JIP1.pdb
#com=combine { JIP LIG }
#saveamberparm LIG ligand_w_H.prmtop ligand_w_H.inpcrd
saveamberparm JIP JIP1.prmtop JIP1.inpcrd
#saveamberparm com receptor_ligand.prmtop receptor_ligand.inpcrd
addIons JIP Na+ 0
addIons JIP Cl- 0
#saveamberparm JIP JIP1_ions.prmtop JIP1_ions.inpcrd
solvateOct JIP TIP3PBOX 8.0
saveamberparm JIP JIP1_solv.prmtop JIP1_solv.inpcrd
quit
EOF

# Run leap.in file
$AMBERHOME/bin/tleap -f leap.in

# Generate a 0ns PDB of the simulation you're about to run -- note that this step is not necessary, but is useful for imaging later on
rm cpptraj_inpcrd.in
cat > cpptraj_inpcrd.in << EOF
parm JIP1_solv.prmtop
trajin JIP1_solv.inpcrd

autoimage
strip :WAT:Cl-:Na+
trajout JIP1_0ns.pdb
go
EOF

# Run cpptraj.in file
$AMBERHOME/bin/cpptraj -i cpptraj_inpcrd.in
