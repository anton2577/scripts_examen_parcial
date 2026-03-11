# Sistema de Automatización y Monitoreo en Linux (Bash)
## Descripción

Este proyecto implementa un sistema de automatización de tareas administrativas en Linux utilizando scripts Bash.
El sistema permite:
- Monitorear recursos del sistema (CPU, RAM y disco)
- Crear archivos temporales de prueba
- Limpiar archivos temporales automáticamente
- Generar reportes del sistema
- Ejecutar mantenimiento automático mediante cron

## Estructura del proyecto

menu_principal.sh
monitoreo_sistema.sh
gestor_limpieza.sh
tarea_automatizada.sh

EXAMEN_FINAL/
reporte_final.txt
log_cron.txt

## Requisitos

Sistema Linux (Ubuntu recomendado)
Bash
Permisos de ejecución en los scripts
Dar permisos:
chmod +x *.sh

## Ejecución del sistema

Para iniciar el sistema ejecutar:

bash menu_principal.sh

Esto abrirá el menú interactivo.

## Scripts

### menu_principal.sh

Script principal del sistema.

Opciones disponibles:

1. Monitoreo de recursos
2. Crear archivos temporales
3. Limpieza de archivos
4. Generar reporte
5. Salir

### monitoreo_sistema.sh

Obtiene información del sistema:

- Usuario actual
- Versión del sistema operativo
- Uso de CPU
- Uso de RAM
- Uso de disco

Ejecutar:

bash monitoreo_sistema.sh

Generar reporte:

bash monitoreo_sistema.sh --reporte

### gestor_limpieza.sh

Crear archivos temporales:

bash gestor_limpieza.sh --crear

Eliminar archivos temporales:

bash gestor_limpieza.sh --limpiar

-### tarea_automatizada.sh

Ejecuta tareas automáticas de mantenimiento:

bash tarea_automatizada.sh

## Automatización con cron

Editar cron:

crontab -e

Agregar la línea:

0 2 * * * /home/ivan/EXAMEN_FINAL/tarea_automatizada.sh

Esto ejecutará el mantenimiento automáticamente cada día a las 2 AM.

## Autores
Ivan Huamaní
Antonio Salas  
