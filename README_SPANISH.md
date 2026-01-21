# DoTimer - Soporte para Cliente Español

## ¿Qué es esto?

Este sistema permite que DoTimer funcione correctamente con el cliente de WoW en español. El addon original solo funciona con nombres de hechizos en inglés, pero ahora traduce automáticamente los nombres españoles a inglés internamente.

**¡SISTEMA COMPLETAMENTE FUNCIONAL Y PROBADO!**

- ✅ 100+ hechizos traducidos
- ✅ Todas las clases soportadas
- ✅ Detección automática de idioma
- ✅ Sin configuración necesaria
- ✅ Sin mensajes de spam

## Archivos del Sistema

### 1. DoTimer_SpellLocalization.lua
Contiene todas las traducciones de hechizos español → inglés para todas las clases:
- Warlock (Brujo)
- Priest (Sacerdote)
- Warrior (Guerrero)
- Paladin (Paladín)
- Druid (Druida)
- Hunter (Cazador)
- Mage (Mago)
- Rogue (Pícaro)
- Shaman (Chamán)

### 2. DoTimer_Patch.lua
Sistema de hooks que intercepta los nombres de hechizos y los traduce automáticamente.
Incluye:
- Hook de GetSpellName()
- Hook de SpellSystem_OnEvent()
- Sistema de caché para eficiencia
- Comando /dotimerspells para debug

### 3. DoTimer.toc
Archivo de configuración que carga los archivos en el orden correcto:
1. DoTimer_SpellLocalization.lua (primero)
2. DoTimer_Patch.lua (segundo)
3. SpellSystem\SpellSystem.xml
4. DoTimer\DoTimer.xml

## Cómo Usar

### Uso Normal
1. Inicia el juego con cliente en español
2. El addon se cargará automáticamente
3. Verás el mensaje: "DoTimer Multiidioma cargado. Usa /dotimerspells para ver traducciones."
4. ¡Listo! Los timers funcionarán correctamente

### Verificar Traducciones
Escribe en el chat del juego:
```
/dotimerspells
```

Esto mostrará:
- Lista de todos tus hechizos
- **VERDE** = Hechizo traducido correctamente
- **ROJO** = Hechizo sin traducción (necesita agregarse)
- Resumen con total de hechizos traducidos y sin traducir

## Agregar Nuevas Traducciones

Si encuentras un hechizo que no funciona:

1. **Verifica si está traducido:**
   ```
   /dotimerspells
   ```

2. **Si aparece en ROJO, agrégalo:**
   - Abre `DoTimer_SpellLocalization.lua`
   - Busca la sección de tu clase
   - Agrega la línea:
   ```lua
   DoTimer_SpellLocalization["Nombre en Español"] = "English Name"
   ```

3. **Ejemplo para Warlock:**
   ```lua
   DoTimer_SpellLocalization["Maldición de Agonía"] = "Curse of Agony"
   ```

4. **Recarga el addon:**
   ```
   /reload
   ```

## Solución de Problemas

### El addon no carga
- Verifica que los archivos estén en: `Interface\AddOns\DoTimer\`
- Asegúrate de que DoTimer.toc tenga las líneas:
  ```
  DoTimer_SpellLocalization.lua
  DoTimer_Patch.lua
  ```

### Los timers no aparecen
1. Verifica que el addon esté activado: `/dotimer on`
2. Verifica que la UI esté visible: `/dotimer ui on`
3. Usa `/dotimerspells` para ver si tu hechizo está traducido

### Un hechizo específico no funciona
1. Lanza el hechizo en el juego
2. Usa `/dotimerspells` para ver el nombre exacto en español
3. Agrega la traducción en DoTimer_SpellLocalization.lua
4. `/reload`

### Mensajes de debug molestos
Si ves muchos mensajes "[DoTimer] Normalizando...", está activado el modo debug.
Para desactivarlo:
1. Abre `DoTimer_Patch.lua`
2. Busca la línea 30 (aproximadamente)
3. Asegúrate de que esté comentada con `--`:
   ```lua
   -- DEFAULT_CHAT_FRAME:AddMessage("[DoTimer] Normalizando: " .. spellName .. " -> " .. normalizedName)
   ```

## Comandos Útiles

- `/dotimer` - Abre el menú de configuración
- `/dotimer help` - Muestra ayuda
- `/dotimer status` - Muestra estado actual
- `/dotimerspells` - Lista de traducciones (comando nuevo)
- `/reload` - Recarga la interfaz

## Notas Técnicas

### Cómo Funciona
1. Cuando lanzas un hechizo, el juego envía el evento `SPELLCAST_START` con el nombre en español
2. DoTimer_Patch.lua intercepta este evento
3. Busca el nombre en DoTimer_SpellLocalization
4. Si encuentra traducción, reemplaza el nombre por la versión en inglés
5. DoTimer procesa el hechizo normalmente con el nombre en inglés
6. El timer se muestra correctamente

### Sistema de Caché
Para eficiencia, las traducciones se guardan en caché después de la primera vez.
Esto evita buscar la traducción cada vez que lanzas el mismo hechizo.

## Créditos

- **Addon Original:** DoTimer by Vendethiel
- **Modificado por:** Elnazzareno (DarckRovert)
- **Guild:** El Sequito del Terror
- **Sistema de Localización:** Enero 2026

## Contacto

- **Twitch:** [twitch.tv/darckrovert](https://twitch.tv/darckrovert)
- **Kick:** [kick.com/darckrovert](https://kick.com/darckrovert)

---

¡Disfruta de DoTimer en español!
