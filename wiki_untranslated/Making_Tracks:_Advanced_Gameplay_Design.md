---
title: 'Making Tracks: Advanced Gameplay Design'
toc: true
---

When this page is finished, it will discuss the topics listed below and more :)

## Elevation changes

**Elevation changes are an excellent way to make your track feel more fun for players.** They give a sense of dynamism and change that help to keep players entertained, and they are an excellent tool to create beautiful views.

The direct gameplay effect of driveable slopes is rather minor in SuperTuxKart, but karts have a more difficult time accelerating uphill and an easier time accelerating downhill so this can be used purposefully.

Elevation changes can come in many different forms:
* Short and moderate slopes mainly have a visual effect. This effect comes not only from how they look but also from how they affect the camera orientation as the player drives on them.
* Long slopes with important elevation changes, which can be used to create breathtaking views as well as having meaningful effects on acceleration.
* Road banking, which is particularly useful to increase the visibility of a curve.
* Strong curvatures and sharp changes in elevation can be used to create jumps. This is discussed in more details in the [jump section](#jumps-and-cannons).

{% capture small_slope_caption -%}
{%translate "A small slope over the bridge"%}
{%- endcapture -%}

{% capture banked_curve_caption -%}
{%translate "A banked curve"%}
{%- endcapture -%}

{% capture great_slope_caption -%}
{%translate "A long slope"%}
{%- endcapture -%}

{% gallery widths=32%
/assets/wiki/Gameplay_small_slope.jpg,{{ small_slope_caption }},,Pepper in front of a small wooden bridge in Black Forest
/assets/wiki/Gameplay_banked_curve.jpg,{{ banked_curve_caption }},,GNU in a long banked curve in the snowy landscape of Freytra Peaks
/assets/wiki/Gameplay_great_slope.jpg,{{ great_slope_caption }},,Pepper on a downhill road section in Black Forest with an uphill road section visible next and with houses and a combine harvester at work in the backround
%}

When designing areas with elevation changes, it is important to keep in mind that **the curvature chosen for slopes can significantly influence the track's clarity.** The principles from the Gameplay fundamentals page regarding [track clarity](Making_Tracks:_Gameplay_Fundamentals#road-visibility-and-clarity) contain practical advice in this regard.

## Ground zippers

Some ground zippers are good, but don't abuse them.

{%popup_info
This section will be expanded at a later point.
%}

## Alternative paths

It should be done, but not overdone, common sections are important for player interaction.

* Each track should have a main path that is fairly balanced and not too difficult to drive. Some tracks, of course, will be harder than others, but the most difficult sections should be kept for side roads and shortcuts.

{%popup_info
This section will be expanded at a later point.
%}

### Secret Paths

{%popup_info
This section will be expanded at a later point.
%}

### Balancing paths

* Alternate roads should not not allow for a shortcut unless there is some sort of risk in taking the shortcut. For example, there is shortcut in Gran Paradiso Island, but the player risks falling into the water.

* Reward players for trying something unusual with items or a shortcut. For example, Zen Garden has some hidden nitros if you are careful.

{%popup_info
This section will be expanded at a later point.
%}

## Jumps and Cannons

### Jumps

In SuperTuxKart, there is no extra game mechanic tied to jumps, such as in some other games that reward pressing an input as you jump. This is partly historical, as most tracks didn't offer jumps that could take advantage of such a mechanic, but it is mostly due to the very simplistic nature of such an interaction that hardly justifies requiring an extra button to play the game.

But that doesn't mean track creators shouldn't use them! **Jumps are largely perceived as enjoyable by players, and, when well designed, can bring an element of skill.**

Of course, like with all good things, you shouldn't overuse them. And jumps are not needed to make a good track either! They simply are a tool at the disposal of track-makers that can be used if it fits the track's theming and its general gameplay.

There are two major categories of jumps that come with different requirements:
* Mandatory jumps, which cover the entire width of the road.
* Optional jumps, which can be easily driven around or which require extremely high speed.

**With mandatory jumps, you need all the players**, even rather inexperienced ones playing in the lowest difficulty, **to be able to complete the jump.**

This usually means that there should either be no impassable area to jump over (e.g. in Volcano Island where a short jump lands the player in shallow waters that don't prevent continuing on) or that there should be a zipper pad with a minimum speed to guarantee that the kart as enough velocity to cross the gap (e.g. in Cocoa Temple's last jump).

You should also be mindful of the landing area and of the shape of the road leading to the jump. Thankfully, SuperTuxKart's physics are such that you don't really have to worry about karts managing to land upright.

The road should prepare the karts to be in the right orientation to land safely (a short straight is usually the safest way) and the landing area should be reasonably wide. It is fine, however, if it is possible to fail the jump by driving in a risky or stupid way, such as trying to take the jump while driving at a weird angle to the road. Make sure that rescue planes or walls are there to catch the karts in a sufficiently controlled fashion, however.

**Optional jumps can be made more challenging as players can simply choose to avoid them.** This difficulty can come in a few different ways: reduced visibility (e.g. to access Gran Paradiso's alternate path), a narrower set of safe angles to land without crashing, a path leading to the jump that doesn't automatically set the kart in the right angle, no safeguard to guarantee that the player goes fast enough to jump successfully. Starting with STK Evolution, this last method can be combined with moderate slowdown textures to reserve a jump for karts having an off-road bonus, through a zipper, an electro-shield, or a third-tier drift boost.

Optional jumps don't necessarily have to stand out visually: they can require the player falling down to a path that's not clearly noticeable from the main path, or they can be a simple side-effect of a natural-looking track element that provide the small slope and rapid elevation change needed for a kart to become airborne.

Of course, **for the optional jump to make sense, the player has to be rewarded in some way**. There are several methods that can be used for this purpose: the jump can allow to cut a corner and gain a bit of time, the jump can be located as part of a secret path (like in Cocoa Temple), there can be track items (such as nitro cans) that can be caught when taking the jump accurately.

Please note that, for jumps that require a high speed to take off, **the jumping characteristics of various kart classes [have been mostly unified](https://blog.supertuxkart.net/2025/12/karting-without-hitch.html) in SuperTuxKart Evolution**. In SuperTuxKart 1.5 and previous versions, heavy karts would take off much more easily, making jumps with a speed-based take-off impractical.

Note finally that it is possible to design optional jumps that are not meant to be used by players, but which rather are meant to punish careless players using too many speed boosts before it. You should be careful to not make something too treacherous, but if a zipper or another powerup is required to get to the dangerous speeds, this is a fine design element.

{%popup_info
This section will be expanded at a later point.
%}

### Cannons

{%popup_info
This section will be expanded at a later point.
%}

## Dynamic elements

{%popup_info
This section will be expanded at a later point.
%}

## Gravity changes

{%popup_info
This section will be expanded at a later point.
%}
