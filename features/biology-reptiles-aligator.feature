Feature: Web pages

  Scenario: Biology/Reptiles/Aligator page
    Given I am on "/biology/reptiles/aligator.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Reptiles/Aligator page!"