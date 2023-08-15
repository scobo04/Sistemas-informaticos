#!/bin/bash

# 3. Escribe un script que cuente y muestre la cantidad de archivos en 
# un directorio especificado por el usuario.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

directorio=$1;

if `test ! -d $directorio`
then
	echo "$directorio no es un directorio";
fi;

archivos=`find $directorio -type f | wc -l`;

echo $archivos;

exit 0;
