---
title: Control de versiones
toc: true
---
SupertTuxKart utiliza Git para el código fuente, y SVN para los ficheros de datos. Así que si no los tienes, instálalos primero. Puedes encontrat instrucciones sobre cómo instalarlos al final de la página.

## Núcleo del juego

El repositorio del código central se encuentra en nuestra [página de GitHub](https://github.com/supertuxkart/stk-code). Ejemplo de comando clone:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Son unos 350 MB para descargar.

Los ficheros de datos se encuentran en SourceForge y utiliza SVN. Ejemplo de comando checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Tiene un tamaño de unos 700 MB.

Estos dos repositorios se deberían descarregar en la misma carpeta, de forma que `stk-code` y `stk-assets` estén la una al lado de la otra.

## Repositorio de medios

El repositorio de medios **no es necesario para jugar al juego**. Contiene los ficheros fuente de los recursos (ficheros .blend, música y ficheros de sondio sin pérdida, etc) y está pensado para los artistas. Tiene un tamaño de unos 3,2 GB.

El repositorio de medios se encuentra en SourceForge y utiliza SVN. Ejemplo de comando checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Ver también [la página del Repositorio de medios](Media_Repo).

## Directrices

Aquí hay algunas directrices para los desarrolladores que tienen permiso de escritura en el Git/SVN:

* Únete a nuestro canal de IRC o de Telegram (ver [Comunidad](Community)). Los desarrolladores suelen publicar aquí aquello en lo que están trabajando, así que la probabilidad de conflicto se puede reducir. Adicionalmente, los errores conocidos de perfil alto también se discuten aquí.
* Puede valer la pena suscribirse a la lista de correo supertuxkart-commit (ver [Comunidad](Community)). Todos los mensajes de cambios en los repositorios se envían automáticamente a esa dirección, asi que siempre estarás al corriente de lo que pasa y de si tu trabajo interfiere con el que están haciendo los otros.
* La versión de desarrollo siempre debería compilar. A pesar de que no es posible probarla en todas las plataformas, procura que tu código sea portable. Normalmente, otros desarrolladores señalarán rápidamente (y corregirán) cualquier problema.
* Haz commits a menudo. Los commits frecuentes tienen la ventaja de que actúan como copias de seguridad, lo cual hace que sean menos probables los conflictos al hacer un merge.
* Intenta incluir todos los cambios de una característica individual en un solo commit (es decir, no hagas un commit de cada fichero por separado) e intenta no mezclar varias características en un solo commit grande.

## Instalando Git

### Linux
`sudo apt install git` o el equivalente en tu distribución.

### Windows
Instala [Git para Windows](https://github.com/git-for-windows/git/releases/latest). Si quieres una interfaz gráfica para Git puedes elegir la que más te guste. Si no sabes cuál escoger, también puedes instalar [TortoiseGit](https://tortoisegit.org/download) después de instalar Git para Windows.

## Instalando SVN

### Linux
`sudo apt install subversion` o el equivalente en tu distribución.

### Windows
Pedes elegir entre varios clientes SVN y usar el que más te guste, pero si no sabes cuál coger puedes instalar [TortoiseSVN](https://tortoisesvn.net/downloads.html).
