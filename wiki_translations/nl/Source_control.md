---
title: Broncode
toc: true
---
SupertTuxKart maakt gebruik van Git om de broncode te beheren en SVN om de grafische bestanden te beheren. Als je die hulpmiddelen niet hebt, dan moet je ze installeren. Onderaan de pagina vind je instructies hieromtrent.

## Kernbestanden

De kernbestanden zijn te vinden in onze [GitHub-opslagruimte](https://github.com/supertuxkart/stk-code). Voorbeeldopdracht om de broncode te ‘klonen’:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

De download neemt ongeveer 350 MB ruimte in beslag.

De databestanden worden gehost op SourceForge en maken gebruik van SVN. Voorbeeldopdracht om de broncode te ‘klonen’:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

De download neemt ongeveer 700 MB ruimte in beslag.

Deze twee opslagruimten dienen te worden gekloond naar dezelfde map. `stk-code` en `stk-assets` moeten dus in dezelfde bovenliggende map staan.

## Media-opslagruimte

De media-opslagruimte is **niet vereist om het spel te kunnen spelen**. Deze ruimte bevat de bronbestanden van de gebruikte (grafische) elementen (.blend-bestanden, verliesvrije muziek, geluidsbestanden, etc.) en is uitsluitend bedoeld voor makers. De omvang hiervan is ongeveer 3.2GB.

De media-opslagruimte wordt gehost op SourceForge en maakt gebruik van SVN. Voorbeeldopdracht om de broncode te ‘klonen’:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Zie ook de pagina [Media-opslagruimte](Media_Repo).

## Richtlijnen

Hieronder enkele richtlijnen voor zij die schrijftoegang hebben op Git/SVN:

* Neem deel aan ons IRC- of Telegramkanaal (zie [Gemeenschap](Community)). Ontwikkelaars delen daar doorgaans informatie omtrent de functies waar ze aan werken, zodat bestandsconflicten kunnen worden voorkomen. Daarnaast worden bugs met hoge prioriteit daar besproken.
* Het is wellicht verstandig om je te abonneren op de mailinglijst ‘supertuxkart-commit’ (zie [Gemeenschap](Community)). Alle commitberichten worden automatisch verstuurd naar dit adres, zodat je altijd weet wat er gaande is en of je werk botst met dat van anderen.
* De ontwikkelingsversie dient altijd gecompileerd te kunnen worden. Het is uiteraard niet mogelijk om op **alle** platformen te testen, maar we raden sterk aan om code te schrijven die overal werkt. Andere ontwikkelaars en testers ontdekken (en repareren) doorgaans snel problemen.
* Voer regelmatig commits uit. Frequente commits zorgen voor een back-up zodat samenvoegconflicten minder vaak voorkomen.
* Zorg dat je commit zoveel mogelijk code van een bepaalde functie bevat (dus niet elk bestand afzonderlijk) en commit niet verschillende functies tegelijkertijd.

## Git installeren

### Linux
`sudo apt install git` of gelijkaardig (afhankelijk van de door jouw gekozen distributie).

### Windows
Installeer [Git voor Windows](https://github.com/git-for-windows/git/releases/latest). Als je een grafisch programma wilt, dan kun je een andere client kiezen. Kies bij twijfel voor de meestgebruikte client, [TortoiseGit](https://tortoisegit.org/download) (Git voor Windows dient echter wél geïnstalleerd te zijn!).

## SVN installeren

### Linux
`sudo apt install subversion` of gelijkaardig (afhankelijk van de door jouw gekozen distributie).

### Windows
Je kunt kiezen uit verschillende SVN-clients. Kies bij twijfel voor de meestgebruikte client, [TortoiseSVN](https://tortoisesvn.net/downloads.html).
