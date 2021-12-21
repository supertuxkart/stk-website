---
title: Directives pour les textures
toc: true
---
Choisir de bonnes textures est probablement un des points les plus importants lors de la création 3D. Un objet parfaitement modélisé pourrait paraître horrible avec de mauvaises textures, il est donc important que vous choisissiez vos textures en respectant ces quelques conseils.

## Style

Les textures de SuperTuxKart sont dessinées à la main ou peintes, elle n'utilisent pas de photos (même si vous pouvez utilisez des photos comme exemple). Bien sûr, cela ne veut pas dire que vous devrez peindre vous-même vos textures à la main — vous pouvez utilisez un logiciel de peinture comme Krita. D'autres applications sont aussi proposées sur la page [Installer les outils](Installing_Tools).

Les textures ne sont pas non plus trop simples ou trop typées cartoon. N'hésitez pas à y apposer toutes sortes de détails, tant qu'ils sont dessinés à la main (sauf dans les cas décrits ci-dessous). Pour plus d'informations sur la peinture de textures, voir [la dernière doc de Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Où utiliser des photos

Dans certains cas, il n'y a pas d'intérêt à peindre ses textures à la main. Si peindre la texture à la main prendrait beaucoup de temps, comme pour la végétation, il peut être plus intéressant d'utiliser des photos, à conditions que la photo soit suffisamment générique et qu'elle ne crée pas d'aspects bizarres sur le modèle. Regardez par exemple la texture ci-dessous :

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Ce cas présente un exemple intéressant, car la texture montre de bons et mauvais côtés. La feuille de palmier est une belle texture (Remarque : la transparence est donnée par un masque alpha) du fait de ses lumières uniformes, son peu de détails, et sa nature générique. Elle n'est pas non plus utilisée dans un endroit qui pourrait engendrer des effets de clignotement comme décrit plus bas. D'un autre côté, la texture du tronc sur la droite n'est pas très bonne du fait de sa luminosité non-uniforme. Texturer un tronc avec cet exemple donnera des bandes claires/sombres — un problème très courant. Utiliser cette texture sur un objet solide ferait également apparaître un effet de carrelage, la rendant inutilisable.

Les photos ne devraient généralement pas être utilisées pour texturer des objets proches des joueurs car leur détails et défauts seraient alors plus visibles et cela ferait apparaître que ce ne sont que des photos.

## Couleurs et Lumières

Les textures de SuperTuxKart sont colorées et contrastées, mais sans être trop flashy. Les textures trop brillantes, plastifiées ou couleur bonbon ne seront pas acceptées dans le dépôt principal à moins qu'elle ne soit utilisées sur de toutes petites parties, comme le panneau Start dans XR591.. La même règle s'applique aux textures unies. Les textures en noir ou blanc purs sont déconseillées du fait que vous perdez l'information de couleur sur des coloris 100% noir ou blanc.

Les textures devraient être dessinées pour une couleur et lumière ambiante neutres. Le moteur de rendu de SuperTuxKart modifiera automatiquement les balances de couleur et la luminosité suivant l'éclairage de la scène et la colorisation des vertex.

## Motifs

Il ne devrait pas y avoir de motifs visibles dans les textures. Des motifs évidents rendent la piste ou le kart moches. Voici un exemple de ce qu'il **ne faut pas** faire :

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Un autre souci apparaît avec des textures qui n'ont aucun motif. C'est une des principales raisons d'éviter d'utiliser des photos comme textures :

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Remarquez que texturer dans Blender crée un aspect carrelage bizarre, même si la texture elle-même ne présente aucun motif. En retirant certains détails, en arrondissant les angles, vous pouvez obtenir un bien meilleur résultat, même si ce n'est pas parfait :

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Détails de texture

Essayez d'éviter de faire des textures avec des détails qui ne font pas partie du matériau dans la vie réelle. Par exemple, si vous voulez une corde accrochée à un mur, sans utiliser de maillage, ne faites pas une texture complète avec ces deux éléments, ajoutez simplement une corde au dessus de la texture du mur. SuperTuxKart utilise un gestionnaires de calques qui permet d'ajouter la texture de la corde sur un second calque UV et de le faire apparaître sur le mur, sans rendre la texture du mur inutilisable pour d'autres cas. Pour plus d'informations, voir [ici](Texturing#Decals).

## Restrictions techniques
* Les dimensions des images doivent être des puissances de 2. Une taille générique de texture est par exemple 1024 x 1024, ou 2<sup>10</sup> × 2<sup>10</sup>. Cependant elles ne sont pas obligatoirement des carrés, vous pourriez utiliser des textures en 1024 x 512, ou 2<sup>10</sup> × 2<sup>9</sup>.
* N'utilisez pas des textures trop grandes pour de petits objets, cela utiliserait beaucoup de mémoire vidéo inutilement.
* Les fichiers de texture **doivent** être situés dans le même dossier que votre objet exporté.
* Les textures devraient être au format PNG si
    * La texture sera utilisée sur un objet proche des joueurs, nécessitant beaucoup de détails
    * L'objet est transparent ou présente des parties transparentes
* Les textures devraient être au format JPEG pour
    * Des objets lointains
    * Les textures de ciel (en général)
    * Les cartes de lumière ambiante
