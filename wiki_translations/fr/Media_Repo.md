---
title: Dépôt multimédia
display_title: true
---
Le **dépôt multimédia** est l'endroit où sont stockés tous les fichiers originaux, les modèles 3D, les textures, les sons et tous les fichiers utilisés par STK. C'est nécessaire car ces fichiers sont généralement trop lourds pour être intégrés au jeu lui-même ou simplement parce qu'ils sont incompatibles avec le jeu. Ils sont donc compressés ou convertis avant d'être intégrés au jeu.

Le dépôt multimédia a un autre rôle : en l'utilisant, vous pouvez importer beaucoup de textures et d'objets dans les pistes que vous dessinerez. Comme Blender prend en compte la structure des fichiers de vos pistes quand vous y liez des nœuds de bibliothèque ou des fichiers du dépôt multimédia, nous recommandons de placer le fichier Blender de votre nœud kart/piste/bibliothèque dans son propre dossier sous la catégorie appropriée dans votre copie du dépôt multimédia, **comme s'il s'agissait d'une partie officielle du jeu**.

### Installation du répertoire média

Nous recommandons d'utiliser la version de développement de STK, le meilleur moyen de télécharger le dépôt multimédia est d'utiliser un client d'une version antérieure (SVN). Néanmoins, si vous ne pouvez pas installer une version antérieure, il existe une solution de contournement simple.

#### Le meilleur moyen : installer une version antérieure

Les instructions pour installer une version antérieure sont sur la page des [Outils d'installation](Installing_Tools#subversion-client). Une fois installé, utilisez l'adresse suivante pour vérifier l'intégrité du dossier :

* Si vous utilisez un programme à interface graphique (par exemple, Tortoise SVN), celui-ci pourrait vous demander l'URL du dépôt - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - et un dossier d'export, qui est l'endroit sur votre ordinateur où vous souhaitez que celui-ci soit copié.
* Avec les systèmes d'exploitation sous Unix ou assimilés, ou avec MacOS, un example de commande d'export serait :

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Solution alternative : téléchargement manuel d'une snapshot

{% start_liquid popup_info %}

Cette solution alternative est très simple à appliquer et télécharge les mêmes fichiers et les mêmes dossiers, mais ne mettra pas à jour vos fichiers quand des changements sont faits sur le dépôt multimédia. Celà signifie que si des changements adéquats ont lieu sur le dépôt après avoir téléchargé votre snapshot, votre projet pourrait avoir une apparence différente dans les nouvelles versions et peut-être même ne pas marcher correctement il faut, à moins que vous ne téléchargiez la nouvelle snapshot.

{% end_liquid %}

Consultez ce lien pour générer une snapshot et la télécharger : <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Si on vous demande de renvoyer votre demande de snapshot, faites-le. Le téléchargement du dépôt multimédia commencera, comprenant les fichiers dans leur état actuel. Décompressez le fichier ZIP obtenu à une adresse valide où vous souhaitez retrouver votre copie du dépôt multimédia. Le voilà maintenant prêt !

Des changements ont lieu [plutôt régulièrement] sur le dépôt multimédia (https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), alors si vous souhaitez télécharger une nouvelle snapshot, faites d'abord une sauvegarde de tous vos projets dans un dossier à part, supprimez votre copie locale du dépôt multimédia puis remplacez-le par la nouvelle snapshot.
