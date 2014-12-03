Feature: Navigating between screens

  Scenario: Moving from the 'Home' screen to the 'Events' screen
    Given I launch the app
    Then I should be on the Home screen

    When I navigate to "Events"
    Then I should be on the Events screen

  Scenario: Moving from the 'Home' screen to the 'Count Down' screen
    When I navigate to "Count Down"

  Scenario: Selecting schedule index item
    When I navigate to "Schedule"
    Then I should be on the Schedule screen
    Then I should see this schedule "Football | Millennium Stadium, Cardiff"

    When I scroll the table to the bottom
    Then I should see this schedule "19:30 - 22:30 | Closing Ceremony"
