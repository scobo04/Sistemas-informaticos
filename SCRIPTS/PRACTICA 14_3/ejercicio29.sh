#!/bin/bash

# Verificar que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "El número de parámetros es incorrecto"
	exit 1
fi;

tamanyo=$1;

# Recorro los archivos del directorio actual
for archivo in ./*
do
	if `test -f $archivo`
	then
		# Saco el tamaño de cada archivo y comparo con el parámetros
		tamanyoArchivo=`du -b $archivo | cut -f1`;
		if `test $tamanyoArchivo -ge $1`
		then
			echo $archivo;
		fi
	fi
done;

exit 0;
