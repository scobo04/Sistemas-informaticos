#!/bin/bash

# Ejercicio 3 (nivel básico):
# Escribe un script que solicite al usuario dos números y luego 
# imprima la suma de esos números.

# Verifico que el número de parámetros sea correcto
if test $# -ne 2
then
	echo "Número de parámetros incorrecto";
fi;

n1=$1;
n2=$2;
resultado=`expr $n1 + $n2`;

echo "$n1+$n2 es $resultado";
