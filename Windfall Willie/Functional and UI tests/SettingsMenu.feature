@TestScenario @WindfallWillie @Settings
Feature: Windfall Willie - Settings menu
  Verification of Settings menu according to the game requirements

  Scenario: Open Settings menu
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    Then on game screen the following is happening
      | verification                                                                 |
      | Verify that: on screen is displayed: Ambient Music button with handover mode |
    And on game screen the following is happening
      | verification                                                         |
      | Verify that: on screen is displayed: Sound button with handover mode |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed: How to play button with handover mode |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed: Prize table button with handover mode |

  Scenario: Close Settings panel via click on Info button
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                               |
      | Press the Info button , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                                              |
      | Expected result: The game info is opened and the settings panel is closed |

  Scenario: Close Settings panel via click on Prize table button
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                      |
      | Press the Prize table button , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                                                |
      | Expected result: The prize table is opened and the settings panel is closed |

  Scenario: Close Settings panel - click on Close button
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                 |
      | Click on "close_button" , and Verify that the settings panel is closed |
    Then on game screen the following is happening
      | verification                                  |
      | Expected result: The settings panel is closed |

  Scenario: Settings button - drag and drop
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                      |
      | Try to drag and drop the Settings button , and Verify that the Settings button is unable to be selected or drag and dropped |
    Then on game screen the following is happening
      | verification                                                                      |
      | Expected result: The Settings button is unable to be selected or drag and dropped |

  Scenario: Resize window
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                     |
      | Click on "settings_button" |
    And user make an action
      | action                                                                                                                   |
      | Resize the screen, and Verify that the settings menu along with all of its buttons is properly rescaled and repositioned |
    Then on game screen the following is happening
      | verification                                                                                           |
      | Expected result: The settings menu along with all of its buttons is properly rescaled and repositioned |
    And on game screen the following is happening
      | verification                                     |
      | Expected result: No overlaps or spill-outs occur |
