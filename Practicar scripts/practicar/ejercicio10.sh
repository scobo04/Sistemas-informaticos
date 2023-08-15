#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 2
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

n1=$1;
n2=$2;
menor=0;
mayor=0;

if test $n1 -lt $n2
then
	menor=$n1;
	mayor=$n2;
elif test $n1 -gt $n2
then
	menor=$n2;
	mayor=$n1;
else
	echo "Los número son iguales";
fi;


until test $menor -gt $mayor
do
	echo $menor;
	menor=`expr $menor + 1`;
done;

until test $mayor -lt $menor # NO FUNCIONA
do
	echo $mayor;
	mayor=`expr $mayor - 1`;
done;

exit 0;
