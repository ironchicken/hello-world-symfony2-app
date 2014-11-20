Feature: Web pages

  Scenario: Biology/Flowers/Iris page
    Given I am on "/biology/flowers/iris.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Flowers/Iris page"