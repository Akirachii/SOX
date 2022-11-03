#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA_EXAM.csv"

if [ -f $fichero ]; then
	cat $fichero | while read line; do
		system=`echo $line | cut -d, -f8 | tr -s "_" " "`
		systcount=`echo $system | wc -w`
		if [ $systcount -eq 1 ]; then
			if [  $system -ge 42 ]; then
				id=`echo $line  | cut -d, -f1`
				mail=`echo $line | cut -d, -f3`
				email=`echo $mail | cut -d. -f2`
				#echo $id "------->" $email "------>" $system
				if [ $email = "com" ]; then
					echo $id "------->" $mail "------>" $system
				elif [ $email = "edu" ]; then
					echo $id "------->" $mail "------>" $system
				elif [ $email = "gov" ]; then
					echo $id "------->" $mail "------>" $system
				fi
			fi
		fi
	done

fi

exit 0
