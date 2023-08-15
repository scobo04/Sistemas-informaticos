#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 2`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

archivo=$1;
partesArchivo=$2;

# Comprobar si el archivo existe
if (test -f $archivo)
then
	echo "El archivo $archivo existe"
else
	echo "El archivo $archivo no existe"
fi

# Contar el número de líneas del archivo
numeroLineas=`wc -l 2> /dev/null < $archivo`;

# Calcula el número de líneas por parte
porLineas=`expr $numeroLineas / $partesArchivo 2> /dev/null`;

# Divide el archivo por partes
`split -l $porLineas $archivo 2> /dev/null`;

# Comprobar que la cantidad de archivos creados sea correcto
cantidadArchivos=`ls -1 x* 2> /dev/null | wc -l`;
if (test $cantidadArchivos -ne $partesArchivo)
then
	echo "Error: el número de líneas no es divisible o no existe el 
	archivo $archivo";
	`rm x* 2> /dev/null`;
else
	echo "El archivo $archivo se ha dividido correctamente en $partesArchivo";
fi

exit 0;

