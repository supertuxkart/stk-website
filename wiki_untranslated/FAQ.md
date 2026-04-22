---
title: FAQ
---

{% start_liquid main_title %}

General Questions

{% end_liquid %}

{% start_liquid qa %}

What is SuperTuxKart?

SuperTuxKart is an open source Kart racing game for Linux, PC, Mac and Android. You can play offline and online against other players.

It features many different game modes with a variety of different tracks and arenas.

[Find more here](Discover)!

{% end_liquid %}

{% start_liquid qa %}

Who is behind SuperTuxKart ?

A great number of people have contributed to SuperTuxKart over the years.

Our current team is led by Alayan, co-leader of SuperTuxKart since 2019, and Sven, lead artist of the project after Samuncle's departure.

Among the most significant past contributors are Hiker, project leader from 2006 to 2019, Auria who assisted him for a decade, Samuncle who was the game's lead artist for many years, Devee who created and maintained the Android version, and Benau, who became co-leader after Hiker's departure.

See our [Team](Team) page for more information about the people behind SuperTuxKart!

{% end_liquid %}

{% start_liquid qa %}

What are the hardware requirements?

**GPU**

The GPU is usually the limitation for STK's performance. Cards meeting the minimal requirements have the OpenGL support to run the game, but require low resolution and low graphics for smooth play. Cards meeting or exceeding the recommended requirements can run STK's most demanding track at 60FPS/1080p with the modern rendering pipeline on graphics 4.

* **Recommended**: NVIDIA GeForce GTX 950, AMD Radeon RX 460, or stronger; At least 1 GB VRAM (video memory).
* **Minimal**: NVIDIA GeForce 470 GTX, AMD Radeon 6870 HD series card or Intel HD Graphics 4000; At least 512 MB VRAM (video memory).

**CPU**

The CPU performance might be the limitation depending on graphics card and graphics setting, mostly for online play which is more CPU-intensive. Good CPU performance helps ensure high framerate and more importantly smoothness. For STK, single-thread performance is paramount.

* **Recommended**: Core i5-2400 single-thread performance or higher. This includes AMD Ryzen desktop CPUs, most Intel desktop CPUs since 2012 and recent mid-to-high end mobile CPUs.
* **Minimal**: Any Intel or AMD dual-cores processors. Very old models and low-clocked mobile parts may struggle, especially in online play.

**Other requirements**

* At least 1 GB of free RAM
* Disk space: 800MB

**Optional**

* (If you prefer playing with a joystick) A joystick with at least 6 buttons.

{% end_liquid %}

{% start_liquid qa %}

My computer is too old to run SuperTuxKart. What should I do?

You can try your luck and run the game. STK features a fallback renderer which uses only OpenGL 2.1 / GLES 2 / DirectX 9 which should work on most devices, but it has no modern rendering pipeline.

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

{%translate "You can consult our [illustrated history of SuperTuxKart](History_of_SuperTuxKart) for more details about the game's history.","FAQ page"%}

{% endcapture %}

{% start_liquid qa %}

{{ question_history }}

{{ answer_history }}

{% end_liquid %}

{% start_liquid qa %}

Is SuperTuxKart a Mario Kart clone?

No! The Mario Kart series is the most known of kart racers games, but there have been many others.

Some very old versions of STK tried to mimic Mario Kart, but this hasn't been the case for a very long time. We sometimes look at it for inspiration, as we do with other kart games, but this is it.

Not only are there many significant differences in gameplay, but SuperTuxKart is evolving its own way and we are not trying to make it any closer to Mario Kart.

{% end_liquid %}

{% start_liquid qa %}

I want to help! What can I do?

First, have a look at the [Get involved](Community) page. It should contain all the information you need to start with coding, modeling, designing or whatever you'd like to do.

Before you start, you should contact the current developers and artists through the [forum](https://forum.supertuxkart.net/) or the [IRC](https://web.libera.chat/?channels=#supertuxkart) and tell us what you want to achieve. This will greatly improve the chance that you contribution will be accepted.

{% end_liquid %}

{% start_liquid main_title %}

Gameplay Questions

{% end_liquid %}

{% start_liquid qa %}

The AI (computer kart) shot backwards—how can I do this?

Most items (bowling ball, cake, plunger) can be used backwards. Just fire them while looking backwards.

{% end_liquid %}

{% start_liquid qa %}

Is the AI cheating?

No!

The speed limit and speed boosts are exactly the same for all the karts, AI or human. In lower difficulties, the AI might even slow down on purpose. The powerup probabilities when grabbing a gift box are also identical. There are minor differences in how quickly the karts can steer from a direction to another, but it gives no meaningful advantage to the AI and isn't meant to.

The AI can sometimes have superhuman reflexes to use powerups, but if a human presses the right button at the right time, he can achieve the same result. There is also a lot of room to outsmart it.

If you struggle to beat the AI, focus on improving your driving to crash as little as possible while going fast, and learn to use skidding. On higher difficulties, skidding is essential to beat the AI.

{% end_liquid %}

{% start_liquid qa %}

Can I play STK on the internet?

Yes! After creating an online STK account inside the game and connecting with it, select the "Online" button in the main menu then "Global networking" to access networked gameplay through the internet. You can host your own server for others to play on, or join community-hosted servers. For the best experience, a stable connection and a low ping to the server are important.

{% end_liquid %}

{% start_liquid qa %}

Why don't some keyboard keys work when pressed simultaneously?

When playing with a keyboard, you may experience issues when pressing multiple keys simultaneously, for instance trying to use nitro while accelerating and turning. In such situations, some keypress may not register. This is however not a bug of SuperTuxKart, but a phyiscal limitation of your keyboard, most keyboards can only handle so many keys pressed at the same time (for more detailed information, please check [here](https://www.sjbaker.org/wiki/index.php?title=Keyboards_Are_Evil)). The solution is to use a gaming input device (gamepad, or gaming keyboard), or tweak the keys configuration to find keys that your keyboard will be able to register simultaneously.

{% end_liquid %}

{% start_liquid qa %}

I've got weird input issues

This could include the kart always going left, or randomly braking, or other similar weirdness where the game seems to believe you pressed a key but you did not. If this happens, try going in the options menu, on the input screen, and check if you have gamepads there. Try to disable all gamepads except the device you are using. Sometimes, bogus input can be received from gamepads or other similar devices that the OS sees as a gamepad.

{% end_liquid %}

{% start_liquid qa %}

I suddenly got a big red circle on my screen, what's that?

If there's a penguin in the middle of the circle, someone's shot a plunger at your face. You can do that to others by shooting the plunger backwards (see the FAQ entry about throwing items backwards).

{% end_liquid %}

{% start_liquid qa %}

Can I use my Wii remote with STK?

Yes! See the [Wiimote](Wiimote) page for details.

{% end_liquid %}

{% start_liquid main_title %}

Technical Questions

{% end_liquid %}

{% start_liquid qa %}

I found a bug, how should I contact you?

First, look at the [STK bug tracker](https://github.com/supertuxkart/stk-code/issues) and open a new issue if your problem hasn't been reported yet.

{% end_liquid %}

{% start_liquid qa %}

Where is the configuration stored?

Note: this applies to the 1.5 version, for the next major release this page will be updated.
* On **Windows**: It is in `%APPDATA%/supertuxkart/config-0.10` (you can enter that in the Explorer and it will take you there).
* On **Linux**: It is either in `$XDG_CONFIG_HOME/supertuxkart/config-0.10` (first choice), `~/.config/supertuxkart/config-0.10` (second choice) or in `~/.supertuxkart/config-0.10` (third choice).
* On **macOS**: It is in `~/Library/Application Support/supertuxkart/config-0.10`. Note that this directory may be hidden.
* On **Android**: It is in `/storage/emulated/0/Android/data/org.supertuxkart.stk/files/supertuxkart/home/supertuxkart/config-0.10`.
* With **Snap**: It is in `~/snap/supertuxkart/current/.config/supertuxkart/config-0.10`.
* With **Flatpak**: It is in `~/.var/app/net.supertuxkart.SuperTuxKart/config/supertuxkart/config-0.10`.

You can also watch the output in the terminal to see if there is a note on where the config files are stored or search for a file called "config.xml".

{% end_liquid %}

{% start_liquid qa %}

The Git version won't compile. What should I do?

This happens sometimes; The developers should be aware of that and it should be fixed soon. If [GitHub Actions](https://github.com/supertuxkart/stk-code/actions) says that the current Git version compiles, but it doesn't do so for you, then propably something is wrong with your compiler setup. (Check if you have all dependencies, re-run CMake, ...)

{% end_liquid %}

{% start_liquid qa %}

How do I unlock all tracks?

The intended in-game way is to play story mode and beat all challenges.

If however you want to unlock everything without playing story mode, you can also cheat by editing a config file. Open the folder mentioned above in question "Where does STK store the user config file". From there, open the folder "config-0.10" then open the file "players.xml". Replace all occurrences of "none" with "hard" (or "easy" or "medium", indicating the highest level at which you have solved a challenge).

{% end_liquid %}



{% start_liquid main_title %}

SuperTuxKart Evolution

{% end_liquid %}

{% start_liquid qa %}

What is SuperTuxKart Evolution?

SuperTuxKart Evolution is the name of the next major release of SuperTuxKart.

A continuation of SuperTuxKart's long history, it will at the same time bring considerable change ; with a vast amount of new content and a strong focus on higher and more consistent quality.

It aims to offer players the experience of a new game within the same game series.

{% end_liquid %}

{% start_liquid qa %}

Who is behind SuperTuxKart Evolution?

Our core team is led by Alayan, co-leader of SuperTuxKart since 2019, and Sven, lead artist of the project after Samuncle's departure.

See our [Team](Team) page for more information about the people behind SuperTuxKart Evolution!

{% end_liquid %}

{% start_liquid qa %}

Do you have a roadmap?

We already know what our main goals are for the SuperTuxKart Evolution release and have an informal internal roadmap. A general overview of our roadmap is publicly [available on our blog](https://blog.supertuxkart.net/2025/09/supertuxkart-evolution-roadmap.html).

{% end_liquid %}

{% start_liquid qa %}

Why was the STK Evolution project started?

STK Evolution started as a project foremost due to the desire to offer a fresh experience to STK players. To offer refined and renewed gameplay, to add and revise tracks, and more, means finally moving on from the gameplay compatibility that has characterized releases since 1.0. This new name symbolizes this major step.

{% end_liquid %}

{% start_liquid qa %}

Is this project really going to move forward after years of stagnation by STK?

The past contributions of our lead artist, Sven, and of our lead developer, Alayan, prove that our team has the capability to undertake this challenge.

But in the end, we don't ask people to simply trust our word, but to judge this project on its own merits. We will strive to provide regular updates on the game's development and in the end it will be by playing our next major release that skeptics will be convinced that this project is where SuperTuxKart's story lives on.

{% end_liquid %}

{% start_liquid qa %}

Are there any plans to bring in new talent or collaborators?

SuperTuxKart, as a free and open source game, welcomes new contributors that can bring their passion or their expertise to improve things within the game. All of the current team members started as contributors that wanted to make the game better, receiving more responsibilities as we proved our dedication. Paying attention to all feedback is important for us, but we also believe that those who actively contribute should have a greater involvement in the project's direction.

{% end_liquid %}

{% start_liquid qa %}

How does this impact the game's overall direction and vision for its future development?

The development of a new major version with new tracks and gameplay changes will be our main focus. We aim to provide a smooth and refreshed experience, with higher and more consistent quality.

At the same time, we also want to improve communication between the playerbase and the development team.

Finally, to help support a higher pace of development, we hope to revitalize external contributions, and aim to bring the next major version on Steam and to gather donations to be able to dedicate more time on the game.

{% end_liquid %}

{% start_liquid qa %}

You mentioned donations, what is the project's stance on advertising?

Part of what has motivated us to become FOSS contributors is our belief that software should respect and serve its users. This means respecting privacy, but also being respectful of the users time and fun. Consistent with this core value, we will never track users or send ads/ID tokens. We will never add pop-up advertisements, video ads, or any kind of sponsored content interrupting or distracting from gameplay. However, we may name sponsors in the credits or include environmental advertising elements (like billboards near race tracks) to enhance realism and atmosphere provided they fit the game's aesthetic.

{% end_liquid %}

{% start_liquid main_title %}

STK Team

{% end_liquid %}

{% start_liquid qa %}

Can you explain briefly what has happened in the SuperTuxKart team?

Failed efforts at communicating had fostered misunderstandings, harmed trust, and prevented proper cooperation to release 1.5. This led us to conclude that a continuation of the statu quo was hampering progress for the project, and that it was not possible to keep working with Benau, who was co-leader of STK since 2019.

Thankfully, over the days that followed the STK Evolution announcement, renewed efforts have allowed both sides to better understand each other, and Benau has agreed to help transfer the project resources he had sole control over, in order to allow their continued use for SuperTuxKart and to facilitate the project's progress. The 1.5 release will be made jointly.

The STK Evolution team salutes this cool-headed choice, putting the good of the project first. We will strive to honor the trust put into us.

{% end_liquid %}

{% start_liquid qa %}

What steps have been taken to ensure the project's resilience?

Our aim is to ensure that at least 2, and preferably 3, trusted persons have access to each important resource needed to continue developing or promoting the project, to ensure redudancy in case someone becomes unable to assume his role. We are nonetheless exploring options to implement further safeguards so that disagreements within the team don't threaten the project's continuity.

{% end_liquid %}