---
title: Media-opslagruimte
display_title: true
---
De **media-opslagruimte** bevat alle originele kopieën van de 3D-modellen, texturen, geluidsbestanden en alle andere gebruikte grafische elementen. Dit is nodig omdat deze bestanden doorgaans te groot zijn of in sommige gevallen zelfs incompatibel. Ze worden dan ook verkleind of geconverteerd meegeleverd met het spel.

Maar de opslagruimte dient ook een ander doel: het aanbieden van texturen en objecten aan mensen die eigen parcours willen maken. Blender is nogal gevoelig als het aankomt op bestandsstructuren als je verwijst naar texturen uit de opslagruimte, dus raden we aan om het Blender-projectbestand van je kart/parcours/bibliotheek in een losse map te plaatsen in de bijbehorende categorie van je gedownloade kopie van de opslagruimte - **met andere woorden: alsof het al deel uitmaakte van het spel.**

We raden aan om de ontwikkelingsversie van STK aan te houden. De beste manier om dat te doen is door de media-opslagruimte te downloaden met een Subversion (SVN)-client (meer informatie vind je op de pagina [Hulpmiddelen installeren](Installing_Tools)).

Op Unix-achtige besturingssystemen gebruik je daarvoor bijv. de volgende ‘checkout’-opdracht:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
