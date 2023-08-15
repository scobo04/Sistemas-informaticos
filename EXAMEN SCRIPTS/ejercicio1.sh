#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 0
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

# NO HE CONSEGUIDO SACARLO
usuarioProcesos=`top -u sergio | tr -s " " | cut -d" " -f3`;
cantidadProcesosUsuario=`top -u sergio | tr -s " " | cut -d" " -f3 | wc -l`;
	
echo "Usuario: $usuarioProcesos   Procesos: $cantidadProcesosUsuario";

exit 0;
