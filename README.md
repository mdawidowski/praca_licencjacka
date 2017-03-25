# Let’s Bid It – portal aukcyjny

Autor: Marcin Dawidowski, nr indeksu 231010, rok 2017

## Słowa kluczowe

Ruby on Rails, gem, heroku, auction, online shopping, bid

## Wdrożenie aplikacji

Aplikację zobaczyć można na stronie [ror-aukcja.herokuapp.com](http://ror-aukcja.herokuapp.com)

## Streszczenie

W pracy przedstawiono/opisano aplikację webowoą „Let's Bid It” do tworzenia aukcji i publikowania ich. 

... zaimplementowano kategoryzację aukcji i tworzenie kategorii w hierarchii, panel administracyjny i panel użytkownika, które są widoczne po zalogowaniu się na konkretny typ konta.

UX? Zaprojektwano ... Każda z aukcji wyświetlana jest w kolejności rosnącej według czasu zakończenia. 

Użyte technologie.

## Spis treści

1. Wstęp
   * (Motywacja)
   * Porównanie dostępnych rozwiązań
     + Allegro
     + eBay
     + OLX
   * Możliwości zastosowania praktycznego
     + portal aukcyjny
     + sklep internetowy
2. Projekt i analiza
   * Aktorzy i przypadki użycia
   * Diagram klas (gem erd, diagram modelu danych)
3. Implementacja
   * (Wprowadzenie)
   * Ruby on Rails
   * Twitter Bootstrap
   * CKEditor
   * acts_as_tree
4. Bibliografia
   * repozytoria GitHub
   * książki
   * informacje zamieszczone w Internecie

## Wstęp

... własne doświadczenie w korzystaniu z portali aukcyjnych^1 sprawiło, że dla mnie jako programisty stworzenie takiej aplikacji, byłoby niezwykle satysfakcjonujące i pozwoliłoby mi rozwinąć moje umiejętności. Ponadto stworzenie takiego portalu może ułatwić mi w przyszłości implementacje różnego rodzaju sklepów internetowych i innych serwisów związanych z handlem przez Internet.

Co udało się zrealizować?

## Bibliografia

- Ruby. Przewodnik programisty wyd. II., David A. Black
- Ruby on Rails - Tworzenie aplikacji WWW, John Elder
- [w3schools.com/bootstrap/](https://www.w3schools.com/bootstrap/)
- [github.com/galetahub/ckeditor](https://github.com/galetahub/ckeditor)
- [github.com/amerine/acts_as_tree](https://github.com/amerine/acts_as_tree)
