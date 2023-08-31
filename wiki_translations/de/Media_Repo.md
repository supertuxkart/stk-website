---
title: Medienarchiv
display_title: true
---
Das **Medienarchiv** ist der Ort an dem alle Originaldateien, wie 3D-Modelle, Texturen, Sounds und alle weiteren künstlerischen Objekte, die in STK genutzt werden, gespeichert sind. Dies ist nötig, weil viele dieser Dateien normalerweise zu groß oder sogar inkompatibel mit dem Spiel sind. Deswegen sind diese verkleinert oder konvertiert bevor diese in das Spiel integriert werden.

Das Medienarchiv hat einen weiteren Nutzen: Wenn du selbst Strecken erstellst, hast du eine grosse Auswahl an Texturen und Objekten, die du dort importieren und einbauen kannst. Da Blender sehr sensibel ist was die Dateistruktur angeht wenn du Texturen oder Bibliotheksknoten ("library nodes") aus dem Medienarchiv einbindest, wird empfohlen, die Blenderprojekt-Datei deines Karts, deiner Strecke oder deines Bibliotheksknoten in einen eigenen Ordner, in der zugehörigen Kategorie, innerhalb des heruntergeladenen Medienarchivs zu platzieren **so als wäre es ein offizieller Teil des Spiels.**

### Wie man das Medienarchiv installiert

Wir empfehlen, die Entwicklungsversion von STK zu verwenden. Dann ist der beste Weg, das Medienarchiv herunterzuladen, ein Subversion (SVN) Client. Wenn du SVN jedoch nicht installieren kannst, gibt es eine einfache Lösung.

#### Beste Methode: Subversion installieren

Anweisungen zur Installation von Subversion findest du auf der Seite [Tools installieren](https://supertuxkart.net/Installing_Tools#subversion-client). Sobald es installiert ist, benutze die folgende Adresse für das "checkout"-Kommando:

* Wenn du ein grafisches Programm (z. B. TortoiseSVN) verwendest, fragt es dich möglicherweise nach der URL des Projektarchivs – `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` – und einem "checkout"-Verzeichnis, also dem Ort auf deinem Computer, in den du es kopieren möchtest.
* Unter Unix-ähnlichen Betriebssystemen oder MacOS wäre Folgendes ein Beispiel für einen "checkout"-Befehl:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Workaround: Manueller Download des Snapshots

{% start_liquid popup_info %}

Diese Lösung ist sehr einfach und lädt dieselben Dateien und Ordner herunter, aber er aktualisiert deine Dateien nicht, wenn Änderungen am Medienarchiv vorgenommen werden. Das heißt, wenn nach dem Herunterladen des Snapshots relevante Änderungen im Archiv vorgenommen werden, können deine Projekte in neueren Versionen anders aussehen oder sogar nicht mehr richtig funktionieren, wenn du keinen neuen Snapshot herunterlädst.

{% end_liquid %}

Besuche folgenden Link, um einen Snapshot zu erstellen und herunterzuladen: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Wenn du aufgefordert wirst, den Snapshot erneut anzufordern, tue dies. Dann wird ein Download der aktuellen Dateien des Medienarchivs gestartet. Entpacke die ZIP-Datei an einem Arbeitsort, an dem du deine Kopie des Medienarchivs ablegen möchtest. Jetzt ist es fertig!

Am Medienarchiv werden [relativ häufig](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=) Änderungen vorgenommen. Wenn du also einen neuen Snapshot herunterladen möchtest, musst du alle deine Projekte in einem anderen Ordner sichern, deine lokale Medienarchiv-Kopie löschen und sie durch einen neuen Snapshot ersetzen.
