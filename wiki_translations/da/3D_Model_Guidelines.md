---
title: Retningslinjer til 3D-modeller
toc: true
---
Det er vigtigt, SuperTuxKart har et gennemgående konsistent design. På mange måder har denne side det samme som [tekstur retningslinjer](Texture_Guidelines).

## Design

{% capture real_plam_tree -%}

Ægte palmetræ

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Meget toonagtig palmetræmodel

{%- endcapture -%}

{%- capture realistic -%}

Realistisk men simplificeret model

{%- endcapture -%}

SuperTuxKart-objekter bør have realistisk størrelse, karakter og generel form. Objekter skal dog ikke være så detaljerede som i 'real life'. F.eks. et palmetræ:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

De kan se, den nye palmetræmodel passer bedre med formen på et ægte palmetræ. Dog er den ikke så detaljeret, at den ser ægte ud. Kort sagt <u>bevares realismen generelt, men der bevares også et generelt toon-agtigt udseende ved at undgå yderst detaljeret form eller tekstur.</u>

F.eks. hvis du skal skabe en betonbarriere, så ved alle, hvordan det ser ud. Du ser dem sandsynligvis hver dag, når du tager på arbejde. Så du åbner Blender og gør lidt som her:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Problemet er, at du mangler mange detaljer, og objektet er oversimplificeret. Det ser meget billigt ud, og hvis du laver alle objekter sådan, bliver slutresultatet ikke så godt, som det kunne blive. Løsningen er simpelthen at samle billeder, tegninger, idéer osv., som vil hjælpd ig gennem processen med at skabe objektet. Ja. Det er lidt som at snyde. Men det er anbefalet og tilladt. Målet er at have den rette inspiration. Med et billede som [det her](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG) kan du se alle detaljer og genskabe dem i dit objekt.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Kan du se den store forskel? Barrieren er interessant at se på. Der er masser af detaljer som kablerne foroven til at løfte dem, advarselsstriben på bunden osv. Det er ikke fotorealistisk, men nu har vi i det mindste et objekt med interessante detaljer, der kunne være en 'real life'-barriere. (Og målet er i øvrigt ikke at være komplet realistiske. Bare 'for det meste' realistiske.)

## Regler

* Alle modeller **SKAL** være børnevenlige. SuperTuxKart vil overholde ESRB "Alle" [ratingen](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Modeller skal kunne se godt ud alene og i grupper.
* Høj-poly-modeller bør anvende [Detaljeringsgrad](Level_of_Detail).
* Medmindre din model er uadskillelig fra din bane, bør objekter kunne anvendes i mange forskellige miljøer, så de kan blive til biblioteksknudepunkter.
    * Undgå at tilføje jor eller beplantning rundt om dine objekter (medmindre dine objekter er en slags beplantning).
    * Folk bør generelt bære almindeligt tøj. Undtagen de tilfælde, hvor det ikke giver mening. Som på stranden.

## Polyantal

Polyantal er antallet af overflader eller ydersider, som 3D-objekter har. Ældrew versionaf af Blender understøtter kun objekter bestående af 'quads' (firkanter lavet ud fra fire punkter) og 'tris' (trekanter lavet ud fra tre punkter). 'Poly' blev generelt anset for at betyde antal 'quads'. I dag understøtter Blender n-goner eller polygoner lavet ud fra et ubegrænset antal punkter, og returnerer antal overflader og 'tris'. Da antal 'tris' altid kan anses for at være det samme (en trekant får aldrig flere hjørner!), er det mere præcist at tælle 'tris' end 'poly'. Derfor refererer retningslinjerne til antal 'tris'.

### Lidt historie

I gamle dage var det umuligt at beregne perfekt lys til alle pixels. Alle intense beregninger blev udført for hver 'poly' og derefter interpoleret til indvendige pixels.

Nutildags anvender moderne spilmotorer per-pixel belysning. Derfor er det ikke længere toppunktsskygge, der er den mest komplekse del men derimod pixelskygge. Lad os tage et eksempel på et objekt, der har ~500 polygoner. GPU'en håndterer toppunktet med måske ~10 instruktioner (ikke præcise tal, men det kan give en idé om tallet). For hver 'poly' i din model vil computeren udføre ~10 instruktioner. Så 500 x 10 = 5000 instruktioner alle maskerne.

Nu til pixeldelen. Det afhænger af, hvor mange pixels, objektet fylder. Men lad os gå+ ud fra et værdste falds eksempel. Lad os antage hele skærmen er fyldt med dit objekt. For at beregne hver pixel (lyset, gløden, normalbaggrund osv.) vil det tage ~50 instruktioner for GPU'en.

Hvis du har en opløsning på 800 x 600 (normalt er opløsningen højere), 800 x 600 x 50 = 24000000 instruktioner. Så selvom du fordobler antal overflader, påvirker det ikke forbruget af instruktioner. Det kalkuleres per pixel. Ikke pr. overflade nu.

Derfor kan vi forøge antal 'poly' uden det store besvær. Dog er det vigtigt stadig at holde antallet under kontrol.

### Måling af antal 'poly'

Blender viser antal 'poly' på statuslinjen. Se skærmbilledet herunder for at slå det til, hvis **Scenestatistik** ikke er hakket af, ved at højreklikke på statuslinjen:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Se efter antal **Tris**. Det er informationen, du behøver. Husk også at antal  'tris' i hele scenen kun vises i objekt-tilstand.

### Antal 'poly' eksempler

* Et fragtfly: ~4000 tris
* Et palmetræ med detaljeringsgrad
    * Høj: 843 tris
    * Middel: 465 tris
    * Lav: 42 tris
* En grundlæggende plante: 32 tris
* Et middelstort træ: 1380 tris
* Et græskar: 470 tris

### Markering af objekter som høj-poly

Det er muligt at markere, at objekter kræver en mere kraftig computer. For at gøre det: Åbn en STK scene i Blender, vælg objektet du ønsker at markere og hak af i **Enable geometry visibility details** boksen i **SuperTuxKart Object Properties**-panelet. Du kan derefter sætte **Visibility** til en af de tilgængelige valgmuligheder for at vælge minimalt grafisk effektniveau, hvor objektet er synligt.

## Skalering

Objekter skal have de rette proportioner, så de ikke ser sære ud i spillet.

* Et palmetræ er ca. 27 Blender-enheder højt.
* Træbygningerne i 'Northern Resort' er ca. 8 Blender-enheder høje.
* Lampone-flagene i Candela City er 10 Blender-enheder høje.
