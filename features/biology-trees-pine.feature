Feature: Web pages

  Scenario: Biology/Trees/Pine page
    Given I am on "/biology/trees/pine.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Pine page!"