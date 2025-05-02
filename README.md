# SCGA Toolkit v2.1 - Sistema de Control Global Autónomo

**Versión móvil-autónoma del toolkit anticrisis. Despliegue desde Termux. Cero intervención. Mente táctica.**

---

## Qué es

**SCGA Toolkit** es un sistema modular diseñado para anticiparse al colapso. Ejecuta inteligencia táctica desde Android con:
- Automatización total (n8n, Termux, bash scripts)
- Mapas interactivos de crisis (Leaflet.js + OSM)
- Recolección de datos en tiempo real (scrapers, APIs)
- Ingresos automáticos (airdrops, subastas, arbitraje)
- Validación del entorno, autocuración del sistema y despliegue CI/CD

---

## Módulos incluidos

- `airdrops.sh`: Detector de airdrops activos, ejecuta tareas automáticas para farmear y trackear recompensas.
- `dex_arbitrage.sh`: Explorador de oportunidades de arbitraje entre DEXs. Adaptado a tokens emergentes.
- `sniper_subastas.sh`: Script para escanear propiedades embargadas y ejecutar alertas o scraping.
- `launcher.sh`: Panel central. Menú de acceso a todo el sistema desde `scga` en consola.
- `install.sh`: Instalador automático del entorno.
- `upload_to_github.sh`: Subida automatizada al repositorio (requiere token GitHub personal).

---

## Requisitos

- Android + Termux actualizado
- Conexión a Internet (mínima)
- Dependencias: `curl`, `jq`, `bc`, `pup`, `termux-api`, `git`

---

## Instalación

```bash
pkg update -y && pkg install -y git
git clone https://github.com/annaweemink/scga-toolkit.git
cd scga-toolkit
bash install.sh
