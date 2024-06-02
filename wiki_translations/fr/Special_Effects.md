---
title: Effets spéciaux
toc: true
---
Bien qu'ils ne soient pas strictement nécessaires, les effets spéciaux rendent une scène plus dynamique et plus intéressante. SuperTuxKart prend en charge de nombreux types d'effets spéciaux visuels et auditifs.

## Particules

Les particules sont utilisées pour ajouter des éléments à l'air, comme de la poussière, de la fumée ou du feu. Elles sont configurées via un fichier XML. Si vous avez l'intention d'ajouter des particules, consultez la page [Fichier de particules](Particles_File) pour créer un fichier de particules (ou réutiliser un fichier existant), puis continuez avec ce tutoriel.

### Emetteurs de particules

Les émetteurs de particules sont des objets Blender "vides" dont le type est réglé sur " Particle Emitter " dans le panneau des propriétés d'objet de SuperTuxKart. Il suffit de définir le champ "Particle File" avec le nom de votre fichier de particules, de modifier la distance de clip (si nécessaire) pour des raisons de performance, et de s'assurer que l'option "Enable emission" est cochée. Vous pouvez décocher "Activer l'émission" si vous avez l'intention de l'activer et de la désactiver dynamiquement à l'aide d'un script.

### Particules provenant de karts

Vous pouvez faire en sorte que des particules soient émises chaque fois qu'un kart roule et/ou dérape sur une certaine texture. Pour ce faire, sélectionnez l'image que vous utiliserez dans le panneau Propriétés d'image de SuperTuxKart (si vous voulez que des particules soient émises chaque fois que le joueur sort de la route, vous devez sélectionner l'image utilisée pour texturer les côtés de la route) et cochez la case " Particle effect " (effet de particule). Définissez la propriété " Particles file " (fichier de particules) sur le nom d'un fichier de particules, et cochez les cases " Skid " (dérapage) et/ou " Drive " (conduite) pour activer l'effet de particules pour la conduite et/ou le dérapage des karts.

### Particules en cas de Collision

Vous pouvez également définir des particules qui seront émises lorsqu'un kart entre en collision avec un objet texturé. Sélectionnez la texture dans le panneau Propriétés d'image de SuperTuxKart et, sous "Interaction", activez " Collision action ". Entrez le nom de votre fichier de particules dans le champ "Particles on hit".

## Sons

Vous pouvez ajouter des sons d'ambiance à votre morceau pour le rendre plus intéressant. Les fichiers sonores doivent être au format Ogg Vorbis (.ogg). Voir [Directives pour musique et effets sonores](Music_and_SFX_Guidelines) pour plus d'informations sur le style du son.

### Emetteurs sonores

{%popup_info Le son positionnel, y compris le rolloff, ne fonctionne qu'avec de l'audio mono. L'audio doit être mixé en mono si vous souhaitez que le son soit panoramique ou en fondu lorsque vous passez devant l'émetteur de son.%}

Créez un objet Blender "vide" et réglez son type sur "Sound Emitter" dans le panneau des propriétés d'objet de SuperTuxKart. Entrez le nom de votre fichier son dans le champ "Sound File". Les propriétés suivantes sont configurables:

* **Sound volume:** Le volume du son: 0 est silencieux, 1 est le volume maximum.
* **Rolloff rate:** La vitesse à laquelle le son perd de son volume à mesure que la distance par rapport à la caméra augmente.
* **Maximum distance:** La distance à laquelle le son n'est plus audible
* **Play on approach:** Le son commence à être joué lorsque le joueur s'approche de l'émetteur de son. Sinon, le son est joué en permanence à moins d'être activé par un script.
    * **Play when at distance:** Configurable si l'option "Play on approach" est cochée. C'est la distance, en unités Blender, de l'émetteur de son à laquelle un kart déclenche le son.

### Sons des karts

Vous pouvez définir un effet sonore à jouer lorsqu'un kart roule sur une texture particulière. Sélectionnez l'image que vous souhaitez utiliser dans le panneau Propriétés de l'image de SuperTuxKart et cochez la case " Play sound effect " (Jouer un effet sonore). Entrez le nom de votre fichier son dans le champ " Sound File ". Les propriétés suivantes sont configurables:

* **Minimum kart speed:** Vitesse minimale à laquelle le son sera joué
* **Maximum kart speed:** Vitesse maximale à laquelle le son sera joué
* **Sound pitch at min speed:** Le réglage du pas effectué à la vitesse minimale - les nombres inférieurs à 1 abaissent le pas, tandis que les nombres supérieurs à 1 l'augmentent.
* **Sound pitch at max speed:** Le réglage du pas effectué à la vitesse maximale - les nombres inférieurs à 1 abaissent le pas, tandis que les nombres supérieurs à 1 l'augmentent.
* **Positional sound effect:** Si cette option est cochée, le volume du son diminue au fur et à mesure que la distance augmente. Nécessite un son mono.
* **Rolloff rate:** La vitesse à laquelle le volume diminue lorsque la distance augmente

## Panneaux d'affichage (Billboards)

Les panneaux d'affichage sont des quads plats qui font toujours face au joueur. Orientez le quad le long de l'axe X ou Z et réglez le type sur "Billboard" dans le panneau des propriétés d'objet de SuperTuxKart. Ceci peut être utilisé pour créer un faux halo autour des lumières. (Cependant, ceci n'est plus nécessaire pour les lumières ponctuelles avec le brouillard activé dans SuperTuxKart ≥ 0.9).

Vous pouvez également activer l'option " Fade out when close " dans le panneau des propriétés d'objet de SuperTuxKart pour que le panneau d'affichage disparaisse à l'approche du kart.

## Textures animées

Tous les objets qui font partie de la piste principale (c'est-à-dire aucun autre objet spécial répertorié ici, à l'exception des objets de type " object ") peuvent marquer une texture à animer. L'objet doit définir le nom de fichier de la texture dans la propriété texture à animer, et doit définir la vitesse du mouvement en définissant les propriétés "Animation X Speed" et/ou "Animation Y Speed". Voir l'exemple suivant:

{% single_gallery /assets/wiki/STK_animated_texture.jpg %}

Cela permet de simuler des liquides qui s'écoulent comme l'eau d'une rivière. Pour un exemple, voir les poissons animés dans Antediluvian Abyss. Le fichier .blend se trouve dans le dossier abyss du dossier tracks du dépôt multimédia.

Vous pouvez également utiliser une texture "film" comme celle-ci, pour des effets complexes (feu, nuages, etc.). Vous devez activer l'option " Anim the texture by step " (animer la texture par étapes). La propriété "Animation Y Speed" devient le nombre d'images dans la texture (dans cet exemple 4). La propriété "time between two frames" est le temps, en millisecondes, entre deux images.

{% single_gallery /assets/wiki/Stktex_animatedFire_a.png %}

Vous ne devez pas utiliser un grand nombre de trames, sinon vous risquez de rencontrer des problèmes de performance.

## Effets par objet

Bien que la plupart des effets soient contrôlés par la texture, les objets de type "Object", "LOD Instance" ou "LOD Standalone" dans le panneau des propriétés d'objets de SuperTuxKart peuvent définir quelques effets spéciaux qui leur sont propres. Notez cependant que cela nécessite de définir les propriétés "Interaction" et "Shape", ce qui peut poser des problèmes si vous ne faites pas attention. Voir [Physique\#Interaction Kart Objet](Physics/#interaction-kart-objet).

### Lueur(Glow)

Un contour lumineux peut être défini pour apparaître autour de certains objets, comme un baril de déchets nucléaires. Les objets l'utilisent, par exemple. Il suffit de définir une couleur à l'aide du sélecteur de couleur pour la propriété "Glow (outline)" dans le panneau des propriétés d'objet de SuperTuxKart.

### Distorsion

La distorsion est un effet extrêmement utile dans de nombreux domaines. Il simule le fait de regarder à travers un morceau de verre ondulé, mais il peut également être utilisé à d'autres endroits. Il est utilisé dans Antediluvian Abyss pour créer un effet de distorsion lorsque l'on regarde à travers le verre et dans Cocoa Temple pour simuler des vagues de chaleur dans la partie du temple où l'on fait griller le cacao. Activez-le en utilisant le shader `displace` dans le nom du shader personnalisé (custom shader).

Le dossier `textures/gfx` du [dépôt multimédia](Media_Repo) contient une texture appelée `gfx_distord_AlphaTested.png` que vous pouvez utiliser pour marquer les objets comme étant utilisés pour la distorsion. Comme toutes les textures se terminant par "AlphaTested" dans le dossier `gfx`, elle n'apparaîtra pas dans le jeu.

## Effets spéciaux de caméra

### Caméras de fin de course alternatives

Les caméras de fin de course alternatives vous permettent d'afficher une vue différente à la fin de la course. Par défaut, la caméra est orientée vers le kart du joueur à la fin de la course. Pour montrer une autre vue, placez des caméras Blender le long de la piste, donnez-leur un des types ci-dessous dans le panneau des propriétés d'objet de SuperTuxKart:

* **End Camera (Fixed):** À la fin de la course, la caméra la plus proche tournera et zoomera automatiquement pour suivre le kart.
* **End Camera (Look Ahead):** La caméra terminale par défaut, utilisée uniquement si vous souhaitez passer du mode fixe au mode "look-ahead".

Définissez la propriété "Start Sphere Radius" de manière à ce que les sphères de départ (où le jeu basculera vers une autre caméra) se chevauchent.

{%popup_info The "Le type d'objet "Cutscene Camera" est décrit dans [Annexe B: Cinématiques](Cutscenes).%}

### Suspendre le mouvement de caméra

Cet effet est contrôlé par texture. Lorsqu'un kart passe au-dessus de cette texture, la caméra s'arrête de bouger mais reste face au kart. Cet effet est particulièrement utile pour souligner la chute d'un kart dans une fosse ou dans l'eau, c'est pourquoi il est activé en cochant la case " Falling Effect " (effet de chute) dans le panneau " SuperTuxKart Image Properties ". Cependant, cet effet peut également être utile dans le cas d'un kart tiré par un canon (voir [Physique]( Physics)). Cet effet est déjà activé si vous utilisez `gfx_resetWaterSplash_AlphaTested.png` pour l'eau.

## L'eau

Sans animation complexe, il est malheureusement impossible de créer des vagues ou de l'eau en mouvement. Cependant, vous avez quelques options pour créer de l'eau réaliste. La plupart de l'eau dans SuperTuxKart est simplement une texture d'eau (par exemple jungleWater.png pour Cocoa Temple) utilisant le shader de displace (voir [Materiaux](Materials)). Vous pouvez utiliser une texture animée pour simuler de l'eau qui coule (voir ci-dessus).

La meilleure méthode pour créer de l'eau est d'avoir deux plans : celui du haut texturé avec `gfx_resetWaterSplash_AlphaTested.png`, celui du milieu texturé avec `jungleWater.png` et de régler le shader sur `displace`.

{% include art_portal %}
