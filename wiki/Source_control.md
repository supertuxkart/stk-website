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

## Guidelines

Here are some guidelines for developers who have write access to Git/SVN:

* Join our IRC or Telegram channel (see [Community](Community)). Developers usually post what they are working on there, so that the likelihood of conflicts can be decreased. Additionally, known high-profile bugs are discussed there, too.
* It might be worth subscribing to the supertuxkart-commit email list (see [Community](Community)). All commit messages are automatically sent to this address, so you will always be aware of what is happening, and if your work interferes with what other people are doing.
* The development version should always compile. While it's not possible to test on all platforms, do your best to write portable code. Other developers and testers will usually quickly point out (and fix) any problems.
* Commit often. Frequent commits have the advantage that they act as a backup which makes time-consuming merge conflicts less likely.
* Try to include all changes for a single feature in one commit (i.e. don't commit each file separately) and try not to mix several features in one large commit.

## Installing Git

### Linux
`sudo apt install git` or equivalent in your distribution of choice.

### Windows
Install [Git for Windows](https://github.com/git-for-windows/git/releases/latest). If you want a graphical interface for Git you can choose whichever works for you. Otherwise if you don't know which to choose you can install [TortoiseGit](https://tortoisegit.org/download) as well after installing Git for Windows.

## Installing SVN

### Linux
`sudo apt install subversion` or equivalent in your distribution of choice.

### Windows
You can choose between several SVN clients and use whichever works for you, but if you don't know which to choose you can install [TortoiseSVN](https://tortoisesvn.net/downloads.html).
