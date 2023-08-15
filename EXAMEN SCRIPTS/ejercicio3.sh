#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

# NO HE SABIDO COMO HACERLO
grupo=`cat /etc/group | cut -d: -f1`;

exit 0;
