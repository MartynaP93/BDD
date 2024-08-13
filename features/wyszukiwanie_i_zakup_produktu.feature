Feature: Wyszukiwanie i zakup produktu w sklepie internetowym

  Scenario: Wyszukiwanie i zakup produktu
    Given użytkownik znajduje się na stronie głównej sklepu internetowego
    When użytkownik wpisuje "nazwa produktu" w polu wyszukiwania
    And klika przycisk "Szukaj"
    Then użytkownik widzi listę produktów związanych z "nazwa produktu"
    When użytkownik wybiera produkt z listy
    And klika przycisk "Dodaj do koszyka"
    Then produkt jest dodany do koszyka
    When użytkownik klika ikonę koszyka
    Then użytkownik widzi wybrany produkt w koszyku
    When użytkownik klika przycisk "Przejdź do kasy"
    And wpisuje swoje dane do wysyłki i płatności
    And klika przycisk "Zamów i zapłać"
    Then użytkownik otrzymuje potwierdzenie zakupu z numerem zamówienia
    And użytkownik widzi komunikat "Dziękujemy za zakupy!"

  Scenario: Walidacja zamówienia w historii zakupów
    Given użytkownik jest zalogowany na swoje konto
    And użytkownik znajduje się na stronie głównej sklepu internetowego
    When użytkownik klika na swoje konto
    And wybiera opcję "Historia zakupów"
    Then użytkownik widzi listę swoich zamówień
    When użytkownik znajduje zamówienie z "nazwa produktu"
    Then użytkownik widzi szczegóły zamówienia
    And szczegóły zamówienia zawierają poprawne dane produktu, ceny i statusu zamówienia
