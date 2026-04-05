===========================================
DoTimer 1.2.5 - God Tier Architecture
===========================================

USO RÁPIDO:
1. Inicia WoW con cliente en español.
2. El addon se cargará usando su Diccionario Nativo de Texturas y Fallback.
3. Asegúrate de activarlo visualmente con /dotimer on y luego /dotimer ui on.
4. Lanza hechizos. DoTimer ha sido blindado contra cuelgues LUA (Crash Free) y procesará todo automagicamente.

-------------------------------------------
COMANDOS PRINCIPALES:

/dotimer          - Abre el menú
/dotimerspells    - Ver estado de traducciones diccionario
/dotimerdiag      - Ver estatus base

-------------------------------------------
¿CÓMO AGREGAR UN HECHIZO O TRADUCCIÓN NUEVA?

1. Verifica si ya fue añadido tipeando: /dotimerspells en tu chat.
2. Abre el archivo: DoTimer_SpellLocalization.lua en tu carpeta del AddOn.
3. Busca tu clase (WARLOCK, PRIEST, etc.).
4. Agrega o ajusta la línea: DoTimer_SpellLocalization["El Hechizo Español Exacto"] = "English Name"
   Ejemplo: DoTimer_SpellLocalization["Corrupción"] = "Corruption"
5. En el juego escribe: /reload

Nota importante: Gracias a la arquitectura "Pure", no hay más hooks invadiendo eventos nativos ni sobreescribiendo Combat Logs globales, por lo que nunca deberás tener problemas de rendimiento o "Resists" fantasma.

-------------------------------------------
TWITCH: twitch.tv/darckrovert
KICK: kick.com/darckrovert
===========================================
