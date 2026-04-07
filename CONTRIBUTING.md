# Contributing to DoTimer (Precision Dot Tracking) 🏹🔮

¡Gracias por contribuir a la precisión mágica del **Séquito del Terror**! Para mantener el estándar **Diamond Tier** de **DarckRovert**, todas las contribuciones deben centrarse en la estabilidad de la detección de hechizos en el cliente español.

---

## 🛡️ Estándares Técnicos (Magic Core)

Este AddOn está optimizado para **Turtle WoW** (WoW v1.12.1). Las contribuciones DEBEN cumplir con:

1.  **Spell Event Hijacking**: Los nuevos rastreadores de hechizos deben usar ganchos (hooks) de eventos de combate eficientes. No realices escaneos completos del roster en cada frame.
2.  **No Lua 5.1+**: El motor es Lua 5.0. Prohibido el operador `#` (usa `table.getn`).
3.  **Localization Rigor**: Cualquier nuevo hechizo debe añadirse a `DoTimer_SpellLocalization.lua` con su nombre exacto en inglés y español.
4.  **Skin Apex Standard**: Las barras de tiempo deben heredar los estilos visuales de pfUI.

## 📐 Arquetipo de Desarrollo

Si deseas contribuir:
- **`DoTimer_SpellLocalization.lua`**: Es el diccionario de hechizos. Requiere revisión constante tras parches del servidor.
- **`SpellSystem/`**: Núcleo de detección de lanzamientos y expiraciones.
- **`DoTimer/`**: Interfaz de visualización y anclajes CandyBar.

## 💎 Proceso de Pull Request

1.  **Fork & Branch**: Trabaja en ramas descriptivas (`fix/spell-id`, `feature/dot-icon`).
2.  **Documentación**: Actualiza `CHANGELOG.md` antes de enviar el PR.
3.  **Branding**: Mantén los enlaces institucionales oficiales de **DarckRovert**.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Precisión mágica para la conquista de Azeroth.*