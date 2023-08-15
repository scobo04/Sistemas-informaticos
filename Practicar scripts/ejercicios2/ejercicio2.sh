#!/bin/bash

# Ejercicio 2 (nivel básico):
# Escribe un script que solicite al usuario su nombre y luego imprima 
# un saludo personalizado con el nombre ingresado.

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
fi;

nombre=$1;

echo "Hola $nombre";
