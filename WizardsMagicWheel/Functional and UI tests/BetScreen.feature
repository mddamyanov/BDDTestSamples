@TestScenario @WizardsMagicWheel @BetScreen
Feature: Wizards Magic Wheel - Bet screen
  Verification of Bet screen according to the game requirements

  Scenario: Bet screen elements
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    Then on game screen the following is happening
      | verification                                                                      |
      | Verify that: on screen are displayed Up and Down arrow buttons with handover mode |
    And on game screen the following is happening
      | verification                                                      |
      | Verify that: on screen is displayed Bet button with handover mode |
    And on game screen the following is happening
      | verification                                                 |
      | Verify that: on screen is displayed Wizards Magic Wheel logo |
    And on game screen the following is happening
      | verification                                               |
      | Verify that: Main game screen is displayed as a background |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Stake change with arrows
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When note on screen
      | attention                                                                                                                    |
      | After press OK, Stake value will be increment automatically! Verify that the Game prizes are changing depending on the stake |
    And click on "increment"
    Then on game screen the following is happening
      | verification                                                                                      |
      | Expected result: After press the Up or Down arrow, the prizes are changing depending on the stake |

  Scenario: Stake change from list
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                                                               |
      | Press on stake-currency area, select some stake value from the list, Verify that the Game prizes are changing depending on the stake |
    Then on game screen the following is happening
      | verification                                                                                  |
      | Expected result: The stake value list is closed, the prizes are changing depending on the bet |

  Scenario: Not changing stake
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                               |
      | Open stake value list, Press somewhere out of the bet screen, Verify that stake value list is closed |
    Then on game screen the following is happening
      | verification                                                                     |
      | Expected result: The stake value list is closed, the game prizes are not changed |

  Scenario: Bet screen Resize
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                 |
      | Resize the Bet screen, Verify that there are No misplacements and visual abnormalities |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: The Bet screen remains in place and intact, No misplacements and visual abnormalities occur while resizing |

  @notImplemented
  Scenario: Pause
    Given the Game "Bet" screen is opened
      | gameName            | operator     | currency | session               | language | game | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                       |
      | Perform an interruption : Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: The game screen is instantly covered by a dark overlay, The a yellow "Resume" button is positioned at the center |
