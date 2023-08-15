#!/bin/bash

# Ejercicio 11 (nivel intermedio):
# Escribe un script que solicite al usuario una lista de números 
# separados por comas y luego calcule la suma de los números que sean 
# múltiplos de 3 o 5.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

read -p "Introduce una lista de números: " numeros;
suma=0;

for n in `echo $numeros`
do
	if test $((n % 3)) -eq 0 || test $((n % 5)) -eq 0
	then
		suma=`expr $suma + $n`;
	fi;
done;
echo $suma;

exit 0;
