---
title: Wytyczne tworzenia modeli 3D
toc: true
---
Ważnym jest aby SuperTuxKart miał spójny styl obiektów. Ta strona jest analogiczna na wiele sposobów dla strony [wytyczne tworzenia tekstur](Texture_Guidelines).

## Styl

{% capture real_plam_tree -%}

Drzewo palmowe w rzeczywistości

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Bardzo kreskówkowy model drzewa palmowego

{%- endcapture -%}

{%- capture realistic -%}

Realistyczny ale uproszczony model

{%- endcapture -%}

Obiekty w grze SuperTuxKart powinny być realistycznej wielkości, kształtu oraz ogólnej formie. Mimo to obiekty nie powinny mieć tak dużo detali jak te prawdziwe. Weź to drzewo palmowe jako przykład:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Możesz zauważyć, że nowy model palmy bardziej przypomina prawdziwe drzewo palmowe. Mimo to, nie ma tyle detali żeby wyglądać bardzo realistycznie. W skrócie <u>zachowaj realizm w ogólnej formie ale próbuj zachować też rysunkowy wygląd unikając nadmiernych detali w kształcie lub w teksturze.</u>

Na przykład, jeżeli miałbyś zrobić betonowy mur, każdy wie jak on wygląda—najprawdopodobniej widzisz je codziennie kiedy idziesz do pracy. Więc otwierasz Blender i robisz coś takiego:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

Problemem jest to, że pomijasz wiele detali i z tego powodu obiekt jest zbyt uproszczony. Wygląda bardzo tanio i jeżeli wszystkie twoje obiekty będą tak wyglądać wynik końcowy nie będzie tak dobry jak mógłby być. Rozwiązaniem jest zebranie zdjęć, rysunków, pomysłów itd, które pomogą ci w procesie tworzenia obiektu. Tak, to trochę jak oszukiwanie ale ale jest to zalecane i dozwolone. Celem jest posiadanie odpowiedniej inspiracji. Ze zdjęciem takim jak [to](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), możesz zobaczyć wszystkie detale i odwzorować je w swoim obiekcie.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Czy widzisz dużą różnicę? Bariera jest ciekawa do oglądania, występuje tutaj dużo detali takich jak uchwyty, paski na dole itd. Nie jest fotorealistyczna ale chociaż mamy obiekt z interesującymi detalami, który mógłby być prawdziwą barierą. (Poza tym cel to nie bycie kompletnie realistycznym ale—tylko trochę realistycznym.)

## Zasady

* Wszystkie modele **MUSZĄ** być przyjazne dzieciom. SuperTuxKart powinien zgadzać się z [ESRB "Everyone"](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Modele powinny wyglądać dobrze same lub w grupie z innymi modelami.
* Modele z wysoką liczbą poligonów powinny używać strony [Poziom detali](Level_of_Detail).
* Dopóki twój obiekt może być oddzielony od trasy, obiekty powinny móc być używane w wielu różnych środowiskach dzięki czemu mogą być używane jako część biblioteki modeli.
    * Unikaj dodawania podłoża lub wegetacji dookoła twojego obiektu (chyba że twój obiekt jest sam czymś w rodzaju wegetacji).
    * Osoby głównie powinny nosić ubrania ogólnego użytku, z wyjątkiem przypadków kiedy nie ma to sensu jak na przykład na plaży.

## Liczba poligonów

Liczba poligonów to ilość powierzchni lub ścian, które obiekt 3D posiada. Starsze wersje Blendera wspierały tylko obiekty zrobione z prostokątów (czworokątów—kształtów posiadających cztery punkty) oraz trójkątów (kształtów posiadających trzy punkty). "Liczba poligonów" głównie oznaczała "ilość prostokątów". Jednakże teraz Blender wspiera kształty z dowolną ilością punktów i tylko dostarcza ilość powierzchni i trójkątów. Więc dzięki temu, że trójkąty nie zmieniają się (nigdy nie posiadają więcej punktów!) liczenie ich jest bardziej dokładne niż poligonów. Z tego powodu te wytyczne będą odnosić się do nich.

### Trochę historii

W dawnych czasach gier komputerowych nie było możliwe obliczanie idealnego oświetlenia dla wszystkich pikseli. Wszystkie zaawansowane obliczenia były wykonywane dla każdego wielokąta i potem interpolowane dla pikseli wewnątrz.

Jednak w dzisiejszych czasach nowoczesne silniki używają oświetlenia na piksel. Z tego powodu najbardziej zaawansowaną częścią nie jest vertex shader tylko pixel shader. Na przykład obiekt który posiada ~500 wielokątów, dla karty graficznej operacja na jednym wierzchołku to ~10 instrukcji (nie jest to prawdziwa liczba, jest tylko po to aby dać ci wskazówkę). Dla każdego wielokąta twojego modelu komputer wykona ~10 instrukcji więc 500 × 10 = 5000 instrukcji dla całej siatki.

Teraz część związana z pikselami. Jest to zależne od tego ile pikseli zajmuje twój obiekt ale weźmy najgorszy przypadek—załóżmy, że cały ekran jest wypełniony twoim obiektem. Obliczenie każdego piksela (oświetlenie, połysk, mapa normalnych, itd) zajmie ~50 instrukcji dla karty graficznej.

Jeżeli masz rozdzielczość 800 × 600 (większość ludzi ma wyższą rozdzielczość), 800 × 600 × 50 = 24,000,000 instrukcji. Więc nawet podwoisz liczbę warstw, nie wpłyniesz znacząco na zużytą moc obliczeniową. Jest to obliczane na piksel a nie na warstwę.

Z tego powodu, możemy zwiększyć liczbę wielokątów bez znaczących problemów. Mimo to jest ważne trzymanie tego pod kontrolą.

### Zliczanie Ilości Wielokątów

Blender wyświetla liczbę wielokątów na pasku statusu, sprawdź zrzut ekranu poniżej aby to włączyć jeżeli pole **Statystyki Sceny** nie jest zaznaczone naciskając prawym przyciskiem myszy na pasku statusu:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Szukaj informacji o liczbie **trójkątów**. To jest to czego potrzebujesz. Dodatkowo, pamiętaj, że liczba trójkątów w całej scenie jest tylko widoczna w trybie Object Mode.

### Przykłady Ilości Wielokątów

* Samolot transportowy: ~4000 trójkątów
* Drzewo palmowe z Poziomem Detali
    * Wysokim: 843 trójkątów
    * Średnim: 465 trójkątów
    * Niskim: 42 trójkąty
* Podstawowa roślina: 32 trójkąty
* Średnie drzewo: 1380 trójkątów
* Dynia: 470 trójkątów

### Oznaczanie obiektów jako obiekty z wysoką ilością detali

Jest możliwe oznaczenie obiektu tak aby wymagał mocniejszego komputera. Aby to zrobić otwórz dowolną scenę STK używając programu Blender, wybierz obiekt i zaznacz pole  **Enable geometry visibility details** na panelu **SuperTuxKart Object Properties**. Potem możesz ustawić  opcję **Visibility** na dowolną wartość aby zmienić minimalny poziom efektów graficznych, na którym twój obiekt będzie widoczny.

## Skalowanie

Obiekty muszą mieć odpowiednie proporcje tak aby nie wyglądały dziwnie w grze.

* Drzewo palmowe ma wysokość mniej więcej 27 jednostek programu Blender.
* Drewniane budynki w Północnym Kurorcie mają mniej więcej wysokość 8 jednostek programu Blender.
* Flagi z napisem Lampone w Mieście Candela mają wysokość 10 jednostek programu Blender.
