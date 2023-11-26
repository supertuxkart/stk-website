---
title: 3D 모델 가이드라인
toc: true
---
SuperTuxKart에서는 일정한 오브젝트 스타일을 유지하는 게 중요합니다. 다양한 면에서 이 페이지는 [텍스처 가이드라인](Texture_Guidelines)와 유사합니다.

## 스타일

{% capture real_plam_tree -%}

진짜 야자수

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

정말 만화풍인 야자수 모델

{%- endcapture -%}

{%- capture realistic -%}

현실적이지만, 단순한 모델

{%- endcapture -%}

SuperTuxKart에 있는 오브젝트는 크기와 모양, 전체적인 형태가 현실적이어야합니다. 하지만 극사실적이어서는 안됩니다. 예시로 든 야자수를 보십시오.

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

You can see that the the new palm tree model far more closely matches the shape of a real palm tree. However, it is not so detailed that it looks real. In short, <u>maintain realism in general form, but also retain a cartoony appearance by avoiding excessive detail in shape or textures.</u>

예를 들어, 콘크리트 벽을 만든다고 합시다. 다들 콘크리트 벽이 어떻게 생겼는지 아실겁니다. -아마 출근할 때마다 매일 볼 겁니다.- Blender를 여시고 이렇게 하십시오:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

문제는 너무 단순화하다보면 많은 디테일을 놓치는 것입니다. 정말 볼품 없어 보입니다. 만약 이런 식으로 만든다면 그리 좋지 않은 오브젝트를 내놓을 것입니다. 오브젝트를 만드는 데 도움을 줄 사진과 그림, 생각 등을 찾아보는 것이 해답입니다. 맞습니다, 약간 반칙하는 것 같겠지만 이게 추천하고 허락하는 방법입니다. 목표는 알맞은 영감을 얻는 것입니다. 이 [사진](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG)처럼 말입니다. 아마 많은 디테일을 보고나서 비슷하게 만들 수 있을 겁니다.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

큰 차이가 보이십니까? 이 벽에는 재밌는 볼거리가 많습니다. 벽 위에 튀어나온 철근 이나, 바닥에 있는 경고 무늬 등 같은 디테일이 많습니다. 극사실적이지는 않지만 적어도 현실 벽에도 있을 법한 재밌는 디테일이 있는 벽을 얻었습니다. ( 한편으로 목표는 완전히 현실적인 것이 아닙니다-거의 현실적인 것이지요.)

## 규칙

* 모든 모델은 **반드시** 어린이에게 적합해야 합니다. SuperTuxKart는 ESRB의 “Everyone" [기준](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings)에 적합해야 합니다.
* Models should be capable of looking good both alone and in groups.
* High-poly models should make use of [Level of Detail](Level_of_Detail).
* Unless your model is inseparable from your track, objects should be usable in many different environments so that they can be made into library nodes.
    * Avoid adding ground or vegetation around your objects (unless your object is some sort of vegetation itself).
    * People should generally be wearing general-purpose clothing, except in cases where it wouldn't make any sense, like the beach.

## 폴리곤 개수

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
    * High: 843 tris
    * Medium: 465 tris
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
