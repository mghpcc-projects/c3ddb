#!/bin/bash

#Select quicktest queue 
#SBATCH -p quicktest

#Output file
#SBATCH -o quicktest_ex.%N.%j.out

#Error/log file
#SBATCH -e quicktest_ex.%N.%j.err

#Job Name
#SBATCH --job-name=quicktest_example

#Time Limit
#SBATCH --time=00:14:59

#Use one CPU
#SBATCH --ntasks=1

pwd; hostname; date

module load c3ddb/python/3.5.2

echo "Running plot script on quicktest queue"

python ./simple_plot.py

date
