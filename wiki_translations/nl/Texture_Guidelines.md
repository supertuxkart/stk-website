---
title: Textuurrichtlijnen
toc: true
---
Texturen van goede kwaliteit is één van de belangrijkste zaken bij het maken van 3D-ontwerpen. Zelfs een prachtig gemodelleerd object kan er totaal niet uitzien als de texturen niet goed zijn. We vragen je dan ook om deze richtlijnen te volgen.

## Stijl

Texturen in SuperTuxKart worden met de hand getekend of geschilderd, al mag je wel foto's gebruiken ter referentie. ‘Schilderen’ betekent echter niet dat je een doek moet gebruiken, maar een digitaal teken- en schilderprogramma, zoals Krita. Een lijst met programma's is te vinden op de pagina [Hulpmiddelen installeren](Installing_Tools).

Texturen zijn geen neppe, stripverhaalachtige objecten. Voeg zoveel mogelijk details toe als je wilt, zolang je maar met de hand tekent (met uitzondering van onderstaande werkomstandigheden). Meer informatie over het maken van texturen vind je in de [Blender-documentatie](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Foto's

Onder bepaalde werkomstandigheden is er geen winst te behalen uit het handmatig tekenen van texturen. Als een object teveel tijd in beslag neemt, zoals een stuk gras, dan kan een foto van pas komen. Zorg echter wel dat de foto algemeen genoeg is en niet zorgt voor een lelijk tegelpatroon, zoals dit voorbeeldtextuur:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Dit geval is interessant, aangezien de textuur zowel goede als slechte eigenschappen heeft. Zo is het palmblad goed (let op: de doorzichtigheid wordt hier gerenderd middels een alfamasker) omdat de belichting goed verdeeld is, er geen onnodige details zijn toegevoegd en het blad er uitziet als dertien in een dozijn. Ook wordt het blad niet gebruikt op plaatsen waar er problemen omtrent tegels kunnen ontstaan. De boomstronk, daarentegen, is voorzien van slechte belichting. Een textuur van deze kwaliteit zou leiden tot opvallende lichte en donkere strepen. Ook is de boomstronk te egaal, wat kan leiden tot problemen omtrent de tegelverdeling.

Het gebruik van foto's wordt doorgaans afgeraden voor objecten dichtbij de spelers, omdat je dan meteen kunt zien dat het een foto is.

## Kleur en belichting

Texturen in SuperTuxKart zijn kleurrijk en contrasterend, maar moeten niet botsen. Zeel lichte, neon-/plastic-/schilderij-achtige texturen worden niet geaccepteerd, tenzij het slechts een miniem gedeelte betreft, zoals het startlogo in XR591. Dezelfde regels zijn van toepassing op texturen die slechts uit één kleur bestaan. Diepzwarte of -witte texturen worden eveneens afgeraden, omdat de kleurinformatie vermindert met 100% zwart of wit.

Texturen dienen zó te worden getekend dat de sfeerkleur en lichtval van de afbeelding neutraal overkomen. SuperTuxKarts aandrijving past de kleurbalans en helderheid automatisch aan op basis van de scènebelichting en -kleuren.

## Patronen

Er mogen geen zichtbare patronen zichtbaar zijn op texturen. Opvallende patronen zorgen voor gek uitziende parcours en karts. Hier vind je een voorbeeld van hoe het **niet** moet:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Een ander probleem wat kan optreden is texturen die geen patroon hebben. Dit is de belangrijkste reden om het gebruik van foto's als texturen te vermijden:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Let op: met Blender gemaakte texturen zorgen voor een lelijk tegelpatroon, ondanks dat de texturen zelf geen patronen hebben. Door enkele details te verwijderen en de randen te egaliseren krijg je een véél beter resultaat, hoewel verre van perfect:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Textuurdetails

Probeer zo weinig mogelijk texturen te maken die geen details uit de werkelijkheid bevatten. Stel dat je een touw aan een muur wilt hangen maar geen net wilt gebruiken, maak dan geen nieuw textuur om alleen het touw toe te voegen. SuperTuxKart bevat een zogeheten ‘decal shader’, waarmee je een touwtextuur kunt toevoegen op de tweede UV-laag, bovenop het houttextuur. Lees voor meer informatie [de decalinstructies](Texturing#Decals).

## Technische beperkingen
* De afmetingen van afbeeldingen dienen een veelvoud van beide te zijn. Zo is een standaard textuur 1024 × 1024, ofwel 2<sup>10</sup> × 2<sup>10</sup>. Let op: texturen hoeven niet vierkant te zijn, dus 1024 × 512 ofwel 2<sup>10</sup> × 2<sup>9</sup> mag ook.
* Voorzie kleine objecten niet van grote texturen om videogeheugen te sparen.
* Gebruik niet al te kleine texturen (4x4 of kleiner), óók niet voor vlakke kleuren. Deze kunnen namelijk tot onverwachte resultaten leiden als textuurcompressie is ingeschakeld.
* Textuurbestanden **moeten** in dezelfde map als het geëxporteerde object worden geplaatst.
* Texturen dienen aangeleverd te worden in png-formaat indien
    * de textuur in kwestie binnen het directe gezichtsveld valt, waardoor een hoge mate van detaillering gewenst is;
    * het object (semi-)doorzichtig is.
* Texturen dienen aangeleverd te worden in jpeg-formaat indien het
    * objecten zijn die ver buiten het gezichtsveld vallen;
    * luchttexturen zijn (soms);
    * parcours met sfeerverlichting betreft.
