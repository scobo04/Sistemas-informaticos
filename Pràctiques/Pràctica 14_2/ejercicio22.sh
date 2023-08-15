#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 1`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

# Compruebo si es un directorio
if `test ! -d $directorio`
then
	echo "Error: $directorio no es un directorio o no existe";
fi;

fecha_actual=`date +%Y_%m_%d`;
archivo=$1_$fecha_actual.tar.gz;
tar -czf $archivo $1 > /dev/null;

# Compruebo si se ha comprimido
if `test $? -ne 0`
then
	echo "Error: se produjo un error al comprimir el directorio";
fi;

echo "Copia de seguridad realizada correctamente en el archivo $archivo";

exit 0;
