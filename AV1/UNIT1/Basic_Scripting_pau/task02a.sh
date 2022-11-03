#!/bin/bash
#AUTORA= PAU GRADOLI
sum=0
for s in $(seq 1 301) ; do
#TO KNOW IF THESE ARE EVEN WE WILL DIVIDE THEM AND IF THE RESULT IS 0, ITS EVEN.
	if [ $(($s % 2 )) -eq 0 ]; then
	#LETS SUM ALL EVEN NUMBERS
		let sum=$sum+$s
	fi
done
echo "**The sum of all evwn numbers is...." $sum
exit 0
