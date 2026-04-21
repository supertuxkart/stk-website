---
title: Projects using SuperTuxKart
toc: true
---
{%translate "Due to the libre and open source nature of SuperTuxKart, the game is used in various research project, studies or simply prototypes made by fans.","Projects page"%}

{%translate "On this page, you can discover various projects that have been done with our game.","Projects page"%}

{%translate "If you have a project using SuperTuxKart not listed here, or if you want to use the game in your own project, you can contact us.","Projects page"%}

## {%translate "Driver Development","Projects page - section title"%}

### {%translate "Tyr","Projects page - section title"%}

{%translate "SuperTuxKart was used as a target for the development of Tyr, a driver for the Mali GPUs found in ARM SoCs, porting the C code of Panthor to Rust.","Projects page"%}

{%translate "In November 2025, Tyr's ability to render SuperTuxKart races at low settings with reasonable performance for the tested SoC was showcased in Collabora's [blog post about Tyr's progress](https://www.collabora.com/news-and-blog/news-and-events/racing-karts-on-a-rust-gpu-kernel-driver.html) as well as through [a video](https://www.youtube.com/watch?v=wX9cTGenBDk) showing STK played with the new driver.","Projects page"%}

## {%translate "Technical Demonstrations","Projects page - section title"%}

### {%translate "A Mercedes as SuperTuxKart Controller","Projects page - section title"%}

{%translate "When it comes to driving a car in the real world, the big touchscreens that have become commonplace in modern cars are often distracting. And a real car is a tad expensive to use as a gaming device.","Projects page"%}

{%translate "Nonetheless, when Mercedes-Benz showcased SuperTuxKart being played with a car's controls at the 2019 Mobile World Congress, [journalists were wowed](https://www.theverge.com/2019/2/27/18243256/mario-kart-mercedes-benz-daimler-driving-game-mwc-2019).","Projects page"%}

{%translate "Many outlets referred to 'Mario Kart' in their reporting, probably because any kart game is 'Mario Kart' to some, but it's SuperTuxKart which powered this impressive demo. And perhaps this carelessness in naming could be seen as a testament to SuperTuxKart quality.","Projects page"%}

{%translate "STK's open nature further allowed Mercedes to synchronize the car's lighting, air conditioning and even seatbelt with in-game events, making the experience exceptional.","Projects page"%}

<div style="text-align: center; max-width: 100%;">
<iframe width="100%" height="315" src="https://www.youtube.com/embed/DkEe8zKMhlA" title="SuperTuxKart being played in a Mercedes CLA at MWC 2019" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="max-width: 640px;"></iframe>
</div>

### {%translate "Cybersecurity Researchers Use a Car to Play at SuperTuxKart","Projects page - section title"%}

{% capture CAN_hacking -%}
{%translate "The Controller Area Network (CAN) bus is used by modern cars to pass on data between different parts of the vehicle.","Projects page"%}

{%translate "Intercepting and injecting messages on the CAN bus can allow hacking a car, for good or bad purposes. SuperTuxKart was used at least twice by cybersecurity researchers to demonstrate the interception of messages on the CAN bus:","Projects page"%}
* {%translate "In 2024, researchers from Darmstatd University showcased [in a DEFCON presentation](https://media.defcon.org/DEF%20CON%2032/DEF%20CON%2032%20presentations/DEF%20CON%2032%20-%20Timm%20Lauser%20Jannis%20Hamborg%20-%20Redefining%20V2G%20-%20How%20to%20use%20your%20vehicle%20as%20a%20game%20controller.pdf) the use of intercepted CAN data from a Volkswagen ID.3 to play at SuperTuxKart using the car as a controller, using a separate screen placed in front of the car to display the game.","Projects page"%}
* {%translate "In 2025, security researchers from Pen Test Partners [made a similar demo](https://www.pentestpartners.com/security-blog/how-we-turned-a-real-car-into-a-mario-kart-controller-by-intercepting-can-data/) on a 2016 Renault Clio.","Projects page"%}
{%- endcapture -%}

{% capture defcon_caption -%}
{%translate "A Volkswagen ID.3 used as a SuperTuxKart gaming wheel"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=left, text={{ CAN_hacking }}
/assets/wiki/Projects_DEFCON.jpg, {{ defcon_caption }},,A picture showing in the foreground the steering wheel and dashboard of a Volkswagen ID.3 with Tux driving in SuperTuxKart's Nessie's Pond visible on a screen in front of the car
%}

### {%translate "Microsoft IllumiRoom Demo","Projects page - section title"%}

{% capture illumiroom_demo -%}
{%translate "[IllumiRoom](https://www.microsoft.com/en-us/research/project/illumiroom-peripheral-projected-illusions-for-interactive-experiences/) was a proof-of-concept system from Microsoft Research.","Projects page"%}

{%translate "It used projected visualizations around a television screen to enhance the traditional living room entertainment experience.","Projects page"%}

{%translate "Showcased in 2013, it featured SuperTuxKart 0.8 in [its demo video](https://www.youtube.com/watch?v=re1EatGRV0w&t=49s), with white circles projected on the wall representing falling snow.","Projects page"%}
{%- endcapture -%}

{% capture illumiroom_caption -%}
{%translate "Illumiroom with SuperTuxKart 0.8 on the TV"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=right, text={{ illumiroom_demo }}
/assets/wiki/Projects_Illumiroom2.jpg, {{ illumiroom_caption }},,A screenshot from Microsoft Illumiroom with Mozilla from SuperTuxKart 0.8 driving in Northern Resort and snow falling effect on the walls surrounding the TV screen
%}

### {%translate "Virtual Joystick using Kinect","Projects page - section title"%}

{%translate "The [Gesture Therapy platform](https://pdfs.semanticscholar.org/b3f1/36317f77d67d269d09c2005254fe52baae49.pdf) is a system for upper limb rehabilitation developed by a Mexican team.","Projects page"%}

{%translate "In 2013, to showcase the capabilities of the Virtual Joystick system it uses, they released a [demo video](https://www.youtube.com/watch?v=8vSfHG7BHUk) showing the acceleration and steering of a kart in SuperTuxKart 0.8 being controlled through the movements of an arm.","Projects page"%}

## {%translate "Academic Research and Teaching","Projects page - section title"%}

### {%translate "A Reduction of Imitation Learning and Structured Prediction to No-Regret Online Learning","Projects page - section title"%}

{%translate "**A landmark paper from 2010 by Stéphane Ross & al introducing the 'DAgger' method for machine learning**, improving the methods of imitation learning. This paper is [still referenced](https://arstechnica.com/ai/2025/07/how-a-big-shift-in-training-llms-led-to-a-capability-explosion/) well over a decade later. **It used SuperTuxKart as a core part of its experiments.**","Projects page"%}

{%translate "The [full paper](https://arxiv.org/pdf/1011.0686) is available as well as an [old video](https://www.youtube.com/watch?v=V00npNnWzSU) showing the simple machine learning models attempting to drive.","Projects page"%}

### {%translate "Other Machine Learning Projects","Projects page - section title"%}

{%translate "SuperTuxKart is used regularly by people learning machine learning at universities. Here are some example of such projects:","Projects page"%}
* {%translate "A 2022 project combining reinforcement learning with a transformer model to play STK races on Around the Lighthouse ([Github repository](https://github.com/vibalcam/deep-rl-supertux-race) and [full paper](https://github.com/vibalcam/deep-rl-supertux-race/blob/master/deep_rl_supertux_race_report.pdf))","Projects page"%}
* {%translate "A 2020 project as [part of a course from the University of Texas](https://github.com/jwgrogan/Super-Tux-Kart-AI) using deep learning to play STK's Icy Soccer ([GitHub repository](https://github.com/vibalcam/SuperTuxKart-hockey) and [full paper](https://adivekar.com/files/UTCS-Deep-Learning-Final-Autonomous-agents-for-realtime-multiplayer-ice-hockey.pdf)).","Projects page"%}

### {%translate "Game-Based Rehabilitation for Myoelectric Prosthesis Control","Projects page - section title"%}

{%translate "An [Austrian study from 2017](https://games.jmir.org/2017/1/e3/) evaluating the use of video games for the rehabilitation of upper-limb amputees. As, according to the study, many 'prosthesis users abandon their devices due to difficulties in prosthesis control', it explored games as a way to make the training process more enjoyable and efficient.","Projects page"%}

{%translate "SuperTuxKart is one of the three games that was used as part of the study.","Projects page"%}

### {%translate "Comparing the Effectiveness and Ergonomics of Smartphone-Based Gamepads","Projects page - section title"%}

{% capture gamepad_text -%}
{%translate "A 2024 study from the University of Regensburg setting 24 people to drive in SuperTuxKart, comparing both their objective performance and subjective experience with different smartphone-based gamepads as well as a physical gamepad.","Projects page"%}

{%translate "The detailed methodology and results highlighted in the [full paper](https://dl.acm.org/doi/fullHtml/10.1145/3670653.3670676) are very interesting.","Projects page"%}

{%translate "Many participants felt that the absence of shoulder triggers was the biggest limitation of the smartphone-based gamepads (and the STK team agrees).","Projects page"%}

{%translate "Smartphones with shoulder triggers are now available on the market. Through this study, SuperTuxKart is playing a small role in making them more common!","Projects page"%}
{%- endcapture -%}

{% capture gamepad_caption -%}
{%translate "The physical gamepad proved noticeably better, despite input latency being equalized between the tested devices.","Projects page"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=left, text= {{ gamepad_text }}
/assets/wiki/Projects_gamepad_testing2.jpg, {{ gamepad_caption }},,A figure from a scientific paper comparing SuperTuxKart round times between a physical gamepad and smartphone-based gamepads
%}

### {%translate "Service-oriented Integration of SuperTuxKart","Projects page - section title"%}

{%translate "A [paper from 2022](https://dl.acm.org/doi/abs/10.1007/978-3-031-26507-5_33) proposing the use of a REST API to make it easier for services to interface with the game, and presenting [a possible implementation](https://github.com/rpesl/stk-code).","Projects page"%}

### {%translate "Concepts for Advanced Integration of SuperTuxKart into Connected Cars","Projects page - section title"%}

{%translate "A detailed master's thesis from the University of Stuttgart published in 2021 exploring how a connected car could be used to play games. The [full text is freely available](https://elib.uni-stuttgart.de/bitstream/11682/11901/1/Master%27s%20Thesis.pdf).","Projects page"%}

### {%translate "A Study on QoE Improvement of Online Games with UDP Multipathization by SDN","Projects page - section title"%}

{%translate "A [paper from 2020](https://www.shs-conferences.org/articles/shsconf/pdf/2020/05/shsconf_etltc2020_04004.pdf) from the Nagoya Institute of Technology exploring the use of multipathization for online multiplayer. SuperTuxKart is one of the two games used in the study.","Projects page"%}

### {%translate "Teaching video game translation: first steps, systems and hands-on experience","Projects page - section title"%}

{%translate "A Brazilian paper from 2018 published in *Texto Livre Linguagem e Tecnologia*, with [the full research paper](https://www.researchgate.net/publication/326137347) freely available online. In section 3 'Why choose SuperTuxKart?', the authors explain how SuperTuxKart's open nature made it a natural fit for didactical purposes.","Projects page"%}

### {%translate "Localization in the Era of Inclusivity","Projects page - section title"%}

{%translate "A master's thesis from the University of Geneva published in 2024, [available in French](https://access.archive-ouverte.unige.ch/access/metadata/43585e58-977a-46fb-b99b-1d513d6dda46/download).","Projects page"%}

### {%translate "Towards More Accurate Open Source Kart Race Balancing","Projects page - section title"%}

{%translate "A [paper from 2014](https://ieeexplore.ieee.org/document/7048073/) from the Central Michigan University comparing the powerup distribution between SuperTuxKart 0.8, Super Mario Kart, and Mario Kart 7.","Projects page"%}

## {%translate "Fun projects","Projects page - section title"%}

### {%translate "Controlling a STK kart with hand gestures","Projects page - section title"%}

{% capture stk_gaming_chair -%}
{%translate "A [fun project from 2024](https://www.reddit.com/r/SuperTuxKart/comments/1hdfz35/playing_supertuxkart_with_my_gaming_chair/) used hand gestures and chair orientation to control a kart. A script emulated a joystick using the data from a vision recognition system identifying gestures and from a phone on the player's chair which determined the turning angle depending on the chair's orientation.","Projects page"%}

{%translate "The driving level possible with this control method is surprisingly good considering how funny it looks!","Projects page"%}
{%- endcapture -%}

{% gallery mode=sidebar, widths=400px, picture_side=right, text= {{ stk_gaming_chair }}
/assets/wiki/Projects_Gaming_chair_controller.jpg,,,A SuperTuxKart window and a camera feed where gestures are analyzed to drive a kart.
%}

### {%translate "Open Street Map","Projects page - section title"%}

{%translate "What about driving on the streets you know in SuperTuxKart? This is what a project from 2013 wanted to make possible, with a method using OpenStreetMap data and importing real world data explained [on the project's page](https://wiki.openstreetmap.org/wiki/SuperTuxKart).","Projects page"%}

{%translate "As it requires the use of the now very old SuperTuxKart 0.7.3 and also a fair amount of manual work for good results, it is not very practical, but it shows how SuperTuxKart is a game uniquely suited for cool experiments.","Projects page"%}

### {%translate "KDE Plasma Bigscreen","Projects page - section title"%}

{%translate "On 2025, the KDE project, more specifically the KDE Plasma Bigscreen project, decided [to revive the project](https://espi.dev/posts/2025/07/plasma-bigscreen/), with the intention of enabling the usage of GNU/Linux systems on televisions and other large displays. One of the projects chosen to showcase the viability of gaming on the platform was SuperTuxKart, which was praised for having great controller compatibility, but had some problems with performance, due to the usage of an underpowered device.","Projects page"%}
