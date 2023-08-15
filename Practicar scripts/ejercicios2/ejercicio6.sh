#!/bin/bash

# Ejercicio 6 (nivel intermedio):
# Escribe un script que genere los primeros "n" números de la secuencia 
# de Fibonacci, donde "n" es un número ingresado por el usuario.

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
fi;
