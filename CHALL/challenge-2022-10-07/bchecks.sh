#!/bin/bash
#AUTORA=PAU GRADOLI <3
#
list=$(VBoxManage list vms | cut -d "\"" -f2)
ip=$(ip a | grep dynamic | tr -s " " "/" | cut -d/ -f3)
for n in $list; do
	echo "[***" $n "**********************************************************************************************]"
	vboxmanage showvminfo $n | grep "NIC" | grep "Cable" | tr -s " " | cut -d, -f1,2,3
	sleep 1

done
	var=$(vboxmanage list natnets | grep "NetworkName" | tr -s " " | cut -d" " -f2)
echo "**************************************************************************************************"
for x in $var; do
		puerto=$(vboxmanage list natnets | grep -A 10 -w $x | grep $ip | cut -d: -f6)
		if  ! [ -z $puerto  ]; then
			red=$(vboxmanage list natnets | grep -A 10 -w $x | grep "NetworkName")
			echo "Active ports"
			echo "$red"
			echo "Puerto Activo: <"$puerto">"
		fi
done



exit 0
