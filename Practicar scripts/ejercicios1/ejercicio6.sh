#!/bin/bash

# 6. Crea un script que pida al usuario su nombre y luego lo salude.

# Verifico que la cantidad de parámetros sea la correcta
if `test $# -ne 1`
then
	echo "Números de parámetros incorrecto";
	exit 1;
fi;

# Pido nombre al usuario
usuario=$1;

# Saludo al usuario
echo "Hola $usuario";

exit 0;
