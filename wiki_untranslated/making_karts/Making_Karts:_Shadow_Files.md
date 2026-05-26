---
title: 'Making Karts: Shadow Files'
toc: true
---
This short tutorial explains how to make a perfect shaped kart shadow, using the kart model in Blender and a graphics editing software as The GIMP.

The following manipulations will have to be done every time you'll change the kart model a way that impacts its top view look (eg. up-scale and down-scale transformations). So you may want to finalize the model before making the shadow.

## Taking screenshot

{% single_gallery /assets/wiki/Kart_shadow_tutorial_1.jpg %}

Jump to top-view (numpad 7) fullscreen (Ctrl + up) orthogonal mode (numpad 5 to switch persp/ortho) in Blender, add a green background using **Add > Image > Background** and scale it to fit the (-1, -1) (1, -1) (1, 1) (-1, 1) square on the (X, Y) plane.

{% single_gallery /assets/wiki/Kart_shadow_tutorial_2.jpg %}

Then take a screenshot of the screen with the 3D grid hidden via **Viewport Overlays > Guides > Grid** as shown.

## Cropping screenshot

{% single_gallery /assets/wiki/Kart_shadow_tutorial_3.jpg %}

Then, open your screenshot image with your favorite graphics editing program. Simply crop your image following the green square we added earlier. Thanks to this, the shadow will have the right scale on the shadow image.

## Getting shadow shape

{% single_gallery /assets/wiki/Kart_shadow_tutorial_4.jpg %}

With the fuzzy select tool (aka magical wand), select the colored background (don't forget to click in every closed area), then invert the selection so it corresponds to the kart's shape

{% single_gallery /assets/wiki/Kart_shadow_tutorial_5.jpg %}

Feather the selection by roughly 10px (this value may need to be adjusted following your screen resolution), then eventually grow it by 2 or 3px, to smooth the shadow.

## Filling shadow

{% single_gallery /assets/wiki/Kart_shadow_tutorial_6.jpg %}

Create a transparent layer, and fill your selection with black opacity 50% using the bucket tool.

## Saving

{% single_gallery /assets/wiki/Kart_shadow_tutorial_7.jpg %}

Then, resize your image to 256x256 (or even 128x128 if it does not contain a lot of details), hide or delete your green layer, and save the image as a PNG file, with transparency.

{% single_gallery /assets/wiki/Kart_shadow_tutorial_end.png %}

Here is your final shadow. To polish it, you can also add some darker areas as in Puffy's one:

{% single_gallery /assets/wiki/Puffy_shadow.png %}

When you're done with your shadow image, enter its file name in the **Shadow** box in the SuperTuxKart Scene Properties panel. Don't forget to copy it with your exported kart files.

{% include art_portal %}
