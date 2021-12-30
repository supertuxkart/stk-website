---
title: Special Effects
toc: true
---
Though not strictly necessary, special effects make a scene more dynamic and interesting. SuperTuxKart supports many types of special visual and auditory effects.

## Particles

Particles are used to add things to the air like dust or smoke or fire. They are configured via an XML file. If you intend to add particles, see the [Particles File](Particles_File) page to create a particles file (or reuse an existing one), then continue with this tutorial.

### Particle Emitters

Particle emitters are empty Blender objects with their type set to "Particle Emitter" in the SuperTuxKart Object Properties panel. Simply set the "Particle File" field to the name of your particle file, modify the clip distance (if you need to) for performance reasons, and make sure that "Enable emission" is checked. You can uncheck "Enable emission" if you intend to dynamically enable and disable it with scripting.

### Particles From Driving Karts

You can set particles to be emitted whenever a kart drives and/or skids on a certain texture. To enable this, select the image you will use in the SuperTuxKart Image Properties panel (If you wanted particles to be emitted whenever the player drives off the road, you would want to select the image that is used to texture the sides of the road.) and check the "Particle effect" box. Set the "Particles file" property to the name of a particle file, and check the "Skid" and/or "Drive" boxes to enable the particle effect for driving and/or skidding karts.

### Particles On Collision

You can also set particles to be emitted when a kart collides with a textured object. Select the texture in the SuperTuxKart Image Properties panel, and, under "Interaction" enable "Collision action". Enter the filename of your particle file in the "Particles on hit" field.

## Sounds

You can add ambient sounds to your track to make it more interesting. Sound files must be in Ogg Vorbis format (.ogg). See [Music and SFX Guidelines](Music_and_SFX_Guidelines) for more information on what the style of the sound should be like.

### Sound Emitters

Create an empty Blender object and set its type to "Sound Emitter" in the SuperTuxKart Object Properties panel. Enter the name of your sound file in the "Sound File" field. The following properties are configurable:

* **Sound volume:** The volume of the sound: 0 is silent, 1 is full volume.
* **Rolloff rate:** How quickly the sound loses volume as distance from the camera increases
* **Maximum distance:** The distance at which the sound is no longer audible
* **Play on approach:** Makes the sound begin playing when the player approaches the sound emitter. Otherwise, the sound plays constantly unless acted upon by scripting.
    * **Play when at distance:** Configurable if "Play on approach" is checked. It is the distance, in Blender units, from the sound emitter at which a kart triggers the sound to play.

### Sounds From Driving Karts

You can set a sound effect to be played when a kart is driving on a particular texture. Select the image you want to use in the SuperTuxKart Image Properties panel, and check the "Play sound effect" box. Enter the name of your sound file in the "Sound File" field. The following properties are configurable:

* **Minimum kart speed:** The minimum speed at which the sound will play
* **Maximum kart speed:** The maximum speed at which the sound will play
* **Sound pitch at min speed:** The adjustment to the pitch made at minimum speed— numbers less than 1 lower the pitch, while numbers greater than 1 increase the pitch.
* **Sound pitch at max speed:** The adjustment to the pitch made at maximum speed— numbers less than 1 lower the pitch, while numbers greater than 1 increase the pitch.
* **Positional sound effect:** If checked, the sound will decrease in volume as distance increases.
* **Rolloff rate:** The rate at which volume decreases as distance increases

## Billboards

Billboards are flat quads which always face the player. Orient the quad along X or Z axis and set the type to "Billboard" in the SuperTuxKart Object Properties panel. This can be used to make a fake halo around lights. (However, this is no longer necessary for point lights with fog enabled in SuperTuxKart ≥ 0.9.)

You can also enable the "Fade out when close" option in the SuperTuxKart Object Properties panel to make the billboard fade away as the kart approaches.

## Animated Textures

Any objects that are part of the main track (i.e. no other special object listed here except objects of type "object") can mark one texture to be animated. The object must define the filename of the texture in the property texture to animate, and should set the speed of movement by setting the "Animation X Speed" and/or "Animation Y Speed" properties. See the following example:

{% single_gallery /assets/wiki/STK_animated_texture.jpg %}

This can be used to simulate liquids flowing like water in a river. For an example, see the animated fish in Antediluvian Abyss. The .blend is in the abyss folder in the in the tracks folder of the media repository.

You can also use a "movie" texture like this one, for complex effects (fire, clouds, etc). You need to enable "Anim the texture by step". "Animation Y Speed" becomes the number of frames in the texture (in this example 4). The "time between two frames" property is the amount of time, in milliseconds, between frames.

{% single_gallery /assets/wiki/Stktex_animatedFire_a.png %}

You should not use a large number of frames, otherwise you might experience performance issues.

## Per-Object Effects

Although most effects are controlled by texture, objects with the type "Object", "LOD Instance", or "LOD Standalone" in the SuperTuxKart Object Properties panel can set a few special effects of their own. Note, however, that this requires setting the "Interaction" and "Shape" properties, which can cause problems if you're not careful. See [Physics\#kart-object-interaction](Physics#kart-object-interaction).

### Glow

A glowing outline can be set to appear around certain objects, such as a barrel of nuclear waste. Items use this, for example. Simply set a color using the color picker button for the "Glow (outline)" property in the SuperTuxKart Object Properties panel for your object.

### Distortion

Distortion is an extremely useful effect in many places. It simulates looking through a wavy piece of glass, but can also be used in other places. It is used in Antediluvian Abyss to create a distortion effect when looking through the glass and in Cocoa Temple to simulate heat waves in the cocoa roaster part of the temple. Enable it by using `displace` shader in custom shader name.

The `textures/gfx` folder of the [media repository](Media_Repo) includes a texture called `gfx_distord_AlphaTested.png` which you can use to flag objects as being used for distortion. Like all textures ending with "AlphaTested" in the `gfx` folder, it won't appear in-game.

## Special Camera Effects

### Alternate End Cameras

Alternate end cameras allow you to show a different view at the end of the race. By default, the camera will face back on the player's kart at the end of the race. To show another view, place Blender cameras along the track, give them one of the types below in the SuperTuxKart Object Properties panel:

* **End Camera (Fixed):** At the end of the race, the nearest end camera will turn and zoom automatically to follow the kart.
* **End Camera (Look Ahead):** The default end camera, used only if you want to switch between fixed and look-ahead modes.

Set the "Start Sphere Radius" property so that the start spheres (where the the game will switch to another camera) overlap.

{%popup_info The "Cutscene Camera" object type is discussed in [Appendix B: Cutscenes](Cutscenes).%}

### Suspend Camera Movement

This effect is controlled per-texture. When a kart is over this texture, the camera will stop moving but still face the kart. This is most useful to emphasize a kart's fall into a pit or into water, which is why this is enabled by checking the "Falling Effect" box in the SuperTuxKart Image Properties panel. However, it might also be useful for e.g. a kart being shot by a cannon (See [Physics](Physics)). This effect is already enabled if you are using `gfx_resetWaterSplash_AlphaTested.png` for water.

## Water

Without complex animation, unfortunately it is impossible to create waves or moving water. However, you do have a few options to make realistic water. Most water in SuperTuxKart is simply a water texture (e.g. jungleWater.png for Cocoa Temple) using the displace shader (see [Materials](Materials)). You can use an animated texture to simulate flowing water (see above).

The best method for creating water is to have two planes: the top one textures with `gfx_resetWaterSplash_AlphaTested.png`, the middle textured with `jungleWater.png` and set the shader to `displace`.

{% include art_portal %}
