Chęć stworzenia czegoś od podstaw oraz własne doświadczenie w korzystaniu
z portali aukcyjnych sprawiło, że dla mnie jako programisty stworzenie takiej
aplikacji, byłoby niezwykle satysfakcjonujące i pozwoliłoby rozwinąć umiejętności.
Ponadto stworzenie takiego portalu może ułatwić mi w przyszłości implementacje
różnego rodzaju sklepów internetowych i innych serwisów związanych z handlem
przez Internet.

Mając więc gotowy pomysł na projekt pozostało mi jedynie wybrać odpowiednią
technologię, która pomoże mi go zrealizować. W trakcie studiów poznałem kilka
różnych języków programowania i frameworków, które sprawdziłyby się w tego
typu projekcie. Po rozważeniu wszystkich za i przeciw, mój wybór padł na język
Ruby, wspierany przez framework Rails, który udało mi się poznać już wcześniej.
Największą zaletą wybranej przeze mnie technologi jest przede wszystkim fakt,
iż Ruby on Rails posiada szeroką gamę dostępnych rozwiązań w postaci gemów,
które w dużym stopniu ułatwiają pracę nad projektem. Kolejną kwestią jest fakt,
że technologia ta wykorzystuje architekturę MVC, co znacznie ułatwia pracę. Poza
tym Ruby on Rails świetnie współpracuje z platformami takimi jak Heroku, czy
DigitalOcean.

Aplikacja Let’s Bid It jest wersją rozwojową portalu aukcyjnego, dlatego też nie
posiada jeszcze wszystkich funkcjonalności, które pozwoliłyby w pełni wykorzystać
potencjał serwisu.

Spośród rzeczy, które udało się zrealizować, mogę wyróżnić przede wszystkim
obsługę aukcji. Ponadto zaimplementowano ich kategoryzację przy pomocy gemu
ActsAsTree. Kolejną rzeczą jest wdrożenie zaawansowanego edytora tekstowego
CKEditor, dzięki któremu dodając aukcję, użytkownik może swobodnie manipulować
jej opisem. Dodatkowo zaimplementowałem zabezpieczenie reCAPTCHA przy
logowaniu i rejestracji, a także statystyki strony, które dostępne są dla administratorów.
Ważnym elementem Let’s Bid It jest również grafika dołączana do każdej aukcji. W
związku z tym, że aplikacja znajduje się na platformie Heroku, głównym problemem
było przetrzymywanie plików graficznych, które na Heroku usuwane są automatycznie.

Rozwiązaniem tego problemu okazało się skorzystanie z serwisu Cloudinary, który
pozwala bezpłatnie przechowywać pliki w chmurze, a co najważniejsze, możliwe
jest skonfigurowanie go tak, by współpracował z aplikacją napisaną w Ruby on
Rails, w czym pomocny okazał się gem Cloudinary.
Najważniejszą rzeczą, której nie udało się zrealizować jest wdrożenie systemu
mającego na celu symulacje płatności internetowych, a także zaawansowana wyszukiwarka
opierająca się na silniku Elasticsearch.
