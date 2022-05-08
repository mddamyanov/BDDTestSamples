@TestScenario @WindfallWillie @MainScreen
Feature: Windfall Willie - Main Screen
  Verification of Main Game screen according to the game requirements

  Scenario: Main Game screen elements
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    Then on game screen the following is happening
      | verification                                             |
      | Verify that: on screen is displayed Windfall Willie logo |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed select token slider, which is inactive |
    And on game screen the following is happening
      | verification                                                        |
      | Verify that: on screen is displayed Grid/s with not clickable tiles |
    And on game screen the following is happening
      | verification                                                       |
      | Verify that: on screen is displayed Plays Left Area with indicator |
    And on game screen the following is happening
      | verification                                                            |
      | Verify that: on screen is displayed Auto Play button with handover mode |
    And on game screen the following is happening
      | verification                                                             |
      | Verify that: on screen is displayed dynamite symbol/s with handover mode |
    And on game screen the following is happening
      | verification                                            |
      | Verify that: on screen is displayed empty Winnings area |
    And on game screen the following is happening
      | verification                                            |
      | Verify that: on screen is displayed not clickable TNT/s |
    And on game screen the following is happening
      | verification                                                                                                                                |
      | Verify that: on screen is displayed Settings button - offering access to buttons for Ambient and Effect Sounds, How to Play and Prize Table |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Main Game screen animations
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                  |
      | start the game, go through main game phases, Verify that main game animations are correct in accordance with game brief |
    Then on game screen the following is happening
      | verification                                                |
      | Verify that: the Main Game animations are as per game brief |

  Scenario: Main game screen Resize
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                                                   |
      | Resize the Main screen, and Verify that the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                      |
      | Expected result: the Main game screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Main game behavior
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                               |
      | start the game, go through main game phases, Verify that main game behavior is correct in accordance with game brief |
    Then on game screen the following is happening
      | verification                                             |
      | Verify that: the Main Game behavior is as per game brief |

  Scenario: Plays Left indicator
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                     |
      | Play the game with 3 grids, and Verify that the Play Left indicator shows correct grid according to action |
    Then on game screen the following is happening
      | verification                                                                    |
      | Expected result: the Play Left indicator shows correct grid according to action |
