#!/bin/bash

# Verifico que el número de parámetros sea el correcto
if `test $# -ne 0`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi;

usuario=`whoami`;
echo "Ejecutado con el usuario "$usuario;

# Compruebo si lo ejecuta el root
if `test $usuario != root`
then
	echo "Debes ejecutarlo con permisos root"
	sudo su
else 
	echo "Has iniciado con el usuario root"
fi;

# INDICAR CANTIDAD PARTICIONES DE CADA TIPOS QUE HAY

exit 0;
