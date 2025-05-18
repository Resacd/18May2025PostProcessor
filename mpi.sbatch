#!/bin/bash

#SBATCH --partition=batch
##SBATCH --exclusive
#SBATCH -n 1                        
#SBATCH --mem=100000             

source ~/.bashrc
module load icc/20.4
module load openmpi/4.1.2

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun ./a.out
