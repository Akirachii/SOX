#!/bin/bash
#PAU GRADOLI <3
#

rm -rf cards.txt
time=$(date +%H:%M)
root=$(whoami)
fileclient=/mnt/finished
folderserver=/srv/nfs/finished-on-server

if [ $root = root ]; then
    #echo "eres root"
    echo "[**"$time"**]"
    
    if ! [ -e $fileclient ]; then
        echo "doesnt exist"
        mkdir -p $fileclient
        mount -t nfs 192.168.4.254:$folderserver $fileclient
        
    else
        echo "FOLDER SYSTEM MOUNTED"
    
    fi
    ls /mnt/finished/ | sort >> cards.txt
    
    numlinea=$( ls /mnt/finished/ | sort | cut -d- -f2 )
    echo $numlinea
    ls /mnt/finished/ | sort

   
else 
    echo "ERROR INMINENTE"
fi


