# DoTimer - Changelog

## v1.2.0 (Enero 9, 2026) - Spanish Support Edition

### ✅ Nuevas Características

#### Sistema de Localización Completo
- **Soporte para cliente español (esES/esMX):** El addon ahora funciona perfectamente con clientes en español
- **Traducción automática:** Los nombres de hechizos se traducen automáticamente del español al inglés internamente
- **100+ hechizos traducidos:** Todas las clases principales soportadas
- **Detección automática de idioma:** No requiere configuración manual

#### Archivos Nuevos
- **DoTimer_SpellLocalization.lua (184 líneas):**
  - Base de datos de traducciones español → inglés
  - Organizado por clases
  - Fácil de expandir con nuevos hechizos

- **DoTimer_Patch.lua (218 líneas):**
  - Sistema de hooks para traducción automática
  - Hook de `SpellSystem_OnEvent`: Traduce hechizos cuando se lanzan
  - Hook de `DoTimer_ListDebuffs`: Traduce debuffs en el objetivo
  - Función `DoTimer_ReturnEnglish()`: Convierte nombres a inglés
  - Sistema de caché para optimización
  - Comandos de diagnóstico

#### Comandos Nuevos
- **`/dotimerdiag`:** Muestra información de diagnóstico del addon
  - Estado de DoTimer_Settings
  - Estado de SpellSystem
  - Locale del cliente
  - Clase del jugador

- **`/dotimerspells`:** Lista todos los hechizos y su estado de traducción
  - Verde: Hechizo traducido correctamente
  - Rojo: Hechizo sin traducción
  - Muestra resumen con estadísticas

#### Documentación
- **README_SPANISH.md:** Guía completa en español
- **INSTRUCCIONES_RAPIDAS.txt:** Guía rápida de uso
- **CHANGELOG.md:** Este archivo

### 🔧 Mejoras Técnicas

#### Sistema de Hooks
1. **Hook de SpellSystem_OnEvent:**
   - Intercepta el evento `SPELLCAST_START`
   - Traduce `arg1` (nombre del hechizo) antes de que DoTimer lo procese
   - Usa `setglobal()` para modificar variables globales (Lua 5.0)

2. **Hook de DoTimer_ListDebuffs:**
   - Intercepta la función que escanea debuffs del objetivo
   - Traduce cada nombre de debuff a inglés
   - Permite que DoTimer compare correctamente los nombres

3. **Función DoTimer_ReturnEnglish:**
   - Implementada para que DoTimer pueda llamarla
   - Convierte nombres de hechizos a inglés
   - Usa la tabla DoTimer_SpellLocalization

#### Optimizaciones
- **Sistema de caché:** Las traducciones se guardan en memoria después de la primera vez
- **Detección de locale:** Solo se activa en clientes españoles (esES/esMX)
- **Mensajes de debug desactivados:** Sin spam en el chat por defecto
- **Hooks mínimos:** Solo se modifican las funciones necesarias

### 🐛 Correcciones

#### Problema: Timers no aparecían en pantalla
- **Causa:** DoTimer comparaba nombres en inglés con debuffs en español
- **Solución:** Hook de `DoTimer_ListDebuffs` para traducir debuffs del objetivo

#### Problema: Addon no detectaba hechizos lanzados
- **Causa:** Faltaba la función `DoTimer_ReturnEnglish()`
- **Solución:** Implementación de la función en DoTimer_Patch.lua

#### Problema: Mensajes de spam en el chat
- **Causa:** Mensajes de debug activados por defecto
- **Solución:** Todos los mensajes de debug comentados/eliminados

### 🎯 Hechizos Traducidos

#### Warlock (35+ hechizos)
- Maldiciones: Curse of Agony, Curse of Shadow, Curse of the Elements, etc.
- DoTs: Corruption, Immolate, Siphon Life
- CC: Fear, Howl of Terror, Death Coil, Banish
- Otros: Shadowburn, Conflagrate, etc.

#### Priest (15+ hechizos)
- DoTs: Shadow Word: Pain, Devouring Plague
- Buffs: Renew, Power Word: Shield
- CC: Psychic Scream, Shackle Undead
- Otros: Vampiric Embrace, etc.

#### Warrior (10+ hechizos)
- Rend, Sunder Armor, Demoralizing Shout, Thunder Clap, Hamstring, Disarm, etc.

#### Paladin (6+ hechizos)
- Judgement of Wisdom, Judgement of Light, Hammer of Justice, Repentance, etc.

#### Druid (15+ hechizos)
- DoTs: Rake, Rip, Moonfire, Insect Swarm
- Buffs: Rejuvenation, Regrowth
- CC: Entangling Roots, Hibernate, Bash

#### Hunter (10+ hechizos)
- Serpent Sting, Viper Sting, Hunter's Mark, Freezing Trap, Wyvern Sting, etc.

#### Mage (10+ hechizos)
- Polymorph, Frost Nova, Slow, Scorch, Ice Barrier, etc.

#### Rogue (12+ hechizos)
- Rupture, Garrote, Kidney Shot, Blind, Deadly Poison, Crippling Poison, etc.

#### Shaman (10+ hechizos)
- Flame Shock, Frost Shock, Lightning Shield, Flametongue Weapon, etc.

### 📝 Archivos Modificados

1. **DoTimer.toc:**
   - Versión actualizada: 1.1.7 → 1.2.0
   - Agregadas líneas para cargar archivos de localización:
     ```
     DoTimer_SpellLocalization.lua
     DoTimer_Patch.lua
     ```
   - Notas actualizadas mencionando soporte español

2. **README.md:**
   - Actualizado con información de soporte español

### 🛠️ Proceso de Desarrollo

#### Fase 1: Investigación
- Análisis de cómo DoTimer identifica hechizos
- Descubrimiento del sistema basado en texturas
- Identificación de la función `DoTimer_ReturnEnglish()` faltante

#### Fase 2: Implementación
- Creación de DoTimer_SpellLocalization.lua con traducciones
- Implementación de hooks en DoTimer_Patch.lua
- Pruebas y ajustes

#### Fase 3: Depuración
- Problema: Timers no aparecían
- Solución: Hook de DoTimer_ListDebuffs
- Optimización: Eliminación de mensajes de spam

#### Fase 4: Documentación
- Creación de README_SPANISH.md
- Creación de INSTRUCCIONES_RAPIDAS.txt
- Actualización de README.md
- Creación de CHANGELOG.md

### 🚀 Próximos Pasos

- Agregar más hechizos según feedback de usuarios
- Soporte para otros idiomas (francés, alemán, etc.)
- Optimizaciones adicionales

---

## v1.1.7 (Diciembre 2025)

### Características
- Colores personalizados por tipo de hechizo
- Sonidos personalizados
- Traducción de interfaz al español (menús y comandos)
- Tema visual personalizado para El Sequito del Terror

---

## Notas

- **Autor Original:** Vendethiel
- **Modificado por:** Elnazzareno (DarckRovert)
- **Guild:** El Sequito del Terror
- **Servidor:** TurtleWoW
- **Contacto:** [twitch.tv/darckrovert](https://twitch.tv/darckrovert) | [kick.com/darckrovert](https://kick.com/darckrovert)

---

*Modificado con amor para El Sequito del Terror*
