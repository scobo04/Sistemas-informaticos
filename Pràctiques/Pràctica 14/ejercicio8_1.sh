#EJERCICIO 8
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

divisor=2
factorial=1
i=1

#Compruebo si i <= numero y si es >= 0
while (test $i -le $1 && test $i -ge 0)
do
	#Factorial es el valor de i * el valor de factorial
	factorial=`expr $i \* $factorial`

	#Sumo 1 a la variable i
	i=`expr $i + 1`
done
echo "El factorial de $1 es $factorial"