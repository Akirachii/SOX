#!/bin/bash
#AUTORA=PAU GRADOLI
#
nums=$1
forma=$2
rc=0
#Thebas=13
#Delphi=17
#Sparta=20
if [ $forma = "Thebas" ]; then
	let ra=$nums/13
        let rc=$nums%13
        echo $ra" phalaunx could be formed."
elif [ $forma = "Delphi" ]; then
	let ra=$nums
        let rc=$nums%17
        echo $ra" phalaunx could be formed."
elif [ $forma = "Sparta" ]; then
	let ra=$nums/20
	let rc=$nums%20
	echo $ra" phalaunx could be formed."
fi
#IF THE PHALANX ARE IDENTIFIED THE REST MUST BE EXPLORER....OR NOT?
if [ $rc -le 5 ]; then
	echo "You dont have enough explorers sorry :c"
else
	echo "You have $rc explorers"
fi
exit 0
