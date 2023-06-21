---
title: Smernice za 3D modele
toc: true
---
Pomembno je, da ima SuperTuxKart dosleden videz predmetov. Na nek način je ta stran podobna [smernicam za teksture](Texture_Guidelines).

## Slog

{% capture real_plam_tree -%}

Prava palma

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Zelo risankast model palme

{%- endcapture -%}

{%- capture realistic -%}

Realističen, a poenostavljen model

{%- endcapture -%}

Predmeti v SuperTuxKartu naj bodo po obliki in velikosti realistični, vendar naj imajo manj podrobnosti kot v resnici. Za primer vzemimo palmo:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Vidimo lahko, da je novi model palme po obliki veliko bližje resnični palmi. Ni pa tako natančen, da je videti resničen. Na kratko, <u>ohranite realizem splošne oblike, a hkrati obdržite nekoliko stiliziran videz tako, da se ognete prekomernim detajlom v obliki in teksturah.</u>

Odločite se na primer, da boste ustvarili betonsko oviro. Vsi vedo, kakšnega videza je betonska ovira – mogoče jih vidite vsak dan na poti v službo. In tako odprete Blender ter izdelate nekaj takega:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Težava je, da ste izpustili veliko podrobnosti in preveč poenostavili predmet. Videti je grdo, in če boste vse svoje predmete izdelali tako, končni rezultat ne bo tako dober, kot bi lahko bil. Rešitev je, da zberete fotografije, skice in ideje, skratka vse, kar vam bo pomagalo pri izdelavi. Res se mogoče zdi kot goljufanje, vendar se zelo priporoča. Cilj je dobiti pravi navdih. Na [tej sliki](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG) lahko recimo vidite pomembne značilnosti, ki jih lahko potem vnesete v svoj izdelek.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Vidite razliko? Ovira je zanimiva na pogled, veliko je podrobnosti, recimo nalagalne žice na vrhu, opozorilni trak na dnu itd. Ni fotorealistična, je pa zanimiv predmet, ki bi lahko bil podoben resnični oviri. (Poleg tega cilj ni čisti realizem, ampak precejšnji.)

## Pravila

* Vsi modeli **MORAJO** biti primerni za otroke. SuperTuxKart naj bo po [oceni ESRB](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings) primeren za vse.
* Modeli naj lepo izgledajo tako samostojno kot v skupinah.
* Modeli z veliko količino poligonov naj uporabljajo [stopnje natančnosti](Level_of_Detail).
* Razen če je vaš model neločljiv od proge, naj bo narejen tako, da ga bo možno uporabiti v različnih okoliščinah in bo iz njega mogoče narediti knjižnična vozlišča.
    * Okoli svojih objektov ne polagajte tal ali rastlinja (razen če je objekt sam po sebi rastlinje).
    * Ljudje naj v glavnem nosijo splošna oblačila, razen v primerih, ko to nima smisla, na primer na plaži.

## Število poligonov

Število poligonov (angl. polycount) pove, koliko površin oz. ploskev imajo 3D predmeti. Starejše različice Blenderja so podpirale le objekte iz štirikotnikov in trikotnikov. "Poly" je tako večinoma pomenilo število štirikotnikov. Toda Blender zdaj podpira poljubne večkotnike in ponuja štetje dveh količin – večkotnikov in trikotnikov. Ker je število trikotnikov edino zanesljivo (trikotnik nikoli ne dobi več točk!), je bolj pravilno upoštevati trikotnike kot poligone. Spodnje smernice se zato navezujejo na trikotnike.

### Malo zgodovine

V starih časih igranja iger je bilo nemogoče izračunati popolno svetlobo za vse piksle. Vse zahtevne izračune se je izračunalo za vsak poligon enkrat in se jih potem interpoliralo po pikslih znotraj poligona.

A dandanes sodobni upodabljalniki računajo svetlobo za vsak piksel. Najzahtevnejši del ni več senčilnik oglišč, pač pa senčilnik pikslov. Poglejmo si predmet, ki ima približno ~500 poligonov. Na grafični procesni enoti posamezno oglišče terja okoli ~10 inštrukcij (to ni točka cifra, ampak neka približna ocena). Za vsak poligon vašega modela bo računalnik poračunal cirka ~10 inštrukcij, se pravi 500 × 10 = 5000 inštrukcij za cel predmet.

Zdaj šele sledi računanje pikslov. To se razlikuje glede na to, koliko pikslov bo zajemal vaš predmet, ampak za primer vzemimo ekstrem – privzemimo, da vaš predmet seže čez cel zaslon. Za vsak piksel se bo moralo na grafični procesni enoti izvesti okoli ~50 inštrukcij (osvetljava, odblesk, lepljenje normal itd.).

Če je vaša ločljivost zaslona 800 × 600 (večina ljudi ima višje ločljivosti), sledi 800 × 600 × 50 = 24.000.000 inštrukcij. Tudi če podvojite število ploskev, ne boste pretirano upočasnili procesa. Zdaj se vse računa po pikslih, ne po ploskvah.

Zaradi tega lahko brez težav povečamo število poligonov. A vseeno v mejah normale.

### Merjenje št. poligonov

Blender izpisuje število poligonov v vrstici stanja, kot prikazuje spodnja slika. Če števila poligonov ne vidite, kliknite z desnim gumbom na vrstico stanja in odkljukajte možnost **Scene Statistics** (glejte sliko).

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Poglejte število z oznako **Tris**. To je podatek, ki ga potrebujete. Zapomnite si, da to število upošteva vse objekte v prizoru samo, kadar ste v objektnem načinu (object mode).

### Primeri količin poligonov

* Tovorno letalo: ~4000 trikotnikov
* Palma s stopnjami natančnosti (LoD)
    * Visoka stopnja natančnosti: 843 trikotnikov
    * Srednja stopnja natančnosti: 465 trikotnikov
    * Nizka stopnja natančnosti: 42 trikotnikov
* Preprosta rastlina: 32 trikotnikov
* Povprečno drevo: 1380 trikotnikov
* Buča: 470 trikotnikov

### Označevanje objektov kot "High-Poly"

Lahko označite, da objekti potrebujejo za upodobitev močnejši računalnik. Z Blenderjem odprite kateri koli STK prizor, izberite objekt, ki ga želite označiti, in odkljukajte **Enable geometry visibility details** v razdelku **SuperTuxKart Object Properties**. Nato lahko nastavite **Visibility** (vidljivost) na katerokoli od razpoložljivih možnosti in tako določite minimalno stopnjo grafičnih učinkov, pri kateri bo vaš objekt viden.

## Merila in velikosti

Objekti morajo imeti pravilna razmerja, da v igri niso videti čudno.

* Palma je visoka približno 27 Blenderjevih enot.
* Lesene stavbe v Severnem letovišču so visoke približno 8 Blenderjevih enot.
* Zastave v Svetilnem mestu so visoke 10 Blenderjevih enot.
