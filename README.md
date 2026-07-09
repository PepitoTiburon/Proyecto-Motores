# UNAHUR

## Introducción a motores de videojuegos - 2026C1

### Trabajo práctico integrador - Grupo 1

**Subsistema de videojuegos elegido: Audio**

---

# "Nyctophobia"

**Nyctophobia** es una experiencia de terror psicológico y exploración en primera persona con una estética retro inspirada en la era de PSX. Sumergite en un entorno oscuro y opresivo donde **el diseño sonoro inmersivo es tu única guía**... y tu peor enemigo.

## Sobre el juego
Este proyecto se enfoca en el sonido como creador de atmósfera, tensión y e inmersión. Utilizando mecánicas clásicas de los *First Person Shooters* y juegos de exploración, el jugador deberá interactuar con el entorno mientras intenta sobrevivir a un enemigo desconocido que acecha en la oscuridad.

## Características principales
* **Audio inmersivo:** Integración de acústica mediante **trazado de rayos (*Raytraced Audio*) para rebotes de sonido realistas** que funciona como guía y generación de atmósfera terrorífica.
* **Sistema de tensión:** Efectos de sonido dinámicos que reaccionan al estado del jugador y del entorno (respiración agitada, latidos del corazón acelerados, sonidos ambientales aterradores).
* **Controlador FPS:** Sistema de movimiento completo que incluye caminar, correr, agacharse y saltar.
* **Estilo retro (PSX):** Modelos 3D de baja poligonización y texturas pixeladas que evocan la nostalgia del *survival horror* clásico de los años 90.


## Controles
El juego está diseñado para jugarse con teclado y mouse.

| Acción | Tecla / Botón |
| :--- | :--- |
| **Moverse** | `W` `A` `S` `D` |
| **Mirar / Cámara** | `Mouse` |
| **Interactuar** | `E` |
| **Correr** | `Shift Izquierdo` |
| **Agacharse** | `Ctrl Izquierdo` / `C` |
| **Saltar** | `Espacio` |
| **Linterna** | `F` |
| **Aguantar respiración** | `Click derecho` |


## Cómo ejecutar el proyecto en Godot
Para abrir y compilar el proyecto y jugar localmente, seguí estos pasos:

###
* Descargar e instalar **Godot Engine 4.4**. Se puede descargar de forma gratuita en [godotengine.org](https://godotengine.org).

### de Instalación
1.  **Clonar este repositorio** en tu máquina local usando Git:

  ```bash
  git clone https://github.com/[tu-usuario]/[nombre-del-repo].git
  ```

2.  Abrir **Godot Engine**.
3.  En el Gestor de proyectos, hacer clic en el botón **Importar** (Import).
4.  Navegar hasta la carpeta donde clonaste o extrajiste el repositorio, seleccionar el archivo `project.godot` y hacer clic en **Abrir e Importar**.
5.  Una vez que el proyecto cargue en el editor, buscar la escena principal del nivel (`inicio.tscn`) y abrirla haciendo doble clic.
6.  Presionar el botón de **Play** (el icono de reproducción en la esquina superior derecha) o la tecla `F5` para ejecutar el juego.

## Assets y herramientas utilizadas
Este proyecto utiliza varios *addons* y recursos libres de la comunidad de desarrollo para lograr la estética y jugabilidad deseadas:

**Addons de Godot:**
* **Raytraced Audio**: Para la simulación acústica y reverberación en tiempo real.
* **Character Controller 3D**: Sistema de movimiento FPS avanzado.

**Gráficos 3D y texturas:**
* Modelos estilo PSX (*Derelict Furniture* y *Retro Gothic*).
* Texturas *Pixel Skies* de Digital Moons.
* Fuente Itch.io

**Efectos de sonido (SFX) y voces:**
* Pasos de *Jute-DH* y otros efectos de sonido *Foley*.
* Audios ambientales, latidos de corazón, voces y efectos de tensión extraídos de *PixaBay.com*.

## Equipo de desarrollo
* **Dante Moldero** - Desarrollador principal
* **Tomás Simón** - Desarrollador artístico
* **Matías Müller** - Dirección

Desarrollado 100% por humanos, con ❤️ para UNAHUR.
