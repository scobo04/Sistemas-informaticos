#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

factorial=$1;
n=1;
resultado=1;

while test $n -le $factorial
do
	resultado=`expr $resultado \* $n`;
	n=`expr $n + 1`;
done;

echo "El factorial de $factorial es $resultado";

echo "-------------------------"

n=1;
resultado=1;

until test $n -gt $factorial
do
	resultado=`expr $resultado \* $n`;
	n=`expr $n + 1`;
done;

echo "El factorial de $factorial es $resultado";


exit 0;
