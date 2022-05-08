@TestScenario @WizardsMagicWheel @GamePlayTime
Feature: Wizards Magic Wheel - Game Play Time
  Verification of Game Play Time according to the operator requirements

  Scenario: Мinimum game play time
    Given Measure timer is reseted
    And the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 6,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                      |
      | Play the game round to the end and after that click OK on the popup wiindow |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Non winning scenario
    Given Measure timer is reseted
    And the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 0,'scenario_id': 2895}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                      |
      | Play the game round to the end and after that click OK on the popup wiindow |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Winning lowest price scenario
    Given Measure timer is reseted
    And the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 25,'scenario_id': 2}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                      |
      | Play the game round to the end and after that click OK on the popup wiindow |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Demo mode
    Given Measure timer is reseted
    And the Game "Bet" screen is opened
      | gameName            | operator      | demo | currency | session | language | game | show_debug_values |
      | Wizards Magic Wheel | Norse Tipping | demo | EUR      |         |          |      | true              |
    When enter cheat "MATH:{'tier_id': 10,'scenario_id': 2}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                      |
      | Play the game round to the end and after that click OK on the popup wiindow |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  @notImplemented
  Scenario: Auto play mode
    Given Measure timer is reseted
    And the Game "Bet" screen is opened
      | gameName            | operator      | demo | currency | session | language | game | show_debug_values |
      | Wizards Magic Wheel | Norse Tipping | demo | EUR      |         |          |      | true              |
    When enter cheat "MATH:{'tier_id': 10,'scenario_id': 2}" and preserve "no"
    And user make an action
      | action                          |
      | Open the game in Auto Play mode |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well
