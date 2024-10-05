---
title: Fichier de particules
display_title: true
---
Vous pouvez ajouter des émetteurs de particules n'importe où dans une piste. Il suffit de créer un élément de type vide, de lui donner le type **Particle emitter**, et dans la propriété **particle kind** d'entrer le nom du fichier décrivant les particules que vous souhaitez utiliser.

Pour obtenir la liste des fichiers de particules actuellement disponibles, consultez le dossier **data/gfx**. Vous devriez pouvoir créer de nouveaux types de particules en dupliquant une particule existante et en modifiant ses propriétés.

## Emetteurs de points

Les émetteurs de point peuvent être créés de la manière suivante:

{%popup_code
xml
<?xml version="1.0"?>
<particles emitter="point">

    <spreading angle="24" />

    <velocity  x="0.000"
               y="0.005"
               z="0.000" />

    <material  file="particle_sand.png" />

    <rate      min="30"
               max="50"
               decay_rate="10" />

    <lifetime  min="300"
               max="500" />

    <size      min="0.6"
               max="0.8" />

    <color     min="255 255 255"
               max="255 255 255" />

    <fadeout   time="300" />

    <gravity   strength="-0.01"
               only-force-time="500" />

</particles>%}

**velocity** indique dans quelle direction les particules se déplacent et à quelle vitesse

**spreading angle** indique de quelle ampleur les particules peuvent s'écarter aléatoirement de leur direction de base définie par leur vitesse.

**material** contient le nom du fichier à utiliser pour les particules et autres paramètres.

**rate** indique la quantité de particules à émettre par seconde (le taux précis varie de manière aléatoire)

* **decay_rate**=*valeur* (facultatif) si elle est définie et supérieure à 0, le nombre de particules émises diminuera de *valeur* par seconde jusqu'à ce que l'émission s'arrête. Utile pour les explosions.

**lifetime** indique pour combien de temps une particule vit avant de disparaître, ici aussi une valeur sera choisie aléatoirement entre min et max

**size** indique la taille de chaque particule, ici aussi une valeur sera choisie aléatoirement entre min et max

Pour créer une particule qui grandit avec le temps, ajoutez des propriétés "increaste-factor" comme ceci:

`<size min="0.65" max="0.95" x-increase-factor="0.6" y-increase-factor="0.6" />`

**color** indique la couleur appliquée aux particules (255,255,255 est blanc et signifie qu'aucune coloration n'est effectuée), ici aussi une valeur sera choisie aléatoirement entre min et max

**fadeout time** est un effet optionnel qui permet aux particules de s'estomper progressivement à la fin de leur durée de vie, au lieu de disparaître purement et simplement. Le temps indiqué est le nombre de millisecondes avant la fin de la vie d'une particule où la disparition doit se produire.

**gravity** est un effet optionnel qui fait dévier les particules de leur vitesse initiale vers le sol ; *only-force-time* indique le temps nécessaire à la gravité pour "reprendre" la vitesse initiale

## Emetteurs de Boîtes

Tous les paramètres sont similaires, à l'exception de la variable d'ouverture qui est:

`<particles emitter="box" box_x="12.0" box_y="0.5" box_z="12.0">`

où box_x, box_y et box_z indiquent la taille de boîte de l'émetteur

## Emetteurs de Sphères

Tous les paramètres sont similaires, à l'exception de la variable d'ouverture qui est:

`<particles emitter="sphere" radius="0.3">`
