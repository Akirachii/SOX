#!/bin/bash
#AUTORA=PAU GRADOLI
#
find=$1
#CHECKING ONE BY ONE FOR A WORD
lsd=`ls -l $HOME | cut -d" " -f9 | grep -i $find`
for x in $lsd; do
	if [ -z $x ]; then
		echo "[ 404 ** NOT FOUND ]"
	else
		echo "Found: "$x
	fi
done
