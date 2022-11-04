#!/bin/bash
#AUTHOR=PAU GRADOLI
PATHGIVEN=$1

if [[ $PATHGIVEN =~ ^/ ]]; then
    echo "[**THIS IS A CORRECT PATH**]"

    if [ -e $PATHGIVEN ]; then
        echo "[*PATH EXISTS*]"
    else
        echo "[*PATH DOES NOT EXIST*]"
    fi

fi
exit 0
