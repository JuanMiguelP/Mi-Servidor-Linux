# Registro de Verificación - Módulo 06

## 1. Prueba de Funcionamiento Estándar
Se ejecuta el script con el umbral (Threshold) al 80%. El sistema debe identificar que el uso es inferior y marcarlo como OK.

**Ejecución:**
`./check_disk.sh`

**Resultado en disk_report.txt:**
`[2026-02-28 11:00:00] ESTADO: OK - Uso actual al 32%.`

## 2. Prueba de Simulación de Alerta (Stress Test)
Se modifica temporalmente la variable `THRESHOLD=10` dentro del script para forzar una condición de error y verificar que la lógica de alerta funciona.

**Ejecución con Threshold reducido:**
`./check_disk.sh`

**Resultado en disk_report.txt:**
`[2026-02-28 11:05:00] ESTADO: CRÍTICO - Uso al 32%. Superado el umbral del 10%.`

## 3. Verificación de Automatización
Se ha integrado el script en `crontab` para asegurar una monitorización persistente sin intervención humana.
