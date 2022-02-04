---
tags: [ copy ]
---
# Crear un backup de un archivo
cp nombre_arhivo{,.bak}

# Copia solo si ORIGEN es mas moderno que DESTINO o si no existe
-u; --update

# Copiar recursivamente preservando permisos y propietario
cp -a origen destino

# Copiar archivos sobre un directorio existente

## Pedir confirmación (Por defecto cp sobreescribe los archivos)
cp -i origen destino

## Crear backup automático (file~) de cada archivo que se sobreescribe
cp --backup=simple origen/* destino

# -b; --backup=simple    Mantiene una única copia
#     --backup=numbered  Copias numeradas acumulativas (file~1~, file~2~)
#
# Usar (*) para que cp ingrese dentro del directorio o será omitido
# aunque se use la opción -a o -r.
