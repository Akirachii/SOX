#!/bin/bash
#author=pau <3

folderarray=(green yellow red pirates)
basicfolder=/mnt/bgg/friday

if [ -d $basicfolder ]; then
	rm -r $basicfolder
	mkdir -p $basicfolder
	echo "folder re-initiated"
else
	echo "FOLDER NON EXISTING*******[INITIATING]"
	mkdir -p $basicfolder
fi

for x in "${folderarray[@]}" ; do
	mkdir -p /mnt/bgg/friday/level-$x
	mount 192.168.1.12:/srv/friday/level-$x  /mnt/bgg/friday/level-$x
done

exit 0
