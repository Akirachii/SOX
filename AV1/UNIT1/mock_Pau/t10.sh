#!/bin/bash
#AUTORA=PAU GRADOLI
bit=`ip a | grep "dynamic" | tr -s " " "#" | cut -d"#" -f3 | tr -s  "." "/" | cut -d "/" -f4`
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		ipread=`echo $line | cut -d"," -f5 | cut -d"." -f4`
		if [ $bit = $ipread ]; then
			username=`echo $line | cut -d"," -f7`
			ipcomp=`echo $line | cut -d"," -f5`
			echo $username : $ipcomp
		fi

	done < $fichero

else
	echo "The file does not exist "
fi
exit 0
