Description
Analyze how gene expression changes across different lifecycle stages and compare differential gene expression between cells from blood and cerebrospinal fluid (CSF).

Introduction
This project investigates differential gene expression across various biological contexts.
In Session 1, it explores how gene expression varies between different lifecycle stages and between cells from blood and cerebrospinal fluid (CSF). It includes read alignment, visualization, and differential expression analysis using DESeq2. 
In Session 2, it focuses on comparing gene expression between glioma tissues and glioma cell lines, leveraging STAR for alignment and DESeq2 for statistical analysis.

Methods and Steps

Project 1: Gene Expression Analysis Across Lifecycle Stages and Between Blood / CSF Cells
1.Sample Selection: Choose appropriate samples for differential expression analysis.
2.Reference Genome Preparation: Download a suitable genome (e.g., Tb927_01_v5.1) and index it.
3.Read Visualization: Use IGV or SeqMonk to visualize the distribution of mapped reads across chromosomes.
4.Read Counting: Use htseq-count to quantify the number of reads mapped to each gene.
5.Differential Expression Analysis:
  Use DESeq2 in Rstudio for statistical analysis
  Create a sample table with metadata (sampleName, fileName, condition)
  Generate a clustered heatmap and PCA plot to evaluate sample quality

Project 2: Differential Gene Expression in Human Glioma Tissue vs Glioma Cell Lines
1.Download Reference Genome: Obtain the GRCh38 human genome and annotation (GTF format) from Ensembl.
2.Build Genome Index: Use STAR to build an index for the reference genome.
3.Align Samples: Align each RNA-seq sample to the genome using STAR, and output gene count files (ReadsPerGene.out.tab).
4.Differential Expression Analysis:
  Format the expression data as a count matrix
  Use DESeq2 in R (via DESeqDataSetFromMatrix) to perform differential analysis
  Visualize and interpret the results

Software and tools
