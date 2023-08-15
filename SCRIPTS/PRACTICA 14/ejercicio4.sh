#EJERCICIO 4
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; 
then
  echo "Número de parámetros incorrecto"
  exit 1
fi

# Obtener la lista de nombres de usuario, ordenarla alfabéticamente y 
# mostrar los últimos N usuarios
cat /etc/passwd | sort -t: -k1 | cut -d: -f1 | tail -n $1

exit 0;
