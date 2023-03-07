#!/bin/bash
rm optdata
for i in 10 20 30 40 50 60
do
	gosling-cori opt$i.log > tmp
	grep 'total_energy0' tmp | awk '{print $2,$4,$6}' >> optdata
	rm tmp 
done

