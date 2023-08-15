#!/bin/bash

# Ejercicio 14 (nivel intermedio):
# Escribe un script que solicite al usuario una cadena de caracteres 
# y luego determine si es un pangrama (es decir, si contiene todas las 
# letras del alfabeto al menos una vez).

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;
