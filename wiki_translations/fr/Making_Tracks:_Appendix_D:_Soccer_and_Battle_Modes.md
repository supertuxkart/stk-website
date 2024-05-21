---
title: 'Making Tracks: Appendix D: Soccer and Battle Modes'
toc: true
---
Battle and soccer arenas are actually an extension of the track format and thus most of the instructions in this guide apply to arena creation. In fact, the process of making tracks and arenas diverge only at a few points, which this article aims to cover.

## Design

Naturally, an arena is not a road circuit like a track. Arenas are a large area that contains the players and provides the features needed for battle or soccer mode. The playground area of an arena therefore needs to be more interesting and interactive than in a track. Use ramps, obstacles, tunnels, and ridges to make an arena more dynamic and interesting. An arena like this is a bit dull:

{% gallery widths=480px
/assets/wiki/The_stadium_1.jpg,The arena is quite basic and lacks details as well as obstacles.
/assets/wiki/The_stadium_2.jpg,The lack of detail is even more visible from the player's perspective.
%}

Giving your arena lots of different paths will make it fun for battle mode, but avoid too many confusing paths for soccer arenas, as this will reduce the playability of your arena. However, don't forget to add gift boxes and nitros to arenas. They're necessary in battle mode and make soccer mode more dynamic.

## Navigation AI

To generate a minimap and allow for AI navigation, SuperTuxKart needs a *navmesh* for every arena. The navmesh is a plane above all the drivable areas, and must be made of quads. Wherever there is an obstacle, simply delete the face by selecting the face in **Edit** mode and hitting the **Delete** key, then selecting **Faces**. Areas with solid faces will be considered drivable by the AI.

{% single_gallery /assets/wiki/Navmesh.jpg %}

Now, select the navmesh object in **Object** mode, and set the type to **Navmesh** in the **SuperTuxKart Object Properties** panel.

{%popup_info It is very important that the navmesh is made entirely of quads and that the normals are properly calculated. To recalculate normals in Blender, switch to **Edit** mode on the navmesh, select everything (shortcut: **a**) and hit **Alt-n** to recalculate normals.%}

## Start Positions

Every battle or soccer arena needs a number of start positions, at which karts will begin the battle or soccer game. Create Blender **empty** objects and set their type to **Start position (battle mode)** in the **SuperTuxKart Object Properties** panel.

{%popup_info When placing start positions (you should have several of them—at least four), make sure they are fairly distributed. Start positions shouldn't give advantages to one team in soccer mode or one player in battle mode.%}

## Special Considerations for Soccer Mode

### Properties

In order to export a soccer field, you must first check the **Is a soccer field** box in the **SuperTuxKart Scene Properties** panel.

### Goals

Every soccer field needs two goals into which players will attempt to hit the ball. The physical goal is probably not hard for you to model, but for SuperTuxKart to detect a soccer ball crossing a goal you need two goal lines. Just like checklines, these are simply two points connected by a line, but unlike checklines, they must be set the **Goal line** type in the **SuperTuxKart Object Properties** panel.

Selecting this will also present another option: **First goal**. SuperTuxKart uses this option to determine which team gets the point for scoring. Simply check this box on <u>one</u> of the goal lines.

### The Soccer Ball

The soccer ball should be a sphere ~1.8 Blender units in diameter (icospheres are a good choice for their uniformity all-around, unlike UV spheres) and should be placed in the space above the center of the soccer field. (It will be reset to that position and drop down after each goal.) Set the type to **Object** in the **SuperTuxKart Object Properties** panel, and set the following properties:

* **Interaction** should be set to **Movable by player**. This creates two more options:
    * **Mass** should be set to something around 20 kg. This is obviously not realistic, but will produce the best results.
    * **Shape** should be set to **Sphere**, unless you intend to use another shape with special custom XML to reduce friction (see below).
* **Is soccer ball** should be selected.

{%popup_info To achieve better physics with the soccer ball, the **Custom XML** property is sometimes set for the soccer ball object in the **SuperTuxKart Object Properties** panel. This can be used for a variety of purposes. For example, the generic soccer field (soon to be replaced) sets this property to `restitution="0.4"` to reduce the "bounciness" of the soccer ball. Icy Soccer Field uses this property to allow for a cylindrical hockey puck instead of a sphere. If you wish to use this property, ask the developers for more information.%}

{% include art_portal %}
