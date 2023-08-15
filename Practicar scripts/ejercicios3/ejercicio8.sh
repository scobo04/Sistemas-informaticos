#!/bin/bash

# Ejercicio 15 (nivel intermedio):
# Escribe un script que solicite al usuario una lista de números 
# separados por comas y luego determine si la lista forma una 
# progresión aritmética (es decir, si la diferencia entre cada par 
# consecutivo de números es constante).

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;
