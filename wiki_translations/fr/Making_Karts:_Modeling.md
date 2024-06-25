---
title: 'Faire des Karts: Modélisation'
toc: true
---
*Ce tutoriel suppose que vous maîtrisez déjà Blender. Vous pouvez toujours consulter [ici](https://www.blender.org/support/tutorials/) pour des liens vers de bons tutoriels Blender à usage général.*

- tuto global vf:
    + [Debuter sur Blender](https://youtube.com/playlist?list=PLuine2he2FmOY1ILTDc1OR9vHgIMBw4_W&si=mwQ1gKo3x0xRXuIY)

{% gallery /assets/wiki/Emule_model.jpg %}

## Nombre de maillages et de sommets(Mesh & vertex)

Pendant la phase de modélisation, rappelez-vous que le kart est fait pour être vu à des distances moyennes et lointaines, mais pas à des distances très proches, donc le détailler beaucoup peut être inutile car certains détails ne seraient visibles que dans des situations rares et précises, une bonne astuce est de faire de ces détails une partie de la texture du véhicule. De plus, il est beaucoup plus difficile (et fastidieux) d'essayer de réduire le nombre de polygone d'un modèle haute résolution existant que de concevoir et modéliser un kart basse résolution depuis le début, il est donc utile de garder le nombre de polygone à l'esprit.

## Dimensions

Les dimensions des karts de STK sont approximativement comprises entre 0,7x0,4 et 0,9x0,5 unités OpenGL(¡¡dans blender les valeur doivent être doublé!!!). Ensuite, des tests en jeu seront nécessaires pour l'ajuster. Notez qu'actuellement, la physique des karts dépend des dimensions des modèles, mais cela changera lorsque les karts auront des attributs physiques individuels.

## Transformations

Avant d'être exporté, le kart doit être placé comme si l'axe Y était la route, et avoir une translation X et Z de 0 (cette dernière partie n'est peut-être pas nécessaire, mais c'est plus propre ainsi ;). De plus, lorsque vous appuyez sur le pavé numérique 1 dans Blender, vous devez voir l'arrière du kart. La rotation du modèle final doit être de 0, et son échelle de 1 en mode objet.

{% single_gallery /assets/wiki/Kart_view.jpg %}

## Objets dans la scène Blender

Idéalement, le kart a son propre mesh, le personnage un autre mesh indépendant et chaque roue un autre objet mesh supplémentaire. Attribuez un type aux roues dans le panneau de propriétés d'objet de SuperTuxKart:

{% single_gallery /assets/wiki/Kart_wheel.jpg %}

Notez que les karts peuvent avoir (jusqu'à) 4 roues. Les roues qui sont à l'avant sont considérées comme des roues directrices et tourneront automatiquement lorsque vous dirigez dans le jeu. L'origine de la roue dans Blender est utilisée par SuperTuxKart pour le mouvement de la roue, une origine de géométrie mal placée peut causer un mouvement incorrect de la roue, aussi vous pourriez vouloir faire des tests pour des raisons esthétiques, principalement pour fixer le point à partir duquel la roue se dirige.

La collision n'est calculée que pour le mesh du véhicule (en supposant que le personnage ne sorte jamais du kart), si votre véhicule possède de grandes roues, il est très probable qu'elles passeront à travers d'autres véhicules et des objets de la piste comme des murs ou des rails de sécurité, et même parfois par-dessus des clôtures, alors assurez-vous de faire suffisamment de tests si votre véhicule doit avoir de grandes roues, comme dans le cas des monster trucks. Dans le cas contraire, essayez de ne pas rendre le châssis de votre véhicule trop bas, car la voiture pourrait avoir des problèmes avec les terrains irréguliers.

Chaque objet de votre scène blender sera exporté par l'exportateur de karts de STK sauf:
* les caméras,
* les lumières,
* les objets ou le type **Ignore** est sélectionné dans le panneau de propriété d'objet de SuperTuxKart.

{% include art_portal %}
