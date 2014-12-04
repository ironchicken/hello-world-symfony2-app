Feature: Web pages

  Scenario: Geography/Rivers/Nile page
    Given I am on "/geography/rivers/nile.html"
    Then the response status code should be 200
    Then I should see "This is The Geography/Rivers/Nile page!"