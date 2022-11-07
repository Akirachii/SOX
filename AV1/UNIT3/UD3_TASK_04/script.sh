#!/bin/bash
#PAU <3
rc=0
folder=/home/$1/Workspace

if [ $# -eq 2 ]; then 
    id | grep -q $1 || rc=1    
    if [ $rc -eq 0 ]; then
        echo "**[CORRECT] -- Valid username"
        if [ $2 = "replenish" ]; then
            if [ -d $folder ]; then
                rm -r $folder
                echo "aaaaaa"
            else
                   mkdir  $folder
                    echo "folder created"
            fi
     





        elif [ $2 = "test" ]; then
            echo "test selected"
        elif [ $2 = "clean" ]; then
            echo "clean selected"
        else
            echo "**[WARNING] -- Unexpected input" 
        fi   
    else
        echo "**[WARNING] -- The user given does not exist"
    fi
else
    echo "**[WARNING] -- Unexpected input"
fi



exit 0
