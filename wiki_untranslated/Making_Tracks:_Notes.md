---
title: 'Making Tracks: Notes'
toc: true
---
{%popup_info This page contains guidelines and information about track making that apply to multiple sections. Other sections may list their own guidelines for that specific topic.%}
<div><br/></div>

## Blender

Blender is currently used for all detailed and professional-grade tracks in SuperTuxKart. While Blender is very advanced, and actually fairly easy-to-use once you are used to it, it can be daunting for new users and a SuperTuxKart track is **<u>not</u>** a good place to start for those who have never used Blender.

## File Structure

In order for other users to be able to open your Blender file without missing textures, it's important to have a standardized file structure. Your track's Blender project file should be in a folder located **inside** the [media repository](Media_Repo)'s **`tracks`** folder. Yes, *even* if you don't expect your track to be included in the core game, put your track's folder inside the media repository as if it already were part of the core game. It's important in any case because it makes it easier for other artists to figure out where it needs to go so that Blender can find all the right textures.

## Scaling

It's important to know how sizes in Blender translate to STK, especially for the road. (More references can be found on the [3D Model Guidelines](3D_Model_Guidelines) page. Here are some references:

* A typical track (for example, Antediluvian Abyss) is about 12 Blender units wide at an average section.
* Certain tracks have very wide sections. For example, the width of the road at the start of Cocoa Temple is ~18 Blender units.
* Tracks like Blackhill Mansion have certain sections (such as the path through the graveyard) that are as narrow as 8 units wide.

## Polycount Guidelines

*For more details about polycount, as well examples for decorations, see [3D Model Guidelines](3D_Model_Guidelines).*

* The polycount for a track should be ~290000 tris. Cocoa Temple exceeds this limit at 295058 tris, but Cocoa Temple is an exceptionally large and complicated track. Your track should not exceed the limit unless ***<u>ABSOLUTELY</u>**'' necessary. (In this case, "***<u>ABSOLUTELY</u>**'' necessary" means that your track is as detailed or more than Cocoa Temple, has the same or better quality, and is not unnecessarily wasting poly.) Most tracks will not even come close to this limit. Antediluvian Abyss, for example, uses 230810 tris, and Gran Paradiso Island uses 235411 tris.
* Use an appropriate balance of high- and low-poly. Partially-covered objects and objects that are always seen from far away should be low poly.
* Avoid unnecessary objects. Objects that cannot be seen or would not be noticed if they were missing should be avoided.

{% single_gallery widths=48%
/assets/wiki/Detail_distant_compared_to_near.jpg,"The fence, vegetation, and water are detailed near where karts drive, but far away the fence is very basic, there is no vegetation, and the water has no bottom, only the skybox."
/assets/wiki/Player_point_of_view.jpg,"From the player's point of view, you don't notice the lack of detail far away."
%}

## Gameplay

Gameplay is important to consider during many steps of the track-making process: when designing the track, when modeling it, testing, placing decorations, etc. Many modules link back to this section as a reference, so you should take the time to read these guidelines thoroughly:

* Each track should have a main path that is fairly balanced and not too difficult to drive. Some tracks, of course, will be harder than others, but the most difficult sections should be kept for side roads and shortcuts.
* Easier tracks should not have turns that require drifting. Bank curves if necessary!
* Alternate roads should not not allow for a shortcut unless there is some sort of risk in taking the shortcut. For example, there is shortcut in Gran Paradiso Island, but the player risks falling into the water.
* Reward players for trying something unusual with items or a shortcut. For example, Zen Garden has some hidden nitros if you are careful.
* Use items or nitros to help mark the path, where necessary.
* It should ALWAYS be very clear where you are allowed to go and what areas are restricted. That doesn't means the track can't be a bit like a maze, but the player should always know where the main driveline is, although alternate routes can also be visible. (i.e. What constitutes the drivable area should be clearly visible, though of course there can be more than one path leading to the finish line.)
* Try to not break the flow of the track, imagine the track like a river flowing, you should avoid "turbulent" sections
* In most cases, you should avoid making the track too narrow—when playing with lots of AI karts especially, this will result in a lot of frustrating collisions between karts.
* Avoid making the track too long. Over 1:30 is definitely too long; between approximately 1 minute and 1 minute 30 seconds is considered appropriate for one lap without using boosters and other items (like nitro).
* Always try to find an appropriate balance between straights and turns. Too many straights may be boring, but too many curves (especially very tight ones) will make the track hard to drive.
* There should be plenty of space to land after a jump—make the track quite wide. Cocoa Temple is a good example of this.

## Style

"What?!" you say? Wasn't style covered on the Style page? These guidelines are specific to tracks, and thus reduce the noise for other types of artists.

* When creating a track, choose a color palette of just one or two colors to set the theme of the track. Obviously you can use different variations of the colors to add variety, and a red barrel will always be red, regardless of your palette. But to keep the track consistent, you must use the same colors throughout. The main colors in Antediluvian Abyss, for example, are blue and gray.
* Complementing the note about color palettes above, each track's style should be consistent. Although your track might have multiple sections, the main theme does not change. Cocoa Temple is a good example of this.
* Avoid façades that look awful as soon as a kart leaves the road. Your track should have a beautiful landscape. The new version of STK has a render view of 16km if needed.

## About Including Your Track in Main

The visual quality of SuperTuxKart has steadily improved from version to version. We thus have to say that unfortunately we can't accept everyone's contributions (but you may put them on the [Add-On site](https://online.supertuxkart.net)). Keeping the visual side improving is important to achieve a high-quality game. Therefore, in general only contributions from people with decent Blender experience will become part of the main game. If you are new to Blender, you are free (and even welcome) to try learning by making tracks; however it must be said right from the beginning that unless you learn very fast or have natural talent, your (first?) tracks will most likely not go in main. Note, however, that there is nothing preventing you from releasing your own add-ons on the forums or Add-On site, to share with others.

Also be sure to read about [Communication](Communication). Following the guidelines there will help keep the community a happier and friendlier place.

{% include art_portal %}
