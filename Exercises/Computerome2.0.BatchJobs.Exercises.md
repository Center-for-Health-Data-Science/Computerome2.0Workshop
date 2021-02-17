Computerome 2.0 Users Workshop Exercises
================

## Batch jobs

Using your experience from earlier exercises, log into computerome 2.0. Get to the login shell. We are going to run a batch job. 

### Setting up
First, we are going to set up so we have all the pieces ready for our test job. First, go into your project directory and navigate to the folder with your username in the people directory. Then let us create a folder called mapping in it, and go into that folder. Remember to substitute your username for `<username>`
```
cd  /home/projects/ku_fa/people/<username>
mkdir mapping 
cd mapping
```
For this we have a test dataset you can use. We are going to do some simple mapping of short read sequence data from dogs to a dog reference genome. Let us link (not copy) the data into our mapping folder. *Links are like __shortcuts__ on windows/mac. See what I mean by looking at the file information.* 
```
ln -s /home/projects/ku_fa/data/C2_test/refgenome .
ln -s /home/projects/ku_fa/data/C2_test/Canid1.R1.fastq.gz . 
# long listing of the files in this directory will show you what links are. 
ls -l
``` 

### Template job script
We will start by using a template job script, which we will modify to our liking to run the mapping. The template script can be found in the ` /home/projects/ku_fa/data/C2_test/` folder. Copy it to the mapping folder into a file called `mapCanid1.sh`. It is the same file from before, from the slides. 
```
cp  /home/projects/ku_fa/data/C2_test/template.sh .
```

For reference, the file looks like this. 
```
#! /bin/bash
### Account information
#PBS -W group_list=ku_fa -A ku_fa
### Job name
#PBS -N jobName
### Error stream
#PBS -e myError.err
### Output stream
#PBS -o myOut.log
### Resource requirements
#PBS -l nodes=XX:ppn=XX,mem=XXgb,walltime=HH:MM:SS
### Working directory
#PBS -d workingDirectory
### Mail on failure
#PBS -m n

### Load modules
module load xxx/version
module load yyy/version

### Run your jobs
job1
job2
```

### Modifying the job script
Now, we will modify the `mapCanid1.sh` script to fit out requirements and commands, before we launch it. 

#### Changing the batch system (PBS) directives
Modify the PBS directives:
-  Change the job name to your liking 
- Change the output and error filenames to your liking.
- Change the resources (give it 1 node, 40 cores, 20gb and 1 hour).
- Change the working directory to the full path of the current directory (Hint: use `pwd` to find the full path.)

#### Loading the correct modules.  
We need two programs for our commands - `bwa` and `samtools`. Find these modules and change the module loading part of the script to load the latest versions of bwa and samtools. (Hint1: The `avail` subcommand of module might help find these tools. Hint2: bwa and samtools submodules in the `tools` module.)

#### Add the jobs we want to run
Replace the placeholders `job1` etc. with these commands.
```
bwa mem -t 40 refgenome/canFam31.fasta Canid1.R1.fastq.gz > Canid1.sam
samtools view -b Canid1.sam > Canid1.bam
samtools index Canid1.bam
```

### Running and monitoring
#### Launching the job 
Use `qsub` to launch the job. Easy as pie. 
```
qsub mapCanid1.sh
```

#### Monitoring the job
Use `qstat` to monitor the job. What information does it give? Find the job id and use `checkjob job_id` to get more information on the job. 

#### Checking the log files
After your job is complete, check your output and error files, to see what it says. Here is where you will find information on how your job went, and error messages if there are any. 

You are good to go - and can happy computing.

### Only for the more adventurous
Let us try the two other methods of launching a job. 
#### PBS options on the command line
Let us try and run the same job, but by specifying the PBS options on the command line. First copy your mapCanid1.sh script to a file called mapCanid2.sh, and then remove all the PBS options. Then, for each PBS option your removed you want to add the part after the `#PBS ` to the options part of the command line. Finally, launch the command. 
My version of it looks like this.
```
qsub -W group_list=ku_fa -A ku_fa -N canid2Map -e canid2.err -o canid2.log -l nodes=1:ppn=40,mem=50gb,walltime=1:00:00 -d /home/projects/C2_test mapCanid2.sh
```

#### Everything on the command line  * *Not recommended for non-expert users* *
Check the last slide of the presentation for more information on this. This is very useful to combine looping constructs with launching multiple jobs.  

----------
#### Happy computing! But remember
 ![](https://i.pinimg.com/originals/eb/70/ce/eb70cefa1f4bbc0799e1b9400beeb03d.jpg) 
----------
 
 
 
