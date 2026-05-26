---
title: 'Making Tracks: Optimization'
toc: true
---
Optimization is one of the less fun parts of track creation but it’s very important nonetheless.

If your track only has a few objects and not much geometry you don’t necessarily have to optimize your track but if you have a lot of triangles you should definitely look into optimizing your track.

{%popup_prerequisite
* [Performance Testing](Performance_testing)
%}

## When should you optimize

**As a benchmark you can look at Black Forest. If you’re getting similar FPS or even less you should definitely optimize your track.**

Another thing to look at is the polycount counter in STK’s fps bar. It will probably fluctuate a lot, but if it goes above 200-300k,you should start looking into optimization.

You can also look at the tris count in Blender. For that you’ll need to activate the scene statistics by right clicking the bar at the bottom of your blender window. It’s also not very accurate, since the geometry of library nodes might be missing, or there can be objects set to ignore that won’t be exported. But to get a general idea it’s great.

## What actually slows down the game

To optimize tracks we first need to understand what exactly slows down STK’s engine – Antarctica.

There are two main factors that need to be considered: the amount of objects and the way geometry is split up based on location.

## Objects

Let’s first talk about objects. These are NOT the objects you see in blender but the different 3D models exported for STK’s engine. In detail that means every model that is set to something else than “none” in the STK object properties is considered an object by STK’s engine. This includes all library nodes as well.

If you duplicate an object it still counts as another object for STK’s engine e.g. if you put the same tree from the library 5 times in your scene you have now five objects that STK’s render engine has to compute.

**When too many objects are in one track, STK’s engine starts to struggle.** When exactly that happens depends heavily on the used hardware so it’s hard to state an exact limit. But, as a reference, Black Forest has about 3600 objects, and it should stay below that for any other track.

To see how many objects you have in your track you can open the scene.xml, which is in your exported track folder. Search for “object” and “library”. By adding the numbers found by the search, you’ll roughly get the amount of objects in your track.

Now a logical solution for the problem would be to just leave everything at “none” in the object properties, unless it needs to be an object for some reason (to be animated for example).

This however creates another problem that brings us to the second part.

## Location based splitting

STK’s engine tries to only compute geometry that is in the field of view of the player. Therefore, if an object is outside the view of a player it gets ignored (this is why the polycount counter fluctuates so much).

**If objects are too big in size, the engine can rarely hide them, slowing down the engine. All models that are set to “none” will be exported as one single object.**

This means that, if all or most models are set to none, you end up with one single object that covers the whole track in size, and therefore can never be hidden by the engine.

The solution is to split up parts of the track into different objects. This can be a tedious process and also hinder future work on the track. For those reasons it’s best to wait with this until the track is finished and a copy of the original track should be kept in case you want to keep working on the track later.

Now, the question is how to correctly split up the track into chunks? The first important thing is to not make the chunks too big by geometry. If a chunk has more than 20-30k tris you should try to split it up even more unless the chunk is extremely small in size. As a rule of thumb try to create around 50 chunks for your track. The more geometry, the smaller the chunk should be in size.

Joining geometry is rather intuitive, just join objects that are close together.

{%popup_info 
    A useful trick when joining many models into one, is to use: right click, convert to, mesh and then join the models. This applies all modifiers individually for the models. So nothing gets messed up when joining models.%}

When it comes to splitting up objects it has to be done in ways that can’t be seen well by the players. Unless it has more than 40k tris, leave the main road and (if there is) landscape around it at “none” in the object properties without splitting it up.

One last thing to consider is the view of the players. **Think about which parts of the track the player can see at once and which might be hidden at that time. Try to make the chunks in such ways that they are hidden in the most effective way.** Join geometry that will always be visible at the same time, and split geometry when a part of it can be hidden while the other is visible.

{% capture geometry_optimization -%}

Scene of the optimized version of Drainage Dash, each tint corresponds to a different geometry group.

{%- endcapture -%}

{% single_gallery
/assets/wiki/Optimization_GeometryGroups.jpg,{{ geometry_optimization | strip }}
%}

Depending on what geometry you have you can either use the “object” type or the “LOD Standalone” type. LOD Standalone will be slightly better for performance but those objects will be hidden when far away from them, so choose what works best for every specific model.

## Lights

**In some cases, point lights can also slow down the engine a lot.** This usually happens if the lights have a very big radius (more than 35-50) or if there are many lights overlapping each other.

First, try to use lights only if needed. For lights in the distance you can just use a texture with glow instead, which will look almost identical from a distance.

Then, test how big a radius you really need for your lights: the weaker the light, the smaller the radius can be without compromising visuals.

{% include art_portal %}
