---
title: Mediebeholdning
display_title: true
---
**Mediebeholdningen** består af alle originale filer af 3D-modeller, teksturer, lyde og alt andet kunst brugt i STK. Filer kan være for store og også inkompatible, så de formindskes og konverteres, før de bygges ind i spillet.

Mediebeholdningen tjerner også et andet formål: Når du bruger det, kan du importere en stor variation af teksturer og objekter til de baner, du bygger. Blender er følsom mht. filstruktur, når du linker teksturer og andet fra mediebeholdningen. Derfor anbefaler vi, at du placerer Blender projektfilen i sin egen filfolder under en passende kategori i din kopi af mediebeholdningen, ** præcis som om det var en officiel del af spillet.**

### Installation af mediebeholdning

Vi anbefaler at ramme udviklingsversionen af STK. Den bedste måde at hente mediebeholdningen på er med en Subversion (SVN) klient. Hvis du ikke kan installere SVN, er der en simpel workaround.

#### Den bedste måde: Installation af Subversion

Vejledning til installation af Subversion er på [Installing Tools](https://supertuxkart.net/Installing_Tools#subversion-client) siden. Når det er installeret brug denne adresse for at se beholdningen:

* Hvis du bruger et grafisk program (som TortoiseSVN), vil du måske blive spurgt om URL for beholdningen - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - og en checkout-folder, som er den placering på din computer, du ønsker, det skal kopieres til.
* I et UNIX operativsystem eller i MacOS kan en checkout-kommando være:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Workaround: Manuel download eller øjebliksbillede

{% start_liquid popup_info %}

Denne workaround er meget enkel. Den henter de samme filer og foldere, men filer bliver ikke opdateret, når mediebeholdningen ændres. Hvis relevante ændringer udføres i beholdningen, efter du downloader øjebliksbilledet, kan dine projekter se anderledes ud i nyere versioner eller måske slet ikke fungere, indtil du downloader et nyt øjebliksbillede.

{% end_liquid %}

Besøg dette link for at generere et øjebliksbillede og downloade det: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Hvis du bliver bedt om at genudgive øjebliksbilledet, så gør det. Det vil starte download af mediebeholdningsfiler, som de ser ud lige nu. Pak ZIP-filen ud til en arbejdsplacering, hvor du ønsker din kopi skal være. Nu er det parat!

Ændringer i mediebeholdningen udføres [rimelig ofte](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=). Hvis du ønsker at hente et nyt øjebliksbillede, skal du tage en backup af alle dine projekter til en anden folder, slette din lokale mediebeholdning og slette den med et nyt øjebliksbillede.
