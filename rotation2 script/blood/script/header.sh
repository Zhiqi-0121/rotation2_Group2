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

cat Tbrucei.sam | grep -v "^@" |grep "Tb927_01_v5.1" | head -n 100000 >> file.sam
