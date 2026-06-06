---
title: Characters
---
{% capture main_characters -%}
{%translate Main Characters%}
{%- endcapture %}
{%main_title {{ main_characters }}%}

{% capture tux -%}
{%translate "Tux","Characters page - character name"%}
{%- endcapture -%}
{%- capture tux_desc -%}
{%translate "The hero of SuperTuxKart. Tux is a brave penguin who must save his friend, Gnu, from the evil clutches of Nolok. Tux is the mascot of Linux.","Characters page - description"%}
{%- endcapture %}
{% include character_presentation name=tux type="odd" description=tux_desc icon="/assets/wiki/Character_tux_icon.png" %}

{% capture gnu -%}
{%translate "Gnu","Characters page - character name"%}
{%- endcapture -%}
{%- capture gnu_desc -%}
{%translate "Tux's wise mentor, Gnu rides a flying carpet and lives peacefully in a pagoda. When Nolok captures him, the entire kingdom will try to save him. Gnu is the mascot of the GNU Project.","Characters page - description"%}
{%- endcapture %}
{% include character_presentation name=gnu type="even" description=gnu_desc icon="/assets/wiki/Character_gnu_icon.png" %}

{% capture nolok -%}
{%translate "Nolok","Characters page - character name"%}
{%- endcapture -%}
{%- capture nolok_desc -%}
{%translate "The villain of SuperTuxKart, Nolok is always concocting some sort of malevolent plan inside his fiery lava castle.","Characters page - description"%}
{%- endcapture %}
{% include character_presentation name=nolok type="odd" description=nolok_desc icon="/assets/wiki/Character_nolok_icon.png" %}

{% capture additional_characters -%}
{%translate Additional Characters%}
{%- endcapture %}
{%main_title {{ additional_characters }}%}

<table>
<tr>
{%- capture sara -%}
{%translate "Sara","Characters page - character name"%}
{%- endcapture -%}
{%- capture sara_desc -%}
{%translate "Sara is a powerful magician, and the ruler of the Mascot Kingdom. She races using a specialised snowmobile. She is the mascot of the OpenGameArt website.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=sara type="odd" description=sara_desc icon="/assets/wiki/Character_sara_icon.png" %}

{%- capture wilber -%}
{%translate "Wilber","Characters page - character name"%}
{%- endcapture -%}
{%- capture wilber_desc -%}
{%translate "Wilber is the official cameraman who works for WTXB-TV to record kart races, which are very popular in the Mascot Kingdom. He is the mascot of GIMP.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=wilber type="even" description=wilber_desc icon="/assets/wiki/Character_wilber_icon.png" %}
</tr>
<tr>
{%- capture puffy -%}
{%translate "Puffy","Characters page - character name"%}
{%- endcapture -%}
{%- capture puffy_desc -%}
{%translate "Puffy races mainly to earn enough money to accomplish his dream: to buy a submarine. He is the mascot of the OpenBSD project.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=puffy type="odd" description=puffy_desc icon="/assets/wiki/Character_puffy_icon.png" %}

{%- capture pidgin -%}
{%translate "Pidgin","Characters page - character name"%}
{%- endcapture -%}
{%- capture pidgin_desc -%}
{%translate "Pidgin's ability to fly makes him perfect to deliver the results of the Grand Prix around the Mascot Kingdom. He is the mascot of Pidgin.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=pidgin type="even" description=pidgin_desc icon="/assets/wiki/Character_pidgin_icon.png" %}
</tr>
<tr>
{%- capture godette -%}
{%translate "Godette","Characters page - character name"%}
{%- endcapture -%}
{%- capture godette_desc -%}
{%translate "Godette is the mascot of Godot and truly a tech girl. She is never seen without her friend, GDBot, a robot she built and programmed herself. They even race together in a unique tandem kart.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=godette type="odd" description=godette_desc icon="/assets/wiki/Character_godette_icon.png" %}

{%- capture amanda -%}
{%translate "Amanda","Characters page - character name"%}
{%- endcapture -%}
{%- capture amanda_desc -%}
{%translate "Amanda was rescued by monks when they found her in a basket as a cub. She now teaches the ancient art of racing in a monastery. She is the mascot of Window Maker.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=amanda type="even" description=amanda_desc icon="/assets/wiki/Character_amanda_icon.png" %}
</tr>
<tr>
{%- capture emule -%}
{%translate "Emule","Characters page - character name"%}
{%- endcapture -%}
{%- capture emule_desc -%}
{%translate "Emule's superior knowledge of mechanical engineering allowed him to build his own kart with a turbocharged engine. He is the mascot of eMule.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=emule type="odd" description=emule_desc icon="/assets/wiki/Character_emule_icon.png" %}

{%- capture suzanne -%}
{%translate "Suzanne","Characters page - character name"%}
{%- endcapture -%}
{%- capture suzanne_desc -%}
{%translate "Racing has been Suzanne's dream since childhood. She began her racing career in the prestigious Kart Academy of Val Verde. She is the mascot of Blender.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=suzanne type="even" description=suzanne_desc icon="/assets/wiki/Character_suzanne_icon.png" %}
</tr>
<tr>
{%- capture gavroche -%}
{%translate "Gavroche","Characters page - character name"%}
{%- endcapture -%}
{%- capture gavroche_desc -%}
{%translate "Gavroche is a goblin that owns the Ravenbridge mansion. Sometimes he makes scary noises, tricking people into thinking the house is haunted. He is the mascot of MediaGoblin.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=gavroche type="odd" description=gavroche_desc icon="/assets/wiki/Character_gavroche_icon.png" %}

{%- capture hexley -%}
{%translate "Hexley","Characters page - character name"%}
{%- endcapture -%}
{%- capture hexley_desc -%}
{%translate "Hexley's ancestors started kart racing many years ago, and generation after generation, they became very good at it. He is the mascot of Darwin.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=hexley type="even" description=hexley_desc icon="/assets/wiki/Character_hexley_icon.png" %}
</tr>
<tr>
{%- capture xue -%}
{%translate "Xue","Characters page - character name"%}
{%- endcapture -%}
{%- capture xue_desc -%}
{%translate "Xue likes to stand out from the crowd, and her unusual kart reflects this. She races a special hovercraft, which is small enough to be driven by a mouse. She is the mascot of XFCE.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=xue type="odd" description=xue_desc icon="/assets/wiki/Character_xue_icon.png" %}

{%- capture konqi -%}
{%translate "Konqi","Characters page - character name"%}
{%- endcapture -%}
{%- capture konqi_desc -%}
{%translate "While Konqi's ancient ancestors were dangerous and feared, dragons today are harmless... mostly. He is the mascot of the KDE project.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=konqi type="even" description=konqi_desc icon="/assets/wiki/Character_konqi_icon.png" %}
</tr>
<tr>
{%- capture adiumy -%}
{%translate "Adiumy","Characters page - character name"%}
{%- endcapture -%}
{%- capture adiumy_desc -%}
{%translate "Adiumy started kart racing when he realized his legs are too short to be a soccer star. Although the other mascots sometimes make fun of his waddling gait, he is highly respected as one of the most talented racing drivers in the kingdom. Adiumy is the mascot of Adium.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=adiumy type="odd" description=adiumy_desc icon="/assets/wiki/Character_adiumy_icon.png" %}

{%- capture kiki -%}
{%translate "Kiki","Characters page - character name"%}
{%- endcapture -%}
{%- capture kiki_desc -%}
{%translate "A Krita user first drew Kiki for a training manual, but as soon as the manual was printed, Kiki decided to jump off the pages and race around the world on her pen-powered aeroplane. Kiki is the mascot of the Krita digital painting program.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=kiki type="even" description=kiki_desc icon="/assets/wiki/Character_kiki_icon.png" %}
</tr>
<tr>
{%- capture pepper -%}
{%translate "Pepper","Characters page - character name"%}
{%- endcapture -%}
{%- capture pepper_desc -%}
{%translate "Pepper is a little witch who loves playing with her cat Carrot. Her enthusiasm for racing ignited when her friend Kiki helped her to tune her broom with a nitro injection system and custom exhaust tips. Pepper is the main character of the Pepper & Carrot project.","Characters page - description"%}
{%- endcapture -%}
{% include character_presentation_small name=pepper type="odd" description=pepper_desc icon="/assets/wiki/Character_pepper_icon.png" %}
<td></td>
</tr>
</table>

{% capture many_more -%}
{%translate ...And many more!%}
{%- endcapture %}
{%main_title {{ many_more }}%}

{%translate "You can create your own characters, tracks, and arenas and share them with the SuperTuxKart community! You can do this by going to [online.supertuxkart.net](https://online.supertuxkart.net)."%}

{%translate If you are interested you can take a look at the [community](Community) page.%}

{% include discover_portal %}
