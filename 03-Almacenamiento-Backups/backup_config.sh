#!/bin/bash

# Definir variables
FECHA=$(date +%Y%m%d)
DESTINO="./backup_sistema"

echo "Iniciando respaldo de configuracion..."

# 1. Crear directorio temporal
mkdir -p $DESTINO

# 2. Copiar archivos criticos de usuarios y grupos
cp /etc/passwd /etc/group /etc/shadow $DESTINO/

# 3. Copiar configuraciones de Apache (del ejercicio anterior)
if [ -d /etc/apache2 ]; then
    cp -r /etc/apache2/sites-available/ $DESTINO/
fi

# 4. Comprimir en formato .tar.gz
tar -czvf backup_servidor_$FECHA.tar.gz $DESTINO/

# 5. Limpieza del directorio temporal
rm -rf $DESTINO

echo "Proceso finalizado. Archivo generado: backup_servidor_$FECHA.tar.gz"
