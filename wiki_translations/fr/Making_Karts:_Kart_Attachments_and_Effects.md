---
title: 'Faire des Karts: Accessoires et effets des karts'
toc: true
---
Les karts peuvent être équipés d'un certain nombre d'accessoires permettant d'obtenir des effets spéciaux. Cette page explique comment les ajouter à votre kart.

## Nitro/Exhaust emitter (emetteur de gaz d'échappement)

Ajoutez des objets Blender de type vide aux extrémités des tuyaux d'échappement de votre kart et réglez le type sur "Nitro Emitter" dans le panneau des propriétés d'objet de SuperTuxKart.

## Headlights (Phares)

Tous les nouveaux karts doivent être équipés de phares, sauf si cela n'a absolument aucun sens pour votre kart. Cela ne signifie pas que vous devez utiliser des phares traditionnels - Gnu, par exemple, porte des lanternes à huile antiques au lieu de phares normaux, ce qui n'irait pas très bien avec un tapis volant.

Pour la plupart des karts, à l'exception de Gnu, les phares sont intégrés dans le modèle du kart et l'objet spécifiquement marqué comme un phare dans Blender est en fait un faux cône de lumière, puisque SuperTuxKart ne supporte pas les vrais cônes de lumière.

Pour ajouter des phares, vous pouvez copier le cône de lumière d'un des autres karts dans le media repo et l'ajouter à votre kart à l'endroit désiré. Assurez-vous d'appliquer la rotation et la mise à l'échelle que vous avez faites en mode objet avec **Ctrl+A**. Vous pouvez dupliquer ce mesh en mode objet avec **Shift+D**. L'origine du phare (le petit point jaune) sera l'emplacement de la lumière réelle sur le kart. Vous pouvez changer l'origine avec **Ctrl+Alt+Shift+C**. A partir de là, il y a deux possibilités d'action en fonction de la conception de votre kart:

### Si vos phares sont attachés au personnage ou à un kart animé

La plupart des karts n'auront probablement pas besoin de cette procédure spéciale. Si les phares sont attachés au kart et que le kart n'a pas d'animations spéciales, les phares ne seront pas visiblement "détachés" du kart. Cependant, si votre kart utilise des animations spéciales comme le balai de Pepper, vous aurez besoin de cette procédure. La plupart des karts s'inclinent lorsqu'ils tournent grâce à l'animation IPO intégrée à STK qui déplace automatiquement les phares, mais pour Pepper, le balai a sa propre animation d'inclinaison squelettique en plus de cela. Ainsi, si le phare n'est pas attaché au balai, il sera séparé lors des virages et aura un aspect peu esthétique. La solution est d'attacher le phare à un os.

{% single_gallery /assets/wiki/Kart_headlight.jpg %}

Sélectionnez le premier phare que vous souhaitez attacher, faites-en un objet enfant de l'armature qu'il doit suivre, puis allez dans la section **Objet** de la fenêtre Propriétés, choisissez "Os" pour **Type de parentage** et sélectionnez l'os qu'il doit suivre immédiatement en dessous, comme le montre la capture d'écran ci-dessus. Ensuite, dans le panneau de Propriétés d'objet de SuperTuxKart, définissez l'objet phare comme un type d'objet " Headlight ". Vous pouvez également définir la couleur de la lumière émise.

### Si vos phares sont statiques (sans mouvement)

Si vos phares n'ont pas besoin de bouger en dehors de l'inclinaison normale du kart (qui est gérée par STK dans le code), il est beaucoup plus simple d'ajouter des phares. Il suffit de positionner le cône de lumière à l'endroit voulu et de le marquer comme phare dans le panneau de propriétés d'objet de SuperTuxKart. Vous pouvez également choisir la couleur de la lumière émise.

{%popup_info Réduisez le coût des ressources ! Si vous utilisez le même modèle pour les deux phares de votre kart, faites une copie liée avec **Alt+D** au lieu de **Shift+D** et votre objet phare utilisera l'instanciation.%}

## Chapeau (Christmas Hats & Easter Bunny Ears)

Les chapeaux sont ajoutés d'une manière très similaire aux phares. Créez un objet (n'importe quel objet, mais il est recommandé d'ajouter `christmas_hat.blend` depuis le dossier `models` du media repo) et positionnez-le à l'endroit où vous voulez que votre chapeau soit par rapport au personnage. Définissez-le comme "Hat Positioner" dans le panneau de propriétés d'objet de SuperTuxKart. Ensuite, <u>si et seulement si votre personnage a une animation squelettique,</u> faites de l'objet chapeau un objet enfant de votre modèle de personnage, changez **Type de parentage** en "Os" sous "Relations" dans le panneau Propriétés d'objet de Blender, et choisissez le bon os (probablement l'os du cou ou de la tête de votre personnage) pour attacher le chapeau via le sélecteur **Os de parent**.

{% single_gallery /assets/wiki/Kart_hat.jpg %}

<div><br/></div>

{%popup_info Vous pouvez également gagner un peu d'espace dans votre fichier blend en liant le modèle de chapeau au lieu de l'annexer et, avec le modèle sélectionné, en allant dans **Objet > Relations > Rendre local > Objet et données sélectionnés** dans la fenêtre Vue 3D.%}

## Animations pondérées

SuperTuxKart peut modifier la vitesse des animations de squelette et/ou de texture sur certains objets en fonction de la vitesse du kart. Par exemple, ceci est utilisé pour la motoneige de Sara afin que la [piste continue](https://en.wikipedia.org/wiki/Continuous_track) accélère et ralentisse avec le kart. L'ajout d'objets à vitesse pondérée est assez facile, à condition que l'objet à pondérer soit un objet séparé et ne fasse pas partie du même maillage que le kart.

Une animation pondérée en fonction de la vitesse peut être ajoutée à un objet simplement en réglant son type sur " Speed Weighted " dans le panneau de propriétés d'objet de SuperTuxKart. Les infobulles sur les paramètres qui apparaissent ci-dessous expliquent ce que chaque paramètre fait. Notez les points suivants concernant chaque paramètre :

* **Strength factor** n'a aucun effet sur la plupart des appareils. En fait, cela n'a d'effet qu'avec l'Intel HD Graphics 3000 sous Windows, où le hardware skinning n'est pas pris en charge.
* **Speed factor** utilisera la valeur par défaut si elle est fixée à `-1.0`. Elle ne sera **pas** complètement désactivée. Si vous voulez une animation du squelette indépendante de la vitesse mais une animation des textures dépendante de la vitesse, mettez cette option à `0.0`
* **Texture speed X** et **Texture speed Y** doivent tous deux être mis à `0.0` si vous souhaitez désactiver l'animation de la texture.

{%popup_info Si vous ajoutez un objet à vitesse pondérée animé par le squelette et que vous souhaitez l'attacher à un os comme dans la procédure du chapeau ci-dessus, vous devrez animer l'objet séparément dans l'espace local, en vous assurant que l'armature et l'objet qu'elle déforme ont le même centre de masse(point d'origine au même coordonné). Ensuite, faites de l'armature et de l'objet des enfants directs de votre armature principale (pour Kiki, l'armature de la queue est un objet enfant de l'armature du corps). L'objet pondéré en fonction de la vitesse et son armature doivent avoir une relation frère-frère, et non parent-enfant.%}

{% include art_portal %}
