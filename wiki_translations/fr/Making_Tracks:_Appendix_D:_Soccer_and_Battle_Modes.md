---
title: 'Faire des Pistes: Annexe D: Modes Football et Bataille'
toc: true
---
Les arènes de bataille et de football sont en fait une extension du format de piste et la plupart des instructions de ce guide s'appliquent donc à la création d'arènes. En fait, le processus de création des pistes et des arènes ne diverge que sur quelques points, que cet article vise à couvrir.

## Conception

Naturellement, une arène n'est pas une piste routière comme un circuit. Les arènes sont une grande zone qui contient les joueurs et offre les caractéristiques nécessaires au mode bataille ou au mode football. L'aire de jeu d'une arène doit donc être plus intéressante et interactive que celle d'une piste. Utilisez des rampes, des obstacles, des tunnels et des crêtes pour rendre une arène plus dynamique et intéressante. Une arène comme celle-ci est un peu terne:

{% gallery widths=480px
/assets/wiki/The_stadium_1.jpg,The arena is quite basic and lacks details as well as obstacles.
/assets/wiki/The_stadium_2.jpg,The lack of detail is even more visible from the player's perspective.
%}

En revanche, évitez de créer trop de chemins confus pour les arènes de football, car cela réduira la jouabilité de votre arène. Cependant, n'oubliez pas d'ajouter des boîtes cadeaux et des nitros aux arènes. Ils sont nécessaires en mode combat et rendent le mode football plus dynamique.

## Mouvement AI

Pour générer une minimap et permettre à l'IA de se déplacer, SuperTuxKart a besoin d'un *navmesh* pour chaque arène. Le navmesh est un plan au-dessus de toutes les zones pilotables, et doit être composé de quads(face à 4 coté). Partout où il y a un obstacle, supprimez simplement la face en sélectionnant la face en mode **Edition** et en appuyant sur la touche **Suppr**, puis en sélectionnant **Faces**. Les zones avec des faces solides seront considérées comme praticables par l'IA.

{% single_gallery /assets/wiki/Navmesh.jpg %}

Maintenant, sélectionnez l'objet navmesh en mode **Objet**, et définissez le type à **Navmesh** dans le panneau **Propriétés d'objet de SuperTuxKart**.

{%popup_info Il est très important que le navmesh soit entièrement constitué de quads et que les normales soient correctement calculées(en vue du dessus en visualisant les normal elle doivent toutes êtres bleu). Pour recalculer les normales dans Blender, passez en mode **Edition** sur la navmesh, sélectionnez tout (raccourci : **a**) et appuyez sur **Alt-n** pour recalculer les normales.%}

## Positions de départs

Chaque arène de (bataille /football) a besoin d'un certain nombre de positions de départ, à partir desquelles les karts commenceront le jeu. Créez des objets Blender **vides** et réglez leur type sur **Start position (battle mode)** dans le panneau **Propriétés d'objet de SuperTuxKart**.

{%popup_info Lorsque vous placez les positions de départ (vous devez en avoir plusieurs, au moins quatre), veillez à ce qu'elles soient équitablement réparties. Les positions de départ ne doivent pas avantager une équipe en mode football ou un joueur en mode combat.%}

## Points particuliers à prendre en compte pour le mode football

### Propriété

Pour exporter un terrain de football, vous devez d'abord cocher la case **Is a soccer field** dans le panneau **SuperTuxKart Scene Properties**.

### Goals

Chaque terrain de football a besoin de deux buts dans lesquels les joueurs tenteront de rentrer le ballon. Le but physique n'est probablement pas difficile à modéliser, mais pour que SuperTuxKart détecte un ballon de football traversant un but, vous avez besoin de deux lignes de but. Tout comme les lignes de contrôle, il s'agit simplement de deux points connectés par une ligne, mais contrairement aux lignes de contrôle, elles doivent être définies comme étant de type **Goal line** dans le panneau **Propriétés d'objet de SuperTuxKart**.

En sélectionnant cette option, une autre option s'affiche : **First goal**. SuperTuxKart utilise cette option pour déterminer l'équipe qui marque le premier but. Il suffit de cocher cette case sur <u>une</u> des lignes de but. (coché équipe bleu, décoché équipe rouge)

### La balle de foot

La balle de foot doit être une sphère de ~1.8 unités Blender de diamètre (les icosphères sont un bon choix pour leur uniformité tout autour, contrairement aux sphères UV) et doit être placé dans l'espace au-dessus du centre du terrain de foot (il sera réinitialisé à cette position et descendra après chaque but). Définissez le type à **Object** dans le panneau **Propriétés d'objet de SuperTuxKart**, et définissez les propriétés suivantes:

* L'option **Interaction** doit être réglée sur **Movable by player**. Cela crée deux options supplémentaires :
    * **Mass** doit être fixé à environ 20 kg. Cette valeur n'est évidemment pas réaliste, mais elle produira les meilleurs résultats.
    * **Shape** doit être réglé sur **Sphere**, à moins que vous n'ayez l'intention d'utiliser une autre forme avec un XML spécial pour réduire les frottements (voir ci-dessous).
* **Is soccer ball** doit être sélectionné.

{%popup_info Pour obtenir une meilleure physique avec le ballon de football, la propriété **Custom XML** est parfois définie pour l'objet ballon de football dans le panneau **Propriétés d'objet de SuperTuxKart**. Ceci peut être utilisé à diverses fins. Par exemple, le terrain de football générique (qui sera bientôt remplacé) définit cette propriété à `restitution="0.4"` pour réduire le "rebond" du ballon de football. Icy Soccer Field utilise cette propriété pour permettre l'utilisation d'un palet de hockey cylindrique au lieu d'une sphère. Si vous souhaitez utiliser cette propriété, demandez plus d'informations aux développeurs.%}

{% include art_portal %}
