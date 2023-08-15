#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 2`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

directorio=$1;
palabra=$2;
j=0;

# Compruebo si es un directorio
if `test ! -d $directorio`
then
	echo "Error: $directorio no es un directorio"
fi;

# Iterar cada archivo del directorio
for archivo in $directorio/*
do
	# Compruebo si es un archivo
	if `test -f $archivo`
	then
		# Buscar y contar ocurrencias
		ocurrencias=`cat $archivo | grep -o $palabra $archivo | wc -l`;
		echo "El archivo $archivo tiene $ocurrencias ocurrencias de la palabra $palabra";
		j=`expr $j + $ocurrencias`;
	fi
done

echo "Hay $j ocurrencias de la palabra $palabra en los archivos del directorio $directorio"

exit 0;
