---
title: Niveau de détail
toc: true
---
Le niveau de détail, ou LOD, permet d'afficher différentes variantes d'un objet à différentes distances de la caméra. En n'affichant que des objets très simples à grande distance, vous réduisez la charge de travail du GPU sans grande perte de détails de près.

{% gallery widths=50%
/assets/wiki/Lod_low.jpg
/assets/wiki/Lod_medium.jpg
/assets/wiki/Lod_high.jpg
%}

## Pour les objets ne provenant pas du référentiel multimédia

### Création des modèles

Créez trois modèles: un de haute qualité avec de nombreuses faces, un de qualité moyenne et un de faible qualité. Par exemple, un palmier de haute qualité a un tronc avec de nombreuses faces, alors que le tronc d'un palmier de basse qualité n'est constitué que de deux plans perpendiculaires. Veillez à ce que la transition ne soit pas trop visible.

Maintenant, placez tous ces modèles quelque part sur la piste (l'endroit importe peu, puisqu'ils ne seront pas visibles dans le jeu) et donnez-leur le type **LOD Model** dans le **panneau de propriétés d'objet de SuperTuxKart**. Définissez le **LOD Group Name** avec le même nom pour tous les objets qui font partie du groupe LOD.

### Utilisation d'un 'LOD Model' dans la scène

Pour que vos modèles apparaissent dans le jeu, créez un objet à l'endroit où vous souhaitez que votre groupe LOD apparaisse. (Le type d'objet n'a pas d'importance - il peut s'agir d'un cube, d'un vide, d'une copie d'un des modèles LOD, etc.) Réglez le type de votre objet sur **LOD Instance** dans le **panneau de propriétés d'objet de SuperTuxKart** et réglez la propriété **LOD Group Name** sur le nom de votre groupe LOD. Maintenant, lorsque votre piste est chargée, un modèle LOD apparaîtra à l'endroit où vous avez placé l'objet LOD Instance.

{%popup_info Ne réglez pas l'interaction sur "Exact" pour les instances LOD; cela ferait planter SuperTuxKart. A la place, créez un cylindre ou un cube autour de l'instance et exportez-le en tant qu'objet séparé avec une interaction physique uniquement. Si vous créez un nœud de bibliothèque, c'est encore mieux, puisque les utilisateurs de votre nœud de bibliothèque n'auront pas à ajouter l'objet de collision eux-mêmes.%}

### LOD Standalone

Si vous n'avez pas le temps de créer plusieurs modèles, vous pouvez utiliser la fonction LOD Standalone. Cela signifie qu'un objet disparaîtra simplement à une certaine distance. Définissez votre objet comme étant de type **LOD Standalone** dans le **panneau de propriétés d'objet de SuperTuxKart**, puis définissez la **Visibility distance** à la distance de la caméra à laquelle vous souhaitez que l'objet devienne visible. Vous pouvez également utiliser la fonction **Exporter aussi sans modificateurs** pour exporter un modèle LOD sans modificateurs. Cela peut être utile pour réduire le nombre de poly lors de l'utilisation d'un modificateur de biseau, par exemple.

## Utilisation de LOD avec des objets de bibliothèque

Certains objets du dépôt de médias sont déjà configurés pour le LOD. Pour ceux qui le sont, liez simplement l'objet `stklib_*_*_main`. Ne liez aucun autre objet (pas main.001, etc.). Les objets se terminant par `main` sont les seuls à être configurés comme *instances* LOD.

{% include art_portal %}
