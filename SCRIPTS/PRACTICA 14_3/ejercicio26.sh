#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 1`
then 
	echo "Número de parámetros incorrecto"
  	exit 1
fi

# Buscar ocurrencias por palabra en cada archivo
while read -r linea
do
	for palabra in $linea
	do
		nArchivos=`grep -l -R -w $palabra . | wc -l`;
		echo "$palabra: $nArchivos";
	done
done < $1;

exit 0;