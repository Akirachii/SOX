#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		#IDENTIFY VARIABLES
		username=`echo $line | cut -d"," -f8`
		name=`echo $line | cut -d"," -f2 |  head -n1`
		email=`echo $line | cut -d"," -f4`
		emailcount1=`echo $email | cut -d. -f2`
		emailcount2=`echo $email | cut -d. -f3 | wc -w`
		if [ $emailcount2 -gt 0 ]; then
			echo $name "-->" $username
		fi
	done < $fichero


else
	echo "Fichero no ta uwu"
fi
exit 0
