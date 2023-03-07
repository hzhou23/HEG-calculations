#!/bin/bash
#SBATCH -N 4
#SBATCH -C haswell
#SBATCH -q regular
#SBATCH -t 01:00:00
#SBATCH -o 3_dmc

#OpenMP settings:
export OMP_3_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread


#run the application:
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori dmc
