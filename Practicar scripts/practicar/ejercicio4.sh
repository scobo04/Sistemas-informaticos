#!/bin/bash

# Verfico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

numero=$1;
usuarios=`cat /etc/passwd | sort -k1 | cut -d: -f1 | tail -n$numero`;

echo $usuarios;

exit 0;
