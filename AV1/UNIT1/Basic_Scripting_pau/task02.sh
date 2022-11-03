#!/bin/bash
#AUTORA= PAU GRADOLI
sum=0
for s in $(seq 1 301) ; do
#LETS SUM ALL NUMBERS
	let sum=$s+sum
done
echo "Your final number is $sum"
exit 0
