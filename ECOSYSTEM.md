# El Ecosistema del Terror - Manual de Inteligencia Colectiva

> **Versión del Documento:** 1.0 (Integration de DoTimer 1.2.5)
> **Arquitecto:** DarckRovert / Elnazzareno
> **Núcleo:** TerrorSquadAI v5.0

## 🌐 ¿Qué es el Ecosistema?
No has instalado 4 addons separados. Has instalado una **Red Neural de Combate** de 10 piezas.
Estos diez componentes (TerrorSquadAI, WCS_Brain, BigWigs, TerrorMeter, DoTimer, pfUI, HealBot, aux-addon, pfQuest, Atlas-TW) han sido unificados para "hablar" entre sí en tiempo real.

---

## 🧩 Los Cuatro Componentes

### 1. El Cerebro: TerrorSquadAI (TSAI)
Es el comandante central. Toma decisiones, sugiere estrategias, maneja el radar y coordina a los otros addons.

### 2. Los Ojos: BigWigs + TerrorLink
BigWigs detecta habilidades del jefe antes de que ocurran.

### 3. El Sistema Nervioso: TerrorMeter (Threat)
Más allá de medir daño, este addon ahora actúa como un regulador de seguridad.

### 4. El Reloj Biológico: DoTimer (Séquito Premium / Pure Engine)
Controla los tiempos de los perjuicios (DoTs) en el enemigo.
*   **Integración:** Informa a TSAI y WCS_Brain de qué debuffs faltan.

### 5. La Flota Táctica: pfUI, HealBot, aux, pfQuest, Atlas
Integración total de interfaz, sanación, economía y navegación.

---

## 🔗 Cómo Funciona la "Mente de Enjambre" (SquadMind)

Si estás en una Raid donde varios jugadores usan este Ecosistema:
1.  **Visión Compartida (TerrorNet):** Compartimiento de emboscadas.
2.  **Defensa Coordinada:** Rele de CDs defensivos entre Tanques sin hablar.
3.  **Predicción de Amenaza:** TSAI calcula quién romperá aggro.

---

## 🛠️ Comandos Globales

| Comando | Función |
| :--- | :--- |
| `/tsai config` | Abre el panel central de configuración. |
| `/tsai radar` | Activa/Desactiva el Radar Táctico 2.0. |
| `/tsai hud` | Activa/Desactiva los hologramas de pantalla. |
| `/terrorlink` | Verifica la conexión con BigWigs. |
| `/tmbridge status` | Verifica la conexión con TerrorMeter. |
| `/tsadot toggle` | Activa/Desactiva sugerencias inteligentes de DoTs. |
| `/tsai net` | Muestra el estado de la red global (TerrorNet). |

---

## ⚠️ Solución de Problemas Generales
Asegúrate siempre de tener las herramientas Master actualizadas, que todos los compañeros usen el escuadrón, y evitar sobrecargar tu carpeta de addons externa a la suite principal de la Guild.

---
*Hecho para la Hermandad: El Sequito del Terror. Larga vida a Turtle WoW.*
