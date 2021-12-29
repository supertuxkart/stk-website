---
title: Animating Decorations
display_title: true
---
SuperTuxKart will export both IPO and skeletal animation which you set in Blender. However, objects with either type of animation must have their type set to **Object**, **LOD Model** (if you are using LOD), or **LOD Standalone** in the **SuperTuxKart Object Properties** panel.

You may also want to consider using the vegetation shader for an easier solution for waving vegetation. See [Materials](Materials) for more information.

{%popup_info To make your animation loop continuously, select the keyframes you want to loop in the **Graph Editor**, and go to **Channel > Extrapolation Mode > Make Cyclic (F-Modifier)**. (Shortcut: Shift-E)%}

Because it is a lot of work for the physics engine to calculate collisions between two moving objects, you must set the **Shape** property in the **SuperTuxKart Object Properties** panel for each decoration of type **Object**, **LOD Instance**, or **LOD Standalone**. This is the shape used for the physics engine, and will not be visible, but it should make sense. For example, a train should have a **Box** shape, but a ball should have the **Sphere** shape. The **Cone** shape is pointy-side up in the physics engine.

Another method might be to set the **Interaction** property of the animated object to **Ghost**, and create another non-animated object the same shape as your original, but set the "Interaction" property to **Physics only**. See [Physics\#kart-object-interaction](Physics#kart-object-interaction)

## About Skeletal Animation

A few considerations need to be taken into account for skeletal animation, so that your objects export correctly:

* When preparing the mesh and armature make sure they both have a rotation of (0,0,0) to avoid problems (after the rigging is done, though, you can move the object around. Just make sure the "rest position" of both of them is non-rotated).
* If you need to fix an already rigged model, it's not too late. You can do the following: reset the rotation on the armature to (0,0,0), unparent the mesh from the armature (select **Keep transformation**), invoke **Apply rotation** on the mesh (shortcut: Ctrl-A), and reparent the mesh and armature. Then you can rotate the armature again.
* At this time, a mesh and its armature need to have their centers at the same point.

{% include art_portal %}
