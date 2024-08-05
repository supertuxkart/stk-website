---
title: Texturation
toc: true
---
Le texturage est le processus d'application d'images sur des objets 3D afin de les rendre plus réalistes. Le processus diffère légèrement selon la version de Blender utilisée. Cette section complète les informations trouvées sur la page [Matériaux](Materials).

## Pour Blender 2.80 et supérieur

Les matériaux de Blender doivent être utilisés afin d'assigner des textures d'image aux cartes UV. L'utilisation de la section **Matériau** dans la fenêtre **Propriété** ou **Éditeur de shaders** de Blender est donc cruciale pour pouvoir texturer n'importe quel maillage.

## Pour Blender 2.63 à 2.79

Utilisez des textures UV dans Blender pour vos objets afin qu'ils apparaissent dans le jeu, mais **ne perdez pas de temps avec les matériaux de Blender ou les matériaux de cycles.** Ils ne sont pas exportés dans le jeu - à la place, utilisez le système de matériaux de SuperTuxKart.

En fait, ne vous embêtez pas avec la section Texture de la fenêtre **Propriétés** de Blender. Il suffit d'appliquer une carte UV.

## Application de textures

*Ce processus ne fonctionne que pour Blender 2.80+. Ignorez ce processus si vous utilisez Blender <= 2.79.*.

La configuration des images de texture se fait désormais par matériau, car il n'est plus possible de les appliquer directement aux cartes UV. Il est également possible d'assigner une image à plusieurs textures, mais une seule configuration d'image aura un effet dans le jeu. Le matériau dont le nom se termine par une lettre ultérieure, dans l'ordre A à Z, est celui d'où sera tirée la configuration.

Pour les matériaux de base à image unique, la configuration peut être effectuée entièrement à partir de la fenêtre **Propriété**, bien que la fenêtre **Éditeur de shaders** puisse être utilisée à tout moment, et que cette dernière doive être utilisée pour des configurations plus complexes. Les deux processus suivants supposent que le nœud de sortie **Sortie matériau** et le nœud de shader **BSDF guidée** sont déjà ajoutés. S'ils ne le sont pas, ils doivent être ajoutés et connectés en conséquence.

Recommandé: Dans le nœud de shader **BSDF guidée**, modifiez **Specular** à 0, et **Roughness** à 1. Cela modifiera l'apparence d'un matériau pour qu'il ressemble davantage à ce qu'il sera dans le jeu, ce qui est particulièrement utile lorsque les paramètres **Ombrage de la fenêtre** sont réglés pour utiliser le mode **Solide** avec la couleur réglée sur **Texture** ou le mode **Prévisualisation de matériau**.

### Dans la fenêtre des propriétés

Tout d'abord, sélectionnez le matériau à modifier dans la liste du haut, ou créez-en un nouveau après avoir ajouté un emplacement de matériau. Allez à l'entrée **Couleur de base**, cliquez sur le point jaune à gauche du sélecteur de couleur, et sélectionnez **Texture** -> **Image Texture**. Cela devrait remplacer le sélecteur de couleur par un sélecteur d'image, et il sera désormais possible d'utiliser une image déjà chargée ou d'en ouvrir une nouvelle.

Une fois cette opération terminée, le matériau peut être configuré pour être utilisé dans le jeu comme à son habitude. Le nom du fichier de l'image d'accompagnement utilisée sera affiché, mais uniquement à titre d'information.

### Dans la fenêtre de l'éditeur de shaders

Tout d'abord, sélectionnez le matériau à modifier dans la liste de la barre d'en-tête, ou créez-en un nouveau après avoir ajouté un slot de matériau dans la liste des slots. Il doit y avoir un nœud de sortie **Sortie de matériau** et un nœud de shader **BSDF guidée** dans la configuration du nœud. Dans la barre d'en-tête, sélectionnez **Ajouter** (raccourci: Shift + a > Ajouter) -> **Texture** -> **Texte d'image**. Ceci devrait ajouter un nœud Image Texture à la position du curseur, et bien qu'il puisse être placé n'importe où, il devrait être placé à un endroit où il n'obstrue pas les nœuds existants. Les deux étapes suivantes peuvent être effectuées dans n'importe quel ordre, mais elles doivent toutes deux être réalisées pour que la configuration soit réussie.

1. Cliquez sur le sélecteur d'image dans ce nœud de texture d'image nouvellement créé et utilisez une image déjà chargée ou ouvrez-en une autre. Le nom du fichier de l'image d'accompagnement utilisée sera affiché, mais uniquement à titre d'information.
2. Connectez la sortie **Couleur** de ce nœud à l'entrée **Couleur de base** du BSDF guidée, et faites éventuellement de même avec la sortie **Alpha** du premier nœud à l'entrée **Alpha** du second. Cette étape optionnelle seule ne fera pas la même chose dans le jeu, mais elle permet d'avoir un aperçu de ce à quoi ressemblera une texture d'image avec alpha dans le jeu.

Une fois ces deux étapes terminées, le matériel peut maintenant être configuré pour une utilisation dans le jeu comme d'habitude. Le nom du fichier de l'image d'accompagnement utilisée sera affiché, mais uniquement à titre d'information.

## Sources des textures

### Le dépôt multimédia (Media Repository)

Le [dépôt multimédia](Media_Repo) de SuperTuxKart devrait être le premier endroit où vous cherchez des textures. Elles sont incluses dans le jeu, vous n'avez donc pas besoin de distribuer des copies avec votre objet et elles utilisent des effets graphiques avancés comme la brillance et les cartes normales pour tirer parti de toutes les fonctionnalités du moteur de SuperTuxKart. Elles se trouvent dans le dossier `textures`. Choisissez simplement l'une de ces textures lorsque vous ouvrez une image à l'un de ces endroits (uniquement dans la fenêtre **UV/Image Editor** pour Blender <= 2.79):

* La fenêtre de l'**Éditeur UV**
* La fenêtre de l'**Éditeur d'images**
* N'importe quel nœud d'image et de texture

{%popup_info Il est **très** important que les chemins des textures que vous utilisez soient corrects dans Blender, sinon personne ne pourra comprendre votre fichier. Placez toujours les fichiers de votre piste dans le dossier du dépôt multimédia comme s'il s'agissait d'une partie du jeu principal. En outre,
* Ne liez pas les textures dans **stk-assets**, seulement dans **stk_media_repo**. Il n'y a aucune garantie que quelqu'un d'autre ait son dossier stk-assets au même endroit que vous.
* Ne jamais insérer de textures dans votre fichier Blender.
* Ne demandez jamais à Blender de rendre les chemins d'accès absolus. Cela ne causera que des ennuis à tous ceux qui téléchargeront et essaieront d'ouvrir votre fichier.%}

Vous n'aimez pas la couleur par défaut des textures ? Pas de problème ! Il vous suffit d'utiliser la coloration des vertex (voir ci-dessous). La coloration des vertex vous permet de peindre différentes couleurs sur un objet afin de ne pas avoir besoin d'une nouvelle texture. L'île du Grand Paradis, par exemple, utilise la coloration des sommets pour rendre le fond marin bleu-vert, même si la texture d'origine est une texture rocheuse de couleur beige.

{%popup_info Assurez-vous que vous utilisez la texture réelle, et non la carte de brillance ou de normalité. Les cartes de brillance sont désignées par un nom de fichier se terminant par gloss, tandis que les cartes de normalité sont désignées par un nom de fichier se terminant par normal.%}

### Système de fichier local

Si vous utilisez une texture qui n'est pas fournie dans le dépôt multimédia, le processus de sélection d'un tel fichier image est le même. Il est recommandé de placer ces textures par rapport à l'emplacement de votre fichier Blender (soit dans le même dossier que ce fichier, soit dans un dossier situé au même endroit), afin que ces textures soient affichées quel que soit l'emplacement, si ces textures sont également copiées avec votre fichier Blender. Les [Directives pour les textures](Texture_Guidelines) doivent être utilisées comme d'habitude.

### Sources gratuites en ligne

Il existe de nombreuses sources d'images gratuites pouvant être utilisées comme textures. Plusieurs d'entre elles sont répertoriées [ici](Licensing/#où-trouver-les-fichiers). Veillez simplement à ce qu'ils correspondent à la [Directives pour les textures](Texture_Guidelines).

## Coloration des vertexs

La coloration des vertexs vous permet de modifier la couleur des objets par vertex. La coloration est ensuite appliquée sur les textures. (C'est pourquoi nous exigeons que la plupart des textures incluses dans le jeu soient d'une couleur semi-neutre). Les couleurs de vertex sont extrêmement efficaces en termes de traitement et constituent une bien meilleure option dans la plupart des cas que l'utilisation d'une texture séparée pour les dégradés ou l'utilisation du splatting. Pour plus d'informations sur l'application des couleurs de vertex, consultez la page du [Manuel de Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/vertex_paint/index.html).

Un bon tutoriel vidéo est également disponible [ici](https://youtu.be/Ivb45iA5QT8), mais la première partie concernant les matériaux n'est pas pertinente pour STK.

### Pour commencer

Sélectionnez l'objet que vous souhaitez colorer. Dans la fenêtre "Propriétés", sous "Données", cliquez sur le bouton plus à côté de la case "Attribut de couleur". Dans l'en-tête de la fenêtre "Vue 3D", passez en mode "Peinture de sommet" (plutôt qu'en mode Objet ou Édition). Plusieurs nouvelles options apparaissent dans la boîte à outils située à gauche de la fenêtre Vue 3D. Il est également possible d'entrer immédiatement dans le mode "Peinture de sommet", dans lequel un calque de couleur de sommet sera automatiquement créé.

### Peinture

Choisissez une couleur à l'aide du sélecteur de couleurs situé à gauche, ajustez le rayon (taille) du pinceau, modifiez la force si vous le souhaitez et choisissez un mode de fusion ("Mélange" est le mode par défaut). Cliquez ensuite avec le bouton gauche de la souris sur les sommets pour les colorer. Vous remarquerez que vous ne pouvez pas peindre au milieu d'une face. En effet, la coloration des vertex fonctionne par vertex. Vous ne pouvez pas attribuer de couleurs au milieu d'une face, car il n'y a pas de vertex auquel les attribuer. C'est l'une des limites de la coloration des sommets et vous devrez peut-être la contourner en utilisant la subdivision (raccourci: Ctrl + E > Subdiviser) sur une face.

### Visualiser son travail en mode objet

Pour avoir un aperçu de l'aspect des couleurs de vertex combinées à une texture d'image dans le jeu, modifiez les paramètres de la fenêtre de prévisualisation afin d'utiliser le mode "Aperçu matériel". En outre, la configuration du nœud de shader doit être retravaillée pour inclure un nœud MixRGB, où l'entrée "Color1" est la texture d'image et l'entrée "Color2" est un nœud de couleur de vertex connecté par sa sortie "Color". Ce nœud MixRGB prend la place du nœud de texture d'image et connecte sa sortie "Couleur" à l'entrée "Couleur de base" du nœud de shader BSDF guidée.

Pour Blender <= 2.79, pour rendre votre peinture visible en mode objet lorsqu'elle n'est pas en vue texturée, activez 'Solide texturé' sous 'Shading' dans le panneau de propriétés de la fenêtre '3D View' (raccourci: n).

## Autocollants (Decals)

{% single_gallery /assets/wiki/Decal_shader.jpg,Exemple de décalcomanie. La texture en bois utilise la première carte UV ; la texture transparente de la piste de terre utilise la deuxième carte UV.%}

SuperTuxKart fournit un "decal shader" qui vous permet de mélanger des textures comme des calques dans un programme de retouche photo. Pour utiliser les décalques, sélectionnez d'abord le mesh cible dans Blender. Dans la fenêtre "Propriété" de Blender, sous "Données", cliquez sur le bouton "+" à côté de la case "Cartes UV".

Une fois la nouvelle carte UV sélectionnée, passez en mode édition sur le maillage et texturez l'objet avec la texture de décalcomanie à l'endroit de votre choix. Veillez à "synchroniser la sélection des UV et du mesh en mode édition" et à ne sélectionner que les faces sur lesquelles vous souhaitez ajouter la décalcomanie. Si vous ne faites pas attention, la décalcomanie s'étalera sur toute la surface de l'objet.

Enfin, pour avoir un aperçu de ce à quoi cette configuration ressemblerait dans le jeu (pour Blender >= 2.80), la configuration du nœud de shader doit être retravaillée pour inclure un nœud MixRGB, où l'entrée 'Color1' est la texture d'image pour la première carte UV, et l'entrée 'Color2' est la texture d'image pour la deuxième carte UV. En outre, l'entrée "Fac" doit être connectée à la sortie "Alpha" de la texture d'image connectée à l'entrée "Color2". Ce nœud MixRGB remplace le nœud de texture d'image pour la première carte UV, en connectant sa sortie "Color" à l'entrée "Base Color" du nœud de shader BSDF guidée.

{%popup_info Le decal shader ne fonctionne pas avec les textures qui incluent une carte de normales.%}

{% include art_portal %}
