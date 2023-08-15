#!/bin/bash

# Verifico que el número de parámetros sea el correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;


archivoParametro=$1;

if `test -e $archivoParametro`
then
	for archivo in ./*.gz
	do
		gzip -d $archivo
		echo "$archivo es gz"
	done;
else
	echo "El archivo no existe"
fi;

if `test -e $archivoParametro`
then
	for archivo in ./*.bz2 # NO UBICA LOS ARCHIVOSS .bz2
	do
		bzip2 -d $archivo
		echo "$archivo es bz2"
	done;
else
	echo "El archivo no existe"
fi;

# BUSCAR MANERA PARA OTROS TIPOS DE ARCHIVOS O DIRECTORIO



#if `test $archivo == "/*.gz"`
#then
#	echo "Es gz o bz2";
#fi;

exit 0;
