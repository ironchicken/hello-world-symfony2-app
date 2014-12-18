Feature: I would like to edit caves

  Scenario Outline: Insert records
    When I go to "/cave"
    Then I should not see "<cave>"
     And I follow "Create a new entry"
    Then I should see "Cave creation"
    When I fill in "Name" with "<cave>"
     And I fill in "Length" with "<length>"
     And I press "Create"
    Then I should see "<cave>"
     And I should see "<length>"

  Examples:
    |    cave                   | length |
    | Example The Mamoth Cave   | 651    |
    | Example The Jewel Cave    | 271    |


  Scenario Outline: Edit records
    When I go to "/cave"
    Then I should not see "<new-cave>"
     And I follow "<old-cave>"
    Then I should see "<old-cave>"
    When I follow "Edit"
    When I fill in "Name" with "<new-cave>"
     And I fill in "Length" with "<new-length>"
     And I press "Update"
     And I follow "Back to the list"
    Then I should see "<new-cave>"
     And I should see "<new-length>"
     And I should not see "<old-cave>"

  Examples: 
    |  old-cave                |    new-cave          | new-length |
    | Example The Mamoth Cave  | EDITED The Wind Cave | 226       |



  Scenario Outline: Delete records
    When I go to "/cave"
    Then I should see "<cave>"
     And I follow "<cave>"
    Then I should see "<cave>"
    When I press "Delete"
     And I should not see "<cave>"

  Examples:
    |  cave                  |
    | Example The Jewel Cave |
    | EDITED The Wind Cave   |
