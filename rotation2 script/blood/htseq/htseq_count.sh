#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=100g
#SBATCH --time=06:00:00
#SBATCH --job-name=TB_blood
#SBATCH --output=/share/BioinfMSc/Bill_resources/Tbrucei/fastq/Group2/bash_output/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/Bill_resources/Tbrucei/fastq/Group2/bash_output/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mbxss28@nottingham.ac.uk

source $HOME/.bash_profile

conda activate htseq

python -m HTSeq.scripts.count -a 10 --stranded=yes -t exon Tbrucei_b1.sam TriTrypDB-68_TbruceiTREU927.gff > blood1_htseq.txt

python -m HTSeq.scripts.count -a 10 --stranded=yes -t exon Tbrucei_b2.sam TriTrypDB-68_TbruceiTREU927.gff > blood2_htseq.txt

python -m HTSeq.scripts.count -a 10 --stranded=yes -t exon Tbrucei_b3.sam TriTrypDB-68_TbruceiTREU927.gff > blood3_htseq.txt

python -m HTSeq.scripts.count -a 10 --stranded=yes -t exon Tbrucei_b4.sam TriTrypDB-68_TbruceiTREU927.gff > blood4_htseq.txt

python -m HTSeq.scripts.count -a 10 --stranded=yes -t exon Tbrucei_b5.sam TriTrypDB-68_TbruceiTREU927.gff > blood5_htseq.txt

conda deactivate
