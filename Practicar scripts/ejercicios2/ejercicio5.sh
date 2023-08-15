#!/bin/bash

# Ejercicio 5 (nivel intermedio):
# Escribe un script que solicite al usuario una frase y luego imprima 
# el número de vocales que contiene.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

contador=0;

read -p "Ingresa la frase: " frase;
contador=`echo $frase | grep -io [aeiou] | wc -l`;
echo $contador;

exit 0;
