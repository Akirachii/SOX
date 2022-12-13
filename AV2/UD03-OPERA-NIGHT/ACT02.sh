#!/bin/bash
#Pau <3
initialfolder="/srv/sox"
filearray=(Sinfonetta Saturn Unfinished Valkyries)
instarray=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)

read -p "do you wanto to make sure users are created?[yes/no]" ans
if [ $ans = "yes" ]; then
	/bin/bash ../ORCHEST-NIGHT/ACT01.sh
fi


for x in "${filearray[@]}" ; do
	mkdir -p $initialfolder/$x

	for y in "${instarray[@]}" ; do
		cd $initialfolder/$x
		echo "this is $y" > $y.txt
		chown $y $y.txt
		chmod u+rw $y.txt
		chmod o-r $y.txt
		cd ..
	done

	cd $initialfolder/$x
        chown :strings fiddle.txt viola.txt cello.txt doublebass.txt
        chmod g+r fiddle.txt viola.txt cello.txt doublebass.txt
        chown :woodwind piccolo.txt clarinet.txt
        chmod g+r piccolo.txt clarinet.txt
        chown :metalwind horn.txt trunk.txt
        chmod g+r horn.txt trunk.txt
        chown :percussion battery.txt xylophone.txt
        chmod g+r battery.txt xylophone.txt
        chown :conductor conductor.txt
        chmod g+rxw ../*
        cd ..

	if [ $x = "Saturn" ]; then
		cd $initialfolder/$x
		#wind
		chmod g+rw piccolo.txt clarinet.txt
		#wind
		chmod g+rw horn.txt trunk.txt
		cd ..

	elif [ $x = "Unfinished" ]; then
		find . -type f -name "v*" -exec chmod o+x {} \; 
	
	elif [ $x = "Valkyries" ]; then
		echo "The swift Indian bat happily ate cardillo and kiwi, while the stork played the saxophone behind the straw hut..." | tee -a  $initialfolder/Valkyries/*.txt >/dev/null
		setfacl -R -m u:conductor:rxw $initialfolder/Valkyries/*.txt
	
	elif [ $x = "Sinfonietta" ]; then
		cd $initialfolder/Sinfonietta/
		touch TheSilencio.txt
	fi

done
exit 0
