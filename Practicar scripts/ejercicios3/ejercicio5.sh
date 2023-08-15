#!/bin/bash

# Ejercicio 12 (nivel intermedio):
# Escribe un script que solicite al usuario un número entero y luego 
# determine si es un número perfecto. Un número perfecto es aquel cuya 
# suma de sus divisores (excluyendo al número mismo) es igual al número.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;
