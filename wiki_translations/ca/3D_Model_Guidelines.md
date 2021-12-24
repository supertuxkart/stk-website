---
title: Directrius sobre models en 3D
toc: true
---
És important que el SuperTuxKart tingui un estil d'objectes consistent a tot arreu. En certa manera, aquesta pàgina és anàloga a la de [directrius sobre textures](Texture_Guidelines).

## Estil

{% capture real_plam_tree -%}

Palmera real

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Model de plamera molt de dibuixos animats

{%- endcapture -%}

{%- capture realistic -%}

Model realista però simplificat

{%- endcapture -%}

Els objectes en el SuperTuxKart haurien de ser realistes en mida i forma general. Tanmateix, els objectes no haurien de ser tan detallats com en el món real. Agafem una palmera, per exemple:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Com podeu veure, el nou model de la palmera té una forma molt més semblant a la d'una palmera real. Però no és tan detallat com per que sembli real. En resum, <u>mantingueu el realisme en la forma general, però retingueu també una certa aprença de dibuixos animats evitant un detall excessiu en la forma o les textures.</u>

Per exemple, si us demanessin de crear una barrera de formigó, tothom sap quina pinta té una barrera de formigó (probablement les veieu cada dia quan aneu a treballar). Així que obriu el Blender i feu una cosa com aquesta:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

El problema és que us falten molts detalls i esteu simplificant l'objecte excessivament. Sembla molt poc treballat, i si feu tots els vostres objectes així el resultat final no serà tan bo com podria arribar a ser. La solució és simplement recopilar imatges, dibuixos, idees, etc. que us ajudaran durant el procés de crear l'objecte. Sí, és una mica com fer trampa, però és recomanable i està permès. L'objectiu és tenir la inspiració adequada. Amb una imatge com  [aquesta](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), podeu veure tots els detalls i reproduir-los per al vostre objecte.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Noteu la gran diferència? La barrera és interessant de veure, hi ha molts detalls com ara els ganxos superiors per carregar-les, les franjes d'advertència inferiors, etc. No és fotorealista però com a mínim tenim un objecte amb detalls interessants que pdoria ser una barrera del món real (i, a més, l'objectiu no és ser totalment realista, només més realista).

## Normes

* Tots els models **cal** que siguin aptes per a nens. SuperTuxKart hauria de complir la tipificació "Everyone" (per a tothom) de la [classificació ESRB](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Els models han de ser capaços de veure's bé tant sols com en grup.
* Els models amb molts polígons haurien de fer servir el [Nivell de detall](Level_of_Detail).
* A no ser que el teu model sigui inseparable del teu circuit, els objectes haurien de ser usables en molts entorns diferents, de manera que es puguin convertir en "library nodes".
    * Evita afegir terra o vegetació al voltant dels teus objectes (a no ser que el teu objecte sigui algun tipus de vegetació en sí mateix).
    * Normalment, la gent hauria de portar roba de propòsit general, excepte en casos on no tingui sentit, com ara una platja.

## Nombre de polígons

El nombre de polígons (polycount) és el nombre de superfícies, o cares, que tenen els objectes 3D. Les versions antigues del Blender només suportaven objectes fets de "quads" (quadrilàters — polígons fets de quatre punts) i "tris" (triangles — polígons fets de tres punts). Polígons s'entenia que volia dir quadrilàters. Però ara el Blender suporta n-gons, o polígons amb un nombre il·limitat de punts, i només reporta el nombre de superfícies i de triangles. D'aquesta manera, com que el nombre de triangles sempre es pot confiar en que romandrà inalterat (un triangle mai pot tenir més punts!), és més precís comptar tris en comptes de polígons. Per tant, aquestes directrius es refereixen als tris.

### Una mica d'història

En els vells temps dels videojocs era impossible calcular la il·luminació perfecta per a tots els píxels. Tots els càlculs intensius es feien per a cada polígon i després s'interpolaven als pixels dins del polígon.

Però avui en dia els motors moderns fan servir il·luminació per píxel. Per tant, la part més complexa no és el vèrtex shader sinó el píxel shader. Agafem un exemple d'un objecte que té ~500 polígons. Per a la GPU, gestionar un vèrtex són potser ~10 instruccions (no és un nombre exacte, només és per fer-nos una idea). Per a cada polígon del nostre model l'ordinador ha d'executar ~10 instruccions, o sigui que 500 × 10 = 5000 instruccions per a tota la malla.

Ara, la part corresponent als píxels. Depèn de quants píxels faci servir el vostre objecte, però posem el pitjor cas, assumim que tota l'escena està ocupada pel vostre objecte. Per a cada píxel a computar (la llum, la brillantor, el mapa normal, etc) faran falta ~50 instruccions de GPU.

Si teniu una resolució de 800 × 600 (la majoria de la gent té una resolució més alta), 800 × 600 × 50 = 24000000 instruccions. O sigui, que fins i tot doblant el nombre de superfícies no afectaria gaire a la major part de l'energia gastada. Ara es calcula per píxels, no per superfícies.

Per tant, podem incrementar el nombre de polígons sense gaires problemes. Tanmateix, és important mantenir-ho sota control.

### Mesurant el nombre de polígons

El Blender mostra el nombre de polígons a la barra d'estat, mira la captura de pantalla inferior per activar-ho si **Scene Statistics** no està marcat fent clic amb el botó dret sobre la barra d'estat.

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Busqueu el nombre de **Tris**. Aquesta és la informació que necessiteu. A més, recordeu que el nombre de tris a tota l'escena només es mostra en el mode d'objecte.

### Exemples de nombre de polígons

* Un avió de càrrega: ~4000 tris
* Una palemra amb nivell de detall
    * Alt: 1400 tris
    * Mig: 1400 tris
    * Baix: 42 tris
* Una planta bàsica: 32 tris
* Un arbre de mida mitjana: 1380 tris
* Una carbassa: 470 tris

### Marcant objectes amb molts polígons

És possible marcar objectes de manera que requereixin un ordinador més potent. Per fer-ho, obriu qualsevol escena del STK fent servir el Blender, seleccioneu l'objecte que voleu marcar i activeu l'opció **Activar els detalls de la visibilitat geomètrica** al panell **Propietats de l'objecte de SuperTuxKart**. Aleshores podreu configurar la **Visibilitat** amb qualsevol de les opcions disponibles per decidir el nivell d'efectes gràfics mínim a partir del qual el vostre objecte serà visible.

## Escalant

Els objectes han de tenir les proporcions correctes per tal de que es vegin bé en el joc.

* Una palmera té una alçada d'unes 27 unitats de Blender.
* Els edificis de fusta del Resort Nòrdic tenen una alçada aproximada de 8 unitats de Blender.
* Les banderes de Lampone a Candela City tenen una alçada de 10 unitats de Blender.
