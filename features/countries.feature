Feature: I would like to edit countries

  Scenario Outline: Insert records
    When I go to "/country"
    Then I should not see "<country>"
     And I follow "Create a new entry"
    Then I should see "River creation"
    When I fill in "Name" with "<country>"
     And I fill in "Length" with "<area>"
     And I press "Create"
    Then I should see "<country>"
     And I should see "<area>"

  Examples:
    |    country        | area   |
    | Example Poland    | 312679 |
    | Example Germany   | 357168 |


  Scenario Outline: Edit records
    When I go to "/country"
    Then I should not see "<new-country>"
     And I follow "<old-country>"
    Then I should see "<old-country>"
    When I follow "Edit"
    When I fill in "Name" with "<new-country>"
     And I fill in "Length" with "<new-area>"
     And I press "Update"
     And I follow "Back to the list"
    Then I should see "<new-country>"
     And I should see "<new-area>"
     And I should not see "<old-country>"

  Examples:
    |  old-country      |    new-country    | new-area |
    | Example Poland    |  EDITED France    | 640679   |



  Scenario Outline: Delete records
    When I go to "/country"
    Then I should see "<country>"
     And I follow "<country>"
    Then I should see "<country>"
    When I press "Delete"
     And I should not see "<country>"

  Examples:
    |  river           |
    | Example Germany  |
    | EDITED France    |