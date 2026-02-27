# Gestión de Logs y Mensajes del Sistema
> **Módulo de Administración de Incidencias**

## Descripción del Escenario
Como administrador, es vital monitorizar los eventos del sistema para detectar fallos de hardware o intentos de acceso. Este ejercicio cubre la extracción y análisis de mensajes del núcleo y del sistema.

## Objetivos Técnicos
1. **Monitorización de Kernel**: Uso de `dmesg` para revisar eventos de hardware.
2. **Análisis de Logs**: Consulta de archivos en `/var/log` para auditoría.
3. **Filtrado de Datos**: Uso de tuberías para localizar eventos específicos.

## Procedimiento
* **Comando Kernel**: `dmesg | tail -n 20 > kernel_logs.txt`
* **Comando Sistema**: `tail -n 50 /var/log/syslog > sistema_logs.txt`
