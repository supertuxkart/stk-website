---
title: Track Editor
toc: true
---
## Installation
------------------------------------------------------------------------

Visiter [ici](https://github.com/supertuxkart/stk-editor).

## Faire une Piste
------------------------------------------------------------------------

### ***Les bases***

Vous pouvez trouver un tutoriel rapide [ici](Track_Editor_Tutorial).

#### Nouvelle Piste

En cliquant sur l'icône " New " dans la barre d'outils, la fenêtre de dialogue de la nouvelle piste s'affiche. Avant de créer la piste, il y a quelques éléments à configurer:

* Track name: le nom qui est affiché dans SuperTuxKart. Il peut contenir des caractères spéciaux.
* Designer: votre nom. Il peut également contenir des caractères spéciaux.
* File name: le nom du répertoire de la piste. Il doit s'agir d'un nom de répertoire valide (il n'est pas nécessaire qu'il existe), et il ne peut pas contenir de caractères non ASCII.
* Size: la taille de la carte. Attention: vous ne pourrez plus la modifier par la suite.
* Gravity Roads: si vous cochez cette case, les routes que vous créez avec le créateur de routes intégré à l'éditeur auront leur propre gravité.

***Raccourci clavier:*** ctrl + n

#### Ouvrir la Piste

Les pistes sont sauvegardées dans le répertoire `editor/maps`. Utilisez la fenêtre de dialogue d'ouverture de fichier pour sélectionner la carte souhaitée.\
***Raccourci clavier:*** ctrl + o

#### Sauvegarder

L'éditeur ne sauvegarde pas automatiquement, alors sauvegardez souvent - l'électricité peut être coupée à tout moment : (. (Même si vous disposez d'une alimentation électrique ininterrompue, sauvegarder fréquemment peut vous éviter d'être frustré après un crash). Faites également attention aux noms de pistes: enregistrer une nouvelle piste avec un nom déjà existant écrasera l'ancien.\
***Raccourci clavier:*** ctrl + s

#### Exporter

Avant de pouvoir essayer votre piste, vous devez la construire. Pour ce faire, cliquez sur le bouton d'exportation: si tout se passe bien, vous avez un message réconfortant.

#### Essayer

En cliquant sur l'icône d'essai, vous pourrez lancer le jeu avec la piste ouverte. Si vous souhaitez vérifier les dernières modifications, exportez toujours votre piste avant de cliquer sur cette icône.

### ***Cameras***

L'éditeur dispose de deux caméras. Vous pouvez passer de l'une à l'autre en utilisant l'icône "Toggle camera mode" ou le raccourci clavier "c".

#### Caméra par defaut

Il s'agit d'une caméra orthographique, utilisée pour éditer la piste. Elle dispose d'un mécanisme de contrôle similaire à celui de Blender: faites défiler la souris avec la molette pour zoomer, maintenez enfoncé le click molette et déplacez la souris pour tourner, faites la même chose lorsque vous appuyez sur "shift" pour vous déplacer. Pour effectuer la seconde opération, vous pouvez également utiliser les touches 'w', 'a', 's', 'd'.\
***Raccourci clavier:*** \
pavé numérique 1 – revenir à la position de départ et à la rotation\
pavé numérique 2 – vue de derrière\
pavé numérique 8 – vue de face\
pavé numérique 4 – vue de gauche\
pavé numérique 6 – vue de droite

#### Caméra Maya

L'autre est une caméra à perspective, qui peut vous donner une meilleure vue de l'aspect réel de la piste. C'est l'une des caméras par défaut d'Irrlicht avec un système de contrôle similaire à Maya: utilisez le bouton gauche de la souris pour tourner, le bouton droit de la souris pour se déplacer et le bouton du milieu de la souris pour zoomer.

### ***Terrain***

L'éditeur dispose de quelques outils pour manipuler le terrain: il est possible de créer la topographie et de dessiner quatre textures différentes sur la surface. Vous pouvez définir le rayon, l'intensité et le type de bordure des outils. Le terrain ne peut contenir que quatre textures différentes, de sorte que le changement de l'une d'entre elles la remplace également dans la piste.

#### Modifier la hauteur

Cliquez sur l'icône en forme de pelle pour sélectionner l'outil de modification de hauteur. En maintenant le bouton gauche de la souris enfoncé, vous augmentez et le bouton droit de la souris diminue la surface dans la zone sélectionnée. Vous pouvez également définir une hauteur minimale ou maximale à l'aide des cases à cocher et des zones de texte situées près de l'icône de la bêche.

#### Brosse douce (Soft brush)

Cet outil permet de mélanger différentes textures. En maintenant le bouton gauche de la souris enfoncé, on ajoute et le bouton droit de la souris soustrait la texture sélectionnée de la zone concernée.

#### Brosse dure (Hard brush)

Utilisez cet outil pour remplacer la texture par celle sélectionnée en utilisant le bouton gauche de la souris, ou pour l'effacer entièrement en utilisant le bouton droit de la souris. La quatrième texture est l'image d'arrière-plan par défaut, elle ne peut donc pas être supprimée, mais seulement remplacée par les trois autres.

#### L'outil Luminosité (Brightness)

L'outil Luminosité est un peu bizarre. Il n'est pas affecté par la texture sélectionnée. Si vous souhaitez obtenir un mélange plus sombre de deux textures, voici comment procéder : dessinez d'abord les deux textures avec la brosse douce, puis utilisez cet outil avec le bouton gauche de la souris pour les rendre plus sombres. Le bouton droit de la souris remplace lentement la présence des trois premières textures, en augmentant la visibilité de celle de l'arrière-plan.

### ***Ciel***

Le ciel n'est qu'une immense boîte. Vous pouvez le manipuler en changeant les images des différents côtés. Cliquez sur les images du ciel dans le panneau du terrain pour ouvrir la fenêtre du sélecteur de texture et sélectionnez celle qui vous convient. Après avoir modifié une ou deux images, passez à la caméra Maya pour voir les résultats.

### ***Objets***

Après avoir sélectionné un objet dans le panneau d'environnement, vous pouvez le placer sur le terrain en utilisant le bouton gauche de la souris. Si vous avez fini de placer les objets, vous pouvez utiliser le bouton droit de la souris pour quitter l'état de placement.
Le bouton gauche de la souris sélectionne les objets. Le bouton droit de la souris exécute l'opération active sur les objets sélectionnés: par défaut, il s'agit du déplacement. Le fait d'appuyer sur le bouton droit de la souris et de déplacer la souris lance la modification. Appuyez à nouveau sur le bouton droit de la souris pour annuler, ou sur le bouton gauche de la souris pour accepter la modification. Vous pouvez passer à l'échelle et à la rotation à l'aide des icônes de la barre d'outils ou des touches de raccourci. Il existe deux types de rotation, la même touche de raccourci permet de passer de l'un à l'autre.
***Raccourci clavier:*** \
shift + a: selection\
shift + r: rotation\
shift + s: échelle\
shift + g: déplacement\
Delete: supprimer objets sélectionnées

***Maillages routiers***

Il existe un outil basé sur les splines pour la création de la géométrie des routes.

Utilisez la zone de texte pour donner un nom à la route, puis la boîte combo pour choisir le type de spline. Cliquez sur le bouton " Create Road ", puis vous pouvez définir la route en plaçant des points de contrôle (cliquez sur le terrain avec le bouton gauche de la souris). Utilisez le clic droit ou l'icône "Finish Point Placing" pour terminer le processus. Vous pouvez modifier, ajouter ou supprimer des points ultérieurement. Il y a deux splines pour le moment: celle de Bézier est une approximation, celle de TCR est une interpolation. La seconde signifie que la route traversera exactement les points - cela facilite l'édition, mais le résultat peut être plus laid.

Utilisez les barres de défilement pour modifier la largeur, le niveau de détail ou la résolution de la texture de la route. Cliquez sur le bouton texture pour sélectionner une texture.

Les points de contrôle sont visualisés comme trois sphères dans la fenêtre: l'énorme rouge représente la position du point, le déplacement du bleu modifiera la largeur de la route autour du point, le vert est là pour définir la normale. Le bleu et le vert sont toujours positionnés par rapport au rouge, donc déplacer le rouge les déplacera également.

Un bouton permet de passer au mode section transversale de la route, où vous pouvez modifier la forme de la route. La formation que vous créez ici sera utilisée en tout point de la spline pour générer la route. Les modes grille et symétrie sont là pour vous aider dans votre travail, vous pouvez les modifier à l'aide des boutons. Vous pouvez également modifier le nombre de points de la section transversale de la route, mais le rectangle par défaut est à nouveau utilisé.

### ***DriveLine***

La driveline est là pour guider l'IA, et contient également des informations sur la piste. Vous pouvez l'activer avec le bouton "Select DriveLine" dans la barre d'outils, ou en sélectionnant "DriveLine" dans la boîte combo du panneau de route. Elle doit être placée avec soin, assez près du terrain, mais toujours à l'extérieur.
L'insertion de points de contrôle fonctionne comme les maillages de route, mais la driveline est constituée de quads, donc pas d'édition de section transversale, pas de textures. La ligne de départ de la piste sera proche du premier point, et la direction est la même que lorsque vous placez les points. Sélectionnez une route et cliquez sur le bouton "Attach road to driveline"(attacher la route à la chaîne de transmission) pour étendre le tracé de la driveline avec la route.

### ***CheckLine***

Placez des checklines (lignes de contrôle) pour empêcher les joueurs de tricher. Une seule devrait suffire, aussi loin que possible de la ligne de départ. Si vous voulez en avoir plus, vous devez les placer dans l'ordre dans lequel le joueur doit les franchir. Vous définissez une ligne de contrôle en plaçant deux sphères, que vous pouvez sélectionner et déplacer ultérieurement. Placez-la avec soin, assurez-vous que les joueurs la franchiront vraiment, sinon leur tour ne sera pas valide :(

### ***Items***

Banana, gift, small nitro, big nitro – ils fonctionnent exactement comme des objets, mais ils ont leur propre panneau.

## Objets personnalisés
------------------------------------------------------------------------

### ***Textures personnelles***

Pour utiliser vos propres textures, il vous suffit de les copier dans le répertoire `stk-assets/textures` avant de lancer l'éditeur. Cependant, si vous souhaitez publier votre piste, vous devez copier vos propres textures dans le répertoire de la piste, sinon les autres ne verront pas vos images.

### ***Objets personnelles***

Vous avez votre propre modèle, prêt à être chargé dans l'éditeur? Cool, nous sommes prêts! Vous devez faire trois choses:
* Placez le modèle dans le répertoire `editor/obj`.
* Placez une image de présentation dans le répertoire `editor/img`.
    * cela vous aide à trouver votre modèle dans le panneau de l'éditeur.
* créer un fichier xml dans le répertoire `editor/xml` - il devrait s'agir d'un fichier texte sauvegardé sous le nom de something.xml.

Voici un exemple:

{%popup_code
xml
<?xml version="1.0"?>
<object name="horse" category="animal">
      <img path="horse.png">
      <model path="horse.b3d">
      <tag name="mount">
      <tag name="farm">
</object>%}

Dans l'éditeur, vous pouvez filtrer les modèles en sélectionnant une catégorie à l'aide d'une liste déroulante, et rechercher des modèles par nom et par étiquette.
