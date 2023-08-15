#!/bin/bash

# 4. Crea un script que verifique si un archivo existe en el sistema. 
# El nombre del archivo debe ser pasado como argumento al script.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

archivo=$1;

if `test -e $archivo`
then
	echo "El archivo $archivo existe";
else
	echo "El archivo $archivo no existe";
fi;
