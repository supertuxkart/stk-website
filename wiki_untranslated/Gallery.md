---
title: Gallery
---

{% capture screenshot_title -%}
{%translate "Screenshots"%}
{%- endcapture -%}

{% capture trailer_text -%}
{%translate "Trailer"%}
{%- endcapture -%}

{% capture gameplay_text -%}
{%translate "Gameplay footage"%}
{%- endcapture -%}

{% capture video_title_plural -%}
{%translate "Videos"%}
{%- endcapture -%}

{% capture evolution_title%}

{%translate "SuperTuxKart Evolution (preview)"%}

{% endcapture %}

{%main_title {{ evolution_title }}%}

{%minor_title {{ screenshot_title }}%}

{% capture freytra -%}
{%translate "Freytra Peaks"%}
{%- endcapture -%}

{% capture blackforest_evo -%}
{%translate "Black Forest (Evolution)"%}
{%- endcapture -%}

{% capture newfm -%}
{%translate "Fort Magma (Evolution)"%}
{%- endcapture -%}

{% capture shiftingsands_evo -%}
{%translate "Shifting Sands (Evolution)"%}
{%- endcapture -%}

{% capture draindash -%}
{%translate "Drainage Dash"%}
{%- endcapture -%}

{% capture alpinevalley -%}
{%translate "Alpine Valley"%}
{%- endcapture -%}

{% gallery widths=32%
/assets/gallery/STKEvolution_1.jpg,{{ freytra | strip }},,SuperTuxKart Evolution preview: A view from Freytra Peak's hamlet with a beautiful brick and wood building on the left and electric lines crossing the road farther back
/assets/gallery/STKEvolution_2.jpg,{{ blackforest_evo | strip }},,SuperTuxKart Evolution preview: A sunny view of Black Forest with a small river flowing
/assets/gallery/STKEvolution_3.jpg,{{ newfm | strip }},,SuperTuxKart Evolution preview: A hall in New Fort Magma with ominous ball chains threatening drivers
/assets/gallery/STKEvolution_4.jpg,{{ shiftingsands_evo | strip }},,SuperTuxKart Evolution preview: Dashie facing the starting line in an improved version of Shifting Sands
/assets/gallery/STKEvolution_5.jpg,{{ draindash | strip }},,SuperTuxKart Evolution preview: Konqi driving in Drainage Dash's main curve, with toxic sludge flowing from pipes in a pool in the background
/assets/gallery/STKEvolution_6.jpg,{{ alpinevalley | strip }},,SuperTuxKart Evolution preview: a peaceful mountain landscape in Alpine Valley with a waterfall and a church in the background
%}


{% capture modern_title%}

{%translate "Modern Era: 1.0 to 1.5"%}

{% endcapture %}

{% capture xr_soccer -%}
{%translate "XR-4R3N4 (soccer field)"%}
{%- endcapture -%}

{% capture bf_egg -%}
{%translate "Black Forest (egg hunt)"%}
{%- endcapture -%}

{% capture oasis_soccer -%}
{%translate "Oasis (soccer field)"%}
{%- endcapture -%}

{% capture bf_pepper -%}
{%translate "Black Forest"%}
{%- endcapture -%}

{% capture northern_adiumy -%}
{%translate "Northern Resort"%}
{%- endcapture -%}

{% capture candela_beastie -%}
{%translate "Candela City"%}
{%- endcapture -%}

{% capture labyrinth_kiki -%}
{%translate "Ancient Colosseum Labyrinth (arena)"%}
{%- endcapture -%}

{% capture alien_signal_sara -%}
{%translate "Alien Signal (arena)"%}
{%- endcapture -%}

{% capture lasdunas_soccer_gnu -%}
{%translate "Las Dunas Soccer Stadium"%}
{%- endcapture -%}

{%main_title {{ modern_title }}%}

{%minor_title {{ video_title_plural }}%}

<div style="text-align: center; max-width: 100%;">
<iframe width="100%" height="315" src="https://www.youtube.com/embed/H1Lo7PlTGBk" title="SuperTuxKart 1.5 Release Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="max-width: 640px;"></iframe>
</div>

{% gallery widths=32%
/assets/gallery/Trailer_thumb_1.3.jpg,{{ trailer_text }} (1.3),https://www.youtube.com/watch?v=ef9vYcuEDL4
/assets/gallery/Trailer_thumb_1.2.jpg,{{ trailer_text }} (1.2),https://www.youtube.com/watch?v=_kNtEKfN4Hg
/assets/gallery/Trailer_thumb_1.0.jpg,{{ trailer_text }} (1.0),https://www.youtube.com/watch?v=Lm1TFDBiIIg
%}

{%minor_title {{ screenshot_title }} (1.5)%}

{% gallery widths=32%
/assets/gallery/SuperTuxKart_1.5_1.jpg,{{ xr_soccer }},,SuperTuxKart 1.5: Emule driving towards a green ball in the new soccer field XR-4R3N4 themed after XR591
/assets/gallery/SuperTuxKart_1.5_2.jpg,{{ bf_egg }},,SuperTuxKart 1.5: Kiki next to an egg on a shaded house balcony in Black Forest with a monastery visible in the background on a hill
/assets/gallery/SuperTuxKart_1.5_3.jpg,{{ oasis_soccer }},,SuperTuxKart 1.5: Godette driving in the shallow pool of water in the middle of the new soccer field Oasis with other karts driving towards the soccer ball
%}

{%minor_title {{ screenshot_title }} (1.3)%}

{% gallery widths=32%
/assets/gallery/STK1.3_1.jpg,{{ bf_pepper }},,SuperTuxKart 1.3: The new Pepper kart driving in Black Forest heading toward a road fork
/assets/gallery/STK1.3_2.jpg,{{ northern_adiumy }},,SuperTuxKart 1.3: Adiumy driving in Northern Resort with a green aurora borealis in the background lighting up the night sky
/assets/gallery/STK1.3_3.jpg,{{ candela_beastie }},,SuperTuxKart 1.3: Beastie driving around Candela City's sharp bend with a small building advertising a gondola ride service visible on the right
/assets/gallery/STK1.3_4.jpg,{{ labyrinth_kiki }},,SuperTuxKart 1.3: Kiki maneuvering with a Capture-The-Flag flag in Ancient Colosseum Labyrinth
/assets/gallery/STK1.3_5.jpg,{{ alien_signal_sara }},,SuperTuxKart 1.3: An improved Sara kart driving in the battle arena Alien Signal set on a decrepit radiotelescope
/assets/gallery/STK1.3_6.jpg,{{ lasdunas_soccer_gnu }},,SuperTuxKart 1.3: An improved GNU kart with night lights facing the camera in Las Dunas Soccer with a big soccer ball visible behind
%}

<!-- Screenshots from old versions are in collapsible boxes -->

{% capture antarctica_title%}

{%translate "Antarctica: 0.9 to 0.9.3"%}

{% endcapture %}

{% capture antarctica_content%}

{%minor_title {{ video_title_plural }}%}

{% gallery widths=24%
/assets/gallery/Trailer_thumb_0.9.3.jpg,{{ trailer_text }} (0.9.3),https://www.youtube.com/watch?v=hcgDUT4bwls
/assets/gallery/Trailer_thumb_0.9.2.jpg,{{ trailer_text }} (0.9.2),https://www.youtube.com/watch?v=ev8Zltau4zw
/assets/gallery/Trailer_thumb_0.9.1.jpg,{{ trailer_text }} (0.9.1),https://www.youtube.com/watch?v=tKD3aWJDg3M
/assets/gallery/Trailer_thumb_0.9.jpg,{{ trailer_text }} (0.9),https://www.youtube.com/watch?v=0FEwDH7XU9Q
%}

{%minor_title {{ screenshot_title }} (0.9.3)%}

{% gallery widths=32%
/assets/wiki/STK0.9.3_1.jpg,,,SuperTuxKart 0.9.3: Tux facing Cinéma le Quartz in Candela City
/assets/wiki/STK0.9.3_2.jpg,,,SuperTuxKart 0.9.3: Suzanne heading towards Cornfield Crossing's barn
/assets/wiki/STK0.9.3_3.jpg,,,SuperTuxKart 0.9.3: Konqi driving in Antediluvian Abysses with swimming fishes visible behind the glass walls
%}


{%minor_title {{ screenshot_title }} (0.9.2)%}

{% gallery widths=32%
/assets/wiki/STK0.9.2_1.jpg
/assets/wiki/STK0.9.2_2.jpg
/assets/wiki/STK0.9.2_3.jpg
/assets/wiki/STK0.9.2_4.jpg
/assets/wiki/STK0.9.2_5.jpg
/assets/wiki/STK0.9.2_6.jpg
%}

{%minor_title {{ screenshot_title }} (0.9.1)%}

{% gallery widths=32%
/assets/wiki/STK0.9.1_1.jpg
/assets/wiki/STK0.9.1_2.jpg
/assets/wiki/STK0.9.1_3.jpg
/assets/wiki/STK0.9.1_4.jpg
/assets/wiki/STK0.9.1_5.jpg
/assets/wiki/STK0.9.1_6.jpg
/assets/wiki/STK0.9.1_7.jpg
%}

{%minor_title {{ screenshot_title }} (0.9)%}

{% gallery widths=32%
/assets/wiki/STK0.9_1.jpg
/assets/wiki/STK0.9_2.jpg
/assets/wiki/STK0.9_3.jpg
/assets/wiki/STK0.9_4.jpg
/assets/wiki/STK0.9_5.jpg
/assets/wiki/STK0.9_6.jpg
/assets/wiki/STK0.9_7.jpg
/assets/wiki/STK0.9_8.jpg
%}

{% endcapture %}



{% capture classic_era_title%}

{%translate "Classic Era: 0.7 to 0.8.1"%}

{% endcapture %}

{% capture classic_era_content%}

{%minor_title {{ video_title_plural }}%}

{% capture trailer_caption_1.3 -%}
{%translate "1.3 Trailer"%}
{%- endcapture -%}

{% gallery widths=32%
/assets/gallery/Trailer_thumb_0.8.1.jpg,{{ trailer_text }} (0.8.1),https://www.youtube.com/watch?v=WutAN4i98_o
/assets/gallery/Trailer_thumb_0.8b.jpg,{{ trailer_text }} (0.8),https://www.youtube.com/watch?v=wwSXCrNjTm4
/assets/gallery/Gameplay_thumb_0.7b.jpg,{{ gameplay_text }} (0.7),https://www.youtube.com/watch?v=_D5D2AZaq5o
%}

{%minor_title {{ screenshot_title }} (0.8.1)%}

{% gallery widths=24%
/assets/wiki/STK0.8.1_1.jpg
/assets/wiki/STK0.8.1_2.jpg
/assets/wiki/STK0.8.1_3.jpg
/assets/wiki/STK0.8.1_4.jpg
/assets/wiki/STK0.8.1_5.jpg
/assets/wiki/STK0.8.1_6.jpg
/assets/wiki/STK0.8.1_7.jpg
/assets/wiki/STK0.8.1_8.jpg
%}

{%minor_title {{ screenshot_title }} (0.8)%}

{% gallery widths=32%
/assets/wiki/STK0.8_1.jpg
/assets/wiki/STK0.8_2.jpg
/assets/wiki/STK0.8_3.jpg
/assets/wiki/STK0.8_4.jpg
/assets/wiki/STK0.8_5.jpg
/assets/wiki/STK0.8_6.jpg
%}

{%minor_title {{ screenshot_title }} (0.7.2)%}

{% gallery widths=40%
/assets/wiki/STK0.7.2_1.jpg
/assets/wiki/STK0.7.2_2.jpg
%}

{%minor_title {{ screenshot_title }} (0.7)%}

{% gallery widths=32%
/assets/wiki/STK0.7_1.jpg
/assets/wiki/STK0.7_2.jpg
/assets/wiki/STK0.7_3.jpg
/assets/wiki/STK0.7_4.jpg
/assets/wiki/STK0.7_5.jpg
/assets/wiki/STK0.7_6.jpg
%}

{% endcapture %}

{% capture rising_title%}

{%translate "Rising Recognition: 0.5 to 0.6.2"%}

{% endcapture %}

{% capture rising_content %}

{%minor_title {{ screenshot_title }} (0.6)%}

{% single_gallery widths=24%
/assets/wiki/STK0.6_1.jpg
/assets/wiki/STK0.6_2.jpg
/assets/wiki/STK0.6_3.jpg
/assets/wiki/STK0.6_4.jpg
/assets/wiki/STK0.6_5.jpg
/assets/wiki/STK0.6_6.jpg
/assets/wiki/STK0.6_7.jpg
/assets/wiki/STK0.6_8.jpg
/assets/wiki/STK0.6_9.jpg
/assets/wiki/STK0.6_10.jpg
/assets/wiki/STK0.6_11.jpg
%}

{%minor_title {{ screenshot_title }} (0.5)%}

{% single_gallery widths=24%
/assets/wiki/STK0.5_1.jpg
/assets/wiki/STK0.5_2.jpg
/assets/wiki/STK0.5_3.jpg
/assets/wiki/STK0.5_4.jpg
/assets/wiki/STK0.5_5.jpg
/assets/wiki/STK0.5_6.jpg
/assets/wiki/STK0.5_7.jpg
%}

{% endcapture %}

{% capture early_days_title %}

{%translate "Early days: 0.0.0 to 0.4"%}

{% endcapture %}

{% capture early_days_content %}

{%minor_title {{ screenshot_title }} (0.4)%}

{% single_gallery widths=40%
/assets/wiki/STK0.4_1.jpg
/assets/wiki/STK0.4_2.jpg
%}

{%minor_title  {{ screenshot_title }} (0.3 Halloween Edition)%}

{% single_gallery widths=40%
/assets/wiki/STK0.3h_1.jpg
/assets/wiki/STK0.3h_2.jpg
%}

{%minor_title {{ screenshot_title }} (0.3)%}

{% single_gallery widths=40%
/assets/wiki/STK0.3_1.jpg
/assets/wiki/STK0.3_2.jpg
%}

{%minor_title {{ screenshot_title }} (0.2)%}

{% single_gallery widths=40%
/assets/wiki/STK0.2_1.jpg
/assets/wiki/STK0.2_2.jpg
%}

{%minor_title {{ screenshot_title }} (0.0.0)%}

{% single_gallery widths=40%
/assets/wiki/STK0.0.0_1.jpg
/assets/wiki/STK0.0.0_2.jpg
%}

{% endcapture %}

{% start_liquid ubox %}

{{ antarctica_title }}

{{ antarctica_content }}

{% end_liquid %}

{% start_liquid ubox %}

{{ classic_era_title }}

{{ classic_era_content }}

{% end_liquid %}

{% start_liquid ubox %}

{{ rising_title }}

{{ rising_content }}

{% end_liquid %}

{% start_liquid ubox %}

{{ early_days_title }}

{{ early_days_content }}

{% end_liquid %}