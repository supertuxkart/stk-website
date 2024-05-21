---
title: Materials xml
toc: true
---
This page describes the format of the materials.xml file, which can be used in SuperTuxkart to define special effects for certain textures. The effects might be graphical, physical (e.g. define a slowdown that applies while you are driving on this kind of textures), or a special sound effect (e.g. a sound to be played while the kart is driving on this particular terrain).

## File Format and Location

The materials.xml file is a simple xml file that contains one entry for each texture. Notice that defaults apply, so unless you want a special effect it is not necessary to create a materials.xml file to include all your textures. The materials.xml file can go into a track- or kart-directory, and it will overwrite the default settings used in stk: for example, usually sand causes a certain slow down. But on the Shifting Sand track the physics settings can be overwritten, so that there is no slowdown on sand in this track only.

{%popup_code
xml
<?xml version="1.0"?>
<materials>
<material name="bush.png" shader="solid"/>
    <material name="bush2.png" shader="addictive"/>
    <material name="wood_planks1_alpha.png" shader="alphablend">
        <sfx filename="wooden_bridge.ogg" rolloff="0.6" volume="1.0" min-speed="9" max-speed="22" min-pitch="1.0" max-pitch="1.7" positional="y"/>
    </material>
</materials>%}

This shows a simple example of a materials.xml file with three textures, one of which contains a terrain-specific sound effect to be played when a kart is driving on that terrain. A list of all possible attributes are in the next section.

## Attributes

The following attributes can be used (defaults in bold)

* shader=**solid**/normalmap/decal/grass/unlit/alphablend/alphatest/addictive/displace
    * Shader to use.
* max-speed=**1.0**
    * Fraction of the maximum speed of the kart a kart can have on this terrain. If the kart is faster, it will be slowed down gradually (see slowdown-time below).
* slowdown-time=**1.0**
    * How long it takes for a kart to be slowed down to the speed specified in the max-speed property. A small value will feel like abruptly braking, a larger value more like a gradual slow down caused by the terrain. In 0.7 we are using values between 0.5 and 4 seconds.
* ignore=Y/**N**
    * The object with this texture does not interact with the player. Should be used e.g. for things that are drawn on top of the track, since otherwise there will be a slight bump in the track.
* surface=Y/**N**
    * A mesh that is marked as being a surface does not have a physical representation - meaning that karts will just ignore this (drive through), but the graphics will still be shown. But as opposed to 'ignore' STK can detect this kind of terrain, and trigger special graphical effects. An example to use this for is a water surface, where the kart can either drive trough on a surface under the water (so the kart is partly under water), or is rescued (by either not having a surface under the water surface, or a surface with reset property). The surface will in this case be detected (once the wheel of the karts are under this surface), and can trigger special gfx.
* below-surface=Y/**N**
    * If a material is marked as being below a surface, a special graphical effect can be triggered at the actual surface. An example would be a pond where karts could drive through. The water is marked as 'surface', and the mesh the kart is driving on has the 'below-surface' property. The water texture can then contain particle effects for water splashes, and those splashes will emerge from the surface (and not from under the surface).
* falling-effect=Y/**N**
    * If the camera is driving on (or even falling onto) a terrain with a 'falling-effect', the camera will not move anymore but keep on pointing to the kart, resulting in a nice visual effect of the kart falling quickly. Can also be used for a 'seabed' under a water surface.
* friction="20000.0" (or any other value)
    * When friction is higher, the material will be less *slippery*. Note that this only applies to materials with great slopes, as straight materials always have good traction. Default : 1.0
* zipper=Y/**N**
    * When driving on this texture, the kart will get a zipper bonus.
* reset=Y/**N**
    * When driving on this texture, the kart will be automatically rescued.
* sfx
    * While driving on this terrain, a special sound is played. This effect will always be looped. Additional attributes for sound effects:
        * filename
            * The filename for this sound effect. The sound effect will be loaded from the track directory.
        * rolloff=**0.1**
            * Speed with which the sound decreases when the distance increases.
        * min-speed=**0**
            * Minimal speed at which the sound effect is played. Nothing is played if the kart is slower than this value (in m/s).
        * max-speed=**30**
            * Maximum speed when adjusting the pitch, see min- and max-pitch below.
        * min-pitch=**1.0**
            * The pitch adjustment to be used when the kart is driving at the minimum speed. Must be between 0.5 and 2.0
        * max-pitch=**1.0**
            * The pitch adjustment to be used when the kart is driving at the maximum speed (as defined above). Must be between 0.5 and 2.0. The pitch adjustment is linearly interpolated for speeds between min- and max-speed; if the kart is driving faster than max-speed, max-pitch is used.
        * positional=Y/**N**
            * If the sound effect is played where the kart is currently, or from the inital position only.

### Deprecated

Use the new **shader** property instead

* transparency=Y/**N**
    * Uses alpha testing: if alpha is >127 a pixel is written, otherwise not. See EMT_TRANSPARENT_ALPHA_CHANNEL_REF in irrlicht.
* alpha=Y/**N**
    * Uses alpha blending, the final color is blended together from the destination color and the texture color, using the alpha channel value as blend factor. See EMT_TRANSPARENT_ALPHA_CHANNEL in irrlicht.
* additive=Y/**N**
    * Use [additive blending](http://en.wikipedia.org/wiki/Color_mixing#Additive_Mixing)
