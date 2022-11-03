#!/bin/bash
#AUTORA=PAU GRADOLI <3 
ip=$(ip a | grep dynamic | tr -s " " "/" | cut -d/ -f3)
var=$(vboxmanage list natnets | grep "NetworkName" | tr -s " " | cut -d" " -f2)
for x in $var; do
    puerto=$(vboxmanage list natnets | grep -A 10 -w $x | grep tcp | cut -d: -f6)     
                
    for y in $puerto ; do
        if [ $y -eq 80 ]; then       
            echo "Match!! Apache is connected to $y"
        else
            echo "Other Active Ports are $y"
        fi
    done
done
exit 0
