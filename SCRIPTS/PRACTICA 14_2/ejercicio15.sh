#!/bin/bash

# Verificar si el número de parámetros es correcto
if `test $# -ne 0`
then
  echo "Número de parámetros incorrecto"
  exit 1
fi

# Compruebo quien es el usuario
usuario=`whoami`;

echo "Se ha ejecutado con el usuario $usuario";

# Compruebo si es el usuario root, sino pido la contraseña para que
# ejecute el archivo como root
if (test $usuario = "root")
then
    echo "Soy el dueño del mundo";
else
    echo "Intenta como superusuario";
    sudo $0;
fi;

exit 0;
