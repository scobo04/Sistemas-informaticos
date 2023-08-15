#!/bin/bash

# Verifico que el número de parámetros sea el correcto
if `test $# -ne 3`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

segundos=$1;
archivo_directorio=$2;
nLinks=$3;


sleep $segundos;

if `test -e $archivo_directorio`
then
	echo "Existe"
else
	echo "El archivo o directorio no existe"
fi;

# la ls -d no muestra el contenido del directorio
for linea in `ls -l | cut -d" " -f2 | tail -n +2`
do
	if `test $linea -gt $nLinks`
	then
		echo "$linea excede la cantidad máximo de links"
		# FALTA MOSTRAR EL NOMBRE DEL ARCHIVO
	fi;
done;

exit 0;




