#!/bin/bash
#Pau <3

userarray=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)

grouparray=(metalwind orchestra strings woodwind percussion conductor )
rc=0
ra=0
for x in "${userarray[@]}" ; do
#paswwd is the same as user
	cat /etc/group | grep $x > /dev/null 2>&1 || rc=1
    	if [ $rc -eq 0 ]; then
        	userdel -rf $x 2> /dev/null
        	#
        	#the way to add a pasword (in my script) is to ask openssl to encrypt the word i want 
		useradd -N -m -p $(echo $x | openssl passwd -1 -stdin) -s /bin/bash $x
    	else
        	useradd -N -m -p $(echo $x | openssl passwd -1 -stdin) -s /bin/bash $x
    	fi #2> /dev/null
	for y in "${grouparray[@]}" ; do
        	cat /etc/group| grep $y > /dev/null 2>&1 || ra=1
        	if [ $ra -eq 1 ]; then
            		groupadd -f $y
        	fi
    	done
    	usermod -a -G orchestra $x
done
	gpasswd -M piccolo,clarinet woodwind
	gpasswd -M horn,trunk metalwind
	gpasswd -M fiddle,viola,cello,doublebass strings
	gpasswd -M battery,xylophone percussion
	usermod -g conductor conductor

exit 0
