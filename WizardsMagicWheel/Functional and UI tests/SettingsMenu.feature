@TestScenario @WizardsMagicWheel @Settings
Feature: Wizards Magic Wheel - Settings menu
  Verification of Settings menu according to the game requirements

  Scenario: Open Settings menu
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    Then on game screen the following is happening
      | verification                                                                                         |
      | Verify that: on screen is displayed Sound button with handover mode - offering access to Mute/Unmute |
    And on game screen the following is happening
      | verification                                                                                           |
      | Verify that: on screen is displayed Info button with handover mode - offering access to the Info Pages |

  Scenario: Close Settings panel - Outside click
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                                                      |
      | Tap/Click anywhere outside of the Settings button/dialog box , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                  |
      | Expected result: The settings panel is closed |

  Scenario: Close Settings panel - click on settings button
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                    |
      | Click on "settings_button" , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                  |
      | Expected result: The settings panel is closed |

  Scenario: Close Settings panel - click on info button
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                               |
      | Press the Info button , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                                              |
      | Expected result: The game info is opened and the settings panel is closed |

  Scenario: Close Settings panel - click on Close button
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                 |
      | Click on "close_button" , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                  |
      | Expected result: The settings panel is closed |

  Scenario: Settings button move
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                                                                                                                      |
      | Try to drag and drop the Settings button , and Verify that the Settings button is unable to be selected or drag and dropped |
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: The Settings button is unable to be selected or drag and dropped |

  Scenario: Resize window
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                                                                                                                   |
      | Resize the screen, and Verify that the settings menu along with all of its buttons is properly rescaled and repositioned |
    Then on game screen the following is happening
      | verification                                                                                           |
      | Expected result: The settings menu along with all of its buttons is properly rescaled and repositioned |
    And on game screen the following is happening
      | verification                                     |
      | Expected result: No overlaps or spill-outs occur |
