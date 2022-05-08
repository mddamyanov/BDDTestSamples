@TestScenario @CrazyFruitsDoubler @MainScreen
Feature: Crazy Fruits Doubler - Main Screen
  Verification of Main Game screen according to the game requirements

  Scenario: Main game screen elements
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Verify that: on screen are displayed three unique symbols out of eight which are used to award the Crazy Fruits Doubler bonus |
    And on game screen the following is happening
      | verification                                                                        |
      | Verify that: on screen are displayed six prize items with a handover mode and a CTA |
    And on game screen the following is happening
      | verification                                  |
      | Verify that: on screen the mushroom is moving |
    And on game screen the following is happening
      | verification                                                                                                             |
      | Verify that: there are flashing lights above the mushroom, there are zoom out-in animations of all the six small windows |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: there are zoom out-in animations of all the six small windows |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Stop animations
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                      |
      | Move the mouse over some prize item : and verify that the animations of all the six prize items are stopped |
    Then on game screen the following is happening
      | verification                                                           |
      | Expected result: the animations of all the six prize items are stopped |

  Scenario: Restart animations
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                                                                                |
      | Move the mouse over some prize item, After the prize animations are stopped, Move the mouse outside from the prize item: and verify that the animations started again |
    Then on game screen the following is happening
      | verification                                                                 |
      | Expected result: the animations of all the six prize items are started again |

  Scenario: Game Play animations
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                                           |
      | Pick each of the six prize items: and verify that between six and twelve symbols are revealed, and they are moving independently |
    Then on game screen the following is happening
      | verification                                                                                       |
      | Expected result: There are between six and twelve revealed symbols, which are moving independently |

  Scenario: Main Game screen Resize
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                                                                                   |
      | Resize the Main screen, and Verify that the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  @notImplemented
  Scenario: Pause
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                                           |
      | Perform an interruption : and verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                    |
      | Expected result: the game screen is instantly covered by a dark overlay, the a yellow Resume button is positioned at the center |
