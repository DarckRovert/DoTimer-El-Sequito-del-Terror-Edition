# â“ Wiki: FAQ [El SÃ©quito del Terror] â€” DoTimer

Preguntas frecuentes y resoluciÃ³n de problemas tÃ©cnicos para el rastreador de hechizos v9.4+.

## ðŸ› ï¸ Error: No veo la barra de CorrupciÃ³n en mi objetivo.
- **Causa**: DoTimer v9.4 requiere que los nombres de los hechizos coincidan exactamente con la base de datos de localizaciÃ³n.
- **SoluciÃ³n**: AsegÃºrate de que no tienes otro addon ocultando las auras de objetivo. Verifica tu `DoTimer_SpellLocalization.lua` si juegas con el cliente en un idioma no soportado.

## âš™ï¸ Â¿CÃ³mo muevo los anclajes de las barras?
- **ConfiguraciÃ³n**: DoTimer utiliza un sistema de arrastre tÃ¡ctico. Escribe `/dotimer` para desbloquear los anclajes y muÃ©velos a tu posiciÃ³n deseada. Una vez fijados, vuelve a utilizar el comando para bloquearlos en su lugar Diamond Tier.

## âš¡ Â¿Por quÃ© mis barras parpadean al renovar el DoT?
**Estado**: âœ… CorrecciÃ³n en v1.5.0.
- Hemos implementado la lÃ³gica **Flicker-Free** que mantiene la barra encendida mientras se actualiza la duraciÃ³n tras un nuevo lanzamiento de hechizo exitoso, eliminando el parpadeo molesto de las versiones antiguas.

---
Â© 2026 **DarckRovert** â€” El SÃ©quito del Terror.
*PrecisiÃ³n mÃ¡gica para la conquista de Azeroth.*

