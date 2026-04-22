---
title: The History of SuperTuxKart
toc: true
---

This page gives an illustrated overview of two decades of development of SuperTuxKart, a journey from a very limited game to a sophisticated modern game with engaging gameplay and pleasant visuals.

A complete history of SuperTuxKart could fill an entire book: if you are interested in all the small details that don't fit here, you can explore the sources listed in the [additional references](#additional-references) at the end.

{% gallery widths=90%
/assets/wiki/SuperTuxKart_History_Title.jpg,,,A picture titled 'The History of SuperTuxKart' showing the evolution of Oliver's Maths Class and Fort Magma throughout the project's history
%}

## TuxKart

{% capture tuxkart_story -%}

**The story begins with [TuxKart](https://tuxkart.sourceforge.net) in April 2000.** At the time, computers and especially graphic cards were much weaker than they are today, and software libraries to create games were much more limited.

Steve Baker created the game for his son Oliver Baker, who assisted him in designing some tracks. The game used PLIB, a graphics library that Steve Baker himself had created.

The final release of the original TuxKart was done in March 2004, but by that point the game had been in maintenance mode for a few years already, with new releases aiming mostly to keep it compiling with newer libraries and compilers.

**In addition to the name, a few traces of this very old game still subsist in SuperTuxKart:**
* The modern Oliver's Math Class track derives from a track found in TuxKart, although nearly all aspects of the tracks have been overhauled since.
* The rescue key was introduced in TuxKart already. It has remained in SuperTuxKart despite enormous improvements to auto-rescue.
* In TuxKart green herrings would give a random penalty: a parachute or an anvil. The random parachutes and anchors that SuperTuxKart bananas can give can be traced back to this concept.
* The zipper powerup that gives a strong speed boost also traces its roots all the way to TuxKart.
{%- endcapture -%}

{% capture tuxkart_caption -%}
{%translate "Tux Tollway in the original TuxKart"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ tuxkart_story }}
/assets/wiki/History_TuxKart.jpg,{{ tuxkart_caption }},,A screenshot from Tux Tollway in the original TuxKart game
%}

{% capture game_of_month_story -%}

In June 2004, the 'Game of the Month' (GotM) project of the [Linux Game Tome](https://web.archive.org/web/20040915081722/http://www.happypenguin.org/) decided to improve TuxKart.

Steve Baker was initially supportive of this community effort, however this project went off-rails with severe code quality issues that left the game unplayable, and by the end of summer most GotM participants had already moved on to other things.

In December 2004, with no interest from the original maintainer to keep the GotM changes and little active work being done, the remaining members of the project decided to preserve the current state of the project in a fork called 'SuperTuxKart'. Meanwhile, TuxKart was restored to its previous state.

While some graphical improvements had been done, the code base itself was still very unstable and the game was practically unplayable. For more than a year, nobody worked on (Super)TuxKart.
{%- endcapture -%}

{% capture gom_caption -%}
{%translate "The main menu of SuperTuxKart 0.0.0"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ game_of_month_story }}
/assets/gallery/STK0.0.0_2.jpg, {{ gom_caption }},,A screenshot showing the main menu of the first public release of SuperTuxKart
%}

## The Early Days

**In 2006, Joerg Henrichs (a.k.a. "Hiker") picked up SuperTuxKart.** Without any involvement of the original game designer, who was not interested anymore, or of the Game of the Month project, he fixed outstanding bugs and performance issues. He didn't know at the time how far the journey he was embarking on would take him.

With the help of Eduardo "Coz" Hernandez Munoz, **a first public release of SuperTuxKart, as version 0.2, was done in September 2006**. This new beginning marked the birth of what was to become open source's most influential and recognized game.

In May 2007, version 0.3 was released. It added various features and bugfixes, but of particular interest are MacOSX support, support for OpenAL, which constitute the basis of SuperTuxKart's audio to this day, and the addition of the bomb, which is still among the potential penalties karts can get when driving through bananas in modern versions of SuperTuxKart.

{% capture supertuxkart_early -%}
At the time, the game didn't offer any form of drifting. Instead, when going sufficiently fast, it was possible to do a wheelie to go even faster at the cost of not being able to turn properly. Of course, normally a wheelie is something that two-wheelers do, not karts with four wheels, but in those early days, a lot of the game was quite experimental. It was still possible to get homing missiles from the item boxes!

**Marianne Gagnon (a.k.a. "Auria") joined during the development of version 0.4.** She started by improving tracks, but she would go on to expand her contributions in all the areas where she could prove useful, doing a lot of code and even composing [a nice piece of music](https://www.youtube.com/watch?v=zB-4_ak5GqI) for a track she created.

An oft underappreciated part of the development of an open-source game is dealing with bug reports, reviewing changes proposed for merging by new contributors, and handling general communication with the community. Over her many years participating in the SuperTuxKart project, a large part of Auria's contributions would be found in those tasks.

**Version 0.4**, released in February 2008, **incorporated the Bullet physics library** to improve the collision handling. A solid and realistic physics engine is an excellent basis for a racing game, as it automatically handles many situations. This inclusion would deeply shape the game: to this day, Bullet is used in SuperTuxKart.

However, a considerable quantity of adjustments and improvements would be needed to go from STK's physics at the time of version 0.4 to the modern feel of the game, and this would be one of the main tasks Hiker would devote his efforts to over the years.
{%- endcapture -%}

{% capture early_caption -%}
{%translate "The old Lighthouse track in SuperTuxKart 0.4"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ supertuxkart_early }}
/assets/gallery/STK0.4_1.jpg, {{ early_caption }},,A screenshot from SuperTuxKart 0.4 showing the old Lighthouse track
%}

## Rising Recognition

Version 0.5 was released in May 2008. It included many improved tracks, unlockable challenges, as well as a new game mode: Follow-the-leader.

It also featured new translations with a new automatic detection of the operating system's language: since its early days, localization was an important part of the SuperTuxKart project, with the goal of a game that could be played in someone's native language. Over the years, many new languages would be added to the game's translations, but the fundamental aim of making STK accessible to more people was unchanged.

**SuperTuxKart's notoriety quickly rose with positive view from the Linux and Tech press**. For example, in 2007 *FullCircle magazine* [named it](http://dl.fullcirclemagazine.org/issue6_en.pdf) as part of its top 5 of Linux racing games and *Linux Journal* [praised the game's fun and colorfulness](https://www.linuxjournal.com/article/9872), while in 2009 *TechRadar* listed it [as one of the best Linux games](http://www.techradar.com/us/news/gaming/12-of-the-best-games-for-your-linux-netbook-528696).

During the same period, **SuperTuxKart quickly got a position of choice in the package managers of several major Linux distributions**, including Ubuntu.

At the time, SuperTuxKart's gameplay was underwhelming. For example, to mention only some of the salient issues in SuperTuxKart 0.5 that are very apparent after having played newer versions:
- Physics were clunky, with collisions being very punishing,
- Slowing down didn't actually help to turn sharper, which was very unintuitive and unfun,
- Off-road penalties were often way too punishing,
- The powerup variety was quite limited,
- The general speed of the game was slow, with a lack of additional mechanics to keep the player engaged.

Viewed through this lens, the widespread acclaim and promotion SuperTuxKart received at the time shows how starved the Linux world was of good games.

In contrast with purely software projects, games require a vast array of different talents. Coordinating efforts from coders and artists into a common and coherent vision is a challenge few open-source games manage to meet. SuperTuxKart was very much one of the most successful, but this difficulty was very much present.

{% capture zerosix_text -%}
**In January 2009, the [SuperTuxKart blog](https://blog.supertuxkart.net/) saw its first post.** Arthur, who would be involved for many years in STK as a community manager of sorts, would go on writing many of the blog's articles.

**Version 0.6 was released later the same month.** It featured an improved sound system with support for positional audio, more interesting music, many new tracks and karts, and the game's first battle arena for the newly introduced 3-Strikes-Battle multiplayer mode. Three tracks present in SuperTuxKart 1.5 (XR591, The Old Mine, and Northern Resort, then known as Snow Mountain) trace their roots back to this release!

With hindsight, **the introduction of nitro** in replacement of the previously existing coins was this version's most significant innovation. The core principle behind nitro has not changed since its introduction although details have changed a lot: it is collected in cans located around the track, and can be used at any time by the player to get a speed boost.

**Nitro has since become a core part of SuperTuxKart's identity**, bringing a unique element compared to many other kart racing games and giving an important way for players to express their skill, both when collecting nitro and when using it.

**Wheelies were removed from the game and replaced by a sharp turning feature** also called skidding. Sharp turning was quite different from the drifting that would replace it in later versions, as it only helped a kart to take tighter curves, without any possibility for a speed boost. The resulting kart handling when it was in use was also very different. Physics also saw another round of improvements.
{%- endcapture -%}

{% capture zerosix_caption -%}
{%translate "Amazonian Journey in SuperTuxKart 0.6"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ zerosix_text }}
/assets/gallery/STK0.6_3.jpg, {{ zerosix_caption }},,A screenshot from SuperTuxKart 0.6 showing Elephpant in Amazonian Journey
%}

{% capture zerosix_tollway -%}
**The revised set of powerups was also a major step towards SuperTuxKart's later identity.** Gone were TuxKart's missiles, homing missiles, and fuzzy blobs (yes, that's the official name of a TuxKart item), gone was the anvil. **The plunger, the bowling ball, the cake, and the bubblegum made their first appearance.**

The balancing of powerups to provide a moderate comeback mechanism and to simply provide fun to the players still had a long way to go, however.

SuperTuxKart 0.6 also featured explicit support for addons with a system of kart and track groups. At the time there was no online addon repository, addons had to be installed manually, but the game could now differentiate between standard content and addons.

Two minor versions in the 0.6 series were released afterwards, 0.6.1 in February 2009 and 0.6.2 in July 2009. They mostly brought bugfixes as well as some new karts, without the additional features that would characterize many later STK point releases.

Unbeknownst to the SuperTuxKart team at the time, the game [was used in a machine-learning paper](Projects#a-reduction-of-imitation-learning-and-structured-prediction-to-no-regret-online-learning) that would go down in history as a landmark paper in this field.

Since its beginnings, SuperTuxKart's open nature has made it an ideal playing ground for many experiments, academic papers, and technical demonstrations.
{%- endcapture -%}

{% capture tollway_caption -%}
{%translate "Tux Tollway in SuperTuxKart 0.6.1a"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ zerosix_tollway }}
/assets/wiki/History_IceBlock_TuxTollway_cropped.jpg, {{ tollway_caption }},,A screenshot from SuperTuxKart 0.6 showing Mr. Ice Block in Tux Tollway
%}

## Classic Era

### The transition to Irrlicht

Until that point, SuperTuxKart had relied on PLIB for its graphics. However, the library had received no update since early 2008, and what it could achieve was getting increasingly far from the capabilities graphics cards offered.

This made the switch to a new graphics library an imperative for SuperTuxKart, and **Irrlicht, an open-source graphics library, was chosen to replace PLIB as the game's 3D library**, with a [first announcement](https://blog.supertuxkart.net/2009/02/plans-for-stk-07.html) of this plan in February 2009. At the time of SuperTuxKart 0.6.2's release, work on Irrlicht had been ongoing for many months already.

This switch would also involve a complete rewrite of the GUI to use Irrlicht's UI features instead of PLIB's, and required a complete conversion of existing tracks and karts to a new format.

Throughout 2009, a series of blog posts on SuperTuxKart blog covered the intense work that was happening on the Irrlicht port. There are too many to link them all individually, but if you are interested in the details you can look at our blog's archives for [2009](https://blog.supertuxkart.net/2009/) and [2010](https://blog.supertuxkart.net/2010/).

**In December 2009, SuperTuxKart's forums moved to FreeGameDev.** These forums would serve the game for nearly fifteen years and be the place for a great many discussions and suggestions, before all FreeGameDev forums were made read-only.

These forums became completely inaccessible recently, in March or April 2026, but thankfully, if you want to have a look at the old discussion threads, most of them [have been archived by the Wayback Machine](https://web.archive.org/web/20100715115918/http://forum.freegamedev.net/viewforum.php?f=16).

A first alpha version of SuperTuxKart 0.7 was [announced](https://blog.supertuxkart.net/2010/01/supertuxkart-07-alpha-soon-to-be.html) and [released in January 2010](https://blog.supertuxkart.net/2010/01/supertuxkart-07-alpha-1-is-out.html). Changing the graphics and GUI engine of the game was a massive undertaking and **no less than three alpha versions were published over the course of 2010** to test the changes and work out all the issues inherent to such a major transition.

The same month, STK Addons, the official repository for tracks and karts made by the community, became [its own separate entity](https://github.com/supertuxkart/stk-addons/commit/0f2fda96f0c1d6e1fcfbec98fe6efd71d7f97b4d), with Xapantu initially taking care of it.

{% capture hacienda_and_release -%}
**Jean-Manuel Clémençon (a.k.a. 'Samuncle' or 'Sam') joined during the development process of version 0.7**, having been dared to do better after criticizing existing tracks. The first track he authored for SuperTuxKart was Hacienda, an iconic track that is still very popular to this day among online players despite its now dated looks.

**Soon before the release of version 0.7, SuperTuxKart crossed over one million downloads on SourceForge.** The precise number of downloads for SuperTuxKart will forever remain a mystery, as a considerable number of Linux users from this period of high popularity for the game got it through their distribution's package manager. On SourceForge, the Linux packages were only a small minority of downloads. SourceForge stats also indicate that SuperTuxKart had been downloaded from nearly every country in the world.

**Version 0.7 was released on December 20, 2010.** It contained many significant improvements, including:
- The use of **Irrlicht** as a new 3D rendering engine,
- Track animations,
- A **new GUI** (Graphical User Interface),
- New tracks and kart,
- A **new powerup, the switch**, or swapper, which would temporarily transform positive on-track items (such as gift boxes) into negative ones (such as bananas). This powerup has been present in all SuperTuxKart versions ever since.
{%- endcapture -%}

{% capture hacienda_caption -%}
{%translate "Hacienda in SuperTuxKart 0.7"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ hacienda_and_release }}
/assets/gallery/STK0.7_2.jpg,{{ hacienda_caption }},,SuperTuxKart 0.7: Konqi in Hacienda
%}

{% capture zero_seven_ui -%}
For the first time in SuperTuxKart's history, the game had **support for alternative paths**, allowing track-designers to split paths for a section of the track and to add officially allowed shortcuts.

Before 0.7, SuperTuxKart relied on a shortcut detection logic that prevented such designs, at least when it worked (as some unintended significant shortcuts were possible in 0.6).

The challenges of Irrlicht's integration didn't stop with 0.7 being released, however.

A number of limits set in the library headers were rather low for the graphical needs of SuperTuxKart, and so the SuperTuxKart team used increased values. This should have been a straightforward solution. Certain Linux distributions, however, insisted on building SuperTuxKart to use the system's Irrlicht library instead, which had the lower values. This led to a broken experience for the end users and to a lot of time wasted with bug reports that weren't the fault of SuperTuxKart's team.

These distributions were adamant that SuperTuxKart should use the system-provided version of the library, arguing that the SuperTuxKart team should ask the library developers to change their defaults. The maintainers of Irrlicht were not interested in such a change, as they saw the lower values as useful for less ambitious projects that were also using their library.

This created a double bind for the SuperTuxKart team, which would only be resolved when, after a long period of shipping a broken STK, those distributions relented and accepted to simply use SuperTuxKart's bundled Irrlicht.

**Similar experience with other libraries, in particular with the physics engine from Bullet, are why, to this day, SuperTuxKart comes with several bundled libraries.** The potential benefits from minor updates to system libraries are dwarfed by the potential for unforeseen bugs they create.

Let's mention in passing that system libraries were something that already caused a fair number of issues at the time of the original TuxKart, with Steve Baker noting in 2004 that "problem reports [...] dropped to almost zero" after he decreed a single correct location to install PLIB and the use of static-linking.
{%- endcapture -%}

{% capture zero_seven_oneb_ui_caption -%}
{%translate "The main menu UI from version 0.7.1b"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-right, text={{ zero_seven_ui }}
/assets/gallery/UI_STK0.7.1b_main_menu.jpg,{{ zero_seven_oneb_ui_caption }},,A screenshot from the SuperTuxKart 0.7.1b main menu in English
%}

### One step at a time

**During this period, Sam quickly became one of the key contributors of the project**, improving existing tracks and authoring new ones, and pushing relentlessly to get the game's graphics improved.

**Sam was not satisfied with SuperTuxKart simply being *good for an open-source game*, he wanted it to be good, period.** For years to come, each new release would bring tracks he created or improved, with a steady rise in quality as the game's capabilities rose and his own skills improved. The traces of this work are still clear today: two thirds of the standard tracks present in SuperTuxKart 1.5 were created by Sam or saw considerable improvements by his hand.

Some people resented this push towards ever higher quality, and to some degree towards a professionalization of the project. They felt that SuperTuxKart was this little fun project, and that improving the game's quality would make it difficult to contribute for people with little experience.

{% capture zero_seven_point_releases -%}
The playerbase at large, however, appreciated very much the game improving again and again. And in the long run, wouldn't people be more willing to put in effort to contribute if they love the game?

Over the course of 2011, three new versions were released, each bringing new tracks as well as new karts. They also brought their own share of bugfixes and features.

Stephen Just also took over the management and improvement of the addons website.

To mention only the most significant additions, version 0.7.1 in April brought a temporary invincibility for karts that got hit, internet news, debug features for track makers and in-game option to switch language, while version 0.7.2 in July brought an **in-game addon manager**.

Version 0.7.3, in November 2011, was a particularly significant release, bringing three new tracks, a new kart, and **two new powerups, the swatter and the rubber ball**. Both still exist in SuperTuxKart 1.5 (the rubber ball having since become the basket ball), and they represent the last two powerup additions to the game before SuperTuxKart Evolution.
{%- endcapture -%}

{% capture minigolf_caption -%}
{%translate "Minigolf, a track added in SuperTuxKart 0.7.3"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ zero_seven_point_releases }}
assets/gallery/STK0.8.1_2.jpg,{{ minigolf_caption }},,The SuperTuxKart track Minigolf viewed from some height above the track with its red windmill
%}

### Drifting in Story Mode

{% capture overworld_text -%}
For the next version, the team's biggest objective was the addition of a Story Mode with an overworld.

Until then, SuperTuxKart had featured a set of challenges that could be progressively completed and that would allow the unlocking of more karts and tracks. However, these challenges lacked cohesiveness.

**In December 2012, SuperTuxKart 0.8 was released with the new Story Mode.**

Cutscenes with a basic story, a vast free roam area with several different themes through which challenges could be accessed, new challenges connected with a point system: at the time, it was a vast improvement.

The limitations of this system would become apparent over the years, however. The visual quality of the cutscenes and the overworld would fall behind the rest of the game, and improvements for tracks ended up always taking priority.

The overworld also lacked flexibility, with several areas meant to represent a specific track that relied on said track remaining in SuperTuxKart, and no satisfying way to add multiple new challenges. While the concept had high potential, it required a sustained artistic effort that STK couldn't meet.
{%- endcapture -%}

{% capture overworld_caption -%}
{%translate "Tux flying above STK 0.8's overworld"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ overworld_text }}
assets/wiki/History_Overworld_0.8.jpg,{{ overworld_caption }},,SuperTuxKart 0.8: a view from the Story Mode's overworld and its different areas with Tux flying in the foreground
%}

{% capture modern_drifting -%}
With hindsight, some other important changes brought with version 0.8 would have greater consequences.

Most importantly, **the modern drifting mechanic was introduced**, replacing the sharp turn mechanic present since 0.6. The relevant input would initiate a hop that helped to turn sharper, and holding it would allow the kart to accumulate a boost, with a simple trade-off: once the drift was initiated, the kart would continue turning in the drift direction until it was released, with only moderate adjustments to the sharpness of the turn remaining possible.

Drifting already had a second stronger boost level that could be activated with a long drift. The biggest difference between what drifting was then and what it would become in 1.0 is arguably visual: instead of particles emitted from the back wheels, it used the same generic exhaust location in the back of the kart as nitro, and the second drift level produced a green exhaust!

Of course, the AI used by computer players also had to be significantly revised to take advantage of the new mechanics. Auria and Hiker judged the improved AI so strong that the version available in Expert difficulty had some purposeful limitations added.
{%- endcapture -%}

{% capture drifting_caption -%}
{%translate "Beagle drifting in Green Valley in SuperTuxKart 0.8"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ modern_drifting }}
assets/wiki/History_Beagle_GreenValley.jpg,{{ drifting_caption }},,SuperTuxKart 0.8: Beagle with a second-level drift (skid) in Green Valley reverse with a pond and a waterfall on the right of the road
%}

**SuperTuxKart 0.8 also brought reverse mode.** Whereas mirror mode merely tricks muscle memory by switching inputs, reverse mode meaningfully changes gameplay: the reversed sequence of curves and track-items can substantially alter the optimal driving line, especially with drifting taken into account.

It also featured improved menus, some new and updated tracks, including the modern layout of Shifting Sands, improved collisions, **a new main menu music that would be SuperTuxKart's main theme up to SuperTuxKart 1.5**, as well as various bugfixes and minor enhancements.

**In April 2013, SuperTuxKart was nominated as SourceForge's [Project of the Month](https://sourceforge.net/blog/potm-201304/)** with Hiker giving a small interview on this occasion.

At around the same time, **SuperTuxKart was accepted as a project [for the Google Summer of Code (GSoC) 2013](https://blog.supertuxkart.net/2013/04/supertuxkart-participating-in-gsoc-2013.html)**.

And so, a few months later, students whose project [had been selected by the team](https://blog.supertuxkart.net/2013/05/google-summer-of-code-students-view.html) were paid by Google to work on SuperTuxKart under the supervision of Hiker and Auria.

The three accepted projects were rather successful, the game receiving several **new nicer graphical effects** thanks to the work of Cand, as well as a first version of networked play and of a networking user interface. Networking was anything but simple, however, and it would be several years and a considerable quantity of code before the game included official support for online multiplayer.

{% capture zero_eight_one_text -%}
**Devee**, who would go on to become an important contributor to the game, **joined the SuperTuxKart team during this period**, with a focus on bugfixes and minor enhancements.

SuperTuxKart 0.8.1, released in November 2013, brought many more important changes than the version name would suggest.

It had some new and improved tracks and karts, and it included the new graphical effects from the GSoC project, of course, as well as many small changes and fixes, including a minimum duration for nitro bursts, but it also introduced major innovations that shape SuperTuxKart to this day:
* **Soccer mode**, which at the time could only be played in local multiplayer, and **Egg Hunt mode**.
* The **bubble gum shield**. Previously, gums could only be dropped as an obstacle on the road, from 0.8.1 onwards they could also serve as a defensive item.
* **SuperTux difficulty**, after players clamored for the limitations on 0.8's Expert difficulty to be removed.
* A new speedometer and nitro gauge that would last until STK 0.9.3. They were quite inaccurate, but they would serve as the inspiration for their modern counterparts.

It was also starting with STK 0.8.1 that the blue nitro exhaust started coming out of the kart's nitro emitter and that drift particles were emitted from the kart's wheels, with the second level adopting a red hue.
{%- endcapture -%}

{% capture stk_enterprise_caption -%}
{%translate "STK Enterprise, Xue, and the modern nitro cans in SuperTuxKart 0.8.1, where they all first appeared"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ zero_eight_one_text }}
assets/wiki/History_STKEnterprise_Xue_0.8.1.jpg,{{ stk_enterprise_caption }},,SuperTuxKart 0.8.1: Xue driving in STK Enterprise next to the then new nitro can models with the user interface of that version visible
%}

## Antarctica

### A new engine

**An important transition occurred in early 2014 with the adoption of Git.** Until then, both code and assets were using the same Subversion (SVN) repository.

Git and SVN are version-control systems that allow to track and share changes during development. Their differences are outside the scope of this history of SuperTuxKart, but SVN is less flexible with branches which [created difficulties with networking branches](https://blog.supertuxkart.net/2013/12/votes-needed-suboptimal-source-control.html) that provided the motivation to switch to Git with the transfer of the code and the issue tracker [to GitHub](https://blog.supertuxkart.net/2014/02/gsoc-2014-github-flood-and-gl-3.html).

Another positive side effect of this change was that the code and the assets were now neatly separated. The assets such as tracks, karts, and textures remained in the SVN repository hosted on SourceForge, as SVN is more suited for large binary files.

In 2014, SuperTuxKart [participated again in the GSoC](https://blog.supertuxkart.net/2014/04/gsoc-students-announced.html) with five students involved.

Through their projects, the game gained several features:
* **Karts gained the ability to [drive on walls](https://blog.supertuxkart.net/2014/08/driving-on-walls-yes-please.html) and upside down** with 'magnetic' textures that track-makers could place in spots where normal gravity shouldn't apply. This also required significant updates to other systems, so that AIs would drive properly, items would work as expected, and so on.
* A [scripting engine](https://blog.supertuxkart.net/2014/08/when-scripting-deserves-to-fly.html) using AngelScript was introduced, allowing track-makers to add more interactive elements to their designs.
* **Differentiated [kart properties with three classes](https://blog.supertuxkart.net/2014/07/kart-properties-and-replay-system.html): light, medium and heavy**. There was still a long way to go for these classes to take their definitive form, and the initial balancing attempts were somewhat naive, but this was still a meaningful step for the game to take.

Meanwhile, Daniel Butum (a.k.a. 'Leyyin' or 'Vampy') worked on improving the STK Addons website. As online features progressively grew, from addons distribution to online accounts, the importance of the online servers was crucial.

His involvement in SuperTuxKart's online services would continue for several years past the end of his GSoC project, until the days of SuperTuxKart 1.0. Although limitations and issues in STK addons would become apparent over the years, this infrastructure would still play a major role in the project for the following decade.

One of the GSoC projects designed a track editor, which was something many STK enthusiasts had requested. Unfortunately, it ended in this awkward spot of being too limited for most track-making endeavours compared to Blender, but not simple enough to quickly make something fun. Official support for this editor was later discontinued.

{% capture zero_nine_release -%}
**The major undertaking for the release to come**, initially codenamed 0.8.2, was however **a new graphics engine**, based on Irrlicht but very heavily modified.

This [new engine](https://blog.supertuxkart.net/2014/05/introducing-supertuxkarts-new-graphical.html) required OpenGL 3.1 (from 2009) instead of OpenGL 2 (from 2004), which raised concerns from some players, but it was a necessary step to be able to take advantage of the considerable progress of GPU technology during this period. The old renderer would remain available as a fallback.

Through the work of Cand and vlj, SuperTuxKart's graphical capabilities increased considerably: **dynamic lighting, shadows, instanced rendering** (allowing for a large increase in vegetation), texture compression (greatly reducing vRAM usage), image-based lighting, god rays, depth-of-field, and more.

**Version 0.9 was [released in April 2015](https://blog.supertuxkart.net/2015/04/supertuxkart-09-released.html#gift-package-for-donations), powered by its new graphics engine, Antarctica.**

Two new high-quality tracks, **Cocoa Temple** and **Gran Paradiso Island** showcased the potential of Antarctica, while several other tracks received updates to take advantage of some of the new features.

This version also brought four new karts, a basic online system with friends and achievements, a Grand Prix editor, and the kart properties and physics changed discussed earlier, along with the usual bugfixes and enhancements.
{%- endcapture -%}

{% capture gran_paradiso_caption -%}
{%translate "Gran Paradiso Island, one of the two new tracks from SuperTuxKart 0.9"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-left, text={{ zero_nine_release }}
/assets/wiki/History_GNU_GranParadiso.jpg,{{ gran_paradiso_caption }},,SuperTuxKart 0.9: GNU in the airport terminal of Gran Paradiso Island
%}

{% capture gift_package -%}
**Version 0.9 the first version to use a separate configuration folder**: all the versions until then used the same configuration directory, which worked for minor version update but created problems when launching a different version could potentially erase data from the newer ones.

**It was also the first one to feature a gift package for donators.** SuperTuxKart had received some donations over the years, but there was no formal process for it until then.

The premise was simple: early access to a new track, in this case Antediluvian Abysses, as a thank you for supporters, with the promise that it would be made available for free to everyone in an upcoming version. This first package also featured some concept arts and a night-time version of Cocoa Temple.

The funds raised allowed to cover the costs of the project's online infrastructure as well as to fund some newer pieces of hardware for the developers.
{%- endcapture -%}

{% capture carnaval_caption -%}
{%translate "Carnaval del Cacao, a night-time version of Cocoa Temple first available as part of the gift package"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-right, text={{ gift_package }}
/assets/gallery/STK0.9.1_3.jpg,{{ carnaval_caption }},,SuperTuxKart 0.9.1: Sara the Wizard in Carnaval del Cacao with fireworks and a mesoamerican temple in the background
%}

### Refinements and more refinements

SuperTuxKart 0.9.1, released in October 2015, brought improvements to several tracks, including the modern layout of Oliver's Math Class, as well as the usual bugfixes and small improvements.

**Benau joined the SuperTuxKart team** during the development of the next version, quickly bringing important changes: **AIs for Soccer mode and Battle mode**, allowing these modes to be played in single player too, a finalized **ghost replay system** for time-trials, TTF font rendering, and more.

{% capture abysses_text -%}
SuperTuxKart 0.9.2 was released in July 2016. As promised in the initial gift package announcement, Antediluvian Abysses was made freely available in the base game, with further enhancements compared to its first revision.

Worth a mention in this general overview of STK's history is also considerable work on the internal handling of kart properties by Flakebi, bringing the game a step closer to the changes that would come with 1.0 and with Evolution.

This version also came with a new music for the farm track. Ah, music! Since the beginnings of SuperTuxKart, the soundtracks that play during races have been a core part of the experience, and tunes used in old versions are often one of their most nostalgic aspect for those who played them growing up.

Usually, music is one of the easiest thing to source for use in SuperTuxKart when it comes to artistic content with libre-licensing, as it can often fit even if it was not specifically designed for the game.

Nonetheless, tunes made specifically for the game have helped improving it further: **no history of SuperTuxKart would be complete without mentioning 0zone0ne** who composed original music for most of Samuncle's new generation tracks, helped by Krobonil in some cases.
{%- endcapture -%}

{% capture abysses_caption -%}
{%translate "Antediluvian Abysses, which became part of the base game with SuperTuxKart 0.9.2"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-left, text={{ abysses_text }}
assets/gallery/STK0.9.1_1.jpg,{{ abysses_caption }},,SuperTuxKart 0.9.1: Suzanne in Antediluvian Abysses with the skeleton of an ancient marine beast visible and a sign 'When Life was only Underwater'
%}

**Alongside version 0.9.2, the SuperTuxKart team [also unveiled a new website](https://blog.supertuxkart.net/2016/07/supertuxkart-092-is-out-and-say-hello.html) with a domain you might recognize: supertuxkart.net!** Until then, SuperTuxKart's website had been hosted through SourceForge.

The new website wanted to give the project more autonomy and a more modern look, displaying nicely on computers and smartphones alike.

SuperTuxKart's current website finds its roots there, with many of its documentation page written during this era. Since then, however, the underlying software moved from MediaWiki to Jekyll.

{% capture greenlight_text -%}
In February 2017, SuperTuxKart [launched a campaign](https://blog.supertuxkart.net/2017/02/supertuxkart-is-on-steam-greenlight.html) to get accepted on the digital game distribution service Steam through Steam Greenlight. While there were some hurdles regarding the code's licensing and the integration of Steam features, as well as the general paperwork involved with such a move, distribution of the game through Steam had been a common request.

At the time, games needed players to express their interest for them through Steam Greenlight before they were eligible for inclusion on the platform. A few months later, this system would be [replaced by a fee system for game publishers](https://steamcommunity.com/games/593110/announcements/detail/1265922321514182595).

Within a day, **SuperTuxkart had risen in the top 100 most demanded games on Greenlight, and [within a week it had been greenlit by Steam](https://blog.supertuxkart.net/2017/03/weare-greenlit.html)**.

Of course, this brings up a question: how come that, nearly ten years later, SuperTuxKart still isn't available through Steam?

Sam had been the main member within the SuperTuxKart team to push in this direction. When his involvement diminished, the goal of a Steam release became secondary compared to other tasks surrounding the game. The lingering questions around paperwork, licensing, and Steamworks integration were also stumbling blocks that a small volunteer team would not be eager to tackle.

**SuperTuxKart 0.9.3, released in October 2017** with a [halloween-themed gift package](https://www.youtube.com/watch?v=hcgDUT4bwls), would conclude the successful series of releases from the Antarctica era. The longer period since the previous release also meant a larger number of improvements and fixes.

Most significant was perhaps **the new SPM format by Benau for 3D models used by STK**, supplemented by improvements in the game's RAM usage and render pipeline. Benau also created two karts for the game, something reminiscent of the early days of SuperTuxKart when the division between coders and visual artists was blurred.
{%- endcapture -%}

{% capture greenlight_caption -%}
{%translate "A poster celebrating STK's Steam Greenlight campaign"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ greenlight_text }}
assets/wiki/OfficialPoster_greenlit.jpg,{{ greenlight_caption }},,The official poster for the Steam greenlight success with Tux as well as Sara and others on a scene in front of a crowd of penguins
%}

Version 0.9.3 also brought improvements to the game physics by Hiker and improvements to the camera by Auria that made kart driving smoother than ever before. There were some other enhancements that would be worth discussing here, if this was a book and not a general overview!

The quality of tracks rose again, with Cornfield Crossing and Candela City. The latter had been part of the 0.9.2 gift package, and was made available to everyone in accordance with the gift package's premise.

**It was the first version of SuperTuxKart made available on Android, thanks to Devee's efforts**, which proved very popular. It was clearly a port that had been designed first for computers, meaning the UI and the touch controls were not ideally suited to mobile devices, but it also embodied a core principle of the project: respecting the players. **No ads, no tracking, no pay-to-win** made STK stand out in the ecosystem of mobile games.

SuperTuxKart 0.9.3 would also go on to become the first SuperTuxKart version with [serious time-trial competition](https://www.speedrun.com/stk/levels?h=0.9.3-Normal).

## Modern Era

### SuperTuxKart 1.0

**Online multiplayer was by far the most important feature the game was missing, and after SuperTuxKart 0.9.3 it became the team's central focus.**

In a racing game, latency is extremely important to the player experience. If player inputs were only executed once received by the server and if players had to wait for server confirmation before seeing the results on their screen, the game would be unplayable.

This is why Hiker decided to take a different approach. While the server is the ultimate source of truth, in SuperTuxKart each client locally simulates the game and rewinds when receiving server data to offer a smooth experience.

Between the creation of servers, the networking layer, and updates to core game logic to allow rewinding, there was a considerable amount of work involved. Several aspects of core game logic, such as powerup selection, had to be made deterministic in such a way that distant computers could reliably obtain the same result.

As even subtle bugs could lead to desynchronization issues, a considerable amount of testing and bug-fixing was required for networking to meet the team's stringent reliability objectives.

**Hiker and Benau were the main authors of this major effort, with more than 20 thousand lines of network related code.**

Hiker also oversaw the rest of the project and dedicated efforts to fixing a couple of physics issues.

Benau's role in development was sometimes contentious because of his direct and laconic communication style, and because it was often difficult to understand how his code worked, creating concerns of technical debt.

On the other hand, he was by a fair margin the game's most prolific contributor during this period, with major work on features and bugfixes. His incontrovertible dedication made him one of the pillars of SuperTuxKart's progress during his years of activity.

Outside of networking and graphics related changes, Benau also authored other improvements in the lead up to 1.0, such as a system of kart color customization and new Free-For-All and Capture-the-Flag battle modes for online play.

{% capture alayan_joins -%}
**Alayan joined the SuperTuxKart team during this period.** He had been occasionally involved in the game in earlier years, having helped bring awareness to some issues and exploits, such as how extremely short nitro bursts could be abused, with a first commit merged in 2014.

He started contributing intensively in 2018. As a high-level SuperTuxKart player who had been competing for time-trial records and story-mode speedruns, he brought a different perspective to the team.

At the time, much of the communication around SuperTuxKart's development happened in the project's IRC channel, and this is where many new ideas were discussed.

While bugfixes and [UI improvements](https://blog.supertuxkart.net/2018/12/refreshing-gui.html) ended up being a large part of Alayan's work in the lead up to 1.0, improving gameplay to address known shortcomings was his main motivation.

Within the constraints set for 1.0 (such as no new powerup), the **gameplay received considerable refinement**. Key points included kart class balancing, a better powerup distribution, revised slipstreamings, AI improvements, and physics fixes; with many finer points too. A [blog post from the time](https://blog.supertuxkart.net/2019/03/bringing-balance-to-karts.html) gives a general overview.

Finally, ghost replays received a large number of improvements, and **the Story Mode and its challenges saw [a thorough revision](https://blog.supertuxkart.net/2018/11/supertux-challenges-in-story-mode.html)**. Suzanne's reputation as a formidable driver in her Cocoa Temple challenge finds its roots here.
{%- endcapture -%}

{% capture one_zero_ui_caption -%}
{%translate "1.0 offered a new dark theme, as well as a vertical tab layout"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-right, text={{ alayan_joins }}
/assets/gallery/UI_STK1.0_1.png,{{ one_zero_ui_caption }},,A screenshot from the SuperTuxKart 1.0 option menu showing the new dark theme as well as the new vertical tabs and the new language tab
%}

Auria and Devee played an important role throughout the development cycle by identifying and fixing many issues, with Auria handling a lot of the communication with the community and the minor contributors who participated.

The mood in the SuperTuxKart team was often contrasted, between the pleasure of seeing the game progressing a lot and the pressure to get things right with a timely release, between the positive feedback from testers and the fatigue from having worked on the game for many years.

Sam also stopped his contributions to SuperTuxKart around 2018 with real life taking priority, although new content he had designed would be integrated to the game with each new version until the end of 2020. His departure left a hole on the artistic side of things, although it was of little effect for 1.0 itself.

Over the course of SuperTuxKart 1.0's development, existing tracks also saw significant improvement. Little of that was on the visual side, however:
* Time-trial players had discovered that, **in a majority of tracks present in 0.9.3, it was possible to [drive backwards and use rescue](https://www.youtube.com/watch?v=9qoqYeH2DrY) to complete a lap faster than driving normally**. This would have ruined online play and fixing it was a high-priority.
* The placement of on-track items (such as nitro cans and bananas) was improved in many tracks.

{% capture bf_text -%}
Of course, with hindsight, it's easy to say that even more improvements would have been possible. Some of the issues that became apparent after months and years of online multiplayer had been obscured by much more pressing ones. But the leap from 0.9.3 to 1.0 was considerable.

Interestingly, for a long time, it was not decided to call the upcoming version 1.0! Soon after 0.9.3, a potential 0.9.4 was considered. Perhaps more significantly the beta release made available in January 2019 carried the name 0.10, a trace of which is still found in the 'config-0.10' folder used by the game.

A few weeks before 1.0's final release, [SuperTuxKart was used by Mercedes in a public demo to showcase the infotainment system of their new cars](Projects#a-mercedes-as-supertuxkart-controller), to very positive reception from the press.

**The final [release of SuperTuxKart 1.0](https://blog.supertuxkart.net/2019/04/supertuxkart-10-release.html) in April 2019 was the culmination of all these efforts, officially bringing online multiplayer to the game.**

In addition to everything discussed thus far, it came with a slew of bugfixes and improvements, as well as **two new tracks: Ravenbridge Mansion** by Sam and **Black Forest** by Sven, who made here his first contribution to SuperTuxKart. Sven would go on to become SuperTuxKart's new lead artist.

The release of SuperTuxKart 1.0 received a fairly large press coverage compared to previous versions: in addition to the many Linux outlets that have often covered new releases, various outlets covering general news [also reported on it](#additional-references).
{%- endcapture -%}

{% capture bf_caption -%}
{%translate "Black Forest in SuperTuxKart 1.0"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-left, text={{ bf_text }}
/assets/gallery/STK1.0_2.jpg,{{ bf_caption }},,SuperTuxKart 1.0: Xue driving towards the main bridge in Black Forest with a train steaming ahead on the railtrack running next to the road
%}

Soon after, Hiker [officially announced](http://blog.supertuxkart.net/2019/05/my-departure-from-supertuxkart.html) his choice to retire from the project after leading it for 13 years. Auria also stepped down from her role of co-lead but remained involved with the project. Arthur, who had acted as a community manager of sorts in earlier years, also left.

The project's lead was transferred to Benau and Alayan. Deveee, an important contributor for several years who is responsible for the Android version, remained in the team.

### An era of stability

**After the release of 1.0, the SuperTuxKart team adopted a policy of gameplay compatibility between versions**. There were two core motivations behind this:
* With the advent of online multiplayer, gameplay compatibility allowed people using different 1.x versions to still play together. This was in turn partly motivated by some stable Linux distributions taking a long time before offering an updated version in their package manager.
* It made SuperTuxKart gameplay well-defined instead of something fuzzy changing with every small release. Users could upgrade and continue with their existing user profile; instead of being invalidated every few months, replays and time-trial records remained compatible and comparable.

This policy encompassed tracks, the core online and networking protocols, as well as all gameplay rules themselves: physics, kart characteristics, powerups, game mode rules...

This choice is at odds with the usual policy of open-source games that often seem to be in a perpetual beta, and it came with additional trade-offs outside the scope of this overview, but overall it served SuperTuxKart well.

{% capture stability_changes -%}
Indeed, **despite this policy, the amount of changes and improvements brought with each release was still considerable**. Version 1.1 was released in January 2020, with STK 1.2 following in August 2020, STK 1.3 in September 2021, and STK 1.4 in October 2022. For each of those, it is impossible to give a brief yet fair summary of [the changelog](https://github.com/supertuxkart/stk-code/blob/master/CHANGELOG.md), but we can observe a few general trends and standout features:
* Several **new high-quality karts**. Each kart was replacing another kart with the exact same gameplay characteristics (and internal name), preserving compatibility.
* Three **new arenas**.
* A Switch Homebrew port as well as support for iOS and Windows on ARM.
* Many **enhancements to networking functionalities**. When 1.0 was released, online multiplayer was functional, but barebones. IPv6 support, lobby commands, better support for addons, server management features, and more were introduced in subsequent versions.
* The adoption of SDL2 for screen creation allowed gamepad hotplugging and wider gamepad support. Version 1.3 also brought support for gamepad force feedback.
* **A considerable number of bugfixes.** In a project as complex as SuperTuxKart, the number of edge cases that can cause anything from small visual issues to crashes is tremendous. Many bugs are unnoticeable until the moment they severely disrupt a player's experience.
* The game window became resizable via the operating system's window controls, although only on select screens. 1.5 would later extend this to all screens.
* Some general improvements to graphics, such as **performance optimizations**, support for render resolution upscaling, a screen space reflection effect, and better respawn animation for on-track items. Benau also introduced an experimental Vulkan renderer.
* An enormous amount of **UI improvements**. Those improvements were typically iterative. Each new release still felt like the same game, yet the game got improvements such as a font-size selector, emoji support, in-game tips, a minimap indicator for basketballs, visual and auditive feedback for timers running out, and many more. Version 1.2 even brought an alternative theme with its own iconset. Support for unusual resolutions greatly improved as well.
* A system to allow mobile users to download higher-quality assets that couldn't fit in the release package.
{%- endcapture -%}

{% capture pumpkin_caption -%}
{%translate "Pumpkin Park was added to the base game in SuperTuxKart 1.1"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ stability_changes }}
/assets/wiki/History_PumpkinPark.jpg,{{ pumpkin_caption }},,A screenshot from Pumpkin Park with Sara showing with a carrousel and a Ferris wheel visible
%}

{% capture online_and_addons -%}
During this era, **addon creation also flourished**. The promise to not only be able to play a track locally, but to also enjoy it with others online, spurred creativity. The number of addons available in the official SuperTuxKart addons repository grew from a few dozens to a few hundreds. While many are rather basic, a fair number have come with good gameplay and interesting theming.

Online multiplayer proved to be a great success for SuperTuxKart, with many people playing with others from all over the world in public servers, but also with people using private servers to play with family and friends.

Some server hosters also chose to extend the default server capabilities with custom features they were interested in, taking advantage of SuperTuxKart's open nature.

Since the ranking reset that coincided with version 1.2, over ten thousand players have participated in online ranked races, with more than 500 players who played at least 100 ranked races.

There have also been challenges, however. As the skill differences between experienced and new players can be considerable in STK, first-time players would often get soundly beaten without even the illusion of having a chance. This can be quite discouraging. Ideally, this is solved with some form of match-making, but that in turn requires a sizeable amount of players to be playing at the same time as well as additional mechanisms.

As a team-based mode, which has sometimes been likened to a simpler Rocket League, SuperTuxKart's soccer mode also benefited greatly from the introduction of online multiplayer, giving birth to a small but dedicated soccer community.

This enthusiasm led to fan-organized SuperTuxKart soccer tournaments every few months, and a flourish of new playing fields added to the addons.
{%- endcapture -%}

{% capture litspore_caption -%}
{%translate "Litspore Moor, one of many addons created during the 1.x era"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ online_and_addons }}
/assets/wiki/History_LitsporeMoor.jpg,{{ litspore_caption }},,A screenshot of Litspore Moor with Konqi with giant glowing mushrooms under a red sky
%}

### SuperTuxKart 1.5

After several years of intense work, Benau had other concerns outside of the game and couldn't muster as much energy for SuperTuxKart as before, and his involvement gradually diminished. Unlike some contributors who started because they particularly liked playing the game, Benau's interest was rather in the technical challenges the game presented. Nonetheless, he continued keeping the project running.

When Alayan came back to SuperTuxKart in late 2023 after a hiatus, his thoughts were firmly turned towards a new major version that the game's community was now itching for. Many ideas that couldn't be integrated in version 1.0 were just waiting to be picked up, many lessons from years of the latest version could be taken into account, and Sven had already made some track concepts for a new release.

However, it was clear that a new major version would require considerable work and time. SuperTuxKart had already received many bugfixes and minor features over the previous year, and it soon was obvious that a new minor release to bring these improvements to the larger STK community would be a good idea.

Soon, significant effort was dedicated to bugfixes and general improvements that could benefit the 1.x series as well as future releases.

There was some [initial optimism about release dates](https://blog.supertuxkart.net/2024/04/on-way-towards-15-and-20.html), with some **new features such as [the integrated benchmark](https://blog.supertuxkart.net/2024/07/why-average-fps-and-1-low-fps-are.html) and an improved Level of Detail (LoD) system** already done by the spring of 2024.

CodingJellyfish, who had made a few occasional contributions to past versions, took on a more active role and, under Benau's guidance, expanded his work from UI enhancements to the shaders and the graphics code, notably with the Vulkan renderer that had been Benau's personal project.

Dedicating time to a volunteer project can be difficult however, and a mix of unforeseen events and of additional improvements, such as the **new favorites system**, caused delays. A beta for STK 1.5 came out in October 2024.

Afterwards, small fixes and improvements continued to come, but while there was no technical obstacle to a quick release of SuperTuxKart 1.5 at this point, there were disagreements within the team on when to release and the direction to follow afterwards.

During this period, SuperTuxKart's popularity for various projects didn't wane: it was used to demonstrate [the interception of a car's CAN signals](Projects#cybersecurity-researchers-use-a-car-to-play-at-supertuxkart) (twice!) as well as in [a formal study about input device ergonomics](Projects#comparing-the-effectiveness-and-ergonomics-of-smartphone-based-gamepads), among others.

Personal circumstances led to CodingJellyfish's involvement in the project coming to an end.

{% capture one_five_release -%}
Additional changes that had not been planned came into being, such as three new egg hunts and improvements to the display of distant shadows.

Yet the crucial question of when to release remained a topic of contention, made worse by difficulties in communication, an issue sadly all too common across all kinds of projects. Concerns over the stewardship of some project resources were also present.

For a short period of time, there was open division. Thankfully, however, this crisis provided the impetus to bridge the differences and clear some misunderstandings. With the good of the project in mind, a solution was found.

The game's addons server, which also manages online play, was moved to a more powerful server better capable of handling the game's online services.

**In October 2025, [SuperTuxKart 1.5 was released](https://blog.supertuxkart.net/2025/10/supertuxkart-15-release.html)**, after an unusually long wait, but with a substantial amount of changes. Among the most significant ones not mentioned earlier in this overview: three new soccer fields designed by CrystalDaEevee and five new UI themes.

This release was accompanied by a new gift package, featuring a preliminary version [of two new tracks designed for SuperTuxKart Evolution](https://www.youtube.com/watch?v=tzTJgzzymBs).

Benau and Devee, whose involvement in the project was already reduced, officially left the STK team, their many years of contribution still living on in the game itself.

BcfWorld, who had helped transfer STK Addons to the new stronger server, became part of the SuperTuxKart team, his core focus being the management of the game's online services, and looking into ways to improve them after a period of relative neglect.

Since then, while the main efforts have been directed towards SuperTuxKart Evolution, a substantial number of bugfixes and minor improvements that don't affect compatibility have been merged in SuperTuxKart's code.

A SuperTuxKart 1.5.1 release is currently planned to bring those improvements to the players.
{%- endcapture -%}

{% capture xr_field_caption -%}
{%translate "XR-4R3N4, one of the three soccer fields added in SuperTuxKart 1.5"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-right, text={{ one_five_release }}
/assets/gallery/SuperTuxKart_1.5_1.jpg, {{ xr_field_caption }},,SuperTuxKart 1.5: Emule driving towards a green ball in the new soccer field XR-4R3N4 themed after XR591
%}

## SuperTuxKart Evolution

### When Evolution was 2.0

From the moment the policy of gameplay stability was adopted, the idea of a future release that would bring new tracks, new powerups, and more was already present.

**With no expectation of compatibility there could be change to physics, to kart characteristics, to the internal formats used for networking or to represent tracks...**

In some aspects, notions of a 2.0 release were already present before even the release of 1.0, as the need for a new speed-boosting powerup had already been felt.

{% capture alpine_text -%}
In late 2023, the first basis for what was then still codenamed 2.0 had been set, with Sven's alpha versions of some new tracks and improvements to some track, and with Alayan's experimental gameplay changes in a new branch.

Work continued intermittently throughout 2024, and arrangements were being made to be able to dedicate more time to the game, in order to make a new major release feasible in a reasonable timeframe, and a clearer picture began to emerge on as to the scope of the changes.

Unlike previous releases that typically added or improved two or three tracks, a kart or two, sometimes featuring a powerup or a significant change to one game mechanic, **the aim was to revise and renew every aspect of the game players regularly interacted with**. Not only several new tracks, but also meaningful updates to every track remaining in the game. Not only new powerups, but changes to existing ones too. Not only nicer menu elements, but a new flow through the menu screens. And so on and so forth.

It's in those circumstances that the qualifier of 2.0 began to feel inadequate.

It would too easily have been seen as a mere update among others, if a bit more important.
{%- endcapture -%}

{% capture alpine_caption -%}
{%translate "A preliminary version of Alpine Valley"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=flow-left, text={{ alpine_text }}
/assets/gallery/STKEvolution_6.jpg, {{ alpine_caption }},,SuperTuxKart Evolution preview: a peaceful mountain landscape in Alpine Valley with a waterfall and a church in the background
%}

### A new game

Adopting SuperTuxKart Evolution as a name was a statement: this will be a new game.

What makes a game a new game rather than an update? It can be difficult to establish an objective answer to this question.

Sometimes, such as with the yearly sports game, it is clear that no technical reason would prevent the new release being an update, the publishers simply expect more revenue by selling each update as a new game.

{% capture freytra_text -%}
On the other hand, continuity in code and assets is the industry norm between a game and its sequel. It is simply much more efficient and reliable to build on what already exists and works than to redo everything from scratch. SuperTuxKart is no exception.

**Video games are also different from most other types of software in this respect.** A new release doesn't necessarily make the old version obsolete. The old game often has some unique elements going for it, in its story or gameplay, that can make it worth playing even after a new game from the same series is out. Morrowind and Oblivion have their own unique environment and set of quests that gave them appeal even after Skyrim's release. Civilization IV has some gameplay qualities that none of the three newer games in the series could make obsolete. Examples are endless.

Three things make a game really new: the decision of its authors to consider it as such, substantial changes in its story or its gameplay, and the consequent need for a new user profile (contrasting with iterative updates that allow the continuity of in-game progress).

**In this light, we consider SuperTuxKart Evolution a new game.**

Part of the same game series as previous SuperTuxKart releases, of course, yet new all the same.
{%- endcapture -%}

{% capture freytra_caption -%}
{%translate "Freytra Peaks, one of SuperTuxKart Evolution's new tracks"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=480px, picture_side=flow-right, text={{ freytra_text }}
/assets/gallery/STKEvolution_1.jpg, {{ freytra_caption }},,SuperTuxKart Evolution preview: A view from Freytra Peak's hamlet with a beautiful brick and wood building on the left and electric lines crossing the road farther back
%}

### Evolution's journey

SuperTuxKart Evolution was [officially announced](https://blog.supertuxkart.net/2025/08/announcing-supertuxkart-evolution.html) in August 2025, with [a general roadmap](https://blog.supertuxkart.net/2025/09/supertuxkart-evolution-roadmap.html) made public the following month.

Alongside doing work to make SuperTuxKart Evolution a reality, an important goal was to improve the communication with the community and show the progress being made:
* A [new forum](https://forum.supertuxkart.net/) was unveiled as a place to have longer form discussion, give suggestions to the team, and more.
* [Blog posts](https://blog.supertuxkart.net/) about development are once again published regularly after a few years with a relative lack of news in the 1.x era.
* For the first time, development videos are also being published [on SuperTuxKart's official YouTube channel](https://www.youtube.com/@SuperTuxKartOfficial?sub_confirmation=1).

In January 2026, **Sam announced his full support for Evolution and [his return as advisor](https://blog.supertuxkart.net/2026/01/my-return-to-supertuxkart.html)**, and perhaps more! This endorsement from one of SuperTuxKart's major historic contributors meant a lot to the team.

As for what's next in SuperTuxKart's story? It is being written right now.

**If you want to participate in the next chapter, consider [donating](Donate) or check out our ['Get Involved' page](Community)!**

## Additional References

If you want to explore more in detail some aspect of SuperTuxKart's history, you can consult those sources:

* SuperTuxKart's [changelog](https://github.com/supertuxkart/stk-code/blob/master/CHANGELOG.md). Early versions are often light on details.
* Supertuxkart's [blog](https://blog.supertuxkart.net) with articles going back to 2009.
* The [SVN history](https://sourceforge.net/p/supertuxkart/code/commit_browser) of the project.
* The [list of resolved issues on STK's GitHub](https://github.com/supertuxkart/stk-code/milestones?state=closed)
* The [old mailing list](https://sourceforge.net/p/supertuxkart/mailman/supertuxkart-devel/)
* The [old forum on FreeGameDev](https://forum.freegamedev.net/viewforum.php?f=16).
* Steve Baker's retrospective view [on the TuxKart 'Game of the Month' project](https://en.wikipedia.org/wiki/Talk:Tux_(mascot)#c-SteveBaker-2006-06-24T05:02:00.000Z-13enzoate-2006-06-24T02:01:00.000Z)
* Archive links of the 'Game of the Month' forum thread: [[1]](https://web.archive.org/web/20041109144934/http://www.happypenguin.org/forums/viewtopic.php?t=1407) [[2]](https://web.archive.org/web/20120607000453/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=15&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[3]](https://web.archive.org/web/20120606235857/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=30&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[4]](https://web.archive.org/web/20120607000143/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=45&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[5]](https://web.archive.org/web/20120607000320/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=60&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[6]](https://web.archive.org/web/20120606235853/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=75&sid=e3789fa7035b89cbfc1ab2aa6366033c)
* Sourceforge [download stats](https://sourceforge.net/projects/supertuxkart/files/stats/json?start_date=2007-08-04&end_date=2010-11-04) for the period where STK got its first million download there. The dates in the URL can be adjusted to check various periods.
* Links to some of the press coverage of the 1.0 release. Most of the articles rehash the same general points.
  * In English: [Neowin](https://www.neowin.net/news/open-source-kart-racing-game-supertuxkart-sees-10-release-after-12-years/), [FOSS Linux](https://www.fosslinux.com/13647/supertuxkart-1-0-open-source-linux-racing-game-released.htm), [Phoronix](https://www.phoronix.com/news/SuperTuxKart-1.0-Released), [Liliputing](https://liliputing.com/supertuxkart-1-0-released-brings-online-play-support/), [OMG Ubuntu](https://www.omgubuntu.co.uk/2019/04/supertuxkart-online-play-release)
  * In German: [Der Standard](https://www.derstandard.de/story/2000101926472/supertuxkart-freies-racing-game-erhaelt-onlinemodus), [Golem.de](https://www.golem.de/news/freier-arcade-racer-supertuxkart-1-0-erscheint-mit-lan-modus-1904-140805.html)
  * In Portuguese: [Pplware](https://pplware.sapo.pt/jogos/supertuxkart-1-0-online/)
  * In Spanish: [Gizmodo en Español](https://es.gizmodo.com/supertuxkart-1-0-si-tu-tambien-jugabas-a-esto-en-la-es-1834335710), [MuyLinux](https://www.muylinux.com/2019/04/22/supertuxkart-1-0/)
  * In Slovak: [Aktuality.sk](https://zive.aktuality.sk/clanok/139672/open-source-pretekarska-hra-supertuxkart-je-hotova-po-12-rokoch-vyvoja/)
