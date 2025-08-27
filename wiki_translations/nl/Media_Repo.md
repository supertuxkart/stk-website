---
title: Media-opslagruimte
display_title: true
---
De **media-opslagruimte** bevat alle originele kopieën van de 3D-modellen, texturen, geluidsbestanden en alle andere gebruikte grafische elementen. Dit is nodig omdat deze bestanden doorgaans te groot zijn of in sommige gevallen zelfs incompatibel. Ze worden dan ook verkleind of geconverteerd meegeleverd met het spel.

Maar de opslagruimte dient ook een ander doel: het aanbieden van texturen en objecten aan mensen die eigen parcours willen maken. Blender is nogal gevoelig als het aankomt op bestandsstructuren als je verwijst naar texturen uit de opslagruimte, dus raden we aan om het Blender-projectbestand van je kart/parcours/bibliotheek in een losse map te plaatsen in de bijbehorende categorie van je gedownloade kopie van de opslagruimte - **met andere woorden: alsof het al deel uitmaakte van het spel.**

### Kloon de media-opslagruimte

We raden aan om de ontwikkelingsversie van STK aan te houden. De beste manier om dat te doen is door de media-opslagruimte te downloaden met een Subversion (SVN)-client. Mocht het niet lukken om SVN te installeren, dan is er ook een andere methode voorhanden.

#### Aanbevolen methode: installeer Subversion

Instructies voor het installeren van Subversion zijn  te vinden op de pagina [Hulpmiddelen installeren](Installing_Tools#subversion-client). Na het installeren kun je met behulp van het volgende adres de opslagruimte klonen:

* Als je een grafisch programma gebruikt, zoals TortoiseSVN, kan er worden gevraagd om de opslagruimte-url - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - en een map. De map is de bestemming van de bestanden op je computer.
* Op Unix-achtige besturingssystemen en macOS gebruik je daarvoor bijv. de volgende ‘checkout’-opdracht:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Alternatieve methode: download een momentopname

{% start_liquid popup_info %}

Deze methode is zeer eenvoudig en download dezelfde bestanden en mappen, met als verschil dat deze niet worden bijgewerkt als er updates zijn. Het kan dus zijn dat je projecten er anders uitzien in nieuwere versies of zelfs helemaal niet werken, tenzij je op een later moment een nieuwe momentopname downloadt.

{% end_liquid %}

Met deze link kun je een momentopname samenstellen en downloaden: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Als er wordt gevraagd om het verzoek opnieuw in te dienen, doe dit dan. Pak na het downloaden het zipbestand uit naar een map van waaruit je wilt werken. Klaar is Kees!

Let op: er worden met [enige regelmaat](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=) wijzigingen gedaan aan de opslagruimte, dus als je een nieuwe momentopname wilt downloaden, maak dan een reservekopie van al je projecten, verwijder vervolgens de lokale opslagruimtekopie en vervang hem door een nieuwe momentopname.
