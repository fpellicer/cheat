# Listar el total de archivos en multiples directorios desde el actual
ls -lR | grep ^- | wc -l
ls -l */ | grep ^- | wc -l  # Lista solo desde el siguiente subdirectorio

# Listar solo directorios desde el actual
ls -d */
ls -d */*/  # Lista tambien el subdirectorio

# Listar solo los directorios ocultos
ls -d .*/

# Listar archivos ocultos
ls -a | grep ^[.]      ## ls -a | grep ^\\.

# Listar directorios y subdirectorios
ls -FR |grep /$

# Listar en detalle solo directorios (tambien ocultos)
ls -la |grep ^d

# Listar solo directorios ocultos
ls -aF | grep -E '^\..*/$'

# Listar por rango de conicidencia
ls *[1-9]  ##  ls [a-c]*

# Listar archivos mostrando solo tamaño y nombre y los ordena
ls -lh |awk '{print $5 ": " $9}' | sort -h

# Ignora archivos que contengan la palabra 'ignorar'
ls -I "*ignorar*"

## Opciones

-I,  ignore pattern
-t   time, more recent first (mtime)
-S   sort by size
-s   size files
-r   reverse
-R   recursive
-Q   quoted
-b   \ para caracteres no imprimibles
--time=atime|ctime  Show last acces/change time
                    With -t sort by
--sort=WORD         none (-U), size (-S), time (-t)
                    version (-v), extension (-X)
--full-time
