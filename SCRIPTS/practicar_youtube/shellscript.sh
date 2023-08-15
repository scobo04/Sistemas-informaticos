#!/bin/bash

# SIEMPRE HAY QUE AÑADIR PERMISOS DE EJECUCIÓN SOBRE EL ARCHIVO AL USUARIO


# HELLO WORLD
echo "Hello world";

# ECHO
# -n no genera una nueva línea
echo -n "Hello"
echo "world"

echo -n "No"

echo "NewLines"

# ECHO CON CONCATENACIÓN DE CADENA
echo "one" "two" "three"

# CARÁCTER DE CONTINUACIÓN DE CADENA (\)
# sirve para indicar que el contenido de la siguiente línea se debe mostrar
# junto a los de la primera. si hay varias líneas al poner un \ en cada una 
# se mostraría todo en una única línea.
echo "one" "two" "three" \
"four" \
"five"

# TABULAR CON ECHO
# -e habilita tabular con barra invertida
echo -e "one\ttwo\tthree\tfour"

# NUEVA LÍNEA CON ECHO
echo -e "one\ntwo\nthree\nfour"

# ECHO CON -x PARA MOSTRAR TODOS LOS COMANDOS
# hay que poner -x en /bin/bash
echo "one"
echo "two"
echo "three"

# IMPRIMIR CADENAS QUE CONTIENEN COMILLAS SIMPLES
echo "Welcome to Sergio's house"

# IMPRIMIR CADENAS QUE CONTIENEN COMILLAS DOBLES
echo "My favourite movie is \"Limitless\""

# CREAR O AÑADIR CONTENIDO A UN ARCHIVO DESDE UN SCRIPT
echo "hello" > ./hola.txt

# SOBRESCRIBIR CONTENIDO DE UN ARCHIVO DESDE UN SCRIPT
echo "como estas?" > ./hola.txt

# CREAR UN ARCHIVO CON CONTENIDO O AÑADIRLE SI EXISTE DESDE UN SCRIPT
echo "como va?" >> ./hola.txt

# LÍNEAS DE COMENTARIOS SIMPLES
#echo "hola que tal"

# COMENTAR EN MEDIO DE LA LÍNEA
echo "paco" # > paco.txt

# COMENTAR VARIAS LÍNEAS
<<COMENTAR
echo "one"
echo "two"
echo "three"
COMENTAR

echo "hello baby"




