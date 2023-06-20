---
title: Upravljanje izvorne kode
toc: true
---
SuperTuxKart za izvorno kodo uporablja Git, za podatkovne datoteke pa SVN. Če teh orodij še nimate, ju namestite. Navodila za to so na dnu te strani.

## Jedro igre

Repozitorij z glavnino kode se nahaja na naši [GitHub strani](https://github.com/supertuxkart/stk-code). Primer ukaza za kloniranje:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Velik je približno 350 MB.

Podatkovne datoteke gostimo na SourceForge, za upravljanje različic uporabljamo SVN. Primer ukaza za kopiranje:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Velikost repozitorija je približno 700 MB.

Oba repozitorija prenesite v isti imenik, tako da bosta mapi `stk-code` in `stk-assets` ena poleg druge.

## Medijski repozitorij

Medijski repozitorij **ni nujen za igranje igre**. Vsebuje izvorne datoteke vsebin v igri (datoteke .blend, neobdelane glasbene in zvočne datoteke itn.). Namenjen je umetnikom. Velik je približno 3,2 GB.

Medijski repozitorij gostijo na SourceForge, za upravljanje različic se uporablja SVN. Primer ukaza za kopiranje:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Glej še [stran Medijski repozitorij](Media_Repo).

## Napotki

Tukaj je nekaj napotkov za razvijalce, ki imajo pisalni dostop za Git/SVN.

* Pridružite se našemu kanalu na IRC-ju ali Telegramu (glej [Skupnost](Community)). Tam razvijalci običajno objavljajo, kaj delajo, da se zmanjša možnost navzkrižij. Tam se razpravlja tudi o pomembnejših poznanih nepravilnostih v kodi.
* Smiselno bi se bilo naročiti na e-poštno listo supertuxkart-commit (glej [Skupnost](Community)). Na ta naslov se samodejno pošiljajo vse uveljavitve, zato ste lahko vedno na tekočem z dogajanjem in vidite, ali se vaše delo križa z delom drugih.
* Razvojna različica se mora vedno prevesti. Čeprav ni mogoče testirati na vseh platformah, se potrudite po najboljših močeh in pišite prenosljivo kodo. Drugi razvijalci in testerji bodo običajno hitro izpostavili (in popravili) morebitne težave.
* Uveljavljajte svoje delo karseda pogosto. Redne uveljavitve služijo kot varnostne kopije in zmanjšajo verjetnost časovno potratnih združitvenih neskladij.
* Poskusite vključiti vse spremembe ene funkcionalnosti v eno uveljavitev (npr. ne uveljavljajte vsake datoteke posebej) in poskušajte ne združiti več funkcionalnosti v eno ogromno uveljavitev.

## Nameščanje Gita

### Linux
`sudo apt install git` ali enakovreden ukaz v vaši distribuciji.

### Windows
Namestite [Git za Windows](https://github.com/git-for-windows/git/releases/latest). Če želite grafični vmesnik, izberite poljubnega. Če ne veste, katerega izbrati, predlagamo [TortoiseGit](https://tortoisegit.org/download), potem ko namestite Git.

## Nameščanje SVN-ja

### Linux
`sudo apt install subversion`  ali enakovreden ukaz v vaši distribuciji.

### Windows
Izbirate lahko med več odjemalskimi programi SVN. Če ne veste, katerega izbrati, lahko namestite [TortoiseSVN](https://tortoisesvn.net/downloads.html).
