#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

factorial=1
i=1

#Compruebo si i no es mayor que numero y si no es menor que 0
until [ $i -gt $1 -o $i -lt 0 ]
do
	#Factorial es el valor de i * el valor de factorial
	factorial=`expr $i \* $factorial`

	#Sumo 1 a la variable i
	i=`expr $i + 1`
done

# Mostrar el resultado al usuario
echo "El factorial de $1 es $factorial"