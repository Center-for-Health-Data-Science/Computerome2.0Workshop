#! /bin/sh

bwa mem -t 40 refgenome/canFam31.fasta Canid1.R1.fastq.gz > Canid1.sam
samtools view -b Canid1.sam > Canid1.bam
samtools sort Canid1.bam > Canid1_sorted.bam
samtools index Canid1_sorted.bam


