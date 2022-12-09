#!/bin/bash
#paugra
rc=0
origin=/home/akira/Desktop/akira/patriarca/
destiny=/home/akira/Desktop/akira/destino

diff -rq $origin $destiny || rc=1

if [ $rc -eq 1 ]; then

    read -p "Do you want to update directories?[yes/no] " ans
        if [ $ans = "yes" ]; then
            rsync -anc $origin $destiny
        else
            exit 0
        fi
fi
exit 0
