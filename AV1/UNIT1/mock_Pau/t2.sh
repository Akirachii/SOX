#!/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"

if [ -f $fichero ]; then
	cat MOCK_DATA.csv | grep ".txt" | cut -d"," -f2,4

else
	echo "The file does not exist"
fi

exit 0
