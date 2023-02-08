---
title: Installing Tools
toc: true
---
Welcome! This guide will help you get set up for creating artwork (tracks, karts, textures, etc.) for SuperTuxKart. This guide includes the software you should install and use, as well as any setup needed. You will have to make decisions in some cases, as there different programs available and you'll have to choose which works best for you.

## For 2D art creation (textures, posters, etc.)

You'll need 2D graphics programs for virtually any artwork for SuperTuxKart. You'll mostly use bitmap (pixmap) graphics editors, but especially for textures, it's useful to have a vector graphics editor, which allows images to be resized without losing quality. Bitmap graphics, on the other hand, are made of pixels and therefore become less pretty as they are scaled.

### Bitmap Graphics Editors

You can use any combination of these programs for concept art, textures, and more. The programs listed here are free and open-source, but other commercial products (most prominently Adobe Photoshop and Illustrator) can be used. **Keep in mind, however, that artists on the STK team cannot necessarily afford such software, and therefore cannot necessarily open the proprietary formats they use, such as PSD (Photoshop Documents). The preferred format for work-in-progress art is KRA (Krita Documents), although XCF (GIMP Documents) are also welcome.**

#### Krita

* **Platforms:** Linux, macOS, Windows, Android, Chrome OS
* **Website:** [krita.org](https://krita.org)
* **License:** GNU General Public License 3.0

Krita is a powerful graphics program designed for digital painting. It supports graphics tablets from several manufacturers and allows for the installation of third-party brush engines. Krita also supports more standard image editing features, but is more limited in this respect than other software such as GIMP. Krita additionally supports vector graphics, but is not as full-featured as Inkscape.

#### GIMP

* **Platforms:** Linux, macOS, Windows, FreeBSD, Solaris, AmigaOS 4
* **Website:** [www.gimp.org](https://www.gimp.org)
* **License:** GNU General Public License 3.0 (or later)

GIMP, or GNU Image Manipulation Program, is a flexible and extensible photo editor and creator with support for third-party extensions. It features a wide variety of filters and and color adjustment tools, as well as tools for drawing. However, due to its focus on image editing rather than digital painting it may be less suited to the SuperTuxKart [style](/style "wikilink") than Krita.

### Vector Graphics Editors

Vector graphics can be scaled without losing quality, because they are based on *vectors*, which describe the path of a line mathematically rather than being the line itself. These programs are best suited to creating textures which will be used in many different ways (like a logo for a fictional company). All the editors listed here should export SVG (Scalable Vector Graphics) format images.

#### Inkscape

* **Platforms:** Linux, macOS, Windows, FreeBSD
* **Website:** [inkscape.org](https://inkscape.org)
* **License:** GNU General Public License 3.0 (or later)

Inkscape is an easy-to-learn yet powerful vector graphics editor. It has a large userbase and most questions can be answered with a quick web search.

#### Calligra Karbon

* **Platforms:** Linux, macOS (in-testing), Windows (in-testing), FreeBSD
* **Website:** [calligra.org/karbon/](https://calligra.org/karbon/)
* **License:** GNU Library General Public License 2.0 (or later)

Karbon is a powerful application with a simple, intuitive interface. Unlike the above programs, it is part of the Calligra office suite, not a standalone program. (Krita was formerly part of Calligra but is now independent.)

## For 3D art creation (karts, tracks, models)

For 3D artwork like tracks, karts, and models, you will need 3D modeling software. Unfortunately, SuperTuxKart is a bit more limited in this respect. For making karts and objects, you must use Blender. For tracks, you have the choice of Blender or the SuperTuxKart track editor.

### Blender

* **Platforms:** Linux, macOS, Windows, Android, FreeBSD, OpenBSD, NetBSD, DragonFly BSD, Haiku
* **Website:** [www.blender.org](https://www.blender.org)
* **License:** GNU General Public License 2.0 (or later)

The premiere open-source 3D modeling software. Blender has a large and loyal userbase of both hobbyist and commercial users. Blender can be difficult for beginners, but has a detailed manual as well as third-party guides on YouTube and other places. An excellent and easy-to-follow guide for beginners can be found [here](https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro).

Blender must be used for karts and objects, and produces better results than the SuperTuxKart track editor for tracks.

#### Installing SuperTuxKart Blender Scripts

The SuperTuxKart Blender scripts allow you to export your Blender work to the SuperTuxKart formats. Where to get them depends on what Blender version is installed.

* For Blender 2.80 and later: [https://github.com/supertuxkart/stk-blender](https://github.com/supertuxkart/stk-blender)
* For Blender 2.77, 2.78, and 2.79: [https://sourceforge.net/p/supertuxkart/code/HEAD/tree/media/trunk/blender_26/](https://sourceforge.net/p/supertuxkart/code/HEAD/tree/media/trunk/blender_26/)

You will first need to download everything, including the `stkdata` directory and all the files in it. Once you have downloaded these files and the directory, select all of them and copy them to the clipboard using Ctrl-C or Cmd-C. For Blender 2.80 and later, only the directories `io_antarctica_scene` and `io_scene_spm` need to be copied.

Run Blender once to create configuration directories in your user directory.

##### Linux (and other Unix-like OSes)

Using your file manager, check the following locations to find one that exists

* `$XDG_CONFIG_HOME/blender`
* `~/.config/blender`
* `~/.blender`

Then go to the directory based on your Blender version (e.g. `2.77`), then the `scripts` directory, then `addons`. If those folders do not exist, create them.

If you are using a standalone version of Blender, the scripts directory will be in `<blender download directory>/<blender version>/scripts/addons`. Move to this directory in your file manager.

Once you are in the proper directory, use Ctrl-V to paste the SuperTuxKart exporter scripts.

##### macOS

Right-click on Blender, select show package contents, and open `Contents/Resources/<version>/scripts/addons/`

Then, paste the scripts into that directory.

{%popup_info Note that keyboard shortcuts for copying and pasting on macOS use the *Command* key rather than the *Ctrl* key.%}

##### Windows

Open the file manager (Windows Explorer). Click in the address bar at the top. Replace the text with the following:

`%APPDATA%\Blender Foundation\Blender\<version>`

where `<version>` is the version of Blender, without its letter suffix (e.g. 2.77).

You should see the `scripts` directory. If not, create it, then move to it. It should contain the `addons` directory. If it does not, create it, then move to it. Now, use Ctrl-V to paste the SuperTuxKart export scripts into this directory.

#### Activating the SuperTuxKart Blender Scripts

After placing the scripts into Blender's scripts directory, open Blender. The instructions again vary depending on the Blender version installed.

* For Blender 2.80 and later: All of the tools have been consolidated as more integrated packages. Go to **Edit > Preferences > Add-ons**. In the search box, search both `supertuxkart` and `spm` (one at a time) and check the box next to the following items:
    * SPM (Space paritioned mesh) format
    * SuperTuxKart Exporter Tools

* For Blender 2.77, 2.78, and 2.79: Go to **File > User Preferences > Add-ons**. In the search box, search `supertuxkart` and check the box next to the following items:
    * SuperTuxKart Kart Exporter
    * SuperTuxKart Material Exporter
    * SuperTuxKart Track Exporter
    * SuperTuxKart Panel

{% single_gallery /assets/wiki/Blender_tools_1.jpg %}

Now search for `spm`. Check the box next to **SPM (Space partitioned mesh) Model Exporter**.

{% single_gallery /assets/wiki/Blender_tools_2.jpg %}

You can click **Save User Settings** to avoid repeating these steps each time you open Blender.

{%popup_info For Blender 3.0 you need to disable "Proxy to Override Auto Conversion" in preference menu to make library objects importing work, see <https://docs.blender.org/manual/en/3.0/editors/preferences/experimental.html#debugging>.%}

### Subversion Client

* **Platforms:** Linux, macOS, Windows, BSD, etc.
* **Website:** [subversion.apache.org](https://subversion.apache.org)
* **License:** Apache License 2.0

A Subversion (more commonly known as SVN) client is a must-have for fetching the latest version of the assets and [media repositories](Media_Repo). It performs *version control,* a system for recording changes in a collection of files that multiple users access. Mostly it's used by software developers, but we use it to manage artwork resources. We won't go into detail on how to use SVN here (there's plenty of information online), but when you need to use it, we'll provide the URL you'll need to put into your client.

For Windows users, especially those unfamiliar with the command line, we recommend [TortoiseSVN](https://tortoisesvn.net), an easy-to-use graphical interface for SVN.

### SuperTuxKart Track Editor

The SuperTuxKart track editor is a fairly new effort to make creating and modifying SuperTuxKart tracks easy for enthusiasts who are not interested in dealing with the complexities (and features) of Blender. Because it is still under development, bugs and crashes should be expected. Instructions for compiling and using the STK editor can be found at the [Track Editor](Track_Editor) page.
