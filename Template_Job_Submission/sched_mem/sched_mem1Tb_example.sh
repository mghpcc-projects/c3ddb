#!/bin/bash

#Select sched_mem1TB queue 
#SBATCH -p sched_mem1TB

#Output file
#SBATCH -o sched_ex.%N.%j.out

#Error/log file
#SBATCH -e sched_ex.%N.%j.err

#Job Name
#SBATCH --job-name=sched_mem1TB_example

#Time Limit
#SBATCH --time=00:20:00


pwd; hostname; date

nvidia-smi

date
