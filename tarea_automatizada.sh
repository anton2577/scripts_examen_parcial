#!/bin/bash
# Script: tarea_automatizada.sh
RUTA="/home/ivan/EXAMEN_FINAL"

# Ejecución de tareas silenciosas
bash $RUTA/gestor_limpieza.sh --limpiar > /dev/null
bash $RUTA/monitoreo_sistema.sh --reporte > /dev/null

# Registro en el log de la nueva carpeta
echo "[$(date)] Mantenimiento nocturno exitoso." >> $RUTA/log_cron.txt
