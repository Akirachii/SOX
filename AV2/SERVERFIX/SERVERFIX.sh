#!/bin/bash 
#FIX 1, ARCHIVO PARA SERVER
#GENERA 2 COLUMNAS DE LA TABLA ARP PARA PODER OPTIMIZAR TIEMPO DE EJECUCION DEL SCRIPT QUE DETECTA LAS MAC CON DIFERENTES IP
ip neigh show | while read line; do
    ip=$(echo $line | cut -d " " -f1)
    mac=$(echo $line | cut -d " " -f5)
    if ! [ -e $mac ]; then
        if [[ $mac =~ ^[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}$ ]]; then
            echo $ip" "$mac >> /var/www/html/bucle.csv
        fi
    fi
done


exit
