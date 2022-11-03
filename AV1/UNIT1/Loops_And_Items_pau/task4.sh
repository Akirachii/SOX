#!/bin/bash
#AUTORA=PAU GRADOLI


#CHECKING FOR TWO ARGUMENTS, IF NOT THEN EXIT
if [ $# -lt 1 ]; the
	echo " USAGE : $(basename $0) PATH_TO_FIND ARG2"
	exit 1
fi
#USING THE ARGUMENT AND SEARCH FOR IT, ADVISING THE USER USING $F HAS SOME PART OF $ARG2
for f in $(find ${PATH_TO_FIND} -xtype f); do
	rc=0
	cat ${f} | grep -q ${ARG2} || rc=1
	if [ ${rc} -eq 0 ]; then
		echo " * The file ${f} contains ${ARG2}"
	fi
done

exit 0
