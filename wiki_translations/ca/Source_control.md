---
title: Control de versions
toc: true
---
El SupertTuxKart fa servir Git per al codi font, i SVN per als fitxers de dades. Així que si no els teniu, instal·leu-los primer. Podeu trobar instruccions sobre com instal·lar-los al final de la pàgina.

## Nucli del joc

El repositori del codi central es troba a la nostra [pàgina de GitHub](https://github.com/supertuxkart/stk-code). Exemple de comanda clone:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Són uns 350 MB per descarregar.

Els fitxers de dades es troben a SourceForge i fa servir SVN. Exemple de comanda checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Té una mida d'uns 700 MB.

Aquests dos repositoris s'haurien de descarregar en la mateixa carpeta, de manera que `stk-code` i `stk-assets` estiguin l'una al costat de l'altra.

## Repositori de mitjans

El repositori de mitjans **no és necessari per jugar al joc**. Conté els fitxers font dels recursos (fitxers .blend, música i fitxers de so sense pèrdua, etc) i està pensat per als artistes. Té una mida d'uns 3,2 GB.

El repositori de mitjans es troba a SourceForge i fa servir SVN. Exemple de comanda checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Veieu també [la pàgina del Repositori de mitjans](Media_Repo).

## Directrius

Aquí hi ha algunes directrius per als desenvolupadors que tenen permís d'escriptura al Git/SVN:

* Uniu-vos al nostre canal d'IRC o de Telegram (veieu [Comunitat](Community)). Els desenvolupadors acostumen a publicar allò en que estan treballant aquí, o sigui que la probabilitat de conflicte es pot reduir. Addicionalment, els errors coneguts de perfil alt també es discuteixen aquí.
* Pot valer la pena subscriure's a la llista de correu supertuxkart-commit (veieu [Comunitat](Community)). Tots els missatges de canvis en els repositoris s'envien automàticament a aquesta adreça, o sigui que sempre estareu al corrent del que passa i de si la vostra feina interfereix amb el que estan fent els altres.
* La versió de desenvolupament sempre hauria de compilar. Tot i que no és possible provar-la a totes les plataformes, procura que el teu codi sigui portable. Normalment, altres desenvolupadors assenyalaran ràpidament (i corregiran) qualsevol problema.
* Feu comissions de manera freqüent. Les comissions freqüents tenen l'avantatge de que actuen com a còpia de segureta, lo qual redueix la probabilitat de que apareguin conflictes grans que consumeixin temps.
* Intenteu incloure tots els canvis d'una característica individual en una sola comissió (és a dir, no feu una comissió de cada fitxer per separat), i procureu no barrejar vàries característiques en una sola comissió gran.

## Instal·lant el Git

### Linux
`sudo apt install git` o l'equivalent a la vostra distribució.

### Windows
Instal·leu [Git per a Windows](https://github.com/git-for-windows/git/releases/latest). Si voleu una interfície gràfica per al Git podeu triar la que més us agradi. Si no sabeu quina triar, també podeu instal·lar [TortoiseGit](https://tortoisegit.org/download) després d'instal·lar el Git per a Windows.

## Instal·lant el SVN

### Linux
`sudo apt install subversion` o l'equivalent a la vostra distribució.

### Windows
Podeu triar entre varis clients SVN i fer servir el que més us agradi, però si no sabeu quin agafar podeu instal·lar [TortoiseSVN](https://tortoisesvn.net/downloads.html).
