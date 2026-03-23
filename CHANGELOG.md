# DoTimer - Changelog
## v1.2.5 (Marzo 22, 2026) - God-Tier Architecture Update

### 🔥 FIX CATACLÍSMICOS (Safety & Stability)
- **CRÍTICO: Ghost Timer Null Crash**: Arreglado un bug letal escondido en la base original del Addon donde las iteraciones fantasmas no heredaban el idioma base del hechizo causando `string.sub(nil)` en variables y cortando la ejecución enteramente de AddOns (LUA ERROR massif).
- **CRÍTICO: Ganchos Destructores Removidos**: Removido por completo el hooking invasivo sobre `SPELLCAST_START` que destruía de manera irremediable el parseo de hechizos Resistidos/Evadidos en el Combat Log logrando una arquitectura 100% Pura.
- **CRÍTICO: Curse Overlap Corregido**: El addon ya no fallará al identificar e intercambiar "Maldición de Agonía" en Castellano versus "Curse".
- **CRÍTICO: Heal Overlap Overhaul**: Corregida validación rota `english=english` en sanaciones para que asigne adecuadamente valores desde `DoTimer_ReturnEnglish`.

### 🎨 REVISIÓN ESTÉTICA "SÉQUITO PREMIUM"
- Creada función nativa para imbuir texto `<Shadow>` en absolutamente todos los contadores de tiempo de XML, entregando tipografía "God-Tier" en contraste sin importar donde apunte la cámara 3D en Turtle WoW.
- Fondos del menú oscurecidos a negro translúcido y paleta de colores cambiada a temas carmesí, púrpura sombrío e índigo sangriento, sincronizando el addon herméticamente con la identidad de El Séquito del Terror.

## v1.2.0 (Enero 9, 2026) - Spanish Support Edition
- Añadido `DoTimer_SpellLocalization.lua` introduciendo la capacidad pasiva de mapeo de traducciones esES y esMX a inglés.
- Añadido `/dotimerspells` y herramientas de diagnóstico para comprobar el estado interno de la capa de adaptación.

---
*Addon estabilizado y refinado para "El Séquito del Terror"*
