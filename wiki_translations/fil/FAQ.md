---
title: FAQ
---
{% start_liquid main_title %}

Mga Pangkalahatan na Tanong

{% end_liquid %}

{% start_liquid qa %}

Ano ang SuperTuxKart?

Ang SuperTuxKart ay isang 3D na open-source na kart racing game. Nilalayon nito ang kasiyahan para sa mga manlalaro sa lahat ng antas ng kasanayan, na may mga kahon ng item na nagbibigay ng mga random na item, nitro, drifting at higit pa. Hindi realismo ang pinagtutuunan ng pansin.

Nag-aalok ang STK ng online multiplayer mode, lokal na multilplayer mode, at single player mode laban sa mga AI na may parehong custom na karera at story mode para kumpletuhin para mag-unlock ng mga bagong kart at track. Nagtatampok ito ng Grand Prix kung saan ang layunin ay makakuha ng pinakamaraming puntos sa ilang karera

Dadalhin ka ng mga 21 na track sa iba't ibang mga kapaligiran. Mula sa mga beach na maaraw na isla hanggang sa ilalim ng ng isang lumang minahan, mula sa mga kalye ng Candela City hanggang sa mapayapang mga kalsada sa kanayunan, mula sa isang spaceship hanggang sa mga bundok, marami kang matutuklas.

Nagtatampok din ang laro ng karagdagang game mode bukod sa mga normal na karera: mga pagsubok sa oras, sundin ang pununo, soccer, kunin ang bandila, at dalawang uri ng battle mode.

[Maghanap pa ng iba dito](Discover)!

{% end_liquid %}

{% start_liquid qa %}

Sino ang nasa likod ng SuperTuxKart?

Itignan ang [Team](Team) na pahina para sa impormasyon tungkol sa mga tao sa likod ng SuperTuxKart!

{% end_liquid %}

{% start_liquid qa %}

Ano ang mga kinakailangan na hardware?

**GPU**

Ang GPU ay karaniwang limitasyon para sa pagganap ng STK. Ang mga card na nakakatugon sa kaunting mga kinakailangan ay may suporta sa OpenGL upang patakbuhin ang laro, ngunit nangangailangan ng mababang resolution at mababang graphics para sa maayos na paglalaro. Ang mga card na nakakatugon o lumalampas sa mga inirerekomendang kinakailangan ay maaaring magpatakbo ng pinaka-hinihingi na track ng STK sa 60FPS/1080p gamit ang modernong rendering pipeline sa graphics 4.

* **Inirerekomenda**: NVIDIA GeForce GTX 950, AMD Radeon RX 460, o mas mahusay; hindi bababa sa 1GB VRAM (video memory).
* **Minimal**: NVIDIA GeForce 470 GTX, AMD Radeon 6870 HD series card o Intel HD Graphics 4000; Hindi bababa sa 512MB VRAM (video memory).

**CPU**

Ang pagganap ng CPU ay maaaring ang limitasyon depende sa graphics card at graphics setting, karamihan ay para sa online na paglalaro na mas CPU-intensive. Ang mahusay na pagganap ng CPU ay nakakatulong na matiyak ang mataas na framerate at higit sa lahat ang kinis. Para sa STK, ang pagganap ng single-thread ay pinakamahalaga.

* **Inirerekomenda**: Core i5-2400 single-thread performance o mas mataas. Kasama rin ang AMD Ryzen desktop CPUs, karamihan ng Intel desktop CPUs noong 2012 at kamakailang mga mid-to-high mobile CPU.
* **Minimal**: Kahit anong mga Intel o AMD dual-core processor. Maaring mahirapan ang mga pinakalumang model at mga low-clocked na mobile parts, lalo na sa online play.

**Iba pang mga kinakailangan**

* Hindi bababa sa 1GB na hindi ginagamit na RAM
* Espasyo sa disk: 700MB

**Opsyonal**

* (Kapag gusto mong maglaro gamit ng joystick) Isang joystick na hindi bababa sa 6 mga button

{% end_liquid %}

{% start_liquid qa %}

Masyadong luma ang aking computer para patakbuhin ang SuperTuxKart. Ano ang gagawin ko?

Maari mong subukan ang iyong kapalaran at patakbuhan ang laro. Nagtatampok ang STK ng isang fallback na renderer na gumagamit lamang ng OpenGL 2.1 / GLES 2 / DirectX 9 na maaring gumana sa mga karamihan ng device, pero walang rendering pipeline.

{% end_liquid %}

{% start_liquid qa %}

Ano ang kasaysayan ng SuperTuxKart?

Una ay mayroong [TuxKart](http://tuxkart.sourceforge.net). Nangyari ito (halos) sa pagitan ng Abril 2000 at Marso 2004. Noong Hunyo 2004, ang 'Game of the Month' na proyekto ng [Linux Game Tome](https://web.archive.org/web/20040915081722/http://www.happypenguin.org/) ay nagpasya na pahusayin ang TuxKart. Ginawa ito sa pagitan ng Hunyo at Disyembre 2004. (Karamihan sa mga link sa lumang mga pahina ng thread ng forum ay sira, mga archive dito: [[1]](https://web.archive.org/web/20041109144934/http://www.happypenguin.org/forums/viewtopic.php?t=1407) [[2]](https://web.archive.org/web/20120607000453/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=15&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[3]](https://web.archive.org/web/20120606235857/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=30&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[4]](https://web.archive.org/web/20120607000143/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=45&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[5]](https://web.archive.org/web/20120607000320/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=60&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[6]](https://web.archive.org/web/20120606235853/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=75&sid=e3789fa7035b89cbfc1ab2aa6366033c). Sa kasamaang palad, natapos ang proyektong ito sa isang malaking hindi pagkakasundo, at sa wakas ay napagpasyahan na i-save ang kasalukuyang estado bilang "SuperTuxKart". Habang ang ilang mga graphical na pagpapabuti ay ginawa, ang code base mismo ay napaka-unstable at halos hindi nape-play. Walang nagtrabaho sa (Super)TuxKart sa loob ng ilang taon.

Noong 2006, kinuha ni Joerg Henrichs (a.k.a. "Hiker") ang SuperTuxKart, inayos ang mga natitirang bug at mga isyu sa pagganap nang walang anumang pagkakasangkot ng orihinal na taga-disenyo ng laro o ng proyekto ng Game of the Month. Sa tulong ni "Coz" ang unang release ng STK ay ginawa noong Setyembre 2006.

Noong Mayo 2007, ang bersyon 0.3 ay na-release. Idinagdag ang listahan ng high score, isang bagong track (Isla), ang time bomb, MacOSX support, at OpenAL support.

Noong Pebrero 2008 na-release ang bersyon 0.4. Ginamit ng bersyon na ito ang Bullet Physics para pahusayin ang collision handling. Sumali si "Auria" at nagsimulang i-improve ang mga track (Shifting Sands, Lighthouse).

Na-release ang bersyon 0.5 noong Mayo 2008. Kasama ang maraming improved na mga track, mga hamon na naa-unlock, sundin ang pinuno na game mode, at marami pang mga translation. (OS language detector at pag-match ng pinakamalapit na translation).

Ang bersyon 0.6 ay na-release noong Enero 22, 2009. Ito ay makabuluhang napabuti ang gameplay; mas mahusay na physics na may Nitro at skidding. Ang sound system ay pinahusay din, mas kawili-wiling musika ang idinagdag at maraming mga bagong track at kart ang idinagdag. Nakita rin nito ang unang espesyal na multi-player arena para sa 3-Strikes battle at mga bagong item/powerup na gagamitin.

Ang bersyon 0.7 ay na-release noong Disyembre 20, 2010. Naglaman ito ng maraming mga improvement kasama ang: isang bagong 3D rendering engine, Irrlicht, isang bagong GUI (Graphical User Interface), bagong kart ay track na animasyon, bagong mga track, kart, at item/powerup, at support para sa mga shortcut/alternatibong path. Ang mga bersyon 0.7.1, 0.7.2, at 0.7.3 ay na-releasse pagkatapos na may marami pang mga improvement.

Na-release ang bersyon 0.8 noong Disyembre 2012, nagdagdag ng story mode at mga bagong hamon, pinahusay na AI at skidding, reverse mode, mga bagong track at musika. Ang mga menu ay pinahusay din. Sinundan ito ng 0.8.1, na nagdagdag at nag-update ng mga track, nagdagdag ng mga mode ng Soccer at Egg Hunt, at iba pang mga graphical at gameplay na mga pagpapahusay.

Noong 2015, naglabas kami ng bersyon 0.9, isang groundbreaking na release na pinapagana ng isang bagong engine ng laro na tinatawag na Antarctica, na nagdaragdag ng mga advanced na graphical na feature na imposible sa mga nakaraang bersyon. Kasama sa mga feature na ito ang dynamic na pag-iilaw, instance na pag-render (nagbibigay-daan sa malaking pagdami ng mga halaman), at higit pa. 0.9 ay sinundan ng tatlong puntong paglabas, na nagdagdag ng mga karagdagang feature at bagong track.

Noong Abril 2019, naglabas kami ng bersyon 1.0, na may suporta para sa online multiplayer sa unang pagkakataon. Bukod sa pangunahing feature na ito, nagkaroon ng mga bagong track at na-update na track, ang pagdaragdag ng mga hamon ng SuperTux sa story mode, maraming pagbabalanse na tweak, at marami pang mga pagpapahusay at pag-aayos.

Si Hiker pagkatapos ay opisyal na inihayag ang kanyang pagpili na magretiro mula sa proyekto matapos itong pamunuan sa loob ng 13 taon. Bumaba din si Auria sa kanyang tungkulin bilang co-lead ngunit nanatiling kasangkot sa proyekto.

Ang lead ng proyekto ay inilipat kay Benau, isang pangunahing tagapag-ambag ng code mula noong 2017, at Alayan, isang pangunahing tagapag-ambag para sa 1.0. Si Deveee, isang mahalagang contributor sa loob ng ilang taon na responsable para sa bersyon ng Android, ay nanatili sa team.

Noong Enero 2020, inilabas ang bersyon 1.1. Hindi binago ang gameplay, dahil compatible ang lahat ng 1.x na bersyon. Ang mga pangunahing pagbabago para sa bersyon na ito ay pinahusay na networking code at mga pangunahing pagpapahusay ng UI lalo na sa malalaking resolution, kasama ang maraming bugfix at pagpapahusay.

Noong Agosto 2020, inilabas ang bersyon 1.2. Pinahusay nito ang suporta sa gamepad sa pamamagitan ng SDL2 na sumusuporta sa hotplugging at gamepad mappings.

Noong Setyembre 2021, ang pinakabagong bersyon, 1.3, ay inilabas. Naglalaman ito ng mga update para sa maraming mga opisyal na kart.

Para sa higit pang mga detalye, pakitingnan ang [changelog](https://github.com/supertuxkart/stk-code/blob/master/CHANGELOG.md), ang [mga post sa blog](https://blog.supertuxkart.net) o ang listahan ng mga nalutas na isyu sa GitHub ng STK.

{% end_liquid %}

{% start_liquid qa %}

Ang SuperTuxKart ba ay isang Mario Kart clone?

Hindi! Ang serye ng Mario Kart ay ang pinakakilala sa mga laro ng kart racers, ngunit marami pang iba.

Sinubukan ng ilang napakalumang bersyon ng STK na gayahin ang Mario Kart, ngunit hindi ito nangyari sa napakatagal na panahon. Minsan ay tinitingnan natin ito para sa inspirasyon, tulad ng ginagawa natin sa ibang mga laro sa kart, ngunit ito na.

Hindi lamang mayroong maraming makabuluhang pagkakaiba sa gameplay, ngunit ang SuperTuxKart ay nagbabago sa sarili nitong paraan at hindi namin sinusubukang gawin itong mas malapit sa Mario Kart.

{% end_liquid %}

{% start_liquid qa %}

Gusto kong tumulong! Ano ang gagawin ko?

Una, tingnan ang pahina ng [Makilahok](Community). Dapat itong maglaman ng lahat ng impormasyong kailangan mo upang magsimula sa coding, pagmomodelo, pagdidisenyo o anumang gusto mong gawin.

Bago ka magsimula, dapat kang makipag-ugnayan sa mga kasalukuyang developer at artist sa pamamagitan ng [IRC](https://web.libera.chat/?channels=#supertuxkart), [Telegram channel](https://t.me/STKInternational) o ang [forum](https://forum.freegamedev.net/viewforum.php?f=16) at sabihin sa amin kung ano ang gusto mong makamit. Ito ay lubos na mapapabuti ang pagkakataon na ang iyong kontribusyon ay tatanggapin.

{% end_liquid %}

{% start_liquid main_title %}

Mga tanong sa Gameplay

{% end_liquid %}

{% start_liquid qa %}

Ang AI (computer na kart) ay nag-shot nang paatras—paano ko ito magagawa?

Halos lahat ng mga item (bowling ball, cake, plunger) ay magagamit ng paatras. I-fire lamang sila habamg tumitingin patalikod.

{% end_liquid %}

{% start_liquid qa %}

Nandadaya ba ang AI?

Hindi!

Ang limitasyon sa bilis at speed boost ay magkatulad para sa lahat ng mga kart, AI o Tao. Sa mas mababang mga difficulty, ang AI ay baka sadyang bumagal. Ang mga powerup probablility kapag kumukuha ng giftbox ay magkatulad din. Mayroong maliit na pagkakaiba sa kung gaano kabilis ang mga kart na mag-steer sa isang direksyon hanggang sa iba, ngunit hindi ito nagbibigay ng makabuluhang kalamangan sa AI at hindi ito sinadya.

Minsan ang AI ay maaaring magkaroon ng mga superhuman reflexes upang gumamit ng mga powerup, ngunit kung pinindot ng isang tao ang tamang button sa tamang oras, makakamit niya ang parehong resulta. Mayroon ding maraming puwang upang madaig ito.

Kung nahihirapan kang talunin ang AI, tumuon sa pagpapabuti ng iyong pagmamaneho upang bumagsak nang kaunti hangga't maaari habang mabilis, at matutong gumamit ng skidding. Sa mas mataas na kahirapan, ang skidding ay mahalaga upang talunin ang AI.

{% end_liquid %}

{% start_liquid qa %}

Pwede ko bang laurin ang STK sa Internet?

Oo! Pagkatapos ng paggawa ng isang online na STK account sa loob ng laro at pagkonekta, piliin ang "Online" na button sa main menu at "Global networking" para i-access ang networked gameplay gamit ng internet. Maari kang mag-host ng sarili mong server para laruin ng iba, o sumali sa mga community-hosted na server. Para sa pinakamagandang karanasan, ang isang stable na koneksyon at mababang ping ay importante.

{% end_liquid %}

{% start_liquid qa %}

Bakit hindi gumagana ang ilang keyboard key kapag pinindot nang sabay-sabay?

Kapag naglalaro ng keyboard, maaari kang makaranas ng mga isyu kapag pinindot ang maramihang mga key nang sabay-sabay, halimbawa, sinusubukang gumamit ng nitro habang bumibilis at umiikot. Sa ganitong mga sitwasyon, maaaring hindi magrehistro ang ilang keypress. Gayunpaman, hindi ito isang bug ng SuperTuxKart, ngunit isang pisikal na limitasyon ng iyong keyboard, karamihan sa mga keyboard ay maaari lamang humawak ng napakaraming key na pinindot nang sabay-sabay (para sa mas detalyadong impormasyon, mangyaring tingnan [dito](https://www.sjbaker.org/wiki/index.php?title=Keyboards_Are_Evil)). Ang solusyon ay ang paggamit ng gaming input device (gamepad, o gaming keyboard), o i-tweak ang configuration ng mga key upang mahanap ang mga key na mairerehistro ng iyong keyboard nang sabay-sabay.

{% end_liquid %}

{% start_liquid qa %}

Mayroon akong kakaibang mga isyu sa pag-input

Maaaring kabilang dito ang kart na laging pakaliwa, o random na pagpepreno, o iba pang katulad na kakaiba kung saan tila naniniwala ang laro na pinindot mo ang isang key ngunit hindi mo ginawa. Kung mangyari ito, subukang pumunta sa menu ng mga opsyon, sa input screen, at tingnan kung mayroon kang mga gamepad doon. Subukang huwag paganahin ang lahat ng mga gamepad maliban sa device na iyong ginagamit. Minsan, maaaring matanggap ang bogus input mula sa mga gamepad o iba pang katulad na device na nakikita ng OS bilang isang gamepad.

{% end_liquid %}

{% start_liquid qa %}

Bigla akong nagkaroon ng isang malaking pulang bilog sa aking screen, Ano yan?

Kung may penguin sa gitna ng bilog, may nag-shot ng plunger sa iyong mukha. Magagawa mo iyon sa iba sa pamamagitan ng pag-shoot ng plunger pabalik (tingnan ang FAQ entry tungkol sa paghahagis ng mga item pabalik).

{% end_liquid %}

{% start_liquid qa %}

Maaari ko bang gamitin ang aking Wii remote sa STK?

Oo! Tingnan ang pahina ng [Wiimote](Wiimote) para sa mga detalye.

{% end_liquid %}

{% start_liquid main_title %}

Mga technical na tanong

{% end_liquid %}

{% start_liquid qa %}

Nakakita ako ng bug, paano kita makokontak?

Una, tingnan ang [STK bug tracker](https://github.com/supertuxkart/stk-code/issues) at magbukas ng bagong isyu kung hindi pa naiuulat ang iyong problema.

{% end_liquid %}

{% start_liquid qa %}

Saan nakalagay ang configuration?

* Sa **Windows**: Ito ay nasa `%APPDATA%/supertuxkart/config-0.10` (maaari mong ipasok iyon sa Explorer at dadalhin ka doon).
* Sa **Linux**: Ito ay alinman sa `$XDG_CONFIG_HOME/supertuxkart/config-0.10` (unang pagpipilian), `~/.config/supertuxkart/config-0.10` (ikalawang pagpipilian) o sa `~/.supertuxkart/ config-0.10` (ikatlong pagpipilian).
* Sa **macOS**: Ito ay nasa `~/Library/Application Support/supertuxkart/config-0.10`. Tandaan na maaaring nakatago ang direktoryo na ito.
* Sa **Snap**: Ito ay nasa `~/snap/supertuxkart/current/.config/supertuxkart/config-0.10`.
* Sa **Flatpak**: Ito ay nasa `~/.var/app/net.supertuxkart.SuperTuxKart/config/supertuxkart/config-0.10`.

Maaari mo ring panoorin ang output sa terminal upang makita kung mayroong tala kung saan naka-imbak ang mga config file o maghanap ng file na tinatawag na "config.xml".

{% end_liquid %}

{% start_liquid qa %}

Hindi ma-compile ang Git version. Ano ang gagawin ko?

Nangyayari ito minsan; Dapat malaman iyon ng mga developer at dapat itong maayos sa lalong madaling panahon. Kung sinabi ng [GitHub Actions](https://github.com/supertuxkart/stk-code/actions) na ang kasalukuyang bersyon ng Git ay nag-compile, ngunit hindi ito ginagawa para sa iyo, malamang na may mali sa iyong setup ng compiler. (Suriin kung mayroon kang lahat ng mga dependency, muling patakbuhin ang CMake, ...)

{% end_liquid %}

{% start_liquid qa %}

Paano ko ia-unlock ang lahat ng track?

Ang nilalayong in-game na paraan ay ang paglalaro ng story mode at talunin ang lahat ng hamon.

Kung gayunpaman, gusto mong i-unlock ang lahat nang hindi naglalaro ng story mode, maaari ka ring mandaya sa pamamagitan ng pag-edit ng config file. Buksan ang folder na binanggit sa itaas sa tanong na "Saan iniimbak ng STK ang file ng config ng gumagamit". Mula doon, buksan ang folder na "config-0.10" pagkatapos ay buksan ang file na "players.xml". Palitan ang lahat ng paglitaw ng "one" ng "hard" (o "easy" o "medium", na nagpapahiwatig ng pinakamataas na antas kung saan mo nalutas ang isang hamon).

{% end_liquid %}
