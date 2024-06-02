---
title: Physique
toc: true
---
Dans SuperTuxKart, la plupart des modifications de la physique standard sont contrôlées par texture. Les textures dans le référentiel multimédia sont déjà configurées pour la physique via `materials.xml` dans le dossier `textures` du référentiel `stk-assets`. Voir la page [Materiels xml](Materials_xml) pour des informations sur la compréhension du fichier.

{%popup_info Toutes les textures du dossier `gfx` dans le dossier textures du dépôt multimédia avec le suffixe "AlphaTest" ou "AlphaTested" n'apparaîtront pas dans le jeu. Pour plus d'informations, voir la page [Dépôt multimédia](Media_Repo).%}

L'endroit où configurer ces propriétés physiques dépend de la version de Blender utilisée. Pour Blender 2.80+, elles sont situées dans le panneau Antarctica/SuperTuxKart Properties, qui est lui-même situé dans la section **Matériau** de la fenêtre **Propriétés**. Pour Blender <= 2.79, elles sont situées dans le panneau SuperTuxKart Image Properties, qui est lui-même situé dans la section **Scene** de la fenêtre **Propriétés**. Le reste de cette page suppose l'utilisation du panneau Antarctica/SuperTuxKart Properties.

## Zippers (Booster de vitesse)

Si vous avez votre propre texture pour les zippers, ou si vous allez utiliser une texture du dépôt multimédia qui n'est pas configurée comme un zipper, vous pouvez utiliser `gfx_booster_AlphaTest.png` comme texture à l'endroit où vous voulez un zipper.

{%popup_info Une des méthodes favorites de notre artiste principal, Jean-Manuel Clémençon, est d'utiliser une texture en damier provenant du dossier `textures/flags` du dépôt multimédia, en conjonction avec une texture en flèche provenant du même dossier pour représenter un zipper. `gfx_booster_AlphaTest.png` sert de texture de fermeture éclair, dans une section du maillage légèrement au-dessus de la texture en damier. La texture de la flèche se trouve dans une section du maillage entre le damier et la texture de la fermeture éclair. En général, il anime la texture de la flèche et ajoute des lumières ponctuelles au-dessus du booster.%}

Vous pouvez également utiliser vos propres textures pour les zippers, en sélectionnant votre texture dans le panneau Propriétés d'image de SuperTuxKart et sous "Interaction", cocher la case "Zipper (speed boost)". Cela vous permet de modifier les options suivantes:

* **Zipper duration:** Durée, en secondes, de l'augmentation de vitesse. Si cette valeur est négative, c'est la valeur spécifique au kart qui sera utilisée.
* **Zipper max speed increase:** Vitesse supplémentaire autorisée en plus de la vitesse maximale spécifique au kart si une fermeture éclair est utilisée. Si cette valeur est négative, c'est la valeur spécifique au kart qui sera utilisée.
* **Zipper fade out time:** Le temps nécessaire pour qu'un kart ralentisse jusqu'à sa vitesse de pointe normale après l'utilisation d'une fermeture éclair. Si cette valeur est négative, la valeur spécifique au kart sera utilisée.
* **Zipper speed gain:** Un gain de vitesse supplémentaire unique - le kart ajoutera instantanément cette quantité de vitesse à sa vitesse actuelle. Si cette valeur est négative, la valeur spécifique au kart sera utilisée.
* **Zipper minimum speed:** Fixe une vitesse minimale pour les karts lancés depuis le zipper (par exemple pour les sauts). Si cette valeur est négative, aucune vitesse minimale ne sera fixée.

### Personnalisation Zippers

Il est très difficile de fabriquer des fermetures à glissière exactement comme vous le souhaitez, mais ce guide d'OzoneOne devrait vous aider.

1. Placez le saut de façon à ce qu'il y ait une grande zone d'atterrissage adaptée aux vitesses élevées du mode SuperTux.
2. Réduire la propriété **Zipper speed gain** à quelque chose de très petit, comme 0.5. Cela ne donne qu'un petit coup de pouce en mode SuperTux, afin que les joueurs ne dépassent pas complètement le saut.
3. Définir la propriété **Zipper minimum speed** à une valeur suffisamment élevée pour que le joueur puisse franchir le saut dans n'importe quelle difficulté, de novice à SuperTux.

{% single_gallery /assets/wiki/Basic_jump_dimesions.jpg %}

## Sections aimantées

Les sections aimantées permettent aux karts de rouler sur n'importe quelle surface, quelle que soit son orientation. Les karts peuvent ainsi rouler sur des murs, des toits, etc. Les sections magnétiques sont contrôlées par texture, il suffit donc de sélectionner la texture utilisée sur la partie inclinée ou renversée de votre piste dans le panneau "Antarctica/SuperTuxKart Properties > Interaction", cocher la case "Affect gravity".

De nombreuses textures dans le dépôt multimédia sont également configurées pour être des sections aimantées. Vérifiez le fichier [Materiels.xml](Materials_xml) dans le dossier `textures` du dépôt `stk-assets`.

## Réinitialisation (Rescue) du joueur

La réinitialisation du joueur le ramène sur la piste. Les joueurs qui tombent dans l'abîme seront automatiquement secourus, mais pour rendre la piste plus agréable, assurez-vous d'avoir un système de réinitialisation pour les joueurs qui s'éloignent de la piste. Cependant, ne secouez pas immédiatement un kart qui sort de la route. Utilisez d'autres méthodes, comme un effet de ralentissement, pour garder les joueurs sur la route.

### Rouler sur

Vous pouvez paramétrer une texture pour qu'elle réinitialise le joueur chaque fois qu'il roule dessus. Pour ce faire, sélectionnez d'abord un matériau, puis dans le panneau "Antarctica/SuperTuxKart Properties > Interaction", cochez la case "Reset kart (on drive)".

### Lors d'une collision (par texture)

Sélectionnez d'abord un matériau, puis dans le panneau de "propriétés Antarctica/SuperTuxKart > Interaction", cochez la case " Collision action ". Dans le menu "Action", sélectionnez "Rescue kart".

{%popup_info Le sauvetage du joueur en cas de collision avec un objet est abordé dans la section [Interaction Kart Objet](#interaction-kart-objet) ci-dessous.%}

## Traction, Collision et Friction

Sélectionnez n'importe quel matériau, puis dans le panneau Propriétés d'image de SuperTuxKart, sous "Interaction", cochez l'une des cases suivantes:

* **Enable Slowdown:** Ralentit les karts qui roulent sur cette texture; utile pour les textures qui ne sont pas sur la route principale.
* **High tires adhesion:** Cette texture permet aux karts d'avoir une meilleure adhérence
* **Ignore (ghost material):** a texture est toujours visible, mais les karts peuvent la traverser comme si elle n'existait pas

### Champs de force

Pour activer un effet de champ de force sur un matériau, vous pouvez cocher la case "Collision action" et régler "Action" sur "Push back kart" (repousser le kart). Les sphères translucides de l'overworld (bulles des défis du mode histoire) utilisent cette action pour vous empêcher d'entrer dans les défis verrouillés.

## Lissage des normales

Le lissage des normales permet une conduite plus douce en interpolant les *normals*, des lignes imaginaires perpendiculaires aux surfaces. Cela permet aux pistes d'être plus lisses dans le moteur physique sans augmenter le nombre de polycodes pour la piste dans le moteur graphique. Cependant, comme les normales doivent être interpolées, cela peut poser des problèmes lorsque l'objet sur lequel on roule n'est pas séparé des murs. Il convient donc de l'utiliser avec prudence.

Pour activer le lissage des normales, cochez la case "Smooth Normals" dans le panneau des propriétés de la scène de SuperTuxKart.

## Interaction Kart Objet

Rendre les objets interactifs rend votre piste plus intéressante. Certaines choses ne sont possibles qu'avec des scripts, qui seront abordés dans un prochain module, mais pour une interaction de base, quelques actions peuvent être facilement définies.

Sélectionnez un objet dans la fenêtre 3D View de Blender, puis, dans le panneau SuperTuxKart Object Properties, donnez à l'objet le type "Object", "LOD Instance" ou "LOD Standalone" (selon si vous utilisez le LOD pour cet objet). Le menu "Interaction" propose plusieurs options:

{%popup_info Tous les types d'interaction, à l'exception de "Ghost", permettent de configurer la propriété **Shape**. Celle-ci est utilisée pour les objets animés, mais s'applique à tous les objets qui ne sont pas exportés en tant que partie de la piste principale. Choisissez une forme avec soin ou réglez "Interaction" sur "Fantôme", sinon vous risquez de vous retrouver avec des barrières invisibles dans votre piste. (voir [Animation des décorations](Animating_Decorations))%}

* **Ghost:** L'objet est visible, mais les karts le traversent comme s'il n'existait pas. Cette méthode peut être appliquée à de nombreux objets afin de réduire la charge du moteur physique.
* **Static (won't move):** Il s'agit de l'option par défaut. L'objet ne peut pas être déplacé par des karts.
* **Movable by player:** Les karts peuvent pousser cet objet, ce qui est idéal pour les cônes routiers ou les balles. Cependant, ils ne peuvent PAS avoir d'animation IPO (cela n'aurait pas de sens de toute façon). Cela crée également une nouvelle option:
    * **Mass (kg):** Plus un objet est lourd, plus il sera difficile pour un kart de le pousser. Un kart de poids moyen pèse 225 kg. Les ballons de plage de l'île du Grand Paradis pèsent 5 kg, ce qui est irréaliste.
* **Reset player:** Le kart sera replacé sur la piste en cas de collision avec cet objet.
* **Knock player:** Le kart sera projeté en l'air lors de la collision avec cet objet, comme s'il était frappé par une boule de bowling.
* **Flatten player:** Le kart sera aplati, comme s'il avait été frappé par une tapette à mouches.

Le type Object dispose également d'une option d'interaction que LOD Instance et LOD Standalone n'ont pas: **"Physics only"**. C'est l'inverse de "Ghost": l'objet sera invisible, mais pourra toujours être heurté par les karts.

## Canons

Les canons permettent de lancer des karts sur de longues distances sans le manque de fiabilité des zippers. Il s'agit d'une simulation de tir à travers un canon.

Pour créer un canon, tracez d'abord une ligne avec deux points à l'endroit où vous voulez que le canon commence. Lorsqu'un kart passera sur cette ligne, il sera touché par le canon. Ensuite, tracez une courbe de Bézier dont le début se situe près de la ligne de départ du canon et la fin près de l'endroit où vous voulez que les karts atterrissent. Les karts suivront cette trajectoire pendant leur vol depuis le canon. Enfin, tracez une autre ligne avec deux points près de l'extrémité de la courbe de Bézier. C'est là que les karts s'arrêteront.

{%popup_info Essayez de faire en sorte que les lignes de départ et d'arrivée soient à peu près perpendiculaires à la courbe de Bézier. La transition entre la conduite et le vol sera ainsi plus fluide. Si vous les faites pivoter ou les mettez à l'échelle en mode objet, assurez-vous d'aller dans **Objet > Appliquer > Rotation et échelle** dans le menu de la fenêtre Vue 3D.%}

Donnez à la deuxième ligne le type "Cannon End" dans le panneau des propriétés d'objet de SuperTuxKart. (Note : Il n'est pas nécessaire de donner à la courbe de Bézier un type d'objet spécial.) Donnez à la première ligne le type "Cannon Start". Cela ouvre les options suivantes dans le panneau Propriétés de l'objet SuperTuxKart pour la ligne de départ du canon:

* **Flight end line:** Utilisez le menu déroulant pour sélectionner la ligne de fin de canon que vous avez créée ci-dessus.
* **Path:** Utilisez le menu déroulant pour sélectionner la courbe de Bézier que vous avez créée ci-dessus.you created above.
* **Speed:** C'est la vitesse du kart. Pour les longues distances, veillez à ce que le kart se déplace rapidement.

{%popup_info Veillez à ce que la driveline ou navmesh inclue la ligne de départ des canons et la trajectoire de vol!%}

{% include art_portal %}
