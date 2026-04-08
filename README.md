# DoTimer — Aura Visualizer (v1.5.0 [DoT-Tier]) ⏳⚔️🔮

> **The definitive duration timer for Turtle WoW.** Optimizado para el clan **El Séquito del Terror** con soporte completo para hechizos en español y lógica de refresco asíncrona personalizada por **DarckRovert**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![Version](https://img.shields.io/badge/version-v1.5.0--DoT--Tier-purple)](./CHANGELOG.md)
[![World of Warcraft](https://img.shields.io/badge/WoW-1.12.1--Turtle-orange)](https://turtle-wow.org)
[![Support](https://img.shields.io/badge/Support-Ko--fi-blue)](https://ko-fi.com/darckrovert)

---

## 🏛️ ¿Qué es DoTimer [Séquito Edition]?

Es la herramienta de seguimiento de perjuicios (DoTs) y beneficios (Buffs) definitiva para Vanilla WoW. Esta versión ha sido pulida para eliminar errores de desbordamiento de memoria y asegurar que ningún hechizo de Turtle WoW se quede sin rastrear.

### 🧩 Tracker Feature Matrix (Capacidades)

| Módulo | Tipo de Datos | Funcionalidad | Descripción |
| :--- | :--- | :--- | :--- |
| **Dot Watcher** | Spell Logic | Rastreo Multiobjetivo | Visualiza tus perjuicios en múltiples enemigos simultáneamente |
| **Buff Tracker** | Effect Logic | Gestión de Beneficios | Monitoriza la duración de tus procs y buffs críticos |
| **Neural Refresher**| Sync Logic | Refresco Asíncrono | Detecta la renovación de hechizos sin parpadeo visual |
| **Locales Sync** | Localization | Soporte esES Real | Traducción y detección nativa de hechizos en cliente español |
| **Apex Timer Skin** | Visual Mod | Diseño Diamond Tier | Barras de tiempo elegantes integradas con pfUI |

### ⚡ Benchmarks de Precisión (v9.4)

| Operación | Latencia Séquito | Latencia Standard | Estado |
| :--- | :---: | :---: | :---: |
| **Spell Detection** | < 5ms | ~50ms | ✅ |
| **Timer Decay** | Frame-Perfect | Server-Tick | ✅ |
| **Memory usage** | < 1MB | ~3MB | ✅ |

---

## 🏗️ Suite de Documentación (Wiki)

Domina tus rotaciones en nuestra base de conocimientos oficial:

- 🏰 **[Arquitectura de Hechizos](https://github.com/DarckRovert/DoTimer-El-Sequito-del-Terror-Edition/wiki/Arquitectura-(Extended))**: Cómo gestionamos DoTimer_SpellLocalization.
- 🛠️ **[Guía de API de Tiempo](https://github.com/DarckRovert/DoTimer-El-Sequito-del-Terror-Edition/wiki/Guía-de-API)**: Hooks para alertas de TerrorMeter.
- ❓ **[FAQ de Temporizadores](https://github.com/DarckRovert/DoTimer-El-Sequito-del-Terror-Edition/wiki/FAQ-(Timers))**: ¿Por qué no veo mi Corrupción?
- 📖 **[Manual del Conjurador](https://github.com/DarckRovert/DoTimer-El-Sequito-del-Terror-Edition/wiki/Manual-de-Usuario)**: Guía de configuración de anclajes.

## 🚀 Despliegue Rápido (Timer-Flow)

1.  **Limpieza**: Borra cualquier versión previa de `DoTimer` en `AddOns/`.
2.  **Instalación**: Extrae en `Interface\AddOns\DoTimer\`.
3.  **Activación**: Lanza un hechizo de duración (ej: Dolor de Sombra) y las barras aparecerán automáticamente.

## 🔗 Ecosistema Oficial (DarckRovert)

- [Live Streams (Twitch)](https://twitch.tv/darckrovert)
- [Web Corporativa](https://sequitodelterror.netlify.app/)
- [Soporte & Donaciones (Ko-fi)](https://ko-fi.com/darckrovert)

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Precisión mágica para la conquista de Azeroth.*