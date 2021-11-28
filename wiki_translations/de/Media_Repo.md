---
title: Medienarchiv
display_title: true
---
Das **Medienarchiv** ist der Ort an dem alle Originaldateien, wie 3D-Modelle, Texturen, Sounds und alle weiteren künstlerischen Objekte, die in STK genutzt werden, gespeichert sind. Dies ist nötig, weil viele dieser Dateien normalerweise zu groß oder sogar inkompatibel mit dem Spiel sind. Deswegen sind diese verkleinert oder konvertiert bevor diese in das Spiel integriert werden.

Das Medienarchiv hat einen weiteren Nutzen: Wenn du selbst Strecken erstellst, hast du eine grosse Auswahl an Texturen und Objekten, die du dort importieren und einbauen kannst. Da Blender sehr sensibel ist was die Dateistruktur angeht wenn du Texturen oder Bibliotheksknoten ("library nodes") aus dem Medienarchiv einbindest, wird empfohlen, die Blenderprojekt-Datei deines Karts, deiner Strecke oder deines Bibliotheksknoten in einen eigenen Ordner, in der zugehörigen Kategorie, innerhalb des heruntergeladenen Medienarchivs zu platzieren **so als wäre es ein offizieller Teil des Spiels.**

Es wird empfohlen, die Entwicklerversion von STK abzuzielen, wenn eigene Änderungen getestet werden oder Ähnliches. Der Beste Weg um das Medienarchiv herunterzuladen ist mit einem Subversion-(SVN)-Klient (Mehr Informationen auf der [Installiertools](Installing_Tools)-Seite).

Bei Unix-gleichen Betriebssystemen ist ein beispielhaftes "checkout"-Kommando:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
