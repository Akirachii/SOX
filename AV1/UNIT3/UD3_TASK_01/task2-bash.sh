#!/bin/bash
#PAU GRA <3
rc=0
path=$1

echo $path | grep -q ^"/" || rc=1

if [ $rc -eq 0 ]; then
    echo "This is an absolute path"
    if [ -e $path ]; then
        echo "It exists"
    else
        echo "It doesn-t exist"
    fi
elif [ $rc -eq 1 ]; then
    echo "This is a relative path"
    if [ -e $path ]; then
        echo "It exists"
    else
        echo "It doesn-t exist"    
    fi
fi
