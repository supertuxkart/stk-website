---
title: Installation des outils
toc: true
---
Bienvenue! Ce guide vous aidera à vous préparer à la création d'illustrations (pistes, karts, textures, etc.) pour SuperTuxKart. Ce guide comprend le(s) logiciel(s) que vous devez installer et utiliser, ainsi que toute configuration nécessaire. Vous devrez prendre une décisions sur le choix des logiciels que vous utiliserez, car différents programmes sont disponibles pour les mêmes tâches et vous devrez choisir celui qui vous convient le mieux.

## Pour de la création 2D (textures, affiches, etc.)

Vous aurez besoin de logiciel 2D pour pratiquement toutes les illustrations de SuperTuxKart. Vous utiliserez principalement des éditeurs graphiques bitmap (pixmap), principalement pour les textures, il est utile d'avoir un éditeur de graphiques vectorielstrès pratique pour redimensionner les images sans perdre en qualité. Les graphiques bitmap, en revanche, sont constitués de pixels et deviennent donc moins jolis à mesure qu'ils sont mis à l'échelle.

### Éditeurs graphiques bitmap

Vous pouvez utiliser n'importe quelle combinaison de ces programmes pour l'art conceptuel, les textures et plus encore. Les programmes répertoriés ici sont gratuits et open source, mais d'autres produits commerciaux (tel que Adobe Photoshop et Illustrator) peuvent être utilisés. **Gardez toutefois à l'esprit que les artistes de l'équipe STK ne peuvent pas forcément se permettre de tels logiciels, et ne peuvent donc pas forcément ouvrir les formats propriétaires qu'ils utilisent, comme le PSD (Photoshop Documents). Le format préféré pour les travaux en cours est le KRA (Documents Krita), bien que les XCF (Documents GIMP) soient également les bienvenus.**

#### Krita

* **Platforms:** Linux, macOS, Windows, Android, Chrome OS
* **Website:** [krita](https://krita.org)
* **License:** GNU General Public License 3.0

Krita est un puissant programme graphique conçu pour la peinture numérique. Il prend en charge les tablettes graphiques de plusieurs fabricants et permet l'installation d'extensions de brosses tiers. Krita prend également en charge des fonctionnalités d'édition d'images plus standard, mais est plus limité à cet égard que d'autres logiciels tels que GIMP. Krita prend également en charge les graphiques vectoriels, mais n'est pas aussi complet qu'Inkscape.

#### GIMP

* **Platforms:** Linux, macOS, Windows, FreeBSD, Solaris, AmigaOS 4
* **Website:** [gimp](https://www.gimp.org)
* **License:** GNU General Public License 3.0 (or later)

GIMP ou GNU Image Manipulation Program, est un éditeur et créateur de photos flexible et extensible prenant en charge les extensions tierces. Il propose une grande variété de filtres et d'outils de réglage des couleurs, ainsi que des outils de dessin. Cependant, en raison de sa concentration sur l'édition d'images plutôt que sur la peinture numérique, il peut être moins adapté au style SuperTuxKart [style](/style "wikilink") que Krita.

### Éditeurs de graphiques vectoriels

Les graphiques vectoriels peuvent être mis à l'échelle sans perdre en qualité, car ils sont basés sur des *vecteurs*, qui décrivent mathématiquement le chemin d’une ligne plutôt que d’être la ligne elle-même. Ces programmes sont les mieux adaptés à la création de textures qui seront utilisées de différentes manières (comme un logo pour une entreprise fictive). Tous les éditeurs répertoriés ici doivent exporter des images au format SVG (Scalable Vector Graphics).

#### Inkscape

* **Platforms:** Linux, macOS, Windows, FreeBSD
* **Website:** [inkscape](https://inkscape.org)
* **License:** GNU General Public License 3.0 (or later)

Inkscape est un puissant éditeur graphiques vectoriels facile à apprendre. Il a une grande base d'utilisateurs et la plupart des questions peuvent trouver réponse par une recherche rapide sur le Web.

#### Calligra Karbon

* **Platforms:** Linux, macOS (in-testing), Windows (in-testing), FreeBSD
* **Website:** [calligra](https://calligra.org/karbon/)
* **License:** GNU Library General Public License 2.0 (or later)

Karbon est une puissante application avec une interface simple et intuitive. Contrairement aux programmes ci-dessus, il fait partie de la suite bureautique Calligra, n'est pas un programme autonome. (Krita faisait autrefois partie de Calligra mais est désormais indépendante.)

## Pour de la création 3D (karts, pistes, modèles)

Pour les illustrations 3D comme les pistes, karts, et modèles, vous aurez besoin d'un logiciel de modélisation 3D. Malheureusement, SuperTuxKart est un peu plus limité à cet égard. Pour créer des karts et des objets, vous devez utiliser Blender. Pour les pistes, vous avez le choix entre Blender ou l'éditeur de pistes SuperTuxKart. (il existe un version épurée de blender BForArtists)

### Blender

* **Platforms:** Linux, macOS, Windows, Android, FreeBSD, OpenBSD, NetBSD, DragonFly BSD, Haiku
* **Website:** [blender](https://www.blender.org)
* **License:** GNU General Public License 2.0 (or later)

Le premier logiciel de modélisation 3D open source. Blender dispose d’une base d’utilisateurs large et fidèle, composée d’utilisateurs amateurs et commerciaux. Blender peut être difficile pour les débutants, mais dispose d'un manuel détaillé ainsi que de guides tiers sur YouTube et ailleurs. Un excellent guide facile à suivre pour les débutants peut être trouvé [ici](https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro).

Blender must be used for karts and objects, and produces better results than the SuperTuxKart track editor for tracks.

{%popup_info After a major update, Blender versions may not yet be compatible with the SuperTuxKart Blender scripts. Check the [minimum requirements section](https://github.com/supertuxkart/stk-blender#user-content-supertuxkart-blender-addons) to see which Blender versions are compatible. If necessary, [older Blender versions can be found here](https://www.blender.org/download/lts/).%}

### Bforartists

* **Platforms:** Linux, macOS, Windows, Android, FreeBSD, OpenBSD, NetBSD, DragonFly BSD, Haiku
* **Website:** [bforartists](https://www.bforartists.de/)
* **License:** GNU General Public License 2.0 (or later)

Bforartists est un fork du populaire logiciel 3D open source Blender.  Développé par des passionnés de 3D pour rendre Blender encore meilleur. Il fonctionne exactement comme Blender. L'objectif principal du fork Bforartists est de fournir une interface utilisateur graphique raffinée et une meilleure convivialité pour Blender. Bforartists est entièrement compatible avec les fichiers et addons Blender.  Chaque fonctionnalité qui fonctionne dans Blender devrait également fonctionner dans Bforartists.  De plus, chaque version est toujours à jour avec la dernière version de Blender.  L'ensemble d'outils est le même.

#### Installation des scripts Blender de SuperTuxKart

Les scripts SuperTuxKart Blender vous permettent d'exporter votre travail Blender aux formats SuperTuxKart. L'endroit où les obtenir dépend de la version de Blender installée (une ancienne version peut être utilisée pour ouvrir d'anciens fichiers de piste qui n'ont pas été mis à jour).

* Pour Blender 2.9x et 3.x:
    * Allez sur [STK_Addon_(2/3).x](https://github.com/supertuxkart/stk-blender)  et téléchargez les fichiers. Pour ce faire, cliquez sur le bouton vert Code puis sélectionnez "Télécharger ZIP".
    * Ouvrez le fichier ZIP téléchargé, sélectionnez les deux dossiers io_antarctica_scene et io_scene_spm et copiez-les dans le presse-papiers en utilisant Ctrl-C ou Cmd-C.
* Pour Blender 2.8x: 
    * Allez sur [STK_Addon_2.8x](https://github.com/supertuxkart/stk-blender/tree/183e7bb4355d3d1268e0126418ed643e4544f718) et téléchargez les fichiers. Pour ce faire, cliquez sur le bouton vert Code puis sélectionnez "Télécharger ZIP".
    * Ouvrez le fichier ZIP téléchargé, sélectionnez les deux dossiers io_antarctica_scene et io_scene_spm et copiez-les dans le presse-papiers en utilisant Ctrl-C ou Cmd-C.
* For Blender 2.77, 2.78, and 2.79:
    * Allez sur [STK_Addon_2.7x](https://sourceforge.net/p/supertuxkart/code/HEAD/tree/media/trunk/blender_26/) et cliquez sur le bouton Télécharger Snapshot
    * Ouvrez le fichier ZIP téléchargé, sélectionnez tous les fichiers et le dossier `stkdata`, puis copiez-les dans le presse-papiers en utilisant Ctrl-C ou Cmd-C.

Si vous utilisez Blender pour la première fois lancez Blender une fois pour créer des répertoires de configuration dans votre répertoire utilisateur.

##### Linux (et autres systèmes d'exploitation de type Unix)

À l'aide de votre gestionnaire de fichiers, vérifiez les emplacements suivants pour trouver un fichier existant

* `$XDG_CONFIG_HOME/blender`
* `~/.config/blender`
* `~/.blender`

Ensuite, allez dans le répertoire basé sur votre version de Blender (par exemple `2.77`), puis dans le répertoire `scripts`, puis `addons`. Si ces répertoires n'existent pas, créez-les. (structure de dossier: `dossier_de_config/blender/votre_version/scripts/addons`)

Si vous utilisez une version autonome de Blender, le répertoire des scripts sera dans `<répertoire du Blender Télécharger>/<version de Blender>/scripts/addons`. Déplacez-vous dans ce répertoire dans votre gestionnaire de fichiers.

Une fois que vous êtes dans le répertoire approprié, utilisez Ctrl-V pour coller les scripts d'exportation de SuperTuxKart.

##### macOS

Cliquez avec le bouton droit de la souris sur Blender, sélectionnez Afficher le contenu du paquet et ouvrez. `Contents/Resources/<version>/scripts/addons/`

Collez ensuite les scripts dans ce répertoire.

{%popup_info Notez que les raccourcis clavier pour copier et coller sous macOS utilisent la touche *Command* plutôt que la touche *Ctrl*.%}

##### Windows

Ouvrez le gestionnaire de fichiers (Windows Explorer). Cliquez sur la barre d'adresse en haut. Remplacez le texte par le suivant:

`%APPDATA%\Blender Foundation\Blender\<version>`

`<version>` est la version de Blender (par exemple 2.77).

Vous devriez voir le répertoire `scripts`. Si ce n'est pas le cas, créez-le, puis allez-y. Il devrait contenir le répertoire `addons`. Si ce n'est pas le cas, créez-le, puis déplacez-vous jusqu'à lui. Maintenant, utilisez Ctrl-V pour coller les scripts d'exportation de SuperTuxKart dans ce répertoire.

#### Activation des scripts Blender de SuperTuxKart

Après avoir placé les scripts dans le répertoire de scripts de Blender, ouvrez Blender. Les instructions varient à nouveau en fonction de la version de Blender installée.

* Pour Blender 2.80 et plus: Tous les outils ont été regroupés dans des paquets plus intégrés. Allez dans **Edition > Préférences > Add-ons**. Dans la boîte de recherche, recherchez `supertuxkart` et `spm` (un à la fois) et cochez la case à côté des éléments suivants:
    * SuperTuxKart Exporter Tools
    * SPM (Space paritioned mesh) format

{% single_gallery /assets/wiki/Blender_tools_3.png %}

{% single_gallery /assets/wiki/Blender_tools_4.png %}

* Pour Blender 2.77, 2.78, et 2.79: Allez dans **Fichier > Préférences de l'utilisateur > Add-ons**. Dans la boîte de recherche, recherchez `supertuxkart` et cochez la case à côté des éléments suivants:
    * SuperTuxKart Kart Exporter
    * SuperTuxKart Material Exporter
    * SuperTuxKart Track Exporter
    * SuperTuxKart Panel

{% single_gallery /assets/wiki/Blender_tools_1.jpg %}

Recherchez maintenant `spm`. Cochez la case à côté de **SPM (Space partitioned mesh) Model Exporter**.

{% single_gallery /assets/wiki/Blender_tools_2.jpg %}

Vous pouvez cliquer sur **Sauvegarder préférences utilisateur** pour éviter de répéter ces étapes à chaque fois que vous ouvrez Blender.

### Client Subversion

* **Platforms:** Linux, macOS, Windows, BSD, etc.
* **Website:** [subversion](https://subversion.apache.org)
* **License:** Apache License 2.0

Un client Subversion (plus connu sous le nom de SVN) est indispensable pour récupérer la dernière version des actifs et des [dépôts de médias](Media_Repo). Il effectue un *contrôle de version*, un système d'enregistrement des modifications dans une collection de fichiers auxquels plusieurs utilisateurs ont accès. Il est principalement utilisé par les développeurs de logiciels, mais nous l'utilisons pour gérer les ressources artistiques. Nous n'entrerons pas dans les détails de l'utilisation de SVN ici (il y a beaucoup d'informations en ligne pour chaque client), mais lorsque vous aurez besoin de l'utiliser, nous vous fournirons l'URL que vous devrez mettre dans votre client.

* Pour les utilisateurs de Windows, en particulier ceux qui ne sont pas familiers avec la ligne de commande, nous recommandons [TortoiseSVN](https://tortoisesvn.net), une interface graphique facile à utiliser pour SVN. Allez sur la page de téléchargement, sélectionnez la version qui correspond à votre machine (dans la plupart des cas, un système d'exploitation 64 bits) et procédez à l'installation. Une fois installé, allez dans le dossier de l'explorateur Windows où vous voulez placer votre copie de travail, faites un clic droit et sélectionnez `TortoiseSVN` → `Checkout`, puis entrez l'URL du référentiel en ligne et assurez-vous que le répertoire Checkout est bien là où vous voulez qu'il soit, puis cliquez sur OK. Pour mettre à jour les fichiers avec des changements, sélectionnez-les, puis faites un clic droit et sélectionnez `TortoiseSVN` → `Mise à jour` dans le menu.

* Pour les utilisateurs de Mac, [vous pouvez facilement l'installer en utilisant Homebrew, Fink et MacPorts, parmi d'autres options](https://subversion.apache.org/packages.html#osx). Pour les systèmes de type Unix, [vous pouvez généralement l'installer via la ligne de commande](https://subversion.apache.org/packages.html).

### Éditeur de pistes SuperTuxKart (SuperTuxKart Track Editor)

L'éditeur de pistes SuperTuxKart est un effort relativement récent pour faciliter la création et la modification des pistes SuperTuxKart pour les enthousiastes qui ne sont pas intéressés par les complexités (et les fonctionnalités) de Blender. Comme il est encore en cours de développement, il faut s'attendre à des bugs et des crashs. Les instructions pour compiler et utiliser l'éditeur STK peuvent être trouvées sur la page [Track Editor](Track_Editor).
