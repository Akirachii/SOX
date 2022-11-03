#!/bin/bash
#AUTORA=PAU GRADOLi
dni="$1"
#WE WILL GO AROUND ALL NUMBERS TO 100 SEARCHING FOR COINCIDENCES
for num in $(seq 1 100); do
rc=0
echo $dni | grep -q $num || rc=1
	if [ $rc -eq 0 ]; then
		((++mas))
		echo " * The number : ${num} is in our DNI number? " $mas
	fi
done
exit 0

exit 0
