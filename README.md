# IMP3_docs
- Folder containing config file and launcher scripts for IMP

## Setup

### Conda

[Conda user guide](https://docs.conda.io/projects/conda/en/latest/user-guide/index.html)

```bash
# install miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod u+x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh # follow the instructions
```

Getting the repository including sub-modules
```bash
git clone git@github.com:susheelbhanu/imp_docs.git
```

Create the main `snakemake` environment

```bash
# create venv
conda env create -f envs/requirements.yaml -n "snakemake"
```

-------------
**Description**
- Below is a list of the files 
- The changes that need to be made are indicated for each file
- `Edit or run` each file in the order listed below, i.e. after #4-editing samples, run #5-launching jobs


1. `IMP_config.yaml`: config file with necessary paths, databases, and parameters for snakemake


2. `launchIMP.sh`: SLURM launcher script for `runIMP.sh`


3. `runIMP.sh`: bash script to launch IMP using snakemake


4. `edit_samples.sh`: bash script to make sample folder, add config.yaml, launchIMP and runIMP scripts and simultaneously edit them


5. `launch_jobs.sh`: bash script to launch multiple samples


-------------
**Changes to be made**
- Below files need to be edited or checked for file paths and database locations
  
-- `IMP_config.yaml`
  1. `forward/reverse` paths in `line 14` for `metaG/metaT`
  2. `outputdir`: path in `line 23`
  3. `summarydir`: path n `line 24`
  4. `filtering`: select from `hg38/PhiX,PhiX174`
  5. `db_path`: ensure access to dbs in `line 30` exist


-- `launchIMP.sh`
  1. Edit the `time`, `N#`, `n#`, and `qos` as needed
  2. For jobs estimated to be longer than `2 days` use the `-qos long` option


-- `runIMP.sh`
  1. Check if access to the `/work/projects/ecosystem_biology/local_tools` is available
  2. 


-- `edit_samples.sh`
  - Note: Run this script from the directory where the individual sample folders will exist


-- `launch_jobs.sh`
  - Prior to running do: `chmod +x launch_jobs.sh` 


