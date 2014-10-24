Feature: Web pages

  Scenario: Hello world page
    Given I am on "/home.html"

     Then print current URL
     Then print last response

     Then I dump the contents
     Then I should see "That's it my friend!"
