#!/bin/bash
#
#
wget -q tic.ieslasenia.org/bucle.csv
MACS=$(cat bucle.csv | cut -d " " -f2 | sort -u)
macs=$(echo $MACS)
for i in $macs; do
    rm -rf Mac
    cat bucle.csv | grep $i >> Mac
    PrimerLine=$(cat Mac | sed -n '1p')
    contador=$(cat Mac | grep -c "$PrimerLine")
    archivo=$(cat Mac | wc -l)
#    echo '1d'$contador'2e'$archivo
    if ! [ $contador -eq $archivo ]; then
        rm -f prueba
	echo $PrimerLine | cut -d " " -f1
        echo "**** ALERTA *****"
        echo "*** "$i" Es la repetida***"
	rm -rf Mac
#        exit 0
    fi
done
exit 0
