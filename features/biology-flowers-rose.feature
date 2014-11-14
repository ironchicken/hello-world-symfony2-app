Feature: Web pages

  Scenario: biology/flowers/rose page
    Given I am on "/biology/flowers/rose.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Flowers/Rose page"