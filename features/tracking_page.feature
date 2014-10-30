Feature: show tracking status of a package
  In order to see the tracking status of a package
  As a guest
  I want to visit a URL and see the status

  Scenario: on the tracking status page
    Given I am on the status page for package 922648777
    Then I should see "Tracking results"
    And I should see "Live at" and the current time
    And I should see "Shipment Delivered In Good Condition"
  
  
  

  
