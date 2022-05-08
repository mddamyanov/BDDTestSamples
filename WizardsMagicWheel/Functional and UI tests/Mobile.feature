@TestScenario @WizardsMagicWheel @Mobile
Feature: Wizards Magic Wheel - Game on mobile devices
  Verification of the Game on mobile devices according to the game requirements

  Scenario Outline: Game UI and behavior in portrait mode on different mobile devices
    Given test preconditions
      | attention                                                   |
      | The game is loaded in portrait mode on <device> with "<OS>" |
    When user make an action
      | action                                                                                                                                               |
      | Play several rounds with different bets: and Verify that the game played without problems, game screen is properly scaled and centered on the screen |
    Then on game screen the following is happening
      | verification                                                    |
      | Expected result: the game is loaded and played without problems |
    And on game screen the following is happening
      | verification                                                                                                |
      | Expected result: player balance amount is correctly decreased according to bet and increased in case of win |
    And on game screen the following is happening
      | verification                                                                   |
      | Expected result: the game screen is properly scaled and centered on the screen |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Orientation change - Settings menu
    Given test preconditions
      | attention                                                   |
      | The game is loaded in portrait mode on <device> with "<OS>" |
    When user make an action
      | action                 |
      | Open the settings menu |
    And user make an action
      | action                      |
      | Switch between orientations |
    Then on game screen the following is happening
      | verification                                                                                           |
      | Expected result: The settings menu along with all of its buttons is properly rescaled and repositioned |
    And on game screen the following is happening
      | verification                                     |
      | Expected result: No overlaps or spill-outs occur |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Portrait to landscape mode
    Given test preconditions
      | attention                                                   |
      | The game is loaded in portrait mode on <device> with "<OS>" |
    When user make an action
      | action                   |
      | Switch to landscape mode |
    Then on game screen the following is happening
      | verification                                                                                                              |
      | Expected result: the game is loaded without problems, with the loading screen properly scaled and centered on the screen. |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Landscape to portrait mode
    Given test preconditions
      | attention                                                    |
      | The game is loaded in landscape mode on <device> with "<OS>" |
    When user make an action
      | action                  |
      | Switch to portrait mode |
    Then on game screen the following is happening
      | verification                                                        |
      | Expected result: the main game screen is displayed in portrait mode |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Intro screen in portrait mode
    Given test preconditions
      | attention                                                                      |
      | The game is loaded on "Intro" screen in landscape mode on <device> with "<OS>" |
    When user make an action
      | action                                                                                                 |
      | Switch to portrait mode, and Perform multiple clicking on the screen with and without opened game info |
    Then on game screen the following is happening
      | verification                                                                                                                           |
      | Expected result: the portrait screen is displayed properly without any changes after multiple clicking on the screen in portrait mode. |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Main Game screen in portrait mode
    Given test preconditions
      | attention                                                                          |
      | The game is loaded on "Main Game" screen in landscape mode on <device> with "<OS>" |
    When user make an action
      | action                                                                                                 |
      | Switch to portrait mode, and Perform multiple clicking on the screen with and without opened game info |
    Then on game screen the following is happening
      | verification                                                                                                                              |
      | Expected result: the portrait screen is displayed properly without any changes after the multiple clicking on the screen in portrait mode |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |

  Scenario Outline: Outro screen in portrait mode
    Given test preconditions
      | attention                                                                      |
      | The game is loaded on "Outro" screen in landscape mode on <device> with "<OS>" |
    When user make an action
      | action                                                                                                 |
      | Switch to portrait mode, and Perform multiple clicking on the screen with and without opened game info |
    Then on game screen the following is happening
      | verification                                                                                                                              |
      | Expected result: the portrait screen is displayed properly without any changes after the multiple clicking on the screen in portrait mode |

    Examples: 
      | device  | OS                     |
      | iPhone  | IOs 11.0 or greater    |
      | Samsung | android 5.1 or greater |
      | Huawei  | android 5.1 or greater |
