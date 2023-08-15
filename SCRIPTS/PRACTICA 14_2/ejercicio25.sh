#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 1`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

ruta=$1;

# Compruebo si existe el directorio
if `test ! -d $ruta`
then
	echo "El directorio $ruta no existe"
fi;

# Recorrer los archivos con extensión .c
for archivo in $ruta*.c
do
	total_lineas_noVacias=`grep -v "^$" $archivo | wc -l`;
	echo $archivo $total_lineas_noVacias >> linies.txt;
done

# Ordenar por número de líneas no vacías
sort -rn -k2 linies.txt -o linies.txt;

exit 0;
