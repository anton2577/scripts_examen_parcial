#!/bin/bash
# Script: monitoreo_sistema.sh - Versión Final Ultra Precisa

# Rutas
RUTA_CARPETA="/home/ivan/EXAMEN_FINAL"
RUTA_REPORTE="$RUTA_CARPETA/reporte_final.txt"
mkdir -p "$RUTA_CARPETA"

# --- CAPTURA DE HARDWARE ---
CPU_MODELO=$(lscpu | grep "Model name" | sed 's/Model name: *//')

# Aumentamos a 2 segundos de espera (-d 2) para asegurar que la VM despierte
# Usamos LC_ALL=C para que los decimales no causen error entre puntos y comas
CPU_USO=$(LC_ALL=C top -bn2 -d 2 | grep "Cpu(s)" | tail -n1 | awk '{print 100 - $8 "%"}')

RAM_USO=$(free | grep Mem | awk '{printf "%.2f%%", $3/$2 * 100.0}')
DISCO_PORC=$(df -h / | awk 'NR==2 {print $5}')
VALOR_DISCO=$(echo $DISCO_PORC | tr -dc '0-9')

[ "$VALOR_DISCO" -gt 80 ] && ESTADO="CRÍTICO" || ESTADO="ÓPTIMO"

# --- GENERACIÓN DE SALIDA ---
generar_datos() {
    echo "=========================================="
    echo "      REPORTE DE AUDITORÍA INTEGRAL"
    echo "=========================================="
    echo "FECHA     : $(date "+%d/%m/%Y %H:%M:%S")"
    echo "ADMIN     : $(whoami)"
    echo "SISTEMA   : $(uname -srm)"
    echo "CPU       : ($CPU_USO)"
    echo "RAM       : $RAM_USO"
    echo "DISCO     : $DISCO_PORC ($ESTADO)"
    echo "=========================================="
}

# [touch] - Comando obligatorio para asegurar el archivo de texto
touch "$RUTA_REPORTE"

if [ "$1" == "--reporte" ]; then
    generar_datos > "$RUTA_REPORTE"
    echo "¡Reporte actualizado con éxito!"
    [ -t 0 ] && read -p "Presione Enter para continuar..."
else
    generar_datos
    read -p "Presione Enter para continuar..."
fi
