# DoTimer (Edición El Séquito del Terror)

DoTimer es un gestor avanzado de "Damage over Time" (DoTs), "Healing over Time" (HoTs) y Cooldowns. Esta versión incluye un motor de traducción único para una compatibilidad total con clientes en español e inglés.

## 🚀 Características Principales

*   **Rastreo Multi-Objetivo**: Muestra temporizadores de tus hechizos en múltiples enemigos simultáneamente.
*   **Soporte Bilingüe Total**: Funciona perfectamente en clientes en Español (esES/esMX) gracias a su base de datos interna de traducción.
*   **Integración de IA**: Permite que `TerrorSquadAI` lea tus DoTs para sugerirte la rotación óptima.
*   **Personalizable**: Cambia colores, tamaños, sonidos y filtros de visualización.

## 🎮 Guía de Uso

### Básico
Simplemente lanza tus hechizos. DoTimer creará automáticamente barras de tiempo para:
*   Debuffs en enemigos (Corrupción, Dolor, Ruptura, etc.)
*   Buffs en aliados (Renovar, Rejuvenecimiento, etc.)
*   Tus propios Cooldowns.

### Comandos de Chat
*   `/dotimer` - Abre el panel de configuración principal.
*   `/dotimer anchor` - Muestra/Oculta los anclajes para mover las barras.
*   `/dotimer on/off` - Activa o desactiva el addon.

### Comandos Específicos de esta Edición
*   `/dotimerspells` - **[NUEVO]** Muestra la lista de hechizos y verifica si están correctamente traducidos/detectados por el sistema.
    *   **Verde**: Funcionando correctamente.
    *   **Rojo**: No detectado (requiere reporte).
*   `/dotimerdiag` - Diagnóstico del sistema de parches de idioma.

## 🌐 Integración Terror Ecosystem

DoTimer actúa como los "ojos" de `TerrorSquadAI`:
1.  **Lectura**: DoTimer informa a la IA qué hechizos están activos en el objetivo.
2.  **Análisis**: La IA calcula si es eficiente renovar el DoT.
3.  **Acción**: Si el DoT va a expirar, la IA te sugiere renovarlo mediante alertas o el `TacticalRelease`.

## 🔧 Solución de Problemas

**Si los timers no aparecen en cliente español:**
1.  Asegúrate de tener la última versión de este pack.
2.  Ejecuta `/dotimerspells` para verificar que tu clase esté soportada.
3.  Si un hechizo sale en rojo, contacta a DarckRovert.

---
*Modificado por DarckRovert para El Séquito del Terror.*
*Ver `CHANGELOG.md` para historial de cambios detallado.*
