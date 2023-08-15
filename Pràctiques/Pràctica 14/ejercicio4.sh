#EJERCICIO 4
#!/bin/bash

# Verificar si el número de parámetros es correcto
if [ "$#" -ne 1 ]; then
  echo "Número de parámetros incorrecto"
  exit 1
fi

# Obtener la lista de nombres de usuario y ordenarla alfabéticamente
lista_usuarios=$(cut -d: -f1 /etc/passwd | sort);

# Contar el número de usuarios y restar el número de usuarios que se quieren mostrar
total_usuarios=$(echo "$lista_usuarios" | wc -l);
usuarios_mostrar=$(($total_usuarios - $1));

# Mostrar los últimos N usuarios
echo "$lista_usuarios" | tail -$usuarios_mostrar;
