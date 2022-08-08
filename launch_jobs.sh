#!/bin/bash -l

# Script to launch IMP3 for multiple samples
# Note: to be launched from the directory where the individual sample folders exist

for i in $(cat sample_list)
do
    workdir=$PWD
    cd $i
    sbatch ./launchIMP.sh
    cd $workdir
done
