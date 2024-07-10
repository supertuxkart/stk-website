---
title: repositorio Multimedia
display_title: true
---
O **repositorio multimedia** é o lugar onde se almacenan todos os ficheiros orixinais de modelos 3D, texturas, sons e todas as outras artes do xogo que se usan en STK. Isto é necesario porque eses ficheiros normalmente son demasiado grandes ou incluso incompatibles co xogo, polo que se encollen ou convértense antes de ser enviados co xogo.

O repositorio multimedia serve para outro propósito: usándoo, pode importar unha gran variedade de texturas e obxectos nas pistas que faga. Debido a que Blender é sensible á estrutura de ficheiros dos teus ficheiros de pista cando vinculas texturas e nodos da biblioteca desde o repositorio multimedia, recomendámosche que coloque o ficheiro do proxecto de Blender do teu nodo de kart/pista/biblioteca no seu propio cartafol baixo a categoría axeitada da túa descarga. copia do repositorio multimedia, **como se fose unha parte oficial do xogo.**

### Instalación do repositorio multimedia

Recomendamos apuntar á versión de desenvolvemento de STK, polo que a mellor forma de descargar o repositorio multimedia é cun cliente Subversion (SVN). Non obstante, se non pode instalar SVN, hai unha solución sinxela.

#### A mellor forma: instalando Subversion

As instrucións para instalar Subversion están na páxina [Ferramentas de instalación](https://supertuxkart.net/Installing_Tools#subversion-client). Unha vez instalado, use o seguinte enderezo para verificar o repositorio:

* Se está a usar un programa gráfico (por exemplo, TortoiseSVN), pode solicitarlle o URL do repositorio - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - e un checkout directorio, que é o lugar no que queres copialo no teu ordenador.
* Baixo un sistema operativo tipo Unix ou MacOS, un exemplo de comando de pago sería:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Solución: descarga manual da instantánea

{% start_liquid popup_info %}

Esta solución é moi sinxela e descarga os mesmos ficheiros e cartafoles, pero non actualizará os teus ficheiros cando se fagan cambios no repositorio multimedia. Isto significa que se se realizan cambios relevantes no repositorio despois de descargar a instantánea, os teus proxectos poden parecer diferentes nas versións máis novas ou posiblemente incluso non funcionen correctamente a menos que descargues unha nova instantánea.

{% end_liquid %}

Visita esta ligazón para xerar unha instantánea e descargala: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Se che pide que volvas enviar a solicitude de instantánea, faino. A continuación, comezará a descarga dos ficheiros de repositorio multimedia tal e como están actualmente. Extrae o ficheiro ZIP a un lugar de traballo onde queiras que estea a copia do repositorio multimedia. Agora xa está listo!

Os cambios realízanse no repositorio multimedia [con certa frecuencia](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), polo que se queres descargar unha nova instantánea, terás que facer unha copia de seguridade todos os teus proxectos noutro cartafol, elimina a túa copia do repositorio de medios locais e substitúea por unha nova instantánea.
