#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		name=`echo $line | cut -d"," -f8 | head -n1 | grep ^"f"`
		named=`echo $line | cut -d"," -f8 | head -n1 | grep ^"f" | wc -w`
		if [ $named -ge 1 ]; then
			id=`echo $line | cut -d"," -f1 | head -n1`
			let idnum=$id%2
			plant=`echo $line | cut -d"," -f9`
			let idnum2=$id%6
			if [ $idnum -eq 1 ]; then
				#let idnum2=$id%6
				echo $id "-->" $name "-->" $plant "(case: odd number)"
			elif [ $idnum2 -eq 0 ]; then
				echo $id "-->" $name "-->" $plant "(case: natural divisor)"
			fi
		fi


	done < $fichero

else
	echo "The file does not exist "
fi



exit 0
