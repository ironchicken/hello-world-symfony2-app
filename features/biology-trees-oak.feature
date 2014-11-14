Feature: Web pages

  Scenario: Biology/Trees/Oak page
    Given I am on "/biology/trees/oak.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Oak page!"