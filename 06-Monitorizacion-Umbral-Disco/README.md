# Monitorización de Almacenamiento y Control de Umbrales (Thresholds)

Este módulo implementa una solución de mantenimiento preventivo para la gestión de recursos críticos en sistemas Linux. 

## Objetivo del Proyecto
Automatizar la vigilancia del sistema de archivos para garantizar la alta disponibilidad de los servicios. La detección temprana de falta de espacio evita caídas del sistema y corrupción de bases de datos en entornos de producción.

## Especificaciones Técnicas
* **Métrica de Control**: Porcentaje de uso de la partición raíz (`/`).
* **Lógica de Alerta**: Comparación binaria mediante script Bash contra un **Threshold** definido.
* **Trazabilidad**: Generación de logs de auditoría con marca de tiempo para análisis post-incidente.

## Estructura de Archivos
* `check_disk.sh`: Script de ejecución y lógica de control.
* `disk_report.txt`: Archivo de salida y registro de estados.
* `PRUEBAS.md`: Documentación de validación del sistema de alertas.

## Comandos Clave
* `df -h`: Reporte de estado de discos.
* `awk / tr`: Filtrado y normalización de datos para la lógica del script.
