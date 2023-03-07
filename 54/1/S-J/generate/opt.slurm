#!/bin/bash
#SBATCH -N 4
#SBATCH -C haswell
#SBATCH -q regular
#SBATCH -t 00:30:00
#SBATCH -o NUM_iter_opt

#OpenMP settings:
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread


#run the application:
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt10
wait
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt20
wait
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt30
wait
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt40
wait
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt50
wait
srun -n 128 -c 1 --cpu_bind=cores qwalk-cori opt60
