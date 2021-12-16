---
title: Texture Guidelines
toc: true
---
Having good textures is perhaps one of the most important things when creating 3D artwork. Even a beautifully modeled object can look hideous with bad textures, so it's important that the textures you make and use fit these guidelines.

## Style

Textures in SuperTuxKart are hand-drawn or painted, not just photos (usually—though you may use photos for reference). Of course, this does not mean you need physical paints—you can use a digital painting application like Krita. Other applications are also listed at the [Installing Tools](Installing_Tools) page.

Textures are also not completely fake, cartoon-y looking. Feel free to add plenty of detail, as long as you use only hand painting (except under the circumstances noted below). For more information on texture painting, see [the latest Blender documentation](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### When to use Photos

Under certain circumstances there is no benefit to hand-painting textures. When hand-painting a detailed texture would be very time consuming, such as for vegetation, it may be more convenient to use a real photograph, provided that the photo is generic enough and will not create an ugly tiling pattern. Take for example the texture below:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

This case presents an interesting example, because this texture includes both good and bad features. The palm leaf is a good texture (Note: transparency is provided by an alpha mask for this texture) because of its uniform lighting, lack of other details, and generic nature. It's also not used in a place where it will be subject to the tiling issues discussed below. The tree trunk texture on the right, on the other hand, is not as good of a texture due to its non-uniform lighting. Texturing a tree trunk with this texture would result in repeating light/dark stripes—a very noticeable flaw. The fact that the tree trunk texture might be used to texture a solid object also makes it unsuitable because of the potential for more obvious tiling.

Photos should not generally be used to texture objects close to the player since their details will be more visible and it will be obvious that it's just a photograph.

## Color and Lighting

Textures in SuperTuxKart are colorful and contrasting, but must not clash. Extremely bright, neon/plastic/candy-colored textures will not be accepted into the main repository unless they are used in only a very small area, like the start sign in XR591. The same rule applies to textures that are only one color. Pure black or pure white textures are also discouraged—you lose color information with 100% black or white.

Textures should be drawn as if ambient color and light in the picture were neutral. SuperTuxKart's engine will automatically change the color balance and brightness based on lighting in the scene and vertex coloring.

## Patterns

There should be no immediately visible pattern to the texture. Obvious patterns make the track or kart look silly. Here is an example of what **not** to do:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Another problem appears, however, with textures that completely lack a pattern. This is a major reason for avoiding using photographs as textures:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Notice that texturing in Blender creates an ugly tiling pattern, despite the texture itself having no pattern. By removing some of the detail, however, and smoothing edges, you can get a much better result, though still not perfect:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Texture details

Try to avoid making textures with details that would not be part of the material in real life. For example, if you want a rope hanging on a wall, but don't want to use a mesh, don't make a whole new texture just to add a rope on top of the wood texture. SuperTuxKart includes a decal shader, which allows you to simply put a rope texture in the second UV layer and have it appear on top of the wood texture, without making the wood texture unusable for other applications. For more information, see [here](Texturing#Decals).

## Technical Restrictions
* Dimensions of images should be powers of two. A standard-size generic texture, for example, is 1024 × 1024, or 2<sup>10</sup> × 2<sup>10</sup>. However, textures do not have to be squares, you could have a 1024 × 512 texture, or 2<sup>10</sup> × 2<sup>9</sup>.
* Do not use large textures for small objects—this wastes video RAM.
* Texture files **must** be placed in the same folder as your exported object.
* Textures should be in PNG format when
    * The texture will be used in an up-close object requiring high detail
    * The object contains transparent or partially-transparent parts
* Textures should be in JPEG format for
    * Far-away objects
    * Sky textures (sometimes)
    * Ambient Light Maps
