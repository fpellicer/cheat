---
tags: [ formatter,processor ]
---
# Para eliminar ' encerrar la expresion entre ""

# Escapar los caracteres especiales para evitar su expasion
. * + () [] {} etc 

# -i sobreescribe el archivo original.

# sed 's/regex/replacement/' file

# sed permite modificar el delimitador de campo (+, _, etc)
sed 's+http://+https+g' file

# Distingir entre mayusculas y minusculas (opcion I)
sed 's/patron1/patron2/gI' file

# Imprime la primera coincidencia entre 'patron1' y 'patron2'
sed '/patron1/,/patron2/!d;/patron2/q' file
sed -n '/patron2/,/patron2/{p; /patron2/q}' file

# Mayusculas a minusculas ([\L]ower [\U]pper) 
sed 's/\([A-Z]\)/\L\1/g' file.txt # \L por \U
sed 'y/aeiou/AEIOU/' file.txt 

# Insertar a partir de la 2a linea tres argumentos desde variables.
sed "2i$FILENAME\n$COPYRIGHT\n$DATE" file.txt

# Borrar lineas que empiezan por $
sed -i '/^\$/d' file.txt

# Sustitucion multiple
sed -e 's/expr1/sust/;s/expr2/sust/;s/expr3/sust/'

# Muestra sufijos de uno a cuatro caracteres (extensiones)
sed -n 's/.*\.\(.\{1,4\}\)$/\1/p' filename

# Imprime la línea 7
sed -n 7p

# Imprime de la línea 3 a la 7
sed -n '3,7p'

# Imprime las 7 primeras lineas
sed 7q file.txt

# Elimina las lineas que contienen "spam"
sed '/spam/d' file.txt

# Elimina las lineas que no contienen "spam"
sed '/spam/!d' file.txt

# Imprime las lineas que empiezan por "#"
sed -n '/^#/p;d' file.txt

# Eliminar 'retorno de carro' (\r)
sed 's/^M//' file.txt

# Elimina desde la linea 3, incluyendo la primera linea en blanco:
sed '3,/^$/d' file.txt

# Eliminar la linea 3, 5 y 7:
sed '3d;5d;7;d' file.txt

# Eliminar desde la linea 3 a la 7:
sed '3,7d' file.txt

# Elimina todas las lineas anteriores 'patron'
sed '/patron/,$!d'

# Elimina las lineas entre 'patron' y 'patron'
sed '/patron/,/patron/d'

# Elimina todas las lineas posteriores a 'patron'
sed '/patron/q'

# Elimina todas las lineas incluida 'patron' hasta el final
sed '/patron/,$d'

# Sustituir solo la primera ocurrencia
sed '0,/patron1/ s//patron2/'

# Convertir de formato Dos a Unix
sed 's/^M$//' dosfile > unixfile

# Convertir de formato Unix a Dos
sed 's/\r*$/\r/' unixfile > dosfile

# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# Remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# Remove empty lines (any whitespace character '\s'):
sed '/^\s*$/d' file.txt

# Delete last line of a file:
sed -i '$ d' file.txt

# Change the third 'apple' in each record to 'orange': 
sed 's/apple/orange/3' file.txt

# Output captured group in csv file (remove last field)
sed 's/\(.*)\;.*$/\1/' file.csv
