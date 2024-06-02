---
title: 'Faire des objets de bibliothèque: Notes'
toc: true
---
## Importation de modèles d'autres sources

Si Blender peut l'importer, les scripts d'exportation de SuperTuxKart peuvent l'exporter. Si vous préférez créer vos modèles dans un autre programme, vous pouvez simplement les importer dans Blender (à condition que le format soit supporté) en allant dans **Fichier > Importer** dans la de menu de Blender. Cependant, vous devrez toujours configurer les matériaux et autres propriétés pour pouvoir utiliser vos modèles dans SuperTuxKart.

## Blender

Blender peut être difficile à apprendre. Cependant, commencez par un objet de base et apprenez à partir de là. Créer des objets pour SuperTuxKart est un excellent moyen d'apprendre Blender, et un excellent moyen d'évoluer vers des choses plus avancées comme la création de pistes ou d'arènes.

## Identifiant(ID) des objets de bibliothèque

Chaque objet de bibliothèque doit avoir un identifiant. Le format est le suivant

{%popup_code stklib_nomObjet_variationLettre%}

Le nom de l'objet doit être court et descriptif. Il ne doit pas expliquer les détails de votre objet, comme l'espèce d'une plante. Si un objet similaire au vôtre existe déjà dans le dossier `library` du dépôt de médias, utilisez une lettre de variation différente. Supposons que vous souhaitiez un palmier dans une piste, mais que vous n'aimiez pas l'espèce déjà présente dans le référentiel. Vous remarquerez que `stklib_palmTree_a` existe déjà. Par conséquent, vous utiliserez `stklib_palmTree_b` pour l'ID de votre modèle de palmier.

## Emplacement et nommage des fichiers

Il est extrêmement important d'avoir un nommage cohérent pour les objets de la bibliothèque, car d'autres artistes les utiliseront.

* Le fichier `.blend` doit être nommé avec l'ID de l'objet de la bibliothèque et l'extension `.blend`.
* L'objet à lier dans une scène (de type **Objet**, **LOD Instance**, ou **LOD Standalone** dans le panneau **Propriétés d'objet de SuperTuxKart**) doit être nommé avec le préfixe de l'objet de la bibliothèque suffixé par `_main`. Par exemple,

{%popup_code stklib_palmTree_a_main%}

* Les autres objets (par exemple les modèles LOD, les émetteurs de particules, etc.) doivent recevoir un nom clair et identifiant pour éviter toute confusion.
* Pour éviter les erreurs dans la liaison des textures, vous devriez avoir une structure de répertoire comme celle-ci: (Certains dossiers sont exclus pour des raisons de clarté).

###### (node ID) est le nom de votre objet
{%popup_code
stk_media_repo -|
                |- library -|
                            |- <Library node category (buildings, vegetation, etc.)> -|
                                                                                     |- <Library node ID> -|
                                                                                                           |- <Library node ID>.blend%}

{% include art_portal %}
