---
title: Mga Alituntunin sa 3D Model
toc: true
---
Mahalaga na ang SuperTuxKart ay may pare-parehong istilo ng object sa kabuuan. Sa maraming paraan, ang page na ito ay kahalintulad sa [mga alituntunin sa texture](Texture_Guidelines).

## Istilio

{% capture real_plam_tree -%}

Tunay na puno ng palma

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Napaka cartoony na modelo ng palm tree

{%- endcapture -%}

{%- capture realistic -%}

Makatotohanan, ngunit pinasimpleng modelo

{%- endcapture -%}

Ang mga bagay sa SuperTuxKart ay dapat na makatotohanan sa laki, hugis, pangkalahatang anyo. Gayumpaman, ang mga bagay ay hindi dapat kasing detalyo sa totoong buhay. Kunin ang isang puno ng palma bilang halimbawa:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Makikita mo na ang bagong modelo ng palm tree ay mas malapit na tumutugma sa hugis ng isang tunay na palm tree. Gayunpaman, hindi ito masyadong detalyado na mukhang totoo. Sa madaling salita, <u>panatilihin ang pagiging totoo sa pangkalahatang anyo, ngunit panatilihin din ang isang cartoony na hitsura sa pamamagitan ng pag-iwas sa labis na detalye sa hugis o mga texture.</u>

Halimbawa, kung hihilingin sa iyo na lumikha ng isang kongkretong hadlang, alam ng lahat kung ano ang hitsura ng isang kongkretong hadlang—malamang na nakikita mo ang mga ito araw-araw kapag papasok ka sa trabaho. Kaya bubuksan mo ang Blender at gawin ang isang bagay tulad nito:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Ang problema ay nawawala ka ng maraming mga detalye at higit sa pagpapasimple ng bagay. Mukhang napakamura at kung gagawin mo ang lahat ng iyong mga bagay nang ganoon ang resulta ay hindi magiging kasing ganda ng maaaring mangyari. Ang solusyon ay simpleng mangalap ng mga larawan, pagguhit, mga ideya, atbp. na makakatulong sa iyo sa proseso ng paglikha ng bagay. Oo, ito ay medyo tulad ng dayaan ngunit ito ay inirerekomenda at pinapayagan. Ang layunin ay magkaroon ng tamang inspirasyon. Gamit ang larawang tulad [nito](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), makikita mo ang lahat ng mga detalye at mai-reproduce ang mga ito para sa iyong bagay.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Kita mo ba ang malaking pagkakaiba? Ang hadlang ay kagiliw-giliw na makita, mayroong maraming mga detalye tulad ng mga wire sa itaas upang i-load ang mga ito, ang strip ng babala sa ibaba atbp. Hindi ito photorealistic ngunit ngayon at least nakakuha kami ng isang bagay na may mga kagiliw-giliw na detalye na maaaring maging isang tunay na buhay hadlang. (At bukod pa, ang layunin ay hindi maging ganap na makatotohanan—kadalasan ay makatotohanan.)

## Mga Tuntunin

* Ang lahat ng mga modelo **DAPAT** ay child-friendly. Dapat magkasya ang SuperTuxKart sa ESRB "Everyone" [rating](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Ang mga modelo ay dapat na may kakayahang magmukhang maganda kapwa mag-isa at sa mga grupo.
* Dapat gamitin ng mga high-poly na modelo ang [Level of Detail](Level_of_Detail).
* Maliban kung ang iyong modelo ay hindi mapaghihiwalay mula sa iyong track, ang mga bagay ay dapat na magagamit sa maraming iba't ibang mga kapaligiran upang ang mga ito ay maaaring gawin sa mga library node.
    * Iwasang magdagdag ng lupa o mga halaman sa paligid ng iyong mga bagay (maliban kung ang iyong bagay ay isang uri ng halaman mismo).
    * Ang mga tao sa pangkalahatan ay dapat na nakasuot ng pangkalahatang layunin na damit, maliban sa mga kaso kung saan ito ay walang kahulugan, tulad ng beach.

## Polycount

Ang polycount ay ang bilang ng mga surface, o mga mukha na mayroon ang mga 3D na bagay. Sinusuportahan lang ng mga lumang bersyon ng Blender ang mga bagay na gawa sa "quads" (quadrilaterals—polygons made of four points) at "tris" (triangles—polygons made of three points). Ang "Poly" ay karaniwang nangangahulugang "bilang ng mga quad." Gayunpaman, sinusuportahan na ngayon ng Blender ang mga n-gon, o mga polygon na may walang limitasyong bilang ng mga puntos, at nagbibigay lamang ng bilang ng mga surface at tris. Kaya, dahil ang bilang ng tris ay palaging maaasahan upang manatiling pareho (ang tatsulok ay hindi kailanman nakakakuha ng higit pang mga puntos!) Ito ay mas tumpak na bilangin ang tris kaysa sa poly. Samakatuwid, ang mga alituntuning ito ay tumutukoy sa tris.

### Kaunting Kasaysayan

Sa mga lumang araw ng paglalaro, imposibleng makalkula ang mga perpektong ilaw para sa lahat ng mga pixel. Ang lahat ng matinding pagkalkula ay ginawa para sa bawat poly at pagkatapos ay na-interpolated sa mga pixel sa loob ng poly.

Ngunit sa ngayon, ang mga modernong makina ay gumagamit ng per-pixel lighting. Samakatuwid, ang pinakakumplikadong bahagi ay hindi ang vertex shader ngunit ang pixel shader. Kumuha tayo ng isang halimbawa ng isang bagay na mayroong ~500 polygons. Para sa GPU, ang pamamahala sa isang vertex ay maaaring ~10 mga tagubilin (hindi ito ang eksaktong numero, para lamang bigyan ka ng indikasyon). Para sa bawat poly ng iyong modelo ang computer ay gagawa ng ~10 mga tagubilin, kaya 500 × 10 = 5000 mga tagubilin para sa buong mesh.

Ngayon, ang bahagi ng pixel. Depende ito sa kung gaano karaming mga pixel ang kukunin ng iyong bagay, ngunit hayaan natin ang pinakamasamang sitwasyon—ipagpalagay natin na ang buong screen ay puno ng iyong bagay. Para sa bawat pixel upang makalkula (ang liwanag, ang gloss, ang normal na mapa, atbp), ito ay kukuha ng ~50 mga tagubilin sa GPU.

Kung mayroon kang resolution na 800 × 600 (karamihan sa mga tao ay may mas mataas na resolution), 800 × 600 × 50 = 24,000,000 na mga tagubilin. Kaya kahit na doblehin mo ang bilang ng mga ibabaw, hindi mo lubos na maaapektuhan ang karamihan ng ginastos na kuryente. Kinakalkula ito ng pixel, hindi sa surface ngayon.

Kaya, maaari nating taasan ang polycount nang walang masyadong problema. Gayunpaman, mahalagang panatilihin itong kontrolado.

### Pagsukat ng Polycount

Nagpapakita ang Blender ng polycount sa status bar, tingnan ang screenshot sa ibaba upang paganahin ito kung ang **Scene Statistics** ay hindi nasuri sa pamamagitan ng pag-right click sa status bar:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Hanapin ang numero ng **Tris**. Ito ang impormasyong kailangan mo. Gayundin, tandaan na ang bilang ng mga tris sa buong eksena ay ipinapakita lamang sa object mode.

### Mga Halimbawa ng Polycount

* Isang eroplanong pangkargamento: ~4000 tris
* Isang puno ng palma na may Level of Detail
    * Mataas: 843 tris
    * Daluyan: 465 tris
    * Mababa: 42 tris
* Isang basic na halaman: 32 tris
* Isang katamtamang laki ng puno: 1380 tris
* Isang kalabasa: 470 tris

### Pag-mark ng Mga Bagay bilang High-Poly

Posibleng markahan ang mga bagay bilang nangangailangan ng mas malakas na computer. Upang gawin ito, buksan ang anumang STK scene gamit ang Blender, piliin ang bagay na gusto mong markahan at lagyan ng check ang **Enable geometry visibility details** box sa **SuperTuxKart Object Properties** panel. Pagkatapos ay maaari mong itakda ang **Visibility** sa alinman sa mga available na opsyon upang magpasya sa pinakamababang antas ng mga graphical effect kung saan makikita ang iyong bagay.

## Pagsusukat

Ang mga bagay ay dapat may tamang sukat upang hindi sila magmukhang kakaiba sa laro.

* Ang isang puno ng palma ay humigit-kumulang 27 Blender unit ang taas.
* Ang mga kahoy na gusali sa Northern Resort ay humigit-kumulang 8 Blender unit ang taas.
* Ang mga flag ng Lampone sa Candela City ay may taas na 10 Blender units.
