@TestScenario @WindfallWillie @Sounds
Feature: Windfall Willie - Sounds
  Verification of Sounds according to the game requirements

  Scenario Outline: Game "<screen>" screen - Sound related elements
    Given the Game "<Screen>" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action                  |
      | Go to "<Screen>" Screen |
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
      | verification                                                                                             |
      | Expected result: on screen is displayed Music button with handover mode - offering access to Mute/Unmute |
    And on game screen the following is happening
      | verification                                                                                            |
      | Expected result: the correct "<Screen>" screen sounds are running in accordance with game specification |

    Examples: 
      | Screen    |
      | Bet       |
      | Main Game |
      | Outro     |

  Scenario: Sound button OFF
    Given test preconditions
      | action                                |
      | Browser cache and cookies are deleted |
    And the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                      |
      | Make sure the sound is unmuted |
    When user make an action
      | action                                                                                                       |
      | Press Settings->Sound button, and Verify that sound icon should change its state to muted, sound should stop |
    Then on game screen the following is happening
      | verification                                                                    |
      | Expected result: the sound icon change its state to muted, the sound is stopped |

  Scenario: Sound button ON
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                    |
      | Make sure the sound is muted |
    When user make an action
      | action                                                                                                                  |
      | Press Settings->Sound button, and Verify that the sound icon should change its state to unmuted, the sound should start |
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: the sound icon change its state to unmuted, the sound is started |

  Scenario: Ambient Music button OFF
    Given test preconditions
      | action                                |
      | Browser cache and cookies are deleted |
    And the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                              |
      | Make sure the Ambient Music is unmuted |
    When user make an action
      | action                                                                                                                                 |
      | Press Settings-> Ambient Music button, and Verify that: Ambient Music icon should change its state to muted, Ambient Music should stop |
    Then on game screen the following is happening
      | verification                                                      |
      | Expected result: the Ambient Music icon change its state to muted |
    And on game screen the following is happening
      | verification                                  |
      | Expected result: the Ambient Music is stopped |

  Scenario: Ambient Music button ON
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                            |
      | Make sure the Ambient Music is muted |
    When user make an action
      | action                                                                                                                                            |
      | Press Settings-> Ambient Music button, and Verify that: the Ambient Music icon should change its state to unmuted, the Ambient Music should start |
    Then on game screen the following is happening
      | verification                                                           |
      | Expected result: the background sound icon change its state to unmuted |
    And on game screen the following is happening
      | verification                                     |
      | Expected result: the background sound is started |

  Scenario: Playing with MUTED sound
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                      |
      | Make sure the sound is unmuted |
    When user make an action
      | action                                                                                                                                                    |
      | Press Settings->Sound button, start playing the game, and Verify that: the game sounds are not running during gameplay, only the Ambient Music is running |
    Then on game screen the following is happening
      | verification                                                                                                                                    |
      | Expected result: the game sounds are not running during gameplay, only the Ambient Music is running, the sound button change its state to muted |

  Scenario: Playing with MUTED Ambient Music
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                              |
      | Make sure the Ambient Music is unmuted |
    When user make an action
      | action                                                                                                                                                                 |
      | Press Settings->Ambient Music button, start playing the game, and Verify that: the game Ambient Music is completely mute during gameplay, only game sounds are running |
    Then on game screen the following is happening
      | verification                                                                                                                                                 |
      | Expected result: the game Ambient Music is completely mute during gameplay, only game sounds are running, the Ambient Music button change its state to muted |

  Scenario: Playing with MUTED sound and Ambient Music
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                             |
      | Make sure the Ambient Music and the sound are unmuted |
    When user make an action
      | action                                                                                                                                       |
      | Press Settings->Sound button and Ambient Music buttons, start playing the game, and Verify that: the game is completely mute during gameplay |
    Then on game screen the following is happening
      | verification                                                                                                                 |
      | Expected result: the game is completely mute during gameplay, the sound and Ambient music buttons change its states to muted |

  Scenario: UNMUTE during game play
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                           |
      | Make sure the sound and the Ambient Music are muted |
    When user make an action
      | action                                                                                                                                                                                                        |
      | Press Settings->Sound button and Ambient Music button during game round, and Verify that: the sounds should start to play immediately, the sound and Ambient Music buttons should change its states to unmute |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the sounds start to play immediately, the sound and Ambient Music buttons should change its states to unmute |

  Scenario: MUTE during game play
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                             |
      | Make sure the sound and the Ambient Music are unmuted |
    When user make an action
      | action                                                                                                                                                                                                                |
      | Press Settings->Sound button and Ambient Music during game round, and Verify that: the game immediately should stops playing any sounds or music, the sound and Ambient Music buttons should change its state to mute |
    Then on game screen the following is happening
      | verification                                                                                                                                                                  |
      | Expected result: the game immediately stops playing any sounds unless the player decides to unmute the game, the sound and the Ambient Music buttons change its state to mute |

  Scenario: MUTE/UNMUTE Sound on each game screen
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action            |
      | Go to Main Screen |
    And user make an action
      | action                                           |
      | Press Settings->Sound button on each game screen |
    Then on game screen the following is happening
      | verification                                                                                                                 |
      | Expected result: the sound state is changed properly to muted/un-muted, the game stores the sound state from previous screen |

  Scenario: MUTE/UNMUTE Ambient Music on each game screen
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action            |
      | Go to Main Screen |
    And user make an action
      | action                                                   |
      | Press Settings->Ambient Music button on each game screen |
    Then on game screen the following is happening
      | verification                                                                                                                                 |
      | Expected result: the Ambient Music state is changed properly to muted/un-muted, the game stores the Ambient Music state from previous screen |

  Scenario: MUTE before Game/Browser RESTART
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                           |
      | Make sure the Ambient Music and the sound are muted |
    When user make an action
      | action           |
      | Restart the game |
    Then on game screen the following is happening
      | verification                                                                                                                    |
      | Expected result: the game starts with muted sound and Ambient Music, corresponding to the setting stored into the local storage |

  Scenario: UNMUTE before Game/Browser RESTART
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                             |
      | Make sure the sound and the Ambient Music are unmuted |
    When user make an action
      | action           |
      | Restart the game |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: the game starts with unmuted sound and Ambient Music, corresponding to the setting stored into the local storage |

  Scenario Outline: MUTE when game window become inactive
    Given the Game "<Screen>" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action                  |
      | Go to "<Screen>" Screen |
    And test preconditions
      | attention                                   |
      | the sound and the Ambient Music are running |
    When user make an action
      | action                                  |
      | Go to other app, tab, window or browser |
    Then on game screen the following is happening
      | verification                                                                                                         |
      | Expected result: the game sound and Ambient Music are not played, when focus is on other app, tab, window or browser |

    Examples: 
      | Screen |
      | Bet    |
      | Main   |
      | Outro  |

  Scenario Outline: UNMUTE when game window become active
    Given the Game "<Screen>" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action                  |
      | Go to "<Screen>" Screen |
    And test preconditions
      | attention                                                                  |
      | the game window is inactive(focus is on other app, tab, window or browser) |
    When user make an action
      | action                  |
      | Back to the game window |
    Then on game screen the following is happening
      | verification                                                 |
      | Expected result: the game sound and Ambient Music are played |

    Examples: 
      | Screen |
      | Bet    |
      | Main   |
      | Outro  |

  Scenario: Game sounds triggers
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When note on screen
      | attention                   |
      | Observe all the game sounds |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                        |
      | Expected result: all of the listed events trigger the right sounds at the right times: Background tune, Stones reveal, PRIZE reveals, win sample used for winning outcomes, end of Winning game, end of Losing game |

  Scenario: Sounds after clear the local storage
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    And user make an action
      | action            |
      | Go to Main Screen |
    And test preconditions
      | attention                                             |
      | Make sure the sound and the Ambient Music are running |
    When user make an action
      | action                                                      |
      | Clear the local storage F12 -> Application -> Local storage |
    And user make an action
      | action           |
      | Restart the game |
    Then on game screen the following is happening
      | verification                                             |
      | Expected result: the game sound and Ambient Music are ON |
