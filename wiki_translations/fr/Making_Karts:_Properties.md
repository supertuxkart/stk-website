---
title: 'Making Karts: Properties'
display_title: true
---
When you open Blender with the SuperTuxKart plugins installed, you will find that some new menus have been added. Under **Scene** in the Properties window, you'll find **Kart Exporter**, **Track Exporter**, **SuperTuxKart Scene Properties**, and **SuperTuxKart Image Properties**. Also in the Properties window, under **Object**, you'll find **SuperTuxKart Object Properties**. If you do not see these, refer to the [Installing Tools](Installing_Tools) page.

After opening Blender to a new, empty file, go to the Scene Properties section of Blender's Properties window, and, under **SuperTuxKart Scene Properties** check the box "Is a SuperTuxKart kart". A brief overview of some of the more obscure options is below. Remember, you can always look at the .blend files in the [Media Repo](Media_Repo) for examples.

{% single_gallery /assets/wiki/Kart_panel.jpg %}

* **Name:** Name of your kart.
* **Group:** This determines into which group the kart is sorted on the kart selection screen. If this is an add-on kart, it should be set to `Add-Ons`. If you're making a kart to be distributed in the core game, set this to `standard`.
* **Icon:** Name of a 128×128-pixel image file (including file extension) that will be used for the kart on the kart selection screen and elsewhere in the GUI. This file will need to be placed in the same folder as the models you export when you've finished your kart. See [Making Karts: Icons](Making_Karts:_Icons) for more info.
* **Minimap Icon:** Usually this field has the same value as above, but if you have a detailed character icon that will look bad when scaled down to fit on the minimap, make a less detailed version for this.
* **Shadow:** File name of an image that will be used as a shadow when dynamic shadows are not enabled. You can make this file later on when you've finished your kart. (The tutorial is linked from the kart tutorial index.)
* **Color:** Background color for the icon. Use the color picker button next to this field to choose a color more easily.
* **Gravity Center Shift:** You can set this to a value less than zero to make the kart more stable by lowering the center of gravity.
* **Engine sound:** Engine sound volume.
* **Skid sound:** You can define a custom skid sound of your kart via xml syntax, for Pepper (shown above) it imitates wind blowing sound when skidding, write `default` there to use default skid sound in STK, leave it empty to disable skid sound.
* **Type:** This is the weight of the kart for the physics engine. It determines how much it can knock other karts around, how fast it can accelerate, and its max speed.
* **Lean max:** This is the number of degrees a kart will lean when going full speed around a tight corner. Traditional four-wheeled vehicles will tend to have body roll and lean outward around a curve, while motorcycles and the like will lean inward. Negative values refer to inward leaning while positive values refer to outward leaning. Zero will disable all body roll. Leave blank to use the default value (outward leaning).
* **Exhaust Particles File:** The particles file for exhaust simulation. `kart_exhaust.xml` will yield regular puffs of grayish smoke, leave it empty to disable exhausting.

{% include art_portal %}
