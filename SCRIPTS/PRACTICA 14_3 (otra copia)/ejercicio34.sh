#!/bin/bash

# Verifico que el número de parámetros sea el correcto
if `test $# -ne 3`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

nArchivo=$1;
nUsuario=$2;
permiso=$3;

# ls -l | tr -s " " | cut -d" " -f9 | grep ejercicio28.sh

