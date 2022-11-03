#!/bin/bash
#AUTORA=PAU GRADOLI <3
#
#ESPECIFICAR VARIABLES, COMAPARANDO SOLO LOS TRES PRIMEROSW DIGITOS DE LA RED Y IP [GUARDAMOS LA  ]
red=`netstat -r | tail -n1 | cut -d"." -f1,2,3`
gateway=`route | tail -n1 | cut -d" " -f1`
ip=`ip a | grep -w inet | tail -n1 | tr -s " " "." | cut -d"." -f3,4,5`

#COMPROBAMOS QUE ESTAMOS EN LA  RED CORRECTA
if [ $ip = $red -o 192.168.5 ]; then
#IF WE FIND OURSELF IN THE CORRECT NETWORK WE WILL PING THE NETWORK'S GATEWAY
	echo "You are in the correct network "
	ping -c5  $gateway
else
#IF WE ARE NOT IN THE CORRECT NETWORK THEN YOU WILL BE NOTIFIED
	echo "You are not in the same network"
fi
exit 0
