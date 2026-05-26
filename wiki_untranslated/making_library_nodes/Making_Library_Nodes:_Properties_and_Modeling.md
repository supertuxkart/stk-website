---
title: 'Making Library Nodes: Properties and Modeling'
display_title: true
---
This page won't go into detail about modeling—any Blender tutorial can help with that. See [here](https://www.blender.org/support/tutorials/) for a list of good tutorials.

## Modeling

Use whatever methods you need to model your objects. However, it helps to understand the scaling of objects a bit—for more information, see the [3D Model Guidelines](3D_Model_Guidelines) page, which you should have already read. If you are using level of detail, you may want to skip ahead to the [Level of Detail](Level_of_Detail) page and then come back to this page.

## Properties

In Blender, you must first check the box **Is a SuperTuxKart library node** in the **SuperTuxKart Scene Properties** panel.

Set **Code (folder name)** to the library node's ID. (You should have decided on one after reading [Notes](Making_Library_Nodes:_Notes)).

### Object Properties

You should have at least one main object that will be visible in Blender when someone links to your library node.

* If you made a library node with only a single object, that will be your main object. Simply set the object to type **Object** in the **SuperTuxKart Object Properties** panel.
* If you are using [Level of Detail](Level_of_Detail), your **LOD Instance** will be the main object.
* Do not use the **None** object type; this is only for tracks, arenas, and cutscenes.
* You can use the **Ignore** type to make prevent the object from being exported.

{% include art_portal %}
