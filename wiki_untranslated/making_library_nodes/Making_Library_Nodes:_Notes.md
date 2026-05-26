---
title: 'Making Library Nodes: Notes'
toc: true
---
## Importing Models from other sources

If Blender can import it, the SuperTuxKart exporter scripts can export it. If you prefer to create your models in another program, you can simply import them into Blender (provided the format is supported) by going to **File > Import** in Blender's info window. However, you will still need to set up materials and other properties to be able to use your models in SuperTuxKart.

## Blender

Blender can be difficult to learn. However, start with a basic object and learn from there. Making objects for SuperTuxKart is a great way to help while learning Blender, and a great way to move toward more advanced things like making tracks or arenas.

## Library Node IDs

Every library node must have an ID. The format is

{%popup_code stklib_objectName_variationLetter%}

The object name should be short and descriptive. It should not explain the details of your object, such as a plant's species. If an object similar to yours already exists in the `library` folder of the media repository, use a different variation letter. Suppose you would like a palm tree in a track, but you don't like the kind already in the media repository. You would notice that `stklib_palmTree_a` already exists. Therefore you would use `stklib_palmTree_b` for your palm tree model's ID.

## File Locations and Naming

It is extremely important to have consistent naming for library nodes, since other artists will be using them.

* The `.blend` file should be named with the library node ID with the `.blend` file extension.
* The object to be linked in a scene (of type **Object**, **LOD Instance**, or **LOD Standalone** in the **SuperTuxKart Object Properties** panel) should be named with the library node prefix suffixed with `_main`. For example,

{%popup_code stklib_palmTree_a_main%}

* Other objects (e.g. LOD Models, particle emitters, etc. should be given a clear and identifying name to avoid confusion.)
* To prevent errors in texture linking, you should have a directory structure like this: (Some folders are excluded for conciseness.)

{%popup_code
stk_media_repo -|
                |- library -|
                            |- <Library node category (buildings, vegetation, etc.> -|
                                                                                     |- <Library node ID> -|
                                                                                                           |- <Library node ID>.blend%}

{% include art_portal %}
