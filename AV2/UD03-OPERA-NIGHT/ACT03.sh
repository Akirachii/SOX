#!/bin/bash
#pau <3

initialfolder="/srv/sox"
folderarray=(Nocturns Fratres Adagio DeProfundis)
instruments=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)


read -p "do you wanto to make sure users are created?[yes/no]" ans
if [ $ans = "yes" ]; then
	/bin/bash ../ORCHEST-NIGHT/ACT02.sh
fi

for x in "${folderarray[@]}" ; do
	mkdir -p $initialfolder/$x

	for y in "${instruments[@]}"; do
		cd $initialfolder/$x
		echo "this is $y" > $y.txt
		chown $y $y.txt
		chmod u+rw $y.txt	


		if [ $x = "Nocturns" ]; then
                	touch -t 197701010000 $y.txt
		
		elif [ $x = "DeProfundis" ]; then
			cat /etc/passwd | grep $y | cut -d: -f3 >> $y.txt
			cat /etc/passwd | grep $y | cut -d: -f4 >> $y.txt

		fi
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
      	setfacl -R -m u:conductor:rwx $initialfolder/$x
      	chmod g+rxw ../*
        cd ..


	if [ $x = "Fratres" ]; then
		chown :orchestra $initialfolder/$x
		chmod g+s $initialfolder/Fratres

	elif [ $x = "Adagio" ]; then
		cd $initialfolder/$x
		mkdir -p onlyconductor
		chown conductor:orchestra onlyconductor
		chmod u+rxw $initialfolder/$x/onlyconductor
		chmod g+s $initialfolder/$x/onlyconductor
		cd ..

	#elif [ $x = "Deprofundis" ]; then

	fi


done

exit 0
