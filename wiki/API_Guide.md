# 🛠️ Wiki: Guía de API — Precision Dot Tracking (DoTimer)

DoTimer expone métodos para que otros AddOns del ecosistema **Séquito del Terror** puedan reaccionar a la expiración de hechizos.

## 📡 Funciones de Tiempo (Magic API)

### `DoTimer_GetSpellDuration(unit, spellName)`
Obtiene la duración restante de un hechizo específico en una unidad determinada.
- **`unit`**: Identificador de unidad (ej: "target", "player").
- **`spellName`**: Nombre exacto del hechizo.

### `DoTimer_RegisterExpirationCallback(func)`
Permite que un script externo se suscriba a la expiración de cualquier DoT del jugador.

## 📎 Integración con Ecosistema Gravity

- **Neural Combo**: **WCS_Brain** utiliza la API de DoTimer para decidir cuándo refrescar "Corrupción" en el objetivo principal de la mascota basándose en la duración restante detectada.
- **Burst Timing**: **TerrorMeter** puede resaltar visualmente cuando un perjuicio de daño aumentado (como Maldición de las Sombras) está a punto de expirar para avisar al grupo.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Precisión mágica para la conquista de Azeroth.*
