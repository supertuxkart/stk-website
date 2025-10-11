---
title: Repositori de mitjans
display_title: true
---
El **repositori de mitjans** és el lloc on es guarden tots els fitxers originals de models 3D, textures, sons i tota la resta d'art que es fa servir en el STK. Això és necessari perquè aquests fitxers normalment són massa grans i fins i tot incompatibles amb el joc, o sigui que són reduits o convertits abans de ser inclosos.

El repositori de mitjans també té una altra utilitat: fent-lo servir, podeu importar una gran varietat de textures i objectes en els circuits que feu. Com que el Blender és molt sensible amb l'estructura dels fitxers dels vostres circuits quan s'enllacen textures i library nodes del repositori de mitjans, recomanem ubicar el fitxer de projecte de Blender del vostre kart/circuit/library node a la seva pròpia carpeta sota la categoria apropiada de la vostra còpia descarregada del repositori de mitjans, **com si fos una part oficial del joc**.

### Instal·lant el repositori de mitjans

Recomanem treballar amb la versió de desenvolupament del STK, així que la millor manera de descarregar el repositori de mitjans és amb un client de Subversion (SVN). Tanmateix, si no podeu instal·lar el SVN hi ha un mètode alternatiu.

#### La millor manera: instal·lant Subversion

Les instruccions per instal·lar el Subversion estan a la pàgina [Instal·lant les eines] (Installing_Tools#subversion-client). Un cop instal·lat, feu servir l'adreça següent per extreure el repositori:

* Si esteu fent servir un programa gràfic (com ara TortoiseSVN), pot ser que us demani la URL del repositori - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - i un directori d'extracció, que és a on del vostre ordinador voleu que es copiï.
* En un sistema operatiu de tipus Unix, un exemple de comanda d'extracció seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Mètode alternatiu: descàrrega manual

{% start_liquid popup_info %}

Aquest mètode alternatiu és molt senzill i descarrega els mateixos fitxers i carpetes, però no actualitzarà els vostres fitxers quan es facin canvis al repositori de mitjans. Això vol dir que si es fan canvis rellevants al repositori després de que us hagueu descarregat la imatge, els vostres projectes es podrien veure diferent en versions més noves o potser fins i tot no funcionar a no ser que us descarregueu una nova imatge.

{% end_liquid %}

Visiteu aquest enllaç per generar una imatge i descarregar-la: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Si us demana que torneu a enviar la imatge, feu-ho. Aleshores començarà a descarregar-se els fitxers del repositori de mitjans tal i com estan actualment. Extraieu el fitxer ZIP a una ubicació de treball on volgueu tenir la vostra còpia del repositori de mitjans. Ja està llest!

Al repositori de mitjans s'hi fan canvis [força sovint](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), o sigui que, si us voleu descarregar una nova imatge, haureu de fer una còpia de seguretat de tots els vostres projectes a una altra carpeta, esborrar la vostra còpia local del repositori de mitjans, i substituir-lo amb la nova imatge.
