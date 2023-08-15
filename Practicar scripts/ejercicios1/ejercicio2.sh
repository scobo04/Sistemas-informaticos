#!/bin/bash

# 2. Crea un script que acepte dos números como argumentos y los sume.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 2`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

suma=`expr $1 + $2`;

echo $suma;

exit 0;
