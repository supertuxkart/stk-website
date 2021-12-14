---
title: 'Making Karts: Icons'
display_title: true
---
Making an icon is the final step in creating a kart. Although it seems simple, numerous forum threads have revealed that icons are for some reason a very contentious subject. This page sets out some technical and artistic guidelines you can follow to make sure your character's icons fit in.

## Technical Guidelines & Instructions

* Draw your sketch in a vector graphics editor like Inkscape first, so it can be scaled if necessary. If you really aren't comfortable with vector graphics though, it's OK.
* Make the icon 128×128 pixels when you export, but keep in mind that it will be scaled to 64×64px in-game.
* Use PNG as the final format.
* If it looks bad when scaled to 32×32px, make a less detailed version and use it as the minimap icon (see instructions below)

### Adding your icon to the kart

After copying your icon file to both the same folder as the one containing your blend file and the exported kart, go to the SuperTuxKart Scene Properties panel in Blender and fill in your icon's file name in the **Icon** field. If you have a different icon for the minimap, put that file name in the **Minimap Icon** field, otherwise fill the field with the same filename as the regular icon.

## Artistic Guidelines

Icon files should generally be a drawing of the character's face, as are all of the default icons. While we would like all icons to be of exactly the same style, we understand that this is not reasonably possible. Thus, here are some friendly stylistic guidelines that you can use to make your character's icon fit in.

* Your character should be smiling, unless it's and evil character.
* The drawing should be cartoony and not overly detailed. Our motif (pioneered by yeKcim, who designed icons for the 0.7 release) is wide, connected eyes and a slight gradient for the main color, though [Jymis's style](https://forum.freegamedev.net/viewtopic.php?f=18&t=7144) is also quite suitable, expanding the style with more sophisticated facial expressions.
* Don't try to paint the Mona Lisa. Don't go overboard and waste tons of time; the icon should be nice-looking, but if necessary, ignore feedback you get unless it brings up real issues with the icon.
* Make the character face ~45° to his left. That is, the eyes will be more on the right side when you look at the character. An icon with the character staring out of the screen is likely to be a bit creepy.

{% include art_portal %}
