#!/bin/bash
#AUTORA=PAU GTRADOLI
c=0
j=2
for n in $(seq 1 1000); do

    for u in $(seq 1 $j); do

    let num=$j%$u

        if [ $num -eq 0 ]; then
            let c=$c+1
        fi
    done

    if [ $c -eq 2 ]; then
        echo $u
    fi
    let j=$j+1
    c=0
done
exit 0
