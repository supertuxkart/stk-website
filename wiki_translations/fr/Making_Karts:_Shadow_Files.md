---
title: "Faire des Karts: Fichiers d'ombres"
toc: true
---
Ce court tutoriel explique comment créer une carte d'ombre de kart de forme parfaite, en utilisant le modèle de kart dans Blender et un logiciel d'édition graphique comme The GIMP.

Les manipulations suivantes devront être effectuées à chaque fois que vous modifierez le modèle du kart, ce qui aura un impact sur son aspect en vue de dessus (par exemple, transformations à l'échelle supérieure et inférieure). Il est donc préférable de finaliser le modèle avant de créer l'ombre.

## Faire une capture d'écran

{% single_gallery /assets/wiki/Kart_shadow_tutorial_1.jpg %}

Passez en vue de dessus (pavé numérique 7) en plein écran (Ctrl + barre_espace) en mode orthogonal (pavé 5 pour basculer persp/ortho) dans Blender, ajoutez un fond vert en utilisant **Ajouter > Image > Arrière-plan** et mettez-le à l'échelle pour qu'il corresponde au carré (-1, -1) (1, -1) (1, 1) (-1, 1) sur le plan (X, Y).

{% single_gallery /assets/wiki/Kart_shadow_tutorial_2.jpg %}

Prenez ensuite une capture d'écran avec la grille 3D cachée via **surimpression de la vue > Guides > Grille** comme indiqué.

## Recadrage de capture d'écran

{% single_gallery /assets/wiki/Kart_shadow_tutorial_3.jpg %}

Ouvrez ensuite votre capture d'écran dans votre programme d'édition graphique préféré. Recadrez simplement votre image en suivant le carré vert que nous avons ajouté plus tôt. Grâce à cela, l'ombre aura la bonne échelle sur l'image de l'ombre.

## Obtenir la forme de l'ombre

{% single_gallery /assets/wiki/Kart_shadow_tutorial_4.jpg %}

Avec l'outil de sélection floue (ou baguette magique), sélectionnez l'arrière-plan coloré (n'oubliez pas de cliquer dans toutes les zones fermées), puis inversez la sélection pour qu'elle corresponde à la forme du kart.

{% single_gallery /assets/wiki/Kart_shadow_tutorial_5.jpg %}

Ajustez la sélection d'environ 10px (cette valeur peut devoir être ajustée en fonction de la résolution de votre écran), puis augmentez-la éventuellement de 2 ou 3px, afin d'adoucir l'ombre.

## Filling shadow

{% single_gallery /assets/wiki/Kart_shadow_tutorial_6.jpg %}

Créez un calque transparent et remplissez votre sélection de noir avec une opacité de 50 % à l'aide de l'outil seau.

## Sauvegarder

{% single_gallery /assets/wiki/Kart_shadow_tutorial_7.jpg %}

Ensuite, redimensionnez votre image à 256x256 (ou même 128x128 si elle ne contient pas beaucoup de détails), cachez ou supprimez votre calque vert, et enregistrez l'image au format PNG, avec transparence.

{% single_gallery /assets/wiki/Kart_shadow_tutorial_end.png %}

Voici votre ombre finale. Pour la peaufiner, vous pouvez également ajouter des zones plus sombres comme dans celle de Puffy:

{% single_gallery /assets/wiki/Puffy_shadow.png %}

Lorsque vous avez terminé avec votre image d'ombre, entrez son nom de fichier dans la case **Shadow** du panneau Propriétés de la scène de SuperTuxKart. N'oubliez pas de la copier avec vos fichiers kart exportés.

{% include art_portal %}
