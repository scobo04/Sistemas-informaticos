#!/bin/bash

# 10. Crea un script que solicite al usuario un número y luego imprima 
# todos los números primos hasta ese número.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

numero=$1;

i=2;

while test $i -le $numero
do
	primo=true;
	
	j=2;
	while test $j -lt $i
	do
		if test `expr $i % $j` -eq 0
		then
			primo=false;
			break;
		fi;
		j=`expr $j + 1`;
	done;
	
	if test $primo = true
	then
		echo $i;
	fi;
	i=`expr $i + 1`;
done;

exit 0;
