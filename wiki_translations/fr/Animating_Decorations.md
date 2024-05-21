---
title: Animation des décorations
display_title: true
---
SuperTuxKart exportera à la fois l'IPO et l'animation squelettique que vous avez définie dans Blender. Cependant, les objets avec l'un ou l'autre type d'animation doivent avoir leur type défini sur **Objet**, **Modèle LOD** (si vous utilisez LOD), ou **LOD Standalone** dans le **panneau de Propriétés d'objet de SuperTuxKart**.

Vous pouvez également envisager d’utiliser le shader de végétation pour une solution plus simple pour agiter la végétation. Voir [Materiau](Materials) pour plus d'information.

{%popup_info Pour faire boucler votre animation en continu, sélectionnez les images clés que vous souhaitez boucler dans le **Editeur de graphes**, et allez sur **Canal > Mode d'extrapolation > Rendre cyclique (F-modificateur)**. (raccourcis: Maj-E)%}

Parce que le calcul des collisions entre deux objets en mouvement demande beaucoup de travail au moteur physique, vous devez définir la propriété **Shape** dans le **panneau de Propriétés d'objet de SuperTuxKart** pour chaque décoration de type **Object**, **LOD Instance**, ou **LOD Standalone**. Il s'agit de la forme utilisée par le moteur physique, qui ne sera pas visible, mais qui doit avoir un sens. Par exemple, un train doit avoir la forme d'une boîte(**Box**), mais une balle doit avoir la forme d'une sphère(**Shere**). La forme Cône(**Cone**) est orientée vers le haut dans le moteur physique.

Une autre méthode consiste à définir la propriété **Interaction** de l'objet animé sur **Ghost** et à créer un autre objet non animé de la même forme que l'original, mais en définissant la propriété "Interaction" sur **Physics only**. Voir [Physics\#kart-object-interaction](fr/Physics#kart-object-interaction)

## À propos de l'animation squelettique

Quelques considérations doivent être prises en compte pour l'animation squelettique, afin que vos objets s'exportent correctement :

* Lorsque vous préparez le maillage et l'armature, assurez-vous que leur rotation est a (0,0,0) afin d'éviter les problèmes (une fois le rigging terminé, vous pouvez déplacer l'objet. Cependant assurez-vous simplement que la "position de repos" des deux n'est pas tournée). 
* réinitialiser la rotation de l'armature à (0,0,0), séparer le mesh de l'armature (Alt + P > effacer et garder transformation), appliquer la rotation sur le mesh (raccourci : Ctrl-A), et reparenter le mesh et l'armature. Vous pouvez alors faire pivoter l'armature à nouveau.
* A ce stade, un maillage et son armature doivent avoir leur centre(point d'origine) au même endroit.

{% include art_portal %}
