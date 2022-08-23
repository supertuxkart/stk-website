---
title: Codice sorgente
toc: true
---
SuperTuxKart utilizza Git per il codice sorgente e SVN per i file di dati. Quindi, se non li avete, installateli prima. Le istruzioni per installarli si trovano in fondo alla pagina.

## Core del gioco

Il repository del codice principale è ospitato sulla nostra [pagina GitHub](https://github.com/supertuxkart/stk-code). Esempio di comando clone:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Il download è di circa 350 MB.

I file di dati sono ospitati su SourceForge e utilizzano SVN. Esempio di comando di checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Il download è di circa 700 MB.

Questi due repository devono essere scaricati nella stessa cartella, in modo che le cartelle `stk-code` e `stk-assets` siano accanto all'altra.

## Repository dei Media

Il repository multimediale non **necessario per giocare**. Contiene i file sorgente delle risorse (file .blend, musica e suoni lossless, ecc.) ed è destinato agli artisti. La dimensione di download è di circa 3.2 GB.

Il repositori multimediale è ospitato su SourceForge e utilizza SVN. Esempio di comando checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Vedi anche [la pagina del repositori Multimediale](Media_Repo).

## Linee guida

Ecco alcune linee guida per gli sviluppatori che hanno accesso in scrittura a Git/SVN:

* Unisciti al nostro canale IRC o Telegram (vedi [Community](Community)). Gli sviluppatori di solito postano lì ciò su cui stanno lavorando, in modo da ridurre la probabilità di conflitti. Inoltre, anche i bug noti di alto profilo vengono discussi lì.
* Potrebbe valere la pena di iscriversi alla lista di e-mail di supertuxkart-commit (vedere [Community](Community)). Tutti i messaggi di commit vengono inviati automaticamente a questo indirizzo, in modo da essere sempre al corrente di ciò che sta accadendo e se il proprio lavoro interferisce con quello di altre persone.
* La versione di sviluppo deve essere compilata. Anche se non è possibile eseguire test su tutte le piattaforme, fate del vostro meglio per scrivere codice portabile. Gli altri sviluppatori e tester di solito evidenzieranno rapidamente (e risolveranno) eventuali problemi.
* Commit spesso. I commit frequenti hanno il vantaggio di fungere da backup, rendendo meno probabili i conflitti di fusione che richiedono molto tempo.
* Cercate di includere tutte le modifiche per una singola caratteristica in un unico commit (cioè non eseguite il commit per ogni file separatamente) e cercate di non mischiare diverse caratteristiche in un unico grande commit.

## Installare Git

### Linux
`sudo apt install git` o l'equivalente della distribuzione scelta. 

### Windows
Installare [Git per Windows](https://github.com/git-for-windows/git/releases/latest). Se volete un’interfaccia grafica per Git, potete scegliere quella che fa per voi. Altrimenti, se non sapete quale scegliere, potete installare [TortoiseGit](https://tortoisegit.org/download) dopo aver installo Git per Windows.

## Installare SVN

### Linux
`sudo apt install subversion` o l'equivalente della distribuzione scelta. 

### Windows
Potete scegliere tra diversi client SVN e usare quello che fa per voi, ma se non sapete quale scegliere potete installate [TortoiseSVN](https://tortoisesvn.net/downloads.html).
