---
title: Directives pour les modèles 3D
toc: true
---
Il est important que SuperTuxKart conserve un style cohérent pour l'ensemble des objets. En grande partie, cette page est comparable aux [Directives pour les textures](Texture_Guidelines).

## Style

{% capture real_plam_tree -%}

Palmier réel

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Modèle de palmier type cartoon

{%- endcapture -%}

{%- capture realistic -%}

Modèle simplifié, mais réaliste

{%- endcapture -%}

Les Objets dans SuperTuxKart doivent être réaliste du point de vue de la taille et de la forme générale. Cependant ils ne doivent pas être détaillés de manière à paraitre réels. Voici un exemple sur la base d'un palmier.

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Vous pouvez remarquer que le dernier modèle est bien plus proche d'un palmier au niveau de la forme. En revanche il n'est pas non plus détaillé au point de paraître réel. En bref, <u>conservez le réalisme dans les formes générales, mais gardez à l'esprit que les objets doivent conserver un look cartoon en évitant des détails ou des textures trop poussé(e)s</u>.

Par exemple, si vous deviez dessiner une barrière en béton, tout le monde sais à quoi ça ressemble — vous en voyez probablement tous les jours en allant au travail. Dans Blender, vous pourriez faire quelque chose comme ça :

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Le souci est que vous ratez là beaucoup de détails, l'objet est trop simplifié. Il est trop basique et si vous faites tous vos objets comme ça, le résultat final ne sera pas aussi bon qu'on pourrait l'espérer. La solution est simplement de s'inspirer de photos, dessins, idées, etc. Ça vous aidera dans le processus de création d'objets. Oui, c'est un peu de la triche mais c'est autorisé et même recommandé. Le but est de trouver la bonne inspiration. Ave un dessin comme [celui-ci](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), vous pouvez voir tous les détails et tenter de le recopier pour votre modèle.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Vous voyez la différence ? La barrière est intéressante, il y a beaucoup de détails comme les anneaux de levage sur le dessus et les bande signalétiques en bas. Ce n'est pas photoréaliste mais maintenant au moins, nous avons un objet avec des détails intéressants qui rappellent au premier coup d'œil une barrière réelle (tout en conservant un aspect cartoon).

## Règles

* Tous les modèles **DOIVENT** être destinés aux enfants. SuperTuxKart se conforme à la [norme ESRB](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings) "Everyone" (pour tous). 
* Les modèles doivent avoir un bel aspect aussi bien seuls que dans un groupe.
* Les modèles avec de nombreux polygones doivent se conformer à [Niveaux de détails](Level_of_Detail).
* Hormis si vote modèle est inséparable de la piste qui l'utilise, les objet devraient rester utilisables dans différents environnements, pour cela il devraient être disponibles comme objets de bibliothèque.
    * Évitez de mettre un sol ou de la végétation autour de votre objet (sauf si votre objet est de la végétation lui-même).
    * Les personnages doivent porter des vêtements classiques, sauf si leur costume apporte du sens, comme par exemple à la plage.

## Nombre de polygones

Le nombre de polygones est le nombre de surfaces, ou de faces qu'ont les objets 3D. Les anciennes version de Blender ne supportaient que les objets faits de quadrilatères et de triangles. Le terme "poly" désignait généralement le nombre de "quads" ou quadrilatères. Maintenant, Blender accepte les n-gones, ou polygones avec un nombre illimité de points, et ne donne que le nombre de surfaces et de triangles. Ainsi, puisque le nombre de "tris" ou triangles peut toujours désigner la même chose (un triangle n'aura toujours que trois points) il est plus précis de compter les "tris" que les "poly". Ces directives se réfèrent donc plutôt aux "tris".

### Un peu d'histoire

Dans les débuts des jeux vidéo 3D, il était impossible d'obtenir des éclairages idéaux pour chaque pixel. Le gros des calculs était réalisé pour chaque polygone puis interpolé pour les pixels à l'intérieur des polygones.

Aujourd'hui, les moteurs de rendu modernes utilisent une lumière par pixel. Ainsi, la partie complexe ne réside pas dans les rendus de vertex mais dans les rendus de pixel. Prenons l'exemple d'un objet d'environ 500 polygones. Pour le moteur graphique, gérer un vertex représente peut-être une dizaine d'instructions (ce n'est pas le nombre exact, juste une estimation). Pour chaque polygone de votre modèle, l'ordinateur génèrera une dizaine d'instructions, soit 500 x 10 = 5000 instructions pour le modèle complet.

Maintenant côté pixel. Cela dépend du nombre de pixels qui seront utilisés par votre objet, mais en imaginant le pire scenario — disons que l'objet apparait en plein écran. Pour chaque pixel (lumière, reflets, direction de la lumière, etc) il demandera une cinquantaine d'instructions au moteur graphique.

Pour une résolution de 800 x 600 (sachant que beaucoup de personne utilisent une résolution bien supérieure aujourd'hui), 800 x 600 x 50 = 24000000 instructions. Si vous doublez le nombre de surfaces, vous n'affecterez presque pas la puissance utilisée. C'est calculé par rapport au nombre de pixels et pas au nombre de surfaces.

Ainsi, nous pouvons augmenter significativement le nombre de polygones sans trop de problème. Cependant, il est important de garder un certain contrôle sur ce qu'on fait et de ne pas arriver dans des maillages démesurés.

### Compter les polygones

Blender montre le nombre de polygones, "polycount", dans la barre de statut, regardez la copie d'écran ci-dessous pour l'activer si **Scene Statistics** n'est pas déjà coché en cliquant avec le bouton droit sur la barre de statut :

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Regardez le nombre de **Tris**. C'est cette information dont vous avez besoin. Aussi, souvenez-vous que le nombre de "tris" de la scène complète n'est disponible qu'en mode objet.

### Exemples de nombre de polygones

* Un avion cargo : ~4000 tris
* Un palmier avec différents niveaux de détails
    * Haut: 1400 tris
    * Moyen: 1400 tris
    * Faible: 42 tris
* Une plante simple : 32 tris
* Un arbre de taille moyenne : 1380 tris
* Une citrouille : 470 tris

### Marquer des objets comme étant très détaillés

Il est possible d'annoter des objets comme nécessitant un ordinateur plus puissant. Pour cela, ouvrez une scène de STK sous Blender, choisissez l'objet que vous voulez marquer et cochez la case **Enable geometry visibility details** dans le panneau **SuperTuxKart Object Properties**. Vous pourrez alors modifier la visibilité de l'objet dans *Visibility** pour chaque option et choisir les réglages graphiques minimaux pour que l'objet apparaisse.

## Mise à l'échelle

Les objets doivent avoir une échelle correcte pour ne pas paraître bizarrement dans le jeu.

* Un palmier mesure environ 27 unités Blender de haut.
* Les maisons en bois dans la Station Nordique font environ 8 unités Blender de haut.
* Les drapeaux Lampone de Candela City font environ 10 unités Blender.
