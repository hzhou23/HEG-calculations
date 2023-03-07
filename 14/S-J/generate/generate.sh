#!/bin/bash

HOME=`pwd`

for i in 0 1 2 3
do
	echo $i
	cd $HOME/../k$i
	cp $HOME/vmcnoj ./
	cp $HOME/vmcnoj.slurm ./
	cp $HOME/opt.slurm ./
	cp $HOME/vmc ./
	cp $HOME/dmc ./
	cp $HOME/vmc.slurm ./
        cp $HOME/dmc.slurm ./
	sed -i "s/NUM/$i/g" vmcnoj
	sed -i "s/NUM/$i/g" vmcnoj.slurm
	sed -i "s/NUM/$i/g" opt.slurm
	sed -i "s/NUM/$i/g" vmc
	sed -i "s/NUM/$i/g" dmc
	sed -i "s/NUM/$i/g" vmc.slurm
        sed -i "s/NUM/$i/g" dmc.slurm


	for j in 10 20 30 40 50 60
	do
		echo $j
		cd $HOME/../k$i/
		cp $HOME/opt ./opt$j
		sed -i "s/NUM/$i/g" opt$j
		sed -i "s/iter/$j/g" opt$j
	done
done
