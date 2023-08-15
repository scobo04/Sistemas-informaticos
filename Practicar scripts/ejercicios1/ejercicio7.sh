#!/bin/bash

# 7. Escribe un script que acepte un número como argumento y verifique 
#    si es par o impar.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

numero=$1;

if test `expr $numero % 2` -eq 0
then
	echo "Es par";
else
	echo "Es impar";
fi;

exit 0;
