#EJERCICIO 7
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

numero=1

#Imprimo numero si este es <= maximo
while (test $numero -le $1)
do
	echo $numero

	#Sumo 1 a numero
	numero=`expr $numero + 1`
done;
