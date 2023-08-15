#EJERCICIO 10
#!/bin/bash

# Verificar si el número de parámetros es correcto
if ( test $# -ne 2 ) 
then
  echo "Número de parámetros incorrecto"
  exit 1
fi

numero1=$1
numero2=$2
menor=0
mayor=0

#Compruebo que número es menor
if (test $numero1 -lt $numero2)
then
	menor=$numero1
	mayor=$numero2
elif (test $numero1 -gt $numero2)
then
	menor=$numero2
	mayor=$numero1
else
	echo "Los números son iguales"
fi

#Imprimo desde el menor hasta el mayor
until (test $menor -gt $mayor)
do
	echo $menor
	menor=`expr $menor + 1`
done;
