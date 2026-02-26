# Evidencias de Validación - Ejercicio 03

## 1. Resultado de Auditoría
Se identificaron archivos de sistema de gran tamaño. El reporte `audit_report.txt` confirma que el comando `find` filtró correctamente los archivos superiores a 10MB, permitiendo una toma de decisiones sobre el espacio en disco.

## 2. Validación del Backup
Se ejecutó el comando `tar -tvf` sobre el archivo generado.
- **Archivo**: `backup_servidor_2026XXXX.tar.gz`
- **Estado**: Íntegro.
- **Contenido confirmado**:
    - [x] /etc/passwd
    - [x] /etc/group
    - [x] /etc/shadow
    - [x] Configuraciones de Apache

## 3. Conclusión técnica
El script `backup_config.sh` cumple con los requisitos de automatización. La compresión reduce el tamaño de los datos originales en un ~60%, optimizando el almacenamiento en el HDD de destino.
