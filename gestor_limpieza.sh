#!/bin/bash
# Script: gestor_limpieza.sh
DIR_TRABAJO="/tmp/idat_sistema"

if [ "$1" == "--crear" ]; then
    echo "Creando archivos temporales en $DIR_TRABAJO..."
    mkdir -p "$DIR_TRABAJO"
    touch "$DIR_TRABAJO/evidencia_{1..5}.tmp"
    echo "PROCESO FINALIZADO: 5 archivos creados."
    read -p "Presione Enter para continuar..."
elif [ "$1" == "--limpiar" ]; then
    echo "Iniciando limpieza de temporales..."
    if [ -d "$DIR_TRABAJO" ]; then
        rm -rf "$DIR_TRABAJO"/*.tmp
        echo "PROCESO FINALIZADO: Carpeta limpia."
    else
        echo "La carpeta no existe o ya está vacía."
    fi
    [ -t 0 ] && read -p "Presione Enter para continuar..."
fi
