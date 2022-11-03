#!/bin/bash
#PAU GRADOLI
sum=0
con1=0
sal=0
for x in $(seq 1 365); do
	rand1=$(($RANDOM%9+1))
	let rest1=$rand1%3
	let sum=$sum+$rand1


	let llena=$x%28

	if [ $llena -eq 0 ]; then

		echo "SALVADOS POR LA CABRA, SALVADOS POR SHUB-NIGGURATH"
		let sal=$sal+1
	elif [ $rest1 -eq 0 -o $x -eq 1 ];  then
		let con1=$con1+1
		####Sacrificio
	fi


done

echo "Total de sacrificios" $con1
echo "Total de salvados" $sal
echo "Total de cachorros" $sum
