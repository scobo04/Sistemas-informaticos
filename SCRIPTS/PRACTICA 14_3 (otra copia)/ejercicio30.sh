#!/bin/bash

# Verifico que el número de parámetros sea el correcto
if `test $# -ne 0`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

# Compruebo que es un directorio
if `test ! -d /updated`
then
	sudo mkdir /updated;
	echo "El directorio updated se ha creado en la raíz"
fi;

# Recorro los archivos del directorio actual
for archivo in ./*.txt
do
	# Archivos modificados en los últimos dos días
	modificados=`find $archivo -type f -mtime -2`;
	
	# Cada archivo de modificados lo copia a /updated
	for modificado in $modificados
	do
		sudo cp $modificado /updated;
	done
done

exit 0;
