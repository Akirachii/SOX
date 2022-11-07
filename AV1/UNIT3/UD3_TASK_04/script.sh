#!/bin/bash
#PAU <3
rc=0
folder=/home/$1/Workspace
folderarray=(config bin source rsrc)
cr=0

if [ $# -le 3 ]; then 
    id | grep -q $1 || rc=1    
    if [ $rc -eq 0 ]; then
        echo "**[CORRECT] -- Valid username"
        if [ $2 = "replenish" ]; then
            if [ -d $folder ]; then
                rm -r $folder
                echo "**[WARNING] -- Folder already exist.. updating*****"
                mkdir $folder
            else
                   mkdir  $folder
                    echo "[CORRECT] -- Folder created**"
            fi
            cd $folder
            for x in "${folderarray[@]}" ; do
                mkdir $x
                cd $x
                touch sample.txt
                cd ..
            done

        elif [ $2 = "test" ]; then
            if [ $# -eq 3 ]; then
                if [ -e $3 ]; then
                    test $3 || cr=1 
                    if [ $cr -eq 0 ]; then
                        echo "**[CORRECT] -- The folder given does exist"                        
                        if [ -r $3 ]; then
                            echo "**[CORRECT] -- The folder is readable"
                        else
                            echo "**[WARNING] -- The folder does not have read permissions"
                        fi
                    else
                        echo "**[WARNING] -- The folder given does not exist"
                    fi
                else
                    "**[WARNING] -- Unexpected input or it doesn-t exist"
                fi
            else
                echo "**[WARNING] -- Unexpected input"
            fi

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
