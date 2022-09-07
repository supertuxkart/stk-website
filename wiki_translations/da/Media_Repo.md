---
title: Mediebeholdning
display_title: true
---
**Mediebeholdningen** består af alle originale filer af 3D-modeller, teksturer, lyde og alt andet kunst brugt i STK. Filer kan være for store og også inkompatible, så de formindskes og konverteres, før de bygges ind i spillet.

Mediebeholdningen tjerner også et andet formål: Når du bruger det, kan du importere en stor variation af teksturer og objekter til de baner, du bygger. Blender er følsom mht. filstruktur, når du linker teksturer og andet fra mediebeholdningen. Derfor anbefaler vi, at du placerer Blender projektfilen i sin egen filfolder under en passende kategori i din kopi af mediebeholdningen, ** præcis som om det var en officiel del af spillet.**

Vi anbefaler, at ramme udviklingsversionen af STK. Derfor er den bedste måde at hente mediebeholdingen via en Subversion (SVN) klient. (Mere information på [Installér værktøjer](Installing_Tools) siden.)

I UNIX/Linux kan et eksempel på en udcheckningskommando være:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
