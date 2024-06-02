---
title: 'Faire des Pistes: Ciel et éclairage'
toc: true
---
Le ciel et l'éclairage peuvent ne pas sembler être des éléments très importants ou prendre beaucoup de temps dans la création d'une piste, mais ce n'est pas parce que c'est l'une des dernières sections, <u>ne vous laissez pas aller</u>. L'éclairage est probablement l'étape la plus importante pour définir le thème ou l'ambiance de votre piste - plus que les décorations. Les décorations doivent compléter l'ambiance, mais même la façon dont elles le font est grandement influencée par l'éclairage. Comparez Cocoa Temple avec sa version nocturne, Carnival del Cacao.

{% gallery widths=48%
/assets/wiki/STK0.9_2.jpg
/assets/wiki/STK0.9.1_3.jpg
%}

Le ciel nocturne du Carnaval del Cacao est contrasté par la lumière colorée des feux d'artifice et la lumière plus visible des torches, ce qui crée une atmosphère plus festive. En comparaison, le temple du cacao semble tout à fait ordinaire et courant.

## Ciel

Le ciel complète l'éclairage en créant une ambiance (et en fait, il affecte directement l'éclairage si une carte de lumière ambiante est utilisée). Une piste sombre doit avoir un ciel sombre, et une piste claire doit avoir un ciel clair. Le ciel est configuré dans le panneau des propriétés de la scène de SuperTuxKart. Sélectionnez un type dans le menu déroulant " Type de ciel ". Chaque type est détaillé ci-dessous.

### Boîte

Pour des raisons de performance et d'éclairage, SuperTuxKart utilise une *boîte à ciel* pour les ciels texturés, ce qui signifie que la piste existe essentiellement à l'intérieur d'un cube texturé. ( Les dômes de ciel ne sont plus une option.) Chacune des textures (vous pouvez en utiliser une différente pour chaque côté) doit être une image de 1024 × 1024, de préférence au format JPEG.

Bien que de conception simple, les boîtes à ciel ne sont pas toujours faciles à créer. Les textures doivent s'emboîter correctement, sinon les coins de la boîte à ciel seront facilement visibles. N'essayez pas de rendre la boîte à ciel trop détaillée et **n'utilisez pas de photographies**, sinon vous aurez des problèmes avec les bords visibles. Les mêmes règles pour les [Directives pour les textures](Texture_Guidelines) s'appliquent aux textures de la boîte à ciel.

Ne vous inquiétez pas trop si les bords sont visibles. Tant que votre piste est suffisamment intéressante, les joueurs ne seront pas gênés par un bord légèrement visible, comme c'est le cas en haut au centre de cette image:

{% gallery widths=48%
/assets/wiki/STK0.9_1.jpg
%}

Une autre façon d'éviter les lignes visibles dans une boîte à ciel est de les cacher avec de la végétation et des formations terrestres. La boîte à ciel du temple de Cocoa est à peine visible, mais la végétation qui la précède n'a pas l'air étrange, car la texture de la boîte à ciel elle-même représente de la végétation:

{% gallery heights=300px
/assets/wiki/Skybox_aa.jpg,Skybox texture
/assets/wiki/STK0.9_2.jpg,In-game
%}

### Plain Color

Le ciel sera d'une seule couleur unie, définie par la propriété "Sky color". Cela peut être utile pour les pistes intérieures, mais n'est pas recommandé.

### Aucun

Le ciel apparaît en gris pâle, mais il n'y a pas de ciel du tout. Il s'agit simplement de la couleur d'arrière-plan OpenGL standard, tout comme l'arrière-plan dans Blender.

## Soleil

### Soleil (éclairage et ombres)

Ce type de soleil ne sera pas visible dans le jeu, mais il produira tout de même de la lumière et sera utilisé pour calculer les ombres. Pour créer un soleil pour l'éclairage, ajoutez un soleil Blender et définissez-le comme "Soleil" dans le panneau des propriétés d'objet de SuperTuxKart. Cela vous permet de configurer trois autres propriétés :

* **Ambient color:** C'est la couleur de la lumière qui sera partout dans la piste, même si le soleil est caché par un objet. Elle doit être plus foncée (~120 120 120) que les couleurs diffuse et spéculaire. La couleur ambiante joue également un rôle important dans la définition de l'atmosphère de la piste. Par exemple, une piste sous-marine devrait avoir une couleur ambiante bleu verdâtre.
* **Diffuse color:** Il s'agit de la couleur de la lumière qui se reflète sur les surfaces bosselées ou ondulées. Elle doit être plus claire que la couleur ambiante, mais légèrement plus foncée que la couleur spéculaire.
* **Specular color:** C'est la couleur de la lumière qui se reflète sur les surfaces lisses. C'est la couleur la plus claire, car la lumière se déplace dans une seule direction et n'est pas dispersée par la diffusion.

{%popup_info Les ombres ne fonctionnent pas bien lorsque ce type de soleil est placé près de l'horizon. Cependant, vous pouvez placer un soleil visible près de l'horizon, et les joueurs ne remarqueront généralement pas que les ombres ne sont pas alignées avec la position du soleil. (Voir ci-dessous)%}

### Soleil (Visible)

Ce type de soleil crée un effet semblable à celui du soleil dans la vie réelle - un cercle lumineux dans le ciel. (Il crée également des reflets anamorphiques). Créez un soleil Blender et réglez son type sur "Light Shaft" dans le panneau des propriétés de l'objet SuperTuxKart. Cela crée deux propriétés:

* **Strength (opacity):** C'est le niveau de luminosité du soleil.
* **Couleur:** C'est la couleur du soleil. Cependant, la coloration est quelque peu subtile et le soleil lui-même n'aura pas exactement cette couleur. Vous devrez expérimenter pour voir ce qui vous convient le mieux.

{%popup_info Malgré son nom, le puits de lumière n'est pas une véritable lumière volumétrique. Les "puits de lumière" ne conviennent pas pour créer des faisceaux lumineux en provenance d'un phare par exemple.%}

Comme indiqué ci-dessus, vous pouvez placer les soleils visibles près de l'horizon, mais placer le soleil normal plus haut dans le ciel pour que les ombres fonctionnent correctement.

{% gallery widths=48%
/assets/wiki/Sun_blender.jpg,"In Blender (Sun casting shadows in green, visible sun in blue)"
/assets/wiki/Sun_godray.jpg,In SuperTuxKart
%}

## Les Ombres

Grâce au support des ombres dynamiques ajouté dans SuperTuxKart 0.9, la plupart des objets (si ce n'est tous) projetteront une ombre et les objets utilisant l'animation ou le shader de végétation projetteront des ombres animées! Il suffit de cocher la case "Dynamic shadows"(ombres dynamiques) sous "Graphical Effects"(effets graphiques) dans le panneau "SuperTuxKart Scene Properties".

{% gallery widths=48%
/assets/wiki/STK_dynamicshadows.jpg
%}

## {% include_relative _Point_Lights.md %}
## Carte de la lumière ambiante(Ambient Light Map)

Les cartes de lumière ambiante, également connues sous le nom d'éclairage basé sur l'image ou éclairage par harmoniques sphériques, peuvent être utilisées en conjonction avec la couleur du soleil pour affecter l'éclairage d'une piste en simulant la lumière qui rebondit sur l'image. Une carte de lumière ambiante, cependant, contrairement au changement de la couleur du soleil, permet de varier l'éclairage de la scène.

Vous pouvez configurer une carte de lumière ambiante pour votre piste en activant " Ambient light map " sous " Graphical Effects " dans le panneau des propriétés de scène de SuperTuxKart. Cela vous permet de définir une carte de lumière ambiante pour chaque côté du cube invisible qui sera utilisé pour éclairer la scène.

Souvent, une texture de carte de lumière ambiante est simplement une version floue et réduite de la texture de boîte à ciel correspondante. Pour des raisons de performances, les textures de la carte de lumière ambiante ne doivent pas dépasser une taille de 256 × 256 pixels.

## Nuages

Vous pouvez ajouter des nuages en utilisant des maillages. Cependant, assurez-vous que la distance de la caméra définie dans le panneau des propriétés de la scène de SuperTuxKart est suffisamment élevée. Vous devez également définir leur interaction en tant que fantôme, soit par texture, soit par objet (voir [Physique](Physics)). L'animation de la texture augmentera également le réalisme.

## Météo

La météo est un excellent moyen de manipuler l'ambiance d'une piste. Pour activer la météo, sélectionnez le type de météo sous " Weather " dans le panneau des propriétés de la scène de SuperTuxKart (pour l'instant, seules la pluie et la neige sont prises en charge). Vous pouvez également cocher la case "Lightning" pour activer les éclairs, et vous pouvez définir le nom d'un fichier son (format .ogg) à jouer dans la case "Weather sound".

## Brouillard et lumière volumétrique

Lorsque le brouillard est activé, il est possible d'avoir des lumières volumétriques. Cela crée un effet de halo, où la lumière se reflète sur le brouillard. Tout d'abord, activez le brouillard en cochant la case "Fog" sous "Graphical Effects" dans le panneau des propriétés de scène de SuperTuxKart. Cela crée quatre options supplémentaires:

* **Fog Color:** La couleur du brouillard. La couleur doit généralement dépendre de l'éclairage de votre piste - les pistes sombres doivent avoir un brouillard sombre.
* **Fog Start:** Il s'agit de la distance par rapport à la caméra à laquelle le brouillard commence à cacher les objets.
* **Fog End:** Il s'agit de la distance à laquelle les objets ne sont plus visibles à travers le brouillard.
* **Fog Max:** Il s'agit de la densité maximale que le brouillard peut atteindre. Cela permet d'éviter que le brouillard ne soit plus épais alors que les objets sont de plus en plus éloignés.

### {% include_relative _Volumetric_Lights.md %}
{% include art_portal %}
