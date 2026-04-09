INSTRUCCIONES

Esta es la forma correcta de hacerlo dentro del propio proyecto.

ESTRUCTURA
- galeria-proyecto.html
- assets/fotos/
- assets/fotos/fotos.json
- actualizar-galeria.bat
- actualizar-galeria.sh

CÓMO FUNCIONA
La web carga automáticamente todas las imágenes listadas en assets/fotos/fotos.json.
Ese archivo se genera escaneando la carpeta assets/fotos del proyecto.

PASOS
1. Mete tus imágenes dentro de assets/fotos/
2. Ejecuta:
   - actualizar-galeria.bat en Windows
   - actualizar-galeria.sh en macOS o Linux
3. Abre galeria-proyecto.html o sírvelo con un servidor local.

IMPORTANTE
- Un HTML estático en el navegador no puede leer directamente el contenido de una carpeta del proyecto por sí solo. Por eso se usa un índice JSON generado automáticamente. Esta limitación existe en navegadores para evitar acceso arbitrario al sistema de archivos.
- Para lectura totalmente dinámica de la carpeta sin generar JSON, necesitarías un backend o un servidor con listado de directorios habilitado.

FORMATOS SOPORTADOS
- jpg
- jpeg
- png
- gif
- webp
- avif
- svg
