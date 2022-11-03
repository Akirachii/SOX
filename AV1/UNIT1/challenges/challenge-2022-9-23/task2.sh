#!/bin/bash
#=AUTORA= PAU GRADOLI
#
#
fichero="TheHistoryofthePeloponnesianWar.txt"
name=$1
if [ -f $fichero ]; then
	#CHECK THE EXISTANCE OF THE FILE
	numcoinc=`cat $fichero | grep -ic $name`
	echo "The number of occurences is" $numcoinc
	#START THE CHECK ON THE LEVEL BY NUMBER
	if [ $numcoinc -eq 0 ]; then
		echo "Level : Ourea"
	elif [ $numcoinc -gt 0 -a $numcoinc -lt 12 ]; then
		echo "Level : Tartarus"
	elif [ $numcoinc -gt 12 -a $numcoinc -lt 30 ]; then
		echo "Level : Hemera"
	elif [ $numcoinc -gt 30 -a $numcoinc -lt 100 ]; then
		echo "Level : Nyx"
	elif [ $numcoinc -gt 100 -a $numcoinc -lt 300 ]; then
		echo "level : Chronos"
	elif [ $numcoinc -gt 300 ];then
		echo "level : Chaos"
	fi

fi


exit 0
