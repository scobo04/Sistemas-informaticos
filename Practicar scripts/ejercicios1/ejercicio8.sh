#!/bin/bash

# 8. Crea un script que solicite al usuario un número y luego calcule 
# el factorial de ese número.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

numero=$1;

# Calcular factorial del número
factorial=1;
n=1;

while test $n -le $numero
do
	factorial=`expr $factorial \* $n`;
    n=`expr $n + 1`;
done;

echo "Factorial de $numero: "$factorial;

exit 0;

