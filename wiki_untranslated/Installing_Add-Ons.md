---
title: Installing Add-Ons
display_title: true
---
Every officially approved Add-On can be easily installed using the in-game Add-On-Manager. But sometimes it's necessary to install or remove a track, kart or arena manually. This pages tries to provide the necessary information:

## The Add-On Storage Folder

Depending on what system you are using, add-ons are installed in one of the following folders:

On Windows:

* `%APPDATA%\supertuxkart\addons`

On Linux:

* `~/.local/share/supertuxkart/addons`
* `/usr/share/games/supertuxkart/data/tracks` (for older STK versions)

On Mac OS X:

* `~/Library/Application Support/SuperTuxKart/Addons`

## Installing and Removing

Within this folder, the following files and subdirectories exist: icons, karts, tmp, tracks, addons.xml, addons_installed.xml, news.xml

To install an Add-on, simply copy the whole folder with the Add-On to the correspondig subdirectory. Note that Arenas go in the track folder because they are technically tracks.

Uninstalling is done by removing that folder.

Additionally, `/installaddon` and `/uninstalladdon` can be used in networking lobby to install or uninstall Add-ons.
