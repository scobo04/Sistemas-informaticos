#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 1`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

# Compruebo si se usa como root
if `id -u != 0`
then
	echo "Debe ejecutarse como root"
fi;

# Comprobar si el runlevel es válido en el rango
if `$1 -lt 0 || $1 -gt 6`
then
	echo "Error: el runlevel $1 no es válido, introduce uno del 0 al 6"
fi;

init $1;

exit 0;
