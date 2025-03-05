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


conda activate bowtie2

#create sam files for each individual sample
bowtie2 -q -x Tbrucei -U Blood1_trimmed.fq.gz -S Tbrucei_b1.sam 

#bowtie2 -q -x Tbrucei -U Blood2_trimmed.fq.gz -S Tbrucei_b2.sam

#bowtie2 -q -x Tbrucei -U Blood3_trimmed.fq.gz -S Tbrucei_b3.sam

#bowtie2 -q -x Tbrucei -U Blood4_trimmed.fq.gz -S Tbrucei_b4.sam

#bowtie2 -q -x Tbrucei -U Blood5_trimmed.fq.gz -S Tbrucei_b5.sam

conda deactivate
