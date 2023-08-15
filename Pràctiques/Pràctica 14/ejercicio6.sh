#EJERCICIO 6
#!/bin/bash

#Creo un array de nombres
nombres=('Sergio' 'Paco' 'Antonia' 'Maria' 'Anastasia' 'Rigoberta' 'Manolo')

#Imprimo la respuesta a cada uno de ellos
for i in ${nombres[@]}
do
	echo "Hola $i"
done;




