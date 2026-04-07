# ðŸ“ Wiki: Arquitectura 'Diamond Tier' â€” DoTimer [v1.5.0]

Estructura tÃ©cnica de la persistencia de hechizos mantenida por **DarckRovert**.

## ðŸ—ï¸ JerarquÃ­a del Sistema Spell Tracker (Magic Hierarchy)

**DoTimer** gestiona la visualizaciÃ³n de tiempos mediante una capa de intercepciÃ³n de eventos de combate:

1.  **Spell Decoder (`SpellSystem/`)**: El motor que analiza el Combat Log para identificar cuÃ¡ndo un hechizo ha sido aplicado, resistido o ha expirado.
2.  **Localization Engine (`DoTimer_SpellLocalization.lua`)**: Diccionario de mapeo de nombres de hechizos para asegurar la compatibilidad entre clientes esES y enUS.
3.  **Timer Visualizer (`DoTimer/`)**: Gestiona la creaciÃ³n y destrucciÃ³n dinÃ¡mica de las barras de tiempo.
4.  **Neural Refresher (`DoTimer_Patch.lua`)**: Parche del SÃ©quito para optimizar la renovaciÃ³n de DoTs de alta frecuencia (como CorrupciÃ³n o Inmolar).

---

## ðŸ§­ Diagrama de Flujo: Seguimiento de DoT v9.4

```mermaid
graph TD
    A[Inicio: Lanzamiento de Hechizo] --> B[DetecciÃ³n en Combat Log]
    B --> C[Mapeo en Diccionario de LocalizaciÃ³n]
    C --> D{Â¿Es un DoT/Buff?}
    D -- SÃ­ --> E[CÃ¡lculo de DuraciÃ³n Base]
    E --> F[CreaciÃ³n de Barra Diamond Tier]
    F --> G[SincronizaciÃ³n con HUD pfUI]
    G --> H[Monitoreo de ExpiraciÃ³n/Respiro]
    H --> I[EliminaciÃ³n de Registro en Memoria]
    D -- No --> J[Ignorar Evento]
```

## âš¡ Estrategias de IngenierÃ­a Diamond Tier

- **Combat Log Hijacking**: DoTimer v9.4 optimiza la cadena de procesamiento de eventos de combate, reduciendo el stuttering en situaciones de lucha masiva (AoE).
- **Asynchronous GUI Update**: El renderizado de las barras se realiza en hilos de actualizaciÃ³n asÃ­ncronos para no bloquear la entrada de teclado/ratÃ³n.
- **Turtle WoW Spell IDs**: El diccionario incluye soporte para los hechizos exclusivos de las nuevas razas y clases del servidor Turtle WoW.

---
Â© 2026 **DarckRovert** â€” El SÃ©quito del Terror.
*PrecisiÃ³n mÃ¡gica para la conquista de Azeroth.*

