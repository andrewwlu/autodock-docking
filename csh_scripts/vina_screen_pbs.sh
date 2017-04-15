#! /bin/bash

for f in ligand_*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    j=${b}.job
    d=`pwd`
    mkdir -p $b
    echo "#! /bin/bash" > $j
    echo "cd $d" > $j
    echo "vina --config conf.txt --cpu 1 --ligand $f --out ${b}/out.pdbqt --log ${b}/log.txt &gt ${b}/stdout 2&gt ${b}/stderr" >> $j
    chmod +x $j
    qsub -l cput=00:30:00 -l nodes=1:ppn=1 -l walltime=00:30:00 -l mem=512mb $j
done
