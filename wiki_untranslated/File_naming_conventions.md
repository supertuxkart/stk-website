---
title: File naming conventions
toc: true
---
This is a suggested naming scheme that is currently being discussed.

## Kart Names

The directory name for a kart should be the 'obvious' name in lower case (e.g. 'nolok' for Nolok). Do not use any spaces (use _ instead). The directory names act as identifier for karts in the game (and they can be used on the command line).

Note that tux, gnu, and nolok are special:

* Gnu and nolok are locked at the beginning of the game, and are therefore referenced in various challenges (look in data/challenges).
* Nolok has special powers (bubble gum and swatter), so the games checks for a game with identifier "nolok" (see attachment.cpp, item_manager.cpp, powerup.cpp, swatter.cpp, kart.cpp).
* Tux is the default kart if no config file is found (user_config.hpp), It is also used in case that STK's demo mode is activated (demo_world.cpp), and for assigning an icon to the player (player_profile.cpp)

## Track Names

The directory name for a track should be the 'obvious' name in lower case (e.g. 'minigolf' for Minigolf). Do not use any spaces (use _ instead). The directory names act as identifier for tracks in the game (and they can be used on the command line). As a result of this, renaming a track affects various other settings:

* The identifier "olivermath" is used as the default track for the user config file, if no user config file exists (user_config.hpp).
* The identifiers are used to define the challenges (see data/challenges).
* The identifiers are used to define GPs (see data/gp).
* They might be used in the achievements (see data/achievements.xml). At this stage at least the "Christoffel Columbus" achievement uses track identifiers.

## Textures

All textures must use the same naming convention.

Naming are organised with this pattern prefix_name_suffix.extension

* The prefix stk_ is required when the texture is global (in the data/textures repository)
* The name must be in lower case, words separated by _ (this_is_an_example). The first word must be the most describing for the texture. Example if you have a texture with a red wall a good name is wall_red. This allow to quickly find textures in a directory.
* The suffix is used to describe the function of the texture.
    * diff = diffuse
    * lm = lightmap
    * spec = specular map
    * mask = [Colorization](Materials#colorization) mask
    * Normal = normal map
    * ao = ambient occlusion
    * By default nothing means diffuse
