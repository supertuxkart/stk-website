---
title: 'Faire des objets de bibliothèque: Propriétés et Modélisation'
display_title: true
---
Cette page n'entrera pas dans les détails de la modélisation - n'importe quel tutoriel de Blender peut vous aider à cet égard. Voir [ici](https://www.blender.org/support/tutorials/) pour une liste de bons tutoriels.

## Modélisation

Utilisez les méthodes dont vous avez besoin pour modéliser vos objets. Cependant, il est utile de comprendre un peu la mise à l'échelle des objets - pour plus d'informations, voir la page [Directives pour les modèles 3D]( 3D_Model_Guidelines), que vous devriez avoir déjà lue. Si vous utilisez le niveau de détail, vous pouvez passer à la page [Niveau de détail]( Level_of_Detail), puis revenir à cette page.

## Propriété

Dans Blender, vous devez d'abord cocher la case **Is a SuperTuxKart library node** dans le panneau **SuperTuxKart Scene Properties**.

Définissez **Code (nom du dossier)** par l'identifiant de l'objet de bibliothèque. (Vous devriez en avoir choisi un après avoir lu [Notes](Making_Library_Nodes:_Notes)).

### Propriétés d'objets

Vous devez avoir au moins un objet principal qui sera visible dans Blender lorsque quelqu'un utilise votre objet de bibliothèque.

* Si vous avez créé un objet de bibliothèque avec un seul objet, celui-ci sera votre objet principal. Il suffit de définir l'objet comme étant de type **Object** dans le panneau de **Propriétés d'objet de SuperTuxKart**.
* Si vous utilisez le [Niveau de détail](Level_of_Detail), votre **LOD Instance** sera l'objet principal.
* N'utilisez pas le type d'objet **None** ; il est réservé aux pistes, aux arènes et aux cinématiques.
* Vous pouvez utiliser le type **Ignore** pour empêcher l'exportation d'objet.

{% include art_portal %}
