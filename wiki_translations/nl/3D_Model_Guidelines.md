---
title: Richtlijnen omtrent 3D-modellen
toc: true
---
Het is belanglijk om een consistente objectstijl aan te houden in SuperTuxKart. Deze pagina is dan ook vergelijkbaar met die van de [textuurrichtlijnen](Texture_Guidelines).

## Stijl

{% capture real_plam_tree -%}

Echte palmboom

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Striptekeningachtige palmboom

{%- endcapture -%}

{%- capture realistic -%}

Realistisch doch vereenvoudigd model

{%- endcapture -%}

Objecten in SuperTuxKart dienen realistisch te zijn, zowel in omvang als vorm. Objecten hoeven echter niet zo gedetailleerd te zijn als in werkelijkheid. Neem bijvoorbeeld een palmboom:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Zoals je kunt zien is komt het nieuwe palmboommodel véél dichter in de buurt van een echte - het enige wat er nog ontbreekt zijn de details. Om een lang verhaal kort te maken: <u>probeer zoveel mogelijk algemeen realisme te verwerken, maar zorg er ook voor dat het er stripverhaalachtig uitziet door teveel details of texturen toe te voegen.</u>

Voorbeeld: je wilt een betonnen barrière maken. Iedereen weet wel hoe zo'n ding eruitziet. Dus open je Blender en doet het volgende:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Het probleem is dat er teveel details ontbreken en het object er te eenvoudig uitziet. Als je al je objecten er zo uit laat zien, dan is het eindresultaat niet mooi. Maak dus foto's (of zoek ze op), teken, denk na over je ideeën, etc. Het voelt misschien niet helemaal alsof je het vanaf nul hebt gemaakt, maar wij raden aan om het zo te doen. Het doel is om de juiste inspiratie te krijgen. Op een foto als [deze](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG) kun je alle details goed zien en het object nabootsen.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Zie je het verschil? De barrière ziet er mooi uit en is voorzien van veel details, zoals de bedrading, waarschuwingsstreep, etc. Hij is niet foto-realistisch, maar het is tenminste een object dat er interessant uitziet. (Bovendien is volledig realisme niet het doel.)

## Regels

* Alle modellen **MOETEN** kindvriendelijk zijn. SuperTuxKart voldoet aan de ‘Everyone’-[beoordeling](https://nl.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Pictogrammen).
* Modellen moeten er goed uitzien bij zowel solo- als groepswedstrijden.
* Objecten met veel polygonen dienen voorzien te zijn van [Detailniveaus](Level_of_Detail).
* Objecten dienen bruikbaar te zijn in veel verschillende omgevingen, tenzij het écht bij een specifiek parcours hoort.
    * Plaats geen gras of andere begroeiing rond je objecten, tenzij je object een vorm van begroeiing is.
    * Personages dienen reguliere kleding aan te hebben, tenzij een andere vorm beter past, bijvoorbeeld op het strand.

## Aantal polygonen

Dit betreft het aantal oppervlakken of gezichten van 3D-objecten. Oudere Blender-versies ondersteunen alleen objecten die gemaakt zijn als ‘quads’ (polygonen bestaande uit vier punten) of ‘tris’ (polygonen bestaande uit drie punten). ‘Polygoon’ betekende toen gewoon ‘een aantal quads’. Nu ondersteunt Blender echter n-gonen of polygonen met een ongelimiteerd aantal punten. Het aantal tris blijft dus voortaan hetzelfde (een driehoek blijft een driehoek!), wat accurater is dat een polygoon. Bij deze richtlijnen is tris dan ook leidend.

### Een stukje geschiedenis

Vroeger was het in games onmogelijk om de belichting van alle pixels nauwkeurig te berekenen. Alles werd dan ook per polygoon berekend en vervolgens omgezet naar pixels binnen het polygoon.

Tegenwoordig kunnen aandrijvingen echter wél gebruikmaken van belichting per pixel. Het complexe deel is dan ook niet de knooppunt‘shader’, maar de pixel‘shader’. Voorbeeld: een object bevat ~500 polygonen. De gpu kan dit als knooppunt verwerken in ~10 instructies (indicatie). Dat is dus ~10 instructies per polygoon, ofwel 500 × 10 = 5000 instructies per geheel.

Dan nu het pixelgedeelte. Dit gedeelte is afhankelijk van het aantal pixels per object, maar laten we even uitgaan van het onwaarschijnlijkste scenario, een scherm dat geheel en al gevuld is met een object. Elke pixel (belichting, gloeiing, rest van het parcours, etc.) kost de gpu ~50 instructies.

Als je een resolutie van 800 × 600 hebt (de meeste mensen hebben een hogere resolutie), dan is dat 800 × 600 × 50 = 24.000.000 instructies. Dus zelfs als je het dubbele aantal oppervlakken toevoegt, dan nog heeft dat weinig invloed op de rekenkracht omdat de berekening per pixel is en niet per oppervlak.

Het aantal polygonen kan dus naar eigen inzicht verhoogd worden, maar houd wel enige controle.

### Polygoonberekening

Blender toont het aantal polygonen op de statusbalk. Zie onderstaande schermfoto als dit niet het geval is om de functie **Scènestatistieken** in te schakelen.

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Zoek het aantal **tris** - deze informatie heb je nodig. Onthoud ook het aantal tris van de gehele scène in de objectmodus.

### Polygoontellingsvoorbeelden

* Een vrachtvliegtuig: ~4000 tris
* Een palmboom voorzien van detailniveaus
    * Hoog: 843 tris
    * Gemiddeld: 465 tris
    * Laag: 42 tris
* Een basale plant: 32 tris
* Een halfhoge boom: 1380 tris
* Een pompoen: 470 tris

### Objecten markeren als hoog aantal polygonen

Het is mogelijk om bij objecten op te merken dat een krachtiger computer vereist is. Open hiervoor een STK-scène in Blender, kies het te markeren object en schakel **Geometriedetails** in op het **SuperTuxKart-objecteigenschappen**paneel. Je kunt de **zichtbaarheid** instellen op elk van de beschikbare opties om het minimum grafische-effectenniveau te bepalen waarop je object zichtbaar dient te zijn.

## Afmetingen

Objecten dienen een goede proportie te hebben zodat ze er niet vreemd uitzien.

* Een palmboom is ongeveer 27 Blender-eenheden hoog.
* De houten gebouwen in het Noordelijk verblijf zijn ongeveer 8 Blender-eenheden hoog.
* De lampionvlaggen in Candela-Stad zijn ongeveer 10 Blender-eenheden hoog.
