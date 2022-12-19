#!/bin/bash
#pau <3
file="chart.csv"
types=(Attacking Normal Fire Water Electric Grass Ice Fighting Poison Ground Flying Psychic Bug Rock Ghost Dragon Dark Steel Fairy)

if ! [ $# -eq 2 ]; then
	echo "**[WARNING]** wrong input"
fi	

if [ -e $file ]; then
	rm -r $file
	wget -q https://raw.githubusercontent.com/zonination/pokemon-chart/master/chart.csv
else
	wget -q https://raw.githubusercontent.com/zonination/pokemon-chart/master/chart.csv
fi
num=0
for x in "${types[@]}" ; do
	if ! [ $x = $2 ]; then
		let num=num+1
	elif [ $x = $2 ]; then
		let num=num+1
		igual=$(cat $file | cut -d"," -f1,$num | grep -w $1 | cut -d, -f2)
		echo "Modificador de ataque " $igual
	fi	
		

done	





