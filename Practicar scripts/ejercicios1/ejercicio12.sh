#!/bin/bash

# 12. Crea un script que recorra recursivamente un directorio y 
# encuentre todos los archivos duplicados basados en su contenido. El 
# script debería mostrar una lista de archivos duplicados encontrados.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

directorio=$1;

for archivo in ./$directorio/**
do
	if `test -f $archivo`
	then
		 for archivoDuplicado in ./$directorio/**
		 do
			contenido=`cat $archivo`;
			contenidoDuplicado=`cat $archivoDuplicado`;
			
			if `$contenido -eq $contenidoDuplicado`
			then
				echo "Tienen el mismo contenido";
				duplicado=`expr $duplicado + 1`;
			fi;
		done;
	fi;
done;


<< COMENTARIO

for archivo in ./$directorio/**
do
	if `test -f $archivo`
	then
		 for archivoDuplicado in ./$directorio/**
		 do
			contenido=`cat $archivo`;
			contenidoDuplicado=`cat $archivoDuplicado`;
			
			if `$contenido -eq $contenidoDuplicado`
			then
				echo "Tienen el mismo contenido";
				duplicado=`expr $duplicado + 1`;
			fi;
		done;
	fi;
done;

COMENTARIO
