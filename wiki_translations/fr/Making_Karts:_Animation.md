---
title: 'Faire des karts: Animation'
toc: true
---
- tuto rigging fr:
    + [Un "rig" sur mesure](https://youtube.com/playlist?list=PLRuetRLba-d1c68g9KJPZ7W2GXpC9gdir&si=ubF0bMz7M-iuIuQk)
    + [Rigify](https://youtube.com/playlist?list=PLRuetRLba-d0DbbKzhUSN-KjYzZKrrA48&si=16cDCWDZSgi9LULz)

L'animation est un élément majeur qui permet à un kart de passer d'un niveau basique à un niveau professionnel. Bien que les animations de votre personnage n'aient pas besoin d'être compliquées à l'extrême, nous vous demandons de faire un effort pour trouver des animations intéressantes (malheureusement, beaucoup de nos personnages ont des animations plutôt génériques, donc les animations de karts pré-existants sont également les bienvenues).

Vous pouvez faire beaucoup de choses intéressantes avec l'animation squelettique, comme le pistolet à plomb de Nolok qu'il tire après avoir gagné une course ou la console tournante dans laquelle Tux disparaissait lorsqu'il perdait avec l'ancien kart de Tux (avant la version 0.9). Mais surtout, essayez de rendre l'animation du personnage vivante et adaptée à l'application; par exemple, ne faites pas sauter votre personnage de joie dans l'animation de la défaite.

{%popup_info Pour les karts, seule l'animation du squelette est prise en charge, et **non** l'animation par interpolation (IPO). Cela inclut les animations d'objets qui ne sont pas liés à des os, le changement de visibilité des objets et toutes les autres propriétés qui peuvent être animées, mais qui ne sont pas liées à des armatures.%}

<div><br/></div>

{%popup_info Si vous utilisez la cinématique inverse ou d'autres contraintes osseuses, veillez à ajouter des images-clés supplémentaires, car seules les images-clés sont exportées dans le format de maillage de STK.%}

<div><br/></div>

## Comment fonctionne l'animation des personnages de Kart

* Ceci ne concerne que l'animation des personnages comme la direction. Pour les objets qui doivent être animés indépendamment du mouvement du kart, il faut les pondérer en fonction de la vitesse. Voir [Faire des Karts: Accessoires et effets des karts](Making_Karts:_Kart_Attachments_and_Effects) pour plus d'informations.

{% single_gallery /assets/wiki/Kart_animation_markers.jpg %}

Il est nécessaire d'indiquer à SuperTuxKart où commencent et s'arrêtent vos animations. Pour ce faire, vous ajoutez des marqueurs à la timeline dans la fenêtre Timeline de Blender ou dans la fenêtre Dope Sheet. Voici la procédure générique pour ajouter l'un des marqueurs décrits plus loin:

1.  Dans la fenêtre Timeline, dans le menu Marqueur, cliquez sur **Ajouter un marqueur**
2.  Sélectionnez le marqueur que vous venez d'ajouter en cliquant dessus avec le bouton droit de la souris (s'il n'est pas déjà sélectionné).
3.  Cliquez sur **Renommer le marqueur** dans le menu Marqueur, tapez le nom que vous souhaitez et appuyez sur **OK**.

### Animations de direction

Dans l'ordre indiqué ci-dessous, ajoutez ces marqueurs à la ligne de temps. En cas de doute, consultez la capture d'écran ci-dessus:
* left
* straight
* right

Au marqueur "gauche", votre personnage doit avoir une pose qui le dirige complètement à gauche ; et vice versa pour le marqueur "droite". Notez que le temps entre ces marqueurs n'est pas pris en compte ; STK utilisera une valeur "intermédiaire" pour une direction partielle (comme avec une Wiimote) qui permet une direction à un angle plus faible.

### Animation de saut

Les animations entre les marqueurs **start-jump**(début-saut) et **end-jump**(fin-saut) (voir l'image ci-dessus) seront jouées en boucle lorsque le kart est en l'air. Pour ces marqueurs, contrairement aux marqueurs de direction, le nombre d'images entre eux correspond à la durée de l'animation. Augmenter le temps entre ces marqueurs vous permettra d'avoir des animations de saut plus lentes.

### Animations de victoire et de défaite

Les animations gagnantes utilisent trois marqueurs. Le nombre d'images entre les marqueurs est à nouveau lié au temps passé dans le jeu. Les marqueurs sont, dans l'ordre:

* start-winning
* start-winning-loop
* end-winning
* end-winning-straight

Les animations entre les deux premières seront jouées une fois immédiatement après la fin de la course. Les animations entre **start-winning-loop** et **end-winning** seront jouées à plusieurs reprises, assurez-vous donc que le personnage termine dans la même position qu'au marqueur **start-winning-loop**.L'option **end-winning-straight** permet une transition en douceur vers **straight**, mais elle n'est utilisée que dans les modes football et capture du drapeau (CTF).

Les animations de défaite sont fondamentalement les mêmes que les animations de victoire. La seule différence réside dans les noms de marqueurs :

* start-losing
* start-losing-loop
* end-losing
* end-losing-straight

### Animations de l'écran de sélection des karts

Il n'est pas nécessaire de créer une animation spéciale pour l'écran de sélection des karts. Si vous ne le faites pas, l'animation gagnante sera jouée. Cependant, vous pouvez placer une animation spéciale entre les marqueurs **selection-start** et **selection-end**.

### Animations de rétropédalage (regard vers l'arrière)

Vous pouvez faire en sorte que votre personnage regarde en arrière ou effectue une autre action lorsqu'il roule en marche arrière. Les animations de rétropédalage sont en tous points identiques aux animations de conduite normales, à l'exception des noms :

* backpedal-left
* backpedal
* backpedal-right

{% include art_portal %}
