---
title: 'Faire des Karts: Icônes'
display_title: true
---
La création d'une icône est la dernière étape de la création d'un kart. Bien que cela semble simple, de nombreux fils de discussion ont révélé que les icônes sont, pour une raison ou une autre, un sujet très controversé. Cette page présente quelques règles techniques et artistiques que vous pouvez suivre pour vous assurer que les icônes de votre personnage s'intègrent bien.

## Directives techniques et instructions

* Dessinez d'abord votre croquis dans un éditeur de graphiques vectoriels comme Inkscape, afin de pouvoir le mettre à l'échelle si nécessaire. Si vous n'êtes vraiment pas à l'aise avec les graphiques vectoriels, ce n'est pas grave.
* L'icône doit être de 128×128 pixels lors de l'exportation, mais n'oubliez pas qu'elle sera redimensionnée à 64×64px dans le jeu.
* Utilisez le format PNG comme format final.
* Si elle n'est pas belle à l'échelle 32×32px, faites-en une version moins détaillée et utilisez-la comme icône de la minimap (voir les instructions ci-dessous).

### Ajouter votre icône au kart

Après avoir copié votre fichier d'icône dans le même dossier que celui contenant votre fichier blend et le kart exporté, allez dans le panneau des propriétés de la scène SuperTuxKart dans Blender et renseignez le nom de fichier de votre icône dans le champ **Icon**. Si vous avez une icône différente pour la minimap, mettez le nom de ce fichier dans le champ **Minimap Icon**, sinon remplissez le champ avec le même nom de fichier que l'icône normale.

## Lignes directrices artistiques

Les fichiers d'icônes doivent généralement représenter le visage du personnage, comme c'est le cas pour toutes les icônes par défaut. Nous aimerions que toutes les icônes soient exactement du même style, mais nous comprenons que ce n'est pas raisonnablement possible. Voici donc quelques lignes directrices stylistiques amicales que vous pouvez utiliser pour faire en sorte que l'icône de votre personnage s'intègre.

* Votre personnage doit être souriant, sauf s'il s'agit d'un personnage maléfique.
* Le dessin doit être caricatural et ne pas être trop détaillé. Notre motif (inauguré par yeKcim, qui a conçu les icônes de la version 0.7) est constitué d'yeux larges et connectés et d'un léger dégradé pour la couleur principale, bien que le [style de Jymis](https://forum.freegamedev.net/viewtopic.php?f=18&t=7144) soit également tout à fait approprié, en élargissant le style avec des expressions faciales plus sophistiquées.
* N'essayez pas de peindre la Joconde. L'icône doit être belle, mais si nécessaire, ignorez les commentaires que vous recevez, à moins qu'ils ne soulèvent de véritables problèmes avec l'icône.
* Faites en sorte que le personnage soit tourné à ~45° vers la gauche. En d'autres termes, les yeux seront plus à droite lorsque vous regarderez le personnage. Une icône où le personnage regarde fixement l'écran risque d'être un peu effrayante.

{% include art_portal %}
