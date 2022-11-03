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
exit 0
