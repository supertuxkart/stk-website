---
title: Versionsverwaltung
toc: true
---
SuperTuxKart nutzt Git für die Versionskontrolle und SVN für das Speichern von Dateien. Falls du diese nicht installiert hast, solltest du das zuerst tun. Wie diese installiert werden können wird in den Anweisungen am Ende dieser Seite erklärt.

## Kern des Spiels

Der Kerncode ist in unserer [GitHub-Seite](https://github.com/supertuxkart/stk-code) gehostet.  Um dieses zu klonen kann beispielsweise folgendes Kommando genutzt werden:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Es ist ca. 350 MB groß.

Die SuperTuxKart-Daten sind auf SourceForge gehostet und nutzen SVN. Ein beispielhaftes "checkout"-Kommando:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Es ist etwa 700 MB groß.

Diese beiden Archive sollten in denselben Ordner heruntergeladen werden, sodass die Ordner `stk-code` sowie `stk-assets` nebeneinander sind.

## Medienarchiv

Das Medienarchiv ist **nicht notwendig um das Spiel zu spielen**. Es enthält die Quelldateien für Spieldateien (.blend-Dateien, verlustfreie Musik sowie Klangdateien, usw.) und ist an Künstler gerichtet. Es ist ca. 3.2 GB groß.

Das Medienarchiv ist auf SourceForge geostet und nutzt SVN. Ein beispielhaftes "checkout"-Kommando:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Siehe auch [Medienarchiv](Media_Repo).

## Richtlinien

Hier sind einige Richtlinien für Entwickler mit einer Git/SVN-Schreibberechtigung:

* Tritt unserem IRC-oder Telegramkanal bei (siehe [Community](Community)). Entwickler teilen dort normalerweise mit, an was sie gerade arbeiten, um Konfliktpotential zu minimieren. Zusätzlich können prominente Fehler dort diskutiert werden.
* Es könnte nützlich sich für den E-Mail-Verteiler "supertuxkart-commit" einzutragen (siehe [Community](Community)) um alle "commit"-Nachrichten automatisch zu erhalten und somit immer zu wissen, was gerade passiert und ob deine Arbeit mit der Arbeit anderer Entwickler interferiert.
* Die Entwicklerversion sollte immer kompilierbar sein. Während es nicht zwangsweise notwendig ist, dass alle Plattformen getestet werden, sollte dennoch versucht werden, den Code so portierbar wie möglich zu schreiben. Andere Entwickler und Tester werden normalerweise schnell auf Probleme hinweisen (oder diese beheben).
* (Code)-Änderungen sollten öfters eingebucht (committed) werden.
* Versuche alle zusammengehörenden Änderungen, die eine neue Funktion implementieren oder eine bestehende Funktion ändern, in eine einzige Einbuchung (commit) zusammenzufügen und zusammen hochzuladen (nicht jede Datei einzeln). Es sollte zudem vermieden werden mehrere Funktionen in einer einigen großen commit hochzuladen.

## Git installieren

### Linux
`sudo apt install git` oder ein äquivalentes Kommando in der Distribution deiner Wahl.

### Windows
Installiere [Git für Windows](https://github.com/git-for-windows/git/releases/latest). Falls du eine grafische Oberfläche für Git nutzen möchtest steht es dir frei, diejenige zu benutzen, welche dir am besten gefällt. Falls du dich nicht entscheiden kannst, welche du installieren sollst, kannst du nachdem Git für Windows installiert wurde [TortoiseGit](https://tortoisegit.org/download) installieren.

## SVN installieren

### Linux
`sudo apt install subversion` oder ein äquivalentes Kommando in der Distribution deiner Wahl.

### Windows
Du kannst zwischen mehreren SVN-Clients wählen und denjenigen nutzen, welcher dir am meisten gefällt. Falls du dich nicht entscheiden kannst, kannst du [TortoiseSVN](https://tortoisesvn.net/downloads.html) installieren.
