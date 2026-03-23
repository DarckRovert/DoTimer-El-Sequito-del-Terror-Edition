# DoTimer - El Sequito del Terror Edition

## Descripción
DoTimer es un addon para rastrear la duración de tus DoTs (Damage over Time), maldiciones, CC y otros efectos de duración en World of Warcraft (TurtleWoW - Vanilla 1.12).

**¡AHORA CON SOPORTE COMPLETO PARA CLIENTE EN ESPAÑOL Y ARQUITECTURA PURA!**

## Versión
- **Versión:** 1.2.5 - El Sequito del Terror Edition (God-Tier Architecture)
- **Fecha:** Marzo 2026
- **Compatibilidad:** Lua 5.0 / WoW 1.12 / TurtleWoW

## Créditos
- **Addon Base:** DoTimer by Vendethiel
- **Re-estructurado por:** Elnazzareno (DarckRovert)
- **Guild:** El Sequito del Terror

## Características de esta Edición

### ✅ Soporte Completo para Cliente Español
- **Sistema de Inyección de Diccionario:** Funciona como un "Fallback" secundario ultrarrápido sin usar Hooks que destruyen el chat log.
- **100+ hechizos traducidos.**
- **Zero-Crashes Garantizado:** Se han arreglado fatalidades originarias del addon matriz relacionadas a variables Nulls en los Ghost Timers y cálculos de superposición de Maldiciones.

### Interfaz Mejorada "Premium Séquito"
- Colores personalizados por tipo de hechizo:
  - **Carmesí Profundo:** DoTs (Corruption, Immolate, Siphon Life)
  - **Púrpura Sombrío:** Maldiciones
  - **Azul Grisáceo Oscuro:** CC (Fear, Banish, Seduction)
  - **Naranja Sangre:** Hechizos de mascota
  - **Esmeralda Oscuro:** Drains
  - **Oro Oxidado:** Otros debuffs
- **Legibilidad Máxima**: Todas las fuentes de texto del addon ahora poseen `<Shadow>` integrado internamente, haciéndolas legibles (God-Tier) ante fondos 3D del mundo brillantes o confusos.
- Fondo Oscurecido en el Menú de Opciones.

## Instalación
1. Copia la carpeta `DoTimer` a `Interface\AddOns\`
2. Reinicia el juego o escribe `/reload`
3. Escribe `/dotimer` para configurar

## Comandos
- `/dotimer` o `/dot` - Abre el menú de configuración
- `/dotimer diag` - Modo Debug y comandos generales
- `/dotimerspells` - Lista el estado de la traducción activa actual de tus hechizos.

## El Ecosistema de Código
El parcheo de localización antiguo que operaba reemplazando variables globales de la API del juego (`arg1`) y re-procesando todos los eventos on-the-fly HA SIDO REMOVIDO por resultar inestable y perjudicial para otros Addons que parsean daño.
En su lugar, DoTimer ahora integra las traducciones como diccionarios puros insertados dentro de las funciones de ciclo de vida del addon de manera atómica, garantizando que el combate se siga logueando en español nativamente mientras DoTimer procesa visuales en un identificador unificado.

## Changelog Resumido (v1.2.5)
- [HOTFIX] Eliminados los hooks dañinos a API nativa que provenían de versiones experimentales anteriores del español.
- [HOTFIX] Arreglado el crash mortal de Null Pointer `string.sub(nil)` en variables de *Ghost Timers*.
- [HOTFIX] Arreglada la condicional `english = english` mal implementada en Heals que devolvía nulos en sanación Over-Time.
- [ARTE] Inyectadas sombras `<Shadow>` perfectas en todos los XML nodes asistiend0 visualización HD.
- [ARTE] Paleta "Séquito del Terror" de contrastes altos re-desplegada exitosamente y menú principal oscurecido.

---
*Larga Vida a TurtleWoW.*
