#!/bin/bash
# ================================================================
# ESCENARIO: Configuración de entorno para Soporte Técnico N1
# OBJETIVO: Crear grupo, usuario y restringir permisos de red.
# ================================================================

# 1. Creación del grupo departamental
sudo groupadd soporte

# 2. Creación del usuario con su 'Home directory'
sudo useradd -m -g soporte operador1

# 3. Creación de archivo de configuración de red ficticio para práctica
echo "IP=192.168.1.100" > /home/config_red.txt
echo "GW=192.168.1.1" >> /home/config_red.txt

# 4. Gestión de Permisos (Nivel Seguridad)
# Cambiamos el 'Owner' a root y el grupo a soporte
sudo chown root:soporte /home/config_red.txt

# Aplicamos chmod 640:
# root (6): read/write | soporte (4): read only | otros (0): nada
sudo chmod 640 /home/config_red.txt

echo "Configuración completada con éxito."
