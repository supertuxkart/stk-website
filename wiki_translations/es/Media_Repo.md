---
title: Repositorio de medios
display_title: true
---
El **repositorio de medios** es el lugar donde se guardan todos los ficheros originales de modelos 3D, texturas, sonidos y el resto de arte que se usa en el STK. Esto es necesario porque estos ficheros normalment son demasiado grandes e incluso incompatibles con el juego, así que son reducidos o convertidos antes de incluirse.

El repositorio de medios también tiene otra utilidad: usándolo, puedes importar una gran variedad de texturas y objetos en los circuitos que crees. Como Blender es muy sensible con la estructura de los ficheros de tus circuitos cuando se enlazan texturas y library nodes del repositorio de medios, recomendamos situar el fichero de proyecto de Blender de tu kart/circuito/library node en su propia carpeta bajo la categoria apropiada de tu copia descargada del repositorio de medios, **como si fuera una parte oficial del juego**.

Recomendamos usar la versión de desarrollo del STK, así que la mejor forma de descargarse el repositorio de medios es con un cliente de Subversion (SVN) (más información en la página de [Instalando las herramientas](Installing_Tools)).

En un sistema operativo de tipo Unix, un ejemplo de comando checkout sería:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
