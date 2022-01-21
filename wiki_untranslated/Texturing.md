---
title: Texturing
toc: true
---
Texturing is the process of applying images to 3D objects so that they appear more realistic. The process slightly differs depending on the Blender version used. This section builds on top of information found on the [Materials](Materials) page.

## For Blender 2.80 and newer

Blender materials must be used in order to assign images to UV maps. Hence usage of the 'Material Properties' section in Blender's 'Properties' window or 'Shader Editor' window is crucial to being able to texture any mesh.

## For Blender 2.63 to 2.79

Use UV texturing in Blender for your objects for them to appear in-game, but **don't waste time with Blender materials or cycles materials.** They don't get exported into the game—instead, use SuperTuxKart's own materials system.

In fact, don't even bother with the Texture section of Blender's Properties window. Simply applying a UV map is enough.

## Sources of Textures

### The Media Repository

The SuperTuxKart [media repository](Media_Repo) should be the first place you look for textures. They're included in the game, so you don't have to distribute copies with your object and they use advanced graphical effects like gloss and normal maps to take advantage of all the features of SuperTuxKart's engine. They are in the `textures` folder. Simply choose one of these textures when you open an image in the **UV/Image Editor** window.

{%popup_info It is **very** important that the paths to the textures you use are correct in Blender, or no one will be able to understand your file. Always place your track's files inside the media repository folder as if it were part of the core game. Additionally,
* Do not link to textures in **stk-assets**, only in **stk_media_repo**. There's no guarantee that someone else has their stk-assets folder in the same place as you.
* Never pack textures into your Blender file.
* Never tell Blender to make file paths absolute. It will cause nothing but grief for anyone else who downloads and tries to open your file.%}

Don't like the default color of the textures? No problem! Just use vertex coloring (see below). Vertex color lets you paint different colors on an object so that you don't need a new texture. Gran Paradiso Island, for example, uses vertex color to make the sea floor greenish-blue, even though the original texture is a tan color rock texture.

{%popup_info Make sure you're using the actual texture, not the gloss or normal map. Gloss maps are denoted by a filename ending with gloss, while normal maps are denoted by a filename ending with Normal.%}

### Free Online Sources

There are many sources of free images that can be used as textures. Several are listed [here](Licensing#where-to-find-files). Just be sure they fit the [texture guidelines](Texture_Guidelines).

## Vertex Coloring

Vertex coloring lets you modify the color of objects by vertex. The coloring is then applied on top of any textures. (This is why we require most textures included in the game to be of a semi-neutral color) Vertex color is extremely efficient in terms of processing, and is a much better option in most cases than using a separate texture for gradients or using splatting. More information on how to apply vertex colors can be found by visiting the [Blender manual](https://docs.blender.org/manual/en/latest/sculpt_paint/vertex_paint/index.html).

Alternatively, a good video tutorial is available [here](https://youtu.be/Ivb45iA5QT8), however the first part about materials is not relevant for STK.

### Getting started

Select the object you want to color. In the 'Properties' window, under 'Data', click the plus button next to the box under 'Vertex Colors'. Now, in the '3D View' window header, switch to 'Vertex Paint' mode (rather than Object or Edit modes). Several new options will appear in the toolshelf at the left of the 3D View window. Alternatively, 'Vertex Paint' mode can be entered right away, in which a vertex color layer will be automatically created.

### Painting

Choose a color with the color picker at the left, adjust the radius (size) of the brush, change the strength if you want to, and choose a blending mode ('Mix' is the default). Then, left-click on vertices to color them. You'll notice that you can't paint in the middle of a face. That's because vertex coloring works per-vertex—you can't assign colors to the middle of a face, because there's no vertex to assign it to. It's one of the limitations of vertex coloring, and you may have to work around it by using subdivision (shortcut: w > Subdivide) on a face.

### Viewing your work in Object Mode

To preview how vertex colors when combined with an image texture would look like in-game, change the Viewport Settings to use 'Material Preview' mode. In addition, the shader node setup needs to be reworked to include a MixRGB node, where the 'Color1' input is the image texture, and the 'Color2' input is a vertex color node connected by its 'Color' output. This MixRGB node takes the place of the image texture node, connecting its 'Color' output to the 'Base Color' input of the Principled BSDF shader node.

For Blender <= 2.79, to make your painting visible in Object Mode when not in Textured view, enable 'Textured Solid' under 'Shading' in the '3D View' window properties panel (shortcut: n).

## Decals

{% single_gallery /assets/wiki/Decal_shader.jpg,An example of a decal. The wooden texture uses the first UV map; the transparent dirt track texture uses the second UV map.%}

SuperTuxKart provides a "decal shader" which allows you to mix textures just like layers in a photo editing program. To use decals, first select the target mesh in Blender. In Blender's 'Properties' window, under 'Data', click the '+' button next to the box under 'UV Maps'.

With the new UV map selected, switch to 'Edit mode' on the mesh and texture the object with the decal texture wherever you want. Be sure to select "Keep UV and edit mode mesh selection in sync" and only select faces you want to add the decal to. If you aren't careful, the decal will tile all over the place.

Finally, to preview how this setup would look like in-game (for Blender >= 2.80), the shader node setup needs to be reworked to include a MixRGB node, where the 'Color1' input is the image texture for the first UV map, and the 'Color2' input is the image texture for the second UV map. In addition, the 'Fac' input should be connected to the 'Alpha' output of the image texture connected by the 'Color2' input. This MixRGB node takes the place of the image texture node for the first UV map, connecting its 'Color' output to the 'Base Color' input of the Principled BSDF shader node.

{%popup_info The decal shader does not work with textures that include a normal map.%}

{% include art_portal %}
