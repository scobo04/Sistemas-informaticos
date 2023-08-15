#!/bin/bash

# Verifico que el número de parámetros sea correcto
if `test $# -ne 1`
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

#
anterior=`df`;


while true
do
	sleep $1;
	actual=`df`;
	
	if `test "$anterior" != "$actual"`
	then
		nuevo_dir=`diff < `echo $anterior` < `echo $actual` | grep "^>" | df -P`;
		
		echo $nuevo_dir;
		ls -la $nuevo_dir;
	fi
	anterior=$actual;
done



exit 0;
