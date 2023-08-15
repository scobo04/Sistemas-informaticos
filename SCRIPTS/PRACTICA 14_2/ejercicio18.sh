#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 2`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

ruta_archivo=$1;
paquete=$2;

# Compruebo si el archivo pertenece al paquete
if `dpkg -S $ruta_archivo | grep -q $paquete`
then
    echo "$ruta_archivo pertenece al paquete $paquete";
else
    echo "$ruta_archivo no pertenece al paquete $paquete";
fi

exit 0;

