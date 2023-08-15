#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

interprete=`cat /etc/passwd | cut -d: -f7 | sort | uniq -c | sort -rn | 
head -n1 | tr -s " " | cut -d" " -f3`;

echo $interprete;

exit 0;
