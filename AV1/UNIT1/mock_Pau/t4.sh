#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"

if [ -f $fichero ]; then
	while read line; do
		#num=`echo $line | cut -d"," -f9  | wc -w`
		#echo $num
		#echo $line
		flower=`echo $line | cut -d"," -f9 | head -n1`
		num=`echo $flower | wc -w`
		#sleep 1
		if [ $num -eq 3 ]; then
			fin=`echo $line | cut -d"," -f2,9`
			echo $fin
			sleep 0.5
		fi
	done < $fichero

else
	echo "The file does not exist "
fi


exit 0
