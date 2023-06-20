---
title: Medijski repozitorij
display_title: true
---
**Medijski repozitorij** je kraj, kamor shranjujemo vse originalne datoteke 3D modelov, tekstur, zvoka in drugih umetnin, ki se pojavijo v SuperTuxKartu. To počnemo, ker so te datoteke običajno prevelike ali celo nezdružljive z igro, zato jih pred vstavitvijo v igro stisnemo ali pretvorimo.

Medijski repozitorij služi še drugemu namenu. Prek njega lahko v proge, ki jih izdelate, uvozite pester nabor tekstur in objektov. Ker je Blender občutljiv na ureditev datotek, predlagamo, da delovno datoteko .blend, v kateri izdelujete svoje vozilo/progo/knjižnično vozlišče, postavite v svojo lastno mapo v ustrezni kategoriji svoje prenesene kopije medijskega repozitorija, **kakor da bi bila vaša datoteka uradni del igre.**

### Nameščanje medijskega repozitorija

Priporočamo, da delate za razvojno različico SuperTuxKarta, zato je repozitorij najbolje prenesti z odjemalskim programom Subversion (SVN). Če pa SVN-ja iz kakšnega razloge ne morete namestiti, obstaja preprosta nadomestna rešitev.

#### Priporočeni način: Namestitev orodja Subversion

Navodila za namestitev Subversiona so na strani [Nameščanje orodij](https://supertuxkart.net/Installing_Tools#subversion-client). Ko ga namestite, lahko prejmete repozitorij z naslednjega naslova:

* Če uporabljate grafični program (npr. TortoiseSVN), vas bo nemara vprašal za spletni naslov repozitorija - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - in za ciljni imenik na svojem računalniku, kamor ga želite skopirati.
* Na Unixu podobnih operacijskih sistemih ali na MacOS-u bi bil primer prejemnega ukaza:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Nadomestna rešitev: Ročni prenos trenutne vsebine repozitorija

{% start_liquid popup_info %}

Ta rešitev je preprosta in prenese iste datoteke in mape, vendar ne bo posodobila vsebine, kadar se le-ta spremeni v medijskem repozitoriju. To pomeni, da bo v primeru pomembnih sprememb po tem, ko ste že prenesli vsebino repozitorija, vaše delo v novejših različicah videti drugače ali pa morda celo ne bo pravilo delovalo, če ne prenesete novejše različice vsebine.

{% end_liquid %}

Na naslednji povezavi lahko generirate stanje trenutne vsebine in jo prenesete: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Če vas zaprosi za ponovno pošiljanje zahteve po vsebini (snapshot), storite tako. Potem boste pričeli prejemati datoteke, kakršne so trenutno. Datoteko ZIP razširite na lokacijo, kjer želite imeti kopijo repozitorija. Pa ste nared!

Medijski repozitorij se [precej pogosto](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=) spreminja. Če boste želeli prenesti najnovejšo različico vsebine, boste morali shraniti vaše projektne datoteke drugam, pobrisati svojo kopijo repozitorija in jo zamenjati z novo.
