@TestScenario @WizardsMagicWheel @MainScreen
Feature: Wizards Magic Wheel - Main Screen
  Verification of Main Game screen according to the game requirements

  Scenario: Main Game screen elements
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    Then on game screen the following is happening
      | verification                                                                                                          |
      | Verify that: on screen is displayed prize table with six different win symbols and Extra Play symbol for each of them |
    And on game screen the following is happening
      | verification                                                                                        |
      | Verify that: on screen are displayed six prize flags in different colors and with moving animations |
    And on game screen the following is happening
      | verification                                                                              |
      | Verify that: on screen are displayed four flags in different colors for additional prizes |
    And on game screen the following is happening
      | verification                                                   |
      | Verify that: on screen is displayed Wizards Magic Wheel (Logo) |
    And on game screen the following is happening
      | verification                                                                                       |
      | Verify that: on screen is displayed wheel and spin button in the center with zoom In-Out animation |
    And on game screen the following is happening
      | verification                                           |
      | Verify that: on screen is displayed Plays Left counter |
    And on game screen the following is happening
      | verification                                         |
      | Verify that: there is a wizard with moving animation |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Symbol win animations
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 6,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                              |
      | Spin the wheel and verify for Symbol win animations |
    Then on game screen the following is happening
      | verification                                                                                            |
      | Expected result: In case of Symbol win there are symbol glow and symbol flag animations for that symbol |

  Scenario: Instant win animations
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 10,'scenario_id': 2}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                            |
      | Spin the wheel and verify for win animations of FLAGS with HEARTS |
    Then on game screen the following is happening
      | verification                                                                    |
      | Expected result: In case of Heart win there are animations of FLAGS with HEARTS |

  Scenario: Extra Play win animations
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 3,'scenario_id': 2}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                  |
      | Spin the wheel and verify for EXTRA PLAY win animations |
    Then on game screen the following is happening
      | verification                                                                                        |
      | Expected result: In case of several same symbols wins there is EXTRA PLAY animation for that symbol |

  Scenario: Main game screen Resize
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                                                                   |
      | Resize the Main screen, and Verify that the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Stop animations
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                 |
      | Move the mouse over SPIN button and verify that it's animation stopped |
    Then on game screen the following is happening
      | verification                                          |
      | Expected result: the SPIN button animation is stopped |

  Scenario: Restart animations
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                                                                |
      | Move the mouse over SPIN button, After animation is stopped, Move the mouse outside from the SPIN button: and verify that the animation started again |
    Then on game screen the following is happening
      | verification                                                |
      | Expected result: the SPIN button animation is started again |

  Scenario: Plays Left counter
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 3,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                           |
      | Spin the wheel till EXTRA PLAY win, and Verify that the Plays Left counter is increased with one |
    Then on game screen the following is happening
      | verification                                                                            |
      | Expected result: In case of EXTRA PLAY win the Plays Left counter is increased with one |
