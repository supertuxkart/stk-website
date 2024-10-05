---
title: Tutoriel Track Editor
display_title: true
---
Au premier démarrage, vous verrez une fenêtre de sélection de répertoire. Dirigez-vous vers le répertoire de données, qui contient la texture, les karts, les modèles, etc. (Double-cliquez sur un répertoire pour vous y déplacer, et double-cliquez sur le "..." pour quitter le répertoire actuel). Une fois que vous avez trouvé le bon dossier, cliquez sur le bouton OK. Si ce n'est pas celui attendu par l'éditeur, vous ne pourrez pas vous débarrasser de la fenêtre de sélection.

{% single_gallery /assets/wiki/Track_editor_tutorial_0.jpg %}

Une fois qu'il est sélectionné, soyez patient: l'éditeur va charger les textures, ce qui prend un certain temps. La fenêtre de message suivante est l'écran d'accueil. Elle contient la liste des pistes récemment ouverte, qui est probablement vide. Il suffit de cliquer sur le bouton nouveau pour créer une nouvelle piste.

{% single_gallery /assets/wiki/Track_editor_tutorial_1.jpg %}

Cette image vous montre comment remplir les zones de texte:

{% single_gallery /assets/wiki/Track_editor_tutorial_2.jpg %}

Le champ "File Name" ne doit pas contenir de caractères spéciaux. Ne cochez pas la case "gravité" pour l'instant, cela affecte les routes à l'envers pour la version de développement. Une fois que vous avez terminé, cliquez sur le bouton Créer.
Appuyez d'abord sur la touche "shift" et maintenez-la enfoncée, puis appuyez sur le bouton de molette souris, maintenez-le enfoncé et déplacez la souris pour déplacer la caméra. Faites la même chose sans maintenir la touche "shift" pour faire pivoter la caméra.

{% single_gallery /assets/wiki/Track_editor_kart.jpg %}

Il y a un petit kart dans le coin inférieur gauche de l'écran, qui change d'orientation lorsque vous tournez la caméra, et qui devient plus grand lorsque vous faites un zoom avant, ou plus petit lorsque vous faites un zoom arrière. Il s'agit d'un indicateur qui vous montre la taille des objets dans le jeu.

Cliquez sur l'icône de la bêche pour activer l'outil de modification de la hauteur. Déplacez la souris sur le terrain : les sommets affectés sont surlignés en rouge. Maintenez le bouton gauche de la souris enfoncé et déplacez votre souris pour dessiner une belle montagne. Vous pouvez également réduire la hauteur des sommets surlignés en utilisant le bouton droit de la souris de la même manière.

{% single_gallery /assets/wiki/Track_editor_tutorial_3.jpg %}

Jouez un peu avec l'outil: modifiez le rayon et l'intensité de l'outil à l'aide des barres de défilement et passez d'un type d'arête à l'autre en cliquant sur les icônes. Vous pouvez toujours annuler vos modifications en utilisant l'icône d'annulation dans la barre d'outils (flèche rouge pointant vers la gauche), ou en utilisant le raccourci clavier ctrl+z. Une fois que vous êtes sûr de vous, créez une montagne au milieu de la carte. Elle devrait ressembler à ceci:

{% single_gallery /assets/wiki/Track_editor_tutorial_4.jpg %}

Il est temps de définir la transmission(driveline). Vous pouvez le faire en plaçant des points de contrôle. Cliquez sur la troisième icône principale de la barre d'outils pour activer le panneau de route:

{% single_gallery /assets/wiki/Track_editor_tutorial_5.jpg %}

Comme vous pouvez le voir dans la case à cocher, la driveline est sélectionnée. Cliquez sur l'icône en surbrillance pour commencer à dessiner la chaîne cinématique, puis déplacez la souris sur le terrain et placez le premier point de contrôle en cliquant avec le bouton gauche de la souris. En déplaçant la souris après avoir placé le premier point de contrôle, vous pouvez voir à quoi ressemblerait la driveline si vous placiez le deuxième point de contrôle à la position actuelle de la souris.

{% single_gallery /assets/wiki/Track_editor_tutorial_6.jpg %}

Dessinez la driveline autour de la montagne. Si vous placez mal un point, vous pouvez utiliser le bouton d'annulation, ou simplement le laisser et le déplacer plus tard. Une fois que vous avez placé le dernier point, cliquez avec le bouton droit de la souris pour terminer le processus. Le résultat devrait ressembler à ceci:

{% single_gallery /assets/wiki/Track_editor_tutorial_7.jpg %}

![Track_editor_tutorial_8]({{ '/assets/wiki/Track_editor_tutorial_8.jpg' | prepend: site.baseurl }}) Enregistrez votre travail. Cliquez sur ok dans la fenêtre de confirmation pour la fermer.

![Track_editor_tutorial_9]({{ '/assets/wiki/Track_editor_tutorial_9.jpg' | prepend: site.baseurl }}) Exportez votre travail. Cliquez à nouveau sur ok.

![Track_editor_tutorial_10]({{ '/assets/wiki/Track_editor_tutorial_10.jpg' | prepend: site.baseurl }}) Essayez la piste! La première fois que vous cliquez sur ce bouton, vous devez sélectionner l'exécutable du jeu dans une fenêtre de dialogue de sélection de fichier. Cela fonctionne à peu près comme le sélecteur de répertoire. Si tout se passe bien, le jeu peut charger la piste. Il y a cependant quelques problèmes - le plus important étant le fait qu'il n'y a pas de comptage de tours. Commençons par le corriger.

Cliquez sur le bouton Checkline pour définir une ligne de contrôle. Elle consiste en deux sphères, placez-les toutes les deux. Elles doivent être aussi éloignées que possible de la ligne de départ (qui est le début de la chaîne cinématique). Assurez-vous que le joueur la franchira à coup sûr : vous devrez peut-être déplacer les sphères pour ce faire. Vous pouvez sélectionner n'importe quel objet en cliquant dessus avec le bouton gauche de la souris. Appuyez sur le bouton droit de la souris et maintenez-le enfoncé, puis commencez à bouger la souris pour déplacer l'objet. Une fois que l'objet suit la souris, vous pouvez relâcher le bouton. Le fait de cliquer avec la souris termine l'opération: le clic gauche l'accepte, le clic droit l'annule. Il se peut que vous deviez faire pivoter la caméra pour atteindre l'objectif, qui devrait ressembler à ceci:

{% single_gallery /assets/wiki/Track_editor_tutorial_11.jpg %}

Exportez à nouveau votre piste : si vous avez placé la ligne de contrôle correctement, vous devriez pouvoir gagner la course.
