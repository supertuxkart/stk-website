---
title: Tekstur retningslinjer
toc: true
---
En god tekstur er måske en af de vigtigste ting i 3D-kunst. Selv et smukt modelleret objekt kan se hæsligt ud med dårlig tekstur. Så det er vigtigt, dine teksturer passer til retningslinjerne.

## Stil

Teksturer i SuperTuxKart er håndtegnede eller malede. Ikke bare fotografier (selvom du sagtens kan bruge fotografier som reference). Du skal ikke male med fysisk maling. Du kan bruge en digital tegne-app som Krita. Andre apps er listet på [Værktøjsinstallation](Installing_Tools)-siden. 

Teksturer må ikke være komplet falske eller tegneserieagtige. Tilføj gerne mængder af detaljer, så længe du udelukkende bruger håndtegning (undtaget omstændigheder beskrevet herunder). Mere information om tesksturmaling på [Seneste Blender dokumentation](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Hvornår kan fotografier bruges

Under visse omstændigheder er der ikke fordele ved at håndtegne teksturer. Når håndtegning af en detaljeret tekstur bliver en stor tidssluger, som for beplantning, kan det være mere belejligt at bruge et fotografi, forudsat at det er tilstrækkeligt generisk, og det ikke vil give et grimt flisebelægningsmønster. For eksempel teksturen herunder:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

det er et interessant eksempel, fordi teksturen både har gode og dårlige egenskaber. Palmebladet er godt (NB: Gennemsigtighed fås via en alfamaske for teksturen) pga. den ensartede belysning, fravær af andre detaljer og sin generiske natur. Det bruges heller ikke et sted, hvor fliseproblemer diskuteret herunder bliver et problem. Træstammeteksturen til højre er ikke godt pga. uensartet belysning. At skabe en tekstur af en træstamme på den måde giver gentagne lys/mørke striber. En meget synlig fejl. Træstrammeteksturen vil måske blive brugt som tekstur for et solidt objekt. Og det gør den uegnet pga. risikoen for et meget tydeligt fliseproblem.

Fotografiker bør generelt ikke bruges som teksturobjektet tæt på spilleren, da detaljer vil være mere synlige, og det vil være indlysende, der bare er tale om et fotografi.

## Farve og belysning

Teksturer i SuperTuxKart er farvefulde og kontrastrige, men det må ikke modarbejde hinanden. Ekstremt lyse neon/plastik/slik-farvede teksturer vil ikke blive accepteret, medmindre de kun bruges i et meget lille område som f.eks. startsignalet i XR591. Samme regel gælder teksturer, der kun har én farve. Ren sortfarvet eller ren hvidfarvet tekstur frarådes også. Du taber farveinformation med 100% sort eller hvid.

Teksturer bør tegnes neutralt i forhold til omgivende farver og lys. SuperTuxKarts motor vil automatisk ændre farvebalance og lysstyrke baseret på scenebelysning og toppunktsfarver.

## Mønstre

Der bør ikke være noget umiddelbart genkendeligt mønster i teksturen. Indlysende mønstre får banen eller kart'en til at se fjollet ud. Her et eksempel på, hvad man **ikke** skal gøre:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Et andet problem dukker op. Her med teksturer, der totalt mangler et mønster. Det er en væsentlig grund til at undgå at bruge fotografier som teksturer:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Bemærk at teksturer i Blender skaber et grimt flisemønster selvom teksturen i sig selv ikke har et mønster. Ved at fjerne detaljeringsgrad og afrunde hjørne får du et meget bedre resultat, selvom det ikke er perfekt:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Teksturdetaljer

Prøv at undgå teksturer med detaljer, der ikke ville være der i virkeligheden. F.eks. hvis du vil have et reb hængende på en væg, men ikke vil bruge et net, så lad være med at lave en helt ny tekstur bare for at tilføje et reb på en trætekstur. SuperTuxKart inkluderer skyggemærkater, der muliggør at lægge en rebtekstur i det andet UV-lag ovenpå træteksturen uden at gøre træteksturen uanvendelig til andre funktioner. For mere information se [her](Texturing#Decals).

## Tekniske begrænsninger
* Billeddimensioner bør være potenser af to. F.eks. er standardstørrelsen for en generisk tekstur 1024 × 1024 eller 2<sup>10</sup> × 2<sup>10</sup>. Teksturer behøver dog ikke være kvadrater. Du kan have en 1024 × 512 tekstur eller or 2<sup>10</sup> × 2<sup>9</sup>.
* Brug ikke store teksturer til små objekter. Det spilder videohukommelse.
* Undgå ekstremt små teksturer (f.eks. 4x4 eller mindre) også ved rene farver. Det giver uventede resultater, når teksturkompression er slået til i grafikindstillinger.
* Teksturfiler **skal** placeres i samme folder som dit eksporterede objekt.
* Teksturer bør være i PNG-format, når
    * Teksturen vil blive brugt i et objekt, der er tæt på, med behov for stor detaljeringsgrad
    * Objektet indeholder gennemsigtige eller delvist gennemsigtige dele
* Teksturer bør være i JPEG-format, når
    * Fjerne objekter
    * Himmelteksturer (af og til)
    * Kort over omgivende lys
