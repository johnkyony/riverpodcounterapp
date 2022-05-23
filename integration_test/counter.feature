Feature: Counter
  Scenario: Initial counter value is 0
    Given the app is running
    Then I see {'0'} text
    And I don't see {'1'} text
  Scenario: Plus button increases the counter
    Given the app is running
    When I tap {Icons.add} icon
    Then I see {'1'} text

  Scenario: Minus button decreases the counter
    Given the app is running
    When I tap {Icons.remove} icon
    Then  I see {'-1'} text

  Scenario: Reset button resets the counter
    Given the app is running
    When I tap {Icons.add} icon
    Then I see {'1'} text
    When I tap {Icons.lock_reset} icon
    Then I see {'0'} text