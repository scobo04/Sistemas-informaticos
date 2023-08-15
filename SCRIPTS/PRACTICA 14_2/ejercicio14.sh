#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; 
then
  echo "Número de parámetros incorrecto"
  exit 1
fi

#Ruta directorio
ruta=$1

if (test -d $ruta) 
then
	echo "El directorio existe"
    cd ./$ruta;
else 
    echo "La ruta no existe";
    echo "Se ha creado el directorio $ruta";
    mkdir $ruta || echo "No se ha podido crear";
    cd $ruta;
fi

exit 0;
