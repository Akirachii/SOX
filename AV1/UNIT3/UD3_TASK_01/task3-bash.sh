#!/bin/bash
#PAU GRA <3
rc=0
rc1=0
rc2=0
rc3=0
path=$1

function funca () {
    test -w $path || rc1=1
    test -x $path || rc2=1
    test -r $path || rc3=1
}



echo $path | grep -q ^"/" || rc=1

if [ $rc -eq 0 ]; then
    echo "This is an absolute path"
    if [ -e $path ]; then
        echo "It exists"
        funca
        if [ $rc1 -eq 0 -a $rc2 -eq 0 -a $rc3 -eq 0 ]; then
            echo "You can read, execute, and write"
        else
            echo "$rc1 $rc2 $rc3"
            echo "You cant do shit"
        fi
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
