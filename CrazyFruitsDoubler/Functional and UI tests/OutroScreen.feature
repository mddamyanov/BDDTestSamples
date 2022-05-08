@TestScenario @CrazyFruitsDoubler @OutroScreen
Feature: Crazy Fruits Doubler - Outro Screen
  Verification of Outro screen according to the game requirements

  Scenario Outline: Outro screen elements
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier <tier> and scenario <scenario>
    Then on game screen the following is happening
      | verification                                                    |
      | Verify that: Outro screen with message "<message>" is displayed |
    And on game screen the following is happening
      | verification                                                     |
      | Verify that: there is a FINISH button with zoom in-out animation |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

    Examples: 
      | tier | scenario | message                      |
      |    1 |        1 | Congratulations!You have won |
      |    0 |        1 | Better luck next time!       |

  Scenario: Stop animations
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 5 and scenario 1
    And user make an action
      | action                                                                               |
      | Move the mouse over FINISH button and verify that it's zoom in-out animation stopped |
    Then on game screen the following is happening
      | verification                                                        |
      | Expected result: the FINISH button zoom in-out animation is stopped |

  Scenario: Restart animations
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 6 and scenario 1
    And user make an action
      | action                                                                                                                                                    |
      | Move the mouse over FINISH button, After animation is stopped, Move the mouse outside from the FINISH button: and verify that the animation started again |
    Then on game screen the following is happening
      | verification                                                  |
      | Expected result: the FINISH button animation is started again |

  Scenario: Finish button interaction
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 3 and scenario 1
    And click on "finish_button"
    Then on game screen the following is happening
      | verification                                                    |
      | Expected result: Bet/Main screen is displayed after game finish |

  Scenario: Outro screen Resize
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 4 and scenario 1
    And user make an action
      | action                                                                                                                                          |
      | Resize the screen: and verify that the Outro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the Outro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Game Info opening
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 10 and scenario 1
    And user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                                                                                 |
      | Expected result: Info pages is dispayed on top, below is the outro screen with the FINISH button without CTA |

  Scenario: Game Info closing
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 8 and scenario 1
    And user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                             |
      | press the closing info page button |
    Then on game screen the following is happening
      | verification                                                                                                           |
      | Expected result: The Info screen is closed, Outro screen is present and finish button has the correct handover and CTA |

  @notImplemented
  Scenario: Eye Icon OPEN
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 7 and scenario 1
    And user make an action
      | action                                                                                                                                                         |
      | Press the open eye button, and Verify that the player is able to view the game outcome, none of the game assets should be animated and instead they are static |
    Then on game screen the following is happening
      | verification                                                                                                                     |
      | Expected result: Player is able to view the game outcome, none of the game assets should be animated and instead they are static |

  @notImplemented
  Scenario: Eye Icon CLOSE
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 6 and scenario 1
    And user make an action
      | action                                                                                                                                                                                                     |
      | First press the open eye button and after that press the close eye button, and Verify that the player will be returned to the game end screen that summarizes the game outcome, presents the FINISH button |
    Then on game screen the following is happening
      | verification                                                                                                                     |
      | Expected result: the player will be returned to the game end screen that summarizes the game outcome, presents the FINISH button |

  @notImplemented
  Scenario: Pause
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier 5 and scenario 1
    And user make an action
      | action                                                                                          |
      | Perform an interruption, and Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: the game screen is instantly covered by a dark overlay, a yellow Resume button is positioned at the center |
