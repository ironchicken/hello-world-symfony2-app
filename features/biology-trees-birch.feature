Feature: Web pages

  Scenario: Biology/Trees/Birch page
    Given I am on "/biology/trees/birch.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Birch page!"
