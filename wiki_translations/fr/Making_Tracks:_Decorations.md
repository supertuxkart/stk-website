---
title: 'Faire des Pistes: Décorations'
toc: true
---
L'ajout de décorations est un processus long. Il faudra de nombreuses répétitions de tests dans le jeu jusqu'à ce que vous soyez sûr que tout est à la bonne place. Cet article décrit non seulement les meilleures façons de positionner les décorations, mais aussi les moyens de rendre les décorations dynamiques et intéressantes, et de limiter la charge du processeur.

## Directives pour la mise en place des décorations

### Autour de la ligne de départ

Les décorations doivent clairement marquer la ligne de départ. Il peut s'agir d'une arche comme dans Cocoa Temple, d'un panneau aérien ou même simplement d'une ligne à carreaux. Évitez d'induire le joueur en erreur avec des décorations qui ressemblent à une ligne de départ, mais qui n'en sont pas, comme dans Hacienda : L'arche d'entrée ressemble beaucoup à une ligne de départ, mais n'en est pas une.

### Autour des raccourcis ou des routes alternatives

Les raccourcis et les routes alternatives doivent être quelque peu dissimulés, à moins qu'ils ne soient très courts (par exemple, deux chemins autour d'un objet). Le village de Cocoa Temple en est un excellent exemple: il y a deux chemins alternatifs dans le village, mais ils ne sont pas très visibles, à moins que vous n'y prêtiez attention. Le fait de cacher les chemins alternatifs donne au joueur un sentiment d'accomplissement lorsqu'il les découvre, et rend plus difficile l'obtention de la récompense.

### Le long de la route principale

La piste ne doit pas être une simple boucle ennuyeuse avec quelques jolis paysages sur les côtés. Le paysage doit *s'intégrer* à la piste. Par exemple, ne faites pas une montagne à côté de la piste, faites-la passer au-dessus de la piste et construisez un tunnel. Ce genre de choses rend la piste plus intéressante et ne donne pas l'impression de conduire dans un musée où tout est sous plexiglas. (C'est aussi la raison pour laquelle il peut être difficile de construire une piste sous-marine intéressante - tout est vraiment derrière une vitre).

Cependant, ne rendez pas votre piste inutilement confuse. Intégrez votre piste *aussi* et il sera impossible de distinguer ce qui est piste et ce qui est décorations. STK Enterprise trouve un bon équilibre entre l'intégration et la facilité de conduite. S'il est plus difficile pour les autres de savoir où aller dans votre piste que dans celle de STK Enterprise, vous devriez peut-être reconsidérer l'emplacement de certaines de vos décorations.

### En tant qu'obstacles

Vous pouvez placer des décorations directement sur la piste si vous le souhaitez, comme avec les caisses de TNT dans Old Mine. Cependant, veillez à ce qu'elles interagissent avec les karts d'une manière raisonnable. (Voir la section [Physique](Physics) section.)

## Copies multiples d'une décoration

Si vous avez une décoration qui est utilisée plusieurs fois tout au long de votre piste et qu'elle ne provient pas du référentiel média, vous pouvez économiser de l'espace en en faisant un objet séparé. Dans le panneau Propriétés d'objet de SuperTuxKart, pour chacun des objets, réglez son type sur "Objet" et réglez la propriété "Nom" sur le même nom pour chacun des doublons.

Si vous utilisez le LOD pour vos objets dupliqués (voir le module [Niveau de détail](Level_of_Detail)), vous n'avez pas à vous en préoccuper.

## Systèmes de particules pour la distribution de décorations

Vous pouvez utiliser le système de particules de Blender pour disperser des objets de manière aléatoire. Tout d'abord, assurez-vous que l'objet que vous souhaitez distribuer est défini en tant que type Object, LOD Standalone, ou LOD Instance dans le panneau Object Properties de SuperTuxKart. Si vous utilisez un objet lié à la bibliothèque (voir ci-dessous), assurez-vous que vous avez déjà créé un proxy.

Ensuite, sélectionnez l'objet sur lequel vous souhaitez que l'objet soit distribué. Dans la fenêtre Propriétés de Blender, dans la section Particules, cliquez sur le bouton plus (+) pour ajouter un système de particules. Vous pouvez donner un nom aux paramètres de particules afin de pouvoir les utiliser également sur d'autres objets.

{% single_gallery heights=300px
/assets/wiki/Particlesystem.jpg,Particle system properties
/assets/wiki/Particlesystem3dview.jpg,Particle system in Blender
/assets/wiki/Particlesystem_ingame.jpg,Particle system in-game
%}

<div><br/></div>

{%popup_info Il est préférable que l'objet à partir duquel les particules sont émises soit une surface semi-plate (c'est-à-dire qu'il ne s'agisse pas d'un polyèdre). Si ce n'est pas le cas, vous vous retrouverez avec des objets émis un peu partout, là où vous ne le souhaitez pas.%}

Sous **Emission**, définissez les propriétés suivantes:

* Nombre : il s'agit du nombre d'objets qui seront émis.
* Réglez les paramètres "Frame de Début" et "Fin" sur 1,0.
* Vous pouvez cocher la case "Utiliser la pile de modificateurs" si vous utilisez des modificateurs sur la surface qui émettront des objets.

Sous **Vélocité**, réglez "Normal" sur 0,0. Cela permet de s'assurer que les objets seront à la verticale.

Sous **Physique**, définissez les propriétés suivantes:

* Sélectionner "Aucun" au lieu de "Newtonien".

Sous **Rendu**, définissez les propriétés suivantes :

* Sélectionnez "Objet" au lieu de "Halo".
* Définissez "Instance Object" comme étant le nom de votre objet, instance LOD, LOD Standalone ou proxy de nœud(objet) de bibliothèque.

C'est fait ! Maintenant, ces objets seront exportés en tant que composants de votre piste!

## Décorations du dépôt multimédia

Dans la mesure du possible, vous devriez utiliser des décorations provenant du dépôt de médias. Vous pouvez être sûr qu'elles correspondent au style de SuperTuxKart, qu'elles utilisent des effets graphiques avancés pour s'assurer qu'elles sont belles, et qu'elles vous épargnent du travail, puisque vous n'avez pas besoin de fabriquer et de texturer tous vos modèles. Si vous n'avez pas encore consulté le dépôt de médias, consultez la page [Dépôt multimédia]( Media_Repo).

{%popup_info **Arrêter!** Votre structure de fichier correspond-elle à celle décrite sur la page [Dépôt multimédia](Media_Repo)? Pour que d'autres personnes puissent ouvrir votre fichier Blender sans erreur, votre dossier de piste doit se trouver à l'intérieur du media repository!%}

Pour utiliser un modèle provenant du dépôt multimédia, dans Blender, dans la barre de menu, allez dans Fichier > Lier. Naviguez jusqu'au dossier de la bibliothèque dans le media repo, trouvez un objet, puis ouvrez le fichier .blend. Dans le dossier "Object", ouvrez l'objet que vous voulez. Il ne devrait normalement y avoir qu'un seul objet par .blend, à moins que le nœud(objet) de bibliothèque n'utilise [Niveau de Détail](Level_of_Detail). Faites-en un proxy en allant dans **Objet > Faire un proxy**(a partir de blender 3.0 "faire un proxy" à été remplacer par "Remplacements de bibliothèque." utiliser donc **Objet > redéfinition de bibliothèque**) dans l'en-tête de la fenêtre Vue 3D afin de pouvoir le déplacer, le faire pivoter et le mettre à l'échelle.

{%popup_info Si vos décorations sont de grande qualité, vous pouvez envisager de les séparer de votre piste et d'en faire des nœuds(objet) de bibliothèque. Voir la page [Créer des objets de librairie (library Node)](Making_Library_Nodes) pour plus d'informations.%}

Lorsque vous dupliquez un objet de la bibliothèque dans votre scène, veillez à utiliser Alt + D (duplication de lien) plutôt que Shift + D (duplication réelle). Si vous utilisez une duplication réelle, l'objet ne sera plus lié à la bibliothèque.

### Édition de décorations à partir du dépôt multimédia

En général, les objets provenant de la base de données multimédia sont suffisamment bons et peuvent être mis à l'échelle, pivotés ou repositionnés pour s'adapter à vos besoins. Toutefois, si nécessaire, vous pouvez utiliser Fichier > Ajouter au lieu de Fichier > Lier dans les instructions ci-dessus pour importer l'objet dans votre scène. Ce n'est pas recommandé, mais vous pouvez le faire dans certaines circonstances, si les modifications que vous prévoyez d'apporter ne peuvent pas être placées dans le média lui-même.

{% include art_portal %}
