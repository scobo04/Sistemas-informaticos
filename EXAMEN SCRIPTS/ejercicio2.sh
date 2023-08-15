#!/bin/bash

# Verifico que el número de parámetros sea correcto
if test $# -ne 1
then
	echo "Número de parámetros incorrecto";
	exit 1;
fi;

tiempo=$1;

usuario=`ls -l | tr -s " " | cut -d" " -f3`;
grupo=`ls -l | tr -s " " | cut -d" " -f4`;

lecturaUsuario=`ls -l | tr -s " " | cut -d" " -f1 | cut -c2`;
escrituraUsuario=`ls -l | tr -s " " | cut -d" " -f1 | cut -c3`;
ejecucionUsuario=`ls -l | tr -s " " | cut -d" " -f1 | cut -c4`;

lecturaGrupo=`ls -l | tr -s " " | cut -d" " -f1 | cut -c5`;
escrituraGrupo=`ls -l | tr -s " " | cut -d" " -f1 | cut -c6`;
ejecucionGrupo=`ls -l | tr -s " " | cut -d" " -f1 | cut -c7`;

lecturaResto=`ls -l | tr -s " " | cut -d" " -f1 | cut -c8`;
escrituraResto=`ls -l | tr -s " " | cut -d" " -f1 | cut -c9`;
ejecucionResto=`ls -l | tr -s " " | cut -d" " -f1 | cut -c10`;

# SÉ QUE ES SUPER LARGO PERO ES LA ÚNICA OPCIÓN QUE SE ME HA OCURRIDO
# NO HE CONSEGUIDO SOLUCIONAR EL ERROR PARA QUE DEJE EJECUTARLO
while `sleep $tiempo`
do
	read -p "Introduce el nombre de un archivo: " archivo;

	if test -f $archivo
	then
		# USUARIO
		if $lecturaUsuario = "r" && $escrituraUsuario = "w" && ejecucionUsuario = "x"
		then
			echo "Usuario: $usuario		- 	  Permisos: Lectura	Escritura Ejecucion";
		elif $lecturaUsuario = "r" && $escrituraUsuario = "w"
		then
			echo "Usuario: $usuario		- 	  Permisos: Lectura Escritura";
		elif $lecturaUsuario = "r" && ejecucionUsuario = "x"
		then
			echo "Usuario: $usuario		- 	  Permisos: Lectura Ejecucion";
		else if $escrituraUsuario = "w" && $ejecucionUsuario = "x"
		then
			echo "Usuario: $usuario		- 	  Permisos: Escritura Ejecucion";
		elif $ejecucionUsuario = "x" && $lecturaUsuario = "r"
		then
			echo "Usuario: $usuario		- 	  Permisos: Lectura Ejecucion";
		elif $ejecucionUsuario = "x" && $escrituraUsuario = "w"
		then
			echo "Usuario: $usuario		- 	  Permisos: Escritura Ejecucion";
		fi;
		
		# GRUPO
		if $lecturaGrupo = "r" && $escrituraGrupo = "w" && ejecucionGrupo = "x"
		then
			echo "Grupo: $grupo		- 	  Permisos: Lectura	Escritura Ejecucion";
		elif $lecturaGrupo = "r" && $escrituraGrupo = "w"
		then
			echo "Grupo: $grupo		- 	  Permisos: Lectura Escritura";
		elif $lecturaGrupo = "r" && ejecucionGrupo = "x"
		then
			echo "Grupo: $grupo		- 	  Permisos: Lectura Ejecucion";
		elif $escrituraGrupo = "w" && $lecturaUsuario = "r"
		then
			echo "Grupo: $grupo		- 	  Permisos: Lectura Escritura";
		else if $escrituraGrupo = "w" && $ejecucionGrupo = "x"
		then
			echo "Grupo: $grupo		- 	  Permisos: Escritura Ejecucion";
		elif $ejecucionGrupo = "x" && $lecturaGrupo = "r"
		then
			echo "Grupo: $grupo		- 	  Permisos: Lectura Ejecucion";
		elif $ejecucionGrupo = "x" && $escrituraGrupo = "w"
		then
			echo "Grupo: $grupo		- 	  Permisos: Escritura Ejecucion";
		fi;
		
		# RESTO
		if $lecturaResto = "r" && $escrituraResto = "w" && ejecucionResto = "x"
		then
			echo "Resto:	- 	  Permisos: Lectura	Escritura Ejecucion";
		elif $lecturaResto = "r" && $escrituraResto = "w"
		then
			echo "Resto:	- 	  Permisos: Lectura Escritura";
		elif $lecturaResto = "r" && ejecucionResto = "x"
		then
			echo "Resto:	- 	  Permisos: Lectura Ejecucion";
		elif $escrituraResto = "w" && $lecturaResto = "r"
		then
			echo "Resto:	- 	  Permisos: Lectura Escritura";
		else if $escrituraResto = "w" && $ejecucionResto = "x"
		then
			echo "Resto:	- 	  Permisos: Escritura Ejecucion";
		elif $ejecucionResto = "x" && $lecturaResto = "r"
		then
			echo "Resto:	- 	  Permisos: Lectura Ejecucion";
		elif $ejecucionResto = "x" && $escrituraResto = "w"
		then
			echo "Resto:	- 	  Permisos: Escritura Ejecucion";
		fi;
		
	fi;
done;

exit 0;
