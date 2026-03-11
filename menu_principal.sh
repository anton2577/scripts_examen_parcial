#!/bin/bash
# Script: menu_principal.sh
RUTA="/home/ivan/EXAMEN_FINAL"

while true; do
    clear
    echo "=========================================================="
    echo "       SISTEMA INTEGRAL DE GESTIÓN - UBUNTU"
    echo "=========================================================="
    echo " Administrador: $USER | $(date "+%d/%m/%Y %H:%M:%S")"
    echo "----------------------------------------------------------"
    echo " 1. Ejecutar Monitoreo de Recursos (CPU, RAM, DISCO)"
    echo " 2. Crear Archivos Temporales de Prueba"
    echo " 3. Ejecutar Limpieza Automática de Temporales"
    echo " 4. Generar Reporte de Auditoría Final"
    echo " 5. Salir"
    echo "=========================================================="
    read -p " Seleccione una opción [1-5]: " OPCION

    case $OPCION in
        1) bash ./monitoreo_sistema.sh ;;
        2) bash ./gestor_limpieza.sh --crear ;;
        3) bash ./gestor_limpieza.sh --limpiar ;;
        4) bash ./monitoreo_sistema.sh --reporte ;;
        5) echo "Cerrando sistema..."; exit 0 ;;
        *) echo "Opción inválida."; sleep 1 ;;
    esac
done
