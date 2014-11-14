Feature: Web pages

  Scenario: Biology/Animals/Lion page
    Given I am on "biology/animals/lion.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Animals/Lion page!"
