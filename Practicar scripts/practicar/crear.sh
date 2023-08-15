
# Verifico que el número de parámetros sea correcto
if test $# -ne 2
then
	echo "CREADOR DE ARCHIVOS SCRIPTS";
	echo "Número de parámetros incorrecto";
	echo "Parámetros: 1º -> del archivo n";
	echo "Parámetros: 2º -> hasta el archivo n";
	exit 1;
fi;

empieza=$1
termina=$2;

if test $empieza -eq $termina
then
	touch ejercicio$empieza.sh;
fi;

while test $empieza -le $termina
do
	touch ejercicio$empieza.sh;
	empieza=`expr $empieza + 1`;
done;

exit 0;
