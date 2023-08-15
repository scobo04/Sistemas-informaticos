#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

fecha=`date +%m`;

if test $fecha -le 6
then
	echo "Está dentro de los primeros seis meses";
else
	echo "Está dentro de los últimos seis meses";
fi;

exit 0;
