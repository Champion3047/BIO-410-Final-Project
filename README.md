# BIO-410 Final Project

## Background

The viral sequencing samples used in this project were analyzed to determine their evolutionary relationships using phylogenetic analysis. After assembling sequencing reads into contigs, multiple sequence alignment and maximum likelihood phylogenetic methods were used to compare the viral genomes.

The organism analyzed appears to be Hepatitis C virus (HCV), which is an RNA virus that infects the liver and can lead to chronic liver disease, cirrhosis, and liver cancer.

Reference:
Moradpour D, Penin F, Rice CM. Replication of hepatitis C virus. Nature Reviews Microbiology. 2007;5(6):453-463.

## Purpose

The purpose of this project was to assemble viral sequencing reads, align the resulting contigs, and determine the phylogenetic relationships among the six viral samples.

## Methods

Raw paired-end FASTQ sequencing files were assembled into contigs using MEGAHIT. The resulting contigs from each sample were imported into R using the DECIPHER package. Multiple sequence alignment was performed using the AlignSeqs function, and the alignment was visualized using BrowseSeqs. A phylogenetic tree was then generated using maximum likelihood analysis in R.

## Results

The phylogenetic tree showed evolutionary relationships among the six viral samples. Some samples clustered more closely together, indicating greater sequence similarity and a closer evolutionary relationship. The analysis successfully produced a phylogenetic tree from the assembled viral contigs, allowing comparison between all samples.