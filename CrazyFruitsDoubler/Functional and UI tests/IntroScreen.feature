@TestScenario @CrazyFruitsDoubler @IntroScreen
Feature: Crazy Fruits Doubler - Intro Screen
  Verification of Intro screen according to the game requirements

  Scenario: Intro screen elements
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                                    |
      | Verify that: on screen is displayed Crazy Fruits Doubler (Logo) |
    And on game screen the following is happening
      | verification                                                                   |
      | Verify that: on screen is displayed Prize table containing eight Fruit Symbols |
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
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    When user make an action
      | action                                                                             |
      | Move the mouse over PLAY button and verify that it's zoom in-out animation stopped |
    Then on game screen the following is happening
      | verification                                                      |
      | Expected result: the PLAY button zoom in-out animation is stopped |

  Scenario: Intro screen - Restart animations
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    When user make an action
      | action                                                                                                                                                |
      | Move the mouse over PLAY button, After animation is stopped, Move the mouse outside from the PLAY button: and verify that the animation started again |
    Then on game screen the following is happening
      | verification                                                            |
      | Expected result: the PLAY button zoom in-out animation is started again |

  Scenario: PLAY button interaction
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    When click on "play_button"
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: Main game screen is displayed, Main game ambient sound is played |

  Scenario: Intro screen Resize
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    When user make an action
      | action                                                                                                                                                |
      | Resize the Intro screen, and Verify that the intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the Intro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Intro screen elements in case of one stake
    Given Max 0 and stakes "only_2000" for game "Crazy Fruits Doubler" currency "CHF" operator "Roller Games" and configuration per "game" are set
    And the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_43_CHF_100.00 | EN       | opcfd |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: on screen is displayed game Background image |
    And on game screen the following is happening
      | verification                                                    |
      | Verify that: on screen is displayed Crazy Fruits Doubler (Logo) |
    And on game screen the following is happening
      | verification                                                                   |
      | Verify that: on screen is displayed Prize table containing eight Fruit Symbols |
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

  @notImplemented
  Scenario: Pause
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game  |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd |
    When user make an action
      | action                                                                                          |
      | Perform an interruption, and Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: the game screen is instantly covered by a dark overlay, a yellow Resume button is positioned at the center |
