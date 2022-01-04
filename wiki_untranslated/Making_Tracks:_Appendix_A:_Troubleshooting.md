---
title: 'Making Tracks: Appendix A: Troubleshooting'
display_title: true
---
While the track-making process is usually fairly straightforward and the exporters usually work fine, problems can appear. If you can't find anything helpful on this page, feel free to look for your problem or ask for help on the [forum](https://forum.freegamedev.net/viewforum.php?f=16). Be sure to read the [Communication](Communication) page too, if you are posting on the forum.

{% start_liquid qa %}

My AI karts drive off the road!

There could be many reasons for this:

* Your driveline is misplaced.
* Your driveline has a break in it.
* Your road makes too sharp of a turn.
* Your road is too narrow.

Try to correct any of the issues that apply, and see if that helps.

{% end_liquid %}

{% start_liquid qa %}

AI karts get rescued randomly or when launched by a zipper

To decide whether to rescue a kart, SuperTuxKart performs raycasts to decide whether a kart is on a surface or not. When a kart is launched by a zipper without any surface underneath, STK will detect that that the kart is off the track and needs to be rescued. To avoid this, create a low-poly surface below the main driving surface or launch trajectory so that STK does not detect a false-positive need for rescue. Texture the surface with a transparent texture or set it as Physics only. See [Physics#kart-object-interaction](Physics#kart-object-interaction) for more information.

{% end_liquid %}

{% start_liquid qa %}

Transparent or translucent decorations don't appear correctly in-game!

Most likely this is a sorting issue. Try exporting transparent parts as separate objects ("Object" in SuperTuxKart Object Properties panel in Blender). If your transparent section includes part of the main drivable area, be sure the check the "Drivable" box in the SuperTuxKart Object Properties panel. Also, ensure that "Disable writing to Z-buffer" is checked for any transparent or partially transparent textures in the SuperTuxKart Image Properties panel.

{% end_liquid %}

{% start_liquid qa %}

Transparent objects display weirdly in Blender!

This is for the same reason discussed in the question above: sorting issues, and is a known issue with Blender. Unfortunately, we can't change this. Try checking the "X-Ray" box under "Display" in the "Object" section of the Blender Properties window for your transparent objects. It's not a golden hammer, but it might help somewhat.

{% end_liquid %}

{% start_liquid qa %}

My kart slides around and I can't steer/accelerate properly!

This is most likely a result of normals smoothing. Disable normals smoothing in the SuperTuxKart Scene Properties panel.

{% end_liquid %}

{% start_liquid qa %}

My kart flys up in the air when I try to play my track!

Most likely your track is too narrow or you have too many karts per row at a starting line. When [Artist Debug Mode](Artist_Debug_Mode) is enabled, if you are placed in the air you'll start flying; if Artist Debug Mode is not enabled, the game will crash. There are three ways to fix this problem:

* Make the track wider at the starting line.
* Reduce the **Karts per row** on start value under **Start line positions** in the SuperTuxKart Scene Properties panel.
* Reduce the **Start sideways distance** value in the same section as above.

Another possibility is that your track has the normals on the wrong side. To check if this is the problem, switch to edit mode on your track mesh, expand your **Viewport Overlays** menu at the top right, at the very bottom you will find buttons to enable **Normals** overlays. If they appear on the bottom of the mesh, select the faces you wish to correct, and go to **Mesh > Normals > Flip**.

![Display_normals]({{ '/assets/wiki/Display_normals.jpg' | prepend: site.baseurl }})

{% end_liquid %}

{% include art_portal %}
