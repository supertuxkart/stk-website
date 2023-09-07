---
title: 3D-Modell-Richtlinien
toc: true
---
Es ist wichtig, dass SuperTuxKart durchgehend einen einheitlichen Objektstil hat. In vielerlei Hinsicht entspricht diese Seite den [Texturrichtlinien](Texture_Guidelines).

## Stil

{% capture real_plam_tree -%}

Echte Palme

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Sehr cartoonhaftes Palmenmodell

{%- endcapture -%}

{%- capture realistic -%}

Realistisches, aber vereinfachtes Modell

{%- endcapture -%}

Objekte in SuperTuxKart sollten in Größe, Figur und allgemeiner Form realistisch sein. Objekte sollten jedoch nicht so detailliert sein wie im wirklichen Leben. Nimm zum Beispiel eine Palme:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Du siehst, dass das neue Palmenmodell der Form einer echten Palme viel näher kommt. Es ist jedoch nicht so detailliert, dass es echt aussieht. Kurz gesagt, <u>bewahre den Realismus in der allgemeinen Form, aber bewahre auch ein cartoonmäßiges Aussehen, indem du übermäßige Details in Form oder Texturen vermeidest.</u>

Wenn man beispielsweise darum bäte, eine Verkehrsbarriere zu erstellen, weiß jeder, wie eine Betonbarriere aussieht – du siehst sie wahrscheinlich jeden Tag, wenn du zur Arbeit gehst. Also öffnest du Blender und machst so etwas:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Das Problem ist, dass einige Details fehlen und das Objekt stark vereinfacht ist. Es sieht sehr billig aus und wenn du alle deine Objekte so machst, dann wird das Endergebnis nicht so gut wie es sein könnte. Die Lösung ist, einfach alle möglichen Bilder, Zeichnungen, Ideen etc., die dir im Arbeitsverfahren helfen könnten, zu sammeln. Ja, es ist ein bisschen wie betrügen, aber es ist empfohlen und erlaubt. Das Ziel ist es, die richtige Inspiration zu haben. Auf einem Bild wie [diesem](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG) kannst du alle Details sehen und sie für dein eigenes Objekt nachbilden.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Siehst du den großen Unterschied? Die Barriere ist interessant anzusehen, es gibt viele Details wie die Drähte oben, um sie zu laden, den Warnstreifen unten etc. Es ist nicht fotorealistisch, aber immerhin haben wir jetzt ein Objekt mit interessanten Details, das eine Verkehrsbarriere im realen Leben sein könnte. (Und außerdem ist das Ziel nicht, vollständig realistisch zu sein — nur größtenteils realistisch.)

## Regeln

* Alle Modelle **MÜSSEN** kinderfreundlich sein. SuperTuxKart sollte in die ESRB "Everyone" [Wertung] passen (https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Modelle sollten in der Lage sein, sowohl alleine als auch in Gruppen gut auszusehen.
* High-Poly-Modelle müssen [Level of Detail](Level_of_Detail) verwenden.
* Sofern das Modell nicht untrennbar mit der Strecke verbunden ist, sollten die Objekte in vielen verschiedenen Umgebungen verwendbar sein, damit sie zu Bibliotheks-Knoten gemacht werden können.
    * Vermeide es, Boden oder Bepflanzung um Objekte herum hinzuzufügen (es sei denn, das Objekt ist selbst eine Art Pflanze).
    * Die Personen sollten in der Regel allgemein nutzbare Kleidung tragen, es sei denn, es macht keinen Sinn, wie z. B. am Strand.

## Polycount

Polycount ist die Anzahl der Oberflächen oder Flächen, die 3D-Objekte haben. Ältere Versionen von Blender unterstützten nur Objekte, die aus „Quads“ (Vierecke – Polygone mit vier Punkten) und „Tris“ (Dreiecke – Polygone mit drei Punkten) bestanden. „Poly“ wurde im Allgemeinen als „Anzahl von Quads“ verstanden. Blender unterstützt jetzt jedoch n-Gons, also Polygone mit einer unbegrenzten Anzahl von Punkten, und liefert nur die Anzahl der Flächen und Tris. Da man sich darauf verlassen kann, dass die Anzahl der Tris immer gleich bleibt (ein Dreieck bekommt nie mehr Punkte!), ist es genauer, Tris statt Poly zu zählen. Deshalb beziehen sich diese Richtlinien auf Tris.

### Ein bisschen Geschichte

In den alten Tagen der Spielentwicklung war es unmöglich, perfekte Beleuchtung für alle Pixel zu berechnen. Alle intensiven Berechnungen wurden für jedes Poly durchgeführt und dann auf die Pixel innerhalb des Poly interpoliert.

Heutzutage verwenden moderne Engines jedoch eine Beleuchtung pro Pixel. Daher ist der komplexeste Teil nicht der Vertex-Shader, sondern der Pixel-Shader. Nehmen wir ein Beispiel für ein Objekt mit ~500 Polygonen. Die GPU benötigt für die Verwaltung eines Vertex ~10 Anweisungen (das ist keine genaue Zahl, nur ein Anhaltspunkt). Für jedes Polygon deines Modells benötigt der Computer ~10 Anweisungen, also 500 × 10 = 5000 Anweisungen für das gesamte Drahtgittermodell.

Nun zur Bedeutung von „Pixel“. Es hängt davon ab, wie viele Pixel dein Objekt einnimmt, aber gehen wir mal vom schlimmsten Fall aus – nehmen wir an, dein Objekt füllt den ganzen Bildschirm aus. Für die Berechnung jedes Pixels (Licht, Glanz, Normal Map usw.) benötigt die Grafikkarte etwa ~50 Anweisungen.

Mit einer Auflösung von 800 × 600 (die Meisten haben eine höhere), sind das 800 × 600 × 50 = 24.000.000 Anweisungen. Selbst wenn man also die Anzahl der Flächen verdoppelt, hat das keinen großen Einfluss auf den Großteil des Leistungsverbrauchs. Er wird pro Pixel berechnet, nicht mehr pro Fläche.

Wir können also die Polycount ohne große Probleme erhöhen. Es ist jedoch wichtig, sie unter Kontrolle zu halten.

### Polycount messen

Blender zeigt die Polycount in der Statusleiste an. Im Screenshot unten wird wird gezeigt, wie man ihn aktiviert, wenn **Szenenstatistik** nicht aktiviert ist, indem man mit der rechten Maustaste auf die Statusleiste klickt:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Achte auf die Anzahl der **Tris**. Das ist die Information, die du brauchst. Denk auch daran, dass die Anzahl der Tris in der gesamten Szene nur im Objektmodus angezeigt wird.

### Polycount-Beispiele

* Ein Frachtflugzeug: ~4000 Tris
* Eine Palme mit Level of Detail
    * High: 843 tris
    * Medium: 465 tris
    * Low: 42 tris
* Eine einfache Pflanze: 32 tris
* Ein mittelgroßer Baum: 1380 tris
* Ein Kürbis: 470 Tris

### Objekte als High-Poly markieren

Es ist möglich, Objekte so zu markieren, dass sie einen leistungsstärkeren Computer benötigen. Dazu öffnest du eine beliebige STK-Szene mit Blender, wählst das Objekt aus, das du markieren möchtest, und aktivierst das Kästchen **Enable geometry visibility details** (Sichtbarkeitsdetails der Geometrie aktivieren) im Fenster **SuperTuxKart Object Properties** (Objekteigenschaften). Dann kannst du **Visibility** (Sichtbarkeit) auf eine der verfügbaren Optionen einstellen, um zu entscheiden, ab welcher Stufe der grafischen Effekte dein Objekt sichtbar sein soll.

## Skalierung

Objekte müssen die richtigen Proportionen haben, damit sie im Spiel nicht seltsam aussehen.

* Eine Palme ist etwa 27 Blender-Einheiten hoch.
* Die Holzgebäude in „Northern Resort“ sind etwa 8 Blender-Einheiten hoch.
* Die Lampone-Flaggen in „Candela City“ sind 10 Blender-Einheiten hoch.
