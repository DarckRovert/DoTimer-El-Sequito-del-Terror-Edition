# ❓ Wiki: FAQ [El Séquito del Terror] — DoTimer

Preguntas frecuentes y resolución de problemas técnicos para el rastreador de hechizos v9.4+.

## 🛠️ Error: No veo la barra de Corrupción en mi objetivo.
- **Causa**: DoTimer v9.4 requiere que los nombres de los hechizos coincidan exactamente con la base de datos de localización.
- **Solución**: Asegúrate de que no tienes otro addon ocultando las auras de objetivo. Verifica tu `DoTimer_SpellLocalization.lua` si juegas con el cliente en un idioma no soportado.

## ⚙️ ¿Cómo muevo los anclajes de las barras?
- **Configuración**: DoTimer utiliza un sistema de arrastre táctico. Escribe `/dotimer` para desbloquear los anclajes y muévelos a tu posición deseada. Una vez fijados, vuelve a utilizar el comando para bloquearlos en su lugar Diamond Tier.

## ⚡ ¿Por qué mis barras parpadean al renovar el DoT?
**Estado**: ✅ Corrección en v9.4.0.
- Hemos implementado la lógica **Flicker-Free** que mantiene la barra encendida mientras se actualiza la duración tras un nuevo lanzamiento de hechizo exitoso, eliminando el parpadeo molesto de las versiones antiguas.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Precisión mágica para la conquista de Azeroth.*
