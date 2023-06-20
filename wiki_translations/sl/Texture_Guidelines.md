---
title: Smernice za teksture
toc: true
---
Za ustvarjanje 3D umetnin so ključne dobre teksture. Še tako čudovito zmodeliran predmet lahko slabe teksture povsem pokvarijo, zato je pomembno, da se držite teh smernic.

## Slog

Teksture v SuperTuxKartu so narisane ročno ali naslikane in niso fotografije (večinoma – lahko se pa seveda zgledujete po fotografijah). To ne pomeni, da morate delati na dejanskem platnu. Uporabite lahko računalniški program, kakršen je Krita. Drugi podobni programi so navedeni na strani [Nameščanje orodij](Installing_Tools) page.

Teksture tudi niso povsem narejene in risankaste. Dodate jim lahko poljubno količino podrobnosti, dokler so le-te ročno narisane (razen pod pogoji, ki jih navajamo spodaj). Za več informacij o barvanju tekstur si preberite [najnovejšo dokumentacijo za Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Kdaj uporabiti fotografije

Pod določenimi pogoji ročno slikanje tekstur nima smisla. Risanje teksture z veliko podrobnosti je lahko dolgotrajno opravilo, denimo v primeru tekstur za rastlinje. Takrat je mogoče primerneje uporabiti fotografijo resnične rastline, če je seveda ta fotografija dovolj generična in ne tvori grdega ali prekinjenega vzorca. Za primer vzemimo spodnjo teksturo:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Podana tekstura je zanimiva, saj vsebuje tako dobre kot slabe značilnosti. Palmov list je dobra tekstura (mimogrede, prosojnost je pri tej teksturi določena z alfa masko), ker ima enotno osvetlitev, ne preveč ne premalo detajlov in je nasploh precej generična. Poleg tega ne bo uporabljena na način, ki bi povzročil grde ponavljajoče vzorce na površini. Tekstura debla na desni je po drugi strani precej slabša zaradi svoje neenakomerne osvetljenosti. Nanašanje teksture na model bi povzročilo ponavljajoče se trakove temnih in svetlih polj, kar zbode v oko. Tekstura je še bolj neprimerna, ker bo verjetno uporabljena za senčenje dolge, ravne površine, kjer bo prišlo do vidnih ostrih robov med ponovitvami.

Fotografij ne uporabljamo za teksture na objektih, ki so blizu igralcu, saj bodo podrobnosti vidnejše in bo jasno, da gre za fotografijo.

## Barva in osvetljenost

Teksture v SuperTuxKartu so barvite in razgibane, a si večinoma ne nasprotujejo. Povsem svetle teksture kričečih barv ne bodo sprejete v glavni repozitorij, razen če jih uporabite na majhni površini, kot je recimo začetni znak v XR591. Enako pravilo velja za teksture z eno samo barvo. Povsem črne ali povsem bele teksture tudi odsvetujemo. S 100 % črnino ali belino izgubite barvno informacijo.

Teksture rišite tako, kot da je svetloba iz okolice nevtralna. Upodabljalnik SuperTuxKarta bo samodejno uravnotežil barve in svetlost glede na osvetlitev na prizorišču in na pobarvanost oglišč. 

## Vzorci

Tekstura naj nima izrazitih vzorcev. Jasni vzorci mečejo slabo luč na progo ali vozilo. Podajamo primer, česa **ne** počnite:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Pri teksturah, ki nimajo vzorca, nastane druga težava. To je velik razlog, zakaj se izogibajte uporabi fotografij za teksture:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Nanašanje teksture v Blenderju povzroči grd vzorec, čeprav ga tekstura sama po sebi nima. Če odstranimo nekatere podrobnosti in zgladimo robove, dobimo veliko lepši rezultat, čeprav še vedno ni popoln:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Podrobnosti na teksturah

Ko izdelujete teksture, se izogibajte dodajanju podrobnosti, ki v resničnem življenju ne bi bile del materiala. Na primer, če hočete vrv, ki visi z zidu, vendar nočete zmodelirati posebnega predmeta zanjo, ne ustvarite čisto nove teksture zidu, ki ima narisano vrv. SuperTuxKart vključuje lepilni senčilnik (decal shader), kar vam omogoča, da teksturo vrvi preprosto prestavite na drugo UV plast in jo položite čez teksturo zidu. Več o tem si preberite [tukaj](Texturing#Decals).

## Tehnične omejitve
* Dimenzije slik naj bodo potence števila dve. Standardna velikost generične teksture je recimo 1024 × 1024 ali 2<sup>10</sup>× 2<sup>10</sup>. Ni pa treba, da so teksture kvadratne, tako da veljajo recimo velikosti 1024 × 512 ali 2<sup>10</sup> × 2<sup>9</sup>.
* Ne uporabljajte velikih tekstur za majhne predmete. To po nepotrebnem porablja dragoceni grafični pomnilnik.
* Ne ustvarjajte premajhnih tekstur (npr. 4 × 4 ali manj), celo za eno samo barvo. Ko je v grafičnih nastavitvah omogočena kompresija tekstur, lahko pri takih teksturah pride do nepričakovanih rezultatov.
* Datoteke s teksturami **morate** položiti v isto mapo kot svoj izvožen objekt.
* Teksture naj bodo v formatu PNG, ko
    * bo tekstura uporabljena za bližnje objekte z več podrobnostmi,
    * objekt vsebuje (pol)prosojne dele.
* Teksture naj bodo v formatu JPEG za
    * oddaljene objekte,
    * teksture neba (včasih),
    * teksture okoljske svetlobe.
