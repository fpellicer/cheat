---
tags: [ networking ]
---
# Opciones
-l Listen    -n No resuelve PORT
-p Process   -r Resuelve IP:PORT
-t TCP       -u UDP
-o  Muestra información de tiempo
state STATE

# Mostrar sockets a la escucha
ss -l

# Mostrar resumen del estado de los sockets
ss -s

# Mostrar conexiones ssh establecidas (o :http ...)
ss state stablished '(dport = :ssh or sport = :ssh)'

# Encontrar procesos locales conectados al servidor X
ss -x src /tmp/.X11-unix/*

# Hacer coincidir direcciones remotas y puertos
## Mostrar todos los puertos conectados de forma remota desde 192.168.1.5:http
ss dst 192.168.1.5:https  # O ...:443

# O mostrar todas las conexiones de cuaquier maquina a un puerto
ss dst *:http

# Hacer coincidir direcciones locales y puertos
## Mostrar todos los puertos conectados a la dirección local 5.39.89.44
ss src 5.39.89.44
ss src 5.39.89.44:http  # Solo puerto (80) http

# Filtrar en base al número de puerto
## (lt, less than; gt, greater than; eq, equal to; nt, not equal to; le, less or equal; ge, greater or equal)
ss -ltn sport le 500

# Filtrar por puerto de origen (sport) o de destino (dport)
ss -t '(sport = :ssh)'
