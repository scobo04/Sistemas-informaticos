#!/bin/bash
for i in `sort $1`
do
if grep $2 $i > /dev/null
then
echo A
cp $i /tmp
exit
fi
done
echo B