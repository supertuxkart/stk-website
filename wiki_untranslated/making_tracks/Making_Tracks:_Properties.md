---
title: 'Making Tracks: Properties'
display_title: true
---
When you open Blender with the SuperTuxKart plugins installed, you will find that some new menus have been added. Under **Scene** in the Properties window, you'll find **Kart Exporter**, **Track Exporter**, **SuperTuxKart Scene Properties**, and **SuperTuxKart Image Properties**. Also in the Properties window, under **Object**, you'll find **SuperTuxKart Object Properties**. If you do not see these, refer to the [Installing Tools](Installing_Tools) page.

## Setting Track Properties

The first thing you need to do is check the **Is a SuperTuxKart track** box under **SuperTuxKart Scene Properties**. Many more options will now appear in the Scene Properties panel.

### Basic Properties

Set these properties right away, so that you will be able to export your track:
* In the **Track Exporter** panel, click the folder button to set the assets path. This could be the `stk-assets` or `data` folder, or the `addons` folder. When exporting your track, the track exporter will create a folder at this path called `tracks`. Inside this will be another folder containing your track.
* In the SuperTuxKart Scene Properties, set the following:
    * The track name
    * The folder name
    * The group: if you are making a track for the Add-On website, set it to **Add-Ons**. If you are hoping to have your track become part of the main game, set it to **standard**.
    * The designer: this could be your full name or a nickname, if you wish to remain semi-anonymous.

### Optional Properties

You may wish to set these properties when you made more progress on your track, but it is not necessary to change them since they are not needed for the track to be usable.
* **Music:** The `.music` file to be used for background music. See [Music and SFX Guidelines](Music_and_SFX_Guidelines).
* **Screenshot:** This picture will be shown in the track selection menu. It should be a 4:3 aspect ratio image scaled onto a 1024 × 1024 image. This is because graphics cards expect textures with powers-of-two sides.
* **Camera far clip:** This is the render distance, or the distance from the camera at which objects stop being visible. (Without fog enabled this is **not** a gradual transition.) For indoor tracks it might be able to be reduced to improve performance, but if you are creating an outdoor track with clouds you may need to increase the render distance.
* **Under Driving/laps:**
    * **Can be driven in reverse:** If this box is checked, the option to drive backward through the track will be enabled. If jumps or other obstacles prevent the player from driving backward along the track, do not enable this.
    * **Number of laps:** The default number of laps. Short tracks should have a larger number of laps by default, while long tracks should not have as many.
* **Under Start line positions:** The built in help on these options should be sufficient. If SuperTuxKart crashes when you try to start your track, it may be caused by an insufficiently wide starting area. You can set a fewer number of karts allowed per row or adjust the space around karts with these options.

{%popup_info Feel free to look through other options and become familiar with the layout of the various options, but DO NOT change them. If you forget what properties you changed earlier, you'll spend too much time trying to fix it later.%}

{% include art_portal %}
