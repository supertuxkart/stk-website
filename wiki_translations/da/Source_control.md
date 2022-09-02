---
title: Kildekontrol
toc: true
---
SuperTuxKart anvender Git til kildekode og SVN til datafiler. Så hvis du ikke har dem så installér dem først. Du kan finde instruktioner til installation nederst denne side.

## Spilkerne

Kernekodedepotet er på vores [GitHub side] (https://github.com/supertuxkart/stk-code). Klon-kommandoeksempel:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Det fylder ca. 350 MB downloadet.

Datafiler er på SourceForge og anvender SVN. Checkoutkommandoeksempel:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Det fylder ca. 700 MB.

De to depoter bør downloades til samme folder, så folderne `stk-code` og `stk-assets` er ved siden af hinanden.

## Mediedepot

Mediedepotet er **ikke nødvendigt for at spille spillet**. Det har kildefiler til aktiver (.blend-filer, tabsfri musik- og lydfiler osv.) og er tiltænkt kunstnere. Det fylder ca. 3.2GB.

Mediedepotet er på SourceForge og anvender SVN. Checkoutkommandoeksempel:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Se også [mediedepotsiden](Media_Repo).

## Retningslinjer

Her  et par retningslinjer for udviklere, der har skriveadgang til Git/SVN:

* Tilslut vores IRC eller telegram-kanal (see [Community](Community)). Udviklere skriver normalt, hvad de arbejder på dér, så sandsynlighed for konflikter kan minimeres. Og kendte højt profilerede fejl diskuteres også der.
* Måske har det værdi at abonnere på supertuxkart-commit emaillisten. (Se [Community](Community).) Alle commit-meddelelser sendes automatisk til den adresse, så du vil altid være klar over, hvad der sker, og hvis dit arbejde forstyrrer, hvad andre arbejder på.
* Udviklingsversionen bør altid kunne kompilere. Du kan ikke teste alle platforme, men du kan gøre dit bedste for at skrive flytbar kode. Andre udviklere og testere vil normalt hurtigt udpege (og rette) problemer.
* Commit ofte. Hyppige commits giver den fordel, at de fungerer som backup, og det gør tidsslugende fusionskonflikter mindre sandsynlige.
* Prøv at have alle ændringer til en enkelt funktion med i et commit (undgå enkeltfil commit) og prøv at undgå mix af flere funktioner i et stort commit.

## Installation af Git

### Linux
`sudo apt install git` eller tilsvarende i din valgte distribution.

### Windows
Installér [Git til Windows](https://github.com/git-for-windows/git/releases/latest). Hvis du ønsker grafisk interface til Git, kan du vælge, hvad der passer til dig. Ellers anbefales [TortoiseGit](https://tortoisegit.org/download) også efter installation af Git til Windows.

## Installation af SVN

### Linux
`sudo apt install subversion` eller tilsvarende i din valgte distribution.

### Windows
Du kan vælge mellem adskillige SVN-klienter og bruge, hvad der fungerer for dig. Men hvis du ikke kan vælge anbefales [TortoiseSVN](https://tortoisesvn.net/downloads.html).
