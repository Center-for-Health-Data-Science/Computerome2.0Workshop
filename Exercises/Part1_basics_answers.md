Computerome 2.0 Users Workshop Exercises
================

 

------------------------------------------------------------------------

### Exercise 1 – Getting started

If you can't login, please ask for help.

------------------------------------------------------------------------

### Exercise 2 - Hands-on Session: Using Modules

 

1.  Login to Computerome 2.0 and move to your user in the `ku_fa`
    project.
    
    `ssh username@ssh.computerome.dk`

2.  Start `iqsub` for **2h, 2 CPU, 0 GPU, 20G** of memory:  
    `iqsub`

3.  Load the tools module and check if you actually loaded it:  
    `module load tools`  
    `module list`

4.  `Bcl2fastq` is a tool for genomics, converting bcl2 files into fastq
    files. Load `bcl2fastq/2.19.1` and check the help for this software:
    `module avail bcl2`  
    `module load bcl2fastq/2.19.1`  
    `bcl2fastq --help`

5.  `Samtools` is another tool used for exploring genomics data:

-   Is `samtools` available on C2? To check that, type `module avail samtools`. You see several versions are available.
-   Can you load a version? `module load samtools/1.11`
-   Explore the help? `samtools --help`

1.  Some more explorations:

-   Can you load and start `R`? `module load intel/perflibs gcc R/4.0.3`
-   Can you get the help information on `R`? `R --help`
-   Can you start `python` (HINT: python is handled by `anaconda`
    packages)? `module avail anaconda` and then `module load anaconda3/4.0.0`
-   What `python` packages are available (HINT: `conda list`)? After you have loaded anaconda, just run `conda list`.
