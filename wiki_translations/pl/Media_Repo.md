---
title: Repozytorium z Multimediami
display_title: true
---
**Repozytorium z multimediami** jest miejscem gdzie są wszystkie oryginalne pliki modeli 3D, tekstur, dźwięku i innych zasobów używanych w grze. Jest to wymagane, ponieważ te pliki są zbyt duże lub nawet niekompatybilne z grą, więc są kompresowane lub konwertowane zanim są dołączane do gry.

Repozytorium z multimediami ma też inne zastosowanie: używając go możesz zaimportować różne tekstury i obiekty do tras, które robisz. Polecamy umieścić plik projektu Blendera twojego gokarta/trasy/obiektu w osobnym folderze pod odpowiednią kategorią w twojej kopii repozytorium **tak jakby był częścią gry**, ponieważ Blender jest wrażliwy na strukturę plików.

### Instalowanie repozytorium multimediów

Zalecamy celować w wersję rozwojową STK, dzięki temu najprostszym sposobem pobrania repozytorium mediów jest przez klienta Subversion (SVN). Jeżeli jednak nie możesz zainstalować SVN, jest proste obejście tego problemu.

#### Najlepszy sposób: Zainstalowanie Subversion

Instrukcje instalacji Subversion znajdują się na stronie [Instalowanie narzędzi](https://supertuxkart.net/Installing_Tools#subversion-client). Kiedy jest już zainstalowane użyj poniższego adresu aby pobrać repozytorium:

* Jeżeli używasz graficznego programu (tj. TortoiseSVN) może zapytać się ciebie o adres URL repozytorium - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - oraz o folder gdzie ma zostać pobrane.
* W systemach operacyjnych Unix-like lub MacOS przykładowe polecenie do pobrania kopii repozytorium to: 

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Obejście: Ręczne pobranie snapshotu

{% start_liquid popup_info %}

To obejście jest bardzo proste i pobiera te same pliki i foldery ale nie będzie aktualizować plików gdy zmiany zostaną wprowadzone w repozytorium mediów. To oznacza, że jeżeli znaczące zmiany zostaną wprowadzone w repozytorium po tym jak je pobierzesz twoje projekty mogą wyglądać inaczej w nowszych wersjach lub nawet nie działać prawidłowo chyba, że pobierzesz repozytorium ponownie.

{% end_liquid %}

Odwiedź ten link, aby wygenerować snapshot i go pobrać: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Jeżeli pyta się ciebie czy wysłać zapytanie o ponowne pobranie repozytorium, zrób tak. Następnie zacznie pobierać najnowszą wersję plików z repozytorium mediów. Rozpakuj plik ZIP do folderu gdzie chcesz aby pliki repozytorium mediów się znajdowały. Gotowe!

Zmiany w repozytorium mediów są wprowadzane [dość często](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=) więc jeżeli chcesz pobrać nową wersję repozytorium, musisz zapisać swoje projekty w innym folderze, usunąć lokalne repozytorium mediów oraz zastąpić je pobraną wersją.
