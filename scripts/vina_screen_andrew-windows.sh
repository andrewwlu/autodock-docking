#! /bin/bash
counter=0
time_total=0
input_files=C:/Users/Andrew/Desktop/autodock/andrew-MOR-dock-vina1
mkdir docking_results




for f in $input_files/ligands/ligand*.pdbqt; do

    counter=$((counter+1))
    SECONDS=0 

    b=`basename $f .pdbqt`    
    echo Processing ligand $b
    mkdir -p $input_files/docking_results/$b
    echo "$b"
    
   "C:\Program Files (x86)\The Scripps Research Institute\Vina\vina.exe" --config $input_files/conf.txt --ligand $f --out $input_files/docking_results/$b/out.pdbqt --log $input_files/docking_results/$b/log.txt
    
    echo "$counter / 10453 ligands completed"
    

    time=$SECONDS
    time_total=$(($time_total+$time))
    avg=$(($time_total/counter))
    time_till_completion=$(($avg * (10453-$counter)))
    echo "It took $time seconds to complete this task | $(($time_till_completion/60/60)) hours left to completion (avg of $avg seconds), $(($time_total/60/60)) hours done so far"

done
