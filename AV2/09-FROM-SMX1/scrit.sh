#!/bin/bash
#AUTHOR=PAU

min=0
rest=0
div=0
ps -ex | while read line ; do

    if ! [[ $hour =~ ^[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}\:[0-9a-z]{2}$ ]] ; then
        times=$(echo $line | tr -s " " "#" | cut -d# -f4)
        hour=$(echo $times | cut -d: -f1)
        minute=$(echo $times | cut -d: -f2)
        
            echo $hour $minute
        #if [ $min -ge 60 ]; then

            echo "$min=$min+$minute" | bc
            echo "$minute/60" | bc
           
        
        #fi


    fi
done
exit 0
