# Registro de Evidencias - Ejercicio 05
> **Auditoría de Logs y Eventos de Sistema**

## 1. Análisis del Kernel (kernel_logs.txt)
Se han revisado los últimos mensajes del núcleo para validar el hardware.
* **Comando**: `cat kernel_logs.txt`
* **Hallazgos**: Se observa la carga de microcódigo de la CPU, la activación de virtualización (KVM) y la detección de dispositivos de audio.
* **Estado**: El núcleo no reporta fallos de hardware críticos.

## 2. Eventos de Servicios (sistema_logs.txt)
Monitorización de la actividad de los servicios del sistema y tareas programadas.
* **Comando**: `cat sistema_logs.txt`
* **Hallazgos**: 
    1. Ejecución constante de tareas `CRON` (mantenimiento automático).
    2. Actividad de `systemd` gestionando servicios de contabilidad (`sysstat`).
    3. Actualizaciones de firmware en segundo plano (`fwupd`).
* **Estado**: Sistema operativo operando con normalidad.

## 3. Integridad de los Reportes
* **Comando**: `ls -lh *_logs.txt`
* **Resultado**: Los archivos han sido creados con éxito y contienen la información cronológica necesaria para una auditoría.
