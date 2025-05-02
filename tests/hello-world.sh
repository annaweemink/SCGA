#!/bin/bash

# Test: Hello World de CI para validar ejecución de workflows

echo "Iniciando prueba: hello-world.sh"

# Validar versión de bash
if ! command -v bash >/dev/null 2>&1; then
  echo "Error: bash no está instalado"
  exit 1
fi

# Validar existencia de 'jq' instalado por el workflow
if ! command -v jq >/dev/null 2>&1; then
  echo "Error: jq no está disponible"
  exit 1
fi

# Crear un JSON temporal y parsearlo
echo '{"estado":"ok","mensaje":"Prueba superada"}' > temp.json

estado=$(jq -r '.estado' temp.json)
mensaje=$(jq -r '.mensaje' temp.json)

# Validar contenido del JSON
if [[ "$estado" != "ok" || "$mensaje" != "Prueba superada" ]]; then
  echo "❌ Error en parseo JSON"
  exit 1
fi

echo "✅ Prueba ejecutada correctamente"
exit 0
