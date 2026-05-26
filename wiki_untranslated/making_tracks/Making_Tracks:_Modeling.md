---
title: 'Making Tracks: Modeling'
toc: true
---
Now it's time to start modeling the track. Using some nifty Blender tricks, the initial stages will be nice and easy.

This method works best for outdoor tracks, but is useful in all cases for easily creating drivelines. If you are creating an indoor track, you will probably eventually replace the entire track you make when you create the building itself, but this is an important step to make sure your track is fun to drive.

{%popup_info Another method to creating a road is to create a curve using the method below, but instead of using an array modifier and a curve modifier, you can bevel the curve, which gives you significantly greater options for controlling the shape of the road. You can follow this [tutorial](https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro/Bevelling_a_Curve) on Wikibooks. When you are ready to export, convert the curve to a mesh with **Object > Convert > Mesh** from Curve. Keep in mind that the array modifier method may be useful for creating a driveline later.%}
<div><br/></div>

## Creating a segment

Start by deleting the default objects that Blender creates (i.e. delete the cube, the lamp, and the camera.) Then, create a plane. In edit mode, make it 10 or 12 Blender units wide along the Y-axis, but keep it only 2–4 units long along the X-axis. If you want, you can [texture](Texturing) your road segment with UV texturing. This is not necessary yet, especially for indoor tracks, but will save you a lot of work in the UV editor later on for outdoor tracks.

## Extruding the road

Now, create a Bézier curve. To make it easier to find later on, give it a name. To make adding points to this curve easier, under curve properties, under the shape heading, select **2D**. You will later want to select **3D** when you add hills or other formations, but using 2D allows for greater precision when adding points. (i.e. You won't have problems with points being placed below where you want or things like that.) You also should set **Twist Method** to **Z-Up**. If you don't, you may end up with your track tilted where you do not want it to be.

Select the road segment. In the properties panel, under the modifiers tab, add two modifiers to the road segment. First add an array modifier, then a curve modifier.

In the options for the array modifier:

* Set **Fit Type** to **Fit Curve**.
* Set **Curve** to the name of your curve.
* Select **Merge**.

In the options for the curve modifier,

* Set "Object" to the name of your curve.

Now, select the curve and switch to edit mode. You can adjust the handles on each point of the curve to change its shape, and extrude points from either end by selecting an endpoint and using Ctrl+Left mouse click. You will see that the track now follows the line. Continue with this until you have the main track almost finished and the two ends are close together.

Now, still in edit mode on the curve, in the 3D View window, go to **Curve > Toggle Cyclic**. Your road will now be a single loop.

{%popup_info The segment and curve objects generally do not like to have scale/rotation on them. This means you should only ever scale the curve in edit mode, never in object mode. (If you already scaled them, don't worry you're not screwed up! Select both the curve and the model segment, then press Ctrl+A and select "Rotation & Scale"; then you will probably need to go in the edit mode of the curve, select all vertices, and tweak the radius property in the "N" panel, or simply select "Object Data" in the standard properties panel. and toggle off "Radius")

If your curve is still 2D, you'll have to switch it to 3D mode to be able to apply rotation. Then you can switch it back to 2D.%}

## Make the road usable

Now, you need to be able to save the modifications from the array and curve modifiers, but still be able to edit the road. To do this, in object mode, select the road and apply the array modifier, then the curve modifier.

## Correct misaligned ends

Unless you're very lucky, your track probably won't have closed properly with a cyclic curve, and the ends probably overlap or don't quite connect. Now that you've applied the modifiers, it should be fairly easy to correct this in edit mode by deleting excess points and connecting other ones.

## Improving Gameplay

It's important that your track be fun to drive. There are guidelines to help you with this at [Making Tracks: Notes\#gameplay](Making_Tracks:_Notes#gameplay). Try adding banking to curves, and widen the track around curves and at the end of jumps. Things like this will make your track more enjoyable.

{% include art_portal %}
