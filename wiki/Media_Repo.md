---
title: Media Repo
display_title: true
---
The **media repository** is the place where all the original files of 3D Models, textures, sound and all the other game art being used in STK are stored. This is necessary because those files are normally too large or even incompatible with the game, so they are shrinked or converted before being shipped with the game.

The media repository serves another purpose: using it, you can import a large variety of textures and objects into tracks you make. Because Blender is sensitive about the file structure of your track files when you link textures and library nodes from the media repo, we recommend placing the Blender project file of your kart/track/library node in its own folder under the appropriate category in your downloaded copy of the media repo, **just as if it were an official part of the game.**

We recommend targeting the development version of STK, so the best way to download the media repository is with a Subversion (SVN) client (more information on the [Installing Tools](Installing_Tools) page)

Under Unix-like operating system, an example checkout command would be:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
