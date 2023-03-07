#!/bin/bash
#SBATCH -N 4
#SBATCH -C haswell
#SBATCH -q debug
#SBATCH -t 00:30:00
#SBATCH -o 0_iter_opt

#OpenMP settings:
export OMP_0_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread


#run the application:
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt30
