#!/bin/bash

# Ejercicio 7 (nivel intermedio):
# Escribe un script que lea un archivo de texto y cuente la cantidad 
# de palabras que contiene. El nombre del archivo debe ser ingresado 
# por el usuario.

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

archivo=$1;

contenido=`cat $archivo | wc -w`;
echo $contenido;
	
