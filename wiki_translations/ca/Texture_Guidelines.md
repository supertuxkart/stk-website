---
title: Directrius sobre textures
toc: true
---
Tenir bones textures és potser una de les coses més importants quan es crea art en 3D. Fins i tot un objecte exquisidament modelat pot semblar horrible amb males textures, així que és important que les textures que feu i utilitzeu segueixin aquestes directrius.

## Estil

Les textures del SuperTuxKart són dibuixades a mà o pintades, no simplement fotos (normalment, tot i que es poden servir fotos com a referència). Òbviament, això no significa que calgui fer servir pintura real, es poden utilitzar programes de pintura digital com ara el Krita. Altres aplicacions també estan llistades a la pàgina [Instal·lant les eines](Installing_Tools).

A més, les textures no solament són completament falses, amb aparença de dibuixos animats. Podeu afegir tots els detalls que vulgueu, sempre que els pinteu a mà (excepte sota les circumstàncies explicades a sota). Per a més informació sobre com pintar textures, veieu [la documentació més recent del Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Quan fer servir fotos

En certes circumstàncies, pintar una textura a mà no aporta res. Quan pintar a mà una textura detallada consumeix massa temps, com ara vegetació, pot ser més conveneint fer servir una foto real, sempre que la foto sigui prou genèrica i no crei un patró lleig de mosaic. Agafeu com a exemple la textura d'aquí sota:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Aquest cas és un exemple interessant, perquè aquesta textura inclou característiques bones i dolentes. La fulla de la palmera és una bona textura (nota: la transparència es fa amb una màscara alfa en aquesta textura) per la seva il·luminació uniforme, la falta d'altres detalls, i la seva naturalesa genèrica. A més, no es fa servir en un lloc on estaria subjecta als problemes de mosaic mencionats més amunt. La textura del tronc de l'arbre de la dreta, en canvi, no és tan bona degut a la seva il·luminació no uniforme. Aplicar aquesta textura a un tronc d'arbre provocaria una sèrie de bandes clares i fosques, un defecte molt evident. El fet de que la textura del tronc es pugui fer servir en un objecte sòlid també la fa poc adequada degut al potencial de més defectes de mosaic.

En general, les fotos no s'haurien de fer servir per a les textures d'objectes propers al jugador, ja que els seus detalls seran més visibles i serà obvi que només es tracta d'una fotografia.

## Llum i color

Les textures del SuperTuxKart són colorides i amb contrast, però no han de col·lisionar. Textures extremadament brillants, o amb colors de neó/plàstic/caramel no s'acceptaran en el repositori principal a no ser que només es facin servir en una àrea molt petita, com ara el cartell d'inici a XR591. La mateixa regla és aplicable a textures que només tenen un color. Les textures totalment blanques o totalment negres tampoc és recomanen, ja que es perd informació de color amb blanc o negre al 100%

Les textures s'haurien de dibuixar com si el color ambiental i la llum del dibuix fossin neutrals. El motor del SuperTuxKart canviarà automàticament el balanç de colors i la brillantor basant-se en la il·luminació de l'escena i la coloració dels vèrtexs.

## Patrons

La textura no hauria de tenir un patró immediatament visible. Els patrons obvis fan que el kart o el circuit tinguin una aparença ridícula. Aquí hi ha un exemple del que **no** s'ha de fer:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Un altre problema apareix, però, amb les textures que no tenen cap mena de patró. Aquest és un motiu de pes per evitar fer servir fotos com a textures:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Fixeu-vos que fer textures amb Blender crea un patró lleig de mosaic, tot i que la textura en sí mateixa no tingui patró. Eliminant part del detall, però, i suavitzant les vores, podeu obtenir un resultat molt millor, encara que no perfecte.

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalls de la textura

Procureu evitar crear textures amb detalls que no formarien part del material a la vida real. Per exemple, si voleu una corda penjada en una paret, però no voleu fer servir una malla, no creeu una textura nova només per afegir una corda a sobre de la textura de fusta. El SuperTuxKart inclou un decal shader, que permet simplement posar una textura de corda a la segona capa UV i fer que aparegui a sobre de la textura de fusta, sense convertir la textura de fusta en inusable per a altres aplicacions. Per a més informació, aneu a [aquí](Texturing#Decals).

## Restriccions tècniques
* Les dimensions de les imatges haurien de ser potències de dos. Una textura genèrica de mida estàndard, per exemple, és de 1024 × 1024, o 2<sup>10</sup> × 2<sup>10</sup>. Tanmateix, les textures no tenen per què ser quadrades, es podria tenir una textura de 1024 × 512, o 2<sup>10</sup> × 2<sup>9</sup>.
* No feu servir textures grans per a objectes petits, això malbarata memòria de vídeo.
* Els fitxers de textura **han** d'estar situats a la mateixa carpeta que el vostre objecte exportat.
* Les textures haurien d'estar en format PNG quan
    * La textura es farà servir en un objecte proper que requereixi molt detall
    * L'objecte conté parts transparents o parcialment transparents
* Les textures haurien d'estar en format JPEG per
    * Objectes llunyans
    * Textures del cel (a vegades)
    * Mapes de llum ambiental
