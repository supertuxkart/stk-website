---
title: 'Making Karts: Modeling'
toc: true
---
*This tutorial assumes you're already proficient with Blender. You can always check [here](https://www.blender.org/support/tutorials/) for links to good general-purpose Blender tutorials.*

{% gallery /assets/wiki/Emule_model.jpg %}

## Mesh & vertex count

During the modeling phase, remember that the kart is made to be seen from medium and far distances, but not very close distances, so detailing it a lot may be useless as some details would only be visible in rare and precise situations, a good trick is making these details part of the vehicle's texture. Also, it is way harder (and boring) trying to decrease the poly count of an existing high poly model than designing and modeling a low poly kart from the beginning, so it is worth keeping the poly number in mind.

## Dimensions

STK's karts' dimensions are approximately between 0.7x0.4 and 0.9x0.5 OpenGL units, so you may first choose a same ranged dimension. Then, in-game tests will be required to adjust it. Note that currently, kart physics depends on the dimensions of the models, but this will change when karts will have individual physics attributes.

## Transformations

Before being exported, the kart must be located as if the Y-axis was the road, and have a 0 X and Z translation (this last part may not be required, but this is cleaner like this ;). Also, when you hit Numpad 1 in Blender, you should see the back of the kart. The final model's rotation must be 0, and its scale 1 in object mode.

{% single_gallery /assets/wiki/Kart_view.jpg %}

## Objects in Blender scene

Ideally, the kart has its own mesh, the character another independent mesh, and each wheel another additional mesh object. Assign the wheels their type in the SuperTuxKart Object Properties panel:

{% single_gallery /assets/wiki/Kart_wheel.jpg %}

Note that karts can have (up to) 4 wheels. Wheels that are on the front are considered wheel-steerings and will automatically rotate as you steer in-game. The wheel's origin in Blender is used by SuperTuxKart for the wheel movement, an incorrectly placed geometry's origin can cause the wheel improper movement, also you might want to make test for aesthetic purposes, mostly to fix the point from where the wheel steers.

The collision is calculated only for the vehicle mesh (assuming the character never go outside the kart), if your vehicle features big wheels is most likely these will go through other vehicles and track objects like walls or guard rails, even over fences some times so be sure to make enough tests if your vehicle has to have big wheels, like in the case of monster trucks. Contrary case, try not to make your vehicle's chassis too low, as the car might have problems with irregular terrain.

Every object in your blender scene will be exported by STK's kart exporter except:
* cameras,
* lights,
* objects where type **Ignore** is selected in the SuperTuxKart Object Properties panel.

{% include art_portal %}
