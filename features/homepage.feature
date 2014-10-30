Feature: simple text homepage
  In order to see what tntracker is for 
  As a guest
  I want to see a description on the homepage

  Scenario: viewing the homepage
    When I am on the homepage
    Then I should see "tntracker"

  Scenario: who made this thing?
    When I am on the homepage
    Then I should see "Henry"

  Scenario: I want to see a sample track
    Given I am on the homepage
    When I follow "See a sample track"
    Then I should see "Sample track"
    
    
    