#!/bin/bash
#PAU <3
rc=0
folder=/home/$1/SolarSystem
folderarray=(Mercury Venus Mars Jupiter Saturn Uranus Neptune)
cr=0
idk=0
date=$(date +"%Y%m%d")
hour=$(date +"%H%M")

if [ $# -le 3 ]; then 
     cat /etc/group | grep $1 > /dev/null 2>&1 || rc=1 
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
                if ! [ $x = "Saturn" ]; then 
                    cd $x
                    touch control-planet.txt
                    cd ..
                elif [ $x = "Saturn" ]; then
                    cd $x
                    if ! [ -z "$3" ]; then
                        touch $1-$date-$hour.txt
                        echo $3               
                    else
                        echo "**[WARNING] -- 3rd Argument in incorrect expression"                    

                    fi
                    cd ..
                 fi
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
            if [ $# -eq 3 ]; then
                if [ -e $3 ]; then
                    if [[ "$(find ~ -type  d -wholename "$HOME/Solar*" | wc -l)" -gt "0" ]]; then
                        test $3 || idk=1 
                        if [ $idk -eq 0 ]; then
                            rm -r $3                       
                            echo "**[CORRECT] -- The folder selected has been erased"
                        else
                            echo "**[WARNING] -- The folder does not exist"
                        fi
                    fi
                fi
            else
                echo "**[WARNING] -- Unexpected input"
            fi




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





exit 0
