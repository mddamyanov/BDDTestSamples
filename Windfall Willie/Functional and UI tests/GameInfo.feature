@TestScenario @WindfallWillie @GameInfo
Feature: Windfall Willie - Game Info
  Verification of game Info according to the game requirements

  Scenario: Info panel elements
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                               |
      | Verify that: the info overlaid panel will immediately load |
    And on game screen the following is happening
      | verification                                              |
      | Verify that: there is a page detailing a game instruction |
    And on game screen the following is happening
      | verification                                                |
      | Verify that: there are not any currency signs on info pages |
    And on game screen the following is happening
      | verification                                                                |
      | Verify that: a close button is positioned at the top-right of the info page |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: How to Play instructions
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                                                                                        |
      | Verify that on the page are displayed: Game behaviour instructions, Prize collecting description, Bonus description |

  Scenario: Elements behind the info panel
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                 |
      | Press some clickable element outside the info panel, Verify that nothing should happen |
    Then on game screen the following is happening
      | verification                                                                                      |
      | Expected result: nothing is happening, the game remains unresponsive until the info dialog closed |

  Scenario: Info page Resize
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                            |
      | Resize the game window, and Verify that the whole game along with the info page rescales properly |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                      |
      | Expected result: the whole game along with the info page rescales properly, all visual elements remain consistent and intact, the text in the info pages remains in place during resizing, no words must be carried on the rows below, no spilling-out must occur |

  Scenario: Non interactive text
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                                 |
      | Attempt to select some of the text or tap and hold, and Verify that this action should not be possible |
    Then on game screen the following is happening
      | verification                                                                                |
      | Expected result: this action should not be possible, none of the text should be interactive |

  Scenario: Info close button mode
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                      |
      | Open the info panel, move mouse cursor on close info button |
    Then on game screen the following is happening
      | verification                                                  |
      | Expected result: There is a handover mode on the close button |

  Scenario: Closing game info
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                          |
      | Open the info panel, click on close info button |
    Then on game screen the following is happening
      | verification                                                                                            |
      | Expected result: The info panel immediately disappears, all restrictions on the game buttons are lifted |

  @notImplemented
  Scenario: Click outside the Info page
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action            |
      | Go to Main Screen |
    And user make an action
      | action                                                                       |
      | Open the info page and after that, Click/tap outside of the info page border |
    Then on game screen the following is happening
      | verification                                                                                                 |
      | Expected result: the info page immediately disappears after click/tap, the player is able to resume the game |
