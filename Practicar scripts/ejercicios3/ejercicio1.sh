#!/bin/bash

# Ejercicio 8 (nivel intermedio):
# Escribe un script que solicite al usuario una frase y luego imprima 
# las palabras de esa frase en orden inverso.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

read -p "Introduce una frase: " frase;

frase_invertida=`echo $frase | rev`;
echo $frase_invertida;

exit 0;
