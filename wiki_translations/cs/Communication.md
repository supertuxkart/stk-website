---
title: Komunikace
toc: true
---
Než kontaktujete tým, nahlásíte chybu, zveřejníte příspěvek na fóru atd., měli byste si přečíst tuto stránku. Dodržováním doporučení a pokynů na této stránce bude komunita a projekt fungovat efektivněji a šťastněji. I když tento článek může vyznít trochu drsně, nebojte se svůj příspěvek zveřejnit. Tým je obecně docela trpělivý, pokud nejste recidivista. ;)

## Prosím mějte na paměti... 

### Vývojáři nejsou placení

Vývojáři to dělají, protože je to baví, ne proto, že jste jim zaplatili. Nejsou placeni za to, aby vás potěšili, i když se pokusí vzít vaše návrhy v úvahu, pokud to bude možné.

### Vývojáři pracují pouze ve svém volném čase
Možná nebudou mít šanci hned odpovědět. Buďte trpěliví – nakonec odpoví. A pokud ne, **zdvořile** připomeňte svůj příspěvek. To také znamená, že byste neměli podávat triviální požadavky, které nejsou důležité, ani extrémně náročné požadavky.

### Open-source nemusí vždy znamenat, že vaše příspěvky budou přijaty
Tým musí udržovat kvalitu kódu a grafiky na vysoké úrovni. To znamená, že někdy vaše práce nemůže být přijata. Nenechte se prosím odradit – tým vám rád pomůže nebo poradí.

## Doporučené postupy

### Při hlášení chyby nebo pádu ve hře

* Pokud je chyba již nahlášena na [GitHubu](https://github.com/supertuxkart/stk-code/issues?q=is%3Aissue):
  * Pokud je chyba otevřená, zjistěte, zda můžete týmu nahlásit nějaké další informace.
  * Pokud je chyba uzavřena, pravděpodobně budete muset počkat na další vydání, než bude oprava zahrnuta do hry, pokud nechcete kompilovat ze zdroje.
* Pokud chyba není nahlášena:
  * Vytvořte jasný a popisný název chyby.
  * Uveďte podrobné vysvětlení problému. Zvláště užitečné jsou podrobné pokyny, jak spolehlivě reprodukovat problém.
  * Zahrňte systémové informace, jako je váš operační systém, verze operačního systému, model a výrobce grafického procesoru (GPU), verze grafického ovladače a model CPU.
  * Zahrňte soubor stdout.log. (Informace o tom, kde se tento soubor nachází, najdete v části "Kde STK ukládá konfigurační soubor uživatele" na stránce [FAQ](FAQ).)
  * V případě potřeby zahrňte snímky obrazovky.
  * Pokud jste schopni zkompilovat STK sami a spustit jej pod debuggerem (jako je GDB, Valgrind nebo Visual Studio Debugger), zkompilujte STK v režimu ladění, spusťte jej a odešlete výstup z ladicího programu.
  * Uveďte jakékoli další informace, jak uznáte za vhodné.
  * Odpovězte na všechny otázky, které tým položí, tak úplně, jak jen můžete.

### Při prezentaci vaší tvorby nebo jiného uměleckého příspěvku

* Poskytněte zdrojové soubory (.kra, .xcf, .blend atd.).
* Jasně uveďte licenci. (Možnosti viz [Licencování](Licensing).)
* Akceptujte kritiku a zjistěte, co lze udělat pro zlepšení vaší tvorby.
* Diskutujte s týmem, i když se na věci stále pracuje, abyste získali zpětnou vazbu.
* Ujasněte si, zda je váš příspěvek kompletní nebo rozpracovaný.

### Při tvorbě návrhů na vylepšování STK

Toto je citlivé téma. Samozřejmě musíme přijmout kritiku a návrhy – pokud ne, pak je to v rozporu s ideálem open source: že software je ku prospěchu všech. Ale kdy už je žádost příliš velká? Musíme také sledovat konflikty s ideálem open source: že každý by měl přispívat, kde je to možné. Když tedy přicházíte s návrhy pro STK, položte si prosím tyto otázky:

* Přispěl jsem už do projektu SuperTuxKart?
  * Může to být darování, vytváření objektů, tras, textur atd. Dokonce i doplňky pomáhají hře.
* Kdybych byl schopen udělat to, o co žádám, byl bych ochoten to udělat?
* Rozumím úsilí potřebnému k provedení tohoto úkolu?
* Vyjadřuji alespoň podporu týmu a práci, kterou dělají?
* Udělal jsem v poslední době hodně požadavků na funkce?
  * Může to znít přízemně, ale ve skutečnosti je to známkou toho, zda respektujete práci týmu. Pokud respektujete jejich práci, je mnohem méně pravděpodobné, že si budete stěžovat.
