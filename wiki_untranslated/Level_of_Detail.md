---
title: Level of Detail
toc: true
---
Level of Detail, or LOD, allows you to have different variations of an object display at different distances from the camera. By only showing very simple objects farther away, you create less work for the GPU without a great loss of detail up close.

{% gallery widths=48%
/assets/wiki/Lod_low.jpg
/assets/wiki/Lod_medium.jpg
/assets/wiki/Lod_high.jpg
%}

## For objects not from the media repository

### Creating Models

Create three models: one of high quality and a lot of faces, one of medium quality, and one of low quality. For example, a high quality palm tree has a trunk with many sides but the low quality palm tree's trunk is only two perpendicular planes. Be sure that the transition is not too noticeable.

Now, place all these models somewhere in the track (it doesn't matter where, since they won't be visible in the game) and give them the type **LOD Model** in the **SuperTuxKart Object Properties** panel. Set the **LOD Group Name** to the same name for all the objects that are part of the LOD group.

### Using an LOD Model In the Scene

To make your models appear in the game, create an object where you want your LOD group to appear. (It doesn't matter what kind of object—it could be a cube, an empty, a copy of one of the LOD models, etc.—because it won't be shown in the game.) Set the type of your object to **LOD Instance** in the **SuperTuxKart Object Properties** panel and set the **LOD Group Name** property to the name of your LOD group. Now, when your track is loaded, an LOD model will appear where you placed the LOD Instance object.

{%popup_info Do not set Interaction to "Exact" for LOD instances; this will cause SuperTuxKart to crash. Instead, create a cylinder or cube around the instance and export as a separate object with physics-only interaction. If you're making a library node, even better, since this users of your library node won't have to add the collision object themselves.%}

### LOD Standalone

If you do not have the time to make multiple models, you can use the LOD Standalone feature. This means that an object will simply disappear at a certain distance away. Set your object to type **LOD Standalone** in the **SuperTuxKart Object Properties** panel, then set the **Visibility distance** to the distance from the camera at which you want the object to become visible. You can also use the **Also export without modifiers** feature to export an LOD model without modifiers. This could be useful to reduce poly when using e.g. a bevel modifier.

## Using LOD with library objects

Some objects from the media repository are already configured for LOD. For those that are, simply link the object `stklib_*_*_main`. Don't link any other object (not main.001, etc.). Objects ending in `main` are the only ones configured as LOD *instances*.

{% include art_portal %}
