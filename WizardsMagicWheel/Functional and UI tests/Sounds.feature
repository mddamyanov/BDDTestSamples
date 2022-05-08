@TestScenario @WizardsMagicWheel @Sounds
Feature: Wizards Magic Wheel - Sounds
  Verification of Sounds according to the game requirements

  Scenario Outline: Game "<screen>" screen elements
    Given the Game "<Screen>" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is unmuted |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    Then on game screen the following is happening
      | verification                                                                                             |
      | Expected result: on screen is displayed Sound button with handover mode - offering access to Mute/Unmute |
    And on game screen the following is happening
      | verification                                                                                            |
      | Expected result: the correct "<Screen>" screen sounds are running in accordance with game specification |

    Examples: 
      | Screen     |
      | Bet        |
      | Main Game  |
      | Outro      |
      | Info pages |

  Scenario: Sound button OFF
    Given test preconditions
      | action                                |
      | Browser cache and cookies are deleted |
    And the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is running |
    When user make an action
      | action                                                                                                       |
      | Press Settings->Sound button, and Verify that sound icon should change its state to muted, sound should stop |
    Then on game screen the following is happening
      | verification                                                                    |
      | Expected result: the sound icon change its state to muted, the sound is stopped |

  Scenario: Sound button ON
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                    |
      | Make sure the sound is muted |
    When user make an action
      | action                                                                                                                  |
      | Press Settings->Sound button, and Verify that the sound icon should change its state to unmuted, the sound should start |
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: the sound icon change its state to unmuted, the sound is started |

  Scenario: Playing MUTE
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is running |
    When user make an action
      | action                                                                                                             |
      | Press Settings->Sound button, start playing the game, and Verify that: the game is completely mute during gameplay |
    Then on game screen the following is happening
      | verification                                                                                             |
      | Expected result: the game is completely mute during gameplay, the sound button change its state to muted |

  Scenario: UNMUTE during game play
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                    |
      | Make sure the sound is muted |
    When user make an action
      | action                                                                                                                                                           |
      | Press Settings->Sound button during game round, and Verify that: the sounds should start to play immediately, the sound button should change its state to unmute |
    Then on game screen the following is happening
      | verification                                                                                        |
      | Expected result: the sounds start to play immediately, the sound button change its state to unmuted |

  Scenario: MUTE during game play
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is running |
    When user make an action
      | action                                                                                                                                                                  |
      | Press Settings->Sound button during game round, and Verify that: the game immediately should stops playing any sounds, the sound button should change its state to mute |
    Then on game screen the following is happening
      | verification                                                                                                                                           |
      | Expected result: the game immediately stops playing any sounds unless the player decides to unmute the game, the sound button change its state to mute |

  Scenario: MUTE/UNMUTE on each game screen
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When user make an action
      | action                                           |
      | Press Settings->Sound button on each game screen |
    Then on game screen the following is happening
      | verification                                                                                                                 |
      | Expected result: the sound state is changed properly to muted/un-muted, the game stores the sound state from previous screen |

  Scenario: MUTE before Game/Browser RESTART
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                    |
      | Make sure the sound is muted |
    When user make an action
      | action           |
      | Restart the game |
    Then on game screen the following is happening
      | verification                                                                                                  |
      | Expected result: the game starts with muted sound, corresponding to the setting stored into the local storage |

  Scenario: UNMUTE before Game/Browser RESTART
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is running |
    When user make an action
      | action           |
      | Restart the game |
    Then on game screen the following is happening
      | verification                                                                                                    |
      | Expected result: the game starts with unmuted sound, corresponding to the setting stored into the local storage |

  Scenario Outline: MUTE when game window become inactive
    Given the Game "<Screen>" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention            |
      | the sound is running |
    When user make an action
      | action                                  |
      | Go to other app, tab, window or browser |
    Then on game screen the following is happening
      | verification                                                                                      |
      | Expected result: the game sound is not played, when focus is on other app, tab, window or browser |

    Examples: 
      | Screen |
      | Intro  |
      | Bet    |
      | Main   |
      | Outro  |

  Scenario Outline: UNMUTE when game window become active
    Given the Game "<Screen>" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                                                                  |
      | the game window is inactive(focus is on other app, tab, window or browser) |
    When user make an action
      | action            |
      | Go to game window |
    Then on game screen the following is happening
      | verification                              |
      | Expected result: the game sound is played |

    Examples: 
      | Screen |
      | Intro  |
      | Bet    |
      | Main   |
      | Outro  |

  Scenario: Sounds after clear the local storage
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                      |
      | Make sure the sound is running |
    When user make an action
      | action                                                      |
      | Clear the local storage F12 -> Application -> Local storage |
    Then on game screen the following is happening
      | verification                            |
      | Expected result: the game sounds are ON |

  Scenario: Sounds after Chrome Autoplay policy is changed
    Given test preconditions
      | action                                                                                    |
      | The Chrome browser audio Autoplay policy is opened from : chrome://flags/#autoplay-policy |
    When user make an action
      | action                                                                |
      | select from chart "User gesture is required for cross-origin iFrames" |
    And user make an action
      | action                                                                                   |
      | Relaunch browser and open the game, and Verify that the game should starts without sound |
    Then on game screen the following is happening
      | verification                                                                                                         |
      | Expected result: the game starts without sound, after first user interaction anywhere on the screen the sounds start |

  @notImplemented
  Scenario: Sound interruption
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    And test preconditions
      | attention                   |
      | The sound should be running |
    When user make an action
      | action               |
      | Make an interruption |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: the sounds are muted properly, the exceptions is when the channel=MOBILE options is used for mobile phones |

  @notImplemented
  Scenario: Game sounds triggers
    Given the Game "Main" screen is opened
      | gameName            | operator     | currency | session               | language | game  | show_debug_values |
      | Wizards Magic Wheel | Roller Games | CHF      | SESSION_37_CHF_100.00 | EN       | opwmw | true              |
    When note on screen
      | attention                   |
      | Observe all the game sounds |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                |
      | Expected result: all of the listed events trigger the right sounds at the right times:Background tune, button clicks PLAY, SETTINGS, GAME INFO, number reveal, PRIZE reveals, win sample used for winning outcomes, end of Winning game, end of Losing game |
