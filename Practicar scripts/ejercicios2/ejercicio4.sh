#!/bin/bash

# Escribe un script que genere un número aleatorio y solicite al 
# usuario que adivine ese número. El programa debe indicar si el 
# número ingresado es mayor o menor que el número generado, y seguir 
# solicitando intentos hasta que el usuario adivine correctamente.

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

nAleatorio=`expr $RANDOM % 100 + 1`;
echo $nAleatorio;

while true
do
	read -p "Introduce un número: " nUsuario;
	
	if test $nUsuario -eq $nAleatorio
	then
		echo "Lo adivinaste"
		break;
	elif test $nUsuario -lt $nAleatorio
	then
		echo "El número aleatorio es mayor";
	else 
		echo "El número aleatorio es menor";
	fi;
done;

exit 0;
