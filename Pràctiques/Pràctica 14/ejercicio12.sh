#EJERCICIO 12
#!/bin/bash

#Recorre cada palabra
for palabra in "$@"
do
	#Obtiene la inicial de la palabra
	inicial=$(echo $palabra | head -c 1)

	#Agrega la palabra al archivo que corresponde
	echo $palabra >> ${inicial}.txt
done
echo "Ha funcionado"