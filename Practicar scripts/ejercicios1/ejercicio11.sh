#!/bin/bash

# 11. Escribe un script que acepte un directorio como argumento y 
# muestre un informe que incluya la cantidad total de archivos, la 
# cantidad de archivos regulares y la cantidad de directorios en ese 
# directorio y todos sus subdirectorios.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

directorio=$1;

for archivo in ./$diretorio/*
do
	total_cantidad=`expr $total_cantidad + 1`;
	
	if `test -f $archivo`
	then
		total_cantidad_regulares=`expr $total_cantidad_regulares + 1`;
	else `test -d $archivo`
		total_cantidad_directorios=`expr $total_cantidad_directorios + 1`;
	fi;
done;
echo "Total: $total_cantidad";
echo "Total regulares: $total_cantidad_regulares";
echo "Total directorios: $total_cantidad_directorios";
