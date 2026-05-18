# BIO-410 Final Project

## Background

The viral sequencing samples used in this project were analyzed to determine their evolutionary relationships using phylogenetic analysis. After assembling sequencing reads into contigs, multiple sequence alignment and maximum likelihood phylogenetic methods were used to compare the viral genomes.

The organism analyzed appears to be Hepatitis C virus (HCV), which is an RNA virus that infects the liver and can lead to chronic liver disease, cirrhosis, and liver cancer.

Reference:
Moradpour D, Penin F, Rice CM. Replication of hepatitis C virus. Nature Reviews Microbiology. 2007;5(6):453-463.

## Purpose

The purpose of this project was to assemble viral sequencing reads, align the resulting contigs, and determine the phylogenetic relationships among the six viral samples.

## Methods

Raw paired-end FASTQ sequencing files from six viral samples were provided in the `affan` folder. Next-generation sequencing (NGS) reads were assembled into contigs using the MEGAHIT assembler. The assembled contigs for each sample are contained in the folders `t1_out`, `t2_out`, `t3_out`, `t4_out`, `t5_out`, and `t6_out`.

The resulting contigs were imported into R using the DECIPHER package. Multiple sequence alignment was performed using the `AlignSeqs` function, and the alignment was visualized using `BrowseSeqs` and saved as `alignment.html`. A phylogenetic tree was then generated using maximum likelihood methods in R and saved as `phylogenetic_tree.png`.

MEGAHIT: https://github.com/voutcn/megahit

## Results
Here is the phylogenetic tree:

![Phylogenetic Tree](phylogenetic_tree.png)
The phylogenetic tree showed evolutionary relationships among the six viral samples. Samples 2, 3, and 7 clustered closely together, indicating they are more genetically similar and likely more closely related. Samples 1 and 8 also grouped together, while samples 4, 5, and 6 appeared more distinct. Based on the clustering patterns, the samples likely came from multiple different viral lineages or individuals rather than a single identical source population.
