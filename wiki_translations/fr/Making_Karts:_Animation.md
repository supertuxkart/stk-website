---
title: 'Making Karts: Animation'
toc: true
---
Animation is a major part taking a kart from basic to professional. While your character's animations don't have to be lavishly complicated, we do ask that you put some effort into coming up with interesting animations (unfortunately a lot of our characters have rather generic animations, so animation of preexisting karts is also welcome).

You can do a lot of cool things will skeletal animation, like Nolok's pellet gun which he shoots after winning a race or the revolving console into which Tux used to disappear upon losing with the old Tux kart (prior to 0.9). But mostly, just try to make the character's animation lively and suitable for the application; e.g. don't make your character jump with joy in the losing animation.

{%popup_info For karts, only skeletal animation is supported, **not** interpolation (IPO) animation. This includes animations of objects that are not binded to bones, toggling the visibility of objects, and any other properties that can be animated, but which do not relate to armatures.%}

<div><br/></div>

{%popup_info If you use Inverse Kinematics or other bone constraints, make sure to add extra keyframes, since only keyframes get exported to STK's mesh format.%}

<div><br/></div>

## How Kart Animation Characters Works

*This relates only to character animation like steering. For objects that should be animated independently of the kart's movement, make them a speed-weighted object. See [Making Karts: Kart Attachments and Effects](Making_Karts:_Kart_Attachments_and_Effects) for more information.*

{% single_gallery /assets/wiki/Kart_animation_markers.jpg %}

It's necessary to tell SuperTuxKart where your animations start and stop. To do this, you add markers to the timeline in Blender's Timeline window or Dope Sheet window. Here's the generic procedure for adding any of the markers described later on:

1.  In the Timeline window, in the Marker menu, click **Add Marker**
2.  Select the marker you just added by right-clicking on it (if it is not already selected).
3.  Click **Rename Marker** in the Marker menu, type the name you want, and hit **OK**.

### Steering Animations

In the order listed below, add these markers to the timeline. If you're confused, consult the screenshot above:
* left
* straight
* right

At the "left" marker, your character should have a pose steering full left; and vice versa for the "right" marker. Note that the time between these markers is disregarded; STK will use an "in-between" value for partial steering (such as with a Wiimote) which allows steering at a shallower angle.

### Jump Animations

The animations between the **start-jump** and **end-jump** markers (see above picture) will be looped when a kart is in the air. For these markers, unlike the steering ones, the number of frames between them corresponds to the amount of time the animation plays. Increasing the time between these markers will allow you to have slower jump animations.

### Winning and Losing Animations

Winning animations use three markers. The number of frames between markers again relates to time in-game. The markers are, in order:

* start-winning
* start-winning-loop
* end-winning
* end-winning-straight

The animations between the first two will be played once immediately after the race ends. The animations between **start-winning-loop** and **end-winning** will be played repeatedly, so make sure the character ends in the same position as it is at the **start-winning-loop** marker. **end-winning-straight** allows for a smooth transition back to **straight**, but it is used only in soccer and capture-the-flag (CTF) modes.

Losing animations are basically the same as winning animations. The only difference is in the marker names:

* start-losing
* start-losing-loop
* end-losing
* end-losing-straight

### Kart Selection Screen Animations

It is not necessary to make a special animation for the kart selection screen. If you do not, the winning animation will be played. However, you can put a special animation between the **selection-start** and **selection-end** markers.

### Backpedal (Looking backward) animations

You can have your character look backward or perform some other action when driving in reverse. The backpedal animations are just like the regular steering animations in every way except for the names:

* backpedal-left
* backpedal
* backpedal-right

{% include art_portal %}
