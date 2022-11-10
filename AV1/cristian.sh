#!/bin/bash
#AUTHOR=PAU GRADOLI <3

intimelanguaje=$(setxkbmap -query | grep layout | tr -s ' ' | cut -d ' ' -f2)

if [ $intimelanguaje = "es" ]; then

    setxkbmap us


else

    setxkbmap es

fi
