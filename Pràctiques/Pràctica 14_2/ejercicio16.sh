#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 0`
then
  	echo "Número de parámetros incorrecto"
  	exit 1
fi

# PID del archivo
echo "PID del script: $$"

# Comprobar si se ha matado el proceso
if (test -e $0)
then
	echo "El proceso $$ se ha matado correctamente"
	kill $$;
else
	echo "No se ha podido matar el proceso $$"
fi;

exit 0;
