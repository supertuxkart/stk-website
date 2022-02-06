---
title: Repository Multimediale
display_title: true
---
Nel **repository multimediale** vengono contenuti tutti i file originali dei Modelli 3D, texture, suoni e tutte le altre risorse utilizzate in SuperTuxKart. Ciò è necessario a causa della dimensione troppo grande oppure per l'incompatibilità col gioco, perciò vengono compressi e convertiti prima di essere inclusi.

Il repository multimediale ha inoltre un altro scopo: utilizzandolo è possibile importare una enorme varietà di texture e oggetti all'interno dei tracciati. Blender è sensibile alla struttura del file dei tracciati quando vengono importate texture e nodi libreria dal repository, perciò raccomandiamo di mettere il file del progetto in una sua cartella sotto la categoria appropriata all'interno della copia scaricata del repository, **come se fosse una parte ufficiale del gioco**.

Raccomandiamo l'utilizzo della versione in sviluppo di StuperTuxKart, perciò il miglior modo per scaricare il repository multimediale è con un client Subversion (SVN) (maggiori informazioni nella pagina  [Installazione degli strumenti](Installing_Tools)).

In sistemi operativi Unix-like, un esempio di comando di checkout sarebbe:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
