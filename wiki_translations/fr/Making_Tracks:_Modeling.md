---
title: 'Faire des Pistes: Modélisation'
toc: true
---
Il est maintenant temps de commencer à modéliser la piste. En utilisant quelques astuces de Blender, les premières étapes seront faciles et agréables.

Cette méthode fonctionne mieux pour les pistes extérieures, mais elle est utile dans tous les cas pour créer facilement des drivelines. Si vous créez une piste intérieure, vous finirez probablement par remplacer toute la piste que vous avez créée lorsque vous créerez le bâtiment lui-même, mais c'est une étape importante pour vous assurer que votre piste est amusante à conduire.

{%popup_info Une autre méthode pour créer une route consiste à créer une courbe en utilisant la méthode ci-dessous, mais au lieu d'utiliser un modificateur de tableau et un modificateur de courbe, vous pouvez modifier la géométrie de la courbe, ce qui vous donne beaucoup plus d'options pour contrôler la forme de la route. Vous pouvez suivre ce [tutoriel](https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro/Bevelling_a_Curve) sur Wikibooks. Lorsque vous êtes prêt à exporter, convertissez la courbe en un maillage avec **Objet > Convertir > Maillage** à partir de Courbe. Gardez à l'esprit que la méthode du modificateur de tableau peut être utile pour créer une driveline plus tard.%}
<div><br/></div>

## Création d'un segment

Commencez par supprimer les objets par défaut créés par Blender (c'est-à-dire supprimez le cube, la lampe et la caméra). Créer un plan, passer en mode édition, donner-lui une largeur de 10 ou 12 unités Blender le long de l'axe Y, mais une longueur de seulement 2-4 unités le long de l'axe X. Si vous le souhaitez, vous pouvez [Texturation](Texturing) votre segment de route avec une texturation UV. Ce n'est pas encore nécessaire, surtout pour les pistes intérieures, mais cela vous épargnera beaucoup de travail dans l'éditeur UV plus tard pour les pistes extérieures.

## Extrusion de la route

Créez maintenant une courbe de Bézier. Pour la retrouver plus facilement par la suite, donnez-lui un nom. Pour faciliter l'ajout de points à cette courbe, dans les propriétés de la courbe, sous la rubrique Forme, sélectionnez **2D**. Vous voudrez plus tard sélectionner **3D** lorsque vous ajouterez des collines ou d'autres formations, mais l'utilisation de la 2D permet une plus grande précision lors de l'ajout de points. (Vous n'aurez pas de problèmes avec les points qui sont placés en dessous de l'endroit où vous le souhaitez ou des choses comme ça). Vous devez également régler la **Méthode de vrillage** sur **Z-Up**. Si vous ne le faites pas, vous risquez de vous retrouver avec une piste inclinée à un endroit où vous ne le souhaitez pas.

Sélectionnez le segment de route. Dans le panneau des propriétés, sous l'onglet des modificateurs, ajoutez deux modificateurs au segment de route. Ajoutez d'abord un modificateur de réseau, puis un modificateur de courbe.

Dans les options du modificateur de réseau :

* Définissez **Type d`ajustement** sur **Ajuster de la courbe**.
* Définissez **Courbe** sur le nom de votre courbe.
* Sélectionnez **Fusionner**.

Dans les options du modificateur de courbe:

* Réglez "Objet" sur le nom de votre courbe.

Sélectionnez maintenant la courbe et passez en mode édition. Vous pouvez ajuster les poignées de chaque point de la courbe pour modifier sa forme, et extruder des points à partir de chaque extrémité en sélectionnant un point d'extrémité et en utilisant les touches Ctrl+clic gauche de la souris. Vous verrez que la piste suit désormais la ligne. Continuez ainsi jusqu'à ce que la piste principale soit presque terminée et que les deux extrémités soient proches l'une de l'autre.

Maintenant, toujours en mode édition sur la courbe, dans la fenêtre 3D View, allez sur **Courbe > (Dés)activer Cyclique** ou **Alt+C**. Votre route sera désormais une boucle unique.

{%popup_info Les objets segments et courbes n'apprécient généralement pas d'être mis à l'échelle ou tournés. Cela signifie que vous ne devez mettre à l'échelle la courbe qu'en mode édition, jamais en mode objet. (Si vous les avez déjà mis à l'échelle, ne vous inquiétez pas, vous n'avez rien perdu ! Sélectionnez la courbe et le segment de modèle, puis appuyez sur Ctrl+A et sélectionnez "Rotation/Scale" ; ensuite, vous devrez probablement aller dans le mode d'édition de la courbe, sélectionner tous les sommets et modifier la propriété du rayon dans le panneau "N", ou simplement sélectionner "Propriété d'objet" dans le panneau de propriétés standard et désactiver "Radius").

Si votre courbe est encore en 2D, vous devrez la passer en mode 3D pour pouvoir appliquer une rotation. Vous pouvez ensuite la ramener en mode 2D.%}

## Rendre la route utilisable

Il faut maintenant pouvoir sauvegarder les modifications apportées par les modificateurs de réseau et de courbe, tout en conservant la possibilité d'éditer la route. Pour ce faire, en mode objet, sélectionnez la route et appliquez le modificateur de tableau, puis le modificateur de courbe.

## Corriger les extrémités mal alignées

À moins que vous n'ayez beaucoup de chance, votre piste ne se sera probablement pas fermée correctement avec une courbe cyclique, et les extrémités se chevaucheront probablement ou ne se connecteront pas tout à fait. Maintenant que vous avez appliqué les modificateurs, il devrait être assez facile de corriger cela en mode édition en supprimant les points en trop et en en connectant d'autres.

## Améliorer la jouabilité

Il est important que votre piste soit agréable à conduire. Vous trouverez des directives pour vous aider à cet égard à [Faire des Pistes: Notes#Jouabilité](Making_Tracks:_Notes/#jouabilité). Essayez d'ajouter de l'inclinaison aux courbes, et d'élargir la piste autour des courbes et à la fin des sauts. Ce genre de choses rendra votre piste plus agréable.

{% include art_portal %}
