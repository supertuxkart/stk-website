---
title: Wytyczne Tworzenia Tekstur
toc: true
---
Posiadanie dobrych tekstur jest najprawdopodobniej jedną z najważniejszych rzeczy podczas tworzenia prac w 3D. Nawet bardzo dobrze wymodelowany obiekt nieładnie ze złymi teksturami, z tego powodu ważnym jest używanie tekstur, które są zgodne z tymi wytycznymi.

## Styl

Tekstury w grze SuperTuxKart są ręcznie rysowane lub malowane, nie są to obrazy (zazwyczaj—chociaż możesz używać zdjęć jako odniesienia). Oczywiście nie oznacza to, że potrzebujesz fizycznych farb—możesz użyć programu graficznego takiego jak Krita. Inne aplikacje też są wymienione na stronie [Instalowanie Narzędzi](Installing_Tools).

Tekstury nie muszą być kompletnie wymyślone lub rysunkowe. Możesz dodawać wiele detali jak tylko używasz rysunku odręcznego (poza niektórymi wyjątkami podanymi poniżej). Po więcej informacji dotyczących rysowania tekstur sprawdź [najnowszą dokumentację Blender'a](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Kiedy użyć Zdjęć

W pewnych okolicznościach nie ma żadnej korzyści z rysowania tekstur. Kiedy ręczne rysowanie tekstury z detalami jest bardzo czasochłonne, tak jak na przykład w przypadku wegetacji, użycie prawdziwej fotografii może być wygodniejsze, pod warunkiem, że zdjęcie jest wystarczająco ogólne i utworzy wzoru kafelkowania. Przykłady poniżej:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Ten przypadek prezentuje interesujący przykład, ponieważ ta tekstura zawiera dobre i złe cechy. Liść palmowy jest dobrą teksturą (przezroczystość jest zapewniona przez maskę alfa) dzięki równomiernemu oświetleniu, braku innych detali oraz ogólnej naturze. Dodatkowo nie jest używana w miejscu gdzie mogłoby się zdarzyć kafelkowanie omówione poniżej. Tekstura pnia drzewa nie jest dobrą teksturą z powodu nierównomiernego oświetlenia. Używanie tej tekstury spowoduje powtarzające się czarne i białe paski—bardzo znaczący problem. Fakt, że tekstura pnia drzewa może być użyta z solidnym obiektem powoduje, że nie nadaje się z powodu potencjalnych problemów z kafelkowaniem.

Zdjęcia ogólnie nie powinny być używane z obiektami blisko  gracza ponieważ ich detale będą bardziej widoczne i będzie to oczywiste, że jest to tylko fotografia.

## Kolory i Oświetlenie

Tekstury w grze SuperTuxKart są kolorowe i kontrastujące ale nie mogą się zderzać. Bardzo jasne, neonowe/plastikowe/cukierkowe tekstury nie będą dodane do głównego repozytorium chyba, że będą używane tylko w małych obszarach takich jak znak startowy w XR591. Ta sama zasada zalicza się do tekstur, które składają się tylko z jednego koloru. Tekstury z czystą czernią lub czystą bielą też są odradzane—tracisz informację o kolorze gdy jest to 100% biały lub czarny.

Tekstury powinny być rysowane tak jakby kolor otoczenia oraz oświetlenie było neutralne. Silnik SuperTuxKart'a automatycznie zmieni balans kolorów oraz jasność w oparciu o oświetlenie na scenie oraz kolorowanie wierzchołków.

## Wzory

Nie powinien być od razu widoczny żaden wzór w teksturze. Oczywiste wzory sprawiają, że trasa lub gokart wygląda głupio. Przykład czego **nie** robić:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Inny problem pojawia się gdy tekstury nie posiadają żadnego wzoru. To jest głównym powodem, dla którego powinno się unikać używania fotografii jako tekstur:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Zauważ, że teksturowanie w Blenderze tworzy nieładny wzór kafelkowania, pomimo to, że tekstura sama w sobie nie posiada wzoru. Dzięki usunięciu niektórych detali oraz wygładzeniu krawędzi możesz uzyskać dużo lepszy rezultat, chociaż nie idealny:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detale tekstur

Staraj się unikać tworzenia tekstur z detalami, które nie są częścią materiału w rzeczywistości. Na przykład jeżeli chcesz zrobić linę wiszącą na ścianie ale nie chcesz używać siatki, nie twórz nowej tekstury tylko po to aby dodać linę na teksturze drewna. SuperTuxKart zawiera shader, który umożliwia wstawienie tekstury linii w drugą warstwę UV, dzięki temu będzie pojawiać się na teksturze drewna bez potrzeby sprawiania, że tekstura jest nieużywalna i innych aplikacjach. Po więcej informacji zobacz tą [stronę](Texturing#Decals).

## Ograniczenia Techniczne
* Wymiary obrazków powinny być potęgami dwójki. Teksturą ze standardową wielkością jest na przykład 1024 × 1024 lub  2<sup>10</sup> × 2<sup>10</sup>. Chociaż tekstury nie muszą być kwadratami, można mieć teksturę o wymiarach 1024 × 512 lub 2<sup>10</sup> × 2<sup>9</sup>.
* Nie używaj dużych tekstur dla małych obiektów—w ten sposób marnujesz pamięć RAM.
* Unikaj tworzenia bardzo małych tekstur (tj. 4x4 lub mniejszych), nawet dla prostych kolorów. Takie teksury mogą mieć nieoczekiwane rezultaty kiedy kompresja tekstur jest włączona w ustawieniach graficznych.
* Pliki tekstur **muszą** znajdować się w tym samym folderze co twój wyeksportowany obiekt.
* Tekstury powinny być w formacie PNG kiedy
    * Tekstura będzie używana w obiekcie znajdującym się niedaleko, który wymaga wysokich detali
    * Obiekt zawiera przezroczyste lub częściowo przezroczyste fragmenty
* Tekstury powinny być w formacie JPEG dla
    * Obiektów znajdujących się daleko
    * Tekstury nieba (czasami)
    * Map światła ambientowego
