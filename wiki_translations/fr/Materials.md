---
title: Matériaux
toc: true
---
Les matériaux sont une méthode permettant aux textures de simuler des matières... réelles. Une texture sur une surface plane peut donner l'apparence du cuir, par exemple, mais elle ne peut pas tout donner. Quelles sont les autres propriétés du cuir ? Il est brillant, mais non réfléchissant, et légèrement bosselé. Tous ces effets et d'autres encore sont contrôlés par le matériau.

## Pour Blender 2.80 et plus récent

{%popup_info toutes informations parlent du menu (propriété d'image de Supertuxkart) sont destinée à blender <= 2.79, pour les versions 2.8 et supérieures ces options apparaîtrons lors du choix de shader dans "Propriété > Matériau > Antartica/Supertuxkart properties > display"%}

Le système de matériaux de Blender est utilisé pour configurer l'apparence des textures d'images qui peuvent apparaître sur un maillage. Contrairement aux anciennes versions, l'utilisation de ce système basé sur les nœuds est obligatoire, mais il est possible de s'affranchir des nœuds si des configurations basiques d'une seule image sont suffisantes.

Pour en savoir plus sur l'utilisation des nœuds, consulter le [manuel de Blender](https://docs.blender.org/manual/en/latest/interface/controls/nodes/).

L'ensemble des nœuds de shaders n'est actuellement pas pris en charge (ils sont simplement ignorés dans la plupart des cas) ; seuls quelques-uns sont reconnus au cours du processus d'exportation:

* Output - Material Output (Sortie - Sortie de matériel)
* Shader - Principled BSDF (shader - BSDF guidée)
* Texture - Image Texture
* Color - MixRGB (Couleur - Mélange de coleur)
* Vector - Normal Map (Vecteur - carte de normal)

Les nœuds de shaders suivants ne sont pas utilisés au cours du processus d'exportation, mais ils peuvent aider à prévisualiser l'aspect d'un matériau dans le jeu:

* Input - UV Map, Vertex Color (Entrée - Carte UV, couleur de sommet)

Pour le shader BSDF guidée, les entrées suivantes sont reconnues (les autres entrées sont ignorées):
* Base Color (couleur de base)
* Metallic (métallique)
* Specular (spéculaire)
* Roughness (rugosité)
* Emission (émission)
* Alpha
* Normal (normale)

Pour la configuration des matériaux, le panneau Antarctica/SuperTuxKart Properties contient toutes les options pertinentes. Il est situé dans la section **Propriétés > matériau**, mais pas au même endroit que la configuration normale des matériaux de Blender. Les configurations sont stockées sur la base d'un matériau, plutôt que sur la base d'une image, comme c'était le cas dans Blender <= 2.79. Si une image est utilisée dans plusieurs matériaux, une seule de ces configurations aura un effet dans le jeu. Le matériau dont le nom se termine par une lettre ultérieure dans le sens A à Z est celui dans lequel la configuration sera tirée.

Pour avoir un aperçu de l'apparence des matériaux dans le jeu, modifiez les paramètres **Ombrage de vue** pour utiliser soit le mode **Solide** avec la couleur réglée sur **Texture**, soit le mode **Prévisualisation des matériaux**. Ce dernier est préférable, car son apparence est généralement plus proche de ce qui est montré dans le jeu, à l'exception notable des couleurs de vertex et des textures d'image qui sont mélangées.

{%popup_info Plusieurs autres fonctionnalités, y compris les effets spéciaux et les propriétés physiques, s'appuient également sur le système de matériaux de SuperTuxKart. Elles se trouvent dans la section **Interaction** du panneau Antarctica/SuperTuxKart Properties, et sont abordées dans d'autres sections. Cet article ne traite que de la section **Affichage**.%}

## Pour Blender 2.63 à 2.79

Il est important de noter ici que nous ne faisons pas référence aux matériaux de Blender ou de Cycles (bien que dans Blender 2.80 et plus, ces matériaux soient utilisés pendant le processus d'exportation). Ils sont ignorés par SuperTuxKart. A la place, nous utilisons notre propre système de matériaux pour appliquer des matériaux aux textures.

{%popup_info Plusieurs autres fonctionnalités, y compris les effets spéciaux et les propriétés physiques, s'appuient également sur le système de matériaux de SuperTuxKart. Elles se trouvent dans la section **Interaction** du panneau SuperTuxKart Image Properties (qui remplace toutes les occurrences du panneau Antarctica/SuperTuxKart Properties de cette page), et sont abordées dans d'autres articles. Cet article ne traite que de la section 'Affichage'.%}

### Configuration des textures d'image

Si vous avez utilisé des textures provenant du dépôt multimédia, vous n'avez pas à vous préoccuper des matériaux. Les matériaux sont déjà configurés dans `materials.xml` dans le dossier `textures` du dépôt `stk-assets` et ne seront pas configurables dans le panneau Antarctica/SuperTuxKart Properties.

Les textures ne provenant pas du dépôt devront être configurées dans le panneau Antarctica/SuperTuxKart Properties. Il y a plusieurs options à configurer.

## Shader

Les shaders sont de petits programmes qui contrôlent la manière dont les choses sont rendues dans la scène. Ils peuvent faire toutes sortes de choses, c'est pourquoi il est important de choisir le bon. Le shader est sélectionné à l'aide du menu déroulant **Shader** dans la section 'Display' du panneau Antarctica/SuperTuxKart Properties.

### Shader générique 'solid' (PBR solid)

Ce shader est utilisé pour la plupart des textures et est l'option par défaut si aucun shader n'est explicitement sélectionné. Il prend en charge un certain nombre d'options permettant d'améliorer l'aspect des textures et est recommandé pour la plupart des effets spéciaux. Cependant, les masques alpha ne sont pas pris en charge. Le shader solide prend également en charge la colorisation (voir [Colorisation](#colorisation) below).

{% single_gallery widths=32%
/assets/wiki/Stk_generic_ice_a.jpg,Texture
/assets/wiki/Stk_generic_ice_a_gloss.jpg,Gloss Map
/assets/wiki/Stk_generic_ice_a_nm.jpg,Normal Map
%}

#### Carte de brillance(Gloss Map)

La carte de brillance permet de simuler une surface brillante. Cependant, la brillance dépend de plusieurs facteurs. Pour les prendre en compte, les canaux rouge, vert et bleu de l'image de la carte de brillance correspondent chacun à une partie distincte. Créer et tester une carte de brillance peut prendre beaucoup de temps, d'autant plus que vous devez recharger le jeu à chaque fois que vous essayez une nouvelle carte de brillance. Cependant, si vous maîtrisez bien Blender, vous trouverez peut-être [ici](https://forum.freegamedev.net/viewtopic.php?f=18&t=6246) des informations utiles.

* Le canal rouge contrôle la spécularité. Il s'agit de la concentration de la lumière qui se reflète sur la surface. Une valeur trop élevée a pour effet de créer des points très brillants sur une texture très sombre.
* Le canal vert contrôle la métallicité, c'est-à-dire la conductivité et la diélectricité.
* Le canal bleu contrôle l'émission. Plus le bleu est présent, plus le matériau émet de la lumière. Cependant, cette lumière n'est que localisée et n'éclaire pas la zone environnante. Elle est généralement utilisée pour créer un faux effet de brillance, par exemple pour des néons ou des lampes, sans le coût de calcul d'une véritable lumière ponctuelle.

{% single_gallery /assets/wiki/Gloss_Map_Explanation.png %}

{%popup_info Si vous avez du mal à faire appliquer vos modifications de la carte de brillance dans le jeu, désactivez la compression des textures dans les options du jeu.%}

#### Carte de normale

Les cartes de normales vous permettent de réduire le nombre de poly tout en obtenant les effets visuels d'une surface bosselée ou ondulée. De nombreuses textures du dépôt multimédia possèdent déjà des cartes de normales, vous n'avez donc pas besoin de créer les vôtres si vous utilisez des textures du dépôt multimédia. (En fait, vous ne pouvez pas, bien que vous puissiez aider en créant des tables de normales pour les textures qui n'en ont pas).

Pour appliquer une carte de normales, il faut soit entrer le nom du fichier dans la case **Carte de normales**, soit lier un noeud de 'carte de normales' à la sortie **Normale** à l'entrée **Normale** du noeud de shader BSDF guidée.

##### Création de la carte normale

{%popup_info Ce tutoriel suppose que vos textures sont carrées. En fait, cela n'a pas d'importance si elles ne le sont pas, mais vous devrez faire un peu plus de travail avec l'édition du mappage UV et la subdivision. Les textures carrées fonctionnent facilement car un plan carré se déroulera parfaitement au-dessus d'elles par défaut et une subdivision créera des quads carrés qui peuvent correspondre à des pixels.

Si la texture est, par exemple, de 256 × 512, vous devrez faire en sorte que le plan soit deux fois plus long dans une certaine direction, avec une arête au milieu, de sorte que lorsque vous effectuez des subdivisions, vous subdivisez des carrés.%}

Commencez dans une scène Blender vide. Supprimez le cube, la lumière et la caméra par défaut. Ensuite, créez un plan. En mode édition pour le plan, avec les quatre vertices sélectionnés, faites une série de subdivisions en fonction de la résolution. Cela peut entraîner un certain retard.

{% wikitable %}

| Résolution de Texture  | Nombre de Subdivisions |
|------------------------|------------------------|
| 256 × 256              | 8                      |
| 512 × 512              | 9                      |
| 1024 × 1024            | 10                     |
| 2048 × 2048            | 11                     |

Avec tous les vertices sélectionnés, dépliez les UVs du plan (raccourci : u > Dépliez). Cela causera probablement à nouveau un peu de lag, mais ne vous inquiétez pas. Dans la fenêtre éditeur UV (fenêtre UV/Image Editor pour Blender <= 2.79), vous devriez voir votre modèle.

Ouvrez la texture pour laquelle vous souhaitez créer une carte de normalité, modifiez les paramètres de prévisualisation pour utiliser soit le mode **Solide** avec  'couleur' définie sur **Texture**, soit le mode **Prévisualisation du matériau**. Pour Blender <= 2.79, activez **Texturé solide** dans le panneau des propriétés de la fenêtre 3D View (raccourci: n).

Passez maintenant la fenêtre de la vue 3D en mode sculpture au lieu du mode édition. Plusieurs options apparaissent dans la boîte à outils située à gauche. La plus importante est de désactiver l'effet miroir. Pour ce faire, désélectionnez le bouton "X" situé sous la section "Miroir" dans la section "Symétrie/Blocage" de la palette d'outils(outil > symétrie/Verrouillage > Mirroir).

Ajustez les paramètres de la palette d'outils pour le pinceau de sculpture selon vos besoins et sculptez la surface d'une manière que vous jugez réaliste et adaptée à la texture.

Lorsque vous avez fini de sculpter, passez en mode édition, sélectionnez tous les sommets et, dans l'éditeur UV/image, cliquez sur le "x" à côté du nom du fichier de texture pour dissocier le bloc de données.

Passez en mode objet et créez un nouveau plan de taille et de forme identiques, à la même position que celui que vous avez sculpté.

Passez en mode édition, sélectionnez tous les sommets du plan plat et dépliez les UVs (raccourci: u > Dépliez). Dans la fenêtre de l'éditeur UV, cliquez sur le bouton "Nouveau" pour créer une nouvelle image. Définissez les mêmes dimensions que celles de la texture d'origine. Passez maintenant en mode objet ; vous devriez voir que votre plan plat est noir si vous avez activé l'option "Texturé Solide".
Paramètres de la fenêtre de visualisation pour utiliser soit le mode **Solide** avec la couleur réglée sur **Texture**, soit le mode **Prévisualisation du matériau**. Pour Blender <= 2.79, activez **Texturé solide** dans le panneau des propriétés de la fenêtre 3D View (raccourci : n).

{%popup_info Il est **très** important qu'à un moment donné, vous ayez sélectionné tous les sommets du plan plat en mode édition et que la texture vierge soit ouverte dans la fenêtre de l'éditeur UV. Cela permet d'assigner la texture en tant que *texture de surface*, ce qui est nécessaire pour la cuisson (baking).%}

Vous vous souvenez que j'ai dit plus haut d'ignorer les matériaux de Blender et la section "Texture" de la fenêtre Propriétés ? Eh bien, voici une rare exception, car nous utilisons les propres outils de Blender pour créer la carte normale. Assurez-vous que vous avez sélectionné " Rendu Blender " comme moteur de rendu dans la fenêtre Info. Dans la section "Materials" de la fenêtre Properties, avec le plan <u>plat</u> sélectionné, cliquez sur le bouton "Nouveau". Laissez les paramètres tels qu'ils sont actuellement.

Dans la section "Texture" de la fenêtre Propriétés, avec "textures du matériau" sélectionné, et toujours avec le plan plat sélectionné, cliquez sur le bouton "Nouveau". Définissez les propriétés suivantes:

* Donnez à la texture le même nom que celui que vous avez donné à votre nouvelle image vierge dans l'éditeur UV/Image.
* Assurez-vous que le "Type" est réglé sur "Image ou Vidéo".
* Sous "Image", cliquez sur l'icône de la photographie et sélectionnez la nouvelle texture vierge que vous venez de créer.
* Sous "Placage", réglez "Coordonnés" sur "UV".
* Cliquez dans le champ "Carte" sous "Placage" et sélectionnez "UVMap".

Sélectionnez le plan sculpté. Passez à la section "Rendu" de la fenêtre Propriétés. Sous "Pré-calculer", cochez "Sélectionné vers actif". Changez le "Mode de pre-calcul" de "Rendu complet" à "Normales". Assurez-vous que l'option "Pré-calculer depuis multires" est décochée et que l'option "Espaces des normales" est réglée sur "Tangent".

Maintenant, en mode objet, **d'abord** sélectionnez le plan sculpté, **ensuite** sélectionnez le plan plat. Cliquez sur le bouton "Pré-calculer" dans la section "Render" de la fenêtre Propriétés. Si vous observez l'image vierge dans l'éditeur UV/Image, vous verrez que Blender dessine beaucoup de violet et de bleu.

Pour enregistrer la carte de normale, cliquez sur Image > Enregistrer sous image dans la fenêtre de l'éditeur d'UV/image. La carte de normale peut maintenant être appliquée comme un texture de normal.

(cette suite d'instruction à été écrit pour blender <= 2.79 mais peut facilement être adapter au version 2.8 et supérieur)

### Découpage Transparence (PBR Cutout Transparency (alpha test))

Le shader de "cutout transparency" est le meilleur pour des choses comme la végétation (lorsque vous ne voulez pas qu'elle bouge - sinon, utilisez le shader de végétation). Il effectue un "test alpha" pour rendre les pixels d'une texture soit 100% solides, soit 100% transparents. Cependant, il ne dispose pas de toutes les fonctionnalités du shader solid, donc évitez de l'utiliser pour les textures solides. Si votre texture est principalement solide avec quelques sections transparentes, vous devriez utiliser une texture séparée. La "Cutout transparency" prend en charge les masques alpha et la colorisation.; voie [Masque Alpha](#masque-alpha) et [Colorisation](#colorisation) ci-dessous.

### Transparence de mélange ((NON PBR) Alpha See Through)

La shader "blending transparency" ("alpha blend") est utilisée pour les textures translucides, comme les fenêtres. Les couleurs des objets vus à travers ces textures seront mélangées avec les couleurs des parties translucides de la texture. La transparence de mélange prend en charge les masques alpha; voir [Masque Alpha](#masque-alpha) ci-dessous.

{%popup_info Le mélange de transparence ne peut que rendre les objets plus sombres, pas plus clairs. Il faut savoir que des sections transparentes très foncées peuvent réduire considérablement la visibilité des objets qui se trouvent derrière elles.%}

### Transparence additive ((NON PBR) Alpha Additive)

Le shader additive fonctionne de la même manière que le shader de mélange alpha, mais au lieu d'assombrir les couleurs lors du mélange, les couleurs sont éclaircies. C'est utile pour des objets tels que les faisceaux lumineux ou le feu, afin d'éclaircir les objets situés derrière la texture.

### Non éclairé (solid) ((NON PBR) Unlit solid)

Les textures utilisant le shader unlit seront toujours en pleine luminosité, malgré les lumières ou les ombres. Ce shader ne prend pas en charge la transparence.

### Végétation

Le shader de végétation effectue un test alpha, tout comme la transparence cutout. Cependant, il anime également les objets auxquels la texture est appliquée, en les faisant onduler comme s'ils soufflaient dans le vent. À l'aide de la peinture de vertex , (voir [Texturation\#Coloration des vertexs](Texturing/#coloration-des-vertexs) pour un tutoriel) peignez en noir les vertex qui doivent rester immobiles et laissez en blanc les parties de la texture qui vont onduler. Peignez les sommets en nuances de gris pour qu'ils se déplacent sur une plus courte distance. Le shader de végétation offre également deux autres options de contrôle:

* **Waving speed:** La vitesse à laquelle la végétation se déplace d'un côté à l'autre
* **Waving amplitude:** La distance, en unités Blender, à laquelle la végétation ondulera.

Le shader de végétation prend en charge la colorisation; voir [Colorisation](#colorisation) ci-dessous.

### Réflexion (Sphere Mapping)

{%popup_info Attention! Obsolète! N'utilisez pas ce shader, utilisez plutôt le shader solid avec une carte de brillance (gloss map)!%}

Ce shader simule une apparence chromée en reflétant simplement tout ce qui se trouve à proximité. Pour cette raison, il n'est vraiment pas le plus réaliste et ne fournit pas tous les détails du shader solid avec une carte de brillance. Cependant, si vous êtes désespéré et que vous n'avez pas beaucoup de temps, vous pouvez utiliser ce shader pour obtenir facilement un effet chromé.

### Splatting (map)

Le splatting permet de "dessiner" jusqu'à quatre textures à l'aide d'une autre texture et de mélanger les textures, créant ainsi une transition en douceur entre les différentes textures. 
Toutefois, cette méthode peut s'avérer très coûteuse en termes de RAM vidéo. Si possible, envisagez d'abord [Coloration des vertexs](Texturing/#coloration-des-vertexs).

#### Création d'une carte UV de secours

Le splatting nécessitant une grande quantité de RAM vidéo, il est important de prévoir une solution de repli pour les joueurs qui n'ont pas ces capacités graphiques activées. Marquez toutes les coutures et dépliez votre maillage. Vous pouvez assigner une texture différente à chaque face pour pouvoir afficher plusieurs textures, même si cela ne créera pas une transition fluide.

{%popup_info Pour faciliter la peinture de la carte splatting, assurez-vous que vous n'avez pas marqué de coutures aux endroits où vous souhaitez une transition douce lorsque le splatting est activé.%}

<div><br/></div>

{% single_gallery /assets/wiki/Splatting.jpg%}

#### création d'une carte (Splatting Map)

Le rouge, le vert, le bleu et le noir correspondent chacun à une texture différente. Dans la fenêtre **Propriétés**, sous **Données**, sous **Maps UV**, cliquez sur le bouton plus (+) pour ajouter une nouvelle carte UV. (Notez que cette carte UV doit être la *deuxième* carte de la liste. La première doit être la carte de référence). Créez une nouvelle image dans la fenêtre UV/Image Editor.

{%popup_info N'essayez pas de modifier les coordonnées UV de la deuxième carte UV : l'exportation ne se fera pas. Au lieu de cela, la carte de splatting sera simplement assignée à la première carte UV. Ceci est dû au fait qu'Irrlicht ne supporte qu'une seule carte UV par mesh.%}

<div><br/></div>

{%popup_info Veillez à utiliser une couleur aussi proche que possible du rouge pur (RVB 255, 0, 0) pour le rouge, RVB 0, 255, 0 pour le vert, RVB 0, 0, 0 pour le noir, etc. Si vous n'utilisez pas une couleur pure, d'autres textures risquent d'être mélangées là où vous ne le souhaitez pas.%}

Décidez des couleurs que vous voulez voir correspondre au rouge, au vert, au bleu et au noir. Passez en mode **Paint** dans la fenêtre **Image Editor** (UV/Image Editor pour Blender <= 2.79) et sélectionnez une couleur dans la palette d'outils (raccourci: t). Vous pouvez également modifier les différentes options de peinture pour le pinceau dans la boîte à outils. Peignez le motif que vous voulez sur la texture, en mélangeant les couleurs là où vous voulez que les textures soient mélangées. Si l'option **Texturé solide** est activée sous **Ombre** dans le panneau **Propriétés de la fenêtre 3D View** (raccourci: n), vous pourrez voir votre peinture apparaître sur le maillage en temps réel.

{%popup_info N'oubliez pas d'enregistrer votre carte de splatting sous forme de fichier! Dans la fenêtre **UV/Image Editor**, allez dans **Image > Save as Image** et mettez-le dans le même dossier que votre fichier .blend.%}

#### Configuration des textures splatting

Vous pouvez maintenant assigner des textures à chaque couleur que vous avez peinte sur la carte splatting. Dans le panneau des propriétés d'image de SuperTuxKart, sélectionnez votre carte d'éclatement et réglez la propriété **Shader** sur **Splatting** (si ce n'est pas déjà fait). Définissez les noms des fichiers de texture pour les propriétés **Texture rouge**, **Texture verte**, **Texture bleue** et **Texture noire**.

{% single_gallery /assets/wiki/Splatconfig.jpg,Certaines des options qui apparaissent dans cette image ont changé depuis SuperTuxKart 0.9. Vous pouvez les ignorer ; la configuration du splatting n'a pas changé (bien qu'il soit maintenant activé par le menu **Shader**).%}

------------------------------------------------------------------------
## Masque Alpha

Les masques alpha permettent de rendre une image solide transparente, partiellement ou totalement. Il s'agit d'une image en niveaux de gris dans laquelle le blanc représente l'opacité totale et le noir la transparence totale. Pour en créer un, il suffit de faire une copie de votre texture, d'utiliser un outil comme fuzzy select dans GIMP ou Krita pour sélectionner une partie qui doit être solide et la colorer en blanc, et de sélectionner les parties qui doivent être transparentes et de les colorer en noir. Utilisez différentes nuances de gris pour différents niveaux de transparences. Tapez son nom de fichier dans le champ "Image masque" pour les shaders Alpha Test ou Alpha Blending dans le panneau Propriétés d'image de SuperTuxKart.

{% single_gallery widths=32%
/assets/wiki/Palmtree3.jpg,Texture
/assets/wiki/Palmtree3_alpha.jpg,Alpha Mask
%}

## Colorisation

{%popup_info Remarque: la personnalisation des couleurs n'est actuellement disponible que pour les nœuds de bibliothèque ! Si vos objets ne sont pas des nœuds de bibliothèque, vous pouvez envisager d'utiliser [Coloration des vertexs](Texturing/#coloration-des-vertexs).%}

La coloration est un excellent moyen de réduire la nécessité d'avoir plusieurs modèles d'un objet. En utilisant un ensemble de teintes que vous lui fournissez, le shader peut choisir une teinte aléatoire pour chaque instance d'un matériau, tout comme la coloration des vertex. Cependant, la colorisation peut colorer différemment chaque instance d'un nœud de bibliothèque, ce qui n'est pas le cas de la coloration des sommets.

{% single_gallery /assets/wiki/Colorization_palm_trees.jpg,Ajouter de la variété aux palmiers du Temple Cocoa%}

{%popup_info Quand on dit "teinte", il faut penser "teinte-saturation-valeur". Dans ce cas, la teinte n'a pas la même signification que la couleur. La teinte correspond à la fréquence des ondes électromagnétiques visibles, ou lumière. Mais dans ce cas, la teinte n'inclut pas la saturation (la différence d'intensité entre les différentes couleurs de la lumière) ni la valeur (la quantité totale de lumière).%}

La colorisation est également utilisée pour marquer les équipes dans les modes football et capture du drapeau. Les karts de l'équipe "rouge" seront colorisés en rouge, tandis que les karts de l'équipe "bleue" seront colorisés en bleu.

Pour activer la colorisation d'un matériau, cochez la case "Colorizable" dans le panneau des propriétés d'image de SuperTuxKart. Trois options s'offrent alors à vous:

* **Colorization factor:** Il s'agit de la quantité de saturation que le shader augmentera sur les instances colorées. Ceci est utile pour les textures à faible saturation, afin qu'un changement de teinte soit suffisamment perceptible.
* **Colorization mask:** Le masque de colorisation contrôle les parties de la texture qui seront colorisées. Les sections transparentes seront colorisées, tandis que les sections noires ne le seront pas. Depuis STK 1.0, vous pouvez simplement utiliser le canal alpha de votre texture principale pour le masque de colorisation, puisque la colorisation ne fonctionne de toute façon qu'avec le shader solid générique. Les masques de colorisation séparés sont toujours supportés, et peuvent être plus faciles à utiliser.
* **Hue settings for colorization:** Les chiffres de cette case contrôlent la palette de teintes dans laquelle le nuanceur peut piocher. Les teintes sont séparées par des espaces. Un tableau des valeurs est fourni ci-dessous à titre de référence.

{% wikitable %}

| Color        | Hue value        |
|--------------|------------------|
| Original hue | 0                |
| Rouge        | 0.001 **or** 1.0 |
| Orange       | 0.02             |
| Jaune        | 0.1              |
| Vert         | 0.3              |
| Bleu         | 0.5              |
| Indigo       | 0.66             |
| Violet       | 0.8              |

<div><br/></div>

{%popup_info Laissez la propriété "Hue settings for colorization" vide sur les karts! La colorisation des karts est contrôlée par les modes de jeu avec l'équipe et le fait de définir cette propriété causera des problèmes!%}

<div><br/></div>

{% single_gallery widths=32%
/assets/wiki/gnu_cloth_diff.png,Texture pour les vêtements de Gnu
/assets/wiki/gnu_cloth_colormask.png, Masque de coloration pour les vêtements de Gnu
%}

## Suppression de la face cachée (Backface Culling)

Le backface culling rend les plans visibles d'un seul côté - le côté sur lequel se trouve la normale. Depuis SuperTuxKart 0.9.0, ce paramètre n'est généralement plus accessible à l'utilisateur. Cependant, ce paramètre peut être prévisualisé dans Blender >= 2.80 en allant dans la section 'mode de prévisualisation > solides> options > suppression des faces arrière' (pour le mode solid); 'Propriété > matétiau > réglages > supprression des faces arrières'(pour les autres modes). Ce paramètre est activé pour chaque matériau (sauf pour le second qui doit être activé manuellement pour chaque matériau).

Pour Blender <= 2.79, ce paramètre se trouve dans le panneau de droite de la fenêtre 3D View, dans la section 'Ombrage > Culling des faces arrières'.

## Fixation de la texture (Clamping)

Le "clamping" des textures permet d'éviter que les textures ne soient répétées sur un objet. Vous pouvez contrôler ce paramètre pour les axes U (horizontal) et V (vertical) de la texture. Cochez l'une ou l'autre des cases ou les deux.

* **Clamp texture horizontalement**
* **Clamp texture verticalement**

dans le panneau des propriétés d'image de SuperTuxKart pour votre texture.

## Miroir de texture pour les courses en sens inverse

Vous pouvez configurer une texture pour qu'elle soit inversée lorsqu'elle est jouée en mode inversé. Ceci est utile pour les textures comme les flèches qui indiquent le chemin à suivre. Sélectionnez l'une des deux options du menu déroulant de l'option "Mirror in reversed races" du panneau de propriétés d'image de SuperTuxKart.

{% include art_portal %}
