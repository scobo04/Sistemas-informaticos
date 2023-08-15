#EJERCICIO 11
#!/bin/bash

interprete_mas_usado=$(cut -d: -f7 /etc/passwd | sort | 
uniq -c | sort -rn | head -n1 | tr -s ' ' | cut -f2 | cut -d/ -f4)

echo "El intérprete de comandos más usado es \"$interprete_mas_usado\""