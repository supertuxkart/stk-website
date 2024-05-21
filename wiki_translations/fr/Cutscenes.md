---
title: Cinématiques
display_title: true
---
Les cutscenes sont une méthode pour rendre une scène avec le moteur du jeu sans créer de véritable piste. Elles sont utilisées dans le mode histoire pour montrer la capture de Gnu par Nolok, etc. Les cinématiques sont également utilisées par l'équipe pour créer des bandes-annonces et permettent d'obtenir de meilleures captures d'écran. Elles sont très utiles.

*Note : Vous devez avoir installé les plugins Blender SuperTuxKart pour suivre ce tutoriel. Voir la page [Installation des outils](Installing_Tools) pour plus d'informations.*

## Créer une cinématique

Puisque les cutscenes sont similaires aux pistes (et techniquement *sont* des pistes pour le moteur) en ce qui concerne l'échelle, les noeuds de bibliothèque, les effets spéciaux, le ciel, etc., vous devriez d'abord jeter un oeil à la page [Faire des pistes](Making_Tracks) pour des liens vers plus d'informations. En fait, les seules pages qui ne vous seront pas utiles pour créer une cutscene sont celles qui concernent les drivelines et les navmeshes.

Pour commencer, créez une scène dans Blender et cochez la case "Is a SuperTuxKart track" dans le panneau des propriétés de la scène SuperTuxKart. Remplissez les cases pour le nom de la cutscene, le nom du dossier, etc., et cochez la case "Is a cutscene" - cela permet à votre piste d'être exportée sans driveline et de fonctionner comme une cutscene.

Créez une caméra dans Blender et réglez son type sur "Cutscene camera" dans le panneau des propriétés d'objet SuperTuxKart. Vous pouvez animer cette caméra avec l'animation IPO pour la mise à l'échelle, la rotation et le mouvement.

## Exécution d'une cinématique

Dans le panneau Track Exporter, cliquez sur "Export track". Copiez le dossier résultant, ainsi que toutes les textures nécessaires, dans le répertoire `tracks` du dossier addons. (Voir la [FAQ](FAQ) pour plus d'informations sur l'emplacement de ce répertoire).

Pour lancer votre scène à partir de l'interface graphique, voir [Mode débogage artiste\Cinématiques](Artist_Debug_Mode#cutscenes). Pour exécuter directement votre scène, lancez SuperTuxKart à partir de la ligne de commande comme suit :

{%popup_code
sh
supertuxkart --cutscene=<cutscene name> --no-start-screen%}

<div><br/></div>

{%popup_info Actuellement, la scène se poursuit jusqu'à ce que vous appuyiez sur la touche d'échappement (ESC).%}

{% include art_portal %}
