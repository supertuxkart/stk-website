---
title: Making challenges
toc: true
---
This page documents how challenge files are written, and how to ensure they are showing up in the game.

## Create and place the file

The easiest way is to copy an already existing .challenge file and edit to your liking. The files are in various track folders, and you need to place your own alongside in a not-empty track folder in order for STK to find it. See [this page](Installing_Add-Ons) if you don't know where the track folders are. If placed and formatted correctly, you should see your challenge alongside with the rest in 'Challenges' entry in the main menu. Should you not find it, start the game with a terminal and see if any warnings are printed.

The game auto-creates an entry for your challenge in the **players.xml** file upon game runtime. To find this file, refer to question "Where is the configuration stored?" in [the FAQ](FAQ). So if you created a challenge with `id="mychallenge"`, there should be a line `<mychallenge solved="false" />` in **players.xml**. Simply change to *false* again if you need to test unlocking later, e.g. if you change *unlock-track* after fulfilling the challenge. Do keep in mind that if you edit a challenge SuperTuxKart might stop working and you will have to restore the old challenge file.

## List of XML attributes

{% wikitable %}

| Name         | Description                                                                                                            |
|--------------|------------------------------------------------------------------------------------------------------------------------|
| id           | Unique identification which STK knows the challenge by. This can be referenced for depend-on in other challenges.      |
| name         | Short descriptive name for the challenge. Shows up over the main description.                                          |
| description  | Full description of the challenge.                                                                                     |
| unlock-track | Track which the challenge unlocks if solved. Currently a requirement to fill in, if no other unlock- property is used. |
| unlock-gp    | Grand Prix which the challenge unlocks if solved.                                                                      |
| unlock-mode  | Game mode which the challenge unlocks if solved. For example, *FOLLOW_LEADER*.                                         |
| depend-on    | Challenge id(s) which the challenge depends on in order to be shown. This attribute is not required.                   |
| major        | Major game mode type. Currently, possible major modes are *any*, *grandprix* and *single*.                             |
| minor        | Minor game mode type. Currently, possible minor modes are *followtheleader*, *timetrial* and *quickrace*.              |
| track        | Track where challenge takes place.                                                                                     |
| difficulty   | Difficulty mode for race. For example, *medium*.                                                                       |
| karts        | Number of karts.                                                                                                       |
| laps         | Number of laps.                                                                                                        |
| position     | Required rank.                                                                                                         |
| energy       | Number of energy/nitro points to collect. This attribute is not required.                                              |
| time         | Maximum amount of time in seconds.                                                                                     |
