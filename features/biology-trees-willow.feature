Feature: Web pages

  Scenario: Biology/Trees/Willow page
    Given I am on "/biology/trees/willow.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Willow page!"