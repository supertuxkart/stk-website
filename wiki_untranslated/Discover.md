---
title: Discover
---
{% capture heading -%}
{%translate "Welcome to the Mascot Kingdom!","Discover page - page title"%}
{%- endcapture %}
{%main_title {{ heading }}%}

{% gallery widths=32%
/assets/gallery/STK1.3_1.jpg
/assets/gallery/STK1.3_2.jpg
/assets/gallery/STK1.3_3.jpg
%}

{%translate "Karts. Nitro. Action! SuperTuxKart is a 3D open-source arcade racer with a variety of characters, tracks, and modes to play. Our aim is to create a game that is more fun than realistic, and provide an enjoyable experience for all ages.","Discover page"%}

{%translate "In Story mode, you must face the evil Nolok, and defeat him in order to make the Mascot Kingdom safe once again! You can race by yourself against the computer, compete in several Grand Prix cups, or try to beat your fastest time in Time Trial mode. You can also race, battle or play soccer with up to eight friends on a single computer, play on a local network or play online with other players all over the world.","Discover page"%}

{% gallery widths=32%
/assets/gallery/STK1.3_4.jpg
/assets/gallery/STK1.3_5.jpg
/assets/gallery/STK1.3_6.jpg
%}

{% capture tracks -%}
{%translate "Exciting tracks","Discover page - section title"%}
{%- endcapture %}

{% capture section_tracks -%}
{%main_title {{ tracks }}%}

{%translate "**SuperTuxKart 1.5 features 21 official tracks**, as well as two gift package tracks that will become part of the base game with STK Evolution.","Discover page"%}

{%translate "SuperTuxKart's tracks offer many environments, from snowy mountains to tropical jungles, from underground tunnels to spaceships.","Discover page"%}

{%translate "There is also a wide variety in gameplay, including alternative paths and secret paths just waiting to be discovered.","Discover page"%}

{%translate "**Dozens of fun addon tracks can also be installed** within the game to keep the experience fresh.","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=360px, picture_side=left, text={{ section_tracks }}
/assets/gallery/STK0.9.3_2.jpg,,,SuperTuxKart: Suzanne heading towards Cornfield Crossing's barn
%}


{% capture characters -%}
{%translate "Endearing characters","Discover page - section title"%}
{%- endcapture %}

{% capture section_characters -%}
{%main_title {{ characters }}%}

{%translate "SuperTuxKart 1.5 offers 18 official karts, within three different kart classes.","Discover page"%}

{%translate "Many of SuperTuxKart's characters are mascots of open-source projects, including Tux the penguin. Get to know them better by visiting our [Characters page](Characters)!","Discover page"%}

{%translate "Hundreds of additional karts are also available as addons.","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=217px, picture_side=right, text={{ section_characters }}
/assets/wiki/FourCharacters.png,,Characters,Icons for four characters of SuperTuxKart: Tux; Sara; Kiki; and Konqi
%}


{% capture powerups -%}
{%translate "Varied powerups","Discover page - section title"%}
{%- endcapture %}

{% capture section_powerups -%}
{%main_title {{ powerups }}%}

{%translate "There are 9 different powerups available in SuperTuxKart 1.5, which players can collect in gift boxes.","Discover page"%}

{%translate "Players in worse positions get better powerups to help them catch up, but there is also a lot of skill involved to get the most out of the powerups you receive.","Discover page"%}

{%translate "Visit our [Powerups page](Powerups) for more details: from quick overviews to detailed explanations about how each powerup work and usage tips, it is a treasure trove of information.","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=217px, picture_side=left, text={{ section_powerups }}
/assets/wiki/FourPowerups.png,,Powerups,Icons for four powerups of SuperTuxKart: Bubblegum; Bowling Ball; Swatter; and Zipper
%}


{% capture game_modes -%}
{%translate "Many game modes","Discover page - section title"%}
{%- endcapture %}

{% capture section_game_modes -%}
{%main_title {{ game_modes }}%}

{%translate "**Racing with powerups is SuperTuxKart's core game mode**, with Story Mode offering challenges centered around racing to unlock all the game's content.","Discover page"%}

{%translate "Some additional game modes are based on racing: **Time-Trial** allows players to test their raw driving skills without powerups; Follow-the-Leader is an elimination race.","Discover page"%}

{%translate "Other game modes bring a twist to the concept of a kart game: in **Egg Hunt**, players have to explore tracks to find the hidden eggs; in **Soccer**, a team-based mode with a dedicated online community, each team tries to score more goals; while Battle mode focuses on using powerups to attack other karts.","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=320px, picture_side=right, text={{ section_game_modes }}
/assets/wiki/GameModes.jpg,,,A collage of SuperTuxKart Egg Hunt on top and SuperTuxKart Soccer at the bottom
%}

{% capture downloads -%}
{%translate "Millions of downloads","Discover page - section title"%}
{%- endcapture %}

{% capture section_downloads -%}
{%main_title {{ downloads }}%}

{%translate "SuperTuxKart has a worldwide community, with **over 6 million downloads and installations** across [Google Play](https://play.google.com/store/apps/details?id=org.supertuxkart.stk), [SourceForge](https://sourceforge.net/projects/supertuxkart/files/SuperTuxKart/stats/timeline?dates=2007-03-09%20to%202026-06-07), [GitHub](https://api.github.com/repos/supertuxkart/stk-code/releases) and [Flathub](https://flathub.org/en/apps/net.supertuxkart.SuperTuxKart). This figure doesn't include numerous installations through sources such as Linux package managers and website mirrors.","Discover page"%}

{%translate "**Every day, over 100 players create a new SuperTuxKart online account.**","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=256px, picture_side=left, text={{ section_downloads }}
/assets/wiki/globe_icon.png,,,A globe icon from SuperTuxKart's menu
%}


{% capture history -%}
{%translate "Twenty years of history","Discover page - section title"%}
{%- endcapture %}

{% capture section_history -%}
{%main_title {{ history }}%}

{%translate "Powered by the passion of its contributors, **SuperTuxKart as a project has been in development for over 20 years.**","Discover page"%}

{%translate "During this time period, SuperTuxKart has improved tremendously, with considerable changes in every aspect of the game, allowing it to remain the foremost reference for libre and open-source games.","Discover page"%}

{%translate "Check out [our illustrated history of SuperTuxKart](History_of_SuperTuxKart) to discover more.","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=320px, picture_side=right, text={{ section_history }}
assets/gallery/STK0.0.0_2.jpg,,History_of_SuperTuxKart,A screenshot showing the main menu of SuperTuxKart 0.0.0
%}


{% capture team -%}
{%translate "The team behind the game","Discover page - section title"%}
{%- endcapture %}

{% capture section_team -%}
{%main_title {{ team }}%}

{%translate "The SuperTuxKart project is currently led by **Alayan** and **Sven**. BcfWorld, Samuncle and LLS are also part of the team. For many years, the project was led by **Hiker** and **Auria**.","Discover page"%}

{%translate "Thanks to the libre and open-source nature of SuperTuxKart, hundreds of people have contributed over the years, ensuring the project always stays alive.","Discover page"%}

{%translate "You can find more information about the people behind SuperTuxKart on our [Team](Team) page!","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=240px, picture_side=left, text={{ section_team }}
/assets/images/blog_logo.png,,Team,SuperTuxKart's logo
%}


{% capture evolution -%}
{%translate "SuperTuxKart Evolution","Discover page - section title"%}
{%- endcapture %}

{% capture section_evolution -%}
{%main_title {{ evolution }}%}

{%translate "**SuperTuxKart Evolution is our project's next major release, designed as a new game within the same game series.**","Discover page"%}

{%translate "It will bring major updates to all aspects of the game, with new tracks, new karts, improved game mechanics, new powerups, improve graphical quality, and more. A [general overview](https://blog.supertuxkart.net/2025/09/supertuxkart-evolution-roadmap.html) is available on our blog.","Discover page"%}

{%translate "You can find more information about the project and how to stay informed about it in [our FAQ](FAQ#supertuxkart-evolution).","Discover page"%}
{%- endcapture %}

{% gallery mode=sidebar, widths=360px, picture_side=right, text={{ section_evolution }}
/assets/gallery/STKEvolution_1.jpg,,,SuperTuxKart Evolution preview: A view from Freytra Peak's hamlet with a beautiful brick and wood building on the left and electric lines crossing the road farther back
%}


{% capture download_cta -%}
{%translate "Start racing now!","Discover page - section title"%}
{%- endcapture %}

{%main_title {{ download_cta }}%}

**{%translate "Head to [our Download page](Download) to get the latest SuperTuxKart version for your device!","Discover page"%}**
