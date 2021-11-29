---
title: Kontrola źródeł
toc: true
---
SuperTuxKart używa narzędzia Git dla kodu źródłowego i SVN dla danych, więc jeżeli nie masz tych narzędzi najpierw je zainstaluj. Możesz znaleźć instrukcje instalacji na dole strony.

## Rdzeń gry

Repozytorium z kodem źródłowym jest hostowane w serwisie [GitHub](https://github.com/supertuxkart/stk-code). Przykładowa komenda pobrania repozytorium:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Rozmiar to około 350 MB.

Dane są hostowane w serwisie SourceForge. Przykładowa komenda pobrania kopii repozytorium:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Rozmiar to około 700 MB.

Te dwa repozytoria powinny być pobrane do tego samego folder tak aby foldery `stk-code` i `stk-assets` były obok siebie.

## Repozytorium z multimediami

Repozytorium z multimediami **nie jest wymagane aby grać w grę**. Zawiera pliki źródłowe dla zasobów (pliki .blend, bezstratną muzykę i dźwięki, itd.) i jest przeznaczone dla artystów. Rozmiar to około 3.2GB.

Repozytorium z multimediami jest hostowane w serwisie SourceForge. Przykładowa komenda pobrania kopii repozytorium:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Zobacz [stronę Repozytorium z Multimediami](Media_Repo).

## Wytyczne

Wytyczne dla deweloperów, którzy mają dostęp zapisu do git/SVN:

* Dołącz do naszego kanału IRC lub Telegram (sprawdź stronę [Społeczność](Community)). Deweloperzy zazwyczaj pokazują tutaj nad czym pracują, dzięki temu istnieje mniejsza szansa na to, że dwie osoby będą pracowały nad tą samą rzeczą. Dodatkowo, rozmowy o błędach też odbywają się tutaj.
* Opłaca się też subskrybować listę mailingową supertuxkart-commit (sprawdź [Społeczność](Community)). Informacje o nowych zmianach w repozytorium są automatycznie wysyłane na ten adres więc zawsze będziesz wiedział co się dzieje oraz czy twoja praca koliduje z pracą innych osób.
* Wersja deweloperska powinna zawsze się kompilować. Mimo, że nie jest możliwe testowanie na każdej platformie próbuj pisać przenośny kod. Inni deweloperzy i testerzy zazwyczaj szybko wskażą (i naprawią) jakiekolwiek problemy.
* Często składaj zmiany. Częste składanie zmian ma tę zaletę, że działa jak kopia zapasowa i zmniejsza prawdopodobieństwo czasochłonnych konfliktów scalania.
* Próbuj uwzględnić wszystkie zmiany dotyczące jednej funkcji w jednym złożeniu zmian (tj. nie wysyłaj każdego pliku osobno) i próbuj nie mieszać kilku funkcji w jednym dużym złożeniu zmian.

## Instalowanie Narzędzia Git

### Linux
`sudo apt install git` lub odpowiednik w twojej dystrybucji.

### Windows
Zainstaluj [Git for Windows](https://github.com/git-for-windows/git/releases/latest). Jeżeli potrzebujesz graficznego interfejsu możesz wybrać ten, który ci odpowiada. Jeżeli nie wiesz, który wybrać możesz zainstalować [TortoiseGit](https://tortoisegit.org/download) po zainstalowaniu Git for Windows.

## Instalowanie Narzędzia SVN

### Linux
`sudo apt install subversion` lub odpowiednik w twojej dystrybucji.

### Windows
Jest możliwość wybierania pomiędzy wieloma klientami SVN więc możesz użyć tego, który ci odpowiada ale jeżeli nie wiesz, który wybrać możesz zainstalować [TortoiseSVN](https://tortoisesvn.net/downloads.html).
