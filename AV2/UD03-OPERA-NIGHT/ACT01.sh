#!/bin/bash
#Pau <3
rc=0
initialfolder="/srv/sox"
folderarray=(TheGreatGateOfKiev BlueDanube NewWorldSymphonie TheJazzSuite)
instarray=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)

#here i want to make sure the user isn't stupid and the users/groups are created
/bin/bash ../ORCHEST-NIGHT/PREPARATIONS.sh
cat /etc/group | grep "spectador" > /dev/null 2>&1 || rc=1
if [ $rc -eq 1 ]; then
	useradd -N -m -p $(echo "spectador" | openssl passwd -1 -stdin) -s /bin/bash spectador
else
	userdel -rf spectador 2> /dev/null
	useradd	-N -m -p $(echo "spectador" | openssl passwd -1 -stdin) -s /bin/bash spectador
fi	

groupadd -f spectador
usermod -g spectador spectador


if [ -e $initialfolder ]; then
	rm -rf $initialfolder
fi

for x in "${folderarray[@]}" ; do
	mkdir -p $initialfolder/$x 
	#cd $initialfolder/$x
	
	for y in "${instarray[@]}" ; do
		cd $initialfolder/$x
		echo "this is $y" > $y.txt
		chown $y $y.txt
		chmod u+rw $y.txt
		chmod o-r $y.txt
		#chown :strings fiddle.txt,viola.txt,cello.txt,doublebass,txt
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


done


exit 0
