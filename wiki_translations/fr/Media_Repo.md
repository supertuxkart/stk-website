---
title: Dépôt multimédia
display_title: true
---
Le **dépôt multimédia** est l'endroit où sont stockés tous les fichiers originaux, les modèles 3D, les textures, les sons et tous les fichiers utilisés par STK. C'est nécessaire car ces fichiers sont généralement trop lourds pour être intégrés au jeu lui-même ou simplement parce qu'ils sont incompatibles avec le jeu. Ils sont donc compressés ou convertis avant d'être intégrés au jeu.

Le dépôt multimédia a un autre rôle : en l'utilisant, vous pouvez importer beaucoup de textures et d'objets dans les pistes que vous dessinerez. Comme Blender prend en compte la structure des fichiers de vos pistes quand vous y liez des nœuds de bibliothèque ou des fichiers du dépôt multimédia, nous recommandons de placer le fichier Blender de votre nœud kart/piste/bibliothèque dans son propre dossier sous la catégorie appropriée dans votre copie du dépôt multimédia, **comme s'il s'agissait d'une partie officielle du jeu**.

Nous recommandons d'utiliser la version de développement de STK, le meilleur moyen de télécharger le dépôt multimédia est donc d'utiliser un client SVN (plus d'informations sur la page [Installer les Outils](Installing_Tools)).

Sur les système de type Unix, le dépôt peut être téléchargé par la commande :

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
