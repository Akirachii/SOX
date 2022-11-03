#!/bin/bash
#AUTORA=PAU GRADOLI <3
ip=$(ip a | grep dynamic | tr -s " " "/" | cut -d/ -f3)
var=$(vboxmanage list natnets | grep "NetworkName" | tr -s " " | cut -d" " -f2)
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
