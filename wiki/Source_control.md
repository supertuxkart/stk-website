---
title: Source control
toc: true
---
SupertTuxKart uses Git for source code, and SVN for data files. So if you don't have those, install them first. You can find instructions for installing them at the bottom of the page.

## Game core

The core code repository is hosted on our [GitHub page](https://github.com/supertuxkart/stk-code). Example clone command:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

It is about 350 MB in download size.

Data files are hosted on SourceForge and use SVN. Example checkout command:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

It is about 700 MB in size.

These two repositories should be downloaded in the same folder, so that folders `stk-code` and `stk-assets` are next to each other.

## Media repository

The media repository is **not required to play the game**. It contains the source files for assets (.blend files, lossless music and sound files, etc.) and is meant for artists. It is around 3.2GB in download size.

The media repository is hosted on SourceForge and uses SVN. Example checkout command:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Also see [the Media repository page](Media_Repo).

## Installing Git

### Linux
`sudo apt install git` or equivalent in your distribution of choice.

Many Linux distributions come with Git pre-installed.

### Windows
Install [Git for Windows](https://github.com/git-for-windows/git/releases/latest). If you want a graphical interface for Git you can choose whichever works for you. Otherwise if you don't know which to choose you can install [TortoiseGit](https://tortoisegit.org/download) as well after installing Git for Windows.

## Installing SVN

### Linux
`sudo apt install subversion` or equivalent in your distribution of choice.

After subversion has been installed, there is also the possibility to use a graphical client such as KDEsvn.

### Windows
You can choose between several SVN clients and use whichever works for you, but if you don't know which to choose you can install [TortoiseSVN](https://tortoisesvn.net/downloads.html).

{% include code_portal %}
