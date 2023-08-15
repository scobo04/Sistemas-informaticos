#!/bin/bash

# Ejercicio 1 (nivel básico):
# Escribe un script que imprima "¡Hola, mundo!" en la consola.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
fi;

echo "Hola mundo";

exit 0;
