---
title: 'Making Tracks: Gameplay Basics'
toc: true
---

If your track is beautiful but boring or confusing, the player experience will suffer and most players won't want to keep playing it. Tracks with solid gameplay and average visuals are usually more popular than nicer looking tracks that are not fun to play.

Gameplay is important to consider during many steps of the track-making process: when designing the track, when modeling it, when testing it, when placing decorations, etc.

**How well a track follow these gameplay guidelines also plays a role when determining if it should be showcased in the addons explorer.**

## Road visibility and clarity

This is perhaps the most important gameplay rule of all. While you can hide alternate secret paths, **it is imperative that the player sees clearly where the road is and where it goes next**.

This is not negotiable, a track where the road is difficult to distinguish from the off-road or where the will confuse and frustrate players discovering the track for the first time, and depending on how severe the issue is, it will also aggravate players that have driven it many times before.

There are a few simple methods to get a good result here:
* **Have contrasting colors between the road the player should follow and the surrounding off-road areas.** This is the easiest and most important method to tell your players where to go next.
* Try to keep the inside of curves free from obstacles, to allow players to anticipate what's coming, unless there is a strong thematic reason to do otherwise.
* If, for thematic reasons, your track features areas that look like the main road that shouldn't be driven on, block them off. Dead-ends that lure the players by looking like normal road are not acceptable on a major path (it may be used in secret alternative paths).
* If you have elevation changes, avoid strong concave curvatures (curving inwards like the exterior of a ball), as they prevent seeing what lay behind.
* Small convex curvatures (curving outwards like the interior of a ball) on the other hand improves visibility of what lays ahead. This can be used purposefully to help the player see what's coming (such as difficult curves).
* It is possible to make use of item placement to emphasize where the road goes, but this should only be a small bonus, never the main indicator. The road should be clear even without items.
* Misleading nitro cans and gift boxes that lure players into a trap should be avoided (it is fine if they merely lure players on a suboptimal trajectory or path). Leave complicated puzzles for egg-hunt mode.
* If poor visibility is unavoidable in a specific spot, keep the road that follows relatively simple and predictable. **The general rule of thumb is that the more surprising or complex the road layout or the obstacle to come, the higher visibility and clarity should be.**
* In particular, avoid placing obstacles that cannot be seen before you are about to drive into them. This applies doubly for anything dynamic that changes lap to lap.

{% capture xr_bad_visibility -%}

XR591 gives here an example of what not to do: poor color contrast, inconsistent curvature and obstacle on the inside of the curve make this place confusing and frustrating for new players.

{%- endcapture -%}

{% single_gallery heights=400px
/assets/wiki/Gameplay_XR_poor_design.jpg,{{ xr_bad_visibility | strip }}
%}

If your track features an alternative path, it is fine if the access to the alternative path itself is concealed, such as for example the bridge in Grand Paradiso Island. But once a player has entered an alternative path, the same general rules as for the main path apply.

## Road width

In most cases, you should avoid making the track too narrow—when playing with lots of AI karts especially, this will result in a lot of frustrating collisions between karts.

{%popup_info
This section will be expanded at a later point.
%}

## Curves and straights

Designing a fun and satisfying series of bends and straights is one of the most fundamental and essential challenges in track-making.

Mastering SuperTuxKart's driving mechanics and playing on a variety of tracks brings an amount of experience that's difficult to distill in words. Nonetheless, some general guiding principles can go a long way.

To a large degree, it is a matter of balance:
* A track with only tricky sections will be tiring for players and risk being unapproachable for less experimented players. Furthermore, powerups such as zippers and other speed boosts can be very difficult or impossible to use safely without some easier sections.
* On the other hand, a track with too many easy curves and straights is simply boring, as it's too easy.

The balance you choose between the type of sections is an important factor in the final difficulty of the track. Alternative paths, discussed on the advanced gameplay design page, can be a good way to make tracks enjoyable for a wider range of skills.

But there is more to good curve placement than how difficult you make them and how often you place them.

{%popup_info
This section will be expanded at a later point.
%}

### One curve prepares the next one

{%popup_info
This section will be expanded at a later point.
%}

### How drifts affect good curve design

{%popup_info
This section will be expanded at a later point.
%}

## Match visuals and gameplay

Just as the road should be clear and visible, it is important that the visual cues you give to the player are consistent.

Invisible walls are terrible.

{%popup_info
This section will be expanded at a later point.
%}

## Length

There is an element of subjectivity when discussing the ideal length for a track, and depending on your track concept you may prefer a shorter or a longer track.

However, there are some general downsides to short and long tracks to keep in mind:
* If a track is too short, you are limited in the variety of gameplay elements. To get a reasonable race duration, you need a higher default lap number. This introduces issues with players lapping each other and may feel repetitive. Oliver's Maths Class suffers from these problems although its difficulty offers some mitigation.
* If a track is too long, the difficulty lies in sustaining high quality sections and good race length. It is possible to ensure high-quality gameplay throughout, but this means a lot of work, and instead of being enjoyed 3 or 4 times during a race, your highest quality elements will only be enjoyed twice or even once. Adding or removing one lap changes the race length a lot with a long track, making it difficult to fall into the sweetspot length. Furthermore, interactive elements such as gums left on the ground lose importance with a smaller lap number.

There are different methods to measure track length, but a good method is to check how much time it takes to complete a relatively clean lap at SuperTux speeds, without using nitro, drifts, or powerups. That way, you don't need to be an excellent driver to get useful data.

Using this method, with a heavy kart in 1.5 or a medium kart with STK Evolution balance, **a good length is between 40s and 70s, with a sweet-spot around 60s**. For reference, as I wrote this guide I got 42s in 1.5's Northern Resort and 77s on 1.5's Volcan Island, so you may want to adjust the suggested times if you happen to drive at a different pace.

{%popup_info
When designing your first few tracks, it is fine to make shorter tracks because it is much easier to complete a smaller project, and the lessons learned from those early tracks will help you make better ones afterwards.

Beyond this exception, it is highly advised that you stay within the recommended limits for track length. It is possible to make a good track outside of them, but it's more difficult and track length will work against you.
%}

## Minimap clarity

This is a minor point, but a clear minimap helps players.

Therefore, when roads on different levels cross each other, it should be in one clear point, rather than on many. This is especially important if you have complicated alternative paths or use sections with inverted gravity.

{% capture dyson_minimap -%}

This minimap of Dyson Speedway shows how useless the minimap can become if you disregard it while making a complicated track.

{%- endcapture -%}

{% single_gallery heights=300px
/assets/wiki/Gameplay_Dyson_Minimap.png,{{ dyson_minimap | strip }}
%}

When you have to mark the driveable area later on with drivequads, take care of marking the entirety of the driveable area, instead of leaving out some on the side. This can cause issues with 1.x's AI karts, but it's best practice going forward.

Finally, the initial orientation you choose for your road will determine the minimap orientation, so it's worth to stop and think what will give the best result before committing one way or another.