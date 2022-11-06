#!/bin/bash
#PAU GRA <3
rc=0
path=$1

echo $path | grep -q ^"/" || rc=1

if [ $rc -eq 0 ]; then
    echo "This is an absolute path"


fi




