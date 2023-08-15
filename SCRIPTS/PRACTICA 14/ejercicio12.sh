#EJERCICIO 12
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -eq 0 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

#Recorre cada palabra
for palabra in "$@"
do
	#Cambiamos de mayúscula a minúscula y obtiene la inicial de la palabra
	palabra=`echo $palabra | tr '[:upper:]' '[:lower:]'`
	inicial=$(echo $palabra | cut -c1)

	#Agrega la palabra al archivo que corresponde
	echo $palabra >> ${inicial}.txt
done
echo "Ha funcionado"
