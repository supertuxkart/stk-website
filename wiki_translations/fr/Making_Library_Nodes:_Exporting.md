---
title: 'Making Library Nodes: Exporting'
display_title: true
---
Exporting your a library object allows it to be used in-game. However, it is **very** important that you get your object included in the main game before you make a track or arena using your library node, since other people won't be able to see it if you don't. See [Communication](Communication) for details on submitting your library nodes.

First, set the assets path in the SuperTuxKart Scene Properties panel under "Library Node Exporter." This is the path to your copy of the stk-assets repository or the data directory of SuperTuxKart.

If you do not have write access to the data directory as your current user, set the assets path to a folder you have access to, and copy the directory with the name of your library node ID from the `library` folder to your data directory after you export.

Click "Export Library Node" to export it. If the library node is properly installed, you should be able to use it in a SuperTuxKart track, arena, or cutscene (see [Making Tracks: Decorations](Making_Tracks:_Decorations)).

{% include art_portal %}
