Feature: Web pages

  Scenario: Poems/Poe/Raven page
    Given I am on "/poems/poe/raven.html"
     Then the response status code should be 200
     Then I should see "This is The Poems/Poe/Raven page!"
