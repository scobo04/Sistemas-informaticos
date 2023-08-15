#EJERCICIO 6
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -eq 0 ]; 
then
  echo "Número de parámetros incorrecto"
  exit 1
fi

#Imprimo la respuesta a cada uno de ellos
for i in $*
do
	echo "Hola $i"
done;

exit 0;


