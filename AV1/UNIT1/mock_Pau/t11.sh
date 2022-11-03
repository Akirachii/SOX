#!/bin/bash
#AUTORA= PAU GRADOLI
cat MOCK_DATA.csv | cut -d"," -f5 | grep -v "ip_address" | while read line; do
div=0
s=""
	linea=`echo $line | sed 's/\./ /g'`
	for n in $linea; do
		s+=$(echo "obase=2;$n" | bc)
	done
	#echo $s
	number=`echo $s | tr -d "0" | wc -m`
	let number=number-1
	for s in $(seq $number); do
		let num=$number%$s
		if [ $num -eq 0 ]; then
			let div=div+1
		fi
	done
	if [ $div -eq 2 ]; then
		cat MOCK_DATA.csv | grep $line | cut -d"," -f1,5
	fi
done
exit 0

