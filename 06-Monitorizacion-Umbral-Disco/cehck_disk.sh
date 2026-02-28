#!/bin/bash

# ==========================================================
# NOMBRE: check_disk.sh
# DESCRIPCIÓN: Monitorización de capacidad de almacenamiento.
# FUNCIÓN: Generar alertas basadas en un umbral (Threshold).
# ==========================================================

# 1. Definición de variables de entorno y configuración
THRESHOLD=80
LOG_FILE="disk_report.txt"
PARTITION="/"

# 2. Captura de métrica del sistema
# Se utiliza df para obtener el porcentaje de uso de la partición definida
USAGE=$(df -h "$PARTITION" | grep "$PARTITION" | awk '{print $5}' | tr -d '%')

# 3. Lógica de control y registro de eventos
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Iniciando comprobación de: $PARTITION" >> "$LOG_FILE"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "ESTADO: CRÍTICO - Uso al $USAGE%. Superado el umbral del $THRESHOLD%." >> "$LOG_FILE"
    # Aquí un N2 añadiría una acción correctiva o envío de mail
else
    echo "ESTADO: OK - Uso actual al $USAGE%." >> "$LOG_FILE"
fi

echo "----------------------------------------------------" >> "$LOG_FILE"
