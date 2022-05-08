@TestScenario @WizardsMagicWheel @IntroScreen
Feature: Wizards Magic Wheel - Intro Screen
  Verification of Intro screen according to the game requirements

  Scenario: Intro screen elements
    Given the Game "Intro" screen is opened
      | gameName            | operator     | currency | session               | language | game  |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                                   |
      | Verify that: on screen is displayed Wizards Magic Wheel (Logo) |
    And on game screen the following is happening
      | verification                                                                 |
      | Verify that: on screen is displayed PLAY button with handover mode and a CTA |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |
    And on game screen the following is happening
      | verification                         |
      | Verify that: there are no any sounds |

  Scenario: Intro screen - Stop animations
    Given the Game "Intro" screen is opened
      | gameName            | operator     | currency | session               | language | game  |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw |
    When user make an action
      | action                                                                             |
      | Move the mouse over PLAY button and verify that it's zoom in-out animation stopped |
    Then on game screen the following is happening
      | verification                                                      |
      | Expected result: the PLAY button zoom in-out animation is stopped |

  Scenario: Intro screen - Restart animations
    Given the Game "Intro" screen is opened
      | gameName            | operator     | currency | session               | language | game  |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw |
    When user make an action
      | action                                                                                                                                                |
      | Move the mouse over PLAY button, After animation is stopped, Move the mouse outside from the PLAY button: and verify that the animation started again |
    Then on game screen the following is happening
      | verification                                                            |
      | Expected result: the PLAY button zoom in-out animation is started again |

  Scenario: PLAY button interaction
    Given the Game "Intro" screen is opened
      | gameName            | operator     | currency | session               | language | game  |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw |
    When click on "play_button"
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: Main game screen is displayed, Main game ambient sound is played |

  Scenario: Intro screen Resize
    Given the Game "Intro" screen is opened
      | gameName            | operator     | currency | session               | language | game  |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw |
    When user make an action
      | action                                                                                                                                                |
      | Resize the Intro screen, and Verify that the intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the Intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Intro screen elements in case of one stake
    Given Max 0 and stakes "only_2000" for game "Wizards Magic Wheel" currency "NOK" operator "Roller Games" and configuration per "operator" are set
    And the Game "Intro" screen is opened
      | gameName            | operator     | currency | session              | language | game  |
      | Wizards Magic Wheel | Roller Games | NOK      | SESSION_87_NOK_20.00 | NO       | opwmw |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                                   |
      | Verify that: on screen is displayed Wizards Magic Wheel (Logo) |
    And on game screen the following is happening
      | verification                                                                 |
      | Verify that: on screen is displayed PLAY button with handover mode and a CTA |
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
