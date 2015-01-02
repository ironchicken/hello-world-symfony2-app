Feature: Web pages

  Scenario: Homepage
    Given I am on homepage
#      And I dump the contents
     Then the response status code should be 200
     Then I should see "Lorem ipsum dolor sit amet..."