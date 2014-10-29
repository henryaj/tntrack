Feature: simple text homepage
  In order to see what tntracker is for 
  As a guests
  I want to see a description on the homepage

  Scenario: viewing the homepage
    When I am on the homepage
    Then I should see "tntracker"

  Scenario: who made this thing?
    When I am on the homepage
    Then I should see "Henry"
    When I follow "Henry"
    Then I should be on "http://henrystanley.com"

  
  
  

  
