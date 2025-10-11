---
title: Repositorio de medios
display_title: true
---
El **repositorio de medios** es el lugar donde se guardan todos los ficheros originales de modelos 3D, texturas, sonidos y el resto de arte que se usa en el STK. Esto es necesario porque estos ficheros normalment son demasiado grandes e incluso incompatibles con el juego, así que son reducidos o convertidos antes de incluirse.

El repositorio de medios también tiene otra utilidad: usándolo, puedes importar una gran variedad de texturas y objetos en los circuitos que crees. Como Blender es muy sensible con la estructura de los ficheros de tus circuitos cuando se enlazan texturas y library nodes del repositorio de medios, recomendamos situar el fichero de proyecto de Blender de tu kart/circuito/library node en su propia carpeta bajo la categoria apropiada de tu copia descargada del repositorio de medios, **como si fuera una parte oficial del juego**.

### Instalando el repositorio de medios

Recomendamos trabajar con la vesión de desarrollo del STK, así que la mejor forma de descargar el repositorio de medios es con un cliente de Subversion (SVN). Sin embargo, si no puedes instalar el SVN hay un método alternativo.

#### La mejor forma: instalando Subversion

Las instrucciones para instalar el Subversion están en la página [Instalando las herramientas] (Installing_Tools#subversion-client). Una vez instalado, usa la dirección siguiente para extraer el repositorio:

* Si estás usando un programa gráfico (como por ejemplo TortoiseSVN), es posible que te pida la URL del repositorio - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - y un directorio de extracción, que es el lugar de tu ordenador donde quieres que se copie.
* En un sistema operativo de tipo Unix, un ejemplo de comando de extracción sería:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Método alternativo: descarga manual

{% start_liquid popup_info %}

Este método alternativo es muy sencillo y descarga los mismos ficheros y carpetas, pero no actualizará tus ficheros cuando se hagan cambios en el repositorio de medios. Esto significa que si se hacen cambios relevantes en el repositorio después de que te hayas descargado la imagen, tus proyectos se podrían ver diferente en versiones más uevas o incluso no funcionar a no ser que te descargues una nueva imagen.

{% end_liquid %}

Visita este enlace para generar una imagen y descargarla: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Si te pide que vuelvas a enviar la imagen, hazlo. Entonces empezará a descargarse los ficheros del repositorio de medios tal y como están actualmente. Extrae el fichero ZIP en una ubicación de trabajo donde quieras tener tu copia del repositorio de medios. ¡Ya está listo!

En el repositorio de medios se hacen cambios [con bastante frecuencia](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), así que, si te quieres descargar una nueva imagen, tendrás que hacer una copia de seguridad de todos tus proyectos en otra carpeta, borrar tu copia local del repositorio de medios, y sustituirlo con la nueva imagen.
