#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA_EXAM.csv"

if [ -f $fichero ]; then

cat $fichero | while read line; do
	id=`echo $line | cut -d, -f1`
	movies=`echo $line | cut -d, -f5`
	numword=`echo $line | tr -s "|" " " | wc -w`
	if [ $numword -ge 2 ]; then
		let x=$id%2
		let y=$id%3
		if [ $x -eq 1 -a $y -eq 1 ]; then
			echo $id "----->" $movies
		fi
	fi

done
fi



exit 0
