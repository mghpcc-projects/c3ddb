#!/bin/bash

#Select defq queue 
#SBATCH -p defq

#Output file
#SBATCH -o defq_p_ex.%N.%j.out

#Error/log file
#SBATCH -e defq_p_ex.%N.%j.err

#Job Name
#SBATCH --job-name=defq_parallel_example

#Time Limit
#SBATCH --time=00:20:00

#Single task
#SBATCH --ntasks=1

#Number of CPUs per task
#SBATCH --cpus-per-task=4

#SBATCH --mem=1gb

pwd; hostname; date

module load c3ddb/openmpi/3.1.3 

echo "Running random number generation  on $SLURM_CPUS_ON_NODE CPU cores"

./parallel

date
