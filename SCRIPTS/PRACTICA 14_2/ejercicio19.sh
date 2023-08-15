#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 1`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

# Almaceno el contenido de $archivo1
a=`cat ./$archivo1 2> /dev/null`;

# Compruebo si $archivo1 existe
while read linea
do
	# Guardo el nombre de cada archivo
	archivo1=`echo $linea | cut -d- -f1`;
	archivo2=`echo $linea | cut -d- -f2`;

	if `test -e $archivo1`
	then
    	cp $archivo1 $archivo2;
    	echo "El contenido de $archivo1 se ha copiado en $archivo2";
	else
		cp /etc/group $archivo2;
    	echo "El contenido de $archivo1 no se ha copiado, se ha copiado /etc/group en $archivo2";
	fi;
done < $1;

exit 0;
