Feature: Web pages

  Scenario: Cars/Fiat/Siena page
    Given I am on "/cars/fiat/siena.html"
     Then the response status code should be 200
     Then I should see "This is The Cars/Fiat/Siena page!"
