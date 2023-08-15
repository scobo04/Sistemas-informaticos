#EJERCICIO 9
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 0 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

#Copio el archivo ejercicio9.sh y le hago una copia
cp ./$0 ./$0.bak

echo "Se ha creado una copia de seguridad de su trabajo"

#Elimino el archivo archivo9.sh
rm $0;

exit 0;
