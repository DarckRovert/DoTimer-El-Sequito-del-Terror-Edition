# DoTimer - Soporte para Cliente Español (Arquitectura Pura)

## ¿Qué es esto?

Este sistema permite que DoTimer funcione perfectamente con el cliente de WoW en español, utilizando un método 100% no destructivo que no interfiere con el registro de combate nativo del juego.

**¡SISTEMA COMPLETAMENTE FUNCIONAL, ESTABLE Y LIGERO!**

- ✅ 100+ hechizos traducidos
- ✅ Traducción nativa mediante Diccionario Directo en el flujo de `DoTimer_ReturnEnglish`
- ✅ **Cero hooks invasivos**: No intercepta eventos del servidor, previniendo bugs con "Resists" y "Misses".
- ✅ Crash Free: Inmunidad garantizada a los errores de variables nulas (Ghost Timers/Fake Timers fix).
- ✅ Detección automática de idioma

## Archivos del Sistema

### 1. DoTimer_SpellLocalization.lua
Contiene todas las traducciones de hechizos español → inglés para todas las clases.
Si la traducción por texturas de iconos nativa de Vanilla falla (por ejemplo, cuando la mascota muere y desaparece el libro de hechizos de mascota), este diccionario actúa como una red de seguridad infalible de búsqueda rápida O(1).

### 2. DoTimer_Patch.lua
Ahora actúa puramente como un sistema de diagnóstico con la función `/dotimerspells`. Todos los ganchos letales (Hooks) de versiones anteriores han sido removidos para proteger el código cliente de TurtleWoW.

### 3. DoTimer.toc
Carga los archivos en orden:
1. DoTimer_SpellLocalization.lua
2. DoTimer_Patch.lua
3. SpellSystem\SpellSystem.xml
4. DoTimer\DoTimer.xml

## Cómo Usar

1. Inicia el juego con cliente en español.
2. El addon se cargará automáticamente detectando el idioma o mapeando las texturas nativamente.
3. ¡Listo! Los timers funcionarán.

### Verificar Traducciones
Escribe en el chat del juego:
```
/dotimerspells
```
Muestra qué hechizos han sido detectados en el diccionario de traducción activo.

## Agregar Nuevas Traducciones

1. Usa `/dotimerspells` para ver qué te falta.
2. Abre `DoTimer_SpellLocalization.lua`.
3. Agrega la línea bajo tu clase:
```lua
DoTimer_SpellLocalization["Maldición de Agonía"] = "Curse of Agony"
```
4. `/reload`.

## Notas Técnicas y Resolución de Bugs Históricos

En Enero de 2026, la guild "El Séquito del Terror" arregló 3 bugs catastróficos presentes en distribuciones antiguas del addon:
1. **Crash LUA por Ghost Timers:** Los temporizadores fantasma ahora heredan la propiedad de idioma correctamente, evitando cuelgues de pantalla (`string.sub(nil)`).
2. **Registro de Combate roto:** Se eliminó la pésima práctica de forzar el reemplazo de la variable global `arg1` en el evento `SPELLCAST_START`, lo cual arruinaba el reporte de resistidos.
3. **Maldiciones Overlaping:** Se arreglaron las validaciones en cadena para que las maldiciones ("Curses") se sobrescriban correctamente entre sí validando siempre contra su ID en Inglés absoluto y no el string localizado del usuario.

## Créditos
- **Addon Original:** DoTimer by Vendethiel
- **Modificado por:** Elnazzareno (DarckRovert)
- **Guild:** El Sequito del Terror
- **Motor de Localización Puro:** 2026

## Contacto
- **Twitch:** [twitch.tv/darckrovert](https://twitch.tv/darckrovert)
- **Kick:** [kick.com/darckrovert](https://kick.com/darckrovert)
