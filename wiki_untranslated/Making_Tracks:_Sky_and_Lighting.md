---
title: 'Making Tracks: Sky and Lighting'
toc: true
---
Sky and lighting may not seem like very important or time-consuming element of track creation, but just because this is one of the last sections, <u>do not slack off</u> on it. Lighting is probably the single most important step in setting the theme or mood of your track—more than even decorations. Decorations should complement the mood, but even the way in which they do this is greatly affected by the lighting. Compare Cocoa Temple with its nighttime version, Carnival del Cacao.

{% gallery widths=48%
/assets/wiki/STK0.9_2.jpg
/assets/wiki/STK0.9.1_3.jpg
%}

The nighttime sky in Carnival del Cacao is contrasted by the colorful light from the fireworks and the more noticeable light from the torches, creating a more festive atmosphere. Cocoa Temple seems quite everyday and ordinary in comparison.

## Sky

Sky complements lighting in setting the mood (and in fact directly effects the lighting if an ambient light map is used). A dark track should have a dark sky, and a light track should have a light sky. Sky is configured in the SuperTuxKart Scene Properties panel. Select a type from the "Sky Type" drop-down menu. Each type is detailed below.

### Box

For performance and lighting reasons, SuperTuxKart uses a *skybox* for textured skies, meaning that the track essentially exists inside a textured cube. (Skydomes are no longer an option.) Each texture (you may use a different one for each side) should be a 1024 × 1024 image, preferably in JPEG format.

Though simple in design, skyboxes are not always easy to create. Textures must fit together properly; otherwise the corners of the skybox will be readily visible. Don't try to make the skybox too detailed, and **don't use photographs**; otherwise you will have problems with noticeable edges. The same rules for [texture guidelines](Texture_Guidelines) apply to skybox textures.

Don't worry too much if edges are visible. As long as your track is interesting enough, players won't be bothered much by a slightly visible edge, as is visible in the top center of this picture:

{% gallery widths=48%
/assets/wiki/STK0.9_1.jpg
%}

Another way to avoid visible lines in a skybox is to hide them with vegetation and land formations. The skybox in Cocoa Temple is barely visible, but the vegetation in front of it does not look strange because the skybox texture itself suggests vegetation:

{% gallery heights=300px
/assets/wiki/Skybox_aa.jpg,Skybox texture
/assets/wiki/STK0.9_2.jpg,In-game
%}

### Plain Color

The sky will be a single solid color, set by the "Sky color" property. This could useful for mostly-indoor tracks, but is not recommended.

### None

The sky will appear to be pale gray; however there is not actually a sky at all. This is simply the standard OpenGL background color, just like the background in Blender.

## Sun

### Sun (Lighting and Shadows)

This type of sun will not be visible in-game, but will still produce light and is used for calculating shadows. To create a sun for lighting, add a Blender sun and set it as "Sun" in the SuperTuxKart Object Properties panel. This allows you to configure three other properties:

* **Ambient color:** This is the color of the light that will be everywhere in the track, even if the sun is hidden by an object. It should be a darker color (~120 120 120) than the diffuse and specular colors. The ambient color also has an important role in setting the atmosphere of the track. For example, an underwater track should have a greenish-blue ambient color.
* **Diffuse color:** This is the color of light that reflects off of bumpy or wavy surfaces. It should be brighter than the ambient color, but slightly darker than the specular color.
* **Specular color:** This is the color of light that reflects off of smooth surfaces. It should be the brightest color, because the light is traveling in a single direction and is not being scattered by diffusion.

{%popup_info Shadows don't work well when this type of sun is placed near the horizon. However, you can place a visible sun near the horizon, and players won't usually notice that the shadows aren't aligned with the sun's position. (See below)%}

### Sun (Visible)

This type of sun creates an effect much like looking at the sun in real life—a glowing circle in the sky. (It also creates anamorphic lens flare.) Create a Blender sun and set its type to "Light Shaft" in the SuperTuxKart Object Properties panel. This creates two properties:

* **Strength (opacity):** This is how "bright" the sun looks.
* **Color:** This is the color of the sun. However, the coloring is somewhat subtle and the sun itself won't look exactly this color. You will have to experiment to see what works well for you.

{%popup_info Despite its name, the light shaft is not a true volumetric light. "Light shafts" are not suitable for creating beams from e.g. a lighthouse.%}

As noted above, you can place visible suns near the horizon but place the regular sun higher in the sky so that shadows work properly.

{% gallery widths=48%
/assets/wiki/Sun_blender.jpg,"In Blender (Sun casting shadows in green, visible sun in blue)"
/assets/wiki/Sun_godray.jpg,In SuperTuxKart
%}

## Shadows

Thanks to the support for dynamic shadows added in SuperTuxKart 0.9, most (if not all) objects will cast a shadow—and objects using animation or the vegetation shader will cast animated shadows! Simply check the "Dynamic shadows" checkbox under "Graphical Effects" in the SuperTuxKart Scene Properties panel.

{% gallery widths=48%
/assets/wiki/STK_dynamicshadows.jpg
%}

## {% include_relative _Point_Lights.md %}
## Ambient Light Map

Ambient light maps, also known as image-based lighting or spherical harmonics lighting can be used in conjunction with the the color of the sun to affect the lighting of a track by simulating light bouncing off the image. An ambient light map, however, unlike changing sun color, allows for variable lighting across the scene.

You can configure an ambient light map for your track by enabling "Ambient light map" under "Graphical Effects" in the SuperTuxKart Scene Properties panel. This allows you to set an ambient light map for each side of the invisible cube which will be used to light the scene.

Often, an ambient light map texture is simply a blurred and shrunken version of the corresponding skybox texture. For performance reasons, ambient light map textures should not exceed 256 × 256 pixels in size.

## Clouds

You can add clouds by using meshes. However, make sure the camera far clip set in the SuperTuxKart Scene Properties panel is high enough. You should also set their interaction to ghost, either per-texture or per-object (see [Physics](Physics)). Animating the texture will also increase the realism.

## Weather

Weather is an excellent way to manipulate the mood of a track. To enable weather, select the weather type under "Weather" in the SuperTuxKart Scene Properties panel. (Currently, only rain and snow are supported.) You can also check the "Lightning" checkbox to enable lightning, and you can set the name of a sound file (.ogg format) to play in the "Weather sound" box.

## Fog and Volumetric Lighting

With fog enabled, you can have volumetric lights. This creates a halo-like effect, where light reflects off of the fog. First, enable fog by checking the "Fog" checkbox under "Graphical Effects" in the SuperTuxKart Scene Properties panel. This creates four more options:

* **Fog Color:** The color of the fog. The color should generally depend on the lighting in your track—dark tracks should have dark fog.
* **Fog Start:** This is the distance from the camera at which the fog begins to hide objects.
* **Fog End:** This is the distance from the camera at which objects are no longer visible through the fog.
* **Fog Max:** This is the maximum density the fog can reach. This is useful to stop the fog from getting thicker even as objects get farther away.

### {% include_relative _Volumetric_Lights.md %}
{% include art_portal %}
