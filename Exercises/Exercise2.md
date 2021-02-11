# HANDS-ON SESSION: Using modules

login to C2

> ssh username@ssh.computerome.ku.dk

start iqsub for 2h, 2 CPU, 0 GPU, 20G of memory

> iqsub

load the tools

> module load tools


Bcl2fastq is a tool for genomics, converting bcl2 files into fastq files.
Load bcl2fastq/2.19.1 and check the help for this software 

> module avail bcl2
>
> module load bcl2fastq/2.19.1
>
> bcl2fastq --help

Samtools is another tool used for exploring genomics data. 

1. Is samtools available on C2?
2. Can you load a version?
3. Explore the help?


Some more explorations:
1. Can you start R?
2. Can you get the help information on R? 
3. Can you start python (HINT: python is handled by anaconda packages)?
4. What python packages are available (HINT: conda list)?

