Feature: Web pages

  Scenario: Biology/Flowers/Violet page
    Given I am on "/biology/flowers/violet.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Flowers/Violet page"