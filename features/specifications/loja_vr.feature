


Feature: Validação de tipo establishment

  Scenario: Validar JSON response contem typeOfEstablishment
    When I make a request to the API
    Then the response should contain the key "typeOfEstablishment"
    And I should print a random type of establishment