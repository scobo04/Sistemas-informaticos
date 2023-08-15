#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

numero=1
maximo=$1

#Imprimo numero si este es <= maximo
while (test $numero -le $maximo)
do
	echo $numero

	#Multiplico numero por 2
	numero=`expr $numero \* 2`
done;