Feature: Web pages

  Scenario: Biology/Reptiles/Rattlesnake page
    Given I am on "/biology/reptiles/rattlesnake.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Reptiles/Rattlesnake page!"