# Arquitectura — DoTimer Sequito 🏗️

mermaid
graph TD
    CORE[DoTimer Core]
    SPELL[Spell System DB]
    CLIENT[Combat Event Listener]
    UI[Timer Bars / Icons]

    CLIENT --> SPELL
    SPELL --> CORE
    CORE --> UI


## Componentes
- **SpellSystem/**: Base de datos de identificadores de hechizos y duraciones.
- **DoTimer_Patch.lua**: Modificaciones para la integración con el WCS_Brain.
- **DoTimer_SpellLocalization.lua**: Traducciones de hechizos para Turtle WoW.
