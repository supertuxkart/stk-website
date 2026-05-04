---
title: FAQ
---

{% capture general_questions %}
{%translate "General Questions","FAQ page - section title"%}
{% endcapture %}

{% start_liquid main_title %}

{{ general_questions }}

{% end_liquid %}

{% capture question_what_is_stk %}
{%translate "What is SuperTuxKart?","FAQ page - question"%}
{% endcapture %}

{% capture answer_what_is_stk %}
{%translate "SuperTuxKart is a **free, open-source, cross-platform kart racing game**, with over **5 million downloads** and two decades of development history.","FAQ page"%}

{%translate "SuperTuxKart blends **intuitive controls** for beginners and **advanced mechanics** for experts, with 21 original tracks to discover, a **Story Mode**, as well as local and **online multiplayer** to play with your friends.","FAQ page"%}

{%translate "SuperTuxKart also features additional game modes such as Time-Trial, Soccer, and Egg Hunt, with hundreds of community-made addons to always keep the game fresh.","FAQ page"%}

{%translate "Find out more [on our 'Discover' page](Discover)!","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_what_is_stk }}

{{ answer_what_is_stk }}

{% end_liquid %}

{% capture question_platforms %}
{%translate "What platforms is SuperTuxKart available on?","FAQ page - question"%}
{% endcapture %}

{% capture answer_platforms %}
{%translate "The SuperTuxKart team provides [official binaries](Download) for **Linux**, **Windows**, **Mac**, **Android**, and Switch Homebrew.","FAQ page"%}

{%translate "SuperTuxKart is also available unofficially [on **iOS**](https://apps.apple.com/app/supertuxkart/id6737858957) through the AppStore, and in the package managers of select BSD distributions. Linux users can also get the game as an [AppImage](https://github.com/ivan-hc/SuperTuxKart-appimage/releases/tag/1.5), as a [Flatpak](https://flathub.org/en/apps/net.supertuxkart.SuperTuxKart), or as a Snap.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_platforms }}

{{ answer_platforms }}

{% end_liquid %}

{% start_liquid qa %}

Is SuperTuxKart really free?

Yes! **SuperTuxKart is available for free, without any kind of active ads or microtransactions.**

Some new tracks are available in early access for donators as part of our [gift package](Donate), they will however be made available to everyone for free in upcoming releases.

The SuperTuxKart team has a firm belief that **software should respect and serve its users**. This means respecting privacy, but also being respectful of the users' time and fun. This disqualifies nearly all forms of advertisement. However, we may name sponsors in the credits, or include passive environmental advertising elements (like billboards near race tracks) provided they fit the game’s aesthetic.

{% end_liquid %}

{% capture question_hardware %}
{%translate "What are the hardware requirements?","FAQ page - question"%}
{% endcapture %}

{% capture answer_hardware %}

{%translate "**SuperTuxKart runs well on most devices.** You might want to [use the integrated benchmark](Performance_testing) to optimize your settings to get the best mix of eye-candy and smoothness for your device.","FAQ page"%}

{%translate "**Desktop**","FAQ page"%}

{%translate "**GPU**","FAQ page"%}

{%translate "The GPU is usually the limitation for STK's performance. Cards meeting the minimal requirements have the OpenGL support to run the game, but require low resolution and low graphics for smooth play. Cards meeting or exceeding the recommended requirements can run STK's most demanding track at 60FPS/1080p with the modern rendering pipeline on graphics 4.","FAQ page"%}

* {%translate "**Recommended**: NVIDIA GeForce GTX 950, AMD Radeon RX 460, or stronger; At least 1 GB VRAM (video memory).","FAQ page"%}
* {%translate "**Minimal**: NVIDIA GeForce 470 GTX, AMD Radeon 6870 HD series card or Intel HD Graphics 4000; At least 512 MB VRAM (video memory).","FAQ page"%}

{%translate "**CPU**","FAQ page"%}

{%translate "The CPU performance might be the limitation depending on graphics card and graphics setting, mostly for online play which is more CPU-intensive. Good CPU performance helps ensure high framerate and more importantly smoothness. For STK, single-thread performance is paramount.","FAQ page"%}

* {%translate "**Recommended**: Core i5-2400 single-thread performance or higher. This includes AMD Ryzen desktop CPUs, most Intel desktop CPUs since 2012 and recent mobile CPUs.","FAQ page"%}
* {%translate "**Minimal**: Any Intel or AMD dual-cores processors. Very old models and low-clocked mobile parts may struggle, especially in online play.","FAQ page"%}

{%translate "**Mobile**","FAQ page"%}

* {%translate "Android: Android 5.0 or later","FAQ page"%}
* {%translate "iOS: iOS 13 or later","FAQ page"%}

{%translate "By default, SuperTuxKart uses a render resolution below 100% on mobile to improve performance.","FAQ page"%}

{%translate "**Other requirements**","FAQ page"%}

* {%translate "At least 1 GB of free RAM","FAQ page"%}
* {%translate "Disk space: 800MB","FAQ page"%}

{%translate "**Optional**","FAQ page"%}

* {%translate "(If you prefer playing with a gamepad) A gamepad with at least 6 buttons.","FAQ page"%}

{% endcapture %}

{% start_liquid qa %}

{{ question_hardware}}

{{ answer_hardware }}

{% end_liquid %}

{% capture question_old_hardware %}
{%translate "My computer is too old to run SuperTuxKart. What should I do?","FAQ page - question"%}
{% endcapture %}

{% capture answer_old_hardware %}
{%translate "SuperTuxKart features a **fallback renderer** which only needs OpenGL 2.1, GLES 2, or DirectX 9. It lacks the advanced graphical effects that make the game pretty, but it should work on most devices.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_old_hardware }}

{{ answer_old_hardware }}

{% end_liquid %}


{% capture question_history %}
{%translate "What is the history of SuperTuxKart?","FAQ page - question"%}
{% endcapture %}

{% capture answer_history %}
{%translate "The SuperTuxKart project as we know it exists since 2006, when Hiker began working on it, with roots in the older TuxKart.","FAQ page"%}

{%translate "Over the years, with the help of many contributors, the game grew to become a reference among open-source games, with steady improvements in graphics and gameplay alike.","FAQ page"%}

{%translate "Thanks to this recognition as well as its open nature, SuperTuxKart was and is used in [many projects](Projects), including numerous academic papers and demos from major companies.","FAQ page"%}

{%translate "By the release of version 1.0 in 2019 with online multiplayer, SuperTuxKart was a mature project. Hiker passed the torch, and the project continued with a focus on polish and stability.","FAQ page"%}

{%translate "Now, our team is actively working on writing the next page of history with SuperTuxKart Evolution, with a myriad of novelties in the works.","FAQ page"%}

{%translate "You can consult our [illustrated history of SuperTuxKart](History_of_SuperTuxKart) for an in-depth exploration of the game's history.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_history }}

{{ answer_history }}

{% end_liquid %}


{% capture question_mario %}
{%translate "Is SuperTuxKart a Mario Kart clone?","FAQ page - question"%}
{% endcapture %}

{% capture answer_mario %}
{%translate "No! The Mario Kart series is the most widely recognized franchise of kart racing games, but there are many others.","FAQ page"%}

{%translate "There are many major differences between SuperTuxKart and Mario Kart, and while we sometimes look at other kart racing games to see how SuperTuxKart compares, SuperTuxKart continues evolving in its own unique direction.","FAQ page"%}

{%translate "The 'clone' claim usually comes from sources that try to give a simplified explanation of what SuperTuxKart is while having only a superficial understanding of both game series.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_mario }}

{{ answer_mario }}

{% end_liquid %}

{% capture question_team %}
{%translate "Who is behind SuperTuxKart ?","FAQ page - question"%}
{% endcapture %}

{% capture answer_team %}
{%translate "SuperTuxKart is currently led by **Alayan**, who manages the code and coordinates the team's efforts, and by **Sven**, who focuses on visual art and the creation of new tracks. Both have been involved in the project for nearly a decade.","FAQ page"%}

{%translate "**Samuncle**, who was the game's lead artist for many years, currently plays an advisory role, while **BcfWorld** manages STK's online services.","FAQ page"%}

{%translate "Among the most significant past team members are **Hiker**, project leader from 2006 to 2019, **Auria** who assisted him for a decade, **Devee** who created and maintained the Android version, and **Benau**, who was co-leader from 2019 to 2025.","FAQ page"%}

{%translate "As is the nature of a libre and open-source project, a great number of people made contributions to SuperTuxKart over the years, from small changes to major improvements.","FAQ page"%}

{%translate "See our [Team](Team) page for more information about the people behind SuperTuxKart!","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_team }}

{{ answer_team }}

{% end_liquid %}

{% capture question_support %}
{%translate "How can I support the project?","FAQ page - question"%}
{% endcapture %}

{% capture answer_support %}
{%translate "There are two main ways to support SuperTuxKart's development:","FAQ page"%}
* {%translate "You can [contribute **with a donation**](Donate). All the money received is used to cover the project's costs and to help make development work sustainable. Donations are essential for SuperTuxKart to compete with proprietary games.","FAQ page"%}
* {%translate "You can contribute **by directly making an improvement** for the game. Check the [Get involved](Community) page, it references information about contributing code, visual art, translations, and more. If you want to create something new, you should share your plans with the current developers and artists through the [forum](https://forum.supertuxkart.net/). This will greatly improve the chance that you contribution will be accepted.","FAQ page"%}

{%translate "Simply participating in the community, and promoting SuperTuxKart through word-of-mouth, are also small ways to help!","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_support }}

{{ answer_support }}

{% end_liquid %}


{% capture evolution_questions %}
{%translate "SuperTuxKart Evolution","FAQ page - section title"%}
{% endcapture %}

{% start_liquid main_title %}

{{ evolution_questions }}

{% end_liquid %}

{% capture question_what_evolution %}
{%translate "What is SuperTuxKart Evolution?","FAQ page - question"%}
{% endcapture %}

{% capture answer_what_evolution %}
{%translate "SuperTuxKart Evolution is the name of the next major release of SuperTuxKart.","FAQ page"%}

{%translate "A continuation of SuperTuxKart's long history, it will at the same time bring considerable change ; with a vast amount of new content and a strong focus on higher and more consistent quality.","FAQ page"%}

{%translate "It aims to offer players the experience of a new game within the same game series.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_what_evolution }}

{{ answer_what_evolution }}

{% end_liquid %}

{% capture question_planned_evolution %}
{%translate "What changes are planned for SuperTuxKart Evolution?","FAQ page - question"%}
{% endcapture %}

{% capture answer_planned_evolution %}
{%translate "Check our blog for a [general overview](https://blog.supertuxkart.net/2025/09/supertuxkart-evolution-roadmap.html). The main points are:","FAQ page"%}
* {%translate "At least 8 new tracks,","FAQ page"%}
*  {%translate "Significant gameplay and graphical updates to all tracks carried over from 1.5,","FAQ page"%}
*  {%translate "Significant changes to game mechanics and physics, while keeping the essence of the SuperTuxKart feel,","FAQ page"%}
*  {%translate "New powerups as well as a revision of existing ones,","FAQ page"%}
*  {%translate "Several new karts, as well as new animations and other improvements for existing karts,","FAQ page"%}
*  {%translate "A new user interface rethought from the ground up,","FAQ page"%}
*  {%translate "A new Story Mode with over 40 challenges, including new cutscenes and new challenge types.","FAQ page"%}

{%translate "Many other elements of the game not covered in this brief summary are also planned. Many of the planned changes affecting the code are indexed in the [STK Evolution milestone on GitHub](https://github.com/supertuxkart/stk-code/milestone/13).","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_planned_evolution }}

{{ answer_planned_evolution }}

{% end_liquid %}

{% capture question_2dot0 %}
{%translate "Why Evolution and not 2.0?","FAQ page - question"%}
{% endcapture %}

{% capture answer_2dot0 %}
{%translate "We've chosen SuperTuxKart Evolution to signify that this is a new game within the same game series, rather than merely a big update.","FAQ page"%}

{%translate "SuperTuxKart Evolution will bring an unprecedented number of changes and novelties to every aspect of the game (see 'What changes are planned for SuperTuxKart Evolution?'), and 2.0 was inadequate to convey this.","FAQ page"%}

{%translate "There is continuity in code and assets, but that's the norm between a game and its sequel. Unlike most software which are defined primarily by their function, video games are primarily defined by the experience they provide through their gameplay and their story. Major changes to either are the essence of a new game.","FAQ page"%}

{%translate "That's why we consider SuperTuxKart Evolution a new game.","FAQ page"%}

{%translate "Please see our [History page](History_of_SuperTuxKart#a-new-game) for more details.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_2dot0 }}

{{ answer_2dot0 }}

{% end_liquid %}

{% capture question_progress %}
{%translate "How can I stay informed of STK Evolution's progress?","FAQ page - question"%}
{% endcapture %}

{% capture answer_progress %}
{%translate "You can find blog posts covering major changes on [our blog](https://blog.supertuxkart.net/), as well as development videos on our [YouTube channel](https://www.youtube.com/@SuperTuxKartOfficial?sub_confirmation=1). SuperTuxKart's in-game news (in the 'Online' menu) provide notifications for new blog posts.","FAQ page"%}

{%translate "Short posts are also published every week on [our Patreon page](https://members.supertuxkart.net/). These posts often showcase Evolution's improved visuals, but they also discuss the design choices we make, code changes, and other aspects of game development.","FAQ page"%}

{%translate "Keep in mind that it takes time to prepare new videos and blog posts, and that we prefer to unveil novelties when they are ready. There is always a significant amount of 3D visual art that has been done but which hasn't been showcased yet.","FAQ page"%}

{%translate "Likewise, many changes present in [the code of the Evolution branch](https://github.com/supertuxkart/stk-code/tree/BalanceSTK2) have not been publicly showcased yet, although you can browse the code history if you are interested.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_progress }}

{{ answer_progress }}

{% end_liquid %}

{% capture question_1x_maintained %}
{%translate "Will SuperTuxKart 1.x still be maintained?","FAQ page - question"%}
{% endcapture %}

{% capture answer_1x_maintained %}
{%translate "A 1.5.1 release is currently planned to bring bugfixes, localization improvements, and minor features.","FAQ page"%}

{%translate "No active development is planned afterwards, however the 1.x online services (online accounts, addons repository, server directory) will remain available even after SuperTuxKart Evolution's release.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_1x_maintained }}

{{ answer_1x_maintained }}

{% end_liquid %}


{% capture gameplay_questions %}
{%translate "Gameplay Questions","FAQ page - section title"%}
{% endcapture %}

{% start_liquid main_title %}

{{ gameplay_questions }}

{% end_liquid %}

{%translate "**The answers in this section assume that you are playing the latest stable release, SuperTuxKart 1.5.** Some details may not be applicable to old versions.","FAQ page - gameplay section"%}

{% capture question_powerup %}
{%translate "What are SuperTuxKart's powerups?","FAQ page - question"%}
{% endcapture %}

{% capture answer_powerup %}
{%translate "SuperTuxKart 1.5 features 9 different powerups: zipper, bubblegum, plunger, bowling-ball, cake, swatter, parachute, basket-ball, and swapper (also known as switch).","FAQ page"%}

{%translate "Check the in-game help menu for more details.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_powerup }}

{{ answer_powerup }}

{% end_liquid %}

{% capture question_game_modes %}
{%translate "What are the available game modes?","FAQ page - question"%}
{% endcapture %}

{% capture answer_game_modes %}
{%translate "The game modes available in SuperTuxKart 1.5 are:","FAQ page"%}
* {%translate "**Normal race**, a racing mode with powerups to boost your kart or hinder rivals.","FAQ page"%}
* {%translate "**Time-Trial**, a racing mode without powerups, emphasizing raw driving skills.","FAQ page"%}
* {%translate "**Soccer**, in which two teams compete to score goals with a ball or a puck.","FAQ page"%}
* {%translate "**Egg Hunt**, in which a player explores a track to find eggs hidden in various locations.","FAQ page"%}
* {%translate "**Battle**, in which players use powerups to attack each other and score points. It has several subvariants, with Three-Strikes-Battle, Free-For-All, and Capture-the-Flag.","FAQ page"%}
* {%translate "**Follow-the-Leader**, a form of elimination race in which players are not allowed to overtake a leader kart.","FAQ page"%}

{%translate "Normal Race, Time-Trial, and Follow-the-Leader support **Grand Prix mode**, in which several races are played in a row. After each race, points are scored based on the kart's final position, and the kart with the most points at the end wins the Grand Prix.","FAQ page"%}

{%translate "SuperTuxKart offers a **Story Mode** in which players have to win a series of challenges, featuring normal races, time-trials, and Grand Prix.","FAQ page"%}

{%translate "Time-Trial and Egg Hunts support the recording of replays, with the possibility to play against an existing replay to try and beat it.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_game_modes }}

{{ answer_game_modes }}

{% end_liquid %}

{% capture question_drift %}
{%translate "How does drifting work?","FAQ page - question"%}
{% endcapture %}

{% capture answer_drift %}
{%translate "**In SuperTuxKart, you can drift to take tighter curves and to obtain speed boosts.** Simply press the appropriate key or button (indicated in the in-game tutorial or in the 'Controls' tab of the Options menu) while turning and the kart will start to drift.","FAQ page"%}

{%translate "The initial hop of the kart helps to turn tighter. As long as you keep the drift input pressed, the kart will be forced to keep turning, but you can adjust how tightly.","FAQ page"%}

{%translate "If you hold the drift long enough, spark particles will change and you will get a speed boost once you release the drift. In SuperTuxKart 1.5, there are 2 drift levels depending on how long the drift lasts.","FAQ page"%}

{%translate "The key to mastering drifting is to [carefully position your kart](https://www.youtube.com/watch?v=Ol2z27AWZhg&t=111s) before you initiate the drift.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_drift }}

{{ answer_drift }}

{% end_liquid %}

{% capture question_backward_fire %}
{%translate "How do I fire powerups backwards?","FAQ page - question"%}
{% endcapture %}

{% capture answer_backward_fire %}
{%translate "To fire a powerup backwards in SuperTuxKart, simply activate the powerup while also looking back.","FAQ page"%}

{%translate "Go in the Options menu and check the 'Controls' tab to check or change the input needed to look back. On touchscreens, tap the rearview mirror to look back.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_backward_fire }}

{{ answer_backward_fire }}

{% end_liquid %}

{% capture question_ai_cheat %}
{%translate "Is the AI cheating?","FAQ page - question"%}
{% endcapture %}

{% capture answer_ai_cheat %}
{%translate "No!","FAQ page"%}

{%translate "The speed limit and speed boosts are exactly the same for all the karts, AI or human. In lower difficulties, the AI might even slow down on purpose. The powerup probabilities when grabbing a gift box are also identical. There are minor differences in how quickly the karts can steer from a direction to another, but it gives no meaningful advantage to the AI and isn't meant to.","FAQ page"%}

{%translate "The AI can sometimes have superhuman reflexes to use powerups, but if a human presses the right button at the right time, he can achieve the same result. There is also a lot of room to outsmart it.","FAQ page"%}

{%translate "If you struggle to beat the AI, focus on improving your driving to crash as little as possible while going fast, and learn to use skidding. On higher difficulties, skidding is essential to beat the AI.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_ai_cheat }}

{{ answer_ai_cheat }}

{% end_liquid %}

{% capture question_online_play %}
{%translate "Can I play STK online?","FAQ page - question"%}
{% endcapture %}

{% capture answer_online_play %}
{%translate "Yes! After creating an online STK account inside the game and connecting with it, select the 'Online' button in the main menu then 'Global networking' to access networked gameplay through the internet. You can host your own server for others to play on, or join community-hosted servers.","FAQ page"%}

{%translate "For the best experience, a stable connection and a low ping to the server are important.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_online_play }}

{{ answer_online_play }}

{% end_liquid %}

{% capture question_slow %}
{%translate "Why does my kart feel slow compared to others?","FAQ page - question"%}
{% endcapture %}

{% capture answer_slow %}
{%translate "Online, many players make heavy use of the drifting mechanic. If you feel slow compared to them, you can probably stand to drift more.","FAQ page"%}

{%translate "Picking good trajectories and using nitro in small bursts is also important.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_slow }}

{{ answer_slow }}

{% end_liquid %}

{% capture question_red_circle %}
{%translate "I suddenly got a big red circle on my screen, what's that?","FAQ page - question"%}
{% endcapture %}

{% capture answer_red_circle %}
{%translate "If there's a penguin in the middle of the circle, someone's shot a plunger at your face. You can do that to others by shooting the plunger backwards (see the FAQ entry about throwing powerups backwards).","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_red_circle }}

{{ answer_red_circle }}

{% end_liquid %}

{% capture question_unlock %}
{%translate "How do I unlock all the tracks?","FAQ page - question"%}
{% endcapture %}

{% capture answer_unlock %}
{%translate "**The intended in-game way is to play Story Mode and beat all challenges.**","FAQ page"%}

{%translate "If however you want to unlock everything without playing Story Mode, you can also do so by editing a config file.","FAQ page"%}

{%translate "Open the folder mentioned in the question 'Where is the configuration stored?'. From there, open the file 'players.xml', and replace all occurrences of 'none' with 'hard' (or 'easy' or 'medium', indicating the highest level at which you have solved a challenge).","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_unlock }}

{{ answer_unlock }}

{% end_liquid %}


{% capture technical_questions %}
{%translate "Technical Questions","FAQ page - section title"%}
{% endcapture %}

{% start_liquid main_title %}

{{ technical_questions }}

{% end_liquid %}

{% capture question_progress_update %}
{%translate "Will my progress be preserved after updating the game?","FAQ page - question"%}
{% endcapture %}

{% capture answer_progress_update %}
{%translate "Yes, all your progress and settings will be carried over if you are updating from a compatible version, such as 1.3 or 1.4 to 1.5.","FAQ page"%}

{%translate "If you are updating from an incompatible version, such as 0.9.3 to 1.5, you will get a new user profile. Your progress and settings in the old version will remain safe and available when playing with the old version.","FAQ page"%}

{%translate "Be aware that new compatible versions may introduce new setting parameters. If you have two compatible versions installed at the same time, the older version will not recognize settings specific to the newer one, and playing with the older version will reset changes you might have done to those new setting parameters.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_progress_update }}

{{ answer_progress_update }}

{% end_liquid %}

{% capture question_improve_perf %}
{%translate "How can I improve performance on low end hardware?","FAQ page - question"%}
{% endcapture %}

{% capture answer_improve_perf %}
{%translate "There are several methods available:","FAQ page"%}
* {%translate "Reduce your graphical settings. You can [use the integrated benchmark](Performance_testing) to test the changes. When using the modern renderer (graphics level 3 and up), you can reduce the render resolution. SuperTuxKart's UI will remain crisp but the rest of the game will be upscaled from a lower resolution.","FAQ page"%}
* {%translate "Set a lower value in the game's frame-limiter. Frames don't all take the same amount of time to render. By letting your hardware rest after fast frames, you get more thermal headroom for slower frames.","FAQ page"%}
* {%translate "Reduce the game's resolution.","FAQ page"%}
* {%translate "For online play, stick to nearby servers with a low latency. Higher latencies increase the load on your CPU.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_improve_perf }}

{{ answer_improve_perf }}

{% end_liquid %}

{% capture question_weird_input %}
{%translate "I've got weird input issues. What's going on?","FAQ page - question"%}
{% endcapture %}

{% capture answer_weird_input %}
{%translate "If you are using a keyboard, and some keypresses don't register when pressing multiple keys simultaneously, this is not a bug in SuperTuxKart but a physical limitation of your keyboard: most keyboards only support a limited number of simultaneous key presses (for more detailed information, please check [here](https://en.wikipedia.org/wiki/Key_rollover)).","FAQ page"%}

{%translate "Most keyboards work properly with SuperTuxKart's default key bindings, but custom key bindings may trigger this issue. The solution is to use a gaming input device (gamepad, or gaming keyboard), or to tweak your key bindings to find a configuration that your keyboard will be able to register simultaneously.","FAQ page"%}

{%translate "If the game seems to register phantom inputs, behaving as if you pressed a key while you did not, try going in the options menu, on the input screen, and check if you have gamepads there. Try to disable all gamepads except the device you are using. Sometimes, bogus inputs can be received from gamepads or other similar devices that the OS sees as a gamepad.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_weird_input }}

{{ answer_weird_input }}

{% end_liquid %}

{% capture question_bug_report %}
{%translate "I found a bug, how should I contact you?","FAQ page - question"%}
{% endcapture %}

{% capture answer_bug_report %}
{%translate "Check [SuperTuxKart bug tracker](https://github.com/supertuxkart/stk-code/issues) and search first to see if your problem has been reported already. If it has not been reported, open a new issue and provide all relevant information that could help developers track down the problem's cause.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_bug_report }}

{{ answer_bug_report }}

{% end_liquid %}

{% capture question_configuration %}
{%translate "Where is the configuration stored?","FAQ page - question"%}
{% endcapture %}

{% capture answer_configuration %}

{%translate "All versions from SuperTuxKart 1.0 to SuperTuxKart 1.5 use the same configuration location. The precise location depends on your operating system and on the installation method:","FAQ page"%}
* {%translate "On **Windows**: It is in `%APPDATA%/supertuxkart/config-0.10` (you can enter that in the Explorer and it will take you there).","FAQ page"%}
* {%translate "On **Linux**: It is either in `$XDG_CONFIG_HOME/supertuxkart/config-0.10` (first choice), `~/.config/supertuxkart/config-0.10` (second choice) or in `~/.supertuxkart/config-0.10` (third choice).","FAQ page"%}
* {%translate "On **macOS**: It is in `~/Library/Application Support/supertuxkart/config-0.10`. Note that this directory may be hidden.","FAQ page"%}
* {%translate "On **Android**: It is in `/storage/emulated/0/Android/data/org.supertuxkart.stk/files/supertuxkart/home/supertuxkart/config-0.10`.","FAQ page"%}
* {%translate "With **Snap**: It is in `~/snap/supertuxkart/current/.config/supertuxkart/config-0.10`.","FAQ page"%}
* {%translate "With **Flatpak**: It is in `~/.var/app/net.supertuxkart.SuperTuxKart/config/supertuxkart/config-0.10`.","FAQ page"%}

{%translate "You can also watch the output in the terminal to see if there is a note on where the config files are stored or search for a file called 'config.xml'.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_configuration }}

{{ answer_configuration }}

{% end_liquid %}

{% capture question_best_input %}
{%translate "What is the best input method for SuperTuxKart?","FAQ page - question"%}
{% endcapture %}

{% capture answer_best_input %}
{%translate "Keyboard, gamepad, and gaming wheel are all perfectly fine input methods to play SuperTuxKart and feel in control of your kart. Use whichever you are most comfortable with.","FAQ page"%}

{%translate "While keyboard controls often have the reputation of being inadequate for racing games, this is not the case in SuperTuxKart. In fact, a majority of the game's best players play on keyboard.","FAQ page"%}

{%translate "The touchscreen controls available on mobile are more challenging, because thumbs need to do most of the work. It is still possible to play very well, but there is an extra degree of difficulty.","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_best_input }}

{{ answer_best_input }}

{% end_liquid %}

{% capture question_git_compile %}
{%translate "The Git version won't compile. What should I do?","FAQ page - question"%}
{% endcapture %}

{% capture answer_git_compile %}
{%translate "This happens sometimes; the developers should be aware of that and it should be fixed soon. If [GitHub Actions](https://github.com/supertuxkart/stk-code/actions) says that the current Git version compiles, but it doesn't do so for you, then probably something is wrong with your compiler setup. (Check if you have all dependencies, re-run CMake, ...)","FAQ page"%}
{% endcapture %}

{% start_liquid qa %}

{{ question_git_compile }}

{{ answer_git_compile }}

{% end_liquid %}