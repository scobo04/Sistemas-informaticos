#!/bin/bash

# 1. Escribe un script que imprima "Hola, mundo!" en la pantalla.

# Verifico que el número de parámetros sea correcto
if `test $# -ne 0`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

echo "Hola mundo";

exit 0;