Feature: Test being skipped when indentation is wrong
  As an example
  In order to show the issue
  I have two scenarios, one with proper indentation, and three with improper indentation

  Scenario: Scenario A
    When I visit the root path
    Then I should be greeted

  Scenario: Scenario B
    When I visit the root path
    Then I should be greeted

 Scenario: Scenario C
  When I visit the root path
  Then I should be greeted

   Scenario: Scenario D
     When I visit the root path
     Then I should be greeted

 Scenario: Scenario E
 When I visit the root path
 Then I should be greeted

  Scenario: Scenario F
    When I visit the root path
    Then I should be greeted

 Scenario: Scenario G
   When I visit the root path
   Then I should be greeted

   Scenario: Scenario H
     When I visit the root path
     Then I should be greeted

  Scenario: Improper indentation - steps aligned with scenario2
  When I visit the root path
  Then I should be greeted
