---
title: Cutscenes
display_title: true
---
Cutscenes are a method for rendering a scene with the game engine without creating a real track. They are used in story mode to show Nolok's capture of Gnu, etc. Cutscenes are also used by the team to create trailers and can allow for better screenshots. They're very useful.

*Note: You must have the SuperTuxKart Blender plugins installed to follow this tutorial. See the [Installing Tools](Installing_Tools) page for more information.*

## Creating a Cutscene

Since cutscenes are similar to tracks (and technically *are* tracks to the engine) with respect to scaling, library nodes, special effects, sky, etc., you should take a look at the [Making Tracks](Making_Tracks) page first for links to more information. In fact, the only pages you will not find helpful in making a cutscene are those regarding drivelines and navmeshes.

To start with, create a scene in Blender and check the "Is a SuperTuxKart track" box in the SuperTuxKart Scene Properties panel. Fill out the boxes for the cutscene's name, folder name, etc., and check the "Is a cutscene" box—this allows your track to export without a driveline and run as a cutscene.

Create camera in Blender and set its type to "Cutscene camera" in the SuperTuxKart Object Properties panel. You can animate this camera with IPO animation for scaling, rotation, and movement.

## Running a Cutscene

In the Track Exporter panel, click "Export track." Copy the resulting folder, as well as any needed textures to the `tracks` directory of the addons folder. (See the [FAQ](FAQ) for information on where this is located.)

To run your cutscene through the GUI, see [Artist Debug Mode\#cutscenes](Artist_Debug_Mode#cutscenes). To run your cutscene directly, run SuperTuxKart from the command line like this:

{%popup_code
sh
supertuxkart --cutscene=<cutscene name> --no-start-screen%}

<div><br/></div>

{%popup_info Currrently, the cutscene will continue running until you press the escape key (ESC).%}

{% include art_portal %}
