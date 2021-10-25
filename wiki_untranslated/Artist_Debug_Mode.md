---
title: Artist Debug Mode
toc: true
---
SuperTuxKart includes a hidden "Artist Debug Mode" with a variety of features to help artists solve problems with their tracks more easily. Artist Debug Mode includes special rendering views and other features both for artists and developers.

Running SuperTuxKart from the command line can also provide useful insight in debugging a track in the terminal output.

## Enabling Artist Debug Mode

When STK is closed, open the STK config file. (See the [FAQ](FAQ) question "Where is the configuration stored?")

Locate the line that reads

{%popup_code
xml
<!-- Whether to enable track debugging features -->
<artist_debug_mode value="false" />%}

and change it to

{%popup_code
xml
<!-- Whether to enable track debugging features -->
<artist_debug_mode value="true" />%}

## Features

{%popup_info Many of the tools listed below use keyboard bindings. Of course you will need to make sure your keyboard configuration does not assign these keys to something else if you wish to be able to use them. Other features (as noted) use the debug menu, which is available on any screen by right-clicking.%}

### Track Layout Debugging

* Flying: karts may be instantly turned into flying objects. This is quite useful to take a closer look at meshes that aren't too visible from the road, or to skip large portions of a track to go straight to the area you're interested in.
    * I: fly up
    * K: fly down
* If there is no ground under the area where karts start, normally STK will print an error message on the terminal and abort; in debug mode, however, the kart will just hover so you can see what the problem is.
* First person camera (available in debug menu): Fly around the map with WASD and rotate the camera with Q and E. Use a mouse to control your direction. There's also a smooth version which dampens your movements, which can be adjusted in the config file of SuperTuxKart.
* No Ready-Set-Go: To speed up testing your track, in Artist Debug Mode, when you play alone against no opponent, the ready/set/go messages are skipped very quickly.

### Kart/AI Debugging

* Debug checklines: Launch SuperTuxKart from the command line with **`--check-debug`**, and you will visually see where checklines are; active checklines will appear as red, inactive ones as white; and information about which kart crosses which checkline will be printed on the terminal.
* **`--track-debug`** will enable you to see where drivelines are.
* It is possible to set 0 laps in the race setup screen. This is useful for testing kart animations.

### Graphics Debugging

* Reload Textures (in debug menu under **Graphics**): This allows you to reload textures on-the-fly, including gloss, alpha, and normal maps, making it much easier to see how a gloss map will look in-game.
* Frames Per Second (in debug menu under **FPS**): Click "Toggle FPS" to show frames per second, polycount, etc. in-game.
* Adjust Lights/Adjust values (in debug menu under **Lighting**): You can adjust the values for red, green, blue, energy and radius of the light nearest to the kart (nitro emitters and other invisible lights are skipped) and see the effect immediately. This also applies to the sun (if no other light is closer) to easily find the right color for your sun.

### Physics Debugging

* Physics debug (in debug menu under **Graphics**): This shows the edges and normals of some meshes.
* Normals view (in debug menu under **Graphics**): This shows all normals of all meshes except animated ones. However, it hides all textures.

### Camera Effects

* Alternative camera views (available in debug menu, under **GUI**)
    * Top view
    * Behind wheel view (more like below and behind kart view)
    * Behind kart view
    * Side of kart view
* Toggle GUI (available in debug menu, under **GUI**): Hide the racing GUI, for screenshots, etc.
* Hide karts (available in debug menu, under **GUI**) (Note: **not** a toggle; you can use **Reset debug views** in **Graphics** menu to reset.)
* Change camera target (available in debug menu under **Set camera target**)

### Items & Attachments

You can give yourself limitless items through the **Items** submenu. The **Attachments** submenu provides options for things like parachutes and anchors (called anvils in-game).

### Cutscenes

Artist Debug Mode also allows you to start cutscenes for testing. In the debug menu, click on **Run cutscene** and type the name of the folder containing the cutscene (e.g. "introcutscene").

### In-game Screen-recorder

SuperTuxKart 0.9.3 and later features a built-in recorder that can save MJPEG, VP8, VP9, or H.264 video combined with Vorbis audio. Using this feature requires that SuperTuxKart was compiled with support for libopenglrecorder, so if it is unavailable when using your Linux distribution's package, please download the packages from our website which include this functionality. Additionally, H.264 video recording requires that libopenglrecorder be compiled with OpenH264 support, which may also be disabled by your Linux distribution due to patent concerns (though thanks to Cisco, the author of OpenH264, this should not be a problem.) VP8 and VP9 video recording require libvpx to be installed and enabled at compile-time for libopenglrecorder.

When SuperTuxKart is compiled properly, recording will work out-of-the-box. In the **Recording** section of the debug menu, click on '''Start recording''' to begin recording and '''Stop recording''' when you are done. When you stop the recorder, a message will appear telling you where the file has been saved. Note that depending on the length of the video you recorded, encoding may take some time.

{%popup_info You can also use the keyboard shortcut Ctrl+PrintScreen to start and stop recording.%}

By default, SuperTuxKart will encode in VP8 WebM. However, if libvpx is unavailable, it will automatically fall back to MJPEG. Both of these formats can be played by a media player like [VLC](https://videolan.org) or converted if you like to some other format.

#### Recorder Configuration

{%popup_info Note that macOS support for the recorder is currently unavailable.%}

Though the default recorder settings should work fine for most purposes, it is possible to tweak the configuration to get higher quality recordings. First, consult the [FAQ](FAQ) for instructions on finding your configuration file, and when you've opened it, search for the Recording section. The main options you might want to modify are explained here:

* **`limit_game_fps`**: This controls whether to slow the graphics rendering down in order to meet the frames per second specified for recording.
* **`video_format`**: This controls which encoder to use for video. 0 is VP8 (default), 1 is VP9, 2 is MJPEG, 3 is H.264. MJPEG will provide the best quality recording. VP9 is **not** recommended because of the extremely long encoding time (e.g. over 45 minutes to encode less than a minute of video.) Note that VP8, VP9, and H.264 are encoded from MJPEG since it is impossible to store a large amount of uncompressed video in RAM. This is essentially double-lossy encoding, so we suggest setting **`recorder_jpg_quality`** to 100.
* **`video_bitrate`**: This controls the quality of VP8 and VP9 encoding. Higher is better, but there's no point in going crazy with it. Default is 20000.
* **`recorder_jpg_quality`**: This controls what quality level to use when encoding with MJPEG. 0 is ultra-low quality, 100 is best quality (though the file size will be larger). For best-quality MJPEG encoding or for VP8/VP9/H.264 encoding, set it to 100. The default is 90.
* **`record_fps`**: Frames per second to record. Don't try to record more frames per second than your computer is able to render. The default is 30, which should work fine for most purposes.
