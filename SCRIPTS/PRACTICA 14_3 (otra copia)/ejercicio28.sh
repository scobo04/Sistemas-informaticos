#!/bin/bash

# Verifica si el número de parámetros es correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto"
	exit 1
fi

usuario=$1;
idGrupoPrimario=`grep ^$usuario: /etc/passwd | cut -d: -f4`;

# Compruebo si el usuario existe
if `test -z $idGrupoPrimario`
then
	echo "El usuario introducido no existe"; # REVISAR
	exit 1;
fi;

# Obtengo el grupo primario del usuario introducido
grupoPrimario=`grep ":$idGrupoPrimario:" /etc/group | cut -d: -f1`;
grupo=$grupoPrimario;

echo "El grupo primario del usuario $usuario es: $grupo";

exit 0;
