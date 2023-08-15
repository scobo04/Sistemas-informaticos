#!/bin/bash

# 5. Escribe un script que recorra todos los archivos en un directorio 
# y muestre solo los nombres de los archivos regulares (no directorios).

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

directorio=$1;

if `test ! -e -d $directorio`
then
	echo "Introduce un directorio válido";
fi;

archivos=`find $directorio -type f |` # CORREGIR

exit 0;
