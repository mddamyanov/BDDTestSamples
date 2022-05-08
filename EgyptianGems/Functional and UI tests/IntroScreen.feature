@TestScenario @EgyptianGems @IntroScreen
Feature: Egyptian Gems - Intro Screen
  Verification of Intro screen according to the game requirements

  Scenario: Intro screen elements
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                           |
      | Verify that: on screen is displayed Egyptian Gems logo |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed GO button with handover mode and a CTA |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |
    And on game screen the following is happening
      | verification                         |
      | Verify that: there are no any sounds |

  Scenario: Intro screen animations
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    Then on game screen the following is happening
      | verification                               |
      | Verify that: the Intro screen is presented |
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

  Scenario: Intro screen - Stop animations
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    When user make an action
      | action                                                                      |
      | Move the mouse over GO button and, Verify that it's shine animation stopped |
    Then on game screen the following is happening
      | verification                                              |
      | Expected result: the GO button shine animation is stopped |

  Scenario: Intro screen - Restart animations
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    When user make an action
      | action                                                                                                                                            |
      | Move the mouse over GO button, After animation is stopped, Move the mouse outside from the GO button: and Verify that the animation started again |
    Then on game screen the following is happening
      | verification                                                    |
      | Expected result: the GO button shine animation is started again |

  Scenario: GO button interaction
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    When user make an action
      | action                 |
      | click on "play_button" |
    Then on game screen the following is happening
      | verification                                                                          |
      | Expected result: Main game/Bet screen is displayed, Main game ambient sound is played |

  Scenario: Intro screen Resize
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg | true              |
    When user make an action
      | action                                                                                                                                                |
      | Resize the Intro screen, and Verify that the intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the Intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Intro screen elements in case of one stake
    Given Max 0 and stakes "only_2000" for game "Egyptian Gems" currency "NOK" operator "Roller Games" and configuration per "operator" are set
    And the Game "Intro" screen is opened
      | gameName      | operator     | currency | session              | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | NOK      | SESSION_77_NOK_20.00 | NO       | opeg | true              |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                             |
      | Verify that: on screen is displayed Egyptian Gems (Logo) |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed GO button with handover mode and a CTA |
    And on game screen the following is happening
      | verification                                                                             |
      | Verify that: on screen is displayed area with amount for betting, Stake format is "20,-" |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |
    And on game screen the following is happening
      | verification                         |
      | Verify that: there are no any sounds |

  @notImplemented
  Scenario: Pause
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opeg |
    When user make an action
      | action                                                                                          |
      | Perform an interruption, and Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: the game screen is instantly covered by a dark overlay, a yellow Resume button is positioned at the center |
