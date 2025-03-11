#!/bin/bash

# Obtener el tiempo de actividad del sistema en segundos
uptime_seconds=$(awk '{print int($1)}' /proc/uptime)

# Convertir los segundos a minutos
minutes=$((uptime_seconds / 60))

# Formatear el resultado
uptime_formatted="Up: ${minutes} minutes"

# Imprimir el resultado en formato JSON para Waybar
echo "{\"text\": \"${uptime_formatted}\", \"tooltip\": \"Uptime: ${uptime_formatted}\"}"
