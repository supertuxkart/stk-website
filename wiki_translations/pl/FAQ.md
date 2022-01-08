---
title: FAQ
---
{% start_liquid main_title %}

Pytania Ogólne

{% end_liquid %}

{% start_liquid qa %}

Co to jest SuperTuxKart?

SuperTuxKart to gra 3D o wyścigach gokartów. Celuje w zabawę dla graczy z różnym poziomem umiejętności. W grze można znaleźć skrzynki dające losowe przedmioty, nitro, driftowanie i wiele więcej. Realizm nie jest głównym celem.

STK oferuje tryb online dla wielu graczy, tryb wieloosobowy w sieci LAN oraz tryb jednoosobowy, w którym ścigasz się przeciwko komputerowi ze zwykłymi wyścigami lub trybem fabularnym. W trybie fabularnym możesz odblokować nowe gokarty i trasy. Gra zawiera także tryb Grand Prix, w którym musisz zebrać najwięcej punktów w kilku wyścigach.

21 tras dostępnych w grze zabierze cię różnorodne miejsca. Od plaż na słonecznych wyspach po głębiny starej kopalni, od ulic Miasta Candela po spokojne wiejskie drogi, od statku kosmicznego po wysokie góry. Masz wiele do odkrycia.

Gra zawiera także dodatkowe tryby gry poza zwykłymi wyścigami: Czasówka, Śledź lidera, Piłka nożna, Zdobądź flagę i dwa rodzaje Bitwy.

[Dowiedz się więcej tutaj](Discover)!

{% end_liquid %}

{% start_liquid qa %}

Kto rozwija grę SuperTuxKart?

Zobacz stronę o naszym [Zespole](Team) aby dowiedzieć się o osobach rozwijających grę!

{% end_liquid %}

{% start_liquid qa %}

Jakie są wymagania sprzętowe?

**Karta graficzna**

Karta graficzna jest zazwyczaj ograniczeniem wydajności. Karty spełniające minimalne wymagania mają wsparcie dla wersji OpenGL wymaganej aby uruchomić grę ale wymagają niskiej rozdzielczości i ustawień graficznych dla płynnej rozgrywki. Karty spełniające lub przekraczające zalecane wymagania mogą uruchomić najbardziej wymagające trasy w grze w 60 FPS i rozdzielczością 1080p używając nowoczesnego OpenGL'a na 4 poziomie ustawień graficznych.

* **Zalecane**: Karta graficzna NVIDIA GeForce GTX 950, AMD Radeon RX 460 lub mocniejsza; Przynajmniej 1 GB VRAM (pamięci video).
* **Minimalne**: Karta graficzna NVIDIA GeForce 470 GTX, AMD Radeon 6870 HD lub Intel HD Graphics 4000; Przynajmniej 512 MB VRAM (pamięci video).

**Procesor**

Wydajność procesora może być ograniczeniem w zależności od karty graficznej lub jej ustawień, głównie dla gry online, która bardziej obciąża procesor. Dobra wydajność procesora pomaga zapewnić wysoką liczbę klatek na sekundę i co najważniejsze płynność gry. W przypadku STK najważniejsza jest wydajność pojedynczego wątku.

* **Zalecane**: Wydajność jednego wątku Core i5-2400 lub wyższa. Obejmuje to procesory desktopowe AMD Ryzen, większość procesorów desktopowych Intela produkowanych od 2012 roku oraz najnowsze procesory mobilne średniej i wysokiej klasy.
* **Minimalne**: Jakikolwiek procesor Intela lub AMD posiadający dwa rdzenie. Bardzo stare modele lub procesory mobilne z niskim taktowaniem mogą mieć problemy zwłaszcza w grze online.

**Inne wymagania**

* Przynajmniej 1 GB wolnej pamięci RAM
* Miejsce na dysku: 700MB

**Opcjonalne**

* (Jeżeli preferujesz granie używając kontrolera) Kontroler z co najmniej 6 przyciskami.

{% end_liquid %}

{% start_liquid qa %}

Mój komputer jest zbyt stary aby uruchomić grę SuperTuxKart. Co powinienem zrobić?

Możesz spróbować uruchomić grę. STK posiada render, który używa OpenGL 2.1 / GLES 2 / DirectX 9 i powinien działać na większości urządzeń ale nie posiada nowoczesnego potoku renderowania.

{% end_liquid %}

{% start_liquid qa %}

Jaka jest historia gry SuperTuxKart?

Na początku był [TuxKart](http://tuxkart.sourceforge.net). Praca nad nim odbywała się (w przybliżeniu) pomiędzy kwietniem 2000 i marcem 2004. W czerwcu 2004 projekt 'Game of the Month' strony internetowej [Linux Game Tome](https://web.archive.org/web/20040915081722/http://www.happypenguin.org/) zdecydował ulepszyć TuxKart'a. Odbyło się to pomiędzy czerwcem i grudniem 2004. (Większość linków do stron na forum nie działa, tutaj znajdują się ich zarchiwizowane wersje [[1]](https://web.archive.org/web/20041109144934/http://www.happypenguin.org/forums/viewtopic.php?t=1407) [[2]](https://web.archive.org/web/20120607000453/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=15&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[3]](https://web.archive.org/web/20120606235857/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=30&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[4]](https://web.archive.org/web/20120607000143/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=45&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[5]](https://web.archive.org/web/20120607000320/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=60&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[6]](https://web.archive.org/web/20120606235853/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=75&sid=e3789fa7035b89cbfc1ab2aa6366033c). Niestety projekt zakończył się dużym nieporozumieniem i zostało postanowione aby zachować postęp jako "SuperTuxKart". Mimo, że zostało zrobionych trochę usprawnień graficznych, kod źródłowy był niestabilny i praktycznie niegrywalny. Nikt nie pracował nad (Super)TuxKart'em kilka lat. 

W 2006 Joerg Henrichs (a.k.a. "Hiker") wziął kod SuperTuxKart'a, naprawił wyróżniające się błędy oraz problemy z wydajnością bez angażowania oryginalnego autora czy projektu Game of the Month. Z pomocą "Coz", pierwsze wydanie STK zostało ukończone we wrześniu 2006.

W maju 2007 została wydana wersja 0.3. Dodała listy rekordów, nową trasę (Wyspa), bombę, wsparcie dla MacOSX oraz wsparcie dla OpenAL.

W lutym 2008 została wydana wersja 0.4. Dodała wsparcie dla Bullet Physics w celu poprawienia fizyki w grze. "Auria" dołączyła do projektu i zaczęła ulepszać trasy (Ruchome piaski, Dookoła latarni morskiej).

W maju 2008 wydano wersję 0.5. Zawierała wiele poprawionych tras, wyzwania, tryb Śledź lidera oraz więcej tłumaczeń (możliwość wykrywania języka systemu i dopasowywanie najbliższego tłumaczenia).

Wersja 0.6 została wydana 22 stycznia 2009. Znacznie poprawiła rozgrywkę; lepsza fizyka wraz z nitrem i driftowaniem. System dźwięku także został ulepszony, zostało dodane więcej interesującej muzyki, tras i gokartów. W tej wersji dodano też pierwszą arenę do trybu Walka 3 walnięć oraz nowe przedmioty.

Wersja 0.7 została wydana 20 grudnia 2010. Zawierała kilka znacznych ulepszeń m.in. nowy silnik renderowania 3D, używanie biblioteki Irrlicht, nowy interfejs graficzny, (GUI) animacje tras i gokartów, nowe trasy, gokarty i przedmioty oraz wsparcie dla skrótów i alternatywnych dróg. Wersje 0.7.1, 0.7.2, 0.7.3 zostały wydane niedługo później z większą ilością usprawnień.

Wersja 0.8 została wydana w grudniu 2012. Dodała tryb fabularny oraz nowe wyzwania, ulepszone AI oraz driftowanie, wsparcie dla przeciwnego kierunku, nowe trasy i muzykę. Interfejs też został ulepszony. Później została wydana wersja 0.8.1, w której zostały dodane nowe trasy, tryb Piłka nożna oraz Polowanie na pisanki oraz inne poprawki grafiki i rozgrywki.

W 2015 została wydana wersja 0.9, zawierająca wiele zmian, najważniejszą z nich jest nowy silnik Antarctica, dodający wsparcie dla zaawansowanych funkcji graficznych, które byłby niemożliwe we wcześniejszych wersjach: dynamiczne oświetlenie, renderowanie instancyjne (pozwalające na większą ilość wegetacji) i wiele więcej. Po 0.9 zostały wydane trzy wersje poprawkowe, które dodały dodatkowe funkcjonalności oraz nowe trasy.

W kwietniu 2019 została opublikowana wersja 1.0, która po raz pierwszy dodała wsparcie dla trybu wieloosobowego online. Poza tą znaczącą zmianą, dodano i poprawiono trasy, dodano poziom trudności SuperTux w trybie fabularnym, poprawki balansujące rozgrywkę i wiele ulepszeń i poprawek.

Hiker oficjalnie ogłosił swój wybór opuszczenia projektu po prowadzeniu go przez 13 lat. Auria również zrezygnowała ze swojej roli współprowadzącej ale pozostała w zespole.

Prowadzącym projekt został Benau, który znacząco wnosił wkład w kod źródłowy od roku 2017 oraz Alayan, znaczący współpracownik przy pracy nad wersją 1.0. Deveee, ważny współpracownik od kilku lat, który jest odpowiedzialny za wersję na system Android pozostał w zespole.

W styczniu 2020 została wydana wersja 1.1. Rozgrywka nie została zmieniona, ponieważ wszystkie wersje 1.x są kompatybilne. Znaczącymi zmianami w tej wersji jest poprawiony kod trybu online oraz znaczące poprawki interfejsu graficznego zwłaszcza dla dużych rozdzielczości. Poza tym poprawiono wiele błędów i usprawniono wiele funkcjonalności.

Wersja 1.2 została wydana w sierpniu 2020. Poprawiła wsparcie dla kontrolerów dzięki użyciu SDL2, który wspiera przełączanie bez restartu aplikacji oraz mapowanie kontrolerów.

We wrześniu 2021 została wydana najnowsza wersja 1.3. Zawiera usprawnienia dla wielu gokartów.

Aby dowiedzieć się więcej, zobacz stronę  [changelog](https://github.com/supertuxkart/stk-code/blob/master/CHANGELOG.md), [posty na blogu](https://blog.supertuxkart.net) lub listę naprawionych błędów na GitHubie STK.

{% end_liquid %}

{% start_liquid qa %}

Czy SuperTuxKart to klon Mario Kart?

Nie! Seria gier Mario Kart jest najbardziej znana z gier o wyścigach gokartów ale jest też wiele innych gier tego typu.

Niektóre bardzo stare wersje STK próbowały odwzorowywać Mario Kart ale tak już nie jest od dawna. Czasem szukamy w nim inspiracji tak samo jak robimy to z innymi grami o gokartach ale to tylko to.

Nie tylko istnieje wiele różnic w rozgrywce, dodatkowo SuperTuxKart rozwija się w swoim kierunku i nie staramy się aby był podobniejszy do Mario Kart.

{% end_liquid %}

{% start_liquid qa %}

Chciałbym pomóc! Co mogę zrobić?

Najpierw zobacz stronę [Zaangażuj się](Community). Powinna zawierać wszystkie informacje, których potrzebujesz aby zacząć programować, modelować lub projektować cokolwiek chcesz.

Zanim zaczniesz powinieneś skontaktować się z deweloperami oraz artystami za pomocą [IRC](https://web.libera.chat/?channels=#supertuxkart), [Kanału Telegram](https://t.me/STKInternational) lub [forum](https://forum.freegamedev.net/viewforum.php?f=16) i powiedzieć co chcesz osiągnąć. W ten sposób znacznie zwiększysz szanse na to, że twoja praca zostanie zaakceptowana.

{% end_liquid %}

{% start_liquid main_title %}

Pytania Dotyczące Rozgrywki

{% end_liquid %}

{% start_liquid qa %}

SI (gokart sterowany przez komputer) strzela do tyłu—w jaki sposób mogę to zrobić?

Większość przedmiotów (kula do kręgli, tort, przepychaczka) może zostać wystrzelone do tyłu, po prostu wystrzel je patrząc się do tyłu.

{% end_liquid %}

{% start_liquid qa %}

Czy SI oszukuje?

Nie!

Limit prędkości oraz przyspieszenie jest dokładnie takie samo dla każdego gokarta, czy jest to SI lub człowiek. W niższych poziomach trudności SI czasem nawet celowo zwalnia. Prawdopodobieństwo otrzymywania przedmiotów podczas zbierania bonusów także jest identyczne. Występują nieznaczne różnice w prędkości zmieniania kierunku ale to nie daje znaczącej przewagi dla SI i nie jest tego celem.

SI czasem ma idealny refleks używając przedmiotów jednak człowiekowi też może udać się osiągnąć ten sam rezultat naciskając odpowiedni przycisk w odpowiednim momencie. Dodatkowo można łatwo przechytrzyć graczy sterowanych przez komputer.

Jeżeli masz kłopoty z pokonaniem SI, skup się na poprawianiu swoich umiejętności prowadzenia tak aby jak najmniej zderzać się z otoczeniem podczas szybkiej jazdy oraz nauczyć się ślizgania. Na wyższych poziomach trudności ta umiejętność jest niezbędna aby wygrać z graczami sterowanymi przez komputer.

{% end_liquid %}

{% start_liquid qa %}

Czy mogę grać w STK przez internet?

Tak! Po utworzeniu konta online w grze i zalogowaniu się na nie naciśnij przycisk "Online" w menu głównym, później wybierz "Sieć globalna" aby zagrać w tryb wieloosobowy przez internet. Możesz hostować swój własny serwer aby grać z innymi lub dołączyć do serwerów hostowanych przez społeczność. Dla dobrej rozgrywki ważne jest stabilne połączenie oraz niskie opóźnienie połączenia z serwerem.

{% end_liquid %}

{% start_liquid qa %}

Dlaczego niektóre przyciski na klawiaturze nie działają kiedy są naciskane jednocześnie?

Podczas gry za pomocą klawiatury, możesz doświadczyć problemów podczas naciskania kilku przycisków jednocześnie, na przykład używanie nitro podczas przyśpieszania i skręcania. W takich sytuacjach niektóre naciśnięcia mogą nie być rejestrowane. Jednak nie jest to błędem gry SuperTuxKart ale ograniczenie twojej klawiatury, większość klawiatur może obsłużyć niewiele przycisków jednocześnie (po więcej informacji sprawdź ten [atrykuł](https://www.sjbaker.org/wiki/index.php?title=Keyboards_Are_Evil)). Rozwiązaniem jest użycie urządzenia przystosowanego do grania (kontroler albo klawiatura do gier) lub dostosować ustawienia sterowania tak aby używać przycisków, które twoja klawiatura jest w stanie obsłużyć w tym samym momencie.

{% end_liquid %}

{% start_liquid qa %}

Mam dziwne problemy ze sterowaniem

To może dotyczyć sytuacji gdy gokart porusza się w lewo, losowego hamowania lub innych podobnych sytuacji gdy gra myśli, że nacisnąłeś przycisk ale tego nie zrobiłeś. Jeżeli zdarzy się to spróbuj wejść do ustawień i sprawdź czy w zakładce Sterowanie występują jakieś kontrolery. Spróbuj wyłączyć wszystkie kontrolery poza tym, którego używasz. Czasami losowe sterowanie zdarza się to z powodu kontrolerów lub innych urządzeń, które system wykrywa jako kontroler.

{% end_liquid %}

{% start_liquid qa %}

Nagle na moim ekranie pojawiło się duże czerwone kółko, co to jest?

Jeżeli na środku kółka znajduje się pingwin, ktoś wystrzelił przepychaczkę w twoim kierunku. Możesz zrobić to samo innym strzelając nią do tyłu (sprawdź wpis w FAQ na temat strzelania do tyłu).

{% end_liquid %}

{% start_liquid qa %}

Czy mogę użyć pilota Wii z STK?

Tak! Zobacz stronę [Wiimote](Wiimote).

{% end_liquid %}

{% start_liquid main_title %}

Pytania Techniczne

{% end_liquid %}

{% start_liquid qa %}

Znalazłem błąd, w jaki sposób mogę się skontaktować?

Na początek sprawdź [stronę z błędami STK](https://github.com/supertuxkart/stk-code/issues) i zgłoś błąd jeżeli nikt nie zrobił tego wcześniej.

{% end_liquid %}

{% start_liquid qa %}

Gdzie znajduje się konfiguracja?

* W systemie **Windows**: znajduje się w `%APPDATA%/supertuxkart/config-0.10` (możesz wpisać tą ścieżkę w Eksplorator plików).
* W systemie **Linux**: znajduje się w `$XDG_CONFIG_HOME/supertuxkart/config-0.10` (pierwszy wybór), `~/.config/supertuxkart/config-0.10` (drugi wybór) lub `~/.supertuxkart/config-0.10` (trzeci wybór).
* W systemie **macOS**: znajduje się w  `~/Library/Application Support/supertuxkart/config-0.10`. Jest możliwość, że ten katalog będzie ukryty.

Możesz też sprawdzić informacje w terminalu i zobaczyć czy jest tam wzmianka o miejscu zapisu plików konfiguracyjnych lub wyszukać pliku "config.xml".

{% end_liquid %}

{% start_liquid qa %}

Wersja Git nie kompiluje się. Co powinienem zrobić?

Czasami się to zdarza; Deweloperzy powinni o tym wiedzieć i powinno to zostać niedługo naprawione. Jeżeli [GitHub Actions](https://github.com/supertuxkart/stk-code/actions) pokazuje, że aktualna wersja Git kompiluje się, najprawdopodobniej jest coś nie tak z twoim kompilatorem (Sprawdź czy masz wszystkie zależności, uruchom ponownie CMake, ...)

{% end_liquid %}

{% start_liquid qa %}

W jaki sposób mogę odblokować wszystkie trasy?

Zamierzonym sposobem jest zagranie w tryb fabularny i wygranie wszystkich wyzwań.

Jednak jeżeli chcesz odblokować wszystko bez grania w tryb fabularny, możesz to zrobić edytując plik konfiguracyjny. Otwórz folder wspomniany w sekcji "Gdzie znajduje się konfiguracja?". Otwórz folder "config-0.10" i edytuj plik "players.xml". Zamień wszystkie wystąpienia "none" na "hard" (lub "easy" lub "medium", wskazując najwyższy poziom trudności z jakim ukończyłeś wyzwanie).

{% end_liquid %}
