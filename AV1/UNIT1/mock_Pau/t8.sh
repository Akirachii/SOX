#/bin/bash
#AUTORA=PAU GRADOLI
fichero="MOCK_DATA.csv"
if [ -f $fichero ]; then
	while read line; do
		name=`echo $line | cut -d"," -f2 | head -n1`
		named=`echo $name | grep "D"`
		numc=`echo $named | wc -w`
		if [ $numc -gt 0 ]; then
			#echo $named
			idn=`echo $line | cut -d"," -f1`
			let idn2=$idn%7
			if [ $idn2 -eq 0 ]; then
				echo $named
			fi
		fi
	done < $fichero

else
	echo "The file does not exist "
fi

exit 0
