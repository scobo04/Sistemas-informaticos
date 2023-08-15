#!/bin/bash

# 9. Escribe un script que lea un archivo de texto línea por línea y 
# cuente la cantidad de líneas que contienen la palabra "hola".

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

archivo=$1;

# Buscar ocurrencias de "hola"
coincidencias=`grep "hola" $archivo| wc -l`;
echo $coincidencias;

exit 0;
