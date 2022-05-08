@TestScenario @WindfallWillie @OutroScreen
Feature: Windfall Willie - Outro Screen
  Verification of Outro screen according to the game requirements

  Scenario Outline: Main game Outro - Winnings
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    Then on game screen the following is happening
      | verification                                                    |
      | Verify that: Outro screen with message "<message>" is displayed |
    And on game screen the following is happening
      | verification                                              |
      | Verify that: there is a Scroll Paper with shine animation |
    And on game screen the following is happening
      | verification                              |
      | Verify that: there is a Play Again button |
    And on game screen the following is happening
      | verification                                                                                                                                       |
      | Verify that: on screen is displayed Settings button - offering access to Background Music button, Sound button, Info button and Prize Table button |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

    Examples: 
      | message                                 |
      | Congratulations! You have won xx tokens |

  Scenario Outline: Main game Outro - Losing
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                               |
      | Bet with cheat for Losing scenario and play the game until outro screen is displayed |
    Then on game screen the following is happening
      | verification                                                    |
      | Verify that: Outro screen with message "<message>" is displayed |
    And on game screen the following is happening
      | verification                                 |
      | Verify that: there is no a Play Again button |
    And on game screen the following is happening
      | verification                                                                                                                                       |
      | Verify that: on screen is displayed Settings button - offering access to Background Music button, Sound button, Info button and Prize Table button |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

    Examples: 
      | message  |
      | 0 tokens |

  Scenario: Outro screen Resize
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    And user make an action
      | action                                                                                                                                          |
      | Resize the screen: and verify that the Outro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: the Outro screen remains in place and intact, no misplacements and visual abnormalities occur while resizing |

  Scenario: Play Again button state
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    And user make an action
      | action                                                                                 |
      | Move mouse pointer on Play Again button, Verify that the button text state is changing |
    Then on game screen the following is happening
      | verification                                               |
      | Expected result: the button text state is changed to light |

  Scenario: Play Again button interaction
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    And user make an action
      | action                                                              |
      | Click on Play Again button, Verify that the bet screen is displayed |
    Then on game screen the following is happening
      | verification                                 |
      | Expected result: the bet screen is displayed |

  Scenario: Game Info opening
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    And user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                                              |
      | Expected result: Info pages is dispayed on top, below is the Outro screen |

  Scenario: Game Info closing
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                |
      | Bet with cheat for Winning scenario and play the game until outro screen is displayed |
    And user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                             |
      | Press the closing info page button |
    Then on game screen the following is happening
      | verification                                                                                                       |
      | Expected result: The Info screen is closed, Outro screen is present and Play Again button has the correct handover |
