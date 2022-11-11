#!/bin/bash
#author=pau gradoli <3
param=$1
path=$HOME/games-paths/friday-for-friday
datetoday=$(date +%I%M%S%d%m%Y)


if [ $# -eq 1 ]; then
	case $param in
        clean)
            rm -r $path
            echo "OLD GAME-FILE ERASED [START YOUR NEW WORLD>>>>>>START]"
        ;;
        start)
            mkdir -p $path
            mkdir -p $path/Start
            touch $path/Start/$datetoday-friday-start.tkn
            echo $datetoday-start >> $path/log.txt
        ;;
        green)
            if [ -d $path/Start ]; then
                mkdir -p $path
                mkdir -p $path/Green-Level
                touch $path/Green-Level/$datetoday-friday-start.tkn
                echo $datetoday-green >> $path/log.txt    
            else
                echo "MISSING STAGE"            
            fi
        ;;
        yellow)
            if [ -d $path/Green-Level ]; then
                mkdir -p $path
                mkdir -p $path/Yellow-Level
                touch $path/Yellow-Level/$datetoday-friday-yellow.tkn
                echo $datetoday-yellow >> $path/log.txt 
            else
                echo "MISSING STAGE"            
            fi
        ;;
        red)
            if [ -d $path/Yellow-Level ]; then
                mkdir -p $path
                mkdir -p $path/Red-Level
                touch $path/Red-Level/$datetoday-friday-red.tkn
                echo $datetoday-red >> $path/log.txt 
            else
                echo "MISSING STAGE"            
            fi
        ;;
        pirates)
            if [ -d $path/Red-Level ]; then
                mkdir -p $path
                mkdir -p $path/Pirates-Level
                touch $path/Pirates-Level/$datetoday-friday-pirates.tkn
                echo $datetoday-pirates >> $path/log.txt 
            else
                echo "MISSING STAGE"            
            fi
        ;;
        skip)
            echo "[ARE YOU STUPID OR WHAT??!]"
        ;;
        end)
            echo "[FINISHED]"
            chmod -x task01.sh
        ;;
        statistics)
            cat $path/log.txt
        ;;
        *)
            echo "[UNEXPECTED INPUT]"
        ;;
    esac
fi

exit 0
