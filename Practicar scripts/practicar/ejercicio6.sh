#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -eq 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

for i in $*
do
	echo "Hola $i";
done;

exit 0;
