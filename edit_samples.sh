#!/bin/bash -l

# To edit the config.yaml, launchIMP and runIMP scripts for each sample

for i in $(cat sample_list)
do
    # Making the sample directory folder
    mkdir -p "$i"

    # Copy the config.yaml file and edit the sample names
    cp -v IMP_config.yaml "$i"/"$i"_config.yaml
    sed -i "s/\"\$sample\"/"$i"/g" "$i"/"$i"_config.yaml

    # Copy the SBATCH launcher for IMP and edit the sample names
    cp -v /scratch/users/ldenies/cosmic_isolates/launchIMP.sh "$i"/launchIMP.sh
    sed -i "s/\"\$sample\"/"$i"/g" $i/launchIMP.sh

    # Copy the file to run IMP
    cp -v runIMP.sh "$i"/"$i".runIMP.sh
    sed -i "s/\"\$sample\"/"$i"/g" "$i"/"$i".runIMP.sh
done
