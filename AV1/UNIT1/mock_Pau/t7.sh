#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		#IDENTIFY VARIABLES
		name=`echo $line | cut -d"," -f2 | head -n1`
		email=`echo $line | cut -d"," -f4`
		emailfin=`echo $email | grep ".org"`
		emailcount=`echo $email | grep ".org" | wc -w`
		#IF THE NUMBER OF WORDS AFTER THE FIRST DOMAIN
		if [ $emailcount -gt 0 ]; then
			echo $name "--->" $email
		fi
	done < $fichero

else
	echo "The file does not exist "
fi



exit 0
