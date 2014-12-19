Feature: I would like to edit beaches

  Scenario Outline: Insert records
    When I go to "/beach"
    Then I should not see "<beach>"
     And I follow "Create a new entry"
    Then I should see "Beach creation"
    When I fill in "Name" with "<beach>"
     And I fill in "Size" with "<size>"
     And I press "Create"
    Then I should see "<beach>"
     And I should see "<size>"

  Examples:
    |    beach                    | size   |
    | Example Praia do Cassino    | 212   |
    | Example 90 Mile Beach       | 151   |


  Scenario Outline: Edit records
    When I go to "/beach"
    Then I should not see "<new-beach>"
     And I follow "<old-beach>"
    Then I should see "<old-beach>"
    When I follow "Edit"
    When I fill in "Name" with "<new-beach>"
     And I fill in "Length" with "<new-size>"
     And I press "Update"
     And I follow "Back to the list"
    Then I should see "<new-beach>"
     And I should see "<new-size>"
     And I should not see "<old-beach>"

  Examples:
    |  old-beach                |    new-beach            | new-size   |
    | Example Praia do Cassino  | EDITED Praia do Cassino | 212        |



  Scenario Outline: Delete records
    When I go to "/beach"
    Then I should see "<beach>"
     And I follow "<beach>"
    Then I should see "<beach>"
    When I press "Delete"
     And I should not see "<beach>"

  Examples:
    |  river                      |
    | Example 90 Mile Beach       |
    | EDITED Praia do Cassino     |
