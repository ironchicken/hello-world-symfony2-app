Feature: I would like to edit channels

  Scenario Outline: Insert records
    When I go to "/channel"
    Then I should not see "<channel>"
     And I follow "Create a new entry"
    Then I should see "Channel creation"
    When I fill in "Channel" with "<channel>"
     And I fill in "Length" with "<length>"
     And I press "Create"
    Then I should see "<channel>"
     And I should see "<length>"

  Examples:
    |    channel              | length |
    | Example La Manche       |  98    |
    | Example North Channel   |  563   |


  Scenario Outline: Edit records
    When I go to "/channel"
    Then I should not see "<new-channel>"
     And I follow "<old-channel>"
    Then I should see "<old-channel>"
    When I follow "Edit"
    When I fill in "Channel" with "<new-channel>"
     And I fill in "Length" with "<new-length>"
     And I press "Update"
     And I follow "Back to the list"
    Then I should see "<new-channel>"
     And I should see "<new-length>"
     And I should not see "<old-channel>"

  Examples:
    |  old-channel      |    new-channel                  | new-length |
    | Example La Manche |  EDITED Saint George's Channel  | 154        |



  Scenario Outline: Delete records
    When I go to "/channel"
    Then I should see "<channel>"
     And I follow "<channel>"
    Then I should see "<channel>"
    When I press "Delete"
     And I should not see "<channel>"

  Examples:
    |  channel                      |
    | Example North Channel         |
    | EDITED Saint George's Channel |