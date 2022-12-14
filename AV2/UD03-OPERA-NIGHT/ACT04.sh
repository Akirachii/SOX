#!/bin/bash
#pau <3

initialfolder="/srv/sox"
folderarray=(Gallop Carmina 1812)
instruments=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)


read -p "do you wanto to make sure users are created?[yes/no]" ans
if [ $ans = "yes" ]; then
        /bin/bash ../ORCHEST-NIGHT/ACT03.sh
fi


for x in "${folderarray[@]}" ; do
	mkdir -p $initialfolder/$x

	for y in "${instruments[@]}"; do
		cd $initialfolder/$x
		echo "this is $y" > $y.txt
		chown $y $y.txt
		chmod u+rw $y.txt	

		if [ $x = "Gallop" ]; then
			ins=$(cat /etc/group | grep "strings" | cut -d":" -f4)
			echo $ins | tee cello.txt viola.txt fiddle.txt doublebass.txt >> /dev/null
			
		elif [ $x = "Carmina" ]; then
			ls -t $initialfolder/$x >> conductor.txt
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
	setfacl -R -m u:conductor:rwx $x
	chmod g+rxw ../*
        cd ..

#	if [ $x = "Gallop" ]; then
#		cd $initialfolder/$x
#	fi	


done	
