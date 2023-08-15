#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -eq 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

for palabra in $*
do
	palabra=`echo $palabra | tr '[:upper:]' '[:lower:]'`;
	inicial=`echo $palabra | cut -c1`;
	
	echo $palabra >> ${inicial}.txt
done;
echo "Ha funcionado";

exit 0;
