---
title: Media Repo
display_title: true
---
Ang **media repository** ang lugar kung saan nilalagay ang mga orihinal na file ng mga 3D Model, mga texture, mga tunog, at lahat ng iba pang mga sining ng laro na ginagamit sa STK.  Kailangan ito dahil ang mga file na ito ay masyadong malaki o kaya hindi compatible sa laro, kaya niliitan sila o ikinonvert bago idinadala sa laro.

Ang media repository ay nagsisilbi ng ibang layunin: gamit ito, maari kang mag-import ng malaking iba't ibang mga texture at at mga bagay sa mga track na ginagawa mo. Dahil ang Blender ay sensitibo tungkol sa istruktura ng file ng inyong mga track file kapag nag-link ang mga texture at mga library node mula sa media repo, inirerecomenda naming ilagay ang Blender project file ng inyong kart/track/library node sa sarili niyang folder sa ilalim ng nagaangkop na kategorya sa inyong na-download na kopya ng media repo, **parang ito ay opisyal na bahagi ng laro.**

### Pag-install ng media repo

Inirerekomenda naming ang pag-target ng development version ng STK, kaya ang pinakamahusay na paraan upang mag-download ang media repository ay gamit ng isang Subversion (SVN) client. Gayumpaman, kung hindi mo ma-install ang SVN, mayroong isang simpleng solusyon.

#### Pinakamahusay na paraan: Pag-install ng Subversion

Mga tagubalin sa pag-install ng Subversion ay nasa [Pag-install ng mga tool](https://supertuxkart.net/Installing_Tools#subversion-client) na pahina. Kapag na-install na ito, gamitin ang sumusunod na address upang i-checkout ang repo:

* kung gumagamit ka ng isang graphical na programa (hal. TortoiseSVN), maaari itong humingi sa iyo ng URL ng repository - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - at isang checkout directory, na kung saan sa iyong computer gusto mo itong makopya.
* Sa ilalim ng Unix-like na operating system o macOS, ang isang halimbawa ng checkout command ay:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Workaround: Manual download ng snapshot

{% start_liquid popup_info %}

Napakasimple ng workaround na ito at nagda-download ng parehong mga file at folder, ngunit hindi nito ia-update ang iyong mga file kapag ginawa ang mga pagbabago sa media repo. Nangangahulugan ito na kung ang mga nauugnay na pagbabago ay ginawa sa repo pagkatapos mong i-download ang snapshot, maaaring mag-iba ang hitsura ng iyong mga proyekto sa mga mas bagong bersyon o posibleng hindi gumana nang maayos maliban kung magda-download ka ng bagong snapshot.

{% end_liquid %}

Bisitahin ang link na ito para mag-generate ng isang snapshot a i-download: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Kung hihilingin nito sa iyo na muling isumite ang kahilingan sa snapshot, gawin ito. Pagkatapos ay magsisimula ito ng pag-download ng mga media repo file gaya ng mga ito sa kasalukuyan. I-extract ang ZIP file sa isang gumaganang lokasyon kung saan mo gustong ilagay ang iyong kopya ng media repo. Ngayon ay handa na!

Ginagawa ang mga pagbabago sa media repo [medyo madalas](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), kaya kung gusto mong mag-download ng bagong snapshot, kailangan mong mag-backup lahat ng iyong mga proyekto sa isa pang folder, tanggalin ang iyong lokal na media repo copy at palitan ito ng bagong snapshot.
