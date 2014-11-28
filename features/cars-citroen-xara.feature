Feature: Web pages

  Scenario: Cars/Citroen/Xara page
    Given I am on "/cars/citroen/xara.html"
     Then the response status code should be 200
     Then I should see "This is The Cars/Citroen/Xara page!"
