@TestScenario @EgyptianGems @InfoPages
Feature: Egyptian Gems - Info Pages
  Verification of Info pages according to the game requirements

  Scenario: Info screen elements
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                                           |
      | Verify that: the info overlaid panel will immediately load on page 1/4 |
    And on game screen the following is happening
      | verification                                                                  |
      | Verify that: there are four pages with each page detailing a game instruction |
    And on game screen the following is happening
      | verification                                                |
      | Verify that: there are not any currency signs on info pages |
    And on game screen the following is happening
      | verification                                                                            |
      | Verify that: left and right arrow buttons are displayed at the middle of the info pages |
    And on game screen the following is happening
      | verification                                                                 |
      | Verify that: a close button is positioned at the top-right of the info pages |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: How to Play instructions
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                 |
      | Open the info page 1/4, Use the Right arrow pagination |
    Then on game screen the following is happening
      | verification                                                       |
      | Verify that on Page One is displayed: Prize collecting description |
    And on game screen the following is happening
      | verification                                                      |
      | Verify that on Page Two is displayed: Game behaviour instructions |
    And on game screen the following is happening
      | verification                                                                   |
      | Verify that on Page Three is displayed: Extra Spin and Scarab win descriptions |
    And on game screen the following is happening
      | verification                                             |
      | Verify that on Page Four is displayed: Bonus description |

  Scenario: Right arrow interaction
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                           |
      | Open the info page 2/4, Use the Right arrow pagination two times |
    Then on game screen the following is happening
      | verification                                                                   |
      | Expected result: the panel will open page 3/4, 4/4 the right arrow is inactive |

  Scenario: Left arrow interaction
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                            |
      | Open the info page 4/4, Use the Left arrow pagination three times |
    Then on game screen the following is happening
      | verification                                                                       |
      | Expected result: the panel will open page 3/4, 2/4, 1/4 the left arrow is inactive |

  Scenario: Last page memorizing
    Given the Game "Bet" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                |
      | Open the info page 2/4 and after that close game info |
    And enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                |
      | Press the info button |
    Then on game screen the following is happening
      | verification                                                              |
      | Expected result: the info page 2/4 is immediately presented to the player |

  Scenario: Elements behind the info page
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                            |
      | Press inside the info page, and Verify that nothing should happen |
    Then on game screen the following is happening
      | verification                                                                                   |
      | Expected result: nothing is happen, the game remains unresponsive until the info dialog closed |

  Scenario: Info close button
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                                         |
      | Open the info page and after that, move mouse cursor on close info page button |
    Then on game screen the following is happening
      | verification                                                               |
      | Expected result: There is hover effect on the close button and hand cursor |

  Scenario: Closing game info
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When user make an action
      | action                                                             |
      | Open the info page and after that, click on close info page button |
    Then on game screen the following is happening
      | verification                                                                                                                                                                |
      | Expected result: The info page immediately disappears after close button is clicked, the player is able to resume the game, all restrictions on the game buttons are lifted |

  Scenario: Info page Resize
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
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
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                                 |
      | Attempt to select some of the text or tap and hold, and Verify that this action should not be possible |
    Then on game screen the following is happening
      | verification                                                                                |
      | Expected result: this action should not be possible, none of the text should be interactive |

  @notImplemented
  Scenario: Click outside the Info page
    Given the Game "Main" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                                       |
      | Open the info page and after that, Click/tap outside of the info page border |
    Then on game screen the following is happening
      | verification                                                                                                 |
      | Expected result: the info page immediately disappears after click/tap, the player is able to resume the game |

  @notImplemented
  Scenario: Resume after interruption
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                            |
      | Make an interruption, and Verify that while resume button is present the info page is not visible |
    And user make an action
      | action                                                                                                       |
      | Press the resume button, and Verify that when resume button is pressed then the info page is presented again |
    Then on game screen the following is happening
      | verification                                                                         |
      | Expected result: when resume button is pressed then the info page is presented again |
