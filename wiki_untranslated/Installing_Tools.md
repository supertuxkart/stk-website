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

For 3D artwork like tracks, karts, and models, you will need 3D modeling software. Unfortunately, SuperTuxKart is a bit more limited in this respect. For making karts, tracks and objects, you must use Blender. The SuperTuxKart track editor that was created over a decade ago to try to make track-making more accessible was always extremely limited and is unsupported.

### Blender

* **Platforms:** Linux, macOS, Windows, Android, FreeBSD, OpenBSD, NetBSD, DragonFly BSD, Haiku
* **Website:** [www.blender.org](https://www.blender.org)
* **License:** GNU General Public License 2.0 (or later)

The premiere open-source 3D modeling software. Blender has a large and loyal userbase of both hobbyist and commercial users. Blender can be difficult for beginners, but has a detailed manual as well as third-party guides on YouTube and other places. An excellent and easy-to-follow guide for beginners can be found [here](https://en.wikibooks.org/wiki/Blender_3D:_Noob_to_Pro).

{%popup_info After a major update, Blender versions may not yet be compatible with the SuperTuxKart Blender scripts. Check the [minimum requirements section](https://github.com/supertuxkart/stk-blender#user-content-supertuxkart-blender-addons) to see which Blender versions are compatible. If necessary, [older Blender versions can be found here](https://www.blender.org/download/lts/).%}

#### Installing SuperTuxKart Blender Scripts

The SuperTuxKart Blender scripts allow you to export your Blender work to the SuperTuxKart formats. Where to get them depends on what Blender version is installed (an older version may be used to open old track files that haven't been upgraded).

* For Blender 2.80 and later: 
    * Go to <https://github.com/supertuxkart/stk-blender> and download the files. This can be done by clicking the green Code button then selecting 'Download ZIP'.
    * Open the downloaded ZIP file, select the two folders `io_antarctica_scene` and `io_scene_spm` and copy them to the clipboard using Ctrl-C or Cmd-C.
* For Blender 2.77, 2.78, and 2.79:
    * Go to <https://sourceforge.net/p/supertuxkart/code/HEAD/tree/media/trunk/blender_26/> and click the Download Snapshot button
    * Open the downloaded ZIP file, select all the files and the `stkdata` folder, then copy them to the clipboard using Ctrl-C or Cmd-C.

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
    * SuperTuxKart Exporter Tools
    * SPM (Space paritioned mesh) format

{% single_gallery /assets/wiki/Blender_tools_3.png %}

{% single_gallery /assets/wiki/Blender_tools_4.png %}

* For Blender 2.77, 2.78, and 2.79: Go to **File > User Preferences > Add-ons**. In the search box, search `supertuxkart` and check the box next to the following items:
    * SuperTuxKart Kart Exporter
    * SuperTuxKart Material Exporter
    * SuperTuxKart Track Exporter
    * SuperTuxKart Panel

{% single_gallery /assets/wiki/Blender_tools_1.jpg %}

Now search for `spm`. Check the box next to **SPM (Space partitioned mesh) Model Exporter**.

{% single_gallery /assets/wiki/Blender_tools_2.jpg %}

You can click **Save User Settings** to avoid repeating these steps each time you open Blender.

### Subversion Client

* **Platforms:** Linux, macOS, Windows, BSD, etc.
* **Website:** [subversion.apache.org](https://subversion.apache.org)
* **License:** Apache License 2.0

A Subversion (more commonly known as SVN) client is a must-have for fetching the latest version of the assets and [media repositories](Media_Repo). It performs *version control,* a system for recording changes in a collection of files that multiple users access. Mostly it's used by software developers, but we use it to manage artwork resources. We won't go into detail on how to use SVN here (there's plenty of information online for each client), but when you need to use it, we'll provide the URL you'll need to put into your client.

* For Windows users, especially those unfamiliar with the command line, we recommend [TortoiseSVN](https://tortoisesvn.net), an easy-to-use graphical interface for SVN. Go to the download page, select the version that matches your machine (in most cases, 64-bit OS) and go through the installation. Once installed, go to the folder in Windows Explorer to where you want your working copy to be, right-click and select `TortoiseSVN` → `Checkout`, then enter the URL of the online repository and make sure the Checkout directory is where you want it to be, then click OK. To update files with changes, select them, then right-click and select `TortoiseSVN` → `Update` in the menu.

* For Mac users, [you can easily install using Homebrew, Fink and MacPorts, among other options](https://subversion.apache.org/packages.html#osx). For Unix-like systems, [you can usually install via command-line](https://subversion.apache.org/packages.html).