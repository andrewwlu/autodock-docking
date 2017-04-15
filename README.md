# autodock-docking

Andrew Lu

Molecular docking with Autodock Vina

Required tools
-openbabel
-MGLTools

To dock (Ubuntu 16.04): 

PROCESS LIGAND INPUT FILES
1. Download ligand dataset (Zinc preferably, in 3D mol2 format)
1b. If ligands are not from Zinc: convert 2D to 3D files with openbabel --gen3d 
2. Split multimolecule file into seperate PDB files 
3. use MGLTools/utilities24/prepare_ligand4.py to convert PDB to Autodock specific file format, PDBQT

 
  
