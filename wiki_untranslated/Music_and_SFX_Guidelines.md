---
title: Music and SFX Guidelines
display_title: true
---
**All audio in SuperTuxKart should be in Ogg Vorbis format (.ogg).**

## Music

Stylistically, music in SuperTuxKart should be cartoony and bouncy. While the game does have a positive and light-hearted mood, try to avoid making music that is too neutral and gentle - there is still space for a few intense or aggressive moments, as long as the cartoony vibe is maintained. For the most part, focus on melody and harmonic progression, rather than making music that is purely rhythm-based or is too ambient.

A good length is usually from 60 to 90 seconds, and music should loop smoothly. Music can either loop back to the beginning, or back to a point specified in its .music file (please see below). SuperTuxKart also supports playing different music files during the final laps of races. A 'final lap' variation of a track's music is just a faster version of its normal music.

The author's name (or authors' names) should be embedded in the .ogg file's metadata. If you make a significant modification to the file that you want to be recognised for, you can append your name, or add it to the comments field in the metadata. Other metadata, such as the song's name or the year, is optional.

### .music Files

.music files tell SuperTuxKart how to play the music. These files must be placed in the same directory as the .ogg file. Here is an example of the contents of a .music file:

{%popup_code
xml
<?xml version="1.0"?>
<music title = "Sky Vibe - High Frequency"
     composer = "Speedsound"
         gain = "0.5"
         file = "SkyVibe-HighFrequency.ogg"/>%}

* **title** and **composer** are shown in-game when the race begins, if the music is to be played during a race.
* **gain** controls the volume of the music. "1" is original volume, "0.5" is half volume, etc.
* **file** is the name of the .ogg file containing the actual music.

Other optional parameters:

* **loop-start** tells the game where to return to in the audio file once the end is reached. It is measured in seconds, but can include decimals, making more accurate increments such as milliseconds possible. The game loops music from the start if this field is absent.
* **loop-end** tells the game when to loop in the audio file. It is measured the same as with loop-start. The game plays music in its entirety if this field is absent.
* **fast** controls whether the music has a final lap variation or not, used during races. If fast = "true", the game either reads another .ogg file that contains the sped-up music (specified in the next field), or if this file is not found, it attempts to speed up the music itself by increasing playback speed (unfortunately, this does not sound ideal). If fast = "false", the music will not change for the final lap.
* **fast-filename** is the name of the sped-up .ogg file if fast = true.
* **fast-loop-start** is the same as loop-start, but for the final lap music.
* **fast-loop-end** is the same as loop-end, but for the final lap music.

At startup, SuperTuxKart reads all .music files from:

* ../data/music
* ../data/tracks/(track name)
* All directories specified in the SUPERTUXKART_MUSIC_PATH environment variable, which is a ":" separated list. For example: SUPERTUXKART_MUSIC_PATH=/home/user1/ogg:/usr/share/ogg (For Windows users, using drive letters works as expected, e.g. c:/myoggs:d:/moreoggs)

If you want to hear your music in-game during a race, you need to modify the track.xml file of the track you want to play. These can be found in ../data/tracks/(track name). Find the 'music' field and fill it in with the name of the new .music file. Then you can either add the new .ogg and .music files into ../data/music, or into the folder of the track you want to play.

## Sound Effects

The game's SFX should reflect its light-hearted and cartoony attitude. Positional sounds should be mixed down to mono.
