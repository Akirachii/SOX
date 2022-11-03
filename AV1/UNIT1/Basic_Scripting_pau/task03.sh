#!/bin/bash
#AUTORA= PAU GRADOLI
#
#
for x in $(ls -l /usr/bin/ | grep "\->" | cut -d">" -f2 ); do
	#echo "Working with : $x -> message "
	sleep 2
	echo "This is a symbolic link : $x"
done
exit 0
