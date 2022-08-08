#!/bin/bash -l

export PATH=$PATH:/work/projects/ecosystem_biology/local_tools/bin
export PATH=/work/projects/ecosystem_biology/local_tools/minicondaESB/condabin:/work/projects/ecosystem_biology/local_tools/bin:$PATH
IMPROOT=/work/projects/ecosystem_biology/local_tools/IMP3

THREADS=16
TMPDIR=tmp

conda activate snakemake
export PYTHONNOUSERSITE=True

snakemake --rerun-incomplete -s $IMPROOT/Snakefile --configfile "$sample"_config.yaml -j $THREADS --use-conda --conda-prefix $CONDAROOT/conda --unlock 
snakemake --rerun-incomplete -s $IMPROOT/Snakefile --configfile "$sample"_config.yaml -j $THREADS --use-conda --conda-prefix $CONDAROOT/conda 

