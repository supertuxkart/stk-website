---
title: 'Faire des Pistes: Drivelines et Checklines(Transmission et lignes de contrôle)'
toc: true
---
{%popup_info Cette page fournit des instructions pratiques pour la création de driveline. Pour plus de détails et une explication plus complexe, ainsi qu'une discussion sur les fonctionnalités non encore implémentées, voir la page [Discussion: Modèle théorique de driveline(transmission)](Talk:Theoretical_Driveline_Model).%}

Les drivelines sont utilisées pour montrer à SuperTuxKart où se trouve la piste. Les transmissions sont représentées dans Blender par une série de quads connectés, avec le début marqué par une structure spéciale. Cependant, elles ne sont pas visibles pendant le jeu à moins que cela ne soit activé via [Mode débogage artiste](Artist_Debug_Mode).

## Création de la driveline principale

*Note: Les deux méthodes citées recommandent d'enlever les faces de la driveline. Cette opération n'est en fait pas nécessaire, mais elle facilite la visualisation d'une piste.*

### Si vous avez suivi le module précédent

Vous aurez déjà une piste plate composée de quads. Vous pouvez simplement dupliquer cette piste, passer en mode édition, sélectionner tous les points avec le raccourci clavier "a", taper sur la touche Suppr et supprimer **Faces Seulement**. Suivez ensuite les instructions ci-dessous pour créer une ligne de départ.

### Si vous avez fait une piste d'une autre manière

Commencez par un plan quadratique et supprimez uniquement sa face (en préservant les sommets et les arêtes). Ensuite, attachez des points jusqu'à ce que vous ayez une série de quads, chacun connecté à ses adjacents, tout au long de votre piste en boucle. Veillez à ce que la driveline tourne en douceur dans les virages; dans le cas contraire, les karts IA pourraient avoir du mal à rouler.

{% single_gallery /assets/wiki/Driveline_bad.jpg %}

### Création de la ligne de départ

La ligne de départ d'une piste dans SuperTuxKart est indiquée par un espace entre deux quads déconnectés, et des lignes "antennes" partant des extrémités du quad qui sera la ligne de départ. Une image permet de mieux expliquer cela:

{% single_gallery /assets/wiki/Driveline_start.jpg %}

### Rendre la driveline active

Pour que l'exportateur reconnaisse la driveline, sous Propriétés de l'objet driveline, sous Propriétés de SuperTuxKart, mettez "Type" à "Driveline(main)". Ignorez la propriété "Activate" pour l'instant.

## Création de transmissions secondaires/alternatives

Bien que chaque piste ne puisse avoir qu'une seule driveline principale, vous pouvez utiliser des drivelines secondaires pour les raccourcis ou les routes alternatives. Elles ont la même structure qu'une transmission principale, mais au lieu de rendre la driveline cyclique, placez les antennes près de deux points d'un quad de la driveline principale où vous voulez que les karts IA s'écartent de la piste principale et placez la fin du dernier quad où vous voulez que la route alternative rejoigne la piste principale. Définissez ensuite le type sur " Driveline(additional) " dans le panneau des propriétés d'objet de SuperTuxKart. Une image pour illustrer:

{% single_gallery /assets/wiki/Driveline_shortcut_entrance.jpg %}

## Checklines

### Création de Checklines

Les checklines vous permettent d'empêcher les joueurs de prendre des raccourcis et de comptabiliser correctement les tours. Pour en créer une, il suffit de créer un segment de ligne avec deux points et de le positionner sur une partie de la piste. Il y a toutefois quelques règles à respecter:

* Ils ne devraient être utilisés que pour arrêter les raccourcis importants, et non les karts qui coupent un virage.
* Ils doivent être assez larges, suffisamment pour être déclenchés même par des karts sortant de la piste.
* Les checklines ne doivent pas être placées à un endroit où elles risquent d'être manquées si le joueur ou le kart de l'IA emprunte une route alternative. Toutefois, des groupes de checkline (voir ci-dessous) peuvent être utilisés pour atténuer ce risque.
* Vous devez avoir plusieurs checklines dans une "chaîne" (voir ci-dessous) pour vous assurer que les karts roulent dans le bon ordre.
* Il est recommandé d'avoir au moins 3 checklines par piste en plus de la lapline

### Activation des Checklines

Tout d'abord, définissez chaque checkline en tant que checkline dans les propriétés d'objet de SuperTuxKart. Vous remarquerez que vous avez deux options à définir: le champ "Nom" et le champ "Activate".

Le champ "Nom" est le *nom de groupe* de la checkline. Si vous n'avez qu'une seule route principale et aucune route alternative, ou si vous n'avez pas placé les checklines à des endroits où elles pourraient être manquées en fonction de l'itinéraire emprunté, il suffit de donner à chaque checkline un nom de groupe unique. La première ligne de contrôle peut être nommée "Control1", par exemple.

Si vous souhaitez avoir des checklines le long de routes alternatives, créez une checkline le long de la route alternative **et** sur la route principale entre les deux extrémités de la route alternative, et donnez-leur le même nom de groupe.

Maintenant, pour l'option "Activate" de la première ligne de contrôle, vous devez cliquer sur le bouton du menu déroulant et choisir le nom de la deuxième ligne de contrôle ou du deuxième groupe de lignes de contrôle. Répétez ce schéma pour chaque ligne de contrôle. Pour la dernière ligne de contrôle, tapez "lap" dans le champ "Activate". Cela permet de compter le tour.

Mais qu'est-ce qui active la première checkline ? Pour la première checkline, sélectionnez la **main driveline**, et, dans le panneau des propriétés d'objet de SuperTuxKart, réglez "Activate" sur le nom de la première checkline.

## Lignes supplémentaires de tours de piste(Lap Line)

Si le début de la driveline ne peut pas être élargi, et qu'il n'est pas pratique de créer une décoration de type "portail" pour marquer le début de la piste, vous pouvez ajouter des lignes de tour supplémentaires. Il suffit de créer une ligne avec deux points, comme une ligne de contrôle, de lui donner le type "Lap line" dans le panneau des propriétés d'objet de SuperTuxKart, et elle sera activée par toutes les lignes de contrôle réglées pour activer "lap".

{%popup_info Veillez à ce que la propriété "Activate" de toute lapline supplémentaire soit définie sur la checkline suivante!%}

## Conclusion

Votre piste est maintenant presque prête pour la première étape des tests. Passons en revue ce que vous avez fait jusqu'à présent:

* Vous avez eu une idée
* Vous avez créé un concept artistique et décidé de l'agencement de votre piste
* Vous avez modélisé votre piste dans Blender
* Vous avez rendu possible la conduite d'IA sur votre piste
* Vous avez ajouté des checklines pour le comptage des tours et pour éviter la tricherie.

Dans le module suivant, vous exporterez votre piste et l'essaierez dans SuperTuxKart.

{% include art_portal %}
