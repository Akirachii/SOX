#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"

if [ -f $fichero ]; then
	echo "File  :  Username"
	sleep 0.5
	cat $fichero | grep -i ".gif" | cut -d"," -f7,8
else
	echo "The file does not exist"
fi




exit 0

