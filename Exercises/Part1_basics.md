Computerome 2.0 Users Workshop Exercises
================

 

------------------------------------------------------------------------

### Exercise 1 – Getting started

 

In these exercises you will log in to and move around the Computerome
2.0 Sandbox to get a feel for your environment. First, please check that
you have completed all the steps in the list below:

-   You have access to a **SSH client**, e.g. a terminal. For MobaXterm
    users makes sure you have configured so you can use the two-factor
    authentication system. Please see:
    <https://www.computerome.dk/display/C2W/Getting+Started+-+new+users>
    or  
    <https://www.computerome.dk/display/C2W/Video+Tutorials>

-   You have installed and set up the **Entrust App** on your phone.
    Please see:
    <https://www.computerome.dk/display/C2W/Two-factor+authentication>

-   **IF** you would like to try to log in using the virtual environment
    (optional), you should have the **ThinLinc Client** installed:
    <https://www.computerome.dk/display/C2W/Virtual+Desktop>

Importantly, you should have received an email from the Computerome team
with your **username**.

 

1.  Log in to the Computerome 2.0 Sandbox: ssh
    <username@ssh.computerome.dk>.  
    When you log in the first time you will be asked to change your
    password. You will need your `Entrust app` at hand to get the token
    (code) you need for the authentication step (you may be able to just
    press confirm in the app instead).  
    IF you are using the virtual environment, open `ThinLinc` and make
    sure that the server is set to `desktop.computerome.dk`. Enter your
    username and password. Open a terminal window from the toolbar at
    the top of the window (you can use F8 to minimize the window if you
    would like). Continue to point 2 below.

2.  When you have logged in, use pwd to print your working directory.
    You should be here: `/home/people/username`. Now, check your
    `<project_name>` by typing `id`. Move to your project folder
    `/home/projects/project_name`.

3.  Great success ;-) You are now in your project folder, have a look
    around. Move to your folder in the subdirectory people and make a
    file called: `<your name>Qscript`.

 

------------------------------------------------------------------------

### Exercise 2 - Hands-on Session: Using Modules

 

1.  Login to Computerome 2.0 and move to your user in the `ku_fa`
    project.

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

-   Is `samtools` available on C2?
-   Can you load a version?
-   Explore the help?

1.  Some more explorations:

-   Can you load and start `R`?
-   Can you get the help information on `R`?
-   Can you start `python` (HINT: python is handled by `anaconda`
    packages)?
-   What `python` packages are available (HINT: `conda list`)?
