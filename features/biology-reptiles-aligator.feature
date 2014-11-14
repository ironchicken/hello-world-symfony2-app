Feature: Web pages

  Scenario: Biology/Animals/Aligator page

    Given I am on "/biology/animals/aligator.html"
     Then the response status code should be 200
     Then I should see "This is The Biology/Animals/Aligator page!"