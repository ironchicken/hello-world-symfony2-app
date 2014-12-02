Feature: Web pages

  Scenario: Geography/Continents/Asia page
    Given I am on "geography/continents/asia.html"
     Then the response status code should be 200
     Then I should see "This is The Geography/Continents/Asia page!"
