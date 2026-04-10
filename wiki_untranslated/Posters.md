---
title: Posters
---
{%translate "On this page you will find SuperTuxKart's official posters.","Posters page"%}

{%translate "You can enlarge them by clicking on the picture, and you can download them by clicking the 'Download' button in the caption.","Posters page"%}

{% capture poster_archive_title %}

{%translate "Archived posters","Posters page - section title"%}

{% endcapture %}

{% start_liquid main_title %}

{{ poster_archive_title }}

{% end_liquid %}

{% capture poster_caption_093 %}

0.9.3 - <a href="/assets/wiki/OfficialPoster_093.jpg" download="SuperTuxKart 0.9.3 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_greenlit %}

Steam Greenlight - <a href="/assets/wiki/OfficialPoster_greenlit.jpg" download="SuperTuxKart Steam Greenlight poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_092 %}

0.9.2 - <a href="/assets/wiki/OfficialPoster_092.jpg" download="SuperTuxKart 0.9.2 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_091 %}

0.9.1 - <a href="/assets/wiki/OfficialPoster_091.jpg" download="SuperTuxKart 0.9.1 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_090 %}

0.9 - <a href="/assets/wiki/OfficialPoster_090.jpg" download="SuperTuxKart 0.9 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_081 %}

0.8.1 ({%translate "Credit: Mariam Lamrani","Posters page - a credit for one of the posters"%}) - <a href="/assets/wiki/OfficialPoster_081.jpg" download="SuperTuxKart 0.8.1 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% capture poster_caption_072 %}

0.7.2 - <a href="/assets/wiki/OfficialPoster_072.jpg" download="SuperTuxKart 0.7.2 poster.jpg">{%translate "Download","Posters page"%}</a>

{% endcapture %}

{% gallery widths=48%
/assets/wiki/OfficialPoster_093.jpg,{{ poster_caption_093 }},,The official poster for SuperTuxKart 0.9.3 with Tux in his kart in a spooky Halloween-themed area with the green Android robot popping his head in a corner to celebrate SuperTuxKart's availability on Android
/assets/wiki/OfficialPoster_greenlit.jpg,{{ poster_caption_greenlit }},,The official poster for the Steam greenlight success with Tux as well as Sara and others on a scene in front of a crowd of penguins
/assets/wiki/OfficialPoster_092.jpg,{{ poster_caption_092 }},,The official poster for SuperTuxKart 0.9.2 Copa Antarctica with a stylized Tux under a stylized golden cup
/assets/wiki/OfficialPoster_091.jpg,{{ poster_caption_091 }},,The official poster for SuperTuxKart 0.9.1 showing Tux in his kart with Adiumy as well as GNU and Beastie behind in a street in Candela City at night with a lightened up tower in the background 
/assets/wiki/OfficialPoster_090.jpg,{{ poster_caption_090 }},,The official poster for SuperTuxKart 0.9 showing Sara surrounded by plumes in front of a mesoamerican temple with Tux in his kart wearing a crown of plumes as well as other STK characters
/assets/wiki/OfficialPoster_081.jpg,{{ poster_caption_081 }},,The official poster for SuperTuxKart 0.8.1 showing the various characters present in the game playing on a sunny beach
/assets/wiki/OfficialPoster_072.jpg,{{ poster_caption_072 }},,The official poster for SuperTuxKart 0.7.2 in the style of an old-school PC game box with GNU in the center as well as Tux on the right and Adiumy on the left
%}
