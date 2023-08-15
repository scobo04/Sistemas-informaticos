#EJERCICIO 5
#!/bin/bash

#Obtener el mes actual
mes=`date +%m`;

#Compruebo si es mayor o menos a 6 el número de mes
if (test $mes -le 6)
then
	echo "Está en los primeros 6 meses";
else 
	echo "Está en los últimos 6 meses";
fi




