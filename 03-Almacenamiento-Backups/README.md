# Administración de Almacenamiento y Backup de Configuraciones Críticas

## Descripción del Proyecto
Este módulo documenta las tareas de mantenimiento preventivo y auditoría realizadas sobre un servidor con procesador Intel i5-8400 y almacenamiento de 1TB. El objetivo principal es garantizar la integridad de las configuraciones del sistema antes de realizar intervenciones de hardware o reasentamiento de la distribución.

## Objetivos Técnicos Implementados
1.  **Auditoría de File System**: Localización selectiva de ficheros de gran tamaño (>100MB) para optimizar el espacio en disco.
2.  **Automatización de Backups**: Desarrollo de un script en Bash para la recolección y centralización de archivos de configuración críticos (`/etc/passwd`, `/etc/group`, `/etc/shadow` y configuraciones de `apache2`).
3.  **Gestión de Compresión**: Implementación de empaquetado `tar` con algoritmo de compresión `gzip` para minimizar el impacto en el almacenamiento de respaldo.

## Procedimiento Técnico

### 1. Auditoría de Almacenamiento
Se ejecutó una búsqueda recursiva desde el directorio raíz para identificar archivos que comprometen la capacidad del HDD:
* **Comando**: `find / -type f -size +100M -exec ls -lh {} + 2>/dev/null > audit_report.txt`

### 2. Script de Automatización (`backup_config.sh`)
El script realiza las siguientes acciones:
* Generación de estructura de directorios temporal.
* Copia de seguridad de identidades y permisos de red.
* Compresión con marca de tiempo dinámica (`timestamp`).

### 3. Verificación de Integridad
Validación de la estructura interna del archivo comprimido sin descompresión previa para asegurar la disponibilidad de los datos:
* **Comando**: `tar -tzvf backup_servidor_*.tar.gz > verificacion.txt`

## Estructura de Archivos
* `backup_config.sh`: Script de automatización de respaldos.
* `audit_report.txt`: Reporte de ficheros de gran tamaño detectados.
* `verificacion.txt`: Log de verificación del contenido del backup.
