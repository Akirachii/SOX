#!/bin/bash
#FIX 2, PARA REMOTO
#COMPRUEBA JUNTO CON EL FIX 1 EN SERVIDOR, LAS MAC CON (MULTIPLES) DIFERENTES IP
rm -rf bucle.csv
wget -q tic.ieslasenia.org/bucle.csv
MACS=$(cat bucle.csv | cut -d " " -f2 | sort -u)
macs=$(echo $MACS)
for i in $macs; do
    rm -rf Mac
    cat bucle.csv | grep $i >> Mac
    PrimerLine=$(cat Mac | sed -n '1p')
    contador=$(cat Mac | grep -c "$PrimerLine")
    archivo=$(cat Mac | wc -l)
    if ! [ $contador -eq $archivo ]; then
        compu=0
        rm -f prueba
        IPS=$(cat Mac | cut -d " " -f1 | sort -u )
        IPS=$(echo $IPS | tr -d '\/n')
            
        for x in $IPS ; do
            if ! [[ $x =~ ^[169]{3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
                let compu=1+compu
            fi
        done
        if [ $compu -eq 2 ]; then  
            echo "********[WARNING]************"
            echo "**[Estas dos IP: $IPS trabajan sobre esta MAC  $i]"
            echo 
        fi          
    fi
done
rm -rf Mac
exit 0
