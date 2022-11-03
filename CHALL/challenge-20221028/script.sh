#!/bin/bash
#PAU GRADOLI
date='date +%m-%d'
MOTHERPATH="$HOME/Graves/2022/10-28"
#if the folder already exists.....
if [ -d $MOTHERPATH ]; then
	cd $MOTHERPATH
	if [ $# -ge 1 ]; then
		if [[ "$1" =~ ^[0-9]+$ ]]; then
			if [ $1 -le 32 ]; then
			rm -r $MOTHERPATH/*grave*
				for x in $(seq 1 $1); do
					mkdir "grave-$x"

				done
			fi
		fi

		if [ $2 = "open" ]; then
			xdg-open .
		elif [ $2 = "clean" ]; then
			rm -r $MOTHERPATH/*grave*
		elif [ $2 = "extra" ]; then
			echo "OH NO! ZOMBIES APPEARED!!!"
			mkdir -p  $MOTHERPATH/ZOMBIES
			echo "you're running away"
			sleep 5
			echo "Do you want zombies to disappear?[y/n]"
			read ans
				if [ $ans = "y" ]; then
					rm -r $MOTHERPATH/ZOMBIES
				elif [ $ans = "n" ]; then
					echo "the zombie's flesh is rotten, they'll disappear"
					rm -r $MOTHERPATH/ZOMBIES
				fi
		elif ! [ -z $2 ]; then
			for y in $(seq 1 23); do
				mkdir $MOTHERPATH/grave-$y
				echo "WARNING"
				echo $MOTHERPATH/grave-$y
			done
		fi
	fi

else
mkdir -p $MOTHERPATH

	echo "please re-execute"
fi 2> /dev/null




exit 0
