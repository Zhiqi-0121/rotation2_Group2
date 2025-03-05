
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

bowtie2 -q -x Tbrucei -U Blood1_trimmed.fq.gz, Blood2_trimmed.fq.gz, Blood3_trimmed.fq.gz, Blood4_trimmed.fq.gz, Blood5_trimmed.fq.gz -S TbrieBlood1_trimmed.fq.gz  Tbrucei.sam

conda deactivate
