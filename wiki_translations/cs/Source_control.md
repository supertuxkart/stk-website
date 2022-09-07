---
title: Správa zdrojového kódu
toc: true
---
SupertTuxKart používá Git pro zdrojový kód a SVN pro datové soubory. Pokud je tedy nemáte, nejprve je nainstalujte. Pokyny k jejich instalaci naleznete ve spodní části stránky.

## Herní jádro

Úložiště základního kódu je hostováno na naší [GitHub stránce](https://github.com/supertuxkart/stk-code). Příklad příkazu klonování:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Velikost stahování je asi 350 MB.

Datové soubory jsou hostovány na SourceForge a používají SVN. Příklad příkazu checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Má velikost asi 700 MB.

Tato dvě úložiště by měla být stažena do stejné složky, takže složky `stk-code` a `stk-assets` jsou vedle sebe.

## Úložiště médií

Úložiště médií **není potřeba ke hraní hry**. Obsahuje zdrojové soubory pro herní assety (soubory .blend, bezeztrátové hudební a zvukové soubory atd.) a je určen pro umělce. Velikost ke stažení je přibližně 3,2 GB.

Úložiště médií je hostováno na SourceForge a používá SVN. Příklad příkazu checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Viz také [stránka úložiště médií](Media_Repo).

## Doporučené postupy

Zde je několik pokynů pro vývojáře, kteří mají přístup pro zápis do Git/SVN:

* Připojte se k našemu IRC nebo telegramovému kanálu (viz [Komunita](Community)). Vývojáři tam obvykle zveřejňují to, na čem pracují, aby se snížila pravděpodobnost konfliktů. Kromě toho se zde také diskutuje o známých významných chybách.
* Možná by stálo za to přihlásit se k odběru elektronická konference supertuxkart-commit (viz [Komunita](Community)). Všechny commity a jejich popisky jsou automaticky odesílány na tuto adresu, takže budete vždy vědět, co se děje, a pokud vaše práce zasahuje do toho, co dělají ostatní lidé.
* Vývojová verze by se měla vždy zkompilovat. I když není možné testovat na všech platformách, snažte se napsat přenositelný kód. Ostatní vývojáři a testeři obvykle rychle upozorní (a opraví) na jakékoli problémy.
* Commitujte často. Časté commity mají tu výhodu, že fungují jako záloha, což snižuje pravděpodobnost časově náročných konfliktů sloučení.
* Pokuste se zahrnout všechny změny pro jednu funkci do jednoho commitu (tj. neposílejte každý soubor samostatně) a snažte se nesměšovat několik funkcí v jednom velkém commitu.

## Instalace Gitu

### Linux
`sudo apt install git` nebo ekvivalent ve vaší distribuci.

### Windows
Nainstalujte [Git pro Windows](https://github.com/git-for-windows/git/releases/latest). Pokud chcete grafické rozhraní pro Git, můžete si vybrat, které vám vyhovuje. V opačném případě, pokud nevíte, kterou si vybrat, můžete si také nainstalovat [TortoiseGit](https://tortoisegit.org/download) po instalaci Git pro Windows.

## Instalace SVN

### Linux
`sudo apt install subversion` nebo ekvivalent ve vámi zvolené distribuci.

### Windows
Můžete si vybrat mezi několika klienty SVN a použít toho, který vám vyhovuje, ale pokud nevíte, který si vybrat, můžete si nainstalovat [TortoiseSVN](https://tortoisesvn.net/downloads.html).
