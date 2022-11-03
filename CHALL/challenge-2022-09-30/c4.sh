#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA_EXAM.csv"
if [ -f $fichero ]; then

	cat $fichero | while read line; do
	id=$(echo $line | cut -d, -f1 )
	sys=$(echo $line | cut -d, -f8)
	ip1=$(echo $line | cut -d, -f4)
	ip2=$(echo $line | cut -d, -f6)

	#echo $id $sys $ip1 $ip2
	sleep 1
	if []; then

	echo $line | grep -w $id
	
	done





fi
exit 0
