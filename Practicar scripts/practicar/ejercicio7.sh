#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

numero=$1;
n=1;
veces=0;

while test $veces -lt $numero
do
	echo $n;
	n=`expr $n + 1`;
	veces=`expr $veces + 1`;
done;

echo "---"

n=1;
veces=0;
while test $veces -lt $numero
do
	echo $n;
	n=`expr $n \* 2`;
	veces=`expr $veces + 1`;
done;

exit 0;
