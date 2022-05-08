@TestScenario @EgyptianGems @MainScreen
Feature: Egyptian Gems - Main Screen
  Verification of Main Game screen according to the game requirements

  Scenario: Main Game screen elements
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    Then on game screen the following is happening
      | verification                                                                      |
      | Verify that: on screen are displayed Up and Down arrow buttons with handover mode |
    And on game screen the following is happening
      | verification                                                       |
      | Verify that: on screen is displayed Spin button with handover mode |
    And on game screen the following is happening
      | verification                                           |
      | Verify that: on screen is displayed Egyptian Gems logo |
    And on game screen the following is happening
      | verification                                        |
      | Verify that: on screen is displayed Collapsing Grid |
    And on game screen the following is happening
      | verification                                    |
      | Verify that: on screen is displayed Prize Table |
    And on game screen the following is happening
      | verification                                       |
      | Verify that: on screen is displayed Spin Left Area |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Main Game screen animations
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    Then on game screen the following is happening
      | verification                                       |
      | Verify that: the Main Game background is presented |
    And on game screen the following is happening
      | verification                                |
      | Verify that: on the screen palms are moving |
    And on game screen the following is happening
      | verification                               |
      | Verify that: on the screen camel is moving |
    And on game screen the following is happening
      | verification                              |
      | Verify that: on the screen is a sand wind |
    And on game screen the following is happening
      | verification                                |
      | Verify that: on the screen birds are flying |

  Scenario: Game Play animations
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                                                                                                                                                                                                                                                                                                                                                |
      | Press on "spin_button" , and Verify that the spin left area starts spining and stops on a letter and number, after that the letter is corresponding to the row and the number is for the column. They meet somewhere in the prize table with a shine animation on the row, the column and the element at which they met. The element is going in the prize table and a new element go in his place in the prize table |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                                                                                                                                                  |
      | Expected result: The spin left area starts spining and stops on a letter and number, after that the letter is corresponding to the row and the number is for the column. They meet somewhere in the prize table with a shine animation on the row, the column and the element at which they met. The element is going in the prize table and a new element go in his place in the prize table |

  Scenario: Main game screen Resize
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                                                                                   |
      | Resize the Main screen, and Verify that the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Stop animations
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                               |
      | Move the mouse over GO button and verify that it's animation stopped |
    Then on game screen the following is happening
      | verification                                        |
      | Expected result: the GO button animation is stopped |

  Scenario: Restart animations
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                                                                                            |
      | Move the mouse over GO button, After animation is stopped, Move the mouse outside from the GO button: and verify that the animation started again |
    Then on game screen the following is happening
      | verification                                              |
      | Expected result: the GO button animation is started again |

  Scenario: Goes Left counter
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 3,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                             |
      | Play the game to win EXTRA SPIN, and Verify that the Goes Left counter is increased with correct EXTRA SPIN number |
    Then on game screen the following is happening
      | verification                                                                                            |
      | Expected result: After EXTRA SPIN win the Goes Left counter is increased with correct EXTRA SPIN number |

  @notImplemented
  Scenario: Pause
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                                                           |
      | Perform an interruption : and verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                    |
      | Expected result: the game screen is instantly covered by a dark overlay, the a yellow Resume button is positioned at the center |
