---
title: About releasing new versions
toc: true
---
## Unstable releases vs stable releases

Any packages released from the trunk are considered 'unstable'. They are not meant to be broken, but fewer steps are taken to produce it, skipping the ones that often catch bugs, which also makes them easier and faster to make, so they are better suited to make it easier to test new features quickly. The process is simply to make a package for general distribution from source of the trunk.

To make a stable package, first a separate branch off master must be created in the source tree, by copying the current trunk to a branch, as a 'release candidate'(RC), named with the version number plus the RC number, for example, 0.3rc1. Afterwards, only bug fixes are committed to that branch (unless we all agree to introduce a feature) on this release candidate; no changes in other areas of the game, thought documentation and artwork updates are fine. If we decide we need more testing after doing all the modifications to the release candidate, a new branch is created from the previous rc branch (e.g. a new branch 1.3-rc2 created from 1.3-rc1). This allows easy access to the history of all files (it might be worth adding a tag for RCs).

The final release is a new branch copied from the last RC branch, and a tag for the release is created. For now the branches should be kept in place, since it helps finding problems which might get reported for the release (if they can't be reproduced in the trunk anymore). We might decide on a delete-branch policy later. Also, the license under which STK is released requires us to provide the source code for at least 3 years for any binaries we provide.

## Committing changes during the preparation of a stable release

* Any bug fixes to the RC branch should be cherry-picked to master as well (or vice versa). While this adds a bit overhead of committing a change (since it has to be committed twice), it saves the time and complexity of merging all bug fixes into the trunk when the release is done, and keeps the trunk free for further development.

* Any new patches not related to the RC or release should be committed to master only.

## Checklist for stable releases

* Give a deadline to translators
    * Run `data/po/update_pot.sh` and make sure transifex has the latest pot file for translations.
    * This should involve two steps: first contact translators and make them aware that a string freeze will happen in the near future, and ask them for feedback. They might find issues (e.g. incorrect strings, untranslatable strings, typos) that went undetected before. Once some feedback was received, announce the official string freeze.
* Creating a quick (~1min30) video showcasing new features/tracks/etc
* After creating a source package, try to build from this package. Sometimes, files are missing.
* Document the assets svn version in doc/assets_version (so that we can keep track of which assets version was used for which stk release, we don't have branches directories for assets due to their size).
* Create a 'tag' for the assets under <https://svn.code.sf.net/p/supertuxkart/code/stk-assets-release/>
* Run `data/optimize_data.sh`.
* Update ChangeLog file.
* Update `data/CREDITS`.
    * Don't forget the donations section in CREDITS.
    * Make sure `data/CREDITS` is still in UTF8 (not ascii).
* On Unix systems, make sure all files have appropriate read permissions.
* Update translations from Transifex (after the publicized deadline has been reached).
    * Install the transifex client (<http://docs.transifex.com/developer/client/setup>). On windows place it in the `data/po` folder. Run `./data/po/pull_from_transifex.sh`
    * Run `data/po/update_po_authors.py` on all(!) .po files to update the credit sections for translators.
* Make sure to update the version number:
    * CMakeLists.txt
    * Create a file `data/supertuxkart.VERSION` (same as 'supertuxkart.' + PROJECT_VERSION from CMakeLists.txt) - and delete any previous file. This file is used by stk to make sure it is reading the correct assets input data.
    * [Example commit](https://github.com/supertuxkart/stk-code/commit/d37b6feb3572d129450902936594378ee9f01e7e)
    * Update builtin ghost replay files version string if they are compatible, example command `sed -i 's/stk_version: .*/stk_version: 1.3/g' data/replay/*`
* Check that the addon server has all achievements defined (`data/achievements.xml` should be in sync with table v3_achievements).
* Make sure to test the game and the gift package with artist debug mode disabled!

For source package:

* Copy stk-assets into stk-code/data
* Check that make install works as expected

Then:

* Create a tagged release in stk-code GitHub page, it will trigger packaging release files using GitHub Actions
* Linux and Android release packages required building and uploading manually
* Copying all release files from GitHub to SourceForge
* Update the default file settings at SourceForge

## Naming scheme for packages

All files released on the STK web page should use the following naming scheme:

`SuperTuxKart-<VERSION>-<ARCHITECTURE>.<FILE EXTENSION>`

**VERSION**:

* Release candidates: the version number of the next stable release + "-rc" + release candidate number. Examples: 0.3-rc1 or 0.3.1-rc2
* Stable release examples: the version number. Examples: 0.3, 0.4

**ARCHITECTURE**:

* Source packages: src
* Windows binary packages: win
* Mac OS X binary packages: mac
* Linux packages: linux + required processor type. Examples: linux-64bit, linux-armv7, linux-arm64

**FILE EXTENSION**:

* Depends on the file type. Examples: tar.xz, zip, ...

*Examples of full package file names: SuperTuxKart-1.3-linux-64bit.tar.xz, SuperTuxKart-git20211207-mac.zip, SuperTuxKart-1.3-rc1-win.zip*

## Where to advertise a new release

This page collects web pages that should be informed about a new SuperTuxKart release. If you add a note to a board, blog, web page, please add the URL here, and add your name (hoping that in upcoming releases you can contact the same pages again).

### Priority

* <https://github.com/supertuxkart/stk-website/blob/master/_includes/latest_blog_articles>
* STK blog
    * Make sure to include the trailer and poster (if available)
* STK GitHub download page
* Upload the trailer on our youtube channel
* Twitter
* SourceForge page (news entry and to slashdot firehose)
* <https://freegamer.blogspot.com> (was picked up from freegamedev forum)
* <https://forum.freegamedev.net/>
* Update the game to <https://supertuxkart.itch.io/supertuxkart>
* Update the game to <https://gamejolt.com/>
