---
title: Repositori de mitjans
display_title: true
---
El **repositori de mitjans** és el lloc on es guarden tots els fitxers originals de models 3D, textures, sons i tota la resta d'art que es fa servir en el STK. Això és necessari perquè aquests fitxers normalment són massa grans i fins i tot incompatibles amb el joc, o sigui que són reduits o convertits abans de ser inclosos.

El repositori de mitjans també té una altra utilitat: fent-lo servir, podeu importar una gran varietat de textures i objectes en els circuits que feu. Com que el Blender és molt sensible amb l'estructura dels fitxers dels vostres circuits quan s'enllacen textures i library nodes del repositori de mitjans, recomanem ubicar el fitxer de projecte de Blender del vostre kart/circuit/library node a la seva pròpia carpeta sota la categoria apropiada de la vostra còpia descarregada del repositori de mitjans, **com si fos una part oficial del joc**.

Recomanem fer servir la versió de desenvolupament del STK, així que la millor manera de descarregar-se el repositori de mitjans és amb un client de Subversion (SVN) (més informació a la pàgina de [Instal·lant les eines](Installing_Tools)).

En un sistema operatiu de tipus Unix, un exemple de comanda checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
