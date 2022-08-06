---
title: Úložiště médií
display_title: true
---
**Úložiště médií** je místo, kde jsou uloženy všechny původní soubory 3D modelů, textur, zvuků a veškerého dalšího herního umění používaného v STK. To je nutné, protože tyto soubory jsou obvykle příliš velké nebo dokonce nekompatibilní s hrou, takže jsou před odesláním se hrou zmenšeny nebo převedeny.

Úložiště médií slouží jinému účelu: pomocí něj můžete importovat velké množství textur a objektů do vytvořených tratí. Protože Blender je citlivý na strukturu souborů vašich souborů tratí, když propojujete textury a uzly knihovny z úložiště médií, doporučujeme umístit soubor projektu Blender vaší motokáry/tratě/uzlu knihovny do vlastní složky v příslušné kategorii ve vaší stažené kopii úložiště médií, **jako by to byla oficiální součást hry.**

Doporučujeme zacílit na vývojovou verzi STK, takže nejlepší způsob, jak stáhnout úložiště médií, je pomocí klienta Subversion (SVN) (více informací na stránce [Instalace nástrojů](Installing_Tools)).

V operačním systému unixového typu by příklad příkazu checkout byl:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
