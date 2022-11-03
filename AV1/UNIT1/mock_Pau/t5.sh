#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		#IDENTIFY VARIABLES
		ipfull=`echo $line | cut -d, -f5 | grep -v "ip_address"`
		ip1=`echo $line | cut -d, -f5 | grep -v "ip_address" | cut -d. -f1 | tr -s " "`
		username=`echo $line | cut -d, -f8 | head -n1`
			if [ -z $ip1 ]; then
				let rc=1
			else
				#IF THE VARIABLE IS A OR B NOTIFY
				if [ $ip1 -eq 10 ]; then
					echo $username "---->" $ipfull "(clase A)"
				elif [ $ip1 -eq 127 ]; then
					echo $username "---->" $ipfull "(clase B)"

				fi

			fi
	done < $fichero


else
	echo "Fichero no ta uwu"
fi



exit 0
