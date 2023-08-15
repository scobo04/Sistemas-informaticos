numero=8;
n=1

while test $n -le $numero
do
	touch ejercicio$n.sh;
	n=`expr $n + 1`;
done;

exit 0;
