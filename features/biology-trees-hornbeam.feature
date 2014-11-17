Feature: Web pages

  Scenario: Biology/Trees/Hornbeam page
    Given I am on "/biology/trees/hornbeam.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Hornbeam page!"