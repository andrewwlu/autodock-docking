# autodock-docking

Andrew Lu  
  
Molecular docking with Autodock Vina  
  
Required tools  
-openbabel  
-MGLTools  
-Autodock Tools (adt)  
-Autodock Vina  
    
PROCESS LIGAND INPUT FILES  
1. Download ligand dataset (Zinc preferably, in 3D mol2 format)  
1b. If ligands are not from Zinc: convert 2D to 3D files with openbabel --gen3d   
2. Split multimolecule file into seperate PDB files with openbabel (https://openbabel.org/wiki/Tutorial:Basic_Usage)  
3. use MGLTools/utilities24/prepare_ligand4.py to convert PDB to Autodock specific file format, PDBQT  
   
PROCESS RECEPTOR INPUT FILE   
-long process using Autodock Tools (adt, a GUI for Autodock4), look at Autodock    
-remove crystallized waters, add all Hydrogens...etc   
   
PREPARE TO DOCK- Conf.txt   
-contains all parameters for docking such as search exhaustiveness...etc   
-also contains parameters for search box that specifies center of search in x,y,z coordinates as well as size of search box in angstroms     
    
TO DOCK- LOCAL WORKSTATION (Ubuntu 16.04):    
-run my script vina_screen.sh (originally downloaded from Autodock Vina developers, modified to include time remaining, elapsed...etc calculations to keep track of docking times)      
     
TO DOCK- LINUX CLUSTER
"PBS Cluster: If you have a Linux Beowulf cluster, you can perform the individual dockings in parallel. Run this shell script (included in my scripts folder,vina_screen_pbs) to do it. The script assumes that vina and qsub are in your PATH. Otherwise, modify it accordingly.Once the jobs have been scheduled, you can monitor their status with qstat -u `whoami`" 
http://vina.scripps.edu/manual.html#screening


 
  
