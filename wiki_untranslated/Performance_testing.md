---
title: 'Performance Testing'
toc: true
---

## {%translate "When to measure performance?"%}

{%translate "There are a few situations that warrant measuring the game’s performance:"%}
- {%translate "Trying to optimize your settings to get the best balance of visual quality and smoothness for your taste."%}
- {%translate "Designing a track and [ensuring performance is good](Making_Tracks:_Optimization). Even if it's acceptable on your machine, think of players that might have weaker hardware."%}
- {%translate "Testing the effect of code changes that are supposed to improve performance or that carry a significant computational load that may degrade performance."%}
- {%translate "Or just [comparing your hardware’s performance with other users](https://forum.supertuxkart.net/thread-43.html)."%}


## {%translate "Using the built-in FPS counter"%}

{%translate "The built-in FPS counter’s main advantage is how easy it is to activate it : just go in the UI options and toggle the relevant checkbox."%}

{%translate "A purple bar then shows up at the top of your screen. It contains three FPS values : minimum FPS, current FPS, maximum FPS. It also contains a few other informations relevant for track creator such as the polycount."%}

{% single_gallery heights=500px
/assets/wiki/PerfTest_FPS_toolbar.jpg
%}

{%translate "However, this method suffers from several limitations: it is rater inaccurate, the current FPS value is a poor indicator as its doesn’t capture the effect of short spikes, and the values change between tests as the driving is different each time."%}

{%translate "This makes it impossible to reliably assess the effect of small performance changes (<15%) or the significance of small stutters, which play a major role in perceived smoothness."%}


## {%translate "Using the built-in benchmark"%}

{%translate "The built-in performance test available starting with SuperTuxKart 1.5 is a good solution to those issues."%}

{%translate "**Because it uses a replay, it is highly repeatable and even small differences of a few percent can be identified.** The built-in replay uses the most demanding standard track, making it particularly useful for the optimization of graphics settings and the test of hardware performance."%}

{%translate "Note that your camera settings can also slightly influence the results as they change how much of the track the game has to render."%}

{% single_gallery heights=500px
/assets/wiki/PerfTest_benchmark_results.jpg
%}

{%translate "Furthermore, the metrics displayed at the end of the test give their proper importance to short spikes in frame duration that degrade player experience. This is explained in more detail in [the blog post presenting the benchmark tool](https://blog.supertuxkart.net/2024/07/why-average-fps-and-1-low-fps-are.html)."%}

{%translate "To use it, simply go to the ‘Graphics’ options menu and click on the ‘Performance test of the current settings’ button."%}

{%translate "**Online multiplayer is noticeably more CPU-intensive than single player, so if you want to play online, you may want to include some extra margin.**"%}


## {%translate "Adding a custom benchmark"%}

{%translate "Finally, the last method is to use a custom replay with the built-in performance test tool. This allows to test any track of your choice."%}

{%translate "This is especially useful for track creators, who obviously need to test their own track and not one already present in the game. **If you follow [the track optimization guide](Making_Tracks:_Optimization), this is a great way to measure the effects of your changes.**"%}

{%translate "The first step is to record a replay. Select time-trial mode, and after having selected your track simply check the appropriate checkbox to record your race."%}

{% capture replay_location %}

{%translate "Depending on what system you are using, replay files can be found in one of the following folders:"%}

{%translate "On Windows:"%}

* `%APPDATA%\supertuxkart\replay`

{%translate "On Linux:"%}

* `~/.local/share/supertuxkart/replay`

{%translate "On Mac OS X:"%}

* `~/Library/Application Support/SuperTuxKart/Replay`
{% endcapture %}

{%popup_info
{{ replay_location }}
%}

{%translate "Once you have your replay, the next step is to tell the game to use it."%}

{%translate "With SuperTuxKart 1.5, the only way is to replace the contents of ‘benchmark_black_forest.replay’ located in the game’s ‘data/replay’ folder with the contents of your replay file, preferably after backing up the original file."%}

{%translate "With the latest development version, and, when they release, with SuperTuxKart 1.5.1 and SuperTuxKart Evolution, the game can detect multiple benchmark files."%}

{%translate "First add your file to the ‘data/replay’ folder, then open ‘stk_config.xml’ located in the ‘data’ folder and look for ‘benchmark’. Add another ‘file’ entry following the model of the one already present, with the name of your replay."%}

{% single_gallery
/assets/wiki/PerfTest_custom_replay.png
%}

{%translate "Once this is done, simply start the game and go to the ‘Graphics’ option menu. Below the button to start the test, you will find a new UI element with which you can select which of the available benchmark files you want to use."%}

{%translate "From this point on, everything is the same as for the standard built-in benchmark."%}

{%translate "The limitation of this method is that it relies on a replay, so it is currently not possible to test battle arenas and soccer fields without extra tricks."%}