Feature: Web pages

  Scenario: Biology/Flowers/Tulip page
    Given I am on "/biology/flowers/tulip.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Flowers/Tulip page"