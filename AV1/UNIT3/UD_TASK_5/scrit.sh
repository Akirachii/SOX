#!/bin/bash
#pau
rc=0
mount | grep "client/lan"
mount | grep "client/todos" || rc=1

if [ $rc -eq 0 ]; then
	logger "Client/all is mounted"
else
	logger "Client/all is not mounted"
fi

if [ $rc1 -eq 0 ]; then
	logger "Client/Lan is mounted"
else
	logger "Client/Lan is not mounted"
fi
exit 0
