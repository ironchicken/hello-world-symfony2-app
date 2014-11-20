Feature: Web pages

  Scenario: Biology/Trees/Larch page
    Given I am on "/biology/trees/larch.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Trees/Larch page!"