---
title: Media Repo
display_title: true
---
The **media repository** is the place where all the original files of 3D Models, textures, sound and all the other game art being used in STK are stored. This is necessary because those files are normally too large or even incompatible with the game, so they are shrinked or converted before being shipped with the game.

The media repository serves another purpose: using it, you can import a large variety of textures and objects into tracks you make. Because Blender is sensitive about the file structure of your track files when you link textures and library nodes from the media repo, we recommend placing the Blender project file of your kart/track/library node in its own folder under the appropriate category in your downloaded copy of the media repo, **just as if it were an official part of the game.**

### Installing the media repo

We recommend targeting the development version of STK, so the best way to download the media repository is with a Subversion (SVN) client. However, if you cannot get SVN installed, there is a simple workaround.

#### Best way: Installing Subversion

Instructions for installing Subversion are on the [Installing Tools](Installing_Tools#subversion-client) page. Once it is installed, use the following address to checkout the repo:

* If you are using a graphical program (e.g. TortoiseSVN), it may ask you for the URL of the repository - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - and a checkout directory, which is where on your computer you want it to be copied to.
* Under Unix-like operating system or MacOS, an example checkout command would be:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Workaround: Manual download of snapshot 

{% start_liquid popup_info %}

This workaround is very simple and downloads the same files and folders, but it will not update your files when changes are made to the media repo. This means that if relevant changes are made in the repo after you download the snapshot, your projects may look different in newer versions or possibly even not work properly unless you download a new snapshot.

{% end_liquid %}

Visit this link to generate a snapshot and download it: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

If it asks you to resubmit the snapshot request, do so. Then it will begin a download of the media repo files as they currently are. Extract the ZIP file to a working location where you want your copy of the media repo to be. Now it is ready!

Changes are made to the media repo [fairly often](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), so if you want to download a new snapshot, you will have to backup all your projects to another folder, delete your local media repo copy and replace it with a new snapshot.
