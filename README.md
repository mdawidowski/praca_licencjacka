# Let's Bid It - portal aukcyjny

Autor: Marcin Dawidowski, nr indeksu 231010, rok 2017

## Słowa kluczowe

Ruby on Rails, gem, heroku, auction, online shopping, bid

## Wdrożenie aplikacji

Aplikację zobaczyć można na stronie [ror-aukcja.herokuapp.com](http://ror-aukcja.herokuapp.com)

## Streszczenie

Let's Bid It jest aplikacją do tworzenia aukcji i publikowania ich. W aplikacji wdrożono konta dla użytkowników oraz administratorów portalu. Poza tym zaimplementowano kategoryzację aukcji i tworzenie kategorii w hierarchii. Każda z aukcji wyświetlana jest w kolejności rosnącej według czasu zakończenia. Dodano również panel administracyjny i panel użytkownika, które są widoczne po zalogowaniu się na konkretny typ konta.

## Spis treści

1. Wstępi i opis problemu
  * Porównanie dostępnych rozwiązań
    + Allegro
    + eBay
    + OLX
  * Możliwości zastosowania praktycznego
    + portal aukcyjny
    + sklep internetowy
2. Projekt i analiza
  * aktorzy i przypadki użycia
  * diagram klas
  * diagram modelu danych
3. Implementacja
  * Ruby on Rails
  * Twitter Bootstrap
  * CKEditor
  * acts_as_tree
4. Bibliografia
  * repozytoria GitHub
  * książki
  * informacje zamieszczone w Internecie

## Wstęp

Spora popularność portali aukcyjnych, a także własne doświadczenie w korzystaniu z takich portali sprawiło, że dla mnie jako programisty stworzenie takiej aplikacji, byłoby niezwykle satysfakcjonujące i pozwoliłoby mi rozwinąć moje umiejętności. Ponadto stworzenie takiego portalu może ułatwić mi w przyszłości implementacje różnego rodzaju sklepów internetowych i innych serwisów związanych z handlem przez Internet.

5.Bibliografia

- Ruby. Przewodnik programisty wyd. II., David A. Black
- Ruby on Rails - Tworzenie aplikacji WWW, John Elder
- [w3schools.com/bootstrap/](https://www.w3schools.com/bootstrap/)
- [github.com/galetahub/ckeditor](https://github.com/galetahub/ckeditor)
- [github.com/amerine/acts_as_tree](https://github.com/amerine/acts_as_tree)
