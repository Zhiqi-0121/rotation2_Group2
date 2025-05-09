#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=100g
#SBATCH --time=06:00:00
#SBATCH --job-name=my_job
#SBATCH --output=/share/BioinfMSc/Bill_resources/Tbrucei/fastq/Group2/bash_output/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/Bill_resources/Tbrucei/fastq/Group2/bash_output/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mbxss28@nottingham.ac.uk

source $HOME/.bash_profile

conda activate htseq

python -m HTSeq.scripts.count -a 10 -t exon CSF1trimmed.sam CSF2trimmed.sam CSF3trimmed.sam CSF4trimmed.sam  TriTrypDB-68_TbruceiTREU927.gff > CSF_merged.txt

conda deactivate
