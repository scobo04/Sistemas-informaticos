#!/bin/bash

# Ejercicio 10 (nivel intermedio):
# Escribe un script que solicite al usuario una cadena de caracteres 
# y luego determine cuántas veces aparece una determinada letra en 
# esa cadena.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

read -p "Introduce una cadena de caracteres: " cadena;
read -p "Introduce una letra: " letra;
coincidencias=0;

for l in `echo $cadena | grep -o "$letra"`
do
	if test "$l" == "$letra"
	then
		coincidencias=`expr $coincidencias + 1`;
	fi;
done;
echo "Hay $coincidencias coincidencias de la letra $letra";

exit 0;
