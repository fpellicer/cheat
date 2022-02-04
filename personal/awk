---
tags: [ processing ]
---
## Variables
# 
# NF  (Number of Fields)        Número de campos de la lista actual.
# FNR (File Number Records)     Número de registro del archivo actual. 
# NR  (Number of Records)       Número de registro (linea) actual.
# FS  (Field Separator)         Valor del delimitador de campo.
# OFS (Output Field Separator)  Valor de salida del delimitador de campo.
# RS  (Record Separator)        Valor que define el delimitador de línea.
# ORS (Output Record Separator) Valor de salida del delimitador de línea.
# ~ !~  Coincide con regex o no coincide ('$1 ~ /G/' #contiene G en 1er campo)

## Funciones (Importante // y "" en los campos correspondientes; sin str, $0 por defecto)
sub(/;/, "-", str)  # Sustituye la primera aparicion de ";" por "-".
gsub(/;/, "-", str) # Sustituye todas las apariciones
split(str, v, ";")  # Divide creando un array (string, variable, FS)

# Filtrar un argumento en awk
awk '/headers/ { print $1" "$2}'

# Filtra por argumentos e imprime el campo $3 indicando el offset
awk '/lightdm/ {print substr($3,1,8)}' auth.log

# Listar procesos que coniciden con 'user' pero no con 'root'
ps aux | awk '/user/ && !/root/  '

# Usando scripts
ps aux | awk '/gnome-terminal/ {text="el proceso es "; print text $2}'
 o crear un archivo con nombre 'awk2' con el siguiente codigo:

 /gnome-terminal/ {
   text="'s user id is "
   print $2 text $1
 }
 Uso: ps aux | awk -f awk2

# Imprime el numero de campos de una linea
awk -F, '{ print NF }'
## con $NF, imprime el valor del ultimo campo

# Numerar líneas
awk '{ print FNR " " $0 }'

# Sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# Suma valores del campo 3 omitiendo las 2 primeras líneas
awk -F: 'NR>=3 {sum += $3} END {print sum}'

# Imprime desde la segunda línea hasta la quinta
awk -F: 'NR==2,NR==5'

# Imprime las lineas donde la 1a columna es la misma que la segunda
awk '$1==$2'

# Devuelve en minusclas la cadena (str) #string function (see more)
awk '{print tolower($0)}' 

# Modificar el separador de campo de un archivo (sust. "," por ":")
awk '$1=$1' FS="," OFS=":" file
awk 'gsub(",",":")' file

-F --field-separator=sc  #separador de campo (ej. -F:)

# Imprimir solo las lineas con 65 caracteres o mas
awk 'length > 64'

# Imprime segundo campo si el primero coincide con 'valor'
awk '$1 == "valor" {print $2}'

# Imprime segundo campo si el primero empieza por 'valor' (regex)
awk '$1 ~ /^valor/ {print $2}'

# Imprime si la línea no empieza por '#'
awk '$0 !~ /#/ {print}'

# Convertir archivo en formato Dos a formato Unix
awk '{ sub("\r$", ""); print }' dosfile > unixfile

# Convertir archivo en formato Unix a formato Dos
awk '{ sub("$", "\r"); print }' unixfile > dosfile

# Convertir bytes a GB
echo 21500002304 | awk '{byte =$1 /1024/1024/1024; print byte " GB"}'

# Extraer sólo números de una cadena
awk -F'[^0-9]+' '{print $2}' <<<'name="id[9]" value="35701"'

# Imprimir desde la columna 6 hasta el final
awk '{print substr($0, index($0, $6))}'

# Sustituir coincidencias usando variables externas
DAY=$(date +%T)
awk -v day="$DAY" '/day/ { sub(/day/, "DATA") }; { print }'
