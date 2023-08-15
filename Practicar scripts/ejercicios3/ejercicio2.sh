#!/bin/bash

# Ejercicio 9 (nivel intermedio):
# Escribe un script que solicite al usuario una lista de números 
# separados por comas y luego determine si la lista está ordenada de 
# manera estrictamente ascendente (es decir, sin números repetidos).

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

read -p "Introduce números: " lista;

for ((i = 0; i < $lista; i++)) # NO FUNCIONA
do
	ordenadoASC=false;
	
	if test `expr lista[i] <= lista[i - 1]`
	then
		ordenadoASC=false;
		break;
		echo $ordenadoASC;
	fi;
done;

exit 0;
