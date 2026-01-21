# DoTimer - El Sequito del Terror Edition

## Descripción
DoTimer es un addon para rastrear la duración de tus DoTs (Damage over Time), maldiciones, CC y otros efectos de duración en World of Warcraft (TurtleWoW - Vanilla 1.12).

**¡AHORA CON SOPORTE COMPLETO PARA CLIENTE EN ESPAÑOL!**

## Versión
- **Versión:** 1.2.0 - El Sequito del Terror Edition (Spanish Support)
- **Fecha:** Enero 2026
- **Compatibilidad:** Lua 5.0 / WoW 1.12 / TurtleWoW
- **Soporte de Idiomas:** Español (esES/esMX) e Inglés

## Créditos

### Autor Original
- **Addon Base:** DoTimer by Vendethiel

### Modificado por
- **In-Game:** Elnazzareno
- **Real Life:** DarckRovert
- **Guild:** El Sequito del Terror

### Contacto
- **Twitch:** [twitch.tv/darckrovert](https://twitch.tv/darckrovert)
- **Kick:** [kick.com/darckrovert](https://kick.com/darckrovert)

## Características de esta Edición

### ✅ Soporte Completo para Cliente Español
- **Sistema de traducción automática:** Traduce nombres de hechizos del español al inglés internamente
- **100+ hechizos traducidos:** Todas las clases soportadas (Warlock, Priest, Warrior, Paladin, Druid, Hunter, Mage, Rogue, Shaman)
- **Detección automática de idioma:** Funciona en clientes esES y esMX
- **Sin configuración necesaria:** Funciona automáticamente al instalar

### Interfaz Mejorada
- Colores personalizados por tipo de hechizo:
  - **Morado oscuro:** DoTs (Corruption, Immolate, Siphon Life)
  - **Rosa/Magenta:** Maldiciones (Curse of Agony, Curse of Shadow, etc.)
  - **Azul claro:** CC (Fear, Banish, Seduction)
  - **Naranja:** Hechizos de mascota
  - **Verde esmeralda:** Drains (Drain Life, Drain Mana, Drain Soul)
  - **Amarillo:** Otros debuffs

### Sonidos Personalizados
- Alertas de sonido diferentes según el tipo de hechizo
- Sonido de expiración cuando quedan 5 segundos

### Traducción al Español
- Menú completamente traducido
- Mensajes y tooltips en español
- Comandos de ayuda en español

### Tema Visual
- Tema oscuro/morado estilo Brujo
- Optimizado para la guild El Sequito del Terror

## Instalación

1. Copia la carpeta `DoTimer` a `Interface\AddOns\`
2. Reinicia el juego o escribe `/reload`
3. Escribe `/dotimer` para configurar
4. **¡Listo!** El addon detectará automáticamente tu idioma

## Comandos

### Comandos Básicos
- `/dotimer` o `/dot` - Abre el menú de configuración
- `/dotimer help` - Muestra la ayuda
- `/dotimer status` - Muestra el estado actual
- `/dotimer on/off` - Activa/desactiva el addon

### Comandos de Diagnóstico (NUEVOS)
- `/dotimerdiag` - Muestra información de diagnóstico del addon
- `/dotimerspells` - Lista todos tus hechizos y su estado de traducción
  - **Verde:** Hechizo traducido correctamente
  - **Rojo:** Hechizo sin traducción (necesita agregarse)

## Sistema de Localización

### Cómo Funciona

1. **Detección automática:** El addon detecta si tu cliente está en español (esES/esMX)
2. **Traducción en tiempo real:** Cuando lanzas un hechizo en español (ej: "Corrupción"), el sistema lo traduce a "Corruption" internamente
3. **Comparación de debuffs:** El addon escanea los debuffs del objetivo y los traduce para compararlos correctamente
4. **Creación de timers:** Los timers se crean y muestran normalmente

### Archivos del Sistema

- **DoTimer_SpellLocalization.lua:** Base de datos de traducciones (100+ hechizos)
- **DoTimer_Patch.lua:** Sistema de hooks y traducción automática
- **Localization_ES.lua:** Interfaz del addon en español

### Hechizos Soportados

#### Warlock (35+ hechizos)
- Corruption, Immolate, Curse of Agony, Curse of Shadow, Fear, Banish, Death Coil, Siphon Life, etc.

#### Priest (15+ hechizos)
- Shadow Word: Pain, Renew, Power Word: Shield, Psychic Scream, Devouring Plague, etc.

#### Warrior (10+ hechizos)
- Rend, Sunder Armor, Demoralizing Shout, Thunder Clap, Hamstring, etc.

#### Paladin (6+ hechizos)
- Judgement of Wisdom, Judgement of Light, Hammer of Justice, Repentance, etc.

#### Druid (15+ hechizos)
- Rake, Rip, Moonfire, Rejuvenation, Regrowth, Entangling Roots, etc.

#### Hunter (10+ hechizos)
- Serpent Sting, Hunter's Mark, Freezing Trap, Viper Sting, Wyvern Sting, etc.

#### Mage (10+ hechizos)
- Polymorph, Frost Nova, Scorch, Slow, Ice Barrier, etc.

#### Rogue (12+ hechizos)
- Rupture, Garrote, Kidney Shot, Deadly Poison, Crippling Poison, Blind, etc.

#### Shaman (10+ hechizos)
- Flame Shock, Lightning Shield, Flametongue Weapon, Frost Shock, etc.

## Agregar Nuevos Hechizos

Si encuentras un hechizo que no funciona:

1. **Verifica el estado:**
   ```
   /dotimerspells
   ```
   Busca tu hechizo en la lista. Si aparece en ROJO, necesita traducción.

2. **Agrega la traducción:**
   - Abre `DoTimer_SpellLocalization.lua`
   - Busca la sección de tu clase (ej: `-- WARLOCK`)
   - Agrega una línea siguiendo el formato:
   ```lua
   DoTimer_SpellLocalization["Nombre en Español"] = "English Name"
   ```

3. **Ejemplo:**
   ```lua
   DoTimer_SpellLocalization["Maldición de Agonía"] = "Curse of Agony"
   ```

4. **Recarga el juego:**
   ```
   /reload
   ```

## Solución de Problemas

### Los timers no aparecen

1. **Verifica que el addon esté activado:**
   ```
   /dotimer on
   /dotimer ui on
   ```

2. **Ejecuta diagnóstico:**
   ```
   /dotimerdiag
   ```
   Verifica que:
   - `Enabled` no sea `nil`
   - `UI Visible` no sea `nil`
   - `Locale del cliente` sea `esES` o `esMX`

3. **Verifica traducciones:**
   ```
   /dotimerspells
   ```
   Asegúrate de que tus hechizos principales estén en VERDE.

### Un hechizo específico no funciona

1. Lanza el hechizo en el juego
2. Ejecuta `/dotimerspells`
3. Busca el hechizo en la lista
4. Si está en ROJO, agrégalo a `DoTimer_SpellLocalization.lua`
5. `/reload`

### El addon se carga pero no detecta hechizos

1. Verifica que `DoTimer.toc` contenga:
   ```
   DoTimer_SpellLocalization.lua
   DoTimer_Patch.lua
   ```
   ANTES de las otras líneas.

2. Asegúrate de que los archivos existan en la carpeta del addon.

## Notas Técnicas

### Arquitectura del Sistema

1. **DoTimer_SpellLocalization.lua:** Tabla de traducciones
   - Detecta locale (esES/esMX)
   - Mapea nombres españoles a ingleses

2. **DoTimer_Patch.lua:** Sistema de hooks
   - Hook de `SpellSystem_OnEvent`: Traduce nombres cuando se lanzan hechizos
   - Hook de `DoTimer_ListDebuffs`: Traduce nombres de debuffs en el objetivo
   - Función `DoTimer_ReturnEnglish`: Convierte nombres a inglés
   - Sistema de caché para optimización

3. **Flujo de Ejecución:**
   ```
   Jugador lanza "Corrupción"
   ↓
   Evento SPELLCAST_START (arg1 = "Corrupción")
   ↓
   Hook traduce: arg1 = "Corruption"
   ↓
   DoTimer procesa "Corruption"
   ↓
   DoTimer busca debuff en objetivo
   ↓
   Hook traduce debuffs: "Corrupción" → "Corruption"
   ↓
   DoTimer encuentra coincidencia
   ↓
   Timer creado y mostrado
   ```

### Optimizaciones

- **Caché de traducciones:** Las traducciones se guardan en memoria después de la primera vez
- **Detección de locale:** Solo se activa en clientes españoles
- **Hooks mínimos:** Solo se modifican las funciones necesarias
- **Sin spam:** Mensajes de debug desactivados por defecto

## Uso Exclusivo

Este addon ha sido personalizado para uso exclusivo de la guild **El Sequito del Terror** en TurtleWoW.

## Changelog

### v1.2.0 (Enero 2026) - Spanish Support
- ✅ Sistema completo de localización para cliente español
- ✅ 100+ hechizos traducidos para todas las clases
- ✅ Hook de `SpellSystem_OnEvent` para traducción de hechizos lanzados
- ✅ Hook de `DoTimer_ListDebuffs` para traducción de debuffs en objetivo
- ✅ Función `DoTimer_ReturnEnglish()` implementada
- ✅ Comandos de diagnóstico: `/dotimerdiag` y `/dotimerspells`
- ✅ Sistema de caché para optimización
- ✅ Mensajes de debug desactivados por defecto
- ✅ Documentación completa en español

### v1.1.x (Diciembre 2025)
- Colores personalizados por tipo de hechizo
- Sonidos personalizados
- Traducción de interfaz al español
- Tema visual personalizado

---

*Modificado con amor para El Sequito del Terror*
