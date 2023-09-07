---
title: Richtlinien für Texturen
toc: true
---
Gute Texturen sind vielleicht eines der wichtigsten Dinge bei der Erstellung von 3D-Art. Selbst ein schön modelliertes Objekt kann mit schlechten Texturen hässlich aussehen. Deshalb ist es wichtig, dass die erstellten und verwendeten Texturen diesen Richtlinien entsprechen.

## Stil

Die Texturen in SuperTuxKart sind handgezeichnet oder -gemalt, nicht einfach nur Fotos (normalerweise – obwohl Fotos als Referenz verwendet werden können). Das bedeutet natürlich nicht, dass man physische Farben brauchst – man kann auch ein digitales Malprogramm wie Krita verwenden. Weitere Anwendungen sind auf der Seite [Tools installieren](Installing_Tools) aufgeführt.

Auch sehen die Texturen nicht völlig unecht und cartoonhaft aus. Man kann ruhig viele Details hinzufügen, solange nur mit der Hand gemalt wird (außer unter den unten genannten Umständen). Weitere Informationen zum Malen von Texturen sind in der [aktuellen Blender-Dokumentation](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html) vorhanden.

### Wann man Fotos verwenden sollte

Unter bestimmten Umständen ist es nicht sinnvoll, Texturen von Hand zu malen. Wenn es sehr zeitaufwändig wäre, eine detaillierte Textur von Hand zu malen, z. B. für Pflanzenwuchs, kann es sinnvoller sein, ein echtes Foto zu verwenden, vorausgesetzt, das Foto ist allgemein genug und erzeugt kein hässliches Kachelmuster. Man nehme die folgende Textur als Beispiel:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Dieser Fall ist ein interessantes Beispiel, weil diese Textur sowohl gute als auch schlechte Merkmale enthält. Das Palmenblatt ist eine gute Textur (Hinweis: Die Transparenz wird durch eine Alphamaske für diese Textur hergestellt), weil es gleichmäßig beleuchtet ist, keine anderen Details enthält und allgemein ausreichend ist. Außerdem wird sie nicht an einer Stelle verwendet, an der sie den unten beschriebenen Problemen mit der Kachelung ausgesetzt ist. Die Textur des Baumstamms auf der rechten Seite eignet sich dagegen nicht so gut, weil sie nicht gleichmäßig beleuchtet ist. Ein Baumstamm mit dieser Textur würde zu sich wiederholenden hellen/dunklen Streifen führen – ein sehr auffälliger Fehler. Die Tatsache, dass die Baumstamm-Textur zur Texturierung eines festen Objekts verwendet werden könnte, macht sie ebenfalls ungeeignet, da die Kachelbildung noch deutlicher ausfallen könnte.

Fotos sollten in der Regel nicht für die Texturierung von Objekten verwendet werden, die sich in der Nähe der Spieler befinden können, da ihre Details dann besser sichtbar sind und es offensichtlich ist, dass es sich nur um ein Foto handelt.

## Farbe und Beleuchtung

Die Texturen in SuperTuxKart sind farbenfroh und kontrastreich, dürfen sich aber nicht überschneiden. Extrem helle, neonfarbene, plastik- oder bonbonfarbene Texturen werden nicht in das Hauptarchiv aufgenommen, es sei denn, sie werden nur in einem sehr kleinen Bereich verwendet, wie das Sternenbild in XR591. Die gleiche Regel gilt für Texturen, die nur eine Farbe haben. Von rein schwarzen oder rein weißen Texturen wird ebenfalls abgeraten – bei 100% Schwarz oder Weiß gehen Farbinformationen verloren.

Texturen sollten so gezeichnet werden, als ob die Umgebungsfarbe und das Licht im Bild neutral wären. Die Engine von SuperTuxKart ändert die Farbbalance und die Helligkeit automatisch auf der Grundlage der Beleuchtung in der Szene und der Vertex-Färbung.

## Muster

Texturen sollte keine sofort sichtbaren Muster aufweisen. Offensichtliche Muster lassen die Strecke oder das Kart albern aussehen. Hier ist ein Beispiel dafür, was man **nicht** tun sollte:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Ein weiteres Problem taucht bei Texturen auf, die überhaupt kein Muster haben. Das ist ein wichtiger Grund dafür, keine Fotos als Texturen zu verwenden:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Beachte, dass das Texturieren in Blender ein hässliches Kachelmuster erzeugt, obwohl die Textur selbst kein Muster hat. Wenn du jedoch einige Details entfernst und die Kanten glättest, kannst du ein viel besseres Ergebnis erzielen, auch wenn es immer noch nicht perfekt ist:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Texturdetails

Versuche, Texturen mit Details zu vermeiden, die im wirklichen Leben nicht Teil des Materials sind. Wenn du zum Beispiel ein Seil an der Wand hängen haben möchtest, aber kein Mesh verwenden willst, solltest du keine völlig neue Textur erstellen, nur um ein Seil auf die Holztextur zu legen. SuperTuxKart enthält einen Decal-Shader, mit dem du einfach eine Seiltextur in die zweite UV-Ebene einfügen kannst, damit sie über der Holztextur erscheint, ohne dass die Holztextur für andere Anwendungen unbrauchbar wird. Weitere Informationen findest du [hier](Texturing#Decals).

## Technische Einschränkungen
* Die Abmessungen der Bilder sollten Potenzen von zwei sein. Eine allgemeine Textur in Standardgröße ist zum Beispiel 1024 × 1024, also 2<sup>10</sup> × 2<sup>10</sup>. Texturen müssen aber nicht unbedingt quadratisch sein, Größen von 1024 × 512 oder 2<sup>10</sup> × 2<sup>9</sup> sind zum Beispiel auch möglich.
* Verwende keine großen Texturen für kleine Objekte – das verschwendet den Arbeitsspeicher der Grafikkarte.
* Vermeide es, extrem kleine Texturen (z. B. 4x4 oder kleiner) zu erstellen, auch bei einfarbigen Objekten. Dies kann zu unerwarteten Ergebnissen führen, wenn die Texturkomprimierung in den Grafikeinstellungen aktiviert ist.
* Texturdateien **müssen** im gleichen Ordner wie das exportierte Objekt abgelegt werden.
* Texturen sollten das PNG-Format verwenden, wenn
    * die Textur in einem nahen Objekt verwendet wird, das viele Details erfordert
    * das Objekt transparente oder teiltransparente Teile enthält
* Texturen sollten das JPG-Format verwenden, bei
    * Weit entfernten Objekten
    * Himmelstexturen (manchmal)
    * Umgebungslicht-Maps
