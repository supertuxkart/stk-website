---
title: 3D Model Guidelines
toc: true
---
It's important that SuperTuxKart has a consistent object style throughout. In many ways, this page is analogous to the [texture guidelines](Texture_Guidelines).

## Style

{% capture real_plam_tree -%}

Real palm tree

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Very cartoony palm tree model

{%- endcapture -%}

{%- capture realistic -%}

Realistic, yet simplified model

{%- endcapture -%}

Objects in SuperTuxKart should be realistic in size, shape, general form. However, objects should not be as detailed as in real life. Take a palm tree for example:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

You can see that the the new palm tree model far more closely matches the shape of a real palm tree. However, it is not so detailed that it looks real. In short, <u>maintain realism in general form, but also retain a cartoony appearance by avoiding excessive detail in shape or textures.</u>

For instance, if you were asked to create a concrete barrier, everyone knows how a concrete barrier looks—you probably see them every day when you go to work. So you open Blender and do something like this:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

The problem is you are missing a lot of details and over simplifying the object. It looks very cheap and if you do all your objects like that the end result won't be as good as it could be. The solution is simply to gather pictures, drawing, ideas, etc. that will help you during the process of creating the object. Yes, it's a bit like cheating but it's recommended and allowed. The goal is to have the right inspiration. With a picture like [this one](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), you can see all the details and reproduce them for your object.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

See the big difference? The barrier is interesting to see, there is a lot of details like the wires on top to load them, the warning strip at the bottom etc. It's not photorealistic but now at least we got an object with interesting details that could be a real life barrier. (And besides, the goal isn't to be completely realistic—just mostly realistic.)

## Rules

* All models **MUST** be child-friendly. SuperTuxKart should fit the ESRB "Everyone" [rating](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Models should be capable of looking good both alone and in groups.
* High-poly models should make use of [Level of Detail](Level_of_Detail).
* Unless your model is inseparable from your track, objects should be usable in many different environments so that they can be made into library nodes.
    * Avoid adding ground or vegetation around your objects (unless your object is some sort of vegetation itself).
    * People should generally be wearing general-purpose clothing, except in cases where it wouldn't make any sense, like the beach.

## Polycount

Polycount is the number of surfaces, or faces 3D objects have. Older versions of Blender only supported objects made of "quads" (quadrilaterals—polygons made of four points) and "tris" (triangles—polygons made of three points). "Poly" was generally taken to mean "number of quads." However, Blender now supports n-gons, or polygons with unlimited numbers of points, and only supplies numbers of surfaces and tris. Thus, since the number of tris can always be relied upon to stay the same (a triangle never gets more points!) it is more accurate to count tris than poly. Therefore, these guidelines refer to tris.

### A Bit of History

In the old days of gaming it was impossible to compute perfect lights for all pixels. All intense computation was done for each poly and then interpolated to the pixels inside the poly.

But nowadays modern engines use per-pixel lighting. Therefore, the most complex part isn't the vertex shader but the pixel shader. Let's take an example of an object that has ~500 polygons. For the GPU, managing a vertex is maybe ~10 instructions (it's not the exact number, just to give you an indication). For each poly of your model the computer will do ~10 instructions, so 500 × 10 = 5000 instructions for the entire mesh.

Now, the pixel part. It depends on how many pixels will be taken up by your object, but let's go with the worst case scenario—let's assume the whole screen is filled with your object. For each pixel to compute (the light, the gloss, the normal map, etc), it will take ~50 instructions to the GPU.

If you have a resolution of 800 × 600 (most people have higher resolution), 800 × 600 × 50 = 24,000,000 instructions. So even if you double the number of surfaces, you won't greatly affect the majority of the power spent. It's calculated by pixel, not by surface now.

Thus, we can increase the polycount without too much trouble. However it's important to keep it under control.

### Measuring Polycount

Blender displays polycount in the status bar, check the below screenshot to enable it if **Scene Statistics** is not checked by right-clicking in the status bar:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Look for the number of **Tris**. This is the information you need. Also, remember that the number of tris in the entire scene is only shown in object mode.

### Polycount Examples

* A cargo plane: ~4000 tris
* A palm tree with Level of Detail
    * High: 1400 tris
    * Medium: 1400 tris
    * Low: 42 tris
* A basic plant: 32 tris
* A medium-sized tree: 1380 tris
* A pumpkin: 470 tris

### Marking Objects as High-Poly

It is possible to mark objects as requiring a more powerful computer. To do so, open any STK scene using Blender, select the object you wish to mark and check the **Enable geometry visibility details** box in the **SuperTuxKart Object Properties** panel. You can then set **Visibility** to any of the available options to decide the minimum graphical effects level at which your object will be visible.

## Scaling

Objects must have the correct proportions so that they do not look odd in-game.

* A palm tree is about 27 Blender units tall.
* The wooden buildings in Northern Resort are approximately 8 Blender units tall.
* The Lampone flags in Candela City are 10 Blender units tall.
