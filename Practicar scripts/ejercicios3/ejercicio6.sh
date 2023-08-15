#!/bin/bash

# Ejercicio 13 (nivel intermedio):
# Escribe un script que lea un archivo de texto y cuente la cantidad 
# de palabras diferentes que contiene. El nombre del archivo debe ser 
# ingresado por el usuario.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;
