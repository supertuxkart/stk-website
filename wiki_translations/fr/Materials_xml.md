---
title: Materiels xml
toc: true
---
Cette page décrit le format du fichier materials.xml, qui peut être utilisé dans SuperTuxkart pour définir des effets spéciaux pour certaines textures. Les effets peuvent être graphiques, physiques (par exemple, définir un ralentissement qui s'applique lorsque vous conduisez sur ce type de textures), ou un effet sonore spécial (par exemple, un son à jouer lorsque le kart roule sur ce terrain en particulier).

## Format et emplacement du fichier

Le fichier materials.xml est un simple fichier xml qui contient une entrée pour chaque texture. Notez que les valeurs par défaut s'appliquent, donc à moins que vous ne souhaitiez un effet spécial, il n'est pas nécessaire de créer un fichier materials.xml pour inclure toutes vos textures. Le fichier materials.xml peut être placé dans un répertoire de piste ou de kart, et il remplacera les paramètres par défaut utilisés dans STK: par exemple, le sable provoque généralement un certain ralentissement. Mais sur la piste Shifting Sand, les paramètres physiques peuvent être modifiés, de sorte qu'il n'y ait pas de ralentissement sur le sable dans cette piste uniquement.

{%popup_code
xml
<?xml version="1.0"?>
<materials>
<material name="bush.png" shader="solid"/>
    <material name="bush2.png" shader="addictive"/>
    <material name="wood_planks1_alpha.png" shader="alphablend">
        <sfx filename="wooden_bridge.ogg" rolloff="0.6" volume="1.0" min-speed="9" max-speed="22" min-pitch="1.0" max-pitch="1.7" positional="y"/>
    </material>
</materials>%}

Voici un exemple simple d'un fichier materials.xml contenant trois textures, dont l'une contient un effet sonore spécifique au terrain à utiliser lorsqu'un kart roule sur ce terrain. Une liste de tous les attributs possibles est présentée dans la section suivante.

## Attributs

Les attributs suivants peuvent être utilisés (les valeurs par défaut sont en gras)

* shader=**solid**/normalmap/decal/grass/unlit/alphablend/alphatest/addictive/displace
    * Shader à utiliser
* max-speed=**1.0**
    * Pourcentage de la vitesse maximale du kart qu'un kart peut avoir sur ce terrain. Si le kart est plus rapide, il sera ralenti progressivement (voir le temps de ralentissement ci-dessous).
* slowdown-time=**1.0**
    * Temps nécessaire pour qu'un kart soit ralenti jusqu'à la vitesse spécifiée dans la propriété max-speed. Une valeur faible donnera l'impression d'un freinage brutal, une valeur plus élevée d'un ralentissement progressif causé par le terrain. Dans la version 0.7, nous utilisons des valeurs comprises entre 0,5 et 4 secondes.
* ignore=Y/**N**
    * L'objet avec cette texture n'interagit pas avec le joueur. Elle doit être utilisée, par exemple, pour les objets qui se trouvent au-dessus de la piste, car sinon il y aura une légère bosse sur la piste.
* surface=Y/**N**
    * Un maillage marqué comme étant une surface n'a pas de représentation physique - ce qui signifie que les karts l'ignoreront (passeront à travers), mais les graphiques seront toujours affichés. Mais contrairement à "ignorer", STK peut détecter ce type de terrain et déclencher des effets graphiques spéciaux. Un exemple d'utilisation est une surface d'eau, où le kart peut soit passer à travers une surface située sous l'eau (le kart est donc partiellement sous l'eau), soit être sauvé (soit par l'absence de surface sous la surface de l'eau, soit par une surface avec une propriété de réinitialisation). La surface sera dans ce cas détectée (une fois que les roues du kart sont sous cette surface), et peut déclencher des effets spéciaux(gfx).
* below-surface=Y/**N**
    * Si un matériau est marqué comme étant sous une surface, un effet graphique spécial peut être déclenché à la surface réelle. Un exemple serait un étang dans lequel des karts pourraient rouler. L'eau est marquée comme "surface" et le maillage sur lequel le kart roule possède la propriété "below-surface" (en dessous de la surface). La texture de l'eau peut alors contenir des effets de particules pour les éclaboussures d'eau, et ces éclaboussures émergeront de la surface (et non du dessous de la surface).
* falling-effect=Y/**N**
    * Si la caméra roule (ou tombe) sur un terrain avec un effet de chute, la caméra ne bougera plus mais continuera à pointer vers le kart, ce qui donnera un bel effet visuel de chute rapide du kart. Peut également être utilisé pour un "fond marin" sous une surface d'eau.
* friction="20000.0" (ou toute autre valeur)
    * Lorsque le facteur de friction est plus élevé, le matériau est moins "glissant". Notez que cela ne s'applique qu'aux matériaux avec de grandes pentes, car les matériaux droits ont toujours une bonne adhérence. Valeur par défaut: 1.0
* zipper=Y/**N**
    * En roulant sur cette texture, le kart obtient un bonus de vitesse.
* reset=Y/**N**
    * Lorsque vous conduisez sur cette texture, le kart est automatiquement secouru.
* sfx
    * Lorsque vous conduisez sur ce terrain, un son spécial est émis. Cet effet sera toujours joué en boucle. Attributs supplémentaires pour les effets sonores:
        * filename
            * Le nom du fichier pour cet effet sonore. L'effet sonore sera chargé à partir du répertoire de la piste.
        * rolloff=**0.1**
            * Vitesse à laquelle le son diminue lorsque la distance augmente.
        * min-speed=**0**
            * Vitesse minimale à laquelle l'effet sonore est joué. Rien n'est joué si le kart est plus lent que cette valeur (en m/s).
        * max-speed=**30**
            * Vitesse maximale lors du réglage du pas, voir min-pitch et max-pitch ci-dessous.
        * min-pitch=**1.0**
            * Le réglage du pas à utiliser lorsque le kart roule à la vitesse minimale. Doit être compris entre 0,5 et 2,0.
        * max-pitch=**1.0**
            * Le réglage du pas à utiliser lorsque le kart roule à la vitesse maximale (telle que définie ci-dessus). Doit être compris entre 0,5 et 2,0. Le réglage du pas est interpolé linéairement pour les vitesses comprises entre la vitesse minimale et la vitesse maximale; si le kart roule à une vitesse supérieure à la vitesse maximale, c'est le pas maximal qui est utilisé.
        * positional=Y/**N**
            * Si l'effet sonore est joué à l'endroit où se trouve le kart, ou uniquement à partir de la position initiale.

### Obsolète

Utiliser la nouvelle propriété **shader** à la place

* transparency=Y/**N**
    * Utilise le test alpha : si alpha est >127, un pixel est écrit, sinon non. Voir EMT_TRANSPARENT_ALPHA_CHANNEL_REF dans irrlicht.
* alpha=Y/**N**
    * Utilise le mélange alpha, la couleur finale est mélangée à partir de la couleur de destination et la couleur de texture, en utilisant la valeur du canal alpha comme facteur de mélange. Voir EMT_TRANSPARENT_ALPHA_CHANNEL dans irrlicht.
* additive=Y/**N**
    * Utilise [additive blending](http://en.wikipedia.org/wiki/Color_mixing#Additive_Mixing)
