#!/bin/bash -l

sbatch --time=0-08:00:00 -N1 -n16 -p bigmem --qos normal -J "$sample" ./"$sample".runIMP.sh
